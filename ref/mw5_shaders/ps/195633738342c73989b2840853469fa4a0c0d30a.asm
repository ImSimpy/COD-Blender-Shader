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
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; TRANSIENT_INDEX          0    y          5     NONE    uint    y  
; SV_IsFrontFace           0     z         5    FFACE    uint     z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: d4b71ea25894cacaeec395e3dc1779a0
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
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 23, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
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
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %65, %59
  %67 = fmul fast float %65, %60
  %68 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %69 = fmul fast float %51, %68
  %70 = fmul fast float %52, %68
  %71 = fmul fast float %53, %68
  %72 = fmul fast float %47, %68
  %73 = fmul fast float %48, %68
  %74 = fmul fast float %49, %68
  %75 = fmul fast float %52, %49
  %76 = fmul fast float %53, %48
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %53, %47
  %79 = fmul fast float %51, %49
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %51, %48
  %82 = fmul fast float %52, %47
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %50, %68
  %85 = fmul fast float %84, %77
  %86 = fmul fast float %84, %80
  %87 = fmul fast float %84, %83
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %91 = fmul fast float %89, 2.000000e+00
  %92 = fmul fast float %91, %66
  %93 = fmul fast float %90, 2.000000e+00
  %94 = fmul fast float %93, %67
  %95 = fsub fast float 1.000000e+00, %92
  %96 = fsub fast float 1.000000e+00, %94
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = fmul fast float %95, %98
  %102 = fmul fast float %95, %99
  %103 = fmul fast float %95, %100
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = fmul fast float %96, %105
  %109 = fmul fast float %96, %106
  %110 = fmul fast float %96, %107
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fadd fast float %108, %112
  %116 = fadd fast float %115, %101
  %117 = fadd fast float %109, %113
  %118 = fadd fast float %117, %102
  %119 = fadd fast float %110, %114
  %120 = fadd fast float %119, %103
  %121 = fmul fast float %116, %61
  %122 = fmul fast float %118, %61
  %123 = fmul fast float %120, %61
  %124 = fadd fast float %56, 5.000000e-01
  %125 = fptoui float %124 to i32
  %126 = shl i32 %125, 3
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = or i32 %126, 4
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %128, 8191
  %133 = lshr i32 %128, 13
  %134 = and i32 %133, 8191
  %135 = lshr i32 %128, 26
  %136 = and i32 %131, 65535
  %137 = lshr i32 %131, 16
  %138 = uitofp i32 %136 to float
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %141 = uitofp i32 %137 to float
  %142 = uitofp i32 %132 to float
  %143 = fmul fast float %140, %142
  %144 = uitofp i32 %134 to float
  %145 = fmul fast float %140, %144
  %146 = fmul fast float %140, %54
  %147 = fmul fast float %146, %138
  %148 = fmul fast float %140, %55
  %149 = fmul fast float %148, %141
  %150 = fadd fast float %147, %143
  %151 = fadd fast float %145, %149
  %152 = uitofp i32 %135 to float
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %156 = fmul fast float %154, %66
  %157 = fmul fast float %155, %67
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %159, 114688
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %161, float %156, float 0.000000e+00
  %163 = select i1 %161, float %157, float 0.000000e+00
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fmul fast float %165, 2.550000e+02
  %167 = fptoui float %166 to i32
  %168 = select i1 %161, i32 %167, i32 0
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 3
  %172 = and i32 %171, 3
  %173 = icmp ne i32 %172, 0
  %174 = and i32 %171, 4
  %175 = icmp ne i32 %174, 0
  %176 = and i1 %173, %175
  br i1 %176, label %177, label %188

; <label>:177                                     ; preds = %0
  %178 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %179 = fmul fast float %178, %67
  %180 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %181 = fmul fast float %180, %66
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %181, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fsub fast float 1.000000e+00, %183
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = fcmp fast olt float %184, %186
  br label %191

; <label>:188                                     ; preds = %0
  %189 = icmp eq i32 %174, 0
  %190 = and i1 %173, %189
  br label %191

; <label>:191                                     ; preds = %188, %177
  %192 = phi i1 [ %187, %177 ], [ %190, %188 ]
  %193 = add i32 %46, 124
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %205 = add i32 %46, 168
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %207, 8
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %207, 16
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = add i32 %46, 36
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %46, 224
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %230, 0x3F50624DE0000000
  %234 = fmul fast float %232, 0x3F50624DE0000000
  %235 = add i32 %46, 140
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = shl i32 %237, 4
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %237, 7
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %237, 22
  %245 = shl nuw nsw i32 %244, 5
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %46, 184
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %249, 8
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %249, 16
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = add i32 %46, 52
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %46, 240
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %46, 156
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %46, 200
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %46, 68
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %46, 256
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %46, 268
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 2
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %333, label %324

; <label>:324                                     ; preds = %191
  %325 = add i32 %46, 364
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %327, 0
  %329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %329, %dx.types.Handle %63, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = extractvalue %dx.types.ResRet.f32 %330, 1
  br label %333

; <label>:333                                     ; preds = %324, %191
  %334 = phi float [ 1.000000e+00, %191 ], [ %332, %324 ]
  %335 = phi float [ 1.000000e+00, %191 ], [ %331, %324 ]
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 2
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %353, label %340

; <label>:340                                     ; preds = %333
  %341 = add i32 %46, 44
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 1
  %345 = icmp ne i32 %344, 0
  %346 = select i1 %345, float %335, float 1.000000e+00
  %347 = add i32 %46, 60
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 1
  %351 = icmp ne i32 %350, 0
  %352 = select i1 %351, float %334, float 1.000000e+00
  br label %353

; <label>:353                                     ; preds = %340, %333
  %354 = phi float [ %334, %333 ], [ %352, %340 ]
  %355 = phi float [ %335, %333 ], [ %346, %340 ]
  %356 = lshr i32 %337, 20
  %357 = and i32 %356, 3
  %358 = add nuw nsw i32 %357, 1
  %359 = add i32 %46, 24
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = add i32 %46, 28
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = or i32 %364, %361
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %817, label %367

; <label>:367                                     ; preds = %353
  %368 = add i32 %46, 220
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = lshr i32 %370, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = fmul fast float %372, 0x3F50624DE0000000
  %374 = add i32 %46, 72
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = lshr i32 %376, 16
  %378 = and i32 %377, 255
  %379 = lshr i32 %376, 24
  %380 = add i32 %46, 228
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %382, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %46, 32
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = lshr i32 %389, 22
  %391 = shl nuw nsw i32 %390, 5
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = shl i32 %389, 4
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %389, 7
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 3
  %401 = fmul fast float %400, 1.000000e+03
  %402 = fmul fast float %233, %401
  %403 = call float @dx.op.unary.f32(i32 22, float %402)  ; Frc(value)
  %404 = fadd fast float %403, %223
  %405 = fmul fast float %234, %401
  %406 = call float @dx.op.unary.f32(i32 22, float %405)  ; Frc(value)
  %407 = fadd fast float %406, %225
  %408 = fmul fast float %373, %401
  %409 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %410 = fmul fast float %409, 0x401921FB60000000
  %411 = fadd fast float %410, %392
  %412 = call float @dx.op.unary.f32(i32 13, float %411)  ; Sin(value)
  %413 = call float @dx.op.unary.f32(i32 12, float %411)  ; Cos(value)
  %414 = fsub fast float -0.000000e+00, %412
  %415 = fadd fast float %57, -5.000000e-01
  %416 = fadd fast float %58, -5.000000e-01
  %417 = fmul fast float %384, %415
  %418 = fmul fast float %386, %416
  %419 = fadd fast float %417, 5.000000e-01
  %420 = fadd fast float %418, 5.000000e-01
  %421 = fmul fast float %395, %419
  %422 = fmul fast float %398, %420
  %423 = fmul fast float %413, %421
  %424 = call float @dx.op.tertiary.f32(i32 46, float %414, float %422, float %423)  ; FMad(a,b,c)
  %425 = fmul fast float %412, %421
  %426 = call float @dx.op.tertiary.f32(i32 46, float %413, float %422, float %425)  ; FMad(a,b,c)
  %427 = fadd fast float %404, %424
  %428 = fadd fast float %407, %426
  %429 = icmp ugt i32 %378, 1
  %430 = icmp ugt i32 %376, 33554431
  %431 = or i1 %430, %429
  br i1 %431, label %432, label %457

; <label>:432                                     ; preds = %367
  %433 = add i32 %46, 180
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = lshr i32 %435, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = fmul fast float %400, %437
  %439 = call float @dx.op.unary.f32(i32 22, float %438)  ; Frc(value)
  %440 = mul nuw nsw i32 %378, %379
  %441 = uitofp i32 %440 to float
  %442 = fmul fast float %439, %441
  %443 = call float @dx.op.unary.f32(i32 27, float %442)  ; Round_ni(value)
  %444 = fptoui float %443 to i32
  %445 = urem i32 %444, %378
  %446 = udiv i32 %444, %379
  %447 = call float @dx.op.unary.f32(i32 22, float %427)  ; Frc(value)
  %448 = call float @dx.op.unary.f32(i32 22, float %428)  ; Frc(value)
  %449 = uitofp i32 %445 to float
  %450 = uitofp i32 %446 to float
  %451 = fadd fast float %447, %449
  %452 = fadd fast float %448, %450
  %453 = uitofp i32 %378 to float
  %454 = uitofp i32 %379 to float
  %455 = fdiv fast float %451, %453
  %456 = fdiv fast float %452, %454
  br label %457

; <label>:457                                     ; preds = %432, %367
  %458 = phi float [ %455, %432 ], [ %427, %367 ]
  %459 = phi float [ %456, %432 ], [ %428, %367 ]
  %460 = and i32 %361, 16
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %658, label %462

; <label>:462                                     ; preds = %457
  %463 = add i32 %46, 280
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %465, 0
  %467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %62, float %458, float %459, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = and i32 %376, 255
  %474 = uitofp i32 %473 to float
  %475 = lshr i32 %376, 8
  %476 = and i32 %475, 255
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %472, %474
  %479 = fadd fast float %478, %477
  %480 = fmul fast float %479, 0x3F70101000000000
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 512
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %493, label %485

; <label>:485                                     ; preds = %462
  %486 = add i32 %46, 340
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = add i32 %488, 0
  %490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %490, %dx.types.Handle %63, float %458, float %459, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  br label %493

; <label>:493                                     ; preds = %485, %462
  %494 = phi float [ %492, %485 ], [ 1.000000e+00, %462 ]
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 33554432
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %605, label %499

; <label>:499                                     ; preds = %493
  %500 = add i32 %46, 176
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = and i32 %502, 65535
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %502, 16
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = add i32 %46, 180
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = and i32 %509, 65535
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = lshr i32 %513, 24
  %515 = uitofp i32 %514 to float
  %516 = fmul fast float %515, 0x3F70101020000000
  %517 = and i32 %513, 255
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %518, 0x3F70101020000000
  %520 = lshr i32 %513, 8
  %521 = and i32 %520, 255
  %522 = uitofp i32 %521 to float
  %523 = fmul fast float %522, 0x3F70101020000000
  %524 = lshr i32 %513, 16
  %525 = and i32 %524, 255
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %526, 0x3F70101020000000
  %528 = add i32 %46, 172
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 24
  %532 = uitofp i32 %531 to float
  %533 = fmul fast float %532, 0x3F70101020000000
  %534 = and i32 %530, 255
  %535 = uitofp i32 %534 to float
  %536 = fmul fast float %535, 0x3F70101020000000
  %537 = lshr i32 %530, 8
  %538 = and i32 %537, 255
  %539 = uitofp i32 %538 to float
  %540 = fmul fast float %539, 0x3F70101020000000
  %541 = lshr i32 %530, 16
  %542 = and i32 %541, 255
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %543, 0x3F70101020000000
  %545 = bitcast float %469 to i32
  %546 = ashr i32 %545, 1
  %547 = sub nsw i32 1597463174, %546
  %548 = bitcast i32 %547 to float
  %549 = fmul fast float %469, 5.000000e-01
  %550 = fmul fast float %548, %548
  %551 = fmul fast float %550, %549
  %552 = fsub fast float 1.500000e+00, %551
  %553 = fmul fast float %548, %469
  %554 = fmul fast float %553, %552
  %555 = bitcast float %470 to i32
  %556 = ashr i32 %555, 1
  %557 = sub nsw i32 1597463174, %556
  %558 = bitcast i32 %557 to float
  %559 = fmul fast float %470, 5.000000e-01
  %560 = fmul fast float %558, %558
  %561 = fmul fast float %560, %559
  %562 = fsub fast float 1.500000e+00, %561
  %563 = fmul fast float %558, %470
  %564 = fmul fast float %563, %562
  %565 = bitcast float %471 to i32
  %566 = ashr i32 %565, 1
  %567 = sub nsw i32 1597463174, %566
  %568 = bitcast i32 %567 to float
  %569 = fmul fast float %471, 5.000000e-01
  %570 = fmul fast float %568, %568
  %571 = fmul fast float %570, %569
  %572 = fsub fast float 1.500000e+00, %571
  %573 = fmul fast float %568, %471
  %574 = fmul fast float %573, %572
  %575 = fsub fast float %554, %536
  %576 = fsub fast float %564, %540
  %577 = fsub fast float %574, %544
  %578 = fmul fast float %575, %504
  %579 = fmul fast float %576, %506
  %580 = fmul fast float %577, %511
  %581 = fadd fast float %578, %519
  %582 = fadd fast float %579, %523
  %583 = fadd fast float %580, %527
  %584 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %585 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  %586 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %587 = fmul fast float %584, %584
  %588 = fmul fast float %585, %585
  %589 = fmul fast float %586, %586
  %590 = fsub fast float %587, %469
  %591 = fsub fast float %588, %470
  %592 = fsub fast float %589, %471
  %593 = fmul fast float %590, %494
  %594 = fmul fast float %591, %494
  %595 = fmul fast float %592, %494
  %596 = fadd fast float %593, %469
  %597 = fadd fast float %594, %470
  %598 = fadd fast float %595, %471
  %599 = fadd fast float %516, %480
  %600 = fsub fast float %599, %533
  %601 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %602 = fsub fast float %601, %480
  %603 = fmul fast float %602, %494
  %604 = fadd fast float %603, %480
  br label %658

; <label>:605                                     ; preds = %493
  %606 = and i32 %496, 134217728
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %642, label %608

; <label>:608                                     ; preds = %605
  %609 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %610 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %611 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %612 = fadd fast float %609, -5.000000e-01
  %613 = fadd fast float %610, -5.000000e-01
  %614 = fadd fast float %611, -5.000000e-01
  %615 = fmul fast float %612, %494
  %616 = fmul fast float %613, %494
  %617 = fmul fast float %614, %494
  %618 = fadd fast float %615, 5.000000e-01
  %619 = fadd fast float %616, 5.000000e-01
  %620 = fadd fast float %617, 5.000000e-01
  %621 = call float @dx.op.unary.f32(i32 24, float %469)  ; Sqrt(value)
  %622 = call float @dx.op.unary.f32(i32 24, float %470)  ; Sqrt(value)
  %623 = call float @dx.op.unary.f32(i32 24, float %471)  ; Sqrt(value)
  %624 = fmul fast float %618, 2.000000e+00
  %625 = fsub fast float 1.000000e+00, %624
  %626 = fmul fast float %625, %621
  %627 = fadd fast float %626, %624
  %628 = fmul fast float %627, %621
  %629 = fmul fast float %619, 2.000000e+00
  %630 = fsub fast float 1.000000e+00, %629
  %631 = fmul fast float %630, %622
  %632 = fadd fast float %631, %629
  %633 = fmul fast float %632, %622
  %634 = fmul fast float %620, 2.000000e+00
  %635 = fsub fast float 1.000000e+00, %634
  %636 = fmul fast float %635, %623
  %637 = fadd fast float %636, %634
  %638 = fmul fast float %637, %623
  %639 = fmul fast float %628, %628
  %640 = fmul fast float %633, %633
  %641 = fmul fast float %638, %638
  br label %658

; <label>:642                                     ; preds = %605
  %643 = fmul fast float %210, %210
  %644 = fmul fast float %214, %214
  %645 = fmul fast float %218, %218
  %646 = fadd fast float %643, -1.000000e+00
  %647 = fadd fast float %644, -1.000000e+00
  %648 = fadd fast float %645, -1.000000e+00
  %649 = fmul fast float %494, %646
  %650 = fmul fast float %494, %647
  %651 = fmul fast float %494, %648
  %652 = fadd fast float %649, 1.000000e+00
  %653 = fadd fast float %650, 1.000000e+00
  %654 = fadd fast float %651, 1.000000e+00
  %655 = fmul fast float %652, %469
  %656 = fmul fast float %653, %470
  %657 = fmul fast float %654, %471
  br label %658

; <label>:658                                     ; preds = %642, %608, %499, %457
  %659 = phi float [ %604, %499 ], [ %480, %608 ], [ %480, %642 ], [ 0x3FA23C0BE0000000, %457 ]
  %660 = phi float [ %596, %499 ], [ %639, %608 ], [ %655, %642 ], [ 1.000000e+00, %457 ]
  %661 = phi float [ %597, %499 ], [ %640, %608 ], [ %656, %642 ], [ 1.000000e+00, %457 ]
  %662 = phi float [ %598, %499 ], [ %641, %608 ], [ %657, %642 ], [ 1.000000e+00, %457 ]
  %663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.i32 %663, 1
  %665 = and i32 %664, 1
  %666 = icmp ne i32 %665, 0
  %667 = add i32 %46, 276
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = and i32 %669, 32
  %671 = icmp ne i32 %670, 0
  %672 = and i1 %666, %671
  %673 = select i1 %672, float 1.000000e+00, float %660
  %674 = select i1 %672, float 0x3FD3333340000000, float %661
  %675 = select i1 %672, float 0x3FD3333340000000, float %662
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 32
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %752, label %680

; <label>:680                                     ; preds = %658
  %681 = add i32 %46, 76
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = add i32 %46, 292
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = add i32 %686, 0
  %688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %687, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %689 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %688, %dx.types.Handle %62, float %458, float %459, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = extractvalue %dx.types.ResRet.f32 %689, 3
  %694 = and i32 %683, 255
  %695 = uitofp i32 %694 to float
  %696 = lshr i32 %683, 8
  %697 = and i32 %696, 255
  %698 = uitofp i32 %697 to float
  %699 = lshr i32 %683, 16
  %700 = and i32 %699, 255
  %701 = uitofp i32 %700 to float
  %702 = fmul fast float %701, 0x3F70101000000000
  %703 = fmul fast float %690, %695
  %704 = fadd fast float %703, %698
  %705 = fmul fast float %704, 0x3F70101000000000
  %706 = fadd fast float %691, -5.000000e-01
  %707 = fadd fast float %693, -5.000000e-01
  %708 = fmul fast float %706, %702
  %709 = fmul fast float %707, %702
  %710 = fadd fast float %708, 5.000000e-01
  %711 = fadd fast float %709, 5.000000e-01
  %712 = fmul fast float %710, 2.000000e+00
  %713 = fadd fast float %712, -1.000000e+00
  %714 = fmul fast float %711, 2.000000e+00
  %715 = fadd fast float %714, -1.000000e+00
  %716 = fadd fast float %713, %715
  %717 = fmul fast float %716, 5.000000e-01
  %718 = fsub fast float %713, %715
  %719 = fmul fast float %718, 5.000000e-01
  %720 = call float @dx.op.unary.f32(i32 6, float %717)  ; FAbs(value)
  %721 = fsub fast float 1.000000e+00, %720
  %722 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %723 = fsub fast float %721, %722
  %724 = call float @dx.op.dot3.f32(i32 55, float %717, float %719, float %723, float %717, float %719, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %725 = call float @dx.op.unary.f32(i32 25, float %724)  ; Rsqrt(value)
  %726 = fmul fast float %717, %725
  %727 = fmul fast float %719, %725
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 67108864
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %748, label %732

; <label>:732                                     ; preds = %680
  %733 = add i32 %46, 216
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 65535
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %735, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = fsub fast float %705, %743
  %745 = fmul fast float %744, %737
  %746 = fadd fast float %745, %741
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  br label %748

; <label>:748                                     ; preds = %732, %680
  %749 = phi float [ %747, %732 ], [ %705, %680 ]
  %750 = call float @dx.op.dot2.f32(i32 54, float %726, float %727, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %751 = call float @dx.op.dot2.f32(i32 54, float %726, float %727, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %752

; <label>:752                                     ; preds = %748, %658
  %753 = phi float [ %749, %748 ], [ 0x3FD6666660000000, %658 ]
  %754 = phi float [ %750, %748 ], [ 0.000000e+00, %658 ]
  %755 = phi float [ %751, %748 ], [ 0.000000e+00, %658 ]
  %756 = phi float [ %692, %748 ], [ 1.000000e+00, %658 ]
  %757 = add i32 %46, 128
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = lshr i32 %759, 22
  %761 = shl nuw nsw i32 %760, 5
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 64
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %800, label %767

; <label>:767                                     ; preds = %752
  %768 = add i32 %46, 304
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 131072
  %776 = icmp eq i32 %775, 0
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %62, float %458, float %459, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = fmul fast float %778, %198
  %782 = fmul fast float %779, %201
  %783 = fmul fast float %780, %204
  br i1 %776, label %790, label %784

; <label>:784                                     ; preds = %767
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = fmul fast float %786, %781
  %788 = fmul fast float %786, %782
  %789 = fmul fast float %786, %783
  br label %790

; <label>:790                                     ; preds = %784, %767
  %791 = phi float [ %787, %784 ], [ %781, %767 ]
  %792 = phi float [ %788, %784 ], [ %782, %767 ]
  %793 = phi float [ %789, %784 ], [ %783, %767 ]
  %794 = fmul fast float %791, %762
  %795 = select i1 %192, float %794, float %791
  %796 = call float @dx.op.dot3.f32(i32 55, float %795, float %792, float %793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = select i1 %192, float 0.000000e+00, float %791
  %798 = select i1 %192, float %796, float %792
  %799 = select i1 %192, float 0.000000e+00, float %793
  br label %800

; <label>:800                                     ; preds = %790, %752
  %801 = phi float [ %797, %790 ], [ 0.000000e+00, %752 ]
  %802 = phi float [ %798, %790 ], [ 0.000000e+00, %752 ]
  %803 = phi float [ %799, %790 ], [ 0.000000e+00, %752 ]
  %804 = add i32 %46, 80
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = lshr i32 %806, 8
  %810 = and i32 %809, 255
  %811 = uitofp i32 %810 to float
  %812 = call float @dx.op.dot3.f32(i32 55, float %673, float %674, float %675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = fmul fast float %811, %812
  %814 = fadd fast float %813, %808
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  br label %817

; <label>:817                                     ; preds = %800, %353
  %818 = phi float [ %754, %800 ], [ 0.000000e+00, %353 ]
  %819 = phi float [ %755, %800 ], [ 0.000000e+00, %353 ]
  %820 = phi float [ %673, %800 ], [ 0.000000e+00, %353 ]
  %821 = phi float [ %674, %800 ], [ 0.000000e+00, %353 ]
  %822 = phi float [ %675, %800 ], [ 0.000000e+00, %353 ]
  %823 = phi float [ %801, %800 ], [ 0.000000e+00, %353 ]
  %824 = phi float [ %802, %800 ], [ 0.000000e+00, %353 ]
  %825 = phi float [ %803, %800 ], [ 0.000000e+00, %353 ]
  %826 = phi float [ %659, %800 ], [ 0.000000e+00, %353 ]
  %827 = phi float [ 1.000000e+00, %800 ], [ 0.000000e+00, %353 ]
  %828 = phi float [ %753, %800 ], [ 0.000000e+00, %353 ]
  %829 = phi float [ %756, %800 ], [ 0.000000e+00, %353 ]
  %830 = phi float [ %816, %800 ], [ 0.000000e+00, %353 ]
  %831 = icmp ult i32 %358, 2
  %832 = add i32 %46, 40
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = add i32 %46, 44
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = or i32 %837, %834
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %1663, label %840

; <label>:840                                     ; preds = %817
  %841 = add i32 %46, 236
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = lshr i32 %843, 16
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = fmul fast float %845, 0x3F50624DE0000000
  %847 = add i32 %46, 88
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = lshr i32 %849, 16
  %851 = and i32 %850, 255
  %852 = lshr i32 %849, 24
  %853 = add i32 %46, 244
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 65535
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = lshr i32 %855, 16
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = add i32 %46, 48
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = lshr i32 %862, 22
  %864 = shl nuw nsw i32 %863, 5
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = shl i32 %862, 4
  %867 = and i32 %866, 32752
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = lshr i32 %862, 7
  %870 = and i32 %869, 32752
  %871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %870)  ; LegacyF16ToF32(value)
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %874 = fmul fast float %873, 1.000000e+03
  %875 = fmul fast float %275, %874
  %876 = call float @dx.op.unary.f32(i32 22, float %875)  ; Frc(value)
  %877 = fadd fast float %876, %265
  %878 = fmul fast float %276, %874
  %879 = call float @dx.op.unary.f32(i32 22, float %878)  ; Frc(value)
  %880 = fadd fast float %879, %267
  %881 = fmul fast float %846, %874
  %882 = call float @dx.op.unary.f32(i32 22, float %881)  ; Frc(value)
  %883 = fmul fast float %882, 0x401921FB60000000
  %884 = fadd fast float %883, %865
  %885 = call float @dx.op.unary.f32(i32 13, float %884)  ; Sin(value)
  %886 = call float @dx.op.unary.f32(i32 12, float %884)  ; Cos(value)
  %887 = fsub fast float -0.000000e+00, %885
  %888 = fadd fast float %57, -5.000000e-01
  %889 = fadd fast float %58, -5.000000e-01
  %890 = fmul fast float %857, %888
  %891 = fmul fast float %859, %889
  %892 = fadd fast float %890, 5.000000e-01
  %893 = fadd fast float %891, 5.000000e-01
  %894 = fmul fast float %868, %892
  %895 = fmul fast float %871, %893
  %896 = fmul fast float %886, %894
  %897 = call float @dx.op.tertiary.f32(i32 46, float %887, float %895, float %896)  ; FMad(a,b,c)
  %898 = fmul fast float %885, %894
  %899 = call float @dx.op.tertiary.f32(i32 46, float %886, float %895, float %898)  ; FMad(a,b,c)
  %900 = fadd fast float %877, %897
  %901 = fadd fast float %880, %899
  %902 = icmp ugt i32 %851, 1
  %903 = icmp ugt i32 %849, 33554431
  %904 = or i1 %903, %902
  br i1 %904, label %905, label %930

; <label>:905                                     ; preds = %840
  %906 = add i32 %46, 196
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = lshr i32 %908, 16
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = fmul fast float %873, %910
  %912 = call float @dx.op.unary.f32(i32 22, float %911)  ; Frc(value)
  %913 = mul nuw nsw i32 %851, %852
  %914 = uitofp i32 %913 to float
  %915 = fmul fast float %912, %914
  %916 = call float @dx.op.unary.f32(i32 27, float %915)  ; Round_ni(value)
  %917 = fptoui float %916 to i32
  %918 = urem i32 %917, %851
  %919 = udiv i32 %917, %852
  %920 = call float @dx.op.unary.f32(i32 22, float %900)  ; Frc(value)
  %921 = call float @dx.op.unary.f32(i32 22, float %901)  ; Frc(value)
  %922 = uitofp i32 %918 to float
  %923 = uitofp i32 %919 to float
  %924 = fadd fast float %920, %922
  %925 = fadd fast float %921, %923
  %926 = uitofp i32 %851 to float
  %927 = uitofp i32 %852 to float
  %928 = fdiv fast float %924, %926
  %929 = fdiv fast float %925, %927
  br label %930

; <label>:930                                     ; preds = %905, %840
  %931 = phi float [ %928, %905 ], [ %900, %840 ]
  %932 = phi float [ %929, %905 ], [ %901, %840 ]
  %933 = and i32 %834, 16777216
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %1044, label %935

; <label>:935                                     ; preds = %930
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %940 = fadd fast float %937, %121
  %941 = fadd fast float %938, %122
  %942 = fadd fast float %939, %123
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = icmp eq i32 %45, 65535
  br i1 %946, label %1041, label %947

; <label>:947                                     ; preds = %935
  %948 = lshr i32 %45, 1
  %949 = shl i32 %948, 2
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = and i32 %45, 1
  %953 = icmp ne i32 %952, 0
  %954 = lshr i32 %951, 16
  %955 = and i32 %951, 65535
  %956 = select i1 %953, i32 %954, i32 %955
  %957 = icmp eq i32 %956, 65535
  br i1 %957, label %1037, label %958

; <label>:958                                     ; preds = %947
  %959 = mul nuw nsw i32 %956, 40
  %960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = add nuw nsw i32 %959, 12
  %965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = extractvalue %dx.types.ResRet.f32 %965, 2
  %969 = add nuw nsw i32 %959, 24
  %970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = add nuw nsw i32 %959, 36
  %975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = fsub fast float %940, %961
  %978 = fsub fast float %941, %962
  %979 = fsub fast float %942, %963
  %980 = fmul fast float %976, %977
  %981 = fmul fast float %976, %978
  %982 = fmul fast float %976, %979
  %983 = call float @dx.op.unary.f32(i32 27, float %980)  ; Round_ni(value)
  %984 = call float @dx.op.unary.f32(i32 27, float %981)  ; Round_ni(value)
  %985 = call float @dx.op.unary.f32(i32 27, float %982)  ; Round_ni(value)
  %986 = fadd fast float %983, 5.000000e-01
  %987 = fadd fast float %984, 5.000000e-01
  %988 = fadd fast float %985, 5.000000e-01
  %989 = fmul fast float %986, %966
  %990 = fmul fast float %987, %967
  %991 = fmul fast float %988, %968
  %992 = shl i32 %45, 2
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = add i32 %994, 0
  %996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %997 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %998 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %999 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %1000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %996, %dx.types.Handle %40, float %997, float %998, float %999, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = fmul fast float %1001, 1.023000e+03
  %1005 = fmul fast float %1002, 1.023000e+03
  %1006 = fmul fast float %1003, 1.023000e+03
  %1007 = fadd fast float %1004, 5.000000e-01
  %1008 = fadd fast float %1005, 5.000000e-01
  %1009 = fadd fast float %1006, 5.000000e-01
  %1010 = call float @dx.op.unary.f32(i32 27, float %1007)  ; Round_ni(value)
  %1011 = call float @dx.op.unary.f32(i32 27, float %1008)  ; Round_ni(value)
  %1012 = call float @dx.op.unary.f32(i32 27, float %1009)  ; Round_ni(value)
  %1013 = fsub fast float %980, %983
  %1014 = fsub fast float %981, %984
  %1015 = fsub fast float %982, %985
  %1016 = fmul fast float %1013, 7.500000e-01
  %1017 = fmul fast float %1014, 7.500000e-01
  %1018 = fmul fast float %1015, 7.500000e-01
  %1019 = fadd fast float %983, 1.250000e-01
  %1020 = fadd fast float %1019, %1016
  %1021 = fadd fast float %1020, %1010
  %1022 = fadd fast float %984, 1.250000e-01
  %1023 = fadd fast float %1022, %1017
  %1024 = fadd fast float %1023, %1011
  %1025 = fadd fast float %985, 1.250000e-01
  %1026 = fadd fast float %1025, %1018
  %1027 = fadd fast float %1026, %1012
  %1028 = fmul fast float %1021, %971
  %1029 = fmul fast float %1024, %972
  %1030 = fmul fast float %1027, %973
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1034, %dx.types.Handle %38, float %1028, float %1029, float %1030, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  br label %1037

; <label>:1037                                    ; preds = %958, %947
  %1038 = phi float [ %1036, %958 ], [ -1.000000e+00, %947 ]
  %1039 = fadd fast float %1038, %945
  %1040 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  br label %1041

; <label>:1041                                    ; preds = %1037, %935
  %1042 = phi float [ %1040, %1037 ], [ %945, %935 ]
  %1043 = fmul fast float %1042, %355
  br label %1044

; <label>:1044                                    ; preds = %1041, %930
  %1045 = phi float [ %1043, %1041 ], [ %355, %930 ]
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 256
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1096, label %1050

; <label>:1050                                    ; preds = %1044
  %1051 = add i32 %46, 332
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %1053, 0
  %1055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1055, %dx.types.Handle %63, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = add i32 %46, 100
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = shl i32 %1060, 4
  %1062 = and i32 %1061, 32752
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = lshr i32 %1060, 7
  %1065 = and i32 %1064, 32752
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = fsub fast float 1.000000e+00, %1045
  %1068 = call float @dx.op.binary.f32(i32 35, float %1067, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1069 = bitcast float %1045 to i32
  %1070 = sitofp i32 %1069 to float
  %1071 = fadd fast float %1070, 0xC1CFBF8940000000
  %1072 = fmul fast float %1066, %1071
  %1073 = fadd fast float %1072, 0x41CFBF8940000000
  %1074 = fptosi float %1073 to i32
  %1075 = bitcast i32 %1074 to float
  %1076 = bitcast float %1068 to i32
  %1077 = sitofp i32 %1076 to float
  %1078 = fadd fast float %1077, 0xC1CFBF8940000000
  %1079 = fmul fast float %1078, %1066
  %1080 = fadd fast float %1079, 0x41CFBF8940000000
  %1081 = fptosi float %1080 to i32
  %1082 = bitcast i32 %1081 to float
  %1083 = fmul fast float %1075, %1063
  %1084 = fmul fast float %1082, %1063
  %1085 = fsub fast float %1068, %1083
  %1086 = fadd fast float %1084, %1068
  %1087 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1088 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1089 = fsub fast float %1057, %1087
  %1090 = fsub fast float %1088, %1087
  %1091 = bitcast float %1090 to i32
  %1092 = sub nsw i32 2129859010, %1091
  %1093 = bitcast i32 %1092 to float
  %1094 = fmul fast float %1093, %1089
  %1095 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  br label %1096

; <label>:1096                                    ; preds = %1050, %1044
  %1097 = phi float [ %1095, %1050 ], [ %1045, %1044 ]
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 128
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1118, label %1102

; <label>:1102                                    ; preds = %1096
  %1103 = add i32 %46, 320
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %63, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 524288
  %1113 = icmp ne i32 %1112, 0
  %1114 = fcmp fast ogt float %1109, 0x3FE0101020000000
  %1115 = select i1 %1114, float 1.000000e+00, float 0.000000e+00
  %1116 = select i1 %1113, float %1115, float %1109
  %1117 = fmul fast float %1116, %1097
  br label %1118

; <label>:1118                                    ; preds = %1102, %1096
  %1119 = phi float [ %1117, %1102 ], [ %1097, %1096 ]
  %1120 = fcmp fast ult float %1119, 0x3F70101020000000
  br i1 %1120, label %1663, label %1121

; <label>:1121                                    ; preds = %1118
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 16
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1324, label %1126

; <label>:1126                                    ; preds = %1121
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %46, 284
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %62, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1139 = and i32 %1128, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = lshr i32 %1128, 8
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = fmul fast float %1138, %1140
  %1145 = fadd fast float %1144, %1143
  %1146 = fmul fast float %1145, 0x3F70101000000000
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 512
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1159, label %1151

; <label>:1151                                    ; preds = %1126
  %1152 = add i32 %46, 344
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = add i32 %1154, 0
  %1156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1156, %dx.types.Handle %63, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  br label %1159

; <label>:1159                                    ; preds = %1151, %1126
  %1160 = phi float [ %1158, %1151 ], [ 1.000000e+00, %1126 ]
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 33554432
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1271, label %1165

; <label>:1165                                    ; preds = %1159
  %1166 = add i32 %46, 192
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = lshr i32 %1168, 16
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = add i32 %46, 196
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 65535
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 24
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F70101020000000
  %1183 = and i32 %1179, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = lshr i32 %1179, 8
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F70101020000000
  %1190 = lshr i32 %1179, 16
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = add i32 %46, 188
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 24
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1198, 0x3F70101020000000
  %1200 = and i32 %1196, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1201, 0x3F70101020000000
  %1203 = lshr i32 %1196, 8
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1205, 0x3F70101020000000
  %1207 = lshr i32 %1196, 16
  %1208 = and i32 %1207, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = fmul fast float %1209, 0x3F70101020000000
  %1211 = bitcast float %1135 to i32
  %1212 = ashr i32 %1211, 1
  %1213 = sub nsw i32 1597463174, %1212
  %1214 = bitcast i32 %1213 to float
  %1215 = fmul fast float %1135, 5.000000e-01
  %1216 = fmul fast float %1214, %1214
  %1217 = fmul fast float %1216, %1215
  %1218 = fsub fast float 1.500000e+00, %1217
  %1219 = fmul fast float %1214, %1135
  %1220 = fmul fast float %1219, %1218
  %1221 = bitcast float %1136 to i32
  %1222 = ashr i32 %1221, 1
  %1223 = sub nsw i32 1597463174, %1222
  %1224 = bitcast i32 %1223 to float
  %1225 = fmul fast float %1136, 5.000000e-01
  %1226 = fmul fast float %1224, %1224
  %1227 = fmul fast float %1226, %1225
  %1228 = fsub fast float 1.500000e+00, %1227
  %1229 = fmul fast float %1224, %1136
  %1230 = fmul fast float %1229, %1228
  %1231 = bitcast float %1137 to i32
  %1232 = ashr i32 %1231, 1
  %1233 = sub nsw i32 1597463174, %1232
  %1234 = bitcast i32 %1233 to float
  %1235 = fmul fast float %1137, 5.000000e-01
  %1236 = fmul fast float %1234, %1234
  %1237 = fmul fast float %1236, %1235
  %1238 = fsub fast float 1.500000e+00, %1237
  %1239 = fmul fast float %1234, %1137
  %1240 = fmul fast float %1239, %1238
  %1241 = fsub fast float %1220, %1202
  %1242 = fsub fast float %1230, %1206
  %1243 = fsub fast float %1240, %1210
  %1244 = fmul fast float %1241, %1170
  %1245 = fmul fast float %1242, %1172
  %1246 = fmul fast float %1243, %1177
  %1247 = fadd fast float %1244, %1185
  %1248 = fadd fast float %1245, %1189
  %1249 = fadd fast float %1246, %1193
  %1250 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = fmul fast float %1250, %1250
  %1254 = fmul fast float %1251, %1251
  %1255 = fmul fast float %1252, %1252
  %1256 = fsub fast float %1253, %1135
  %1257 = fsub fast float %1254, %1136
  %1258 = fsub fast float %1255, %1137
  %1259 = fmul fast float %1256, %1160
  %1260 = fmul fast float %1257, %1160
  %1261 = fmul fast float %1258, %1160
  %1262 = fadd fast float %1259, %1135
  %1263 = fadd fast float %1260, %1136
  %1264 = fadd fast float %1261, %1137
  %1265 = fadd fast float %1182, %1146
  %1266 = fsub fast float %1265, %1199
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fsub fast float %1267, %1146
  %1269 = fmul fast float %1268, %1160
  %1270 = fadd fast float %1269, %1146
  br label %1324

; <label>:1271                                    ; preds = %1159
  %1272 = and i32 %1162, 134217728
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1308, label %1274

; <label>:1274                                    ; preds = %1271
  %1275 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1276 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1277 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1278 = fadd fast float %1275, -5.000000e-01
  %1279 = fadd fast float %1276, -5.000000e-01
  %1280 = fadd fast float %1277, -5.000000e-01
  %1281 = fmul fast float %1278, %1160
  %1282 = fmul fast float %1279, %1160
  %1283 = fmul fast float %1280, %1160
  %1284 = fadd fast float %1281, 5.000000e-01
  %1285 = fadd fast float %1282, 5.000000e-01
  %1286 = fadd fast float %1283, 5.000000e-01
  %1287 = call float @dx.op.unary.f32(i32 24, float %1135)  ; Sqrt(value)
  %1288 = call float @dx.op.unary.f32(i32 24, float %1136)  ; Sqrt(value)
  %1289 = call float @dx.op.unary.f32(i32 24, float %1137)  ; Sqrt(value)
  %1290 = fmul fast float %1284, 2.000000e+00
  %1291 = fsub fast float 1.000000e+00, %1290
  %1292 = fmul fast float %1291, %1287
  %1293 = fadd fast float %1292, %1290
  %1294 = fmul fast float %1293, %1287
  %1295 = fmul fast float %1285, 2.000000e+00
  %1296 = fsub fast float 1.000000e+00, %1295
  %1297 = fmul fast float %1296, %1288
  %1298 = fadd fast float %1297, %1295
  %1299 = fmul fast float %1298, %1288
  %1300 = fmul fast float %1286, 2.000000e+00
  %1301 = fsub fast float 1.000000e+00, %1300
  %1302 = fmul fast float %1301, %1289
  %1303 = fadd fast float %1302, %1300
  %1304 = fmul fast float %1303, %1289
  %1305 = fmul fast float %1294, %1294
  %1306 = fmul fast float %1299, %1299
  %1307 = fmul fast float %1304, %1304
  br label %1324

; <label>:1308                                    ; preds = %1271
  %1309 = fmul fast float %252, %252
  %1310 = fmul fast float %256, %256
  %1311 = fmul fast float %260, %260
  %1312 = fadd fast float %1309, -1.000000e+00
  %1313 = fadd fast float %1310, -1.000000e+00
  %1314 = fadd fast float %1311, -1.000000e+00
  %1315 = fmul fast float %1160, %1312
  %1316 = fmul fast float %1160, %1313
  %1317 = fmul fast float %1160, %1314
  %1318 = fadd fast float %1315, 1.000000e+00
  %1319 = fadd fast float %1316, 1.000000e+00
  %1320 = fadd fast float %1317, 1.000000e+00
  %1321 = fmul fast float %1318, %1135
  %1322 = fmul fast float %1319, %1136
  %1323 = fmul fast float %1320, %1137
  br label %1324

; <label>:1324                                    ; preds = %1308, %1274, %1165, %1121
  %1325 = phi float [ %1270, %1165 ], [ %1146, %1274 ], [ %1146, %1308 ], [ 0x3FA23C0BE0000000, %1121 ]
  %1326 = phi float [ %1262, %1165 ], [ %1305, %1274 ], [ %1321, %1308 ], [ 1.000000e+00, %1121 ]
  %1327 = phi float [ %1263, %1165 ], [ %1306, %1274 ], [ %1322, %1308 ], [ 1.000000e+00, %1121 ]
  %1328 = phi float [ %1264, %1165 ], [ %1307, %1274 ], [ %1323, %1308 ], [ 1.000000e+00, %1121 ]
  %1329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.i32 %1329, 1
  %1331 = and i32 %1330, 1
  %1332 = icmp ne i32 %1331, 0
  %1333 = add i32 %46, 276
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = and i32 %1335, 32
  %1337 = icmp ne i32 %1336, 0
  %1338 = and i1 %1332, %1337
  %1339 = select i1 %1338, float 1.000000e+00, float %1326
  %1340 = select i1 %1338, float 0x3FD3333340000000, float %1327
  %1341 = select i1 %1338, float 0x3FD3333340000000, float %1328
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 32
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1418, label %1346

; <label>:1346                                    ; preds = %1324
  %1347 = add i32 %46, 92
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = add i32 %46, 296
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1354, %dx.types.Handle %62, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = extractvalue %dx.types.ResRet.f32 %1355, 3
  %1360 = and i32 %1349, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = lshr i32 %1349, 8
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = lshr i32 %1349, 16
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101000000000
  %1369 = fmul fast float %1356, %1361
  %1370 = fadd fast float %1369, %1364
  %1371 = fmul fast float %1370, 0x3F70101000000000
  %1372 = fadd fast float %1357, -5.000000e-01
  %1373 = fadd fast float %1359, -5.000000e-01
  %1374 = fmul fast float %1372, %1368
  %1375 = fmul fast float %1373, %1368
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = fadd fast float %1375, 5.000000e-01
  %1378 = fmul fast float %1376, 2.000000e+00
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = fmul fast float %1377, 2.000000e+00
  %1381 = fadd fast float %1380, -1.000000e+00
  %1382 = fadd fast float %1379, %1381
  %1383 = fmul fast float %1382, 5.000000e-01
  %1384 = fsub fast float %1379, %1381
  %1385 = fmul fast float %1384, 5.000000e-01
  %1386 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = call float @dx.op.unary.f32(i32 6, float %1385)  ; FAbs(value)
  %1389 = fsub fast float %1387, %1388
  %1390 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1385, float %1389, float %1383, float %1385, float %1389)  ; Dot3(ax,ay,az,bx,by,bz)
  %1391 = call float @dx.op.unary.f32(i32 25, float %1390)  ; Rsqrt(value)
  %1392 = fmul fast float %1383, %1391
  %1393 = fmul fast float %1385, %1391
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 67108864
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1414, label %1398

; <label>:1398                                    ; preds = %1346
  %1399 = add i32 %46, 232
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 65535
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 65535
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = lshr i32 %1401, 16
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = fsub fast float %1371, %1409
  %1411 = fmul fast float %1410, %1403
  %1412 = fadd fast float %1411, %1407
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  br label %1414

; <label>:1414                                    ; preds = %1398, %1346
  %1415 = phi float [ %1413, %1398 ], [ %1371, %1346 ]
  %1416 = call float @dx.op.dot2.f32(i32 54, float %1392, float %1393, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %1417 = call float @dx.op.dot2.f32(i32 54, float %1392, float %1393, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %1418

; <label>:1418                                    ; preds = %1414, %1324
  %1419 = phi float [ %1415, %1414 ], [ 0x3FD6666660000000, %1324 ]
  %1420 = phi float [ %1416, %1414 ], [ 0.000000e+00, %1324 ]
  %1421 = phi float [ %1417, %1414 ], [ 0.000000e+00, %1324 ]
  %1422 = phi float [ %1358, %1414 ], [ 1.000000e+00, %1324 ]
  %1423 = add i32 %46, 144
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = lshr i32 %1425, 22
  %1427 = shl nuw nsw i32 %1426, 5
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 64
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1466, label %1433

; <label>:1433                                    ; preds = %1418
  %1434 = add i32 %46, 308
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 131072
  %1442 = icmp eq i32 %1441, 0
  %1443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1438, %dx.types.Handle %62, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = fmul fast float %1444, %240
  %1448 = fmul fast float %1445, %243
  %1449 = fmul fast float %1446, %246
  br i1 %1442, label %1456, label %1450

; <label>:1450                                    ; preds = %1433
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = fmul fast float %1452, %1447
  %1454 = fmul fast float %1452, %1448
  %1455 = fmul fast float %1452, %1449
  br label %1456

; <label>:1456                                    ; preds = %1450, %1433
  %1457 = phi float [ %1453, %1450 ], [ %1447, %1433 ]
  %1458 = phi float [ %1454, %1450 ], [ %1448, %1433 ]
  %1459 = phi float [ %1455, %1450 ], [ %1449, %1433 ]
  %1460 = fmul fast float %1457, %1428
  %1461 = select i1 %192, float %1460, float %1457
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1458, float %1459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = select i1 %192, float 0.000000e+00, float %1457
  %1464 = select i1 %192, float %1462, float %1458
  %1465 = select i1 %192, float 0.000000e+00, float %1459
  br label %1466

; <label>:1466                                    ; preds = %1456, %1418
  %1467 = phi float [ %1463, %1456 ], [ 0.000000e+00, %1418 ]
  %1468 = phi float [ %1464, %1456 ], [ 0.000000e+00, %1418 ]
  %1469 = phi float [ %1465, %1456 ], [ 0.000000e+00, %1418 ]
  %1470 = add i32 %46, 96
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = lshr i32 %1472, 8
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = call float @dx.op.dot3.f32(i32 55, float %1339, float %1340, float %1341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1479 = fmul fast float %1477, %1478
  %1480 = fadd fast float %1479, %1474
  %1481 = fmul fast float %1480, 0x3F70101020000000
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  br i1 %831, label %1483, label %1491

; <label>:1483                                    ; preds = %1466
  %1484 = fsub fast float 1.000000e+00, %1119
  %1485 = fmul fast float %1484, %820
  %1486 = fmul fast float %1484, %821
  %1487 = fmul fast float %1484, %822
  %1488 = fmul fast float %1484, %823
  %1489 = fmul fast float %1484, %824
  %1490 = fmul fast float %1484, %825
  br label %1491

; <label>:1491                                    ; preds = %1483, %1466
  %1492 = phi float [ %1485, %1483 ], [ %820, %1466 ]
  %1493 = phi float [ %1486, %1483 ], [ %821, %1466 ]
  %1494 = phi float [ %1487, %1483 ], [ %822, %1466 ]
  %1495 = phi float [ %1488, %1483 ], [ %823, %1466 ]
  %1496 = phi float [ %1489, %1483 ], [ %824, %1466 ]
  %1497 = phi float [ %1490, %1483 ], [ %825, %1466 ]
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 3
  %1501 = icmp eq i32 %1500, 3
  br i1 %1501, label %1580, label %1502

; <label>:1502                                    ; preds = %1491
  %1503 = and i32 %1499, 16
  %1504 = icmp ne i32 %1503, 0
  %1505 = select i1 %1504, float %1119, float 0.000000e+00
  %1506 = icmp eq i32 %1500, 0
  br i1 %1506, label %1507, label %1535

; <label>:1507                                    ; preds = %1502
  %1508 = and i32 %1499, 64
  %1509 = icmp ne i32 %1508, 0
  %1510 = select i1 %1509, float %1119, float 0.000000e+00
  %1511 = fsub fast float %1339, %1492
  %1512 = fsub fast float %1340, %1493
  %1513 = fsub fast float %1341, %1494
  %1514 = fmul fast float %1505, %1511
  %1515 = fmul fast float %1505, %1512
  %1516 = fmul fast float %1505, %1513
  %1517 = fadd fast float %1514, %1492
  %1518 = fadd fast float %1515, %1493
  %1519 = fadd fast float %1516, %1494
  %1520 = fsub fast float %1325, %826
  %1521 = fmul fast float %1505, %1520
  %1522 = fadd fast float %1521, %826
  %1523 = fsub fast float %1467, %1495
  %1524 = fsub fast float %1468, %1496
  %1525 = fsub fast float %1469, %1497
  %1526 = fmul fast float %1510, %1523
  %1527 = fmul fast float %1510, %1524
  %1528 = fmul fast float %1510, %1525
  %1529 = fadd fast float %1526, %1495
  %1530 = fadd fast float %1527, %1496
  %1531 = fadd fast float %1528, %1497
  %1532 = fsub fast float %1482, %830
  %1533 = fmul fast float %1505, %1532
  %1534 = fadd fast float %1533, %830
  br label %1580

; <label>:1535                                    ; preds = %1502
  %1536 = icmp eq i32 %1500, 1
  br i1 %1536, label %1537, label %1550

; <label>:1537                                    ; preds = %1535
  %1538 = fadd fast float %1339, -1.000000e+00
  %1539 = fadd fast float %1340, -1.000000e+00
  %1540 = fadd fast float %1341, -1.000000e+00
  %1541 = fmul fast float %1505, %1538
  %1542 = fmul fast float %1505, %1539
  %1543 = fmul fast float %1505, %1540
  %1544 = fadd fast float %1541, 1.000000e+00
  %1545 = fadd fast float %1542, 1.000000e+00
  %1546 = fadd fast float %1543, 1.000000e+00
  %1547 = fmul fast float %1544, %1492
  %1548 = fmul fast float %1545, %1493
  %1549 = fmul fast float %1546, %1494
  br label %1580

; <label>:1550                                    ; preds = %1535
  %1551 = icmp eq i32 %1500, 2
  br i1 %1551, label %1552, label %1580

; <label>:1552                                    ; preds = %1550
  %1553 = call float @dx.op.unary.f32(i32 24, float %1339)  ; Sqrt(value)
  %1554 = call float @dx.op.unary.f32(i32 24, float %1340)  ; Sqrt(value)
  %1555 = call float @dx.op.unary.f32(i32 24, float %1341)  ; Sqrt(value)
  %1556 = fadd fast float %1553, -5.000000e-01
  %1557 = fadd fast float %1554, -5.000000e-01
  %1558 = fadd fast float %1555, -5.000000e-01
  %1559 = fmul fast float %1556, %1505
  %1560 = fmul fast float %1557, %1505
  %1561 = fmul fast float %1558, %1505
  %1562 = fadd fast float %1559, 5.000000e-01
  %1563 = fadd fast float %1560, 5.000000e-01
  %1564 = fadd fast float %1561, 5.000000e-01
  %1565 = fmul fast float %1562, 2.000000e+00
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = fmul fast float %1566, %1492
  %1568 = fadd fast float %1567, %1565
  %1569 = fmul fast float %1568, %1492
  %1570 = fmul fast float %1563, 2.000000e+00
  %1571 = fsub fast float 1.000000e+00, %1570
  %1572 = fmul fast float %1571, %1493
  %1573 = fadd fast float %1572, %1570
  %1574 = fmul fast float %1573, %1493
  %1575 = fmul fast float %1564, 2.000000e+00
  %1576 = fsub fast float 1.000000e+00, %1575
  %1577 = fmul fast float %1576, %1494
  %1578 = fadd fast float %1577, %1575
  %1579 = fmul fast float %1578, %1494
  br label %1580

; <label>:1580                                    ; preds = %1552, %1550, %1537, %1507, %1491
  %1581 = phi float [ %1492, %1491 ], [ %1569, %1552 ], [ %1492, %1550 ], [ %1547, %1537 ], [ %1517, %1507 ]
  %1582 = phi float [ %1493, %1491 ], [ %1574, %1552 ], [ %1493, %1550 ], [ %1548, %1537 ], [ %1518, %1507 ]
  %1583 = phi float [ %1494, %1491 ], [ %1579, %1552 ], [ %1494, %1550 ], [ %1549, %1537 ], [ %1519, %1507 ]
  %1584 = phi float [ %1495, %1491 ], [ %1495, %1552 ], [ %1495, %1550 ], [ %1495, %1537 ], [ %1529, %1507 ]
  %1585 = phi float [ %1496, %1491 ], [ %1496, %1552 ], [ %1496, %1550 ], [ %1496, %1537 ], [ %1530, %1507 ]
  %1586 = phi float [ %1497, %1491 ], [ %1497, %1552 ], [ %1497, %1550 ], [ %1497, %1537 ], [ %1531, %1507 ]
  %1587 = phi float [ %826, %1491 ], [ %826, %1552 ], [ %826, %1550 ], [ %826, %1537 ], [ %1522, %1507 ]
  %1588 = phi float [ %830, %1491 ], [ %830, %1552 ], [ %830, %1550 ], [ %830, %1537 ], [ %1534, %1507 ]
  %1589 = and i32 %1499, 12
  %1590 = icmp eq i32 %1589, 12
  br i1 %1590, label %1663, label %1591

; <label>:1591                                    ; preds = %1580
  %1592 = and i32 %1499, 2097184
  %1593 = icmp eq i32 %1592, 2097184
  %1594 = select i1 %1593, float %1119, float 0.000000e+00
  %1595 = and i32 %1499, 4194336
  %1596 = icmp eq i32 %1595, 4194336
  %1597 = select i1 %1596, float %1119, float 0.000000e+00
  %1598 = and i32 %1499, 8388640
  %1599 = icmp eq i32 %1598, 8388640
  %1600 = select i1 %1599, float %1119, float 0.000000e+00
  %1601 = icmp eq i32 %1589, 0
  br i1 %1601, label %1602, label %1615

; <label>:1602                                    ; preds = %1591
  %1603 = fsub fast float %1420, %818
  %1604 = fsub fast float %1421, %819
  %1605 = fmul fast float %1594, %1603
  %1606 = fmul fast float %1594, %1604
  %1607 = fadd fast float %1605, %818
  %1608 = fadd fast float %1606, %819
  %1609 = fsub fast float %1422, %829
  %1610 = fmul fast float %1597, %1609
  %1611 = fadd fast float %1610, %829
  %1612 = fsub fast float %1419, %828
  %1613 = fmul fast float %1600, %1612
  %1614 = fadd fast float %1613, %828
  br label %1663

; <label>:1615                                    ; preds = %1591
  %1616 = icmp eq i32 %1589, 4
  br i1 %1616, label %1617, label %1649

; <label>:1617                                    ; preds = %1615
  %1618 = fmul fast float %1594, %1420
  %1619 = fmul fast float %1594, %1421
  %1620 = fadd fast float %1618, %818
  %1621 = fadd fast float %1619, %819
  %1622 = call float @dx.op.binary.f32(i32 36, float %829, float %1422)  ; FMin(a,b)
  %1623 = fsub fast float %1622, %829
  %1624 = fmul fast float %1623, %1597
  %1625 = fadd fast float %1624, %829
  %1626 = fadd fast float %1419, %828
  %1627 = fmul fast float %1626, 0x3FF337FAE0000000
  %1628 = fmul fast float %828, %828
  %1629 = fmul fast float %1419, %1419
  %1630 = fadd fast float %1629, %1628
  %1631 = fmul fast float %1630, 0x3FE5152B00000000
  %1632 = fmul fast float %828, 0xBFCC1F85E0000000
  %1633 = fmul fast float %1632, %1419
  %1634 = fadd fast float %1633, 0xBFE1363700000000
  %1635 = fadd fast float %1634, %1627
  %1636 = fsub fast float %1635, %1631
  %1637 = fmul fast float %1626, 0x3FBA6F0D00000000
  %1638 = fmul fast float %1630, 0x3FD0432880000000
  %1639 = fmul fast float %828, 0xBFEF110800000000
  %1640 = fmul fast float %1639, %1419
  %1641 = fadd fast float %1640, 1.000000e+00
  %1642 = fsub fast float %1641, %1637
  %1643 = fadd fast float %1642, %1638
  %1644 = fdiv fast float %1636, %1643
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = fsub fast float %1645, %828
  %1647 = fmul fast float %1646, %1600
  %1648 = fadd fast float %1647, %828
  br label %1663

; <label>:1649                                    ; preds = %1615
  %1650 = icmp eq i32 %1589, 8
  br i1 %1650, label %1651, label %1663

; <label>:1651                                    ; preds = %1649
  %1652 = fmul fast float %1594, %1420
  %1653 = fmul fast float %1594, %1421
  %1654 = fadd fast float %1652, %818
  %1655 = fadd fast float %1653, %819
  %1656 = call float @dx.op.binary.f32(i32 36, float %829, float %1422)  ; FMin(a,b)
  %1657 = fsub fast float %1656, %829
  %1658 = fmul fast float %1657, %1597
  %1659 = fadd fast float %1658, %829
  %1660 = fsub fast float %1419, %828
  %1661 = fmul fast float %1600, %1660
  %1662 = fadd fast float %1661, %828
  br label %1663

; <label>:1663                                    ; preds = %1651, %1649, %1617, %1602, %1580, %1118, %817
  %1664 = phi float [ %818, %1580 ], [ %818, %1118 ], [ %818, %817 ], [ %1607, %1602 ], [ %1620, %1617 ], [ %818, %1649 ], [ %1654, %1651 ]
  %1665 = phi float [ %819, %1580 ], [ %819, %1118 ], [ %819, %817 ], [ %1608, %1602 ], [ %1621, %1617 ], [ %819, %1649 ], [ %1655, %1651 ]
  %1666 = phi float [ %1581, %1580 ], [ %820, %1118 ], [ %820, %817 ], [ %1581, %1602 ], [ %1581, %1617 ], [ %1581, %1649 ], [ %1581, %1651 ]
  %1667 = phi float [ %1582, %1580 ], [ %821, %1118 ], [ %821, %817 ], [ %1582, %1602 ], [ %1582, %1617 ], [ %1582, %1649 ], [ %1582, %1651 ]
  %1668 = phi float [ %1583, %1580 ], [ %822, %1118 ], [ %822, %817 ], [ %1583, %1602 ], [ %1583, %1617 ], [ %1583, %1649 ], [ %1583, %1651 ]
  %1669 = phi float [ %1584, %1580 ], [ %823, %1118 ], [ %823, %817 ], [ %1584, %1602 ], [ %1584, %1617 ], [ %1584, %1649 ], [ %1584, %1651 ]
  %1670 = phi float [ %1585, %1580 ], [ %824, %1118 ], [ %824, %817 ], [ %1585, %1602 ], [ %1585, %1617 ], [ %1585, %1649 ], [ %1585, %1651 ]
  %1671 = phi float [ %1586, %1580 ], [ %825, %1118 ], [ %825, %817 ], [ %1586, %1602 ], [ %1586, %1617 ], [ %1586, %1649 ], [ %1586, %1651 ]
  %1672 = phi float [ %1587, %1580 ], [ %826, %1118 ], [ %826, %817 ], [ %1587, %1602 ], [ %1587, %1617 ], [ %1587, %1649 ], [ %1587, %1651 ]
  %1673 = phi float [ %828, %1580 ], [ %828, %1118 ], [ %828, %817 ], [ %1614, %1602 ], [ %1648, %1617 ], [ %828, %1649 ], [ %1662, %1651 ]
  %1674 = phi float [ %829, %1580 ], [ %829, %1118 ], [ %829, %817 ], [ %1611, %1602 ], [ %1625, %1617 ], [ %829, %1649 ], [ %1659, %1651 ]
  %1675 = phi float [ %1588, %1580 ], [ %830, %1118 ], [ %830, %817 ], [ %1588, %1602 ], [ %1588, %1617 ], [ %1588, %1649 ], [ %1588, %1651 ]
  %1676 = icmp ult i32 %358, 3
  %1677 = add i32 %46, 56
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = add i32 %46, 60
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = or i32 %1682, %1679
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %2508, label %1685

; <label>:1685                                    ; preds = %1663
  %1686 = add i32 %46, 252
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = lshr i32 %1688, 16
  %1690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1689)  ; LegacyF16ToF32(value)
  %1691 = fmul fast float %1690, 0x3F50624DE0000000
  %1692 = add i32 %46, 104
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = lshr i32 %1694, 16
  %1696 = and i32 %1695, 255
  %1697 = lshr i32 %1694, 24
  %1698 = add i32 %46, 260
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = and i32 %1700, 65535
  %1702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1701)  ; LegacyF16ToF32(value)
  %1703 = lshr i32 %1700, 16
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = add i32 %46, 64
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = lshr i32 %1707, 22
  %1709 = shl nuw nsw i32 %1708, 5
  %1710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1709)  ; LegacyF16ToF32(value)
  %1711 = shl i32 %1707, 4
  %1712 = and i32 %1711, 32752
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = lshr i32 %1707, 7
  %1715 = and i32 %1714, 32752
  %1716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1715)  ; LegacyF16ToF32(value)
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 3
  %1719 = fmul fast float %1718, 1.000000e+03
  %1720 = fmul fast float %317, %1719
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = fadd fast float %1721, %307
  %1723 = fmul fast float %318, %1719
  %1724 = call float @dx.op.unary.f32(i32 22, float %1723)  ; Frc(value)
  %1725 = fadd fast float %1724, %309
  %1726 = fmul fast float %1691, %1719
  %1727 = call float @dx.op.unary.f32(i32 22, float %1726)  ; Frc(value)
  %1728 = fmul fast float %1727, 0x401921FB60000000
  %1729 = fadd fast float %1728, %1710
  %1730 = call float @dx.op.unary.f32(i32 13, float %1729)  ; Sin(value)
  %1731 = call float @dx.op.unary.f32(i32 12, float %1729)  ; Cos(value)
  %1732 = fsub fast float -0.000000e+00, %1730
  %1733 = fadd fast float %57, -5.000000e-01
  %1734 = fadd fast float %58, -5.000000e-01
  %1735 = fmul fast float %1702, %1733
  %1736 = fmul fast float %1704, %1734
  %1737 = fadd fast float %1735, 5.000000e-01
  %1738 = fadd fast float %1736, 5.000000e-01
  %1739 = fmul fast float %1713, %1737
  %1740 = fmul fast float %1716, %1738
  %1741 = fmul fast float %1731, %1739
  %1742 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %1740, float %1741)  ; FMad(a,b,c)
  %1743 = fmul fast float %1730, %1739
  %1744 = call float @dx.op.tertiary.f32(i32 46, float %1731, float %1740, float %1743)  ; FMad(a,b,c)
  %1745 = fadd fast float %1722, %1742
  %1746 = fadd fast float %1725, %1744
  %1747 = icmp ugt i32 %1696, 1
  %1748 = icmp ugt i32 %1694, 33554431
  %1749 = or i1 %1748, %1747
  br i1 %1749, label %1750, label %1775

; <label>:1750                                    ; preds = %1685
  %1751 = add i32 %46, 212
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = lshr i32 %1753, 16
  %1755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1754)  ; LegacyF16ToF32(value)
  %1756 = fmul fast float %1718, %1755
  %1757 = call float @dx.op.unary.f32(i32 22, float %1756)  ; Frc(value)
  %1758 = mul nuw nsw i32 %1696, %1697
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1757, %1759
  %1761 = call float @dx.op.unary.f32(i32 27, float %1760)  ; Round_ni(value)
  %1762 = fptoui float %1761 to i32
  %1763 = urem i32 %1762, %1696
  %1764 = udiv i32 %1762, %1697
  %1765 = call float @dx.op.unary.f32(i32 22, float %1745)  ; Frc(value)
  %1766 = call float @dx.op.unary.f32(i32 22, float %1746)  ; Frc(value)
  %1767 = uitofp i32 %1763 to float
  %1768 = uitofp i32 %1764 to float
  %1769 = fadd fast float %1765, %1767
  %1770 = fadd fast float %1766, %1768
  %1771 = uitofp i32 %1696 to float
  %1772 = uitofp i32 %1697 to float
  %1773 = fdiv fast float %1769, %1771
  %1774 = fdiv fast float %1770, %1772
  br label %1775

; <label>:1775                                    ; preds = %1750, %1685
  %1776 = phi float [ %1773, %1750 ], [ %1745, %1685 ]
  %1777 = phi float [ %1774, %1750 ], [ %1746, %1685 ]
  %1778 = and i32 %1679, 16777216
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1889, label %1780

; <label>:1780                                    ; preds = %1775
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1785 = fadd fast float %1782, %121
  %1786 = fadd fast float %1783, %122
  %1787 = fadd fast float %1784, %123
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = icmp eq i32 %45, 65535
  br i1 %1791, label %1886, label %1792

; <label>:1792                                    ; preds = %1780
  %1793 = lshr i32 %45, 1
  %1794 = shl i32 %1793, 2
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = and i32 %45, 1
  %1798 = icmp ne i32 %1797, 0
  %1799 = lshr i32 %1796, 16
  %1800 = and i32 %1796, 65535
  %1801 = select i1 %1798, i32 %1799, i32 %1800
  %1802 = icmp eq i32 %1801, 65535
  br i1 %1802, label %1882, label %1803

; <label>:1803                                    ; preds = %1792
  %1804 = mul nuw nsw i32 %1801, 40
  %1805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.ResRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.ResRet.f32 %1805, 2
  %1809 = add nuw nsw i32 %1804, 12
  %1810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1814 = add nuw nsw i32 %1804, 24
  %1815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1819 = add nuw nsw i32 %1804, 36
  %1820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = fsub fast float %1785, %1806
  %1823 = fsub fast float %1786, %1807
  %1824 = fsub fast float %1787, %1808
  %1825 = fmul fast float %1821, %1822
  %1826 = fmul fast float %1821, %1823
  %1827 = fmul fast float %1821, %1824
  %1828 = call float @dx.op.unary.f32(i32 27, float %1825)  ; Round_ni(value)
  %1829 = call float @dx.op.unary.f32(i32 27, float %1826)  ; Round_ni(value)
  %1830 = call float @dx.op.unary.f32(i32 27, float %1827)  ; Round_ni(value)
  %1831 = fadd fast float %1828, 5.000000e-01
  %1832 = fadd fast float %1829, 5.000000e-01
  %1833 = fadd fast float %1830, 5.000000e-01
  %1834 = fmul fast float %1831, %1811
  %1835 = fmul fast float %1832, %1812
  %1836 = fmul fast float %1833, %1813
  %1837 = shl i32 %45, 2
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = add i32 %1839, 0
  %1841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1842 = call float @dx.op.unary.f32(i32 22, float %1834)  ; Frc(value)
  %1843 = call float @dx.op.unary.f32(i32 22, float %1835)  ; Frc(value)
  %1844 = call float @dx.op.unary.f32(i32 22, float %1836)  ; Frc(value)
  %1845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1841, %dx.types.Handle %40, float %1842, float %1843, float %1844, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.ResRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1845, 2
  %1849 = fmul fast float %1846, 1.023000e+03
  %1850 = fmul fast float %1847, 1.023000e+03
  %1851 = fmul fast float %1848, 1.023000e+03
  %1852 = fadd fast float %1849, 5.000000e-01
  %1853 = fadd fast float %1850, 5.000000e-01
  %1854 = fadd fast float %1851, 5.000000e-01
  %1855 = call float @dx.op.unary.f32(i32 27, float %1852)  ; Round_ni(value)
  %1856 = call float @dx.op.unary.f32(i32 27, float %1853)  ; Round_ni(value)
  %1857 = call float @dx.op.unary.f32(i32 27, float %1854)  ; Round_ni(value)
  %1858 = fsub fast float %1825, %1828
  %1859 = fsub fast float %1826, %1829
  %1860 = fsub fast float %1827, %1830
  %1861 = fmul fast float %1858, 7.500000e-01
  %1862 = fmul fast float %1859, 7.500000e-01
  %1863 = fmul fast float %1860, 7.500000e-01
  %1864 = fadd fast float %1828, 1.250000e-01
  %1865 = fadd fast float %1864, %1861
  %1866 = fadd fast float %1865, %1855
  %1867 = fadd fast float %1829, 1.250000e-01
  %1868 = fadd fast float %1867, %1862
  %1869 = fadd fast float %1868, %1856
  %1870 = fadd fast float %1830, 1.250000e-01
  %1871 = fadd fast float %1870, %1863
  %1872 = fadd fast float %1871, %1857
  %1873 = fmul fast float %1866, %1816
  %1874 = fmul fast float %1869, %1817
  %1875 = fmul fast float %1872, %1818
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = add i32 %1877, 0
  %1879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1879, %dx.types.Handle %38, float %1873, float %1874, float %1875, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  br label %1882

; <label>:1882                                    ; preds = %1803, %1792
  %1883 = phi float [ %1881, %1803 ], [ -1.000000e+00, %1792 ]
  %1884 = fadd fast float %1883, %1790
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  br label %1886

; <label>:1886                                    ; preds = %1882, %1780
  %1887 = phi float [ %1885, %1882 ], [ %1790, %1780 ]
  %1888 = fmul fast float %1887, %354
  br label %1889

; <label>:1889                                    ; preds = %1886, %1775
  %1890 = phi float [ %1888, %1886 ], [ %354, %1775 ]
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 256
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %1941, label %1895

; <label>:1895                                    ; preds = %1889
  %1896 = add i32 %46, 336
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = add i32 %1898, 0
  %1900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1900, %dx.types.Handle %63, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = add i32 %46, 116
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = shl i32 %1905, 4
  %1907 = and i32 %1906, 32752
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = lshr i32 %1905, 7
  %1910 = and i32 %1909, 32752
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = fsub fast float 1.000000e+00, %1890
  %1913 = call float @dx.op.binary.f32(i32 35, float %1912, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1914 = bitcast float %1890 to i32
  %1915 = sitofp i32 %1914 to float
  %1916 = fadd fast float %1915, 0xC1CFBF8940000000
  %1917 = fmul fast float %1911, %1916
  %1918 = fadd fast float %1917, 0x41CFBF8940000000
  %1919 = fptosi float %1918 to i32
  %1920 = bitcast i32 %1919 to float
  %1921 = bitcast float %1913 to i32
  %1922 = sitofp i32 %1921 to float
  %1923 = fadd fast float %1922, 0xC1CFBF8940000000
  %1924 = fmul fast float %1923, %1911
  %1925 = fadd fast float %1924, 0x41CFBF8940000000
  %1926 = fptosi float %1925 to i32
  %1927 = bitcast i32 %1926 to float
  %1928 = fmul fast float %1920, %1908
  %1929 = fmul fast float %1927, %1908
  %1930 = fsub fast float %1913, %1928
  %1931 = fadd fast float %1929, %1913
  %1932 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1933 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1934 = fsub fast float %1902, %1932
  %1935 = fsub fast float %1933, %1932
  %1936 = bitcast float %1935 to i32
  %1937 = sub nsw i32 2129859010, %1936
  %1938 = bitcast i32 %1937 to float
  %1939 = fmul fast float %1938, %1934
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  br label %1941

; <label>:1941                                    ; preds = %1895, %1889
  %1942 = phi float [ %1940, %1895 ], [ %1890, %1889 ]
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, 128
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %1963, label %1947

; <label>:1947                                    ; preds = %1941
  %1948 = add i32 %46, 324
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = add i32 %1950, 0
  %1952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1952, %dx.types.Handle %63, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 524288
  %1958 = icmp ne i32 %1957, 0
  %1959 = fcmp fast ogt float %1954, 0x3FE0101020000000
  %1960 = select i1 %1959, float 1.000000e+00, float 0.000000e+00
  %1961 = select i1 %1958, float %1960, float %1954
  %1962 = fmul fast float %1961, %1942
  br label %1963

; <label>:1963                                    ; preds = %1947, %1941
  %1964 = phi float [ %1962, %1947 ], [ %1942, %1941 ]
  %1965 = fcmp fast ult float %1964, 0x3F70101020000000
  br i1 %1965, label %2508, label %1966

; <label>:1966                                    ; preds = %1963
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 16
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %2169, label %1971

; <label>:1971                                    ; preds = %1966
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = add i32 %46, 288
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = add i32 %1976, 0
  %1978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1979 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1978, %dx.types.Handle %62, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.ResRet.f32 %1979, 1
  %1982 = extractvalue %dx.types.ResRet.f32 %1979, 2
  %1983 = extractvalue %dx.types.ResRet.f32 %1979, 3
  %1984 = and i32 %1973, 255
  %1985 = uitofp i32 %1984 to float
  %1986 = lshr i32 %1973, 8
  %1987 = and i32 %1986, 255
  %1988 = uitofp i32 %1987 to float
  %1989 = fmul fast float %1983, %1985
  %1990 = fadd fast float %1989, %1988
  %1991 = fmul fast float %1990, 0x3F70101000000000
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = and i32 %1993, 512
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2004, label %1996

; <label>:1996                                    ; preds = %1971
  %1997 = add i32 %46, 348
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = add i32 %1999, 0
  %2001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2001, %dx.types.Handle %63, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  br label %2004

; <label>:2004                                    ; preds = %1996, %1971
  %2005 = phi float [ %2003, %1996 ], [ 1.000000e+00, %1971 ]
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 33554432
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2116, label %2010

; <label>:2010                                    ; preds = %2004
  %2011 = add i32 %46, 208
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 65535
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = lshr i32 %2013, 16
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = add i32 %46, 212
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = and i32 %2020, 65535
  %2022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2021)  ; LegacyF16ToF32(value)
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = lshr i32 %2024, 24
  %2026 = uitofp i32 %2025 to float
  %2027 = fmul fast float %2026, 0x3F70101020000000
  %2028 = and i32 %2024, 255
  %2029 = uitofp i32 %2028 to float
  %2030 = fmul fast float %2029, 0x3F70101020000000
  %2031 = lshr i32 %2024, 8
  %2032 = and i32 %2031, 255
  %2033 = uitofp i32 %2032 to float
  %2034 = fmul fast float %2033, 0x3F70101020000000
  %2035 = lshr i32 %2024, 16
  %2036 = and i32 %2035, 255
  %2037 = uitofp i32 %2036 to float
  %2038 = fmul fast float %2037, 0x3F70101020000000
  %2039 = add i32 %46, 204
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = lshr i32 %2041, 24
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2043, 0x3F70101020000000
  %2045 = and i32 %2041, 255
  %2046 = uitofp i32 %2045 to float
  %2047 = fmul fast float %2046, 0x3F70101020000000
  %2048 = lshr i32 %2041, 8
  %2049 = and i32 %2048, 255
  %2050 = uitofp i32 %2049 to float
  %2051 = fmul fast float %2050, 0x3F70101020000000
  %2052 = lshr i32 %2041, 16
  %2053 = and i32 %2052, 255
  %2054 = uitofp i32 %2053 to float
  %2055 = fmul fast float %2054, 0x3F70101020000000
  %2056 = bitcast float %1980 to i32
  %2057 = ashr i32 %2056, 1
  %2058 = sub nsw i32 1597463174, %2057
  %2059 = bitcast i32 %2058 to float
  %2060 = fmul fast float %1980, 5.000000e-01
  %2061 = fmul fast float %2059, %2059
  %2062 = fmul fast float %2061, %2060
  %2063 = fsub fast float 1.500000e+00, %2062
  %2064 = fmul fast float %2059, %1980
  %2065 = fmul fast float %2064, %2063
  %2066 = bitcast float %1981 to i32
  %2067 = ashr i32 %2066, 1
  %2068 = sub nsw i32 1597463174, %2067
  %2069 = bitcast i32 %2068 to float
  %2070 = fmul fast float %1981, 5.000000e-01
  %2071 = fmul fast float %2069, %2069
  %2072 = fmul fast float %2071, %2070
  %2073 = fsub fast float 1.500000e+00, %2072
  %2074 = fmul fast float %2069, %1981
  %2075 = fmul fast float %2074, %2073
  %2076 = bitcast float %1982 to i32
  %2077 = ashr i32 %2076, 1
  %2078 = sub nsw i32 1597463174, %2077
  %2079 = bitcast i32 %2078 to float
  %2080 = fmul fast float %1982, 5.000000e-01
  %2081 = fmul fast float %2079, %2079
  %2082 = fmul fast float %2081, %2080
  %2083 = fsub fast float 1.500000e+00, %2082
  %2084 = fmul fast float %2079, %1982
  %2085 = fmul fast float %2084, %2083
  %2086 = fsub fast float %2065, %2047
  %2087 = fsub fast float %2075, %2051
  %2088 = fsub fast float %2085, %2055
  %2089 = fmul fast float %2086, %2015
  %2090 = fmul fast float %2087, %2017
  %2091 = fmul fast float %2088, %2022
  %2092 = fadd fast float %2089, %2030
  %2093 = fadd fast float %2090, %2034
  %2094 = fadd fast float %2091, %2038
  %2095 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2096 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2097 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2098 = fmul fast float %2095, %2095
  %2099 = fmul fast float %2096, %2096
  %2100 = fmul fast float %2097, %2097
  %2101 = fsub fast float %2098, %1980
  %2102 = fsub fast float %2099, %1981
  %2103 = fsub fast float %2100, %1982
  %2104 = fmul fast float %2101, %2005
  %2105 = fmul fast float %2102, %2005
  %2106 = fmul fast float %2103, %2005
  %2107 = fadd fast float %2104, %1980
  %2108 = fadd fast float %2105, %1981
  %2109 = fadd fast float %2106, %1982
  %2110 = fadd fast float %2027, %1991
  %2111 = fsub fast float %2110, %2044
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = fsub fast float %2112, %1991
  %2114 = fmul fast float %2113, %2005
  %2115 = fadd fast float %2114, %1991
  br label %2169

; <label>:2116                                    ; preds = %2004
  %2117 = and i32 %2007, 134217728
  %2118 = icmp eq i32 %2117, 0
  br i1 %2118, label %2153, label %2119

; <label>:2119                                    ; preds = %2116
  %2120 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2121 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2122 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fadd fast float %2121, -5.000000e-01
  %2125 = fadd fast float %2122, -5.000000e-01
  %2126 = fmul fast float %2123, %2005
  %2127 = fmul fast float %2124, %2005
  %2128 = fmul fast float %2125, %2005
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fadd fast float %2127, 5.000000e-01
  %2131 = fadd fast float %2128, 5.000000e-01
  %2132 = call float @dx.op.unary.f32(i32 24, float %1980)  ; Sqrt(value)
  %2133 = call float @dx.op.unary.f32(i32 24, float %1981)  ; Sqrt(value)
  %2134 = call float @dx.op.unary.f32(i32 24, float %1982)  ; Sqrt(value)
  %2135 = fmul fast float %2129, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2132
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2132
  %2140 = fmul fast float %2130, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2133
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2133
  %2145 = fmul fast float %2131, 2.000000e+00
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2134
  %2148 = fadd fast float %2147, %2145
  %2149 = fmul fast float %2148, %2134
  %2150 = fmul fast float %2139, %2139
  %2151 = fmul fast float %2144, %2144
  %2152 = fmul fast float %2149, %2149
  br label %2169

; <label>:2153                                    ; preds = %2116
  %2154 = fmul fast float %294, %294
  %2155 = fmul fast float %298, %298
  %2156 = fmul fast float %302, %302
  %2157 = fadd fast float %2154, -1.000000e+00
  %2158 = fadd fast float %2155, -1.000000e+00
  %2159 = fadd fast float %2156, -1.000000e+00
  %2160 = fmul fast float %2005, %2157
  %2161 = fmul fast float %2005, %2158
  %2162 = fmul fast float %2005, %2159
  %2163 = fadd fast float %2160, 1.000000e+00
  %2164 = fadd fast float %2161, 1.000000e+00
  %2165 = fadd fast float %2162, 1.000000e+00
  %2166 = fmul fast float %2163, %1980
  %2167 = fmul fast float %2164, %1981
  %2168 = fmul fast float %2165, %1982
  br label %2169

; <label>:2169                                    ; preds = %2153, %2119, %2010, %1966
  %2170 = phi float [ %2115, %2010 ], [ %1991, %2119 ], [ %1991, %2153 ], [ 0x3FA23C0BE0000000, %1966 ]
  %2171 = phi float [ %2107, %2010 ], [ %2150, %2119 ], [ %2166, %2153 ], [ 1.000000e+00, %1966 ]
  %2172 = phi float [ %2108, %2010 ], [ %2151, %2119 ], [ %2167, %2153 ], [ 1.000000e+00, %1966 ]
  %2173 = phi float [ %2109, %2010 ], [ %2152, %2119 ], [ %2168, %2153 ], [ 1.000000e+00, %1966 ]
  %2174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.i32 %2174, 1
  %2176 = and i32 %2175, 1
  %2177 = icmp ne i32 %2176, 0
  %2178 = add i32 %46, 276
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 32
  %2182 = icmp ne i32 %2181, 0
  %2183 = and i1 %2177, %2182
  %2184 = select i1 %2183, float 1.000000e+00, float %2171
  %2185 = select i1 %2183, float 0x3FD3333340000000, float %2172
  %2186 = select i1 %2183, float 0x3FD3333340000000, float %2173
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 32
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2263, label %2191

; <label>:2191                                    ; preds = %2169
  %2192 = add i32 %46, 108
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = add i32 %46, 300
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = add i32 %2197, 0
  %2199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2199, %dx.types.Handle %62, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.ResRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.ResRet.f32 %2200, 2
  %2204 = extractvalue %dx.types.ResRet.f32 %2200, 3
  %2205 = and i32 %2194, 255
  %2206 = uitofp i32 %2205 to float
  %2207 = lshr i32 %2194, 8
  %2208 = and i32 %2207, 255
  %2209 = uitofp i32 %2208 to float
  %2210 = lshr i32 %2194, 16
  %2211 = and i32 %2210, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = fmul fast float %2212, 0x3F70101000000000
  %2214 = fmul fast float %2201, %2206
  %2215 = fadd fast float %2214, %2209
  %2216 = fmul fast float %2215, 0x3F70101000000000
  %2217 = fadd fast float %2202, -5.000000e-01
  %2218 = fadd fast float %2204, -5.000000e-01
  %2219 = fmul fast float %2217, %2213
  %2220 = fmul fast float %2218, %2213
  %2221 = fadd fast float %2219, 5.000000e-01
  %2222 = fadd fast float %2220, 5.000000e-01
  %2223 = fmul fast float %2221, 2.000000e+00
  %2224 = fadd fast float %2223, -1.000000e+00
  %2225 = fmul fast float %2222, 2.000000e+00
  %2226 = fadd fast float %2225, -1.000000e+00
  %2227 = fadd fast float %2224, %2226
  %2228 = fmul fast float %2227, 5.000000e-01
  %2229 = fsub fast float %2224, %2226
  %2230 = fmul fast float %2229, 5.000000e-01
  %2231 = call float @dx.op.unary.f32(i32 6, float %2228)  ; FAbs(value)
  %2232 = fsub fast float 1.000000e+00, %2231
  %2233 = call float @dx.op.unary.f32(i32 6, float %2230)  ; FAbs(value)
  %2234 = fsub fast float %2232, %2233
  %2235 = call float @dx.op.dot3.f32(i32 55, float %2228, float %2230, float %2234, float %2228, float %2230, float %2234)  ; Dot3(ax,ay,az,bx,by,bz)
  %2236 = call float @dx.op.unary.f32(i32 25, float %2235)  ; Rsqrt(value)
  %2237 = fmul fast float %2228, %2236
  %2238 = fmul fast float %2230, %2236
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 67108864
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2259, label %2243

; <label>:2243                                    ; preds = %2191
  %2244 = add i32 %46, 248
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 65535
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 65535
  %2252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2251)  ; LegacyF16ToF32(value)
  %2253 = lshr i32 %2246, 16
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = fsub fast float %2216, %2254
  %2256 = fmul fast float %2255, %2248
  %2257 = fadd fast float %2256, %2252
  %2258 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  br label %2259

; <label>:2259                                    ; preds = %2243, %2191
  %2260 = phi float [ %2258, %2243 ], [ %2216, %2191 ]
  %2261 = call float @dx.op.dot2.f32(i32 54, float %2237, float %2238, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %2262 = call float @dx.op.dot2.f32(i32 54, float %2237, float %2238, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %2263

; <label>:2263                                    ; preds = %2259, %2169
  %2264 = phi float [ %2260, %2259 ], [ 0x3FD6666660000000, %2169 ]
  %2265 = phi float [ %2261, %2259 ], [ 0.000000e+00, %2169 ]
  %2266 = phi float [ %2262, %2259 ], [ 0.000000e+00, %2169 ]
  %2267 = phi float [ %2203, %2259 ], [ 1.000000e+00, %2169 ]
  %2268 = add i32 %46, 160
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = lshr i32 %2270, 22
  %2272 = shl nuw nsw i32 %2271, 5
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 64
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2311, label %2278

; <label>:2278                                    ; preds = %2263
  %2279 = add i32 %46, 312
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = add i32 %2281, 0
  %2283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 131072
  %2287 = icmp eq i32 %2286, 0
  %2288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2283, %dx.types.Handle %62, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.ResRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.ResRet.f32 %2288, 2
  %2292 = fmul fast float %2289, %282
  %2293 = fmul fast float %2290, %285
  %2294 = fmul fast float %2291, %288
  br i1 %2287, label %2301, label %2295

; <label>:2295                                    ; preds = %2278
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = fmul fast float %2297, %2292
  %2299 = fmul fast float %2297, %2293
  %2300 = fmul fast float %2297, %2294
  br label %2301

; <label>:2301                                    ; preds = %2295, %2278
  %2302 = phi float [ %2298, %2295 ], [ %2292, %2278 ]
  %2303 = phi float [ %2299, %2295 ], [ %2293, %2278 ]
  %2304 = phi float [ %2300, %2295 ], [ %2294, %2278 ]
  %2305 = fmul fast float %2302, %2273
  %2306 = select i1 %192, float %2305, float %2302
  %2307 = call float @dx.op.dot3.f32(i32 55, float %2306, float %2303, float %2304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2308 = select i1 %192, float 0.000000e+00, float %2302
  %2309 = select i1 %192, float %2307, float %2303
  %2310 = select i1 %192, float 0.000000e+00, float %2304
  br label %2311

; <label>:2311                                    ; preds = %2301, %2263
  %2312 = phi float [ %2308, %2301 ], [ 0.000000e+00, %2263 ]
  %2313 = phi float [ %2309, %2301 ], [ 0.000000e+00, %2263 ]
  %2314 = phi float [ %2310, %2301 ], [ 0.000000e+00, %2263 ]
  %2315 = add i32 %46, 112
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 255
  %2319 = uitofp i32 %2318 to float
  %2320 = lshr i32 %2317, 8
  %2321 = and i32 %2320, 255
  %2322 = uitofp i32 %2321 to float
  %2323 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2185, float %2186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2324 = fmul fast float %2322, %2323
  %2325 = fadd fast float %2324, %2319
  %2326 = fmul fast float %2325, 0x3F70101020000000
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  br i1 %1676, label %2328, label %2336

; <label>:2328                                    ; preds = %2311
  %2329 = fsub fast float 1.000000e+00, %1964
  %2330 = fmul fast float %2329, %1666
  %2331 = fmul fast float %2329, %1667
  %2332 = fmul fast float %2329, %1668
  %2333 = fmul fast float %2329, %1669
  %2334 = fmul fast float %2329, %1670
  %2335 = fmul fast float %2329, %1671
  br label %2336

; <label>:2336                                    ; preds = %2328, %2311
  %2337 = phi float [ %2330, %2328 ], [ %1666, %2311 ]
  %2338 = phi float [ %2331, %2328 ], [ %1667, %2311 ]
  %2339 = phi float [ %2332, %2328 ], [ %1668, %2311 ]
  %2340 = phi float [ %2333, %2328 ], [ %1669, %2311 ]
  %2341 = phi float [ %2334, %2328 ], [ %1670, %2311 ]
  %2342 = phi float [ %2335, %2328 ], [ %1671, %2311 ]
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 3
  %2346 = icmp eq i32 %2345, 3
  br i1 %2346, label %2425, label %2347

; <label>:2347                                    ; preds = %2336
  %2348 = and i32 %2344, 16
  %2349 = icmp ne i32 %2348, 0
  %2350 = select i1 %2349, float %1964, float 0.000000e+00
  %2351 = icmp eq i32 %2345, 0
  br i1 %2351, label %2352, label %2380

; <label>:2352                                    ; preds = %2347
  %2353 = and i32 %2344, 64
  %2354 = icmp ne i32 %2353, 0
  %2355 = select i1 %2354, float %1964, float 0.000000e+00
  %2356 = fsub fast float %2184, %2337
  %2357 = fsub fast float %2185, %2338
  %2358 = fsub fast float %2186, %2339
  %2359 = fmul fast float %2350, %2356
  %2360 = fmul fast float %2350, %2357
  %2361 = fmul fast float %2350, %2358
  %2362 = fadd fast float %2359, %2337
  %2363 = fadd fast float %2360, %2338
  %2364 = fadd fast float %2361, %2339
  %2365 = fsub fast float %2170, %1672
  %2366 = fmul fast float %2350, %2365
  %2367 = fadd fast float %2366, %1672
  %2368 = fsub fast float %2312, %2340
  %2369 = fsub fast float %2313, %2341
  %2370 = fsub fast float %2314, %2342
  %2371 = fmul fast float %2355, %2368
  %2372 = fmul fast float %2355, %2369
  %2373 = fmul fast float %2355, %2370
  %2374 = fadd fast float %2371, %2340
  %2375 = fadd fast float %2372, %2341
  %2376 = fadd fast float %2373, %2342
  %2377 = fsub fast float %2327, %1675
  %2378 = fmul fast float %2350, %2377
  %2379 = fadd fast float %2378, %1675
  br label %2425

; <label>:2380                                    ; preds = %2347
  %2381 = icmp eq i32 %2345, 1
  br i1 %2381, label %2382, label %2395

; <label>:2382                                    ; preds = %2380
  %2383 = fadd fast float %2184, -1.000000e+00
  %2384 = fadd fast float %2185, -1.000000e+00
  %2385 = fadd fast float %2186, -1.000000e+00
  %2386 = fmul fast float %2350, %2383
  %2387 = fmul fast float %2350, %2384
  %2388 = fmul fast float %2350, %2385
  %2389 = fadd fast float %2386, 1.000000e+00
  %2390 = fadd fast float %2387, 1.000000e+00
  %2391 = fadd fast float %2388, 1.000000e+00
  %2392 = fmul fast float %2389, %2337
  %2393 = fmul fast float %2390, %2338
  %2394 = fmul fast float %2391, %2339
  br label %2425

; <label>:2395                                    ; preds = %2380
  %2396 = icmp eq i32 %2345, 2
  br i1 %2396, label %2397, label %2425

; <label>:2397                                    ; preds = %2395
  %2398 = call float @dx.op.unary.f32(i32 24, float %2184)  ; Sqrt(value)
  %2399 = call float @dx.op.unary.f32(i32 24, float %2185)  ; Sqrt(value)
  %2400 = call float @dx.op.unary.f32(i32 24, float %2186)  ; Sqrt(value)
  %2401 = fadd fast float %2398, -5.000000e-01
  %2402 = fadd fast float %2399, -5.000000e-01
  %2403 = fadd fast float %2400, -5.000000e-01
  %2404 = fmul fast float %2401, %2350
  %2405 = fmul fast float %2402, %2350
  %2406 = fmul fast float %2403, %2350
  %2407 = fadd fast float %2404, 5.000000e-01
  %2408 = fadd fast float %2405, 5.000000e-01
  %2409 = fadd fast float %2406, 5.000000e-01
  %2410 = fmul fast float %2407, 2.000000e+00
  %2411 = fsub fast float 1.000000e+00, %2410
  %2412 = fmul fast float %2411, %2337
  %2413 = fadd fast float %2412, %2410
  %2414 = fmul fast float %2413, %2337
  %2415 = fmul fast float %2408, 2.000000e+00
  %2416 = fsub fast float 1.000000e+00, %2415
  %2417 = fmul fast float %2416, %2338
  %2418 = fadd fast float %2417, %2415
  %2419 = fmul fast float %2418, %2338
  %2420 = fmul fast float %2409, 2.000000e+00
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = fmul fast float %2421, %2339
  %2423 = fadd fast float %2422, %2420
  %2424 = fmul fast float %2423, %2339
  br label %2425

; <label>:2425                                    ; preds = %2397, %2395, %2382, %2352, %2336
  %2426 = phi float [ %2337, %2336 ], [ %2414, %2397 ], [ %2337, %2395 ], [ %2392, %2382 ], [ %2362, %2352 ]
  %2427 = phi float [ %2338, %2336 ], [ %2419, %2397 ], [ %2338, %2395 ], [ %2393, %2382 ], [ %2363, %2352 ]
  %2428 = phi float [ %2339, %2336 ], [ %2424, %2397 ], [ %2339, %2395 ], [ %2394, %2382 ], [ %2364, %2352 ]
  %2429 = phi float [ %2340, %2336 ], [ %2340, %2397 ], [ %2340, %2395 ], [ %2340, %2382 ], [ %2374, %2352 ]
  %2430 = phi float [ %2341, %2336 ], [ %2341, %2397 ], [ %2341, %2395 ], [ %2341, %2382 ], [ %2375, %2352 ]
  %2431 = phi float [ %2342, %2336 ], [ %2342, %2397 ], [ %2342, %2395 ], [ %2342, %2382 ], [ %2376, %2352 ]
  %2432 = phi float [ %1672, %2336 ], [ %1672, %2397 ], [ %1672, %2395 ], [ %1672, %2382 ], [ %2367, %2352 ]
  %2433 = phi float [ %1675, %2336 ], [ %1675, %2397 ], [ %1675, %2395 ], [ %1675, %2382 ], [ %2379, %2352 ]
  %2434 = and i32 %2344, 12
  %2435 = icmp eq i32 %2434, 12
  br i1 %2435, label %2508, label %2436

; <label>:2436                                    ; preds = %2425
  %2437 = and i32 %2344, 2097184
  %2438 = icmp eq i32 %2437, 2097184
  %2439 = select i1 %2438, float %1964, float 0.000000e+00
  %2440 = and i32 %2344, 4194336
  %2441 = icmp eq i32 %2440, 4194336
  %2442 = select i1 %2441, float %1964, float 0.000000e+00
  %2443 = and i32 %2344, 8388640
  %2444 = icmp eq i32 %2443, 8388640
  %2445 = select i1 %2444, float %1964, float 0.000000e+00
  %2446 = icmp eq i32 %2434, 0
  br i1 %2446, label %2447, label %2460

; <label>:2447                                    ; preds = %2436
  %2448 = fsub fast float %2265, %1664
  %2449 = fsub fast float %2266, %1665
  %2450 = fmul fast float %2439, %2448
  %2451 = fmul fast float %2439, %2449
  %2452 = fadd fast float %2450, %1664
  %2453 = fadd fast float %2451, %1665
  %2454 = fsub fast float %2267, %1674
  %2455 = fmul fast float %2442, %2454
  %2456 = fadd fast float %2455, %1674
  %2457 = fsub fast float %2264, %1673
  %2458 = fmul fast float %2445, %2457
  %2459 = fadd fast float %2458, %1673
  br label %2508

; <label>:2460                                    ; preds = %2436
  %2461 = icmp eq i32 %2434, 4
  br i1 %2461, label %2462, label %2494

; <label>:2462                                    ; preds = %2460
  %2463 = fmul fast float %2439, %2265
  %2464 = fmul fast float %2439, %2266
  %2465 = fadd fast float %2463, %1664
  %2466 = fadd fast float %2464, %1665
  %2467 = call float @dx.op.binary.f32(i32 36, float %1674, float %2267)  ; FMin(a,b)
  %2468 = fsub fast float %2467, %1674
  %2469 = fmul fast float %2468, %2442
  %2470 = fadd fast float %2469, %1674
  %2471 = fadd fast float %2264, %1673
  %2472 = fmul fast float %2471, 0x3FF337FAE0000000
  %2473 = fmul fast float %1673, %1673
  %2474 = fmul fast float %2264, %2264
  %2475 = fadd fast float %2474, %2473
  %2476 = fmul fast float %2475, 0x3FE5152B00000000
  %2477 = fmul fast float %1673, 0xBFCC1F85E0000000
  %2478 = fmul fast float %2477, %2264
  %2479 = fadd fast float %2478, 0xBFE1363700000000
  %2480 = fadd fast float %2479, %2472
  %2481 = fsub fast float %2480, %2476
  %2482 = fmul fast float %2471, 0x3FBA6F0D00000000
  %2483 = fmul fast float %2475, 0x3FD0432880000000
  %2484 = fmul fast float %1673, 0xBFEF110800000000
  %2485 = fmul fast float %2484, %2264
  %2486 = fadd fast float %2485, 1.000000e+00
  %2487 = fsub fast float %2486, %2482
  %2488 = fadd fast float %2487, %2483
  %2489 = fdiv fast float %2481, %2488
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = fsub fast float %2490, %1673
  %2492 = fmul fast float %2491, %2445
  %2493 = fadd fast float %2492, %1673
  br label %2508

; <label>:2494                                    ; preds = %2460
  %2495 = icmp eq i32 %2434, 8
  br i1 %2495, label %2496, label %2508

; <label>:2496                                    ; preds = %2494
  %2497 = fmul fast float %2439, %2265
  %2498 = fmul fast float %2439, %2266
  %2499 = fadd fast float %2497, %1664
  %2500 = fadd fast float %2498, %1665
  %2501 = call float @dx.op.binary.f32(i32 36, float %1674, float %2267)  ; FMin(a,b)
  %2502 = fsub fast float %2501, %1674
  %2503 = fmul fast float %2502, %2442
  %2504 = fadd fast float %2503, %1674
  %2505 = fsub fast float %2264, %1673
  %2506 = fmul fast float %2445, %2505
  %2507 = fadd fast float %2506, %1673
  br label %2508

; <label>:2508                                    ; preds = %2496, %2494, %2462, %2447, %2425, %1963, %1663
  %2509 = phi float [ %1664, %2425 ], [ %1664, %1963 ], [ %1664, %1663 ], [ %2452, %2447 ], [ %2465, %2462 ], [ %1664, %2494 ], [ %2499, %2496 ]
  %2510 = phi float [ %1665, %2425 ], [ %1665, %1963 ], [ %1665, %1663 ], [ %2453, %2447 ], [ %2466, %2462 ], [ %1665, %2494 ], [ %2500, %2496 ]
  %2511 = phi float [ %2426, %2425 ], [ %1666, %1963 ], [ %1666, %1663 ], [ %2426, %2447 ], [ %2426, %2462 ], [ %2426, %2494 ], [ %2426, %2496 ]
  %2512 = phi float [ %2427, %2425 ], [ %1667, %1963 ], [ %1667, %1663 ], [ %2427, %2447 ], [ %2427, %2462 ], [ %2427, %2494 ], [ %2427, %2496 ]
  %2513 = phi float [ %2428, %2425 ], [ %1668, %1963 ], [ %1668, %1663 ], [ %2428, %2447 ], [ %2428, %2462 ], [ %2428, %2494 ], [ %2428, %2496 ]
  %2514 = phi float [ %2429, %2425 ], [ %1669, %1963 ], [ %1669, %1663 ], [ %2429, %2447 ], [ %2429, %2462 ], [ %2429, %2494 ], [ %2429, %2496 ]
  %2515 = phi float [ %2430, %2425 ], [ %1670, %1963 ], [ %1670, %1663 ], [ %2430, %2447 ], [ %2430, %2462 ], [ %2430, %2494 ], [ %2430, %2496 ]
  %2516 = phi float [ %2431, %2425 ], [ %1671, %1963 ], [ %1671, %1663 ], [ %2431, %2447 ], [ %2431, %2462 ], [ %2431, %2494 ], [ %2431, %2496 ]
  %2517 = phi float [ %2432, %2425 ], [ %1672, %1963 ], [ %1672, %1663 ], [ %2432, %2447 ], [ %2432, %2462 ], [ %2432, %2494 ], [ %2432, %2496 ]
  %2518 = phi float [ %1673, %2425 ], [ %1673, %1963 ], [ %1673, %1663 ], [ %2459, %2447 ], [ %2493, %2462 ], [ %1673, %2494 ], [ %2507, %2496 ]
  %2519 = phi float [ %1674, %2425 ], [ %1674, %1963 ], [ %1674, %1663 ], [ %2456, %2447 ], [ %2470, %2462 ], [ %1674, %2494 ], [ %2504, %2496 ]
  %2520 = phi float [ %2433, %2425 ], [ %1675, %1963 ], [ %1675, %1663 ], [ %2433, %2447 ], [ %2433, %2462 ], [ %2433, %2494 ], [ %2433, %2496 ]
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = call float @dx.op.dot2.f32(i32 54, float %2509, float %2510, float %2509, float %2510)  ; Dot2(ax,ay,bx,by)
  %2524 = fmul fast float %2523, 0x3FE3333340000000
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = call float @dx.op.dot3.f32(i32 55, float %2509, float %2510, float %2525, float %2509, float %2510, float %2525)  ; Dot3(ax,ay,az,bx,by,bz)
  %2527 = call float @dx.op.unary.f32(i32 25, float %2526)  ; Rsqrt(value)
  %2528 = fmul fast float %2527, %2509
  %2529 = fmul fast float %2527, %2510
  %2530 = fmul fast float %2525, %2527
  %2531 = fmul fast float %2530, %69
  %2532 = fmul fast float %2530, %70
  %2533 = fmul fast float %2530, %71
  %2534 = fmul fast float %2528, %72
  %2535 = fmul fast float %2528, %73
  %2536 = fmul fast float %2528, %74
  %2537 = fadd fast float %2531, %2534
  %2538 = fadd fast float %2532, %2535
  %2539 = fadd fast float %2533, %2536
  %2540 = fmul fast float %2529, %85
  %2541 = fmul fast float %2529, %86
  %2542 = fmul fast float %2529, %87
  %2543 = fadd fast float %2537, %2540
  %2544 = fadd fast float %2538, %2541
  %2545 = fadd fast float %2539, %2542
  %2546 = call float @dx.op.dot3.f32(i32 55, float %2543, float %2544, float %2545, float %2543, float %2544, float %2545)  ; Dot3(ax,ay,az,bx,by,bz)
  %2547 = call float @dx.op.unary.f32(i32 25, float %2546)  ; Rsqrt(value)
  %2548 = fmul fast float %2543, %2547
  %2549 = fmul fast float %2544, %2547
  %2550 = fmul fast float %2545, %2547
  %2551 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %2552 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %2553 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %2554 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %2555 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %2556 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %2557 = fadd fast float %2551, %121
  %2558 = fadd fast float %2552, %122
  %2559 = fadd fast float %2553, %123
  %2560 = fadd fast float %2554, %121
  %2561 = fadd fast float %2555, %122
  %2562 = fadd fast float %2556, %123
  %2563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.f32 %2563, 0
  %2565 = extractvalue %dx.types.CBufRet.f32 %2563, 1
  %2566 = extractvalue %dx.types.CBufRet.f32 %2563, 2
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 2
  %2569 = extractvalue %dx.types.CBufRet.f32 %2567, 3
  %2570 = fmul fast float %2564, %66
  %2571 = fmul fast float %2570, %2568
  %2572 = fmul fast float %2565, %67
  %2573 = fmul fast float %2572, %2569
  %2574 = fptoui float %2571 to i32
  %2575 = fptoui float %2573 to i32
  %2576 = fadd fast float %2564, -1.000000e+00
  %2577 = fadd fast float %2565, -1.000000e+00
  %2578 = fptoui float %2576 to i32
  %2579 = fptoui float %2577 to i32
  %2580 = call i32 @dx.op.binary.i32(i32 40, i32 %2574, i32 %2578)  ; UMin(a,b)
  %2581 = call i32 @dx.op.binary.i32(i32 40, i32 %2575, i32 %2579)  ; UMin(a,b)
  %2582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2582, 2
  %2584 = extractvalue %dx.types.CBufRet.f32 %2582, 3
  %2585 = fmul fast float %2583, %61
  %2586 = fsub fast float %2585, %2584
  %2587 = fadd fast float %2566, -1.000000e+00
  %2588 = call float @dx.op.binary.f32(i32 36, float %2586, float %2587)  ; FMin(a,b)
  %2589 = fptoui float %2588 to i32
  %2590 = fptoui float %2564 to i32
  %2591 = fptoui float %2565 to i32
  %2592 = mul i32 %2589, %2591
  %2593 = add i32 %2592, %2581
  %2594 = mul i32 %2593, %2590
  %2595 = add i32 %2594, %2580
  %2596 = shl i32 %2595, 2
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = and i32 %2598, 1023
  %2600 = lshr i32 %2598, 10
  %2601 = icmp eq i32 %2599, 0
  br i1 %2601, label %3027, label %2602

; <label>:2602                                    ; preds = %2508
  %2603 = and i32 %2598, 1023
  br label %2604

; <label>:2604                                    ; preds = %2730, %2602
  %2605 = phi float [ %2731, %2730 ], [ 0.000000e+00, %2602 ]
  %2606 = phi float [ %2732, %2730 ], [ %2522, %2602 ]
  %2607 = phi float [ %2733, %2730 ], [ %2520, %2602 ]
  %2608 = phi float [ %2734, %2730 ], [ 0.000000e+00, %2602 ]
  %2609 = phi float [ %2735, %2730 ], [ 0.000000e+00, %2602 ]
  %2610 = phi float [ %2736, %2730 ], [ %2514, %2602 ]
  %2611 = phi float [ %2737, %2730 ], [ %2515, %2602 ]
  %2612 = phi float [ %2738, %2730 ], [ %2516, %2602 ]
  %2613 = phi float [ %2739, %2730 ], [ %2548, %2602 ]
  %2614 = phi float [ %2740, %2730 ], [ %2549, %2602 ]
  %2615 = phi float [ %2741, %2730 ], [ %2550, %2602 ]
  %2616 = phi float [ %2742, %2730 ], [ %2519, %2602 ]
  %2617 = phi float [ %2743, %2730 ], [ %2518, %2602 ]
  %2618 = phi float [ %2744, %2730 ], [ 0.000000e+00, %2602 ]
  %2619 = phi float [ %2745, %2730 ], [ %2517, %2602 ]
  %2620 = phi float [ %2746, %2730 ], [ %2511, %2602 ]
  %2621 = phi float [ %2747, %2730 ], [ %2512, %2602 ]
  %2622 = phi float [ %2748, %2730 ], [ %2513, %2602 ]
  %2623 = phi i32 [ %2680, %2730 ], [ 0, %2602 ]
  %2624 = add nuw nsw i32 %2623, %2600
  %2625 = shl i32 %2624, 2
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = shl i32 %2627, 8
  %2629 = or i32 %2628, 48
  %2630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.ResRet.f32 %2630, 1
  %2633 = extractvalue %dx.types.ResRet.f32 %2630, 2
  %2634 = extractvalue %dx.types.ResRet.f32 %2630, 3
  %2635 = or i32 %2628, 64
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = extractvalue %dx.types.ResRet.i32 %2636, 1
  %2639 = or i32 %2628, 80
  %2640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.f32 %2640, 2
  %2642 = extractvalue %dx.types.ResRet.f32 %2640, 3
  %2643 = or i32 %2628, 96
  %2644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = extractvalue %dx.types.ResRet.f32 %2644, 3
  %2649 = or i32 %2628, 112
  %2650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 2
  %2652 = or i32 %2628, 128
  %2653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.ResRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.ResRet.f32 %2653, 2
  %2657 = extractvalue %dx.types.ResRet.f32 %2653, 3
  %2658 = or i32 %2628, 144
  %2659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2663 = extractvalue %dx.types.ResRet.f32 %2659, 3
  %2664 = or i32 %2628, 160
  %2665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.f32 %2665, 0
  %2667 = extractvalue %dx.types.ResRet.f32 %2665, 1
  %2668 = extractvalue %dx.types.ResRet.f32 %2665, 2
  %2669 = extractvalue %dx.types.ResRet.f32 %2665, 3
  %2670 = or i32 %2628, 192
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = or i32 %2628, 208
  %2674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2676 = or i32 %2628, 248
  %2677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  %2679 = extractvalue %dx.types.ResRet.f32 %2677, 1
  %2680 = add nuw nsw i32 %2623, 1
  %2681 = bitcast float %2634 to i32
  %2682 = and i32 %2681, 2560
  %2683 = icmp eq i32 %2682, 0
  %2684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 0
  %2686 = extractvalue %dx.types.ResRet.f32 %2684, 1
  %2687 = extractvalue %dx.types.ResRet.f32 %2684, 2
  %2688 = extractvalue %dx.types.ResRet.f32 %2684, 3
  %2689 = call float @dx.op.dot4.f32(i32 56, float %2685, float %2686, float %2687, float %2688, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2690 = or i32 %2628, 16
  %2691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.ResRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.ResRet.f32 %2691, 2
  %2695 = extractvalue %dx.types.ResRet.f32 %2691, 3
  %2696 = call float @dx.op.dot4.f32(i32 56, float %2692, float %2693, float %2694, float %2695, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2697 = or i32 %2628, 32
  %2698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = extractvalue %dx.types.ResRet.f32 %2698, 3
  %2703 = call float @dx.op.dot4.f32(i32 56, float %2699, float %2700, float %2701, float %2702, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2704 = call float @dx.op.unary.f32(i32 27, float %2689)  ; Round_ni(value)
  %2705 = call float @dx.op.unary.f32(i32 6, float %2704)  ; FAbs(value)
  %2706 = call float @dx.op.unary.f32(i32 27, float %2696)  ; Round_ni(value)
  %2707 = call float @dx.op.unary.f32(i32 6, float %2706)  ; FAbs(value)
  %2708 = call float @dx.op.unary.f32(i32 6, float %2703)  ; FAbs(value)
  %2709 = call float @dx.op.unary.f32(i32 27, float %2708)  ; Round_ni(value)
  %2710 = fadd fast float %2707, %2705
  %2711 = fadd fast float %2710, %2709
  %2712 = fcmp fast oeq float %2711, 0.000000e+00
  %2713 = call float @dx.op.dot4.f32(i32 56, float %2685, float %2686, float %2687, float %2688, float %2557, float %2558, float %2559, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2714 = call float @dx.op.dot4.f32(i32 56, float %2692, float %2693, float %2694, float %2695, float %2557, float %2558, float %2559, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2715 = call float @dx.op.dot4.f32(i32 56, float %2685, float %2686, float %2687, float %2688, float %2560, float %2561, float %2562, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2716 = call float @dx.op.dot4.f32(i32 56, float %2692, float %2693, float %2694, float %2695, float %2560, float %2561, float %2562, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2717 = fsub fast float %2713, %2689
  %2718 = fsub fast float %2715, %2689
  %2719 = fsub fast float %2714, %2696
  %2720 = fsub fast float %2716, %2696
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2631, float %2632, float %2633, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 2
  %2724 = fadd fast float %2723, %2721
  %2725 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2726 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2727 = fcmp fast ogt float %2725, %2726
  %2728 = and i1 %2712, %2727
  %2729 = and i1 %2683, %2728
  br i1 %2729, label %2750, label %2730

; <label>:2730                                    ; preds = %3013, %2831, %2750, %2604
  %2731 = phi float [ %2605, %2750 ], [ %2834, %2831 ], [ %2834, %3013 ], [ %2605, %2604 ]
  %2732 = phi float [ %2606, %2750 ], [ %2606, %2831 ], [ %2988, %3013 ], [ %2606, %2604 ]
  %2733 = phi float [ %2607, %2750 ], [ %2607, %2831 ], [ %2986, %3013 ], [ %2607, %2604 ]
  %2734 = phi float [ %2608, %2750 ], [ %2608, %2831 ], [ %2958, %3013 ], [ %2608, %2604 ]
  %2735 = phi float [ %2609, %2750 ], [ %2609, %2831 ], [ %2956, %3013 ], [ %2609, %2604 ]
  %2736 = phi float [ %2610, %2750 ], [ %2610, %2831 ], [ %3023, %3013 ], [ %2610, %2604 ]
  %2737 = phi float [ %2611, %2750 ], [ %2611, %2831 ], [ %3024, %3013 ], [ %2611, %2604 ]
  %2738 = phi float [ %2612, %2750 ], [ %2612, %2831 ], [ %3025, %3013 ], [ %2612, %2604 ]
  %2739 = phi float [ %2613, %2750 ], [ %2613, %2831 ], [ %2937, %3013 ], [ %2613, %2604 ]
  %2740 = phi float [ %2614, %2750 ], [ %2614, %2831 ], [ %2938, %3013 ], [ %2614, %2604 ]
  %2741 = phi float [ %2615, %2750 ], [ %2615, %2831 ], [ %2939, %3013 ], [ %2615, %2604 ]
  %2742 = phi float [ %2616, %2750 ], [ %2616, %2831 ], [ %2966, %3013 ], [ %2616, %2604 ]
  %2743 = phi float [ %2617, %2750 ], [ %2617, %2831 ], [ %2963, %3013 ], [ %2617, %2604 ]
  %2744 = phi float [ %2618, %2750 ], [ %2618, %2831 ], [ %2960, %3013 ], [ %2618, %2604 ]
  %2745 = phi float [ %2619, %2750 ], [ %2619, %2831 ], [ %2954, %3013 ], [ %2619, %2604 ]
  %2746 = phi float [ %2620, %2750 ], [ %2620, %2831 ], [ %2949, %3013 ], [ %2620, %2604 ]
  %2747 = phi float [ %2621, %2750 ], [ %2621, %2831 ], [ %2950, %3013 ], [ %2621, %2604 ]
  %2748 = phi float [ %2622, %2750 ], [ %2622, %2831 ], [ %2951, %3013 ], [ %2622, %2604 ]
  %2749 = icmp eq i32 %2680, %2603
  br i1 %2749, label %3026, label %2604

; <label>:2750                                    ; preds = %2604
  %2751 = extractvalue %dx.types.ResRet.f32 %2650, 3
  %2752 = extractvalue %dx.types.ResRet.f32 %2650, 1
  %2753 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2640, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2640, 0
  %2756 = extractvalue %dx.types.ResRet.i32 %2636, 3
  %2757 = extractvalue %dx.types.ResRet.i32 %2636, 2
  %2758 = add i32 %2756, 0
  %2759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2758, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2759, %dx.types.Handle %2760, float %2689, float %2696, float undef, float undef, i32 0, i32 0, i32 undef, float %2717, float %2719, float undef, float %2718, float %2720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = fmul fast float %2762, %2755
  %2764 = fadd fast float %2763, %2754
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2766 = fmul fast float %2689, %2645
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %2646, float %2696, float %2766)  ; FMad(a,b,c)
  %2768 = fadd fast float %2767, %2753
  %2769 = fmul fast float %2689, %2647
  %2770 = call float @dx.op.tertiary.f32(i32 46, float %2648, float %2696, float %2769)  ; FMad(a,b,c)
  %2771 = fadd fast float %2770, %2752
  %2772 = fmul fast float %2717, %2645
  %2773 = call float @dx.op.tertiary.f32(i32 46, float %2646, float %2719, float %2772)  ; FMad(a,b,c)
  %2774 = fmul fast float %2717, %2647
  %2775 = call float @dx.op.tertiary.f32(i32 46, float %2648, float %2719, float %2774)  ; FMad(a,b,c)
  %2776 = fmul fast float %2718, %2645
  %2777 = call float @dx.op.tertiary.f32(i32 46, float %2646, float %2720, float %2776)  ; FMad(a,b,c)
  %2778 = fmul fast float %2718, %2647
  %2779 = call float @dx.op.tertiary.f32(i32 46, float %2648, float %2720, float %2778)  ; FMad(a,b,c)
  %2780 = add i32 %2757, 0
  %2781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2781, %dx.types.Handle %2760, float %2768, float %2771, float undef, float undef, i32 0, i32 0, i32 undef, float %2773, float %2775, float undef, float %2777, float %2779, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2783 = extractvalue %dx.types.ResRet.f32 %2782, 0
  %2784 = and i32 %2681, 1024
  %2785 = icmp ne i32 %2784, 0
  %2786 = fcmp fast ogt float %2783, 0x3FE0101020000000
  %2787 = uitofp i1 %2786 to float
  %2788 = select i1 %2785, float %2787, float %2783
  %2789 = and i32 %2681, 8192
  %2790 = icmp ne i32 %2789, 0
  %2791 = select i1 %2790, float %2751, float 1.000000e+00
  %2792 = fmul fast float %2689, 2.000000e+00
  %2793 = fadd fast float %2792, -1.000000e+00
  %2794 = call float @dx.op.unary.f32(i32 6, float %2793)  ; FAbs(value)
  %2795 = fmul fast float %2794, %2678
  %2796 = fsub fast float %2795, %2678
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fmul fast float %2696, 2.000000e+00
  %2799 = fadd fast float %2798, -1.000000e+00
  %2800 = call float @dx.op.unary.f32(i32 6, float %2799)  ; FAbs(value)
  %2801 = fmul fast float %2800, %2679
  %2802 = fsub fast float %2801, %2679
  %2803 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  %2804 = fmul fast float %2708, %2641
  %2805 = fsub fast float %2804, %2641
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = fmul fast float %2765, %2791
  %2808 = fmul fast float %2807, %2762
  %2809 = fmul fast float %2808, %2797
  %2810 = fmul fast float %2809, %2788
  %2811 = fmul fast float %2810, %2803
  %2812 = fmul fast float %2811, %2806
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2816 = fsub fast float %2725, %2815
  %2817 = fmul fast float %2816, %2814
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = fmul fast float %2812, %2642
  %2820 = fadd fast float %2812, %2642
  %2821 = fmul fast float %2820, %2651
  %2822 = fsub fast float %2821, %2651
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2824 = and i32 %2681, 128
  %2825 = icmp ne i32 %2824, 0
  %2826 = select i1 %2825, float %2823, float %2819
  %2827 = fmul fast float %2826, %2818
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = fcmp fast ugt float %2827, %2829
  br i1 %2830, label %2831, label %2730

; <label>:2831                                    ; preds = %2750
  %2832 = select i1 %2790, float %2827, float 0.000000e+00
  %2833 = fadd fast float %2832, %2605
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  br i1 %2790, label %2730, label %2835

; <label>:2835                                    ; preds = %2831
  %2836 = and i32 %2681, 4
  %2837 = and i32 %2681, 8
  %2838 = add i32 %2637, 0
  %2839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2838, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2841 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2839, %dx.types.Handle %2840, float %2768, float %2771, float undef, float undef, i32 0, i32 0, i32 undef, float %2773, float %2775, float undef, float %2777, float %2779, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2842 = extractvalue %dx.types.ResRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.ResRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.ResRet.f32 %2841, 2
  %2845 = extractvalue %dx.types.ResRet.f32 %2841, 3
  %2846 = bitcast float %2663 to i32
  %2847 = and i32 %2846, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = lshr i32 %2846, 8
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = fmul fast float %2845, %2848
  %2853 = fadd fast float %2852, %2851
  %2854 = fmul fast float %2853, 0x3F70101000000000
  %2855 = add i32 %2638, 0
  %2856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2855, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2857 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2856, %dx.types.Handle %2840, float %2768, float %2771, float undef, float undef, i32 0, i32 0, i32 undef, float %2773, float %2775, float undef, float %2777, float %2779, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.ResRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.ResRet.f32 %2857, 2
  %2861 = extractvalue %dx.types.ResRet.f32 %2857, 3
  %2862 = bitcast float %2657 to i32
  %2863 = and i32 %2862, 255
  %2864 = uitofp i32 %2863 to float
  %2865 = lshr i32 %2862, 8
  %2866 = and i32 %2865, 255
  %2867 = uitofp i32 %2866 to float
  %2868 = lshr i32 %2862, 16
  %2869 = and i32 %2868, 255
  %2870 = uitofp i32 %2869 to float
  %2871 = fmul fast float %2870, 0x3F70101000000000
  %2872 = fmul fast float %2858, %2864
  %2873 = fadd fast float %2872, %2867
  %2874 = fmul fast float %2873, 0x3F70101000000000
  %2875 = fadd fast float %2859, -5.000000e-01
  %2876 = fadd fast float %2861, -5.000000e-01
  %2877 = fmul fast float %2875, %2871
  %2878 = fmul fast float %2876, %2871
  %2879 = fadd fast float %2877, 5.000000e-01
  %2880 = fadd fast float %2878, 5.000000e-01
  %2881 = fmul fast float %2842, %2666
  %2882 = fmul fast float %2843, %2667
  %2883 = fmul fast float %2844, %2668
  %2884 = fmul fast float %2879, 2.000000e+00
  %2885 = fadd fast float %2884, -1.000000e+00
  %2886 = fmul fast float %2880, 2.000000e+00
  %2887 = fadd fast float %2886, -1.000000e+00
  %2888 = fadd fast float %2885, %2887
  %2889 = fmul fast float %2888, 5.000000e-01
  %2890 = fsub fast float %2885, %2887
  %2891 = fmul fast float %2890, 5.000000e-01
  %2892 = call float @dx.op.unary.f32(i32 6, float %2889)  ; FAbs(value)
  %2893 = fsub fast float 1.000000e+00, %2892
  %2894 = call float @dx.op.unary.f32(i32 6, float %2891)  ; FAbs(value)
  %2895 = fsub fast float %2893, %2894
  %2896 = call float @dx.op.dot3.f32(i32 55, float %2889, float %2891, float %2895, float %2889, float %2891, float %2895)  ; Dot3(ax,ay,az,bx,by,bz)
  %2897 = call float @dx.op.unary.f32(i32 25, float %2896)  ; Rsqrt(value)
  %2898 = fmul fast float %2889, %2897
  %2899 = fmul fast float %2891, %2897
  %2900 = fmul fast float %2897, %2895
  %2901 = fmul fast float %2900, %2631
  %2902 = fmul fast float %2900, %2632
  %2903 = fmul fast float %2900, %2633
  %2904 = fmul fast float %2898, %2654
  %2905 = fmul fast float %2898, %2655
  %2906 = fmul fast float %2898, %2656
  %2907 = fadd fast float %2904, %2901
  %2908 = fadd fast float %2905, %2902
  %2909 = fadd fast float %2906, %2903
  %2910 = fmul fast float %2899, %2660
  %2911 = fmul fast float %2899, %2661
  %2912 = fmul fast float %2899, %2662
  %2913 = fadd fast float %2907, %2910
  %2914 = fadd fast float %2908, %2911
  %2915 = fadd fast float %2909, %2912
  %2916 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2915, float %2913, float %2914, float %2915)  ; Dot3(ax,ay,az,bx,by,bz)
  %2917 = call float @dx.op.unary.f32(i32 25, float %2916)  ; Rsqrt(value)
  %2918 = fmul fast float %2913, %2917
  %2919 = fmul fast float %2914, %2917
  %2920 = fmul fast float %2915, %2917
  %2921 = icmp ne i32 %2837, 0
  %2922 = select i1 %2921, float 1.000000e+00, float 0.000000e+00
  %2923 = fmul fast float %2827, %2922
  %2924 = and i32 %2681, 1
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %2926, label %2930

; <label>:2926                                    ; preds = %2835
  %2927 = fsub fast float %2918, %2613
  %2928 = fsub fast float %2919, %2614
  %2929 = fsub fast float %2920, %2615
  br label %2930

; <label>:2930                                    ; preds = %2926, %2835
  %2931 = phi float [ %2927, %2926 ], [ %2918, %2835 ]
  %2932 = phi float [ %2928, %2926 ], [ %2919, %2835 ]
  %2933 = phi float [ %2929, %2926 ], [ %2920, %2835 ]
  %2934 = fmul float %2933, %2923
  %2935 = fmul float %2932, %2923
  %2936 = fmul float %2931, %2923
  %2937 = fadd fast float %2936, %2613
  %2938 = fadd fast float %2935, %2614
  %2939 = fadd fast float %2934, %2615
  %2940 = icmp ne i32 %2836, 0
  %2941 = select i1 %2940, float 1.000000e+00, float 0.000000e+00
  %2942 = fmul fast float %2827, %2941
  %2943 = fsub fast float %2881, %2620
  %2944 = fsub fast float %2882, %2621
  %2945 = fsub fast float %2883, %2622
  %2946 = fmul fast float %2943, %2942
  %2947 = fmul fast float %2944, %2942
  %2948 = fmul fast float %2945, %2942
  %2949 = fadd fast float %2946, %2620
  %2950 = fadd fast float %2947, %2621
  %2951 = fadd fast float %2948, %2622
  %2952 = fsub fast float %2854, %2619
  %2953 = fmul fast float %2952, %2942
  %2954 = fadd fast float %2953, %2619
  %2955 = fmul fast float %2942, %2609
  %2956 = fsub fast float %2609, %2955
  %2957 = fmul fast float %2942, %2608
  %2958 = fsub fast float %2608, %2957
  %2959 = fadd fast float %2827, %2618
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = fsub fast float %2874, %2617
  %2962 = fmul fast float %2961, %2923
  %2963 = fadd fast float %2962, %2617
  %2964 = fsub fast float %2860, %2616
  %2965 = fmul fast float %2964, %2923
  %2966 = fadd fast float %2965, %2616
  %2967 = call float @dx.op.dot3.f32(i32 55, float %2881, float %2882, float %2883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2971 = fmul fast float %2970, %2967
  %2972 = fadd fast float %2971, %2969
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2974 = bitcast float %2669 to i32
  %2975 = and i32 %2974, 65535
  %2976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2975)  ; LegacyF16ToF32(value)
  %2977 = lshr i32 %2974, 16
  %2978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2977)  ; LegacyF16ToF32(value)
  %2979 = fcmp fast oge float %2976, 0.000000e+00
  %2980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2980, 0
  %2982 = select i1 %2979, float %2976, float %2981
  %2983 = fadd fast float %2982, %2978
  %2984 = fsub fast float %2973, %2607
  %2985 = fmul fast float %2984, %2827
  %2986 = fadd fast float %2985, %2607
  %2987 = fmul fast float %2983, %2827
  %2988 = call float @dx.op.binary.f32(i32 35, float %2606, float %2987)  ; FMax(a,b)
  %2989 = and i32 %2681, 16
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3013, label %2991

; <label>:2991                                    ; preds = %2930
  %2992 = bitcast float %2675 to i32
  %2993 = add i32 %2672, 0
  %2994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2993, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2995 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2994, %dx.types.Handle %2840, float %2768, float %2771, float undef, float undef, i32 0, i32 0, i32 undef, float %2773, float %2775, float undef, float %2777, float %2779, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.ResRet.f32 %2995, 1
  %2998 = extractvalue %dx.types.ResRet.f32 %2995, 2
  %2999 = and i32 %2992, 65535
  %3000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2999)  ; LegacyF16ToF32(value)
  %3001 = fmul fast float %2996, %2666
  %3002 = fmul fast float %2997, %2667
  %3003 = fmul fast float %2998, %2668
  %3004 = and i32 %2681, 16384
  %3005 = icmp ne i32 %3004, 0
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3008 = select i1 %3005, float %3007, float 1.000000e+00
  %3009 = fmul fast float %3008, %3000
  %3010 = fmul fast float %3001, %3009
  %3011 = fmul fast float %3002, %3009
  %3012 = fmul fast float %3003, %3009
  br label %3013

; <label>:3013                                    ; preds = %2991, %2930
  %3014 = phi float [ %3010, %2991 ], [ 0.000000e+00, %2930 ]
  %3015 = phi float [ %3011, %2991 ], [ 0.000000e+00, %2930 ]
  %3016 = phi float [ %3012, %2991 ], [ 0.000000e+00, %2930 ]
  %3017 = fsub fast float %3014, %2610
  %3018 = fsub fast float %3015, %2611
  %3019 = fsub fast float %3016, %2612
  %3020 = fmul fast float %3017, %2827
  %3021 = fmul fast float %3018, %2827
  %3022 = fmul fast float %3019, %2827
  %3023 = fadd fast float %3020, %2610
  %3024 = fadd fast float %3021, %2611
  %3025 = fadd fast float %3022, %2612
  br label %2730

; <label>:3026                                    ; preds = %2730
  br label %3027

; <label>:3027                                    ; preds = %3026, %2508
  %3028 = phi float [ 0.000000e+00, %2508 ], [ %2731, %3026 ]
  %3029 = phi float [ %2522, %2508 ], [ %2732, %3026 ]
  %3030 = phi float [ %2520, %2508 ], [ %2733, %3026 ]
  %3031 = phi float [ 0.000000e+00, %2508 ], [ %2734, %3026 ]
  %3032 = phi float [ 0.000000e+00, %2508 ], [ %2735, %3026 ]
  %3033 = phi float [ %2514, %2508 ], [ %2736, %3026 ]
  %3034 = phi float [ %2515, %2508 ], [ %2737, %3026 ]
  %3035 = phi float [ %2516, %2508 ], [ %2738, %3026 ]
  %3036 = phi float [ %2548, %2508 ], [ %2739, %3026 ]
  %3037 = phi float [ %2549, %2508 ], [ %2740, %3026 ]
  %3038 = phi float [ %2550, %2508 ], [ %2741, %3026 ]
  %3039 = phi float [ %2519, %2508 ], [ %2742, %3026 ]
  %3040 = phi float [ %2518, %2508 ], [ %2743, %3026 ]
  %3041 = phi float [ 0.000000e+00, %2508 ], [ %2744, %3026 ]
  %3042 = phi float [ %2517, %2508 ], [ %2745, %3026 ]
  %3043 = phi float [ %2511, %2508 ], [ %2746, %3026 ]
  %3044 = phi float [ %2512, %2508 ], [ %2747, %3026 ]
  %3045 = phi float [ %2513, %2508 ], [ %2748, %3026 ]
  %3046 = call float @dx.op.dot3.f32(i32 55, float %3036, float %3037, float %3038, float %3036, float %3037, float %3038)  ; Dot3(ax,ay,az,bx,by,bz)
  %3047 = call float @dx.op.unary.f32(i32 25, float %3046)  ; Rsqrt(value)
  %3048 = fmul fast float %3047, %3036
  %3049 = fmul fast float %3047, %3037
  %3050 = fmul fast float %3047, %3038
  %3051 = fadd fast float %3041, %827
  %3052 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3053 = call float @dx.op.dot3.f32(i32 55, float %3048, float %3049, float %3050, float %3048, float %3049, float %3050)  ; Dot3(ax,ay,az,bx,by,bz)
  %3054 = call float @dx.op.unary.f32(i32 25, float %3053)  ; Rsqrt(value)
  %3055 = fmul fast float %3054, %3048
  %3056 = fmul fast float %3054, %3049
  %3057 = fmul fast float %3054, %3050
  %3058 = fadd fast float %3042, 0xBFB99999A0000000
  %3059 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3060 = fmul fast float %3059, 0x3FF1C71C80000000
  %3061 = call float @dx.op.binary.f32(i32 36, float %3042, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3062 = fsub fast float 1.000000e+00, %3060
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3064 = fmul fast float %3063, %3043
  %3065 = fmul fast float %3063, %3044
  %3066 = fmul fast float %3063, %3045
  %3067 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3068 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3069 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3070 = fmul fast float %3060, %3043
  %3071 = fmul fast float %3060, %3044
  %3072 = fmul fast float %3060, %3045
  %3073 = fadd fast float %3070, %3061
  %3074 = fadd fast float %3071, %3061
  %3075 = fadd fast float %3072, %3061
  %3076 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3077 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3078 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3079 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3081 = extractvalue %dx.types.CBufRet.i32 %3080, 3
  %3082 = and i32 %3081, 8
  %3083 = icmp ne i32 %3082, 0
  %3084 = call float @dx.op.binary.f32(i32 35, float %3067, float %3043)  ; FMax(a,b)
  %3085 = call float @dx.op.binary.f32(i32 35, float %3068, float %3043)  ; FMax(a,b)
  %3086 = call float @dx.op.binary.f32(i32 35, float %3069, float %3043)  ; FMax(a,b)
  %3087 = call float @dx.op.dot3.f32(i32 55, float %3067, float %3068, float %3069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3088 = select i1 %192, float %3043, float %3067
  %3089 = select i1 %192, float %3087, float %3068
  %3090 = select i1 %192, float 1.000000e+00, float %3069
  %3091 = select i1 %3083, float %3084, float %3088
  %3092 = select i1 %3083, float %3085, float %3089
  %3093 = select i1 %3083, float %3086, float %3090
  %3094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3095 = extractvalue %dx.types.CBufRet.f32 %3094, 0
  %3096 = extractvalue %dx.types.CBufRet.f32 %3094, 1
  %3097 = extractvalue %dx.types.CBufRet.f32 %3094, 2
  %3098 = fadd fast float %3095, %121
  %3099 = fadd fast float %3096, %122
  %3100 = fadd fast float %3097, %123
  %3101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3102 = extractvalue %dx.types.CBufRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.CBufRet.f32 %3101, 1
  %3104 = fsub fast float %3098, %3102
  %3105 = fsub fast float %3099, %3103
  %3106 = fmul fast float %3104, %3104
  %3107 = fmul fast float %3105, %3105
  %3108 = fadd fast float %3106, %3107
  %3109 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3101, 2
  %3111 = fcmp fast olt float %3109, %3110
  br i1 %3111, label %3112, label %3179

; <label>:3112                                    ; preds = %3027
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 0
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 0
  %3117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.f32 %3117, 0
  %3119 = extractvalue %dx.types.CBufRet.f32 %3113, 1
  %3120 = extractvalue %dx.types.CBufRet.f32 %3115, 1
  %3121 = extractvalue %dx.types.CBufRet.f32 %3117, 1
  %3122 = extractvalue %dx.types.CBufRet.f32 %3113, 3
  %3123 = extractvalue %dx.types.CBufRet.f32 %3115, 3
  %3124 = extractvalue %dx.types.CBufRet.f32 %3117, 3
  %3125 = fadd fast float %3122, %3098
  %3126 = fadd fast float %3123, %3099
  %3127 = fadd fast float %3124, %3100
  %3128 = fmul fast float %3125, %3114
  %3129 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3116, float %3128)  ; FMad(a,b,c)
  %3130 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3118, float %3129)  ; FMad(a,b,c)
  %3131 = fmul fast float %3125, %3119
  %3132 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3120, float %3131)  ; FMad(a,b,c)
  %3133 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3121, float %3132)  ; FMad(a,b,c)
  %3134 = fsub fast float %3130, %3122
  %3135 = fsub fast float %3133, %3123
  %3136 = fsub fast float %3134, %3102
  %3137 = fadd fast float %3136, %3110
  %3138 = fsub fast float %3135, %3103
  %3139 = fadd fast float %3138, %3110
  %3140 = extractvalue %dx.types.CBufRet.f32 %3101, 3
  %3141 = fmul fast float %3137, %3140
  %3142 = fmul fast float %3139, %3140
  %3143 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3144 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3145 = fsub fast float 1.000000e+00, %3143
  %3146 = fsub fast float 1.000000e+00, %3144
  %3147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3145, float %3146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3148 = extractvalue %dx.types.ResRet.f32 %3147, 0
  %3149 = fcmp fast ugt float %3148, 0.000000e+00
  br i1 %3149, label %3150, label %3453

; <label>:3150                                    ; preds = %3112
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 2
  %3153 = fmul fast float %3152, %3148
  %3154 = extractvalue %dx.types.CBufRet.f32 %3151, 3
  %3155 = fadd fast float %3154, %3153
  %3156 = extractvalue %dx.types.CBufRet.f32 %3117, 2
  %3157 = fadd fast float %3155, %3124
  %3158 = fmul fast float %3130, %3118
  %3159 = call float @dx.op.tertiary.f32(i32 46, float %3133, float %3121, float %3158)  ; FMad(a,b,c)
  %3160 = call float @dx.op.tertiary.f32(i32 46, float %3157, float %3156, float %3159)  ; FMad(a,b,c)
  %3161 = fsub fast float %3160, %3124
  %3162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3163 = extractvalue %dx.types.CBufRet.f32 %3162, 2
  %3164 = fsub fast float %3161, %3163
  %3165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3145, float %3146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.ResRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.ResRet.f32 %3165, 2
  %3169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3145, float %3146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3173 = fadd fast float %3170, %3166
  %3174 = fmul fast float %3173, 0x3F847AE140000000
  %3175 = fadd fast float %3171, %3167
  %3176 = fmul fast float %3175, 0x3F847AE140000000
  %3177 = fadd fast float %3172, %3168
  %3178 = fmul fast float %3177, 0x3F847AE140000000
  br label %3453

; <label>:3179                                    ; preds = %3027
  %3180 = and i32 %168, 1
  %3181 = icmp eq i32 %3180, 0
  br i1 %3181, label %3453, label %3182

; <label>:3182                                    ; preds = %3179
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3186 = extractvalue %dx.types.CBufRet.f32 %3185, 0
  %3187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.f32 %3187, 0
  %3189 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3190 = extractvalue %dx.types.CBufRet.f32 %3185, 1
  %3191 = extractvalue %dx.types.CBufRet.f32 %3187, 1
  %3192 = extractvalue %dx.types.CBufRet.f32 %3183, 3
  %3193 = extractvalue %dx.types.CBufRet.f32 %3185, 3
  %3194 = extractvalue %dx.types.CBufRet.f32 %3187, 3
  %3195 = fadd fast float %3192, %3098
  %3196 = fadd fast float %3193, %3099
  %3197 = fadd fast float %3194, %3100
  %3198 = fmul fast float %3195, %3184
  %3199 = call float @dx.op.tertiary.f32(i32 46, float %3196, float %3186, float %3198)  ; FMad(a,b,c)
  %3200 = call float @dx.op.tertiary.f32(i32 46, float %3197, float %3188, float %3199)  ; FMad(a,b,c)
  %3201 = fmul fast float %3195, %3189
  %3202 = call float @dx.op.tertiary.f32(i32 46, float %3196, float %3190, float %3201)  ; FMad(a,b,c)
  %3203 = call float @dx.op.tertiary.f32(i32 46, float %3197, float %3191, float %3202)  ; FMad(a,b,c)
  %3204 = fsub fast float %3200, %3192
  %3205 = fsub fast float %3203, %3193
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3209 = extractvalue %dx.types.CBufRet.f32 %3206, 2
  %3210 = extractvalue %dx.types.CBufRet.f32 %3206, 3
  %3211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.f32 %3211, 3
  %3213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.i32 %3213, 0
  %3215 = extractvalue %dx.types.CBufRet.i32 %3213, 1
  %3216 = udiv i32 %3215, %3214
  %3217 = fsub fast float %3204, %3207
  %3218 = fsub fast float %3205, %3208
  %3219 = call float @dx.op.binary.f32(i32 35, float %3217, float 0.000000e+00)  ; FMax(a,b)
  %3220 = call float @dx.op.binary.f32(i32 35, float %3218, float 0.000000e+00)  ; FMax(a,b)
  %3221 = call float @dx.op.binary.f32(i32 36, float %3219, float %3209)  ; FMin(a,b)
  %3222 = call float @dx.op.binary.f32(i32 36, float %3220, float %3210)  ; FMin(a,b)
  %3223 = add i32 %3214, -1
  %3224 = add i32 %3216, -1
  %3225 = fmul fast float %3221, %3212
  %3226 = fmul fast float %3222, %3212
  %3227 = fptoui float %3225 to i32
  %3228 = fptoui float %3226 to i32
  %3229 = call i32 @dx.op.binary.i32(i32 40, i32 %3227, i32 %3223)  ; UMin(a,b)
  %3230 = call i32 @dx.op.binary.i32(i32 40, i32 %3228, i32 %3224)  ; UMin(a,b)
  %3231 = mul i32 %3230, %3214
  %3232 = add i32 %3231, %3229
  %3233 = shl i32 %3232, 2
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = icmp eq i32 %3235, -1
  br i1 %3236, label %3453, label %3237

; <label>:3237                                    ; preds = %3182
  %3238 = mul i32 %3235, 148
  %3239 = add i32 %3238, 4
  %3240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = add i32 %3238, 8
  %3243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = add i32 %3238, 36
  %3246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.f32 %3246, 0
  %3248 = add i32 %3238, 60
  %3249 = add i32 %3238, 92
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = add i32 %3238, 116
  %3253 = fsub fast float %3204, %3241
  %3254 = fsub fast float %3205, %3244
  %3255 = fmul fast float %3212, %3253
  %3256 = fmul fast float %3212, %3254
  %3257 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3258 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3259 = fsub fast float 1.000000e+00, %3258
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 2
  %3262 = call float @dx.op.unary.f32(i32 83, float %3257)  ; DerivCoarseX(value)
  %3263 = call float @dx.op.unary.f32(i32 83, float %3259)  ; DerivCoarseX(value)
  %3264 = call float @dx.op.unary.f32(i32 84, float %3257)  ; DerivCoarseY(value)
  %3265 = call float @dx.op.unary.f32(i32 84, float %3259)  ; DerivCoarseY(value)
  %3266 = fmul fast float %3262, %3261
  %3267 = fmul fast float %3263, %3261
  %3268 = fmul fast float %3264, %3261
  %3269 = fmul fast float %3265, %3261
  %3270 = call float @dx.op.dot2.f32(i32 54, float %3268, float %3269, float %3268, float %3269)  ; Dot2(ax,ay,bx,by)
  %3271 = call float @dx.op.dot2.f32(i32 54, float %3266, float %3267, float %3266, float %3267)  ; Dot2(ax,ay,bx,by)
  %3272 = call float @dx.op.binary.f32(i32 35, float %3271, float %3270)  ; FMax(a,b)
  %3273 = call float @dx.op.unary.f32(i32 23, float %3272)  ; Log(value)
  %3274 = fmul fast float %3273, 5.000000e-01
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3277 = fadd fast float %3276, %3274
  %3278 = call float @dx.op.binary.f32(i32 35, float %3277, float 0.000000e+00)  ; FMax(a,b)
  %3279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3279, 3
  %3281 = fadd fast float %3280, %3278
  %3282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3283 = extractvalue %dx.types.CBufRet.f32 %3282, 3
  %3284 = fadd fast float %3281, %3283
  %3285 = add i32 %3251, 0
  %3286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3285, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3287 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3286, i32 0)  ; GetDimensions(handle,mipLevel)
  %3288 = extractvalue %dx.types.Dimensions %3287, 0
  %3289 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3288)  ; FirstbitLo(value)
  %3290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.i32 %3290, 1
  %3292 = sub nsw i32 %3291, %3289
  %3293 = sitofp i32 %3292 to float
  %3294 = fsub fast float %3284, %3293
  %3295 = call float @dx.op.binary.f32(i32 35, float %3294, float 0.000000e+00)  ; FMax(a,b)
  %3296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3286, %dx.types.Handle %37, float %3257, float %3259, float %3247, float undef, i32 0, i32 0, i32 undef, float %3295)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = fcmp ule float %3297, 0x3FE0101020000000
  %3299 = extractvalue %dx.types.CBufRet.i32 %3290, 0
  %3300 = and i32 %3299, 128
  %3301 = icmp ne i32 %3300, 0
  %3302 = and i1 %3298, %3301
  br i1 %3302, label %3453, label %3303

; <label>:3303                                    ; preds = %3237
  %3304 = add i32 %3238, 20
  %3305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.f32 %3305, 0
  %3307 = add i32 %3238, 24
  %3308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = add i32 %3238, 40
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = add i32 %3238, 96
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.f32 %3316, 2
  %3318 = fmul fast float %3317, %3257
  %3319 = fmul fast float %3317, %3259
  %3320 = extractvalue %dx.types.CBufRet.f32 %3316, 3
  %3321 = fadd fast float %3318, %3320
  %3322 = fadd fast float %3319, %3320
  %3323 = add i32 %3315, 0
  %3324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3323, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3325 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3324, i32 0)  ; GetDimensions(handle,mipLevel)
  %3326 = extractvalue %dx.types.Dimensions %3325, 0
  %3327 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3326)  ; FirstbitLo(value)
  %3328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.i32 %3328, 1
  %3330 = sub nsw i32 %3329, %3327
  %3331 = sitofp i32 %3330 to float
  %3332 = fsub fast float %3281, %3331
  %3333 = call float @dx.op.binary.f32(i32 35, float %3332, float 0.000000e+00)  ; FMax(a,b)
  %3334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3324, %dx.types.Handle %37, float %3321, float %3322, float %3312, float undef, i32 0, i32 0, i32 undef, float %3333)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = fmul fast float %3335, %3306
  %3337 = fadd fast float %3336, %3309
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.CBufRet.f32 %3338, 2
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 3
  %3344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3344, 3
  %3346 = extractvalue %dx.types.CBufRet.f32 %3338, 3
  %3347 = fadd fast float %3343, %3204
  %3348 = fadd fast float %3345, %3205
  %3349 = fadd fast float %3337, %3346
  %3350 = fmul fast float %3347, %3339
  %3351 = call float @dx.op.tertiary.f32(i32 46, float %3348, float %3340, float %3350)  ; FMad(a,b,c)
  %3352 = call float @dx.op.tertiary.f32(i32 46, float %3349, float %3341, float %3351)  ; FMad(a,b,c)
  %3353 = fsub fast float %3352, %3346
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3356 = fsub fast float %3353, %3355
  %3357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.i32 %3357, 0
  %3359 = call i32 @dx.op.binary.i32(i32 40, i32 %3235, i32 %3358)  ; UMin(a,b)
  %3360 = mul i32 %3359, 36
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = add i32 %3360, 4
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3366 = fmul fast float %3365, %3257
  %3367 = fmul fast float %3365, %3259
  %3368 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3369 = fadd fast float %3366, %3368
  %3370 = fadd fast float %3367, %3368
  %3371 = icmp eq i32 %3362, 0
  br i1 %3371, label %3440, label %3372

; <label>:3372                                    ; preds = %3303
  br label %3373

; <label>:3373                                    ; preds = %3430, %3372
  %3374 = phi float [ %3431, %3430 ], [ 0.000000e+00, %3372 ]
  %3375 = phi float [ %3432, %3430 ], [ 0.000000e+00, %3372 ]
  %3376 = phi float [ %3433, %3430 ], [ 0.000000e+00, %3372 ]
  %3377 = phi float [ %3434, %3430 ], [ 0.000000e+00, %3372 ]
  %3378 = phi float [ %3435, %3430 ], [ 0.000000e+00, %3372 ]
  %3379 = phi float [ %3436, %3430 ], [ 0.000000e+00, %3372 ]
  %3380 = phi i32 [ %3437, %3430 ], [ 0, %3372 ]
  %3381 = shl i32 %3380, 2
  %3382 = add i32 %3248, %3381
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = add i32 %3252, %3381
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = add i32 %3387, 0
  %3389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3388, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3390 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3389, i32 0)  ; GetDimensions(handle,mipLevel)
  %3391 = extractvalue %dx.types.Dimensions %3390, 0
  %3392 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3391)  ; FirstbitLo(value)
  %3393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3394 = extractvalue %dx.types.CBufRet.i32 %3393, 1
  %3395 = sub nsw i32 %3394, %3392
  %3396 = sitofp i32 %3395 to float
  %3397 = fsub fast float %3281, %3396
  %3398 = call float @dx.op.binary.f32(i32 35, float %3397, float 0.000000e+00)  ; FMax(a,b)
  %3399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3389, %dx.types.Handle %37, float %3369, float %3370, float %3384, float undef, i32 0, i32 0, i32 undef, float %3398)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = fcmp fast ogt float %3400, 0.000000e+00
  br i1 %3401, label %3402, label %3430

; <label>:3402                                    ; preds = %3373
  %3403 = add i32 %3363, %3381
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 32767
  %3407 = mul nuw nsw i32 %3406, 928
  %3408 = add nuw nsw i32 %3407, 48
  %3409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = add nuw nsw i32 %3407, 60
  %3414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.ResRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.ResRet.f32 %3414, 2
  %3418 = fmul fast float %3410, %3400
  %3419 = fmul fast float %3411, %3400
  %3420 = fmul fast float %3412, %3400
  %3421 = fadd fast float %3418, %3374
  %3422 = fadd fast float %3419, %3375
  %3423 = fadd fast float %3420, %3376
  %3424 = fmul fast float %3415, %3400
  %3425 = fmul fast float %3416, %3400
  %3426 = fmul fast float %3417, %3400
  %3427 = fadd fast float %3424, %3377
  %3428 = fadd fast float %3425, %3378
  %3429 = fadd fast float %3426, %3379
  br label %3430

; <label>:3430                                    ; preds = %3402, %3373
  %3431 = phi float [ %3421, %3402 ], [ %3374, %3373 ]
  %3432 = phi float [ %3422, %3402 ], [ %3375, %3373 ]
  %3433 = phi float [ %3423, %3402 ], [ %3376, %3373 ]
  %3434 = phi float [ %3427, %3402 ], [ %3377, %3373 ]
  %3435 = phi float [ %3428, %3402 ], [ %3378, %3373 ]
  %3436 = phi float [ %3429, %3402 ], [ %3379, %3373 ]
  %3437 = add nuw i32 %3380, 1
  %3438 = icmp eq i32 %3437, %3362
  br i1 %3438, label %3439, label %3373

; <label>:3439                                    ; preds = %3430
  br label %3440

; <label>:3440                                    ; preds = %3439, %3303
  %3441 = phi float [ 0.000000e+00, %3303 ], [ %3431, %3439 ]
  %3442 = phi float [ 0.000000e+00, %3303 ], [ %3432, %3439 ]
  %3443 = phi float [ 0.000000e+00, %3303 ], [ %3433, %3439 ]
  %3444 = phi float [ 0.000000e+00, %3303 ], [ %3434, %3439 ]
  %3445 = phi float [ 0.000000e+00, %3303 ], [ %3435, %3439 ]
  %3446 = phi float [ 0.000000e+00, %3303 ], [ %3436, %3439 ]
  %3447 = fadd fast float %3444, %3441
  %3448 = fmul fast float %3447, 0x3F847AE140000000
  %3449 = fadd fast float %3445, %3442
  %3450 = fmul fast float %3449, 0x3F847AE140000000
  %3451 = fadd fast float %3446, %3443
  %3452 = fmul fast float %3451, 0x3F847AE140000000
  br label %3453

; <label>:3453                                    ; preds = %3440, %3237, %3182, %3179, %3150, %3112
  %3454 = phi float [ %3164, %3150 ], [ -1.310720e+05, %3112 ], [ %3356, %3440 ], [ -1.310720e+05, %3182 ], [ -1.310720e+05, %3237 ], [ -1.310720e+05, %3179 ]
  %3455 = phi float [ %3174, %3150 ], [ 0.000000e+00, %3112 ], [ %3448, %3440 ], [ 0.000000e+00, %3182 ], [ 0.000000e+00, %3237 ], [ 0.000000e+00, %3179 ]
  %3456 = phi float [ %3176, %3150 ], [ 0.000000e+00, %3112 ], [ %3450, %3440 ], [ 0.000000e+00, %3182 ], [ 0.000000e+00, %3237 ], [ 0.000000e+00, %3179 ]
  %3457 = phi float [ %3178, %3150 ], [ 0.000000e+00, %3112 ], [ %3452, %3440 ], [ 0.000000e+00, %3182 ], [ 0.000000e+00, %3237 ], [ 0.000000e+00, %3179 ]
  %3458 = phi i1 [ true, %3150 ], [ false, %3112 ], [ true, %3440 ], [ false, %3182 ], [ false, %3237 ], [ false, %3179 ]
  %3459 = and i32 %168, 3
  %3460 = icmp eq i32 %3459, 1
  %3461 = select i1 %3460, float 1.000000e+00, float 0.000000e+00
  %3462 = fsub fast float %3454, %123
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = select i1 %3458, float %3463, float 1.000000e+00
  %3465 = fmul fast float %3464, %3461
  %3466 = icmp eq i32 %3459, 3
  %3467 = select i1 %3466, float 1.000000e+00, float %3465
  %3468 = call float @dx.op.binary.f32(i32 35, float %3028, float %3467)  ; FMax(a,b)
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fcmp fast une float %3469, 0.000000e+00
  %3471 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = call float @dx.op.unary.f32(i32 25, float %3471)  ; Rsqrt(value)
  br i1 %3470, label %3480, label %3473

; <label>:3473                                    ; preds = %3453
  %3474 = fmul fast float %3472, %121
  %3475 = fmul fast float %3472, %122
  %3476 = fmul fast float %3472, %123
  %3477 = fsub fast float -0.000000e+00, %3474
  %3478 = fsub fast float -0.000000e+00, %3475
  %3479 = fsub fast float -0.000000e+00, %3476
  br label %3648

; <label>:3480                                    ; preds = %3453
  %3481 = fmul fast float %121, %3472
  %3482 = fsub fast float -0.000000e+00, %3481
  %3483 = fmul fast float %122, %3472
  %3484 = fsub fast float -0.000000e+00, %3483
  %3485 = fmul fast float %123, %3472
  %3486 = fsub fast float -0.000000e+00, %3485
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3482, float %3484, float %3486, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = fmul fast float %3469, 2.500000e+00
  %3489 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3490 = fmul fast float %3469, 0x4013FFFFE0000000
  %3491 = fadd fast float %3490, 0xBFFFFFFFE0000000
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = fmul fast float %3469, 0x4004000020000000
  %3494 = fadd fast float %3493, 0xBFF8000040000000
  %3495 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3496 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3497 = fmul fast float %3058, 1.000000e+01
  %3498 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3499 = fmul fast float %3498, 2.000000e+00
  %3500 = fsub fast float 3.000000e+00, %3499
  %3501 = fmul fast float %3498, %3498
  %3502 = fmul fast float %3501, %3500
  %3503 = fsub fast float 1.000000e+00, %3502
  %3504 = fsub fast float 0x3FE3333340000000, %3079
  %3505 = fmul fast float %3504, 0x400AAAAAA0000000
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3507 = fmul fast float %3503, %3506
  %3508 = fmul fast float %3091, 0x3FEA2B8620000000
  %3509 = fmul fast float %3092, 0x3FEA2B8620000000
  %3510 = fmul fast float %3093, 0x3FEA2B8620000000
  %3511 = fadd fast float %3508, 0x3FC81DFBA0000000
  %3512 = fmul fast float %3511, %3091
  %3513 = fadd fast float %3512, 0x3F910E6020000000
  %3514 = fadd fast float %3509, 0x3FC81DFBA0000000
  %3515 = fmul fast float %3514, %3092
  %3516 = fadd fast float %3515, 0x3F910E6020000000
  %3517 = fadd fast float %3510, 0x3FC81DFBA0000000
  %3518 = fmul fast float %3517, %3093
  %3519 = fadd fast float %3518, 0x3F910E6020000000
  %3520 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3521 = call float @dx.op.unary.f32(i32 7, float %3516)  ; Saturate(value)
  %3522 = call float @dx.op.unary.f32(i32 7, float %3519)  ; Saturate(value)
  %3523 = fsub fast float %3520, %3091
  %3524 = fsub fast float %3521, %3092
  %3525 = fsub fast float %3522, %3093
  %3526 = fmul fast float %3523, %3496
  %3527 = fmul fast float %3526, %3507
  %3528 = fmul fast float %3524, %3496
  %3529 = fmul fast float %3528, %3507
  %3530 = fmul fast float %3525, %3496
  %3531 = fmul fast float %3530, %3507
  %3532 = fadd fast float %3527, %3091
  %3533 = fadd fast float %3529, %3092
  %3534 = fadd fast float %3531, %3093
  %3535 = fmul fast float %3039, %3039
  %3536 = fmul fast float %3535, %3535
  %3537 = fadd fast float %3492, 1.000000e+00
  %3538 = fsub fast float %3537, %3507
  %3539 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  %3540 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3542 = fsub fast float 1.000000e+00, %3536
  %3543 = call float @dx.op.binary.f32(i32 36, float %3539, float %3542)  ; FMin(a,b)
  %3544 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3545 = call float @dx.op.binary.f32(i32 35, float %3543, float %3544)  ; FMax(a,b)
  %3546 = fadd fast float %3541, 0xBFE4CCCCC0000000
  %3547 = fmul fast float %3546, 0x4006DB6DA0000000
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = fmul fast float %3548, 2.000000e+00
  %3550 = fsub fast float 3.000000e+00, %3549
  %3551 = bitcast float %3076 to i32
  %3552 = ashr i32 %3551, 1
  %3553 = add nsw i32 %3552, 532487669
  %3554 = bitcast i32 %3553 to float
  %3555 = fsub fast float 1.000000e+00, %3554
  %3556 = bitcast float %3555 to i32
  %3557 = sub nsw i32 2129859010, %3556
  %3558 = bitcast i32 %3557 to float
  %3559 = fmul fast float %3558, 2.000000e+00
  %3560 = bitcast float %3077 to i32
  %3561 = ashr i32 %3560, 1
  %3562 = add nsw i32 %3561, 532487669
  %3563 = bitcast i32 %3562 to float
  %3564 = fsub fast float 1.000000e+00, %3563
  %3565 = bitcast float %3564 to i32
  %3566 = sub nsw i32 2129859010, %3565
  %3567 = bitcast i32 %3566 to float
  %3568 = fmul fast float %3567, 2.000000e+00
  %3569 = bitcast float %3078 to i32
  %3570 = ashr i32 %3569, 1
  %3571 = add nsw i32 %3570, 532487669
  %3572 = bitcast i32 %3571 to float
  %3573 = fsub fast float 1.000000e+00, %3572
  %3574 = bitcast float %3573 to i32
  %3575 = sub nsw i32 2129859010, %3574
  %3576 = bitcast i32 %3575 to float
  %3577 = fmul fast float %3576, 2.000000e+00
  %3578 = fsub fast float 0x4002A9FBE0000000, %3559
  %3579 = fadd fast float %3559, 0x3FD54FDF00000000
  %3580 = bitcast float %3579 to i32
  %3581 = sub nsw i32 2129859010, %3580
  %3582 = bitcast i32 %3581 to float
  %3583 = fmul fast float %3582, %3578
  %3584 = fmul fast float %3583, %3583
  %3585 = fsub fast float 0x4002A9FBE0000000, %3568
  %3586 = fadd fast float %3568, 0x3FD54FDF00000000
  %3587 = bitcast float %3586 to i32
  %3588 = sub nsw i32 2129859010, %3587
  %3589 = bitcast i32 %3588 to float
  %3590 = fmul fast float %3589, %3585
  %3591 = fmul fast float %3590, %3590
  %3592 = fsub fast float 0x4002A9FBE0000000, %3577
  %3593 = fadd fast float %3577, 0x3FD54FDF00000000
  %3594 = bitcast float %3593 to i32
  %3595 = sub nsw i32 2129859010, %3594
  %3596 = bitcast i32 %3595 to float
  %3597 = fmul fast float %3596, %3592
  %3598 = fmul fast float %3597, %3597
  %3599 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3584)  ; FMax(a,b)
  %3600 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3591)  ; FMax(a,b)
  %3601 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3598)  ; FMax(a,b)
  %3602 = fsub fast float 1.000000e+00, %3487
  %3603 = fadd fast float %3602, %3503
  %3604 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  %3605 = fsub fast float 1.000000e+00, %3467
  %3606 = fmul fast float %3545, %3605
  %3607 = fmul fast float %3548, %3548
  %3608 = fmul fast float %3607, %3606
  %3609 = fmul fast float %3608, %3550
  %3610 = fmul fast float %3605, 0xBFE99999A0000000
  %3611 = fmul fast float %3610, %3496
  %3612 = fmul fast float %3611, %3507
  %3613 = fadd fast float %3612, 1.000000e+00
  %3614 = fadd fast float %3079, -1.000000e+00
  %3615 = fmul fast float %3613, %3614
  %3616 = fadd fast float %3615, 1.000000e+00
  %3617 = fsub fast float %3599, %3076
  %3618 = fsub fast float %3600, %3077
  %3619 = fsub fast float %3601, %3078
  %3620 = fmul fast float %3609, %3617
  %3621 = fmul fast float %3609, %3618
  %3622 = fmul fast float %3609, %3619
  %3623 = fadd fast float %3620, %3076
  %3624 = fadd fast float %3621, %3077
  %3625 = fadd fast float %3622, %3078
  %3626 = fsub fast float %69, %3055
  %3627 = fsub fast float %70, %3056
  %3628 = fsub fast float %71, %3057
  %3629 = fmul fast float %3609, %3626
  %3630 = fmul fast float %3609, %3627
  %3631 = fmul fast float %3609, %3628
  %3632 = fadd fast float %3629, %3055
  %3633 = fadd fast float %3630, %3056
  %3634 = fadd fast float %3631, %3057
  %3635 = fmul fast float %3609, %3604
  %3636 = call float @dx.op.unary.f32(i32 7, float %3616)  ; Saturate(value)
  %3637 = fsub fast float 1.000000e+00, %3636
  %3638 = fmul fast float %3635, %3637
  %3639 = fadd fast float %3638, %3636
  %3640 = fsub fast float 1.000000e+00, %3039
  %3641 = fmul fast float %3609, %3640
  %3642 = fadd fast float %3641, %3039
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3632, float %3633, float %3634, float %3632, float %3633, float %3634)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = call float @dx.op.unary.f32(i32 25, float %3643)  ; Rsqrt(value)
  %3645 = fmul fast float %3632, %3644
  %3646 = fmul fast float %3633, %3644
  %3647 = fmul fast float %3634, %3644
  br label %3648

; <label>:3648                                    ; preds = %3480, %3473
  %3649 = phi float [ %3479, %3473 ], [ %3486, %3480 ]
  %3650 = phi float [ %3478, %3473 ], [ %3484, %3480 ]
  %3651 = phi float [ %3477, %3473 ], [ %3482, %3480 ]
  %3652 = phi float [ %3476, %3473 ], [ %3485, %3480 ]
  %3653 = phi float [ %3475, %3473 ], [ %3483, %3480 ]
  %3654 = phi float [ %3474, %3473 ], [ %3481, %3480 ]
  %3655 = phi float [ %3076, %3473 ], [ %3623, %3480 ]
  %3656 = phi float [ %3077, %3473 ], [ %3624, %3480 ]
  %3657 = phi float [ %3078, %3473 ], [ %3625, %3480 ]
  %3658 = phi float [ %3091, %3473 ], [ %3532, %3480 ]
  %3659 = phi float [ %3092, %3473 ], [ %3533, %3480 ]
  %3660 = phi float [ %3093, %3473 ], [ %3534, %3480 ]
  %3661 = phi float [ %3055, %3473 ], [ %3645, %3480 ]
  %3662 = phi float [ %3056, %3473 ], [ %3646, %3480 ]
  %3663 = phi float [ %3057, %3473 ], [ %3647, %3480 ]
  %3664 = phi float [ %3079, %3473 ], [ %3639, %3480 ]
  %3665 = phi float [ %3039, %3473 ], [ %3642, %3480 ]
  %3666 = select i1 %192, float 0.000000e+00, float %3657
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3651, float %3650, float %3649)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3653, float %3652, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = fmul fast float %3669, 2.000000e+00
  %3671 = fmul fast float %3670, %3661
  %3672 = fmul fast float %3670, %3662
  %3673 = fmul fast float %3670, %3663
  %3674 = fsub fast float %3654, %3671
  %3675 = fsub fast float %3653, %3672
  %3676 = fsub fast float %3652, %3673
  %3677 = call float @dx.op.binary.f32(i32 36, float %3665, float 1.000000e+00)  ; FMin(a,b)
  %3678 = fsub fast float 1.000000e+00, %3665
  %3679 = bitcast float %3678 to i32
  %3680 = sub nsw i32 2129859010, %3679
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3684 = fadd fast float %3682, %121
  %3685 = fadd fast float %3683, %122
  %3686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.i32 %3686, 0
  %3688 = icmp eq i32 %3687, 1
  br i1 %3688, label %3689, label %3724

; <label>:3689                                    ; preds = %3648
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.CBufRet.f32 %3690, 1
  %3693 = fsub fast float %3684, %3691
  %3694 = fsub fast float %3685, %3692
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.CBufRet.f32 %3695, 1
  %3698 = fmul fast float %3693, %3696
  %3699 = fmul fast float %3694, %3697
  %3700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3698, float %3699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3701 = extractvalue %dx.types.ResRet.f32 %3700, 0
  %3702 = fcmp fast ogt float %3701, 0.000000e+00
  %3703 = extractvalue %dx.types.CBufRet.i32 %3686, 3
  %3704 = icmp ne i32 %3703, 0
  %3705 = and i1 %3702, %3704
  br i1 %3705, label %3706, label %3724, !dx.controlflow.hints !79

; <label>:3706                                    ; preds = %3689
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3710 = fsub fast float %3684, %3708
  %3711 = fsub fast float %3685, %3709
  %3712 = fmul fast float %3710, %3710
  %3713 = fmul fast float %3711, %3711
  %3714 = fadd fast float %3712, %3713
  %3715 = uitofp i32 %3703 to float
  %3716 = fmul fast float %3715, %3715
  %3717 = fcmp fast ogt float %3714, %3716
  br i1 %3717, label %3724, label %3718

; <label>:3718                                    ; preds = %3706
  %3719 = call float @dx.op.unary.f32(i32 24, float %3714)  ; Sqrt(value)
  %3720 = fsub fast float %3715, %3719
  %3721 = fmul fast float %3720, 0x3F75555560000000
  %3722 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3723 = call float @dx.op.binary.f32(i32 36, float %3722, float %3701)  ; FMin(a,b)
  br label %3724

; <label>:3724                                    ; preds = %3718, %3706, %3689, %3648
  %3725 = phi float [ 1.000000e+00, %3648 ], [ %3723, %3718 ], [ %3701, %3689 ], [ 0.000000e+00, %3706 ]
  %3726 = fcmp fast ogt float %3725, 0.000000e+00
  br i1 %3726, label %3727, label %3825, !dx.controlflow.hints !80

; <label>:3727                                    ; preds = %3724
  %3728 = fadd fast float %152, 5.000000e-01
  %3729 = call float @dx.op.unary.f32(i32 27, float %3728)  ; Round_ni(value)
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %150, float %151, float %3729, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.f32 %3734, 3
  %3736 = fmul fast float %3735, %3731
  %3737 = fmul fast float %3735, %3732
  %3738 = fmul fast float %3735, %3733
  %3739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %150, float %151, float %3729, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %150, float %151, float %3729, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3744 = fmul fast float %3742, 2.000000e+00
  %3745 = fmul fast float %3743, 2.000000e+00
  %3746 = fadd fast float %3744, -1.000000e+00
  %3747 = fadd fast float %3745, -1.000000e+00
  %3748 = fadd fast float %3746, %3747
  %3749 = fmul fast float %3748, 5.000000e-01
  %3750 = fsub fast float %3746, %3747
  %3751 = fmul fast float %3750, 5.000000e-01
  %3752 = call float @dx.op.unary.f32(i32 6, float %3749)  ; FAbs(value)
  %3753 = fsub fast float 1.000000e+00, %3752
  %3754 = call float @dx.op.unary.f32(i32 6, float %3751)  ; FAbs(value)
  %3755 = fsub fast float %3753, %3754
  %3756 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3755)  ; FMax(a,b)
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3751, float %3756, float %3749, float %3751, float %3756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = bitcast float %3757 to i32
  %3759 = ashr i32 %3758, 1
  %3760 = sub nsw i32 1597250115, %3759
  %3761 = bitcast i32 %3760 to float
  %3762 = fmul fast float %3761, %3749
  %3763 = fmul fast float %3761, %3751
  %3764 = fmul fast float %3761, %3756
  %3765 = fsub fast float 1.000000e+00, %3740
  %3766 = fdiv fast float %3765, %3764
  %3767 = fmul fast float %3764, %69
  %3768 = fmul fast float %3764, %70
  %3769 = fmul fast float %3764, %71
  %3770 = fmul fast float %3762, %72
  %3771 = fmul fast float %3762, %73
  %3772 = fmul fast float %3762, %74
  %3773 = fadd fast float %3767, %3770
  %3774 = fadd fast float %3768, %3771
  %3775 = fadd fast float %3769, %3772
  %3776 = fmul fast float %3763, %85
  %3777 = fmul fast float %3763, %86
  %3778 = fmul fast float %3763, %87
  %3779 = fadd fast float %3773, %3776
  %3780 = fadd fast float %3774, %3777
  %3781 = fadd fast float %3775, %3778
  %3782 = call float @dx.op.dot3.f32(i32 55, float %3779, float %3780, float %3781, float %3779, float %3780, float %3781)  ; Dot3(ax,ay,az,bx,by,bz)
  %3783 = call float @dx.op.unary.f32(i32 25, float %3782)  ; Rsqrt(value)
  %3784 = fmul fast float %3779, %3783
  %3785 = fmul fast float %3780, %3783
  %3786 = fmul fast float %3781, %3783
  %3787 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3789 = fmul fast float %3788, 5.000000e-01
  %3790 = fadd fast float %3789, 5.000000e-01
  %3791 = fmul fast float %3790, %3740
  %3792 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3784, float %3785, float %3786)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = fmul fast float %3793, %3766
  %3795 = fadd fast float %3791, %3794
  %3796 = fsub fast float 5.000000e-01, %3789
  %3797 = fmul fast float %3796, %3658
  %3798 = fmul fast float %3796, %3659
  %3799 = fmul fast float %3796, %3660
  %3800 = fadd fast float %3795, %3797
  %3801 = fmul fast float %3800, %3736
  %3802 = fadd fast float %3795, %3798
  %3803 = fmul fast float %3802, %3737
  %3804 = fadd fast float %3795, %3799
  %3805 = fmul fast float %3804, %3738
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3674, float %3675, float %3676, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fmul fast float %3807, 5.000000e-01
  %3809 = fadd fast float %3808, 5.000000e-01
  %3810 = fmul fast float %3809, %3740
  %3811 = call float @dx.op.dot3.f32(i32 55, float %3674, float %3675, float %3676, float %3784, float %3785, float %3786)  ; Dot3(ax,ay,az,bx,by,bz)
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = fmul fast float %3812, %3766
  %3814 = fadd fast float %3810, %3813
  %3815 = fsub fast float 5.000000e-01, %3808
  %3816 = fmul fast float %3815, %3658
  %3817 = fmul fast float %3815, %3659
  %3818 = fmul fast float %3815, %3660
  %3819 = fadd fast float %3814, %3816
  %3820 = fmul fast float %3819, %3736
  %3821 = fadd fast float %3814, %3817
  %3822 = fmul fast float %3821, %3737
  %3823 = fadd fast float %3814, %3818
  %3824 = fmul fast float %3823, %3738
  br label %3825

; <label>:3825                                    ; preds = %3727, %3724
  %3826 = phi float [ %3820, %3727 ], [ 0.000000e+00, %3724 ]
  %3827 = phi float [ %3822, %3727 ], [ 0.000000e+00, %3724 ]
  %3828 = phi float [ %3824, %3727 ], [ 0.000000e+00, %3724 ]
  %3829 = phi float [ %3801, %3727 ], [ 0.000000e+00, %3724 ]
  %3830 = phi float [ %3803, %3727 ], [ 0.000000e+00, %3724 ]
  %3831 = phi float [ %3805, %3727 ], [ 0.000000e+00, %3724 ]
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = fcmp fast ogt float %3833, 0.000000e+00
  %3835 = and i1 %3726, %3834
  br i1 %3835, label %3836, label %4040, !dx.controlflow.hints !81

; <label>:3836                                    ; preds = %3825
  %3837 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3838 = fadd fast float %3837, %123
  %3839 = fmul fast float %3661, 3.200000e+01
  %3840 = fmul fast float %3662, 3.200000e+01
  %3841 = fadd fast float %3684, %3839
  %3842 = fadd fast float %3685, %3840
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.CBufRet.f32 %3843, 1
  %3846 = fsub fast float %3841, %3844
  %3847 = fsub fast float %3842, %3845
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.CBufRet.f32 %3848, 1
  %3851 = fmul fast float %3846, %3849
  %3852 = fmul fast float %3847, %3850
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.CBufRet.f32 %3853, 1
  %3856 = fsub fast float %3684, %3854
  %3857 = fsub fast float %3685, %3855
  %3858 = fmul fast float %3856, %3856
  %3859 = fmul fast float %3857, %3857
  %3860 = fadd fast float %3858, %3859
  %3861 = call float @dx.op.unary.f32(i32 24, float %3860)  ; Sqrt(value)
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.CBufRet.f32 %3862, 1
  %3865 = fsub fast float %3861, %3863
  %3866 = fdiv fast float %3865, %3864
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = fmul fast float %3867, 2.000000e+00
  %3869 = fsub fast float 3.000000e+00, %3868
  %3870 = fmul fast float %3867, %3867
  %3871 = fmul fast float %3870, %3869
  %3872 = fcmp fast oge float %3851, 0.000000e+00
  %3873 = fcmp fast ole float %3851, 1.000000e+00
  %3874 = and i1 %3873, %3872
  %3875 = fcmp fast oge float %3852, 0.000000e+00
  %3876 = and i1 %3875, %3874
  %3877 = fcmp fast ole float %3852, 1.000000e+00
  %3878 = and i1 %3877, %3876
  %3879 = fcmp fast ogt float %3871, 0.000000e+00
  %3880 = and i1 %3879, %3878
  br i1 %3880, label %3881, label %4004, !dx.controlflow.hints !82

; <label>:3881                                    ; preds = %3836
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 2
  %3884 = extractvalue %dx.types.CBufRet.f32 %3882, 3
  %3885 = fmul fast float %3883, %3851
  %3886 = fmul fast float %3884, %3852
  %3887 = call float @dx.op.unary.f32(i32 27, float %3885)  ; Round_ni(value)
  %3888 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3889 = fptosi float %3887 to i32
  %3890 = fptosi float %3888 to i32
  %3891 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3889, i32 %3890, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = lshr i32 %3892, 16
  %3894 = icmp eq i32 %3893, 65535
  br i1 %3894, label %4004, label %3895

; <label>:3895                                    ; preds = %3881
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = fmul fast float %3897, %3851
  %3899 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3900 = fadd fast float %3898, %3899
  %3901 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3902 = fmul fast float %3901, %3852
  %3903 = extractvalue %dx.types.CBufRet.f32 %3896, 3
  %3904 = fadd fast float %3902, %3903
  %3905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3900, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3910 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3911 = fsub fast float %3909, %3910
  %3912 = fmul fast float %3911, %3906
  %3913 = fadd fast float %3912, %3910
  %3914 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3915 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3916 = fsub fast float %3914, %3915
  %3917 = fmul fast float %3916, %3907
  %3918 = fadd fast float %3917, %3915
  %3919 = fsub fast float %3838, %3913
  %3920 = fsub fast float %3918, %3913
  %3921 = fdiv fast float %3919, %3920
  %3922 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3924 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3925 = extractvalue %dx.types.CBufRet.f32 %3882, 1
  %3926 = fmul fast float %3924, %3851
  %3927 = fmul fast float %3925, %3852
  %3928 = fmul fast float %3926, 1.250000e-01
  %3929 = fmul fast float %3927, 1.250000e-01
  %3930 = call float @dx.op.unary.f32(i32 27, float %3928)  ; Round_ni(value)
  %3931 = call float @dx.op.unary.f32(i32 27, float %3929)  ; Round_ni(value)
  %3932 = fmul fast float %3930, 8.000000e+00
  %3933 = fmul fast float %3931, 8.000000e+00
  %3934 = fsub fast float %3926, %3932
  %3935 = fsub fast float %3927, %3933
  %3936 = fadd fast float %3934, 5.000000e-01
  %3937 = fadd fast float %3935, 5.000000e-01
  %3938 = and i32 %3893, 255
  %3939 = lshr i32 %3892, 24
  %3940 = mul nuw nsw i32 %3938, 9
  %3941 = uitofp i32 %3940 to float
  %3942 = mul nuw nsw i32 %3939, 9
  %3943 = uitofp i32 %3942 to float
  %3944 = fadd fast float %3936, %3941
  %3945 = fadd fast float %3937, %3943
  %3946 = fdiv fast float %3944, %3833
  %3947 = fdiv fast float %3945, %3923
  %3948 = fmul fast float %3922, 4.375000e-01
  %3949 = fadd fast float %3948, 3.125000e-02
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3946, float %3947, float %3949, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3954 = fadd fast float %3948, 5.312500e-01
  %3955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3946, float %3947, float %3954, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.ResRet.f32 %3955, 1
  %3958 = extractvalue %dx.types.ResRet.f32 %3955, 2
  %3959 = fmul fast float %3956, 2.000000e+00
  %3960 = fmul fast float %3957, 2.000000e+00
  %3961 = fmul fast float %3958, 2.000000e+00
  %3962 = fadd fast float %3959, -1.000000e+00
  %3963 = fadd fast float %3960, -1.000000e+00
  %3964 = fadd fast float %3961, -1.000000e+00
  %3965 = fmul fast float %3962, %3962
  %3966 = fmul fast float %3963, %3963
  %3967 = fadd fast float %3965, %3966
  %3968 = fmul fast float %3964, %3964
  %3969 = fadd fast float %3967, %3968
  %3970 = call float @dx.op.unary.f32(i32 24, float %3969)  ; Sqrt(value)
  %3971 = fcmp fast ogt float %3970, 0.000000e+00
  br i1 %3971, label %3972, label %3976

; <label>:3972                                    ; preds = %3895
  %3973 = fdiv fast float %3962, %3970
  %3974 = fdiv fast float %3963, %3970
  %3975 = fdiv fast float %3964, %3970
  br label %3976

; <label>:3976                                    ; preds = %3972, %3895
  %3977 = phi float [ %3973, %3972 ], [ 0.000000e+00, %3895 ]
  %3978 = phi float [ %3974, %3972 ], [ 0.000000e+00, %3895 ]
  %3979 = phi float [ %3975, %3972 ], [ 0.000000e+00, %3895 ]
  %3980 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3978, float %3979, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3980)  ; FMax(a,b)
  %3982 = fmul fast float %3981, 0x400C5BF8A0000000
  %3983 = fmul fast float %3951, %3871
  %3984 = fmul fast float %3983, %3982
  %3985 = fmul fast float %3952, %3871
  %3986 = fmul fast float %3985, %3982
  %3987 = fmul fast float %3953, %3871
  %3988 = fmul fast float %3987, %3982
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 3
  %3991 = fmul fast float %3984, %3990
  %3992 = fmul fast float %3986, %3990
  %3993 = fmul fast float %3988, %3990
  %3994 = fcmp fast ogt float %3838, %3918
  br i1 %3994, label %3995, label %4004

; <label>:3995                                    ; preds = %3976
  %3996 = fmul fast float %3920, 0x3FC24924A0000000
  %3997 = fsub fast float %3838, %3918
  %3998 = fdiv fast float %3997, %3996
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = fsub fast float 1.000000e+00, %3999
  %4001 = fmul fast float %4000, %3991
  %4002 = fmul fast float %4000, %3992
  %4003 = fmul fast float %4000, %3993
  br label %4004

; <label>:4004                                    ; preds = %3995, %3976, %3881, %3836
  %4005 = phi float [ %4003, %3995 ], [ %3993, %3976 ], [ 0.000000e+00, %3881 ], [ 0.000000e+00, %3836 ]
  %4006 = phi float [ %4002, %3995 ], [ %3992, %3976 ], [ 0.000000e+00, %3881 ], [ 0.000000e+00, %3836 ]
  %4007 = phi float [ %4001, %3995 ], [ %3991, %3976 ], [ 0.000000e+00, %3881 ], [ 0.000000e+00, %3836 ]
  %4008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4007)  ; FMax(a,b)
  %4009 = fmul fast float %4008, 0x3FD20DD760000000
  %4010 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4011 = fmul fast float %4010, 0x3FDF454380000000
  %4012 = fmul fast float %4010, %4010
  %4013 = fmul fast float %4012, 0x3FEE471020000000
  %4014 = fadd fast float %4013, 0xBFD42F6020000000
  %4015 = call float @dx.op.dot3.f32(i32 55, float %4008, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4011, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4006)  ; FMax(a,b)
  %4017 = fmul fast float %4016, 0x3FD20DD760000000
  %4018 = call float @dx.op.dot3.f32(i32 55, float %4016, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4011, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4019 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4005)  ; FMax(a,b)
  %4020 = fmul fast float %4019, 0x3FD20DD760000000
  %4021 = call float @dx.op.dot3.f32(i32 55, float %4019, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4011, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = call float @dx.op.binary.f32(i32 35, float %4009, float 0.000000e+00)  ; FMax(a,b)
  %4023 = call float @dx.op.binary.f32(i32 35, float %4017, float 0.000000e+00)  ; FMax(a,b)
  %4024 = call float @dx.op.binary.f32(i32 35, float %4020, float 0.000000e+00)  ; FMax(a,b)
  %4025 = call float @dx.op.binary.f32(i32 35, float %4015, float 0.000000e+00)  ; FMax(a,b)
  %4026 = call float @dx.op.binary.f32(i32 35, float %4018, float 0.000000e+00)  ; FMax(a,b)
  %4027 = call float @dx.op.binary.f32(i32 35, float %4021, float 0.000000e+00)  ; FMax(a,b)
  %4028 = fmul fast float %4022, %3725
  %4029 = fmul fast float %4023, %3725
  %4030 = fmul fast float %4024, %3725
  %4031 = fadd fast float %4028, %3829
  %4032 = fadd fast float %4029, %3830
  %4033 = fadd fast float %4030, %3831
  %4034 = fmul fast float %4025, %3725
  %4035 = fmul fast float %4026, %3725
  %4036 = fmul fast float %4027, %3725
  %4037 = fadd fast float %4034, %3826
  %4038 = fadd fast float %4035, %3827
  %4039 = fadd fast float %4036, %3828
  br label %4040

; <label>:4040                                    ; preds = %4004, %3825
  %4041 = phi float [ %4037, %4004 ], [ %3826, %3825 ]
  %4042 = phi float [ %4038, %4004 ], [ %3827, %3825 ]
  %4043 = phi float [ %4039, %4004 ], [ %3828, %3825 ]
  %4044 = phi float [ %4031, %4004 ], [ %3829, %3825 ]
  %4045 = phi float [ %4032, %4004 ], [ %3830, %3825 ]
  %4046 = phi float [ %4033, %4004 ], [ %3831, %3825 ]
  %4047 = fcmp fast olt float %3725, 1.000000e+00
  br i1 %4047, label %4048, label %4866, !dx.controlflow.hints !83

; <label>:4048                                    ; preds = %4040
  %4049 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %4050 = fadd fast float %4049, %123
  %4051 = fmul fast float %3661, 3.200000e+01
  %4052 = fmul fast float %3662, 3.200000e+01
  %4053 = fadd fast float %3684, %4051
  %4054 = fadd fast float %3685, %4052
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4058 = fsub fast float %4053, %4056
  %4059 = fsub fast float %4054, %4057
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = fmul fast float %4058, %4061
  %4064 = fmul fast float %4059, %4062
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = fmul fast float %4063, %4066
  %4068 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4069 = fadd fast float %4067, %4068
  %4070 = extractvalue %dx.types.CBufRet.f32 %4065, 2
  %4071 = fmul fast float %4070, %4064
  %4072 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4073 = fadd fast float %4071, %4072
  %4074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4069, float %4073, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4079 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4080 = fsub fast float %4078, %4079
  %4081 = fmul fast float %4080, %4075
  %4082 = fadd fast float %4081, %4079
  %4083 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4084 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4085 = fsub fast float %4083, %4084
  %4086 = fmul fast float %4085, %4076
  %4087 = fadd fast float %4086, %4084
  %4088 = fsub fast float %4050, %4082
  %4089 = fsub fast float %4087, %4082
  %4090 = fdiv fast float %4088, %4089
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = fmul fast float %4093, %4091
  %4095 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4096 = fadd fast float %4094, %4095
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4069, float %4073, float %4096, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.ResRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.ResRet.f32 %4097, 2
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.CBufRet.f32 %4101, 2
  %4105 = fmul fast float %4102, %4098
  %4106 = fmul fast float %4103, %4099
  %4107 = fmul fast float %4104, %4100
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4108, 2
  %4112 = fadd fast float %4105, %4109
  %4113 = fadd fast float %4106, %4110
  %4114 = fadd fast float %4107, %4111
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 0
  %4117 = fmul fast float %4116, %4063
  %4118 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4119 = fadd fast float %4117, %4118
  %4120 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4121 = fmul fast float %4120, %4064
  %4122 = extractvalue %dx.types.CBufRet.f32 %4115, 3
  %4123 = fadd fast float %4121, %4122
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4128 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4133 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4119, float %4123, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4119, float %4123, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = fmul fast float %4135, %4112
  %4145 = fmul fast float %4140, %4112
  %4146 = fmul fast float %4142, %4112
  %4147 = fmul fast float %4138, %4112
  %4148 = fadd fast float %4144, %4125
  %4149 = fadd fast float %4145, %4126
  %4150 = fadd fast float %4146, %4127
  %4151 = fadd fast float %4147, %4128
  %4152 = fmul fast float %4136, %4112
  %4153 = fmul fast float %4141, %4112
  %4154 = fadd fast float %4152, %4130
  %4155 = fadd fast float %4153, %4131
  %4156 = fmul fast float %4137, %4112
  %4157 = fmul fast float %4143, %4112
  %4158 = fadd fast float %4156, %4132
  %4159 = fadd fast float %4157, %4133
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4119, float %4123, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = extractvalue %dx.types.ResRet.f32 %4160, 3
  %4165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4119, float %4123, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.ResRet.f32 %4165, 1
  %4168 = extractvalue %dx.types.ResRet.f32 %4165, 2
  %4169 = extractvalue %dx.types.ResRet.f32 %4165, 3
  %4170 = fmul fast float %4161, %4113
  %4171 = fmul fast float %4166, %4113
  %4172 = fmul fast float %4168, %4113
  %4173 = fmul fast float %4164, %4113
  %4174 = fadd fast float %4148, %4170
  %4175 = fadd fast float %4149, %4171
  %4176 = fadd fast float %4150, %4172
  %4177 = fadd fast float %4151, %4173
  %4178 = fmul fast float %4162, %4113
  %4179 = fmul fast float %4167, %4113
  %4180 = fadd fast float %4154, %4178
  %4181 = fadd fast float %4155, %4179
  %4182 = fmul fast float %4163, %4113
  %4183 = fmul fast float %4169, %4113
  %4184 = fadd fast float %4158, %4182
  %4185 = fadd fast float %4159, %4183
  %4186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4119, float %4123, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = extractvalue %dx.types.ResRet.f32 %4186, 3
  %4191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4119, float %4123, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4195 = extractvalue %dx.types.ResRet.f32 %4191, 3
  %4196 = fmul fast float %4187, %4114
  %4197 = fmul fast float %4192, %4114
  %4198 = fmul fast float %4194, %4114
  %4199 = fmul fast float %4190, %4114
  %4200 = fadd fast float %4174, %4196
  %4201 = fadd fast float %4175, %4197
  %4202 = fadd fast float %4176, %4198
  %4203 = fadd fast float %4177, %4199
  %4204 = fmul fast float %4188, %4114
  %4205 = fmul fast float %4193, %4114
  %4206 = fadd fast float %4180, %4204
  %4207 = fadd fast float %4181, %4205
  %4208 = fmul fast float %4189, %4114
  %4209 = fmul fast float %4195, %4114
  %4210 = fadd fast float %4184, %4208
  %4211 = fadd fast float %4185, %4209
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = fsub fast float %3684, %4213
  %4215 = fsub fast float %4056, %3684
  %4216 = call float @dx.op.binary.f32(i32 35, float %4215, float %4214)  ; FMax(a,b)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4218 = fsub fast float %3685, %4217
  %4219 = fsub fast float %4057, %3685
  %4220 = call float @dx.op.binary.f32(i32 35, float %4219, float %4218)  ; FMax(a,b)
  %4221 = call float @dx.op.binary.f32(i32 35, float %4216, float %4220)  ; FMax(a,b)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4223 = fmul fast float %4222, %4221
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4228 = extractvalue %dx.types.CBufRet.f32 %4225, 2
  %4229 = extractvalue %dx.types.CBufRet.f32 %4225, 3
  %4230 = fsub fast float %4226, %4200
  %4231 = fsub fast float %4227, %4201
  %4232 = fsub fast float %4228, %4202
  %4233 = fsub fast float %4229, %4203
  %4234 = fmul fast float %4230, %4224
  %4235 = fmul fast float %4231, %4224
  %4236 = fmul fast float %4232, %4224
  %4237 = fmul fast float %4233, %4224
  %4238 = fadd fast float %4234, %4200
  %4239 = fadd fast float %4235, %4201
  %4240 = fadd fast float %4236, %4202
  %4241 = fadd fast float %4237, %4203
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4245 = fsub fast float %4243, %4206
  %4246 = fsub fast float %4244, %4207
  %4247 = fmul fast float %4245, %4224
  %4248 = fmul fast float %4246, %4224
  %4249 = fadd fast float %4247, %4206
  %4250 = fadd fast float %4248, %4207
  %4251 = extractvalue %dx.types.CBufRet.f32 %4242, 2
  %4252 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4253 = fsub fast float %4251, %4210
  %4254 = fsub fast float %4252, %4211
  %4255 = fmul fast float %4253, %4224
  %4256 = fmul fast float %4254, %4224
  %4257 = fadd fast float %4255, %4210
  %4258 = fadd fast float %4256, %4211
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 0
  %4261 = fmul fast float %4260, %4238
  %4262 = fmul fast float %4260, %4239
  %4263 = fmul fast float %4260, %4240
  %4264 = fmul fast float %4260, %4241
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 0
  %4267 = fmul fast float %4266, %4249
  %4268 = fmul fast float %4266, %4250
  %4269 = fadd fast float %4267, %4261
  %4270 = fadd fast float %4268, %4263
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4273 = fmul fast float %4272, %4257
  %4274 = fmul fast float %4272, %4258
  %4275 = fadd fast float %4269, %4273
  %4276 = fadd fast float %4270, %4274
  %4277 = extractvalue %dx.types.CBufRet.f32 %4259, 1
  %4278 = fmul fast float %4277, %4238
  %4279 = fmul fast float %4277, %4239
  %4280 = fmul fast float %4277, %4240
  %4281 = fmul fast float %4277, %4241
  %4282 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4283 = fmul fast float %4282, %4249
  %4284 = fmul fast float %4282, %4250
  %4285 = fadd fast float %4283, %4278
  %4286 = fadd fast float %4284, %4280
  %4287 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4288 = fmul fast float %4287, %4257
  %4289 = fmul fast float %4287, %4258
  %4290 = fadd fast float %4285, %4288
  %4291 = fadd fast float %4286, %4289
  %4292 = extractvalue %dx.types.CBufRet.f32 %4259, 2
  %4293 = fmul fast float %4292, %4238
  %4294 = fmul fast float %4292, %4239
  %4295 = fmul fast float %4292, %4240
  %4296 = fmul fast float %4292, %4241
  %4297 = extractvalue %dx.types.CBufRet.f32 %4265, 2
  %4298 = fmul fast float %4297, %4249
  %4299 = fmul fast float %4297, %4250
  %4300 = fadd fast float %4298, %4293
  %4301 = fadd fast float %4299, %4295
  %4302 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4303 = fmul fast float %4302, %4257
  %4304 = fmul fast float %4302, %4258
  %4305 = fadd fast float %4300, %4303
  %4306 = fadd fast float %4301, %4304
  %4307 = fmul fast float %4294, %4294
  %4308 = fmul fast float %4306, %4306
  %4309 = fmul fast float %4296, %4296
  %4310 = fadd fast float %4309, %4307
  %4311 = fadd fast float %4310, %4308
  %4312 = call float @dx.op.unary.f32(i32 24, float %4311)  ; Sqrt(value)
  %4313 = fcmp fast ugt float %4312, 0.000000e+00
  br i1 %4313, label %4314, label %4329

; <label>:4314                                    ; preds = %4048
  %4315 = fsub fast float -0.000000e+00, %4296
  %4316 = fdiv fast float %4315, %4312
  %4317 = fsub fast float -0.000000e+00, %4294
  %4318 = fdiv fast float %4317, %4312
  %4319 = fdiv fast float %4306, %4312
  %4320 = fmul fast float %4305, 0x3FE279A760000000
  %4321 = fmul fast float %4318, %4294
  %4322 = fmul fast float %4319, %4306
  %4323 = fmul fast float %4316, %4296
  %4324 = fadd fast float %4321, %4323
  %4325 = fsub fast float %4324, %4322
  %4326 = call float @dx.op.unary.f32(i32 6, float %4325)  ; FAbs(value)
  %4327 = fadd fast float %4326, 0x3DDB7CDFE0000000
  %4328 = fdiv fast float %4320, %4327
  br label %4329

; <label>:4329                                    ; preds = %4314, %4048
  %4330 = phi float [ %4328, %4314 ], [ 1.000000e+00, %4048 ]
  %4331 = fmul fast float %4279, %4279
  %4332 = fmul fast float %4291, %4291
  %4333 = fmul fast float %4281, %4281
  %4334 = fadd fast float %4333, %4331
  %4335 = fadd fast float %4334, %4332
  %4336 = call float @dx.op.unary.f32(i32 24, float %4335)  ; Sqrt(value)
  %4337 = fcmp fast ugt float %4336, 0.000000e+00
  br i1 %4337, label %4338, label %4353

; <label>:4338                                    ; preds = %4329
  %4339 = fsub fast float -0.000000e+00, %4281
  %4340 = fdiv fast float %4339, %4336
  %4341 = fsub fast float -0.000000e+00, %4279
  %4342 = fdiv fast float %4341, %4336
  %4343 = fdiv fast float %4291, %4336
  %4344 = fmul fast float %4290, 0x3FE279A760000000
  %4345 = fmul fast float %4342, %4279
  %4346 = fmul fast float %4343, %4291
  %4347 = fmul fast float %4340, %4281
  %4348 = fadd fast float %4345, %4347
  %4349 = fsub fast float %4348, %4346
  %4350 = call float @dx.op.unary.f32(i32 6, float %4349)  ; FAbs(value)
  %4351 = fadd fast float %4350, 0x3DDB7CDFE0000000
  %4352 = fdiv fast float %4344, %4351
  br label %4353

; <label>:4353                                    ; preds = %4338, %4329
  %4354 = phi float [ %4352, %4338 ], [ 1.000000e+00, %4329 ]
  %4355 = call float @dx.op.binary.f32(i32 36, float %4354, float %4330)  ; FMin(a,b)
  %4356 = fmul fast float %4262, %4262
  %4357 = fmul fast float %4276, %4276
  %4358 = fmul fast float %4264, %4264
  %4359 = fadd fast float %4358, %4356
  %4360 = fadd fast float %4359, %4357
  %4361 = call float @dx.op.unary.f32(i32 24, float %4360)  ; Sqrt(value)
  %4362 = fcmp fast ugt float %4361, 0.000000e+00
  br i1 %4362, label %4363, label %4378

; <label>:4363                                    ; preds = %4353
  %4364 = fsub fast float -0.000000e+00, %4264
  %4365 = fdiv fast float %4364, %4361
  %4366 = fsub fast float -0.000000e+00, %4262
  %4367 = fdiv fast float %4366, %4361
  %4368 = fdiv fast float %4276, %4361
  %4369 = fmul fast float %4275, 0x3FE279A760000000
  %4370 = fmul fast float %4367, %4262
  %4371 = fmul fast float %4368, %4276
  %4372 = fmul fast float %4365, %4264
  %4373 = fadd fast float %4370, %4372
  %4374 = fsub fast float %4373, %4371
  %4375 = call float @dx.op.unary.f32(i32 6, float %4374)  ; FAbs(value)
  %4376 = fadd fast float %4375, 0x3DDB7CDFE0000000
  %4377 = fdiv fast float %4369, %4376
  br label %4378

; <label>:4378                                    ; preds = %4363, %4353
  %4379 = phi float [ %4377, %4363 ], [ 1.000000e+00, %4353 ]
  %4380 = call float @dx.op.binary.f32(i32 36, float %4379, float %4355)  ; FMin(a,b)
  %4381 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4382 = fcmp fast olt float %4381, 1.000000e+00
  br i1 %4382, label %4383, label %4393

; <label>:4383                                    ; preds = %4378
  %4384 = fmul fast float %4381, %4262
  %4385 = fmul fast float %4381, %4276
  %4386 = fmul fast float %4381, %4264
  %4387 = fmul fast float %4381, %4279
  %4388 = fmul fast float %4381, %4291
  %4389 = fmul fast float %4381, %4281
  %4390 = fmul fast float %4381, %4294
  %4391 = fmul fast float %4381, %4306
  %4392 = fmul fast float %4381, %4296
  br label %4393

; <label>:4393                                    ; preds = %4383, %4378
  %4394 = phi float [ %4390, %4383 ], [ %4294, %4378 ]
  %4395 = phi float [ %4391, %4383 ], [ %4306, %4378 ]
  %4396 = phi float [ %4392, %4383 ], [ %4296, %4378 ]
  %4397 = phi float [ %4387, %4383 ], [ %4279, %4378 ]
  %4398 = phi float [ %4388, %4383 ], [ %4291, %4378 ]
  %4399 = phi float [ %4389, %4383 ], [ %4281, %4378 ]
  %4400 = phi float [ %4384, %4383 ], [ %4262, %4378 ]
  %4401 = phi float [ %4385, %4383 ], [ %4276, %4378 ]
  %4402 = phi float [ %4386, %4383 ], [ %4264, %4378 ]
  %4403 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4275)  ; FMax(a,b)
  %4404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4290)  ; FMax(a,b)
  %4405 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4305)  ; FMax(a,b)
  %4406 = fcmp fast oge float %4063, 0.000000e+00
  %4407 = and i1 %4406, %3834
  %4408 = fcmp fast ole float %4063, 1.000000e+00
  %4409 = and i1 %4408, %4407
  %4410 = fcmp fast oge float %4064, 0.000000e+00
  %4411 = and i1 %4410, %4409
  %4412 = fcmp fast ole float %4064, 1.000000e+00
  %4413 = and i1 %4412, %4411
  br i1 %4413, label %4414, label %4559, !dx.controlflow.hints !84

; <label>:4414                                    ; preds = %4393
  %4415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.f32 %4415, 2
  %4417 = extractvalue %dx.types.CBufRet.f32 %4415, 3
  %4418 = fmul fast float %4416, %4063
  %4419 = fmul fast float %4417, %4064
  %4420 = call float @dx.op.unary.f32(i32 27, float %4418)  ; Round_ni(value)
  %4421 = call float @dx.op.unary.f32(i32 27, float %4419)  ; Round_ni(value)
  %4422 = fptosi float %4420 to i32
  %4423 = fptosi float %4421 to i32
  %4424 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4422, i32 %4423, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4425 = extractvalue %dx.types.ResRet.i32 %4424, 0
  %4426 = and i32 %4425, 65535
  %4427 = lshr i32 %4425, 16
  %4428 = icmp eq i32 %4426, 65535
  br i1 %4428, label %4465, label %4429

; <label>:4429                                    ; preds = %4414
  %4430 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %4431 = extractvalue %dx.types.CBufRet.f32 %4415, 0
  %4432 = extractvalue %dx.types.CBufRet.f32 %4415, 1
  %4433 = fmul fast float %4431, %4063
  %4434 = fmul fast float %4432, %4064
  %4435 = fmul fast float %4433, 1.250000e-01
  %4436 = fmul fast float %4434, 1.250000e-01
  %4437 = call float @dx.op.unary.f32(i32 27, float %4435)  ; Round_ni(value)
  %4438 = call float @dx.op.unary.f32(i32 27, float %4436)  ; Round_ni(value)
  %4439 = fmul fast float %4437, 8.000000e+00
  %4440 = fmul fast float %4438, 8.000000e+00
  %4441 = and i32 %4425, 255
  %4442 = lshr i32 %4425, 8
  %4443 = and i32 %4442, 255
  %4444 = mul nuw nsw i32 %4441, 9
  %4445 = uitofp i32 %4444 to float
  %4446 = mul nuw nsw i32 %4443, 9
  %4447 = uitofp i32 %4446 to float
  %4448 = fadd fast float %4445, 5.000000e-01
  %4449 = fadd fast float %4448, %4433
  %4450 = fsub fast float %4449, %4439
  %4451 = fadd fast float %4447, 5.000000e-01
  %4452 = fadd fast float %4451, %4434
  %4453 = fsub fast float %4452, %4440
  %4454 = fdiv fast float %4450, %3833
  %4455 = fdiv fast float %4453, %4430
  %4456 = fmul fast float %4091, 4.375000e-01
  %4457 = fadd fast float %4456, 3.125000e-02
  %4458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4454, float %4455, float %4457, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.ResRet.f32 %4458, 2
  %4462 = fadd fast float %4459, %4403
  %4463 = fadd fast float %4460, %4404
  %4464 = fadd fast float %4461, %4405
  br label %4465

; <label>:4465                                    ; preds = %4429, %4414
  %4466 = phi float [ %4464, %4429 ], [ %4405, %4414 ]
  %4467 = phi float [ %4463, %4429 ], [ %4404, %4414 ]
  %4468 = phi float [ %4462, %4429 ], [ %4403, %4414 ]
  %4469 = icmp eq i32 %4427, 65535
  br i1 %4469, label %4559, label %4470

; <label>:4470                                    ; preds = %4465
  %4471 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4415, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4415, 1
  %4474 = fmul fast float %4472, %4063
  %4475 = fmul fast float %4473, %4064
  %4476 = fmul fast float %4474, 1.250000e-01
  %4477 = fmul fast float %4475, 1.250000e-01
  %4478 = call float @dx.op.unary.f32(i32 27, float %4476)  ; Round_ni(value)
  %4479 = call float @dx.op.unary.f32(i32 27, float %4477)  ; Round_ni(value)
  %4480 = fmul fast float %4478, 8.000000e+00
  %4481 = fmul fast float %4479, 8.000000e+00
  %4482 = fsub fast float %4474, %4480
  %4483 = fsub fast float %4475, %4481
  %4484 = fadd fast float %4482, 5.000000e-01
  %4485 = fadd fast float %4483, 5.000000e-01
  %4486 = and i32 %4427, 255
  %4487 = lshr i32 %4425, 24
  %4488 = mul nuw nsw i32 %4486, 9
  %4489 = uitofp i32 %4488 to float
  %4490 = mul nuw nsw i32 %4487, 9
  %4491 = uitofp i32 %4490 to float
  %4492 = fadd fast float %4484, %4489
  %4493 = fadd fast float %4485, %4491
  %4494 = fdiv fast float %4492, %3833
  %4495 = fdiv fast float %4493, %4471
  %4496 = fmul fast float %4091, 4.375000e-01
  %4497 = fadd fast float %4496, 3.125000e-02
  %4498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4494, float %4495, float %4497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.ResRet.f32 %4498, 1
  %4501 = extractvalue %dx.types.ResRet.f32 %4498, 2
  %4502 = fadd fast float %4496, 5.312500e-01
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4494, float %4495, float %4502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4507 = fmul fast float %4504, 2.000000e+00
  %4508 = fmul fast float %4505, 2.000000e+00
  %4509 = fmul fast float %4506, 2.000000e+00
  %4510 = fadd fast float %4507, -1.000000e+00
  %4511 = fadd fast float %4508, -1.000000e+00
  %4512 = fadd fast float %4509, -1.000000e+00
  %4513 = fmul fast float %4510, %4510
  %4514 = fmul fast float %4511, %4511
  %4515 = fadd fast float %4513, %4514
  %4516 = fmul fast float %4512, %4512
  %4517 = fadd fast float %4515, %4516
  %4518 = call float @dx.op.unary.f32(i32 24, float %4517)  ; Sqrt(value)
  %4519 = fcmp fast ogt float %4518, 0.000000e+00
  br i1 %4519, label %4520, label %4524

; <label>:4520                                    ; preds = %4470
  %4521 = fdiv fast float %4510, %4518
  %4522 = fdiv fast float %4511, %4518
  %4523 = fdiv fast float %4512, %4518
  br label %4524

; <label>:4524                                    ; preds = %4520, %4470
  %4525 = phi float [ %4521, %4520 ], [ 0.000000e+00, %4470 ]
  %4526 = phi float [ %4522, %4520 ], [ 0.000000e+00, %4470 ]
  %4527 = phi float [ %4523, %4520 ], [ 0.000000e+00, %4470 ]
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4531 = fsub fast float %3684, %4529
  %4532 = fsub fast float %3685, %4530
  %4533 = fmul fast float %4531, %4531
  %4534 = fmul fast float %4532, %4532
  %4535 = fadd fast float %4533, %4534
  %4536 = call float @dx.op.unary.f32(i32 24, float %4535)  ; Sqrt(value)
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4540 = fsub fast float %4536, %4538
  %4541 = fdiv fast float %4540, %4539
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4543 = fmul fast float %4542, 2.000000e+00
  %4544 = fsub fast float 3.000000e+00, %4543
  %4545 = fmul fast float %4542, %4542
  %4546 = fmul fast float %4545, %4544
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4525, float %4526, float %4527, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4547)  ; FMax(a,b)
  %4549 = fmul fast float %4548, 0x400C5BF8A0000000
  %4550 = fmul fast float %4546, %4499
  %4551 = fmul fast float %4550, %4549
  %4552 = fadd fast float %4551, %4468
  %4553 = fmul fast float %4546, %4500
  %4554 = fmul fast float %4553, %4549
  %4555 = fadd fast float %4554, %4467
  %4556 = fmul fast float %4546, %4501
  %4557 = fmul fast float %4556, %4549
  %4558 = fadd fast float %4557, %4466
  br label %4559

; <label>:4559                                    ; preds = %4524, %4465, %4393
  %4560 = phi float [ %4558, %4524 ], [ %4466, %4465 ], [ %4405, %4393 ]
  %4561 = phi float [ %4555, %4524 ], [ %4467, %4465 ], [ %4404, %4393 ]
  %4562 = phi float [ %4552, %4524 ], [ %4468, %4465 ], [ %4403, %4393 ]
  %4563 = fcmp fast ogt float %4050, %4087
  %4564 = and i1 %4406, %4563
  %4565 = and i1 %4408, %4564
  %4566 = and i1 %4410, %4565
  %4567 = and i1 %4412, %4566
  br i1 %4567, label %4568, label %4625, !dx.controlflow.hints !85

; <label>:4568                                    ; preds = %4559
  %4569 = fmul fast float %4089, 0x3FC24924A0000000
  %4570 = fsub fast float %4050, %4087
  %4571 = fdiv fast float %4570, %4569
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 0
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.CBufRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.CBufRet.f32 %4575, 2
  %4579 = fsub fast float %4574, %4562
  %4580 = fsub fast float %4576, %4400
  %4581 = fsub fast float %4577, %4401
  %4582 = fsub fast float %4578, %4402
  %4583 = fmul fast float %4579, %4572
  %4584 = fmul fast float %4580, %4572
  %4585 = fmul fast float %4581, %4572
  %4586 = fmul fast float %4582, %4572
  %4587 = fadd fast float %4583, %4562
  %4588 = fadd fast float %4584, %4400
  %4589 = fadd fast float %4585, %4401
  %4590 = fadd fast float %4586, %4402
  %4591 = extractvalue %dx.types.CBufRet.f32 %4573, 1
  %4592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.CBufRet.f32 %4592, 1
  %4595 = extractvalue %dx.types.CBufRet.f32 %4592, 2
  %4596 = fsub fast float %4591, %4561
  %4597 = fsub fast float %4593, %4397
  %4598 = fsub fast float %4594, %4398
  %4599 = fsub fast float %4595, %4399
  %4600 = fmul fast float %4596, %4572
  %4601 = fmul fast float %4597, %4572
  %4602 = fmul fast float %4598, %4572
  %4603 = fmul fast float %4599, %4572
  %4604 = fadd fast float %4600, %4561
  %4605 = fadd fast float %4601, %4397
  %4606 = fadd fast float %4602, %4398
  %4607 = fadd fast float %4603, %4399
  %4608 = extractvalue %dx.types.CBufRet.f32 %4573, 2
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.CBufRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.CBufRet.f32 %4609, 2
  %4613 = fsub fast float %4608, %4560
  %4614 = fsub fast float %4610, %4394
  %4615 = fsub fast float %4611, %4395
  %4616 = fsub fast float %4612, %4396
  %4617 = fmul fast float %4613, %4572
  %4618 = fmul fast float %4614, %4572
  %4619 = fmul fast float %4615, %4572
  %4620 = fmul fast float %4616, %4572
  %4621 = fadd fast float %4617, %4560
  %4622 = fadd fast float %4618, %4394
  %4623 = fadd fast float %4619, %4395
  %4624 = fadd fast float %4620, %4396
  br label %4625

; <label>:4625                                    ; preds = %4568, %4559
  %4626 = phi float [ %4621, %4568 ], [ %4560, %4559 ]
  %4627 = phi float [ %4622, %4568 ], [ %4394, %4559 ]
  %4628 = phi float [ %4623, %4568 ], [ %4395, %4559 ]
  %4629 = phi float [ %4624, %4568 ], [ %4396, %4559 ]
  %4630 = phi float [ %4604, %4568 ], [ %4561, %4559 ]
  %4631 = phi float [ %4605, %4568 ], [ %4397, %4559 ]
  %4632 = phi float [ %4606, %4568 ], [ %4398, %4559 ]
  %4633 = phi float [ %4607, %4568 ], [ %4399, %4559 ]
  %4634 = phi float [ %4587, %4568 ], [ %4562, %4559 ]
  %4635 = phi float [ %4588, %4568 ], [ %4400, %4559 ]
  %4636 = phi float [ %4589, %4568 ], [ %4401, %4559 ]
  %4637 = phi float [ %4590, %4568 ], [ %4402, %4559 ]
  %4638 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4639 = fmul fast float %4638, %4634
  %4640 = fmul fast float %4638, %4630
  %4641 = fmul fast float %4638, %4626
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 3
  %4644 = fmul fast float %4639, %4643
  %4645 = fmul fast float %4640, %4643
  %4646 = fmul fast float %4641, %4643
  %4647 = fmul fast float %4635, 1.500000e+00
  %4648 = fmul fast float %4647, %4638
  %4649 = fmul fast float %4648, %4643
  %4650 = fmul fast float %4636, 1.500000e+00
  %4651 = fmul fast float %4650, %4638
  %4652 = fmul fast float %4651, %4643
  %4653 = fmul fast float %4637, 1.500000e+00
  %4654 = fmul fast float %4653, %4638
  %4655 = fmul fast float %4654, %4643
  %4656 = fmul fast float %4631, 1.500000e+00
  %4657 = fmul fast float %4656, %4638
  %4658 = fmul fast float %4657, %4643
  %4659 = fmul fast float %4632, 1.500000e+00
  %4660 = fmul fast float %4659, %4638
  %4661 = fmul fast float %4660, %4643
  %4662 = fmul fast float %4633, 1.500000e+00
  %4663 = fmul fast float %4662, %4638
  %4664 = fmul fast float %4663, %4643
  %4665 = fmul fast float %4627, 1.500000e+00
  %4666 = fmul fast float %4665, %4638
  %4667 = fmul fast float %4666, %4643
  %4668 = fmul fast float %4628, 1.500000e+00
  %4669 = fmul fast float %4668, %4638
  %4670 = fmul fast float %4669, %4643
  %4671 = fmul fast float %4629, 1.500000e+00
  %4672 = fmul fast float %4671, %4638
  %4673 = fmul fast float %4672, %4643
  %4674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4644)  ; FMax(a,b)
  %4675 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4652, float %4655, float %4649, float %4652, float %4655)  ; Dot3(ax,ay,az,bx,by,bz)
  %4676 = fcmp fast oeq float %4675, 0.000000e+00
  %4677 = fcmp fast oeq float %4674, 0.000000e+00
  %4678 = or i1 %4677, %4676
  br i1 %4678, label %4708, label %4679

; <label>:4679                                    ; preds = %4625
  %4680 = fsub fast float -0.000000e+00, %4655
  %4681 = fsub fast float -0.000000e+00, %4649
  %4682 = call float @dx.op.unary.f32(i32 24, float %4675)  ; Sqrt(value)
  %4683 = fdiv fast float %4682, %4674
  %4684 = fcmp fast ogt float %4683, 0x3FFB6F8900000000
  %4685 = select i1 %4684, float 0x3FFB6F8900000000, float %4683
  %4686 = fmul fast float %4685, 0x3FE8A23460000000
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = call float @dx.op.binary.f32(i32 35, float %4685, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4689 = fmul fast float %4687, %4674
  %4690 = fmul fast float %4688, 0x3FF279A740000000
  %4691 = fadd fast float %4690, -1.000000e+00
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4652, float %4680, float %4681, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 25, float %4692)  ; Rsqrt(value)
  %4694 = fmul fast float %4693, %4680
  %4695 = fmul fast float %4693, %4681
  %4696 = fmul fast float %4693, %4652
  %4697 = fmul fast float %4691, %4691
  %4698 = fsub fast float 1.000000e+00, %4697
  %4699 = fmul fast float %4688, 0x40005F8BE0000000
  %4700 = fsub fast float 0x400C5BF8A0000000, %4699
  %4701 = fdiv fast float %4689, %4700
  %4702 = fmul fast float %4701, 0x3FEE31C3C0000000
  %4703 = fmul fast float %4702, %4698
  %4704 = fmul fast float %4688, 0x3FDACB7480000000
  %4705 = fadd fast float %4704, 0xBFD7347680000000
  %4706 = fmul fast float %4705, %4701
  %4707 = fmul fast float %4706, %4698
  br label %4708

; <label>:4708                                    ; preds = %4679, %4625
  %4709 = phi float [ %4694, %4679 ], [ 0.000000e+00, %4625 ]
  %4710 = phi float [ %4695, %4679 ], [ 0.000000e+00, %4625 ]
  %4711 = phi float [ %4696, %4679 ], [ 0.000000e+00, %4625 ]
  %4712 = phi float [ %4703, %4679 ], [ 0.000000e+00, %4625 ]
  %4713 = phi float [ %4707, %4679 ], [ 0.000000e+00, %4625 ]
  %4714 = call float @dx.op.dot3.f32(i32 55, float %4709, float %4710, float %4711, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4715 = fmul fast float %4714, %4714
  %4716 = fmul fast float %4715, 0x3FEE471020000000
  %4717 = fadd fast float %4716, 0xBFD42F6020000000
  %4718 = fmul fast float %4674, 0x3FD20DD760000000
  %4719 = fmul fast float %4717, %4713
  %4720 = fmul fast float %4712, 0x3FDF454380000000
  %4721 = fmul fast float %4720, %4714
  %4722 = fadd fast float %4721, %4718
  %4723 = fadd fast float %4722, %4719
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4709, float %4710, float %4711, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = fmul fast float %4724, 0x3FDF454380000000
  %4726 = fmul fast float %4724, %4724
  %4727 = fmul fast float %4726, 0x3FEE471020000000
  %4728 = fadd fast float %4727, 0xBFD42F6020000000
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4712, float %4713, float 0x3FD20DD760000000, float %4725, float %4728)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4645)  ; FMax(a,b)
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4661, float %4664, float %4658, float %4661, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = fcmp fast oeq float %4731, 0.000000e+00
  %4733 = fcmp fast oeq float %4730, 0.000000e+00
  %4734 = or i1 %4733, %4732
  br i1 %4734, label %4764, label %4735

; <label>:4735                                    ; preds = %4708
  %4736 = fsub fast float -0.000000e+00, %4664
  %4737 = fsub fast float -0.000000e+00, %4658
  %4738 = call float @dx.op.unary.f32(i32 24, float %4731)  ; Sqrt(value)
  %4739 = fdiv fast float %4738, %4730
  %4740 = fcmp fast ogt float %4739, 0x3FFB6F8900000000
  %4741 = select i1 %4740, float 0x3FFB6F8900000000, float %4739
  %4742 = fmul fast float %4741, 0x3FE8A23460000000
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = call float @dx.op.binary.f32(i32 35, float %4741, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4745 = fmul fast float %4743, %4730
  %4746 = fmul fast float %4744, 0x3FF279A740000000
  %4747 = fadd fast float %4746, -1.000000e+00
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4661, float %4736, float %4737, float %4661)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = call float @dx.op.unary.f32(i32 25, float %4748)  ; Rsqrt(value)
  %4750 = fmul fast float %4749, %4736
  %4751 = fmul fast float %4749, %4737
  %4752 = fmul fast float %4749, %4661
  %4753 = fmul fast float %4747, %4747
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = fmul fast float %4744, 0x40005F8BE0000000
  %4756 = fsub fast float 0x400C5BF8A0000000, %4755
  %4757 = fdiv fast float %4745, %4756
  %4758 = fmul fast float %4757, 0x3FEE31C3C0000000
  %4759 = fmul fast float %4758, %4754
  %4760 = fmul fast float %4744, 0x3FDACB7480000000
  %4761 = fadd fast float %4760, 0xBFD7347680000000
  %4762 = fmul fast float %4761, %4757
  %4763 = fmul fast float %4762, %4754
  br label %4764

; <label>:4764                                    ; preds = %4735, %4708
  %4765 = phi float [ %4750, %4735 ], [ 0.000000e+00, %4708 ]
  %4766 = phi float [ %4751, %4735 ], [ 0.000000e+00, %4708 ]
  %4767 = phi float [ %4752, %4735 ], [ 0.000000e+00, %4708 ]
  %4768 = phi float [ %4759, %4735 ], [ 0.000000e+00, %4708 ]
  %4769 = phi float [ %4763, %4735 ], [ 0.000000e+00, %4708 ]
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %4767, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = fmul fast float %4770, %4770
  %4772 = fmul fast float %4771, 0x3FEE471020000000
  %4773 = fadd fast float %4772, 0xBFD42F6020000000
  %4774 = fmul fast float %4730, 0x3FD20DD760000000
  %4775 = fmul fast float %4773, %4769
  %4776 = fmul fast float %4768, 0x3FDF454380000000
  %4777 = fmul fast float %4776, %4770
  %4778 = fadd fast float %4777, %4774
  %4779 = fadd fast float %4778, %4775
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %4767, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = fmul fast float %4780, 0x3FDF454380000000
  %4782 = fmul fast float %4780, %4780
  %4783 = fmul fast float %4782, 0x3FEE471020000000
  %4784 = fadd fast float %4783, 0xBFD42F6020000000
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4768, float %4769, float 0x3FD20DD760000000, float %4781, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4646)  ; FMax(a,b)
  %4787 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4670, float %4673, float %4667, float %4670, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = fcmp fast oeq float %4787, 0.000000e+00
  %4789 = fcmp fast oeq float %4786, 0.000000e+00
  %4790 = or i1 %4789, %4788
  br i1 %4790, label %4820, label %4791

; <label>:4791                                    ; preds = %4764
  %4792 = fsub fast float -0.000000e+00, %4673
  %4793 = fsub fast float -0.000000e+00, %4667
  %4794 = call float @dx.op.unary.f32(i32 24, float %4787)  ; Sqrt(value)
  %4795 = fdiv fast float %4794, %4786
  %4796 = fcmp fast ogt float %4795, 0x3FFB6F8900000000
  %4797 = select i1 %4796, float 0x3FFB6F8900000000, float %4795
  %4798 = fmul fast float %4797, 0x3FE8A23460000000
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = call float @dx.op.binary.f32(i32 35, float %4797, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4801 = fmul fast float %4799, %4786
  %4802 = fmul fast float %4800, 0x3FF279A740000000
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4670, float %4792, float %4793, float %4670)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = call float @dx.op.unary.f32(i32 25, float %4804)  ; Rsqrt(value)
  %4806 = fmul fast float %4805, %4792
  %4807 = fmul fast float %4805, %4793
  %4808 = fmul fast float %4805, %4670
  %4809 = fmul fast float %4803, %4803
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = fmul fast float %4800, 0x40005F8BE0000000
  %4812 = fsub fast float 0x400C5BF8A0000000, %4811
  %4813 = fdiv fast float %4801, %4812
  %4814 = fmul fast float %4813, 0x3FEE31C3C0000000
  %4815 = fmul fast float %4814, %4810
  %4816 = fmul fast float %4800, 0x3FDACB7480000000
  %4817 = fadd fast float %4816, 0xBFD7347680000000
  %4818 = fmul fast float %4817, %4813
  %4819 = fmul fast float %4818, %4810
  br label %4820

; <label>:4820                                    ; preds = %4791, %4764
  %4821 = phi float [ %4806, %4791 ], [ 0.000000e+00, %4764 ]
  %4822 = phi float [ %4807, %4791 ], [ 0.000000e+00, %4764 ]
  %4823 = phi float [ %4808, %4791 ], [ 0.000000e+00, %4764 ]
  %4824 = phi float [ %4815, %4791 ], [ 0.000000e+00, %4764 ]
  %4825 = phi float [ %4819, %4791 ], [ 0.000000e+00, %4764 ]
  %4826 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = fmul fast float %4826, %4826
  %4828 = fmul fast float %4827, 0x3FEE471020000000
  %4829 = fadd fast float %4828, 0xBFD42F6020000000
  %4830 = fmul fast float %4786, 0x3FD20DD760000000
  %4831 = fmul fast float %4829, %4825
  %4832 = fmul fast float %4824, 0x3FDF454380000000
  %4833 = fmul fast float %4832, %4826
  %4834 = fadd fast float %4833, %4830
  %4835 = fadd fast float %4834, %4831
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = fmul fast float %4836, 0x3FDF454380000000
  %4838 = fmul fast float %4836, %4836
  %4839 = fmul fast float %4838, 0x3FEE471020000000
  %4840 = fadd fast float %4839, 0xBFD42F6020000000
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4824, float %4825, float 0x3FD20DD760000000, float %4837, float %4840)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = call float @dx.op.binary.f32(i32 35, float %4723, float 0.000000e+00)  ; FMax(a,b)
  %4843 = call float @dx.op.binary.f32(i32 35, float %4779, float 0.000000e+00)  ; FMax(a,b)
  %4844 = call float @dx.op.binary.f32(i32 35, float %4835, float 0.000000e+00)  ; FMax(a,b)
  %4845 = call float @dx.op.binary.f32(i32 35, float %4729, float 0.000000e+00)  ; FMax(a,b)
  %4846 = call float @dx.op.binary.f32(i32 35, float %4785, float 0.000000e+00)  ; FMax(a,b)
  %4847 = call float @dx.op.binary.f32(i32 35, float %4841, float 0.000000e+00)  ; FMax(a,b)
  %4848 = fsub fast float %4044, %4842
  %4849 = fsub fast float %4045, %4843
  %4850 = fsub fast float %4046, %4844
  %4851 = fmul fast float %4848, %3725
  %4852 = fmul fast float %4849, %3725
  %4853 = fmul fast float %4850, %3725
  %4854 = fadd fast float %4851, %4842
  %4855 = fadd fast float %4852, %4843
  %4856 = fadd fast float %4853, %4844
  %4857 = fsub fast float %4041, %4845
  %4858 = fsub fast float %4042, %4846
  %4859 = fsub fast float %4043, %4847
  %4860 = fmul fast float %4857, %3725
  %4861 = fmul fast float %4858, %3725
  %4862 = fmul fast float %4859, %3725
  %4863 = fadd fast float %4860, %4845
  %4864 = fadd fast float %4861, %4846
  %4865 = fadd fast float %4862, %4847
  br label %4866

; <label>:4866                                    ; preds = %4820, %4040
  %4867 = phi float [ %4863, %4820 ], [ %4041, %4040 ]
  %4868 = phi float [ %4864, %4820 ], [ %4042, %4040 ]
  %4869 = phi float [ %4865, %4820 ], [ %4043, %4040 ]
  %4870 = phi float [ %4854, %4820 ], [ %4044, %4040 ]
  %4871 = phi float [ %4855, %4820 ], [ %4045, %4040 ]
  %4872 = phi float [ %4856, %4820 ], [ %4046, %4040 ]
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4875 = call float @dx.op.binary.f32(i32 36, float %3658, float %4874)  ; FMin(a,b)
  %4876 = fsub fast float 1.000000e+00, %3677
  %4877 = fmul fast float %4875, %4876
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = call float @dx.op.binary.f32(i32 36, float %3659, float %4874)  ; FMin(a,b)
  %4883 = fmul fast float %4882, %4876
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = call float @dx.op.binary.f32(i32 36, float %3660, float %4874)  ; FMin(a,b)
  %4889 = fmul fast float %4888, %4876
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = bitcast float %4890 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = fmul fast float %4870, %3677
  %4895 = fmul fast float %4894, %4881
  %4896 = fmul fast float %4871, %3677
  %4897 = fmul fast float %4896, %4887
  %4898 = fmul fast float %4872, %3677
  %4899 = fmul fast float %4898, %4893
  %4900 = call float @dx.op.binary.f32(i32 36, float %3655, float %4874)  ; FMin(a,b)
  %4901 = fmul fast float %4900, %4876
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = bitcast float %4902 to i32
  %4904 = sub nsw i32 2129859010, %4903
  %4905 = bitcast i32 %4904 to float
  %4906 = call float @dx.op.binary.f32(i32 36, float %3656, float %4874)  ; FMin(a,b)
  %4907 = fmul fast float %4906, %4876
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = bitcast float %4908 to i32
  %4910 = sub nsw i32 2129859010, %4909
  %4911 = bitcast i32 %4910 to float
  %4912 = call float @dx.op.binary.f32(i32 36, float %3666, float %4874)  ; FMin(a,b)
  %4913 = fmul fast float %4912, %4876
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = bitcast float %4914 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = fmul fast float %4867, %3677
  %4919 = fmul fast float %4918, %4905
  %4920 = fmul fast float %4868, %3677
  %4921 = fmul fast float %4920, %4911
  %4922 = fmul fast float %4869, %3677
  %4923 = fmul fast float %4922, %4917
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4897, float %4899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = select i1 %192, float 0.000000e+00, float %4895
  %4926 = select i1 %192, float %4924, float %4897
  %4927 = select i1 %192, float 0.000000e+00, float %4899
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4921, float %4923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = select i1 %192, float 0.000000e+00, float %4919
  %4930 = select i1 %192, float %4928, float %4921
  %4931 = select i1 %192, float 0.000000e+00, float %4923
  %4932 = fmul fast float %3668, 9.843750e-01
  %4933 = fmul fast float %3664, 9.843750e-01
  %4934 = fadd fast float %4932, 7.812500e-03
  %4935 = fadd fast float %4933, 7.812500e-03
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4934, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 2
  %4938 = extractvalue %dx.types.ResRet.f32 %4936, 3
  %4939 = fmul fast float %4937, %3655
  %4940 = fmul fast float %4937, %3656
  %4941 = fmul fast float %4937, %3666
  %4942 = fadd fast float %4939, %4938
  %4943 = fadd fast float %4940, %4938
  %4944 = fadd fast float %4941, %4938
  %4945 = fcmp fast ogt float %3032, 0.000000e+00
  br i1 %4945, label %4946, label %4972

; <label>:4946                                    ; preds = %4866
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3032, float %3668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.ResRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.ResRet.f32 %4947, 2
  %4951 = fadd fast float %4948, -5.000000e-01
  %4952 = fadd fast float %4949, -5.000000e-01
  %4953 = fadd fast float %4950, -5.000000e-01
  %4954 = fsub fast float 1.000000e+00, %3655
  %4955 = fsub fast float 1.000000e+00, %3656
  %4956 = fsub fast float 1.000000e+00, %3666
  %4957 = fmul fast float %3655, 4.000000e+00
  %4958 = fmul fast float %4957, %4954
  %4959 = fmul fast float %4958, %4951
  %4960 = fmul fast float %3656, 4.000000e+00
  %4961 = fmul fast float %4960, %4955
  %4962 = fmul fast float %4961, %4952
  %4963 = fmul fast float %3666, 4.000000e+00
  %4964 = fmul fast float %4963, %4956
  %4965 = fmul fast float %4964, %4953
  %4966 = fadd fast float %4959, %4942
  %4967 = fadd fast float %4962, %4943
  %4968 = fadd fast float %4965, %4944
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4971 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  br label %4972

; <label>:4972                                    ; preds = %4946, %4866
  %4973 = phi float [ %4969, %4946 ], [ %4942, %4866 ]
  %4974 = phi float [ %4970, %4946 ], [ %4943, %4866 ]
  %4975 = phi float [ %4971, %4946 ], [ %4944, %4866 ]
  %4976 = call float @dx.op.binary.f32(i32 35, float %4974, float %4975)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4973, float %4976)  ; FMax(a,b)
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = fmul fast float %4978, %4925
  %4980 = fmul fast float %4978, %4926
  %4981 = fmul fast float %4978, %4927
  %4982 = call float @dx.op.dot3.f32(i32 55, float %3658, float %3659, float %3660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = fcmp fast ogt float %4982, 0x3E7FF19E20000000
  %4984 = fdiv fast float 1.000000e+00, %4982
  %4985 = select i1 %4983, float %4984, float 0.000000e+00
  %4986 = fmul fast float %4985, %3658
  %4987 = fmul fast float %4985, %3659
  %4988 = fmul fast float %4985, %3660
  %4989 = fadd fast float %4986, -1.000000e+00
  %4990 = fadd fast float %4987, -1.000000e+00
  %4991 = fadd fast float %4988, -1.000000e+00
  %4992 = fmul fast float %4989, 5.000000e-01
  %4993 = fmul fast float %4990, 5.000000e-01
  %4994 = fmul fast float %4991, 5.000000e-01
  %4995 = fadd fast float %4992, 1.000000e+00
  %4996 = fadd fast float %4993, 1.000000e+00
  %4997 = fadd fast float %4994, 1.000000e+00
  %4998 = fmul fast float %4973, %4929
  %4999 = fmul fast float %4974, %4930
  %5000 = fmul fast float %4975, %4931
  %5001 = fsub fast float 1.000000e+00, %3668
  %5002 = bitcast float %5001 to i32
  %5003 = sitofp i32 %5002 to float
  %5004 = fmul fast float %5003, 5.000000e+00
  %5005 = fadd fast float %5004, 0xC1EFBF8940000000
  %5006 = fptosi float %5005 to i32
  %5007 = bitcast i32 %5006 to float
  %5008 = fmul fast float %5007, %3031
  %5009 = fmul fast float %4925, %5008
  %5010 = fmul fast float %5009, %4978
  %5011 = fmul fast float %5010, %4995
  %5012 = fmul fast float %4926, %5008
  %5013 = fmul fast float %5012, %4978
  %5014 = fmul fast float %5013, %4996
  %5015 = fmul fast float %4927, %5008
  %5016 = fmul fast float %5015, %4978
  %5017 = fmul fast float %5016, %4997
  %5018 = fmul fast float %4979, %3052
  %5019 = fmul fast float %4980, %3052
  %5020 = fmul fast float %4981, %3052
  %5021 = fadd fast float %4998, %3033
  %5022 = fadd fast float %5021, %5011
  %5023 = fmul fast float %5022, %3052
  %5024 = fadd fast float %4999, %3034
  %5025 = fadd fast float %5024, %5014
  %5026 = fmul fast float %5025, %3052
  %5027 = fadd fast float %5000, %3035
  %5028 = fadd fast float %5027, %5017
  %5029 = fmul fast float %5028, %3052
  %5030 = bitcast i32 %3680 to float
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 3
  %5033 = fcmp fast oeq float %5032, 0.000000e+00
  br i1 %5033, label %5261, label %5034

; <label>:5034                                    ; preds = %4972
  %5035 = extractvalue %dx.types.CBufRet.f32 %5031, 0
  %5036 = extractvalue %dx.types.CBufRet.f32 %5031, 1
  %5037 = extractvalue %dx.types.CBufRet.f32 %5031, 2
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.CBufRet.f32 %5042, 1
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = select i1 %192, float %5043, float %5039
  %5047 = select i1 %192, float %5045, float %5040
  %5048 = select i1 %192, float %5044, float %5041
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 1
  %5051 = fcmp fast une float %5050, 0.000000e+00
  br i1 %5051, label %5052, label %5069

; <label>:5052                                    ; preds = %5034
  %5053 = fptoui float %66 to i32
  %5054 = fptoui float %67 to i32
  %5055 = lshr i32 %5053, 4
  %5056 = lshr i32 %5054, 4
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = fptoui float %5058 to i32
  %5060 = add i32 %5059, 15
  %5061 = lshr i32 %5060, 4
  %5062 = mul i32 %5061, %5056
  %5063 = add i32 %5062, %5055
  %5064 = shl i32 %5063, 3
  %5065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5064, i32 undef)  ; BufferLoad(srv,index,wot)
  %5066 = extractvalue %dx.types.ResRet.i32 %5065, 0
  %5067 = and i32 %5066, -268435456
  %5068 = icmp eq i32 %5067, -1342177280
  br i1 %5068, label %5079, label %5069

; <label>:5069                                    ; preds = %5052, %5034
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5072 = extractvalue %dx.types.CBufRet.f32 %5070, 3
  %5073 = fmul fast float %5071, %66
  %5074 = fmul fast float %5072, %67
  %5075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5073, float %5074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = extractvalue %dx.types.ResRet.f32 %5075, 2
  br label %5079

; <label>:5079                                    ; preds = %5069, %5052
  %5080 = phi float [ %5076, %5069 ], [ 0.000000e+00, %5052 ]
  %5081 = phi float [ %5077, %5069 ], [ 0.000000e+00, %5052 ]
  %5082 = phi float [ %5078, %5069 ], [ 0.000000e+00, %5052 ]
  %5083 = call float @dx.op.binary.f32(i32 36, float %5081, float %5082)  ; FMin(a,b)
  %5084 = call float @dx.op.binary.f32(i32 36, float %5080, float %5083)  ; FMin(a,b)
  %5085 = fcmp fast ogt float %5084, 0.000000e+00
  br i1 %5085, label %5086, label %5261, !dx.controlflow.hints !86

; <label>:5086                                    ; preds = %5079
  %5087 = fmul fast float %5080, %5046
  %5088 = fmul fast float %5081, %5047
  %5089 = fmul fast float %5082, %5048
  %5090 = fsub fast float %5035, %3654
  %5091 = fsub fast float %5036, %3653
  %5092 = fsub fast float %5037, %3652
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = call float @dx.op.unary.f32(i32 25, float %5093)  ; Rsqrt(value)
  %5095 = fmul fast float %5094, %5090
  %5096 = fmul fast float %5094, %5091
  %5097 = fmul fast float %5094, %5092
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.dot3.f32(i32 55, float %3651, float %3650, float %3649, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5101 = fmul fast float %5100, %5100
  %5102 = fmul fast float %5101, %5030
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = fmul fast float %5103, %5100
  %5105 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = fmul fast float %5105, %5105
  %5107 = call float @dx.op.unary.f32(i32 6, float %5098)  ; FAbs(value)
  %5108 = fsub fast float 1.000000e+00, %3664
  %5109 = call float @dx.op.binary.f32(i32 35, float %5108, float 0x3F847AE140000000)  ; FMax(a,b)
  %5110 = fmul fast float %5109, %5109
  %5111 = fmul fast float %5110, %5110
  %5112 = fsub fast float 1.000000e+00, %5111
  %5113 = fmul fast float %3668, %3668
  %5114 = fmul fast float %5113, %5112
  %5115 = fadd fast float %5114, %5111
  %5116 = bitcast float %5115 to i32
  %5117 = ashr i32 %5116, 1
  %5118 = add nsw i32 %5117, 532487669
  %5119 = bitcast i32 %5118 to float
  %5120 = fadd fast float %5119, %3668
  %5121 = fmul fast float %5111, %5106
  %5122 = fsub fast float 1.000000e+00, %5106
  %5123 = fadd fast float %5122, %5121
  %5124 = fmul fast float %5107, %5107
  %5125 = fmul fast float %5124, %5112
  %5126 = fadd fast float %5125, %5111
  %5127 = bitcast float %5126 to i32
  %5128 = ashr i32 %5127, 1
  %5129 = add nsw i32 %5128, 532487669
  %5130 = bitcast i32 %5129 to float
  %5131 = fadd fast float %5130, %5107
  %5132 = fmul fast float %5123, %5123
  %5133 = fmul fast float %5132, %5120
  %5134 = fmul fast float %5133, %5131
  %5135 = fdiv fast float 0x3FF0A00000000000, %5134
  %5136 = fmul fast float %5135, %5111
  %5137 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = bitcast float %5138 to i32
  %5140 = sitofp i32 %5139 to float
  %5141 = fmul fast float %5140, 5.000000e+00
  %5142 = fadd fast float %5141, 0xC1EFBF8940000000
  %5143 = fptosi float %5142 to i32
  %5144 = bitcast i32 %5143 to float
  %5145 = fsub fast float 1.000000e+00, %3655
  %5146 = fsub fast float 1.000000e+00, %3656
  %5147 = fsub fast float 1.000000e+00, %3666
  %5148 = fmul fast float %5144, %5145
  %5149 = fmul fast float %5144, %5146
  %5150 = fmul fast float %5144, %5147
  %5151 = fadd fast float %5148, %3655
  %5152 = fadd fast float %5149, %3656
  %5153 = fadd fast float %5150, %3666
  br i1 %4945, label %5154, label %5177

; <label>:5154                                    ; preds = %5086
  %5155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3032, float %5137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.ResRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.ResRet.f32 %5155, 2
  %5159 = fadd fast float %5156, -5.000000e-01
  %5160 = fadd fast float %5157, -5.000000e-01
  %5161 = fadd fast float %5158, -5.000000e-01
  %5162 = fmul fast float %3655, 4.000000e+00
  %5163 = fmul fast float %5162, %5145
  %5164 = fmul fast float %5163, %5159
  %5165 = fmul fast float %3656, 4.000000e+00
  %5166 = fmul fast float %5165, %5146
  %5167 = fmul fast float %5166, %5160
  %5168 = fmul fast float %3666, 4.000000e+00
  %5169 = fmul fast float %5168, %5147
  %5170 = fmul fast float %5169, %5161
  %5171 = fadd fast float %5164, %5151
  %5172 = fadd fast float %5167, %5152
  %5173 = fadd fast float %5170, %5153
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5176 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  br label %5177

; <label>:5177                                    ; preds = %5154, %5086
  %5178 = phi float [ %5174, %5154 ], [ %5151, %5086 ]
  %5179 = phi float [ %5175, %5154 ], [ %5152, %5086 ]
  %5180 = phi float [ %5176, %5154 ], [ %5153, %5086 ]
  %5181 = fmul fast float %5098, 9.843750e-01
  %5182 = fadd fast float %5181, 7.812500e-03
  %5183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5182, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5184 = extractvalue %dx.types.ResRet.f32 %5183, 2
  %5185 = extractvalue %dx.types.ResRet.f32 %5183, 3
  %5186 = fmul fast float %5184, %3655
  %5187 = fmul fast float %5184, %3656
  %5188 = fmul fast float %5184, %3666
  %5189 = fadd fast float %5186, %5185
  %5190 = fadd fast float %5187, %5185
  %5191 = fadd fast float %5188, %5185
  br i1 %4945, label %5192, label %5215

; <label>:5192                                    ; preds = %5177
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3032, float %5098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.ResRet.f32 %5193, 1
  %5196 = extractvalue %dx.types.ResRet.f32 %5193, 2
  %5197 = fadd fast float %5194, -5.000000e-01
  %5198 = fadd fast float %5195, -5.000000e-01
  %5199 = fadd fast float %5196, -5.000000e-01
  %5200 = fmul fast float %3655, 4.000000e+00
  %5201 = fmul fast float %5200, %5145
  %5202 = fmul fast float %5201, %5197
  %5203 = fmul fast float %3656, 4.000000e+00
  %5204 = fmul fast float %5203, %5146
  %5205 = fmul fast float %5204, %5198
  %5206 = fmul fast float %3666, 4.000000e+00
  %5207 = fmul fast float %5206, %5147
  %5208 = fmul fast float %5207, %5199
  %5209 = fadd fast float %5202, %5189
  %5210 = fadd fast float %5205, %5190
  %5211 = fadd fast float %5208, %5191
  %5212 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5214 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  br label %5215

; <label>:5215                                    ; preds = %5192, %5177
  %5216 = phi float [ %5212, %5192 ], [ %5189, %5177 ]
  %5217 = phi float [ %5213, %5192 ], [ %5190, %5177 ]
  %5218 = phi float [ %5214, %5192 ], [ %5191, %5177 ]
  %5219 = call float @dx.op.binary.f32(i32 35, float %5217, float %5218)  ; FMax(a,b)
  %5220 = call float @dx.op.binary.f32(i32 35, float %5216, float %5219)  ; FMax(a,b)
  %5221 = fsub fast float 1.000000e+00, %5220
  %5222 = fmul fast float %5178, %5136
  %5223 = fmul fast float %5179, %5136
  %5224 = fmul fast float %5180, %5136
  %5225 = fsub fast float 1.000000e+00, %5099
  %5226 = bitcast float %5225 to i32
  %5227 = sitofp i32 %5226 to float
  %5228 = fmul fast float %5227, 5.000000e+00
  %5229 = fadd fast float %5228, 0xC1EFBF8940000000
  %5230 = fptosi float %5229 to i32
  %5231 = bitcast i32 %5230 to float
  %5232 = fmul fast float %5231, %3031
  %5233 = fmul fast float %5221, %5232
  %5234 = fmul fast float %5233, %4995
  %5235 = fmul fast float %5233, %4996
  %5236 = fmul fast float %5233, %4997
  %5237 = fadd fast float %5234, %5222
  %5238 = fadd fast float %5235, %5223
  %5239 = fadd fast float %5236, %5224
  %5240 = fmul fast float %5104, %5087
  %5241 = fmul fast float %5240, %5221
  %5242 = fmul fast float %5104, %5088
  %5243 = fmul fast float %5242, %5221
  %5244 = fmul fast float %5104, %5089
  %5245 = fmul fast float %5244, %5221
  %5246 = fmul fast float %5240, %5237
  %5247 = fmul fast float %5242, %5238
  %5248 = fmul fast float %5244, %5239
  %5249 = fadd fast float %5241, %4979
  %5250 = fmul fast float %5249, %3052
  %5251 = fadd fast float %5243, %4980
  %5252 = fmul fast float %5251, %3052
  %5253 = fadd fast float %5245, %4981
  %5254 = fmul fast float %5253, %3052
  %5255 = fadd fast float %5246, %5022
  %5256 = fmul fast float %5255, %3052
  %5257 = fadd fast float %5247, %5025
  %5258 = fmul fast float %5257, %3052
  %5259 = fadd fast float %5248, %5028
  %5260 = fmul fast float %5259, %3052
  br label %5261

; <label>:5261                                    ; preds = %5215, %5079, %4972
  %5262 = phi float [ %5023, %4972 ], [ %5023, %5079 ], [ %5256, %5215 ]
  %5263 = phi float [ %5026, %4972 ], [ %5026, %5079 ], [ %5258, %5215 ]
  %5264 = phi float [ %5029, %4972 ], [ %5029, %5079 ], [ %5260, %5215 ]
  %5265 = phi float [ %5018, %4972 ], [ %5018, %5079 ], [ %5250, %5215 ]
  %5266 = phi float [ %5019, %4972 ], [ %5019, %5079 ], [ %5252, %5215 ]
  %5267 = phi float [ %5020, %4972 ], [ %5020, %5079 ], [ %5254, %5215 ]
  %5268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.i32 %5268, 0
  %5270 = icmp eq i32 %5269, 0
  br i1 %5270, label %5705, label %5271

; <label>:5271                                    ; preds = %5261
  %5272 = fptoui float %66 to i32
  %5273 = fptoui float %67 to i32
  %5274 = lshr i32 %5272, 4
  %5275 = lshr i32 %5273, 4
  %5276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.i32 %5276, 0
  %5278 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5275, i32 %5277, i32 %5274)  ; UMad(a,b,c)
  %5279 = add nsw i32 %5269, -1
  %5280 = call i32 @dx.op.binary.i32(i32 37, i32 %5279, i32 0)  ; IMax(a,b)
  %5281 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %5282 = fptoui float %5281 to i32
  %5283 = lshr i32 %5282, 5
  %5284 = call i32 @dx.op.binary.i32(i32 40, i32 %5283, i32 8191)  ; UMin(a,b)
  %5285 = shl i32 %5284, 2
  %5286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.i32 %5286, 0
  %5288 = lshr i32 %5287, 16
  %5289 = and i32 %5287, 65535
  %5290 = lshr i32 %5287, 21
  %5291 = lshr i32 %5289, 5
  %5292 = call i32 @dx.op.binary.i32(i32 40, i32 %5291, i32 %5280)  ; UMin(a,b)
  %5293 = icmp ugt i32 %5290, %5292
  br i1 %5293, label %5705, label %5294

; <label>:5294                                    ; preds = %5271
  br label %5295

; <label>:5295                                    ; preds = %5695, %5294
  %5296 = phi i32 [ %5702, %5695 ], [ %5290, %5294 ]
  %5297 = phi float [ %5696, %5695 ], [ %5262, %5294 ]
  %5298 = phi float [ %5697, %5695 ], [ %5263, %5294 ]
  %5299 = phi float [ %5698, %5695 ], [ %5264, %5294 ]
  %5300 = phi float [ %5699, %5695 ], [ %5265, %5294 ]
  %5301 = phi float [ %5700, %5695 ], [ %5266, %5294 ]
  %5302 = phi float [ %5701, %5695 ], [ %5267, %5294 ]
  %5303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.i32 %5303, 0
  %5305 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5278, i32 %5304, i32 %5296)  ; UMad(a,b,c)
  %5306 = shl i32 %5305, 2
  %5307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5306, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.i32 %5307, 0
  %5309 = shl i32 %5296, 5
  %5310 = sub nsw i32 %5288, %5309
  %5311 = call i32 @dx.op.binary.i32(i32 37, i32 %5310, i32 0)  ; IMax(a,b)
  %5312 = call i32 @dx.op.binary.i32(i32 38, i32 %5311, i32 31)  ; IMin(a,b)
  %5313 = sub nsw i32 1, %5288
  %5314 = add nsw i32 %5313, %5289
  %5315 = call i32 @dx.op.binary.i32(i32 37, i32 %5314, i32 0)  ; IMax(a,b)
  %5316 = call i32 @dx.op.binary.i32(i32 38, i32 %5315, i32 32)  ; IMin(a,b)
  %5317 = and i32 %5316, 31
  %5318 = shl i32 -1, %5317
  %5319 = xor i32 %5318, -1
  %5320 = and i32 %5312, 31
  %5321 = shl i32 %5319, %5320
  %5322 = icmp eq i32 %5316, 32
  %5323 = select i1 %5322, i32 -1, i32 %5321
  %5324 = and i32 %5323, %5308
  %5325 = icmp eq i32 %5324, 0
  br i1 %5325, label %5695, label %5326

; <label>:5326                                    ; preds = %5295
  br label %5327

; <label>:5327                                    ; preds = %5407, %5326
  %5328 = phi i32 [ %5339, %5407 ], [ %5324, %5326 ]
  %5329 = phi float [ %5408, %5407 ], [ %5297, %5326 ]
  %5330 = phi float [ %5409, %5407 ], [ %5298, %5326 ]
  %5331 = phi float [ %5410, %5407 ], [ %5299, %5326 ]
  %5332 = phi float [ %5411, %5407 ], [ %5300, %5326 ]
  %5333 = phi float [ %5412, %5407 ], [ %5301, %5326 ]
  %5334 = phi float [ %5413, %5407 ], [ %5302, %5326 ]
  %5335 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5328)  ; FirstbitLo(value)
  %5336 = add i32 %5335, %5309
  %5337 = and i32 %5335, 31
  %5338 = shl i32 1, %5337
  %5339 = xor i32 %5338, %5328
  %5340 = mul i32 %5336, 112
  %5341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5340, i32 undef)  ; BufferLoad(srv,index,wot)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.ResRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.ResRet.f32 %5341, 2
  %5345 = or i32 %5340, 12
  %5346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5345, i32 undef)  ; BufferLoad(srv,index,wot)
  %5347 = extractvalue %dx.types.ResRet.f32 %5346, 0
  %5348 = add i32 %5340, 44
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = add i32 %5340, 48
  %5352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5351, i32 undef)  ; BufferLoad(srv,index,wot)
  %5353 = extractvalue %dx.types.ResRet.f32 %5352, 0
  %5354 = extractvalue %dx.types.ResRet.f32 %5352, 1
  %5355 = extractvalue %dx.types.ResRet.f32 %5352, 2
  %5356 = add i32 %5340, 80
  %5357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 1
  %5359 = extractvalue %dx.types.ResRet.f32 %5357, 2
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5343, float %5344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = select i1 %192, float %5358, float %5342
  %5362 = select i1 %192, float %5360, float %5343
  %5363 = select i1 %192, float %5359, float %5344
  %5364 = fsub fast float %5353, %121
  %5365 = fsub fast float %5354, %122
  %5366 = fsub fast float %5355, %123
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = call float @dx.op.unary.f32(i32 24, float %5367)  ; Sqrt(value)
  %5369 = fdiv fast float 1.000000e+00, %5368
  %5370 = fmul fast float %5369, %5364
  %5371 = fmul fast float %5369, %5365
  %5372 = fmul fast float %5369, %5366
  %5373 = fadd fast float %5368, %5347
  %5374 = fdiv fast float 1.000000e+00, %5373
  %5375 = fmul float %5350, %5374
  %5376 = fmul float %5375, %5375
  %5377 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5378 = and i32 %5338, %5324
  %5379 = icmp eq i32 %5378, 0
  br i1 %5379, label %5402, label %5380, !dx.controlflow.hints !87

; <label>:5380                                    ; preds = %5327
  %5381 = lshr i32 %5272, 5
  %5382 = lshr i32 %5273, 5
  %5383 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5381, i32 %5382, i32 %5336, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5384 = extractvalue %dx.types.ResRet.i32 %5383, 0
  %5385 = and i32 %5384, 3
  %5386 = icmp eq i32 %5385, 0
  %5387 = select i1 %5386, float 1.000000e+00, float 0.000000e+00
  %5388 = icmp eq i32 %5385, 3
  br i1 %5388, label %5389, label %5402

; <label>:5389                                    ; preds = %5380
  %5390 = lshr i32 %5384, 10
  %5391 = and i32 %5390, 8160
  %5392 = and i32 %5273, 31
  %5393 = or i32 %5391, %5392
  %5394 = lshr i32 %5384, 1
  %5395 = and i32 %5394, 16352
  %5396 = and i32 %5272, 31
  %5397 = or i32 %5395, %5396
  %5398 = lshr i32 %5384, 23
  %5399 = and i32 %5398, 255
  %5400 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5397, i32 %5393, i32 %5399, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  br label %5402

; <label>:5402                                    ; preds = %5389, %5380, %5327
  %5403 = phi float [ %5401, %5389 ], [ %5387, %5380 ], [ 0.000000e+00, %5327 ]
  %5404 = call float @dx.op.binary.f32(i32 36, float %5403, float %5403)  ; FMin(a,b)
  %5405 = call float @dx.op.binary.f32(i32 36, float %5403, float %5404)  ; FMin(a,b)
  %5406 = fcmp fast ogt float %5405, 0.000000e+00
  br i1 %5406, label %5415, label %5407, !dx.controlflow.hints !88

; <label>:5407                                    ; preds = %5651, %5402
  %5408 = phi float [ %5329, %5402 ], [ %5691, %5651 ]
  %5409 = phi float [ %5330, %5402 ], [ %5692, %5651 ]
  %5410 = phi float [ %5331, %5402 ], [ %5693, %5651 ]
  %5411 = phi float [ %5332, %5402 ], [ %5685, %5651 ]
  %5412 = phi float [ %5333, %5402 ], [ %5686, %5651 ]
  %5413 = phi float [ %5334, %5402 ], [ %5687, %5651 ]
  %5414 = icmp eq i32 %5328, %5338
  br i1 %5414, label %5694, label %5327

; <label>:5415                                    ; preds = %5402
  %5416 = fmul fast float %5403, %5361
  %5417 = fmul fast float %5403, %5362
  %5418 = fmul fast float %5403, %5363
  %5419 = fsub fast float %5355, %3454
  %5420 = fcmp fast ogt float %5419, 0.000000e+00
  %5421 = fsub fast float %123, %3454
  %5422 = fcmp fast ogt float %5421, 0.000000e+00
  %5423 = xor i1 %5422, %5420
  %5424 = fsub fast float %3454, %5355
  %5425 = fmul fast float %5424, 2.000000e+00
  %5426 = fadd fast float %5425, %5355
  %5427 = select i1 %5423, float %5355, float %5426
  %5428 = fsub fast float %5427, %123
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5428, float %5364, float %5365, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = call float @dx.op.unary.f32(i32 25, float %5429)  ; Rsqrt(value)
  %5431 = fmul fast float %5430, %5364
  %5432 = fmul fast float %5430, %5365
  %5433 = fmul fast float %5430, %5428
  %5434 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3462)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5436 = fdiv fast float 1.000000e+00, %5435
  %5437 = fmul fast float %5436, %5434
  %5438 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5421, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = fcmp fast ogt float %5438, 0.000000e+00
  %5440 = fcmp fast olt float %5438, 0.000000e+00
  %5441 = zext i1 %5439 to i32
  %5442 = zext i1 %5440 to i32
  %5443 = sub nsw i32 %5441, %5442
  %5444 = sitofp i32 %5443 to float
  %5445 = fsub fast float %5427, %3454
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5445, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fcmp fast ogt float %5446, 0.000000e+00
  %5448 = fcmp fast olt float %5446, 0.000000e+00
  %5449 = zext i1 %5447 to i32
  %5450 = zext i1 %5448 to i32
  %5451 = sub nsw i32 %5449, %5450
  %5452 = sitofp i32 %5451 to float
  %5453 = fcmp fast une float %5444, %5452
  br i1 %5453, label %5454, label %5464

; <label>:5454                                    ; preds = %5415
  %5455 = fmul fast float %5437, %5433
  %5456 = fmul fast float %5437, %5432
  %5457 = fmul fast float %5437, %5431
  %5458 = fmul fast float %5457, %5457
  %5459 = fmul fast float %5456, %5456
  %5460 = fadd fast float %5458, %5459
  %5461 = fmul fast float %5455, %5455
  %5462 = fadd fast float %5460, %5461
  %5463 = call float @dx.op.unary.f32(i32 24, float %5462)  ; Sqrt(value)
  br label %5476

; <label>:5464                                    ; preds = %5415
  %5465 = icmp slt i32 %5443, 0
  br i1 %5465, label %5466, label %5476

; <label>:5466                                    ; preds = %5464
  %5467 = fsub fast float %121, %5353
  %5468 = fsub fast float %122, %5354
  %5469 = fsub fast float %123, %5427
  %5470 = fmul fast float %5467, %5467
  %5471 = fmul fast float %5468, %5468
  %5472 = fadd fast float %5470, %5471
  %5473 = fmul fast float %5469, %5469
  %5474 = fadd fast float %5472, %5473
  %5475 = call float @dx.op.unary.f32(i32 24, float %5474)  ; Sqrt(value)
  br label %5476

; <label>:5476                                    ; preds = %5466, %5464, %5454
  %5477 = phi float [ %5463, %5454 ], [ %5475, %5466 ], [ 0.000000e+00, %5464 ]
  %5478 = and i1 %5422, %5420
  %5479 = fsub fast float -0.000000e+00, %5477
  %5480 = select i1 %5478, float -0.000000e+00, float %5479
  %5481 = fmul fast float %3455, 0x3FF7154760000000
  %5482 = fmul fast float %5481, %5480
  %5483 = fmul fast float %3456, 0x3FF7154760000000
  %5484 = fmul fast float %5483, %5480
  %5485 = fmul fast float %3457, 0x3FF7154760000000
  %5486 = fmul fast float %5485, %5480
  %5487 = call float @dx.op.unary.f32(i32 21, float %5482)  ; Exp(value)
  %5488 = call float @dx.op.unary.f32(i32 21, float %5484)  ; Exp(value)
  %5489 = call float @dx.op.unary.f32(i32 21, float %5486)  ; Exp(value)
  %5490 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5491 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5492 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5493 = fmul fast float %5416, %5490
  %5494 = fmul fast float %5417, %5491
  %5495 = fmul fast float %5418, %5492
  %5496 = fsub fast float %5370, %3654
  %5497 = fsub fast float %5371, %3653
  %5498 = fsub fast float %5372, %3652
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = call float @dx.op.unary.f32(i32 25, float %5499)  ; Rsqrt(value)
  %5501 = fmul fast float %5500, %5496
  %5502 = fmul fast float %5500, %5497
  %5503 = fmul fast float %5500, %5498
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5371, float %5372, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = call float @dx.op.dot3.f32(i32 55, float %3651, float %3650, float %3649, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5507 = fmul fast float %5506, %5377
  %5508 = fmul fast float %5506, %5506
  %5509 = fmul fast float %5508, %5030
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5507, %5510
  %5512 = bitcast float %5367 to i32
  %5513 = ashr i32 %5512, 1
  %5514 = sub nsw i32 1597463007, %5513
  %5515 = bitcast i32 %5514 to float
  %5516 = fmul fast float %5515, %5364
  %5517 = fmul fast float %5515, %5365
  %5518 = fmul fast float %5515, %5366
  %5519 = fsub fast float %5516, %3654
  %5520 = fsub fast float %5517, %3653
  %5521 = fsub fast float %5518, %3652
  %5522 = call float @dx.op.dot3.f32(i32 55, float %5519, float %5520, float %5521, float %5519, float %5520, float %5521)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = call float @dx.op.unary.f32(i32 25, float %5522)  ; Rsqrt(value)
  %5524 = fmul fast float %5519, %5523
  %5525 = fmul fast float %5520, %5523
  %5526 = fmul fast float %5521, %5523
  %5527 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %5524, float %5525, float %5526)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5527, %5527
  %5529 = call float @dx.op.unary.f32(i32 6, float %5504)  ; FAbs(value)
  %5530 = fsub fast float 1.000000e+00, %3664
  %5531 = call float @dx.op.binary.f32(i32 35, float %5530, float 0x3F847AE140000000)  ; FMax(a,b)
  %5532 = fmul fast float %5531, %5531
  %5533 = fmul fast float %5532, %5532
  %5534 = fsub fast float 1.000000e+00, %5533
  %5535 = fmul fast float %3668, %3668
  %5536 = fmul fast float %5535, %5534
  %5537 = fadd fast float %5536, %5533
  %5538 = bitcast float %5537 to i32
  %5539 = ashr i32 %5538, 1
  %5540 = add nsw i32 %5539, 532487669
  %5541 = bitcast i32 %5540 to float
  %5542 = fadd fast float %5541, %3668
  %5543 = fmul fast float %5533, %5528
  %5544 = fsub fast float 1.000000e+00, %5528
  %5545 = fadd fast float %5544, %5543
  %5546 = fmul fast float %5529, %5529
  %5547 = fmul fast float %5546, %5534
  %5548 = fadd fast float %5547, %5533
  %5549 = bitcast float %5548 to i32
  %5550 = ashr i32 %5549, 1
  %5551 = add nsw i32 %5550, 532487669
  %5552 = bitcast i32 %5551 to float
  %5553 = fadd fast float %5552, %5529
  %5554 = fmul fast float %5545, %5545
  %5555 = fmul fast float %5554, %5542
  %5556 = fmul fast float %5555, %5553
  %5557 = fdiv fast float 1.000000e+00, %5556
  %5558 = bitcast float %5533 to i32
  %5559 = sitofp i32 %5558 to float
  %5560 = fmul fast float %5559, 0x3FE7F73180000000
  %5561 = fadd fast float %5560, 0x41AFE27C40000000
  %5562 = fptosi float %5561 to i32
  %5563 = bitcast i32 %5562 to float
  %5564 = fmul fast float %5350, 0x3FD80E9D60000000
  %5565 = fmul fast float %5564, %5515
  %5566 = fadd fast float %5563, %5565
  %5567 = bitcast float %5566 to i32
  %5568 = sub nsw i32 2129859010, %5567
  %5569 = bitcast i32 %5568 to float
  %5570 = fmul fast float %5533, %5557
  %5571 = fmul fast float %5570, %5563
  %5572 = fmul fast float %5571, %5569
  %5573 = call float @dx.op.unary.f32(i32 6, float %5505)  ; FAbs(value)
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = bitcast float %5574 to i32
  %5576 = sitofp i32 %5575 to float
  %5577 = fmul fast float %5576, 5.000000e+00
  %5578 = fadd fast float %5577, 0xC1EFBF8940000000
  %5579 = fptosi float %5578 to i32
  %5580 = bitcast i32 %5579 to float
  %5581 = fsub fast float 1.000000e+00, %3655
  %5582 = fsub fast float 1.000000e+00, %3656
  %5583 = fsub fast float 1.000000e+00, %3666
  %5584 = fmul fast float %5580, %5581
  %5585 = fmul fast float %5580, %5582
  %5586 = fmul fast float %5580, %5583
  %5587 = fadd fast float %5584, %3655
  %5588 = fadd fast float %5585, %3656
  %5589 = fadd fast float %5586, %3666
  br i1 %4945, label %5590, label %5613

; <label>:5590                                    ; preds = %5476
  %5591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3032, float %5573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5592 = extractvalue %dx.types.ResRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.ResRet.f32 %5591, 1
  %5594 = extractvalue %dx.types.ResRet.f32 %5591, 2
  %5595 = fadd fast float %5592, -5.000000e-01
  %5596 = fadd fast float %5593, -5.000000e-01
  %5597 = fadd fast float %5594, -5.000000e-01
  %5598 = fmul fast float %3655, 4.000000e+00
  %5599 = fmul fast float %5598, %5581
  %5600 = fmul fast float %5599, %5595
  %5601 = fmul fast float %3656, 4.000000e+00
  %5602 = fmul fast float %5601, %5582
  %5603 = fmul fast float %5602, %5596
  %5604 = fmul fast float %3666, 4.000000e+00
  %5605 = fmul fast float %5604, %5583
  %5606 = fmul fast float %5605, %5597
  %5607 = fadd fast float %5600, %5587
  %5608 = fadd fast float %5603, %5588
  %5609 = fadd fast float %5606, %5589
  %5610 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5611 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  br label %5613

; <label>:5613                                    ; preds = %5590, %5476
  %5614 = phi float [ %5610, %5590 ], [ %5587, %5476 ]
  %5615 = phi float [ %5611, %5590 ], [ %5588, %5476 ]
  %5616 = phi float [ %5612, %5590 ], [ %5589, %5476 ]
  %5617 = fmul fast float %5504, 9.843750e-01
  %5618 = fadd fast float %5617, 7.812500e-03
  %5619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5618, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5620 = extractvalue %dx.types.ResRet.f32 %5619, 2
  %5621 = extractvalue %dx.types.ResRet.f32 %5619, 3
  %5622 = fmul fast float %5620, %3655
  %5623 = fmul fast float %5620, %3656
  %5624 = fmul fast float %5620, %3666
  %5625 = fadd fast float %5622, %5621
  %5626 = fadd fast float %5623, %5621
  %5627 = fadd fast float %5624, %5621
  br i1 %4945, label %5628, label %5651

; <label>:5628                                    ; preds = %5613
  %5629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3032, float %5504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5630 = extractvalue %dx.types.ResRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.ResRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.ResRet.f32 %5629, 2
  %5633 = fadd fast float %5630, -5.000000e-01
  %5634 = fadd fast float %5631, -5.000000e-01
  %5635 = fadd fast float %5632, -5.000000e-01
  %5636 = fmul fast float %3655, 4.000000e+00
  %5637 = fmul fast float %5636, %5581
  %5638 = fmul fast float %5637, %5633
  %5639 = fmul fast float %3656, 4.000000e+00
  %5640 = fmul fast float %5639, %5582
  %5641 = fmul fast float %5640, %5634
  %5642 = fmul fast float %3666, 4.000000e+00
  %5643 = fmul fast float %5642, %5583
  %5644 = fmul fast float %5643, %5635
  %5645 = fadd fast float %5638, %5625
  %5646 = fadd fast float %5641, %5626
  %5647 = fadd fast float %5644, %5627
  %5648 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5649 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  br label %5651

; <label>:5651                                    ; preds = %5628, %5613
  %5652 = phi float [ %5648, %5628 ], [ %5625, %5613 ]
  %5653 = phi float [ %5649, %5628 ], [ %5626, %5613 ]
  %5654 = phi float [ %5650, %5628 ], [ %5627, %5613 ]
  %5655 = call float @dx.op.binary.f32(i32 35, float %5653, float %5654)  ; FMax(a,b)
  %5656 = call float @dx.op.binary.f32(i32 35, float %5652, float %5655)  ; FMax(a,b)
  %5657 = fsub fast float 1.000000e+00, %5656
  %5658 = fmul fast float %5614, %5572
  %5659 = fmul fast float %5615, %5572
  %5660 = fmul fast float %5616, %5572
  %5661 = fsub fast float 1.000000e+00, %5505
  %5662 = bitcast float %5661 to i32
  %5663 = sitofp i32 %5662 to float
  %5664 = fmul fast float %5663, 5.000000e+00
  %5665 = fadd fast float %5664, 0xC1EFBF8940000000
  %5666 = fptosi float %5665 to i32
  %5667 = bitcast i32 %5666 to float
  %5668 = fmul fast float %5667, %3031
  %5669 = fmul fast float %5657, %5668
  %5670 = fmul fast float %5669, %4995
  %5671 = fmul fast float %5669, %4996
  %5672 = fmul fast float %5669, %4997
  %5673 = fadd fast float %5670, %5658
  %5674 = fadd fast float %5671, %5659
  %5675 = fadd fast float %5672, %5660
  %5676 = fmul fast float %5493, %3052
  %5677 = fmul fast float %5676, %5511
  %5678 = fmul fast float %5677, %5657
  %5679 = fmul fast float %5494, %3052
  %5680 = fmul fast float %5679, %5511
  %5681 = fmul fast float %5680, %5657
  %5682 = fmul fast float %5495, %3052
  %5683 = fmul fast float %5682, %5511
  %5684 = fmul fast float %5683, %5657
  %5685 = fadd fast float %5678, %5332
  %5686 = fadd fast float %5681, %5333
  %5687 = fadd fast float %5684, %5334
  %5688 = fmul fast float %5677, %5673
  %5689 = fmul fast float %5680, %5674
  %5690 = fmul fast float %5683, %5675
  %5691 = fadd fast float %5688, %5329
  %5692 = fadd fast float %5689, %5330
  %5693 = fadd fast float %5690, %5331
  br label %5407

; <label>:5694                                    ; preds = %5407
  br label %5695

; <label>:5695                                    ; preds = %5694, %5295
  %5696 = phi float [ %5297, %5295 ], [ %5408, %5694 ]
  %5697 = phi float [ %5298, %5295 ], [ %5409, %5694 ]
  %5698 = phi float [ %5299, %5295 ], [ %5410, %5694 ]
  %5699 = phi float [ %5300, %5295 ], [ %5411, %5694 ]
  %5700 = phi float [ %5301, %5295 ], [ %5412, %5694 ]
  %5701 = phi float [ %5302, %5295 ], [ %5413, %5694 ]
  %5702 = add i32 %5296, 1
  %5703 = icmp ugt i32 %5702, %5292
  br i1 %5703, label %5704, label %5295

; <label>:5704                                    ; preds = %5695
  br label %5705

; <label>:5705                                    ; preds = %5704, %5271, %5261
  %5706 = phi float [ %5262, %5261 ], [ %5262, %5271 ], [ %5696, %5704 ]
  %5707 = phi float [ %5263, %5261 ], [ %5263, %5271 ], [ %5697, %5704 ]
  %5708 = phi float [ %5264, %5261 ], [ %5264, %5271 ], [ %5698, %5704 ]
  %5709 = phi float [ %5265, %5261 ], [ %5265, %5271 ], [ %5699, %5704 ]
  %5710 = phi float [ %5266, %5261 ], [ %5266, %5271 ], [ %5700, %5704 ]
  %5711 = phi float [ %5267, %5261 ], [ %5267, %5271 ], [ %5701, %5704 ]
  %5712 = call float @dx.op.unary.f32(i32 24, float %3658)  ; Sqrt(value)
  %5713 = call float @dx.op.unary.f32(i32 24, float %3659)  ; Sqrt(value)
  %5714 = call float @dx.op.unary.f32(i32 24, float %3660)  ; Sqrt(value)
  %5715 = fmul fast float %5712, %5709
  %5716 = fmul fast float %5713, %5710
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  br i1 %192, label %5719, label %5739

; <label>:5719                                    ; preds = %5705
  %5720 = fadd fast float %5711, %3029
  %5721 = fmul fast float %5720, %3030
  %5722 = fsub fast float 1.000000e+00, %3030
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 3
  %5726 = fmul fast float %5725, %5723
  %5727 = fadd fast float %5726, %5721
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = fmul fast float %5729, %5001
  %5731 = fsub fast float %5727, %5730
  %5732 = fadd fast float %5716, %5715
  %5733 = fmul fast float %5718, %5732
  %5734 = extractvalue %dx.types.CBufRet.f32 %5724, 1
  %5735 = fsub fast float %5731, %5734
  %5736 = extractvalue %dx.types.CBufRet.f32 %5724, 2
  %5737 = fmul fast float %5735, %5736
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  br label %5755

; <label>:5739                                    ; preds = %5705
  %5740 = fmul fast float %5714, %5711
  %5741 = fmul fast float %5718, %5715
  %5742 = fmul fast float %5718, %5716
  %5743 = fmul fast float %5740, %5718
  %5744 = add i32 %46, 276
  %5745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5744, i32 undef)  ; BufferLoad(srv,index,wot)
  %5746 = extractvalue %dx.types.ResRet.i32 %5745, 0
  %5747 = and i32 %5746, 32
  %5748 = icmp eq i32 %5747, 0
  br i1 %5748, label %5755, label %5749

; <label>:5749                                    ; preds = %5739
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = fmul fast float %5751, 0x3FE99999A0000000
  %5753 = fadd fast float %5751, %5741
  %5754 = fadd fast float %5752, %5743
  br label %5755

; <label>:5755                                    ; preds = %5749, %5739, %5719
  %5756 = phi float [ %5733, %5719 ], [ %5753, %5749 ], [ %5741, %5739 ]
  %5757 = phi float [ %5738, %5719 ], [ %5742, %5749 ], [ %5742, %5739 ]
  %5758 = phi float [ 1.000000e+00, %5719 ], [ %5754, %5749 ], [ %5743, %5739 ]
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = fmul fast float %5760, %5707
  %5762 = fmul fast float %5760, %5708
  %5763 = fadd fast float %5707, %5706
  %5764 = select i1 %192, float %5763, float %5706
  %5765 = fmul float %5764, %5760
  %5766 = select i1 %192, float 0.000000e+00, float %5761
  %5767 = select i1 %192, float 0.000000e+00, float %5762
  %5768 = fmul fast float %5756, %5712
  %5769 = fmul fast float %5757, %5713
  %5770 = fmul fast float %5758, %5714
  %5771 = fadd fast float %5765, %5768
  %5772 = fadd fast float %5766, %5769
  %5773 = fadd fast float %5767, %5770
  %5774 = select i1 %192, float %5757, float %5772
  %5775 = select i1 %192, float %5758, float %5773
  %5776 = call float @dx.op.binary.f32(i32 36, float %5771, float 3.225500e+04)  ; FMin(a,b)
  %5777 = call float @dx.op.binary.f32(i32 36, float %5774, float 3.225500e+04)  ; FMin(a,b)
  %5778 = call float @dx.op.binary.f32(i32 36, float %5775, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5776)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5777)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5778)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[25 x i32] [i32 23, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !78}
!59 = !{!60, !76, null}
!60 = !{!61, !64, !66, !68, !69, !71, !73, !74, !75}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 1, i8 0, !65}
!65 = !{i32 3, i32 3}
!66 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 2, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !67}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!70 = !{i32 3, i32 15}
!71 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 5, i8 0, !72}
!72 = !{i32 3, i32 1}
!73 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 5, i8 1, !72}
!74 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 5, i8 2, !72}
!75 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!76 = !{!77}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
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

