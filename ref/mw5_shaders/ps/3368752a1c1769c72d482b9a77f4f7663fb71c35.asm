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
; SV_IsFrontFace           0    y          5    FFACE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 50ede22132386f47e1dca9fbe39315c8
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
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
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
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = icmp ne i32 %38, 0
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = fmul fast float %59, %53
  %61 = fmul fast float %59, %54
  %62 = select i1 %39, float 1.000000e+00, float -1.000000e+00
  %63 = fmul fast float %45, %62
  %64 = fmul fast float %46, %62
  %65 = fmul fast float %47, %62
  %66 = fmul fast float %62, %41
  %67 = fmul fast float %42, %62
  %68 = fmul fast float %43, %62
  %69 = fmul fast float %46, %43
  %70 = fmul fast float %47, %42
  %71 = fsub fast float %69, %70
  %72 = fmul fast float %47, %41
  %73 = fmul fast float %45, %43
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %45, %42
  %76 = fmul fast float %46, %41
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %44, %62
  %79 = fmul fast float %78, %71
  %80 = fmul fast float %78, %74
  %81 = fmul fast float %78, %77
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fmul fast float %85, %60
  %87 = fmul fast float %84, 2.000000e+00
  %88 = fmul fast float %87, %61
  %89 = fsub fast float 1.000000e+00, %86
  %90 = fsub fast float 1.000000e+00, %88
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fmul fast float %89, %92
  %96 = fmul fast float %89, %93
  %97 = fmul fast float %89, %94
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %90, %99
  %103 = fmul fast float %90, %100
  %104 = fmul fast float %90, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fadd fast float %102, %106
  %110 = fadd fast float %109, %95
  %111 = fadd fast float %103, %107
  %112 = fadd fast float %111, %96
  %113 = fadd fast float %104, %108
  %114 = fadd fast float %113, %97
  %115 = fmul fast float %110, %55
  %116 = fmul fast float %112, %55
  %117 = fmul fast float %114, %55
  %118 = fadd fast float %50, 5.000000e-01
  %119 = fptoui float %118 to i32
  %120 = shl i32 %119, 3
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = or i32 %120, 4
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %122, 8191
  %127 = lshr i32 %122, 13
  %128 = and i32 %127, 8191
  %129 = lshr i32 %122, 26
  %130 = and i32 %125, 65535
  %131 = lshr i32 %125, 16
  %132 = uitofp i32 %130 to float
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %135 = uitofp i32 %131 to float
  %136 = uitofp i32 %126 to float
  %137 = fmul fast float %134, %136
  %138 = uitofp i32 %128 to float
  %139 = fmul fast float %134, %138
  %140 = fmul fast float %134, %48
  %141 = fmul fast float %140, %132
  %142 = fmul fast float %134, %49
  %143 = fmul fast float %142, %135
  %144 = fadd fast float %141, %137
  %145 = fadd fast float %139, %143
  %146 = uitofp i32 %129 to float
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %60
  %151 = fmul fast float %149, %61
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %153, 114688
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, float %150, float 0.000000e+00
  %157 = select i1 %155, float %151, float 0.000000e+00
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fmul fast float %159, 2.550000e+02
  %161 = fptoui float %160 to i32
  %162 = select i1 %155, i32 %161, i32 0
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 3
  %166 = and i32 %165, 3
  %167 = icmp ne i32 %166, 0
  %168 = and i32 %165, 4
  %169 = icmp ne i32 %168, 0
  %170 = and i1 %167, %169
  br i1 %170, label %171, label %182

; <label>:171                                     ; preds = %0
  %172 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %173 = fmul fast float %172, %61
  %174 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %175 = fmul fast float %174, %60
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %175, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = fcmp fast olt float %178, %180
  br label %185

; <label>:182                                     ; preds = %0
  %183 = icmp eq i32 %168, 0
  %184 = and i1 %167, %183
  br label %185

; <label>:185                                     ; preds = %182, %171
  %186 = phi i1 [ %181, %171 ], [ %184, %182 ]
  %187 = add i32 %40, 60
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %199 = add i32 %40, 72
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %201, 8
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = lshr i32 %201, 16
  %210 = and i32 %209, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F70101020000000
  %213 = add i32 %40, 36
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = add i32 %40, 96
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %40, 24
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add i32 %40, 28
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = or i32 %224, %221
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %687, label %227

; <label>:227                                     ; preds = %185
  %228 = lshr i32 %218, 16
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = fmul fast float %229, 0x3F50624DE0000000
  %231 = and i32 %218, 65535
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %232, 0x3F50624DE0000000
  %234 = lshr i32 %215, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = and i32 %215, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = add i32 %40, 92
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = fmul fast float %242, 0x3F50624DE0000000
  %244 = add i32 %40, 40
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = lshr i32 %246, 24
  %250 = add i32 %40, 100
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %252, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = add i32 %40, 32
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = lshr i32 %259, 22
  %261 = shl nuw nsw i32 %260, 5
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = shl i32 %259, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %271 = fmul fast float %270, 1.000000e+03
  %272 = fmul fast float %233, %271
  %273 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %274 = fadd fast float %273, %237
  %275 = fmul fast float %230, %271
  %276 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %277 = fadd fast float %276, %235
  %278 = fmul fast float %243, %271
  %279 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %280 = fmul fast float %279, 0x401921FB60000000
  %281 = fadd fast float %280, %262
  %282 = call float @dx.op.unary.f32(i32 13, float %281)  ; Sin(value)
  %283 = call float @dx.op.unary.f32(i32 12, float %281)  ; Cos(value)
  %284 = fsub fast float -0.000000e+00, %282
  %285 = fadd fast float %51, -5.000000e-01
  %286 = fadd fast float %52, -5.000000e-01
  %287 = fmul fast float %254, %285
  %288 = fmul fast float %256, %286
  %289 = fadd fast float %287, 5.000000e-01
  %290 = fadd fast float %288, 5.000000e-01
  %291 = fmul fast float %265, %289
  %292 = fmul fast float %268, %290
  %293 = fmul fast float %283, %291
  %294 = call float @dx.op.tertiary.f32(i32 46, float %284, float %292, float %293)  ; FMad(a,b,c)
  %295 = fmul fast float %282, %291
  %296 = call float @dx.op.tertiary.f32(i32 46, float %283, float %292, float %295)  ; FMad(a,b,c)
  %297 = fadd fast float %274, %294
  %298 = fadd fast float %277, %296
  %299 = icmp ugt i32 %248, 1
  %300 = icmp ugt i32 %246, 33554431
  %301 = or i1 %300, %299
  br i1 %301, label %302, label %327

; <label>:302                                     ; preds = %227
  %303 = add i32 %40, 84
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = lshr i32 %305, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %270, %307
  %309 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %310 = mul nuw nsw i32 %248, %249
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %309, %311
  %313 = call float @dx.op.unary.f32(i32 27, float %312)  ; Round_ni(value)
  %314 = fptoui float %313 to i32
  %315 = urem i32 %314, %248
  %316 = udiv i32 %314, %249
  %317 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %318 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %319 = uitofp i32 %315 to float
  %320 = uitofp i32 %316 to float
  %321 = fadd fast float %317, %319
  %322 = fadd fast float %318, %320
  %323 = uitofp i32 %248 to float
  %324 = uitofp i32 %249 to float
  %325 = fdiv fast float %321, %323
  %326 = fdiv fast float %322, %324
  br label %327

; <label>:327                                     ; preds = %302, %227
  %328 = phi float [ %325, %302 ], [ %297, %227 ]
  %329 = phi float [ %326, %302 ], [ %298, %227 ]
  %330 = and i32 %221, 16
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %528, label %332

; <label>:332                                     ; preds = %327
  %333 = add i32 %40, 120
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = add i32 %335, 0
  %337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %337, %dx.types.Handle %56, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = extractvalue %dx.types.ResRet.f32 %338, 1
  %341 = extractvalue %dx.types.ResRet.f32 %338, 2
  %342 = extractvalue %dx.types.ResRet.f32 %338, 3
  %343 = and i32 %246, 255
  %344 = uitofp i32 %343 to float
  %345 = lshr i32 %246, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %342, %344
  %349 = fadd fast float %348, %347
  %350 = fmul fast float %349, 0x3F70101000000000
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 512
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %363, label %355

; <label>:355                                     ; preds = %332
  %356 = add i32 %40, 140
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %57, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  br label %363

; <label>:363                                     ; preds = %355, %332
  %364 = phi float [ %362, %355 ], [ 1.000000e+00, %332 ]
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 33554432
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %475, label %369

; <label>:369                                     ; preds = %363
  %370 = add i32 %40, 80
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %40, 84
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = lshr i32 %383, 24
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = and i32 %383, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F70101020000000
  %390 = lshr i32 %383, 8
  %391 = and i32 %390, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = lshr i32 %383, 16
  %395 = and i32 %394, 255
  %396 = uitofp i32 %395 to float
  %397 = fmul fast float %396, 0x3F70101020000000
  %398 = add i32 %40, 76
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = lshr i32 %400, 24
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = and i32 %400, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = lshr i32 %400, 8
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = lshr i32 %400, 16
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F70101020000000
  %415 = bitcast float %339 to i32
  %416 = ashr i32 %415, 1
  %417 = sub nsw i32 1597463174, %416
  %418 = bitcast i32 %417 to float
  %419 = fmul fast float %339, 5.000000e-01
  %420 = fmul fast float %418, %418
  %421 = fmul fast float %420, %419
  %422 = fsub fast float 1.500000e+00, %421
  %423 = fmul fast float %418, %339
  %424 = fmul fast float %423, %422
  %425 = bitcast float %340 to i32
  %426 = ashr i32 %425, 1
  %427 = sub nsw i32 1597463174, %426
  %428 = bitcast i32 %427 to float
  %429 = fmul fast float %340, 5.000000e-01
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %430, %429
  %432 = fsub fast float 1.500000e+00, %431
  %433 = fmul fast float %428, %340
  %434 = fmul fast float %433, %432
  %435 = bitcast float %341 to i32
  %436 = ashr i32 %435, 1
  %437 = sub nsw i32 1597463174, %436
  %438 = bitcast i32 %437 to float
  %439 = fmul fast float %341, 5.000000e-01
  %440 = fmul fast float %438, %438
  %441 = fmul fast float %440, %439
  %442 = fsub fast float 1.500000e+00, %441
  %443 = fmul fast float %438, %341
  %444 = fmul fast float %443, %442
  %445 = fsub fast float %424, %406
  %446 = fsub fast float %434, %410
  %447 = fsub fast float %444, %414
  %448 = fmul fast float %445, %374
  %449 = fmul fast float %446, %376
  %450 = fmul fast float %447, %381
  %451 = fadd fast float %448, %389
  %452 = fadd fast float %449, %393
  %453 = fadd fast float %450, %397
  %454 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %455 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %456 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %457 = fmul fast float %454, %454
  %458 = fmul fast float %455, %455
  %459 = fmul fast float %456, %456
  %460 = fsub fast float %457, %339
  %461 = fsub fast float %458, %340
  %462 = fsub fast float %459, %341
  %463 = fmul fast float %460, %364
  %464 = fmul fast float %461, %364
  %465 = fmul fast float %462, %364
  %466 = fadd fast float %463, %339
  %467 = fadd fast float %464, %340
  %468 = fadd fast float %465, %341
  %469 = fadd fast float %386, %350
  %470 = fsub fast float %469, %403
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fsub fast float %471, %350
  %473 = fmul fast float %472, %364
  %474 = fadd fast float %473, %350
  br label %528

; <label>:475                                     ; preds = %363
  %476 = and i32 %366, 134217728
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %512, label %478

; <label>:478                                     ; preds = %475
  %479 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %480 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %481 = call float @dx.op.unary.f32(i32 24, float %212)  ; Sqrt(value)
  %482 = fadd fast float %479, -5.000000e-01
  %483 = fadd fast float %480, -5.000000e-01
  %484 = fadd fast float %481, -5.000000e-01
  %485 = fmul fast float %482, %364
  %486 = fmul fast float %483, %364
  %487 = fmul fast float %484, %364
  %488 = fadd fast float %485, 5.000000e-01
  %489 = fadd fast float %486, 5.000000e-01
  %490 = fadd fast float %487, 5.000000e-01
  %491 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %492 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %493 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %494 = fmul fast float %488, 2.000000e+00
  %495 = fsub fast float 1.000000e+00, %494
  %496 = fmul fast float %495, %491
  %497 = fadd fast float %496, %494
  %498 = fmul fast float %497, %491
  %499 = fmul fast float %489, 2.000000e+00
  %500 = fsub fast float 1.000000e+00, %499
  %501 = fmul fast float %500, %492
  %502 = fadd fast float %501, %499
  %503 = fmul fast float %502, %492
  %504 = fmul fast float %490, 2.000000e+00
  %505 = fsub fast float 1.000000e+00, %504
  %506 = fmul fast float %505, %493
  %507 = fadd fast float %506, %504
  %508 = fmul fast float %507, %493
  %509 = fmul fast float %498, %498
  %510 = fmul fast float %503, %503
  %511 = fmul fast float %508, %508
  br label %528

; <label>:512                                     ; preds = %475
  %513 = fmul fast float %204, %204
  %514 = fmul fast float %208, %208
  %515 = fmul fast float %212, %212
  %516 = fadd fast float %513, -1.000000e+00
  %517 = fadd fast float %514, -1.000000e+00
  %518 = fadd fast float %515, -1.000000e+00
  %519 = fmul fast float %364, %516
  %520 = fmul fast float %364, %517
  %521 = fmul fast float %364, %518
  %522 = fadd fast float %519, 1.000000e+00
  %523 = fadd fast float %520, 1.000000e+00
  %524 = fadd fast float %521, 1.000000e+00
  %525 = fmul fast float %522, %339
  %526 = fmul fast float %523, %340
  %527 = fmul fast float %524, %341
  br label %528

; <label>:528                                     ; preds = %512, %478, %369, %327
  %529 = phi float [ %474, %369 ], [ %350, %478 ], [ %350, %512 ], [ 0x3FA23C0BE0000000, %327 ]
  %530 = phi float [ %466, %369 ], [ %509, %478 ], [ %525, %512 ], [ 1.000000e+00, %327 ]
  %531 = phi float [ %467, %369 ], [ %510, %478 ], [ %526, %512 ], [ 1.000000e+00, %327 ]
  %532 = phi float [ %468, %369 ], [ %511, %478 ], [ %527, %512 ], [ 1.000000e+00, %327 ]
  %533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.i32 %533, 1
  %535 = and i32 %534, 1
  %536 = icmp ne i32 %535, 0
  %537 = add i32 %40, 116
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 32
  %541 = icmp ne i32 %540, 0
  %542 = and i1 %536, %541
  %543 = select i1 %542, float 1.000000e+00, float %530
  %544 = select i1 %542, float 0x3FD3333340000000, float %531
  %545 = select i1 %542, float 0x3FD3333340000000, float %532
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 32
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %622, label %550

; <label>:550                                     ; preds = %528
  %551 = add i32 %40, 44
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %40, 124
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = add i32 %556, 0
  %558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %56, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = and i32 %553, 255
  %565 = uitofp i32 %564 to float
  %566 = lshr i32 %553, 8
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = lshr i32 %553, 16
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101000000000
  %573 = fmul fast float %560, %565
  %574 = fadd fast float %573, %568
  %575 = fmul fast float %574, 0x3F70101000000000
  %576 = fadd fast float %561, -5.000000e-01
  %577 = fadd fast float %563, -5.000000e-01
  %578 = fmul fast float %576, %572
  %579 = fmul fast float %577, %572
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fadd fast float %579, 5.000000e-01
  %582 = fmul fast float %580, 2.000000e+00
  %583 = fadd fast float %582, -1.000000e+00
  %584 = fmul fast float %581, 2.000000e+00
  %585 = fadd fast float %584, -1.000000e+00
  %586 = fadd fast float %583, %585
  %587 = fmul fast float %586, 5.000000e-01
  %588 = fsub fast float %583, %585
  %589 = fmul fast float %588, 5.000000e-01
  %590 = call float @dx.op.unary.f32(i32 6, float %587)  ; FAbs(value)
  %591 = fsub fast float 1.000000e+00, %590
  %592 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %593 = fsub fast float %591, %592
  %594 = call float @dx.op.dot3.f32(i32 55, float %587, float %589, float %593, float %587, float %589, float %593)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = call float @dx.op.unary.f32(i32 25, float %594)  ; Rsqrt(value)
  %596 = fmul fast float %587, %595
  %597 = fmul fast float %589, %595
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 67108864
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %618, label %602

; <label>:602                                     ; preds = %550
  %603 = add i32 %40, 88
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 65535
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %605, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = fsub fast float %575, %613
  %615 = fmul fast float %614, %607
  %616 = fadd fast float %615, %611
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  br label %618

; <label>:618                                     ; preds = %602, %550
  %619 = phi float [ %617, %602 ], [ %575, %550 ]
  %620 = call float @dx.op.dot2.f32(i32 54, float %596, float %597, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %621 = call float @dx.op.dot2.f32(i32 54, float %596, float %597, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %622

; <label>:622                                     ; preds = %618, %528
  %623 = phi float [ %619, %618 ], [ 0x3FD6666660000000, %528 ]
  %624 = phi float [ %620, %618 ], [ 0.000000e+00, %528 ]
  %625 = phi float [ %621, %618 ], [ 0.000000e+00, %528 ]
  %626 = phi float [ %562, %618 ], [ 1.000000e+00, %528 ]
  %627 = add i32 %40, 64
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = lshr i32 %629, 22
  %631 = shl nuw nsw i32 %630, 5
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 64
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %670, label %637

; <label>:637                                     ; preds = %622
  %638 = add i32 %40, 128
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = add i32 %640, 0
  %642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 131072
  %646 = icmp eq i32 %645, 0
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %642, %dx.types.Handle %56, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = fmul fast float %648, %192
  %652 = fmul fast float %649, %195
  %653 = fmul fast float %650, %198
  br i1 %646, label %660, label %654

; <label>:654                                     ; preds = %637
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %657 = fmul fast float %656, %651
  %658 = fmul fast float %656, %652
  %659 = fmul fast float %656, %653
  br label %660

; <label>:660                                     ; preds = %654, %637
  %661 = phi float [ %657, %654 ], [ %651, %637 ]
  %662 = phi float [ %658, %654 ], [ %652, %637 ]
  %663 = phi float [ %659, %654 ], [ %653, %637 ]
  %664 = fmul fast float %661, %632
  %665 = select i1 %186, float %664, float %661
  %666 = call float @dx.op.dot3.f32(i32 55, float %665, float %662, float %663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = select i1 %186, float 0.000000e+00, float %661
  %668 = select i1 %186, float %666, float %662
  %669 = select i1 %186, float 0.000000e+00, float %663
  br label %670

; <label>:670                                     ; preds = %660, %622
  %671 = phi float [ %667, %660 ], [ 0.000000e+00, %622 ]
  %672 = phi float [ %668, %660 ], [ 0.000000e+00, %622 ]
  %673 = phi float [ %669, %660 ], [ 0.000000e+00, %622 ]
  %674 = add i32 %40, 48
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = lshr i32 %676, 8
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = fmul fast float %681, %682
  %684 = fadd fast float %683, %678
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  br label %687

; <label>:687                                     ; preds = %670, %185
  %688 = phi float [ 0.000000e+00, %185 ], [ %624, %670 ]
  %689 = phi float [ 0.000000e+00, %185 ], [ %625, %670 ]
  %690 = phi float [ 0.000000e+00, %185 ], [ %671, %670 ]
  %691 = phi float [ 0.000000e+00, %185 ], [ %672, %670 ]
  %692 = phi float [ 0.000000e+00, %185 ], [ %673, %670 ]
  %693 = phi float [ 0.000000e+00, %185 ], [ %543, %670 ]
  %694 = phi float [ 0.000000e+00, %185 ], [ %544, %670 ]
  %695 = phi float [ 0.000000e+00, %185 ], [ %545, %670 ]
  %696 = phi float [ 0.000000e+00, %185 ], [ %529, %670 ]
  %697 = phi float [ 0.000000e+00, %185 ], [ 1.000000e+00, %670 ]
  %698 = phi float [ 0.000000e+00, %185 ], [ %623, %670 ]
  %699 = phi float [ 0.000000e+00, %185 ], [ %626, %670 ]
  %700 = phi float [ 0.000000e+00, %185 ], [ %686, %670 ]
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = call float @dx.op.dot2.f32(i32 54, float %688, float %689, float %688, float %689)  ; Dot2(ax,ay,bx,by)
  %704 = fmul fast float %703, 0x3FE3333340000000
  %705 = fsub fast float 1.000000e+00, %704
  %706 = call float @dx.op.dot3.f32(i32 55, float %688, float %689, float %705, float %688, float %689, float %705)  ; Dot3(ax,ay,az,bx,by,bz)
  %707 = call float @dx.op.unary.f32(i32 25, float %706)  ; Rsqrt(value)
  %708 = fmul fast float %707, %688
  %709 = fmul fast float %707, %689
  %710 = fmul fast float %705, %707
  %711 = fmul fast float %710, %63
  %712 = fmul fast float %710, %64
  %713 = fmul fast float %710, %65
  %714 = fmul fast float %708, %66
  %715 = fmul fast float %708, %67
  %716 = fmul fast float %708, %68
  %717 = fadd fast float %711, %714
  %718 = fadd fast float %712, %715
  %719 = fadd fast float %713, %716
  %720 = fmul fast float %709, %79
  %721 = fmul fast float %709, %80
  %722 = fmul fast float %709, %81
  %723 = fadd fast float %717, %720
  %724 = fadd fast float %718, %721
  %725 = fadd fast float %719, %722
  %726 = call float @dx.op.dot3.f32(i32 55, float %723, float %724, float %725, float %723, float %724, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %723, %727
  %729 = fmul fast float %724, %727
  %730 = fmul fast float %725, %727
  %731 = call float @dx.op.unary.f32(i32 83, float %115)  ; DerivCoarseX(value)
  %732 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %733 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %734 = call float @dx.op.unary.f32(i32 84, float %115)  ; DerivCoarseY(value)
  %735 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %736 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %737 = fadd fast float %731, %115
  %738 = fadd fast float %732, %116
  %739 = fadd fast float %733, %117
  %740 = fadd fast float %734, %115
  %741 = fadd fast float %735, %116
  %742 = fadd fast float %736, %117
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %746 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %750 = fmul fast float %744, %60
  %751 = fmul fast float %750, %748
  %752 = fmul fast float %745, %61
  %753 = fmul fast float %752, %749
  %754 = fptoui float %751 to i32
  %755 = fptoui float %753 to i32
  %756 = fadd fast float %744, -1.000000e+00
  %757 = fadd fast float %745, -1.000000e+00
  %758 = fptoui float %756 to i32
  %759 = fptoui float %757 to i32
  %760 = call i32 @dx.op.binary.i32(i32 40, i32 %754, i32 %758)  ; UMin(a,b)
  %761 = call i32 @dx.op.binary.i32(i32 40, i32 %755, i32 %759)  ; UMin(a,b)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %765 = fmul fast float %763, %55
  %766 = fsub fast float %765, %764
  %767 = fadd fast float %746, -1.000000e+00
  %768 = call float @dx.op.binary.f32(i32 36, float %766, float %767)  ; FMin(a,b)
  %769 = fptoui float %768 to i32
  %770 = fptoui float %744 to i32
  %771 = fptoui float %745 to i32
  %772 = mul i32 %769, %771
  %773 = add i32 %772, %761
  %774 = mul i32 %773, %770
  %775 = add i32 %774, %760
  %776 = shl i32 %775, 2
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 1023
  %780 = lshr i32 %778, 10
  %781 = icmp eq i32 %779, 0
  br i1 %781, label %1207, label %782

; <label>:782                                     ; preds = %687
  %783 = and i32 %778, 1023
  br label %784

; <label>:784                                     ; preds = %910, %782
  %785 = phi float [ %911, %910 ], [ 0.000000e+00, %782 ]
  %786 = phi float [ %912, %910 ], [ %702, %782 ]
  %787 = phi float [ %913, %910 ], [ %700, %782 ]
  %788 = phi float [ %914, %910 ], [ 0.000000e+00, %782 ]
  %789 = phi float [ %915, %910 ], [ 0.000000e+00, %782 ]
  %790 = phi float [ %916, %910 ], [ %690, %782 ]
  %791 = phi float [ %917, %910 ], [ %691, %782 ]
  %792 = phi float [ %918, %910 ], [ %692, %782 ]
  %793 = phi float [ %919, %910 ], [ %728, %782 ]
  %794 = phi float [ %920, %910 ], [ %729, %782 ]
  %795 = phi float [ %921, %910 ], [ %730, %782 ]
  %796 = phi float [ %922, %910 ], [ %699, %782 ]
  %797 = phi float [ %923, %910 ], [ %698, %782 ]
  %798 = phi float [ %924, %910 ], [ 0.000000e+00, %782 ]
  %799 = phi float [ %925, %910 ], [ %696, %782 ]
  %800 = phi float [ %926, %910 ], [ %693, %782 ]
  %801 = phi float [ %927, %910 ], [ %694, %782 ]
  %802 = phi float [ %928, %910 ], [ %695, %782 ]
  %803 = phi i32 [ %860, %910 ], [ 0, %782 ]
  %804 = add nuw nsw i32 %803, %780
  %805 = shl i32 %804, 2
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = shl i32 %807, 8
  %809 = or i32 %808, 48
  %810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = or i32 %808, 64
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = extractvalue %dx.types.ResRet.i32 %816, 1
  %819 = or i32 %808, 80
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 2
  %822 = extractvalue %dx.types.ResRet.f32 %820, 3
  %823 = or i32 %808, 96
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = or i32 %808, 112
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 2
  %832 = or i32 %808, 128
  %833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = extractvalue %dx.types.ResRet.f32 %833, 1
  %836 = extractvalue %dx.types.ResRet.f32 %833, 2
  %837 = extractvalue %dx.types.ResRet.f32 %833, 3
  %838 = or i32 %808, 144
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = extractvalue %dx.types.ResRet.f32 %839, 3
  %844 = or i32 %808, 160
  %845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = extractvalue %dx.types.ResRet.f32 %845, 3
  %850 = or i32 %808, 192
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = or i32 %808, 208
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = or i32 %808, 248
  %857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = add nuw nsw i32 %803, 1
  %861 = bitcast float %814 to i32
  %862 = and i32 %861, 2560
  %863 = icmp eq i32 %862, 2048
  %864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.f32 %864, 0
  %866 = extractvalue %dx.types.ResRet.f32 %864, 1
  %867 = extractvalue %dx.types.ResRet.f32 %864, 2
  %868 = extractvalue %dx.types.ResRet.f32 %864, 3
  %869 = call float @dx.op.dot4.f32(i32 56, float %865, float %866, float %867, float %868, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %870 = or i32 %808, 16
  %871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = extractvalue %dx.types.ResRet.f32 %871, 3
  %876 = call float @dx.op.dot4.f32(i32 56, float %872, float %873, float %874, float %875, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %877 = or i32 %808, 32
  %878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = extractvalue %dx.types.ResRet.f32 %878, 3
  %883 = call float @dx.op.dot4.f32(i32 56, float %879, float %880, float %881, float %882, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %884 = call float @dx.op.unary.f32(i32 27, float %869)  ; Round_ni(value)
  %885 = call float @dx.op.unary.f32(i32 6, float %884)  ; FAbs(value)
  %886 = call float @dx.op.unary.f32(i32 27, float %876)  ; Round_ni(value)
  %887 = call float @dx.op.unary.f32(i32 6, float %886)  ; FAbs(value)
  %888 = call float @dx.op.unary.f32(i32 6, float %883)  ; FAbs(value)
  %889 = call float @dx.op.unary.f32(i32 27, float %888)  ; Round_ni(value)
  %890 = fadd fast float %887, %885
  %891 = fadd fast float %890, %889
  %892 = fcmp fast oeq float %891, 0.000000e+00
  %893 = call float @dx.op.dot4.f32(i32 56, float %865, float %866, float %867, float %868, float %737, float %738, float %739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %894 = call float @dx.op.dot4.f32(i32 56, float %872, float %873, float %874, float %875, float %737, float %738, float %739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %895 = call float @dx.op.dot4.f32(i32 56, float %865, float %866, float %867, float %868, float %740, float %741, float %742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %896 = call float @dx.op.dot4.f32(i32 56, float %872, float %873, float %874, float %875, float %740, float %741, float %742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %897 = fsub fast float %893, %869
  %898 = fsub fast float %895, %869
  %899 = fsub fast float %894, %876
  %900 = fsub fast float %896, %876
  %901 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %904 = fadd fast float %903, %901
  %905 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  %906 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %907 = fcmp fast ogt float %905, %906
  %908 = and i1 %892, %907
  %909 = and i1 %863, %908
  br i1 %909, label %930, label %910

; <label>:910                                     ; preds = %1193, %1011, %930, %784
  %911 = phi float [ %785, %930 ], [ %1014, %1011 ], [ %1014, %1193 ], [ %785, %784 ]
  %912 = phi float [ %786, %930 ], [ %786, %1011 ], [ %1168, %1193 ], [ %786, %784 ]
  %913 = phi float [ %787, %930 ], [ %787, %1011 ], [ %1166, %1193 ], [ %787, %784 ]
  %914 = phi float [ %788, %930 ], [ %788, %1011 ], [ %1138, %1193 ], [ %788, %784 ]
  %915 = phi float [ %789, %930 ], [ %789, %1011 ], [ %1136, %1193 ], [ %789, %784 ]
  %916 = phi float [ %790, %930 ], [ %790, %1011 ], [ %1203, %1193 ], [ %790, %784 ]
  %917 = phi float [ %791, %930 ], [ %791, %1011 ], [ %1204, %1193 ], [ %791, %784 ]
  %918 = phi float [ %792, %930 ], [ %792, %1011 ], [ %1205, %1193 ], [ %792, %784 ]
  %919 = phi float [ %793, %930 ], [ %793, %1011 ], [ %1117, %1193 ], [ %793, %784 ]
  %920 = phi float [ %794, %930 ], [ %794, %1011 ], [ %1118, %1193 ], [ %794, %784 ]
  %921 = phi float [ %795, %930 ], [ %795, %1011 ], [ %1119, %1193 ], [ %795, %784 ]
  %922 = phi float [ %796, %930 ], [ %796, %1011 ], [ %1146, %1193 ], [ %796, %784 ]
  %923 = phi float [ %797, %930 ], [ %797, %1011 ], [ %1143, %1193 ], [ %797, %784 ]
  %924 = phi float [ %798, %930 ], [ %798, %1011 ], [ %1140, %1193 ], [ %798, %784 ]
  %925 = phi float [ %799, %930 ], [ %799, %1011 ], [ %1134, %1193 ], [ %799, %784 ]
  %926 = phi float [ %800, %930 ], [ %800, %1011 ], [ %1129, %1193 ], [ %800, %784 ]
  %927 = phi float [ %801, %930 ], [ %801, %1011 ], [ %1130, %1193 ], [ %801, %784 ]
  %928 = phi float [ %802, %930 ], [ %802, %1011 ], [ %1131, %1193 ], [ %802, %784 ]
  %929 = icmp eq i32 %860, %783
  br i1 %929, label %1206, label %784

; <label>:930                                     ; preds = %784
  %931 = extractvalue %dx.types.ResRet.f32 %830, 3
  %932 = extractvalue %dx.types.ResRet.f32 %830, 1
  %933 = extractvalue %dx.types.ResRet.f32 %830, 0
  %934 = extractvalue %dx.types.ResRet.f32 %820, 1
  %935 = extractvalue %dx.types.ResRet.f32 %820, 0
  %936 = extractvalue %dx.types.ResRet.i32 %816, 3
  %937 = extractvalue %dx.types.ResRet.i32 %816, 2
  %938 = add i32 %936, 0
  %939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %938, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %939, %dx.types.Handle %940, float %869, float %876, float undef, float undef, i32 0, i32 0, i32 undef, float %897, float %899, float undef, float %898, float %900, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = fmul fast float %942, %935
  %944 = fadd fast float %943, %934
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fmul fast float %869, %825
  %947 = call float @dx.op.tertiary.f32(i32 46, float %826, float %876, float %946)  ; FMad(a,b,c)
  %948 = fadd fast float %947, %933
  %949 = fmul fast float %869, %827
  %950 = call float @dx.op.tertiary.f32(i32 46, float %828, float %876, float %949)  ; FMad(a,b,c)
  %951 = fadd fast float %950, %932
  %952 = fmul fast float %897, %825
  %953 = call float @dx.op.tertiary.f32(i32 46, float %826, float %899, float %952)  ; FMad(a,b,c)
  %954 = fmul fast float %897, %827
  %955 = call float @dx.op.tertiary.f32(i32 46, float %828, float %899, float %954)  ; FMad(a,b,c)
  %956 = fmul fast float %898, %825
  %957 = call float @dx.op.tertiary.f32(i32 46, float %826, float %900, float %956)  ; FMad(a,b,c)
  %958 = fmul fast float %898, %827
  %959 = call float @dx.op.tertiary.f32(i32 46, float %828, float %900, float %958)  ; FMad(a,b,c)
  %960 = add i32 %937, 0
  %961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %960, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %962 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %961, %dx.types.Handle %940, float %948, float %951, float undef, float undef, i32 0, i32 0, i32 undef, float %953, float %955, float undef, float %957, float %959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = and i32 %861, 1024
  %965 = icmp ne i32 %964, 0
  %966 = fcmp fast ogt float %963, 0x3FE0101020000000
  %967 = uitofp i1 %966 to float
  %968 = select i1 %965, float %967, float %963
  %969 = and i32 %861, 8192
  %970 = icmp ne i32 %969, 0
  %971 = select i1 %970, float %931, float 1.000000e+00
  %972 = fmul fast float %869, 2.000000e+00
  %973 = fadd fast float %972, -1.000000e+00
  %974 = call float @dx.op.unary.f32(i32 6, float %973)  ; FAbs(value)
  %975 = fmul fast float %974, %858
  %976 = fsub fast float %975, %858
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %978 = fmul fast float %876, 2.000000e+00
  %979 = fadd fast float %978, -1.000000e+00
  %980 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %981 = fmul fast float %980, %859
  %982 = fsub fast float %981, %859
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = fmul fast float %888, %821
  %985 = fsub fast float %984, %821
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %987 = fmul fast float %945, %971
  %988 = fmul fast float %987, %942
  %989 = fmul fast float %988, %977
  %990 = fmul fast float %989, %968
  %991 = fmul fast float %990, %983
  %992 = fmul fast float %991, %986
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %996 = fsub fast float %905, %995
  %997 = fmul fast float %996, %994
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = fmul fast float %992, %822
  %1000 = fadd fast float %992, %822
  %1001 = fmul fast float %1000, %831
  %1002 = fsub fast float %1001, %831
  %1003 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1004 = and i32 %861, 128
  %1005 = icmp ne i32 %1004, 0
  %1006 = select i1 %1005, float %1003, float %999
  %1007 = fmul fast float %1006, %998
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = fcmp fast ugt float %1007, %1009
  br i1 %1010, label %1011, label %910

; <label>:1011                                    ; preds = %930
  %1012 = select i1 %970, float %1007, float 0.000000e+00
  %1013 = fadd fast float %1012, %785
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  br i1 %970, label %910, label %1015

; <label>:1015                                    ; preds = %1011
  %1016 = and i32 %861, 4
  %1017 = and i32 %861, 8
  %1018 = add i32 %817, 0
  %1019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1018, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1019, %dx.types.Handle %1020, float %948, float %951, float undef, float undef, i32 0, i32 0, i32 undef, float %953, float %955, float undef, float %957, float %959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = extractvalue %dx.types.ResRet.f32 %1021, 3
  %1026 = bitcast float %843 to i32
  %1027 = and i32 %1026, 255
  %1028 = uitofp i32 %1027 to float
  %1029 = lshr i32 %1026, 8
  %1030 = and i32 %1029, 255
  %1031 = uitofp i32 %1030 to float
  %1032 = fmul fast float %1025, %1028
  %1033 = fadd fast float %1032, %1031
  %1034 = fmul fast float %1033, 0x3F70101000000000
  %1035 = add i32 %818, 0
  %1036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1035, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1037 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1036, %dx.types.Handle %1020, float %948, float %951, float undef, float undef, i32 0, i32 0, i32 undef, float %953, float %955, float undef, float %957, float %959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = extractvalue %dx.types.ResRet.f32 %1037, 3
  %1042 = bitcast float %837 to i32
  %1043 = and i32 %1042, 255
  %1044 = uitofp i32 %1043 to float
  %1045 = lshr i32 %1042, 8
  %1046 = and i32 %1045, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = lshr i32 %1042, 16
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F70101000000000
  %1052 = fmul fast float %1038, %1044
  %1053 = fadd fast float %1052, %1047
  %1054 = fmul fast float %1053, 0x3F70101000000000
  %1055 = fadd fast float %1039, -5.000000e-01
  %1056 = fadd fast float %1041, -5.000000e-01
  %1057 = fmul fast float %1055, %1051
  %1058 = fmul fast float %1056, %1051
  %1059 = fadd fast float %1057, 5.000000e-01
  %1060 = fadd fast float %1058, 5.000000e-01
  %1061 = fmul fast float %1022, %846
  %1062 = fmul fast float %1023, %847
  %1063 = fmul fast float %1024, %848
  %1064 = fmul fast float %1059, 2.000000e+00
  %1065 = fadd fast float %1064, -1.000000e+00
  %1066 = fmul fast float %1060, 2.000000e+00
  %1067 = fadd fast float %1066, -1.000000e+00
  %1068 = fadd fast float %1065, %1067
  %1069 = fmul fast float %1068, 5.000000e-01
  %1070 = fsub fast float %1065, %1067
  %1071 = fmul fast float %1070, 5.000000e-01
  %1072 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1073 = fsub fast float 1.000000e+00, %1072
  %1074 = call float @dx.op.unary.f32(i32 6, float %1071)  ; FAbs(value)
  %1075 = fsub fast float %1073, %1074
  %1076 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1071, float %1075, float %1069, float %1071, float %1075)  ; Dot3(ax,ay,az,bx,by,bz)
  %1077 = call float @dx.op.unary.f32(i32 25, float %1076)  ; Rsqrt(value)
  %1078 = fmul fast float %1069, %1077
  %1079 = fmul fast float %1071, %1077
  %1080 = fmul fast float %1077, %1075
  %1081 = fmul fast float %1080, %811
  %1082 = fmul fast float %1080, %812
  %1083 = fmul fast float %1080, %813
  %1084 = fmul fast float %1078, %834
  %1085 = fmul fast float %1078, %835
  %1086 = fmul fast float %1078, %836
  %1087 = fadd fast float %1084, %1081
  %1088 = fadd fast float %1085, %1082
  %1089 = fadd fast float %1086, %1083
  %1090 = fmul fast float %1079, %840
  %1091 = fmul fast float %1079, %841
  %1092 = fmul fast float %1079, %842
  %1093 = fadd fast float %1087, %1090
  %1094 = fadd fast float %1088, %1091
  %1095 = fadd fast float %1089, %1092
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1093, float %1094, float %1095, float %1093, float %1094, float %1095)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = call float @dx.op.unary.f32(i32 25, float %1096)  ; Rsqrt(value)
  %1098 = fmul fast float %1093, %1097
  %1099 = fmul fast float %1094, %1097
  %1100 = fmul fast float %1095, %1097
  %1101 = icmp ne i32 %1017, 0
  %1102 = select i1 %1101, float 1.000000e+00, float 0.000000e+00
  %1103 = fmul fast float %1007, %1102
  %1104 = and i32 %861, 1
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1106, label %1110

; <label>:1106                                    ; preds = %1015
  %1107 = fsub fast float %1098, %793
  %1108 = fsub fast float %1099, %794
  %1109 = fsub fast float %1100, %795
  br label %1110

; <label>:1110                                    ; preds = %1106, %1015
  %1111 = phi float [ %1107, %1106 ], [ %1098, %1015 ]
  %1112 = phi float [ %1108, %1106 ], [ %1099, %1015 ]
  %1113 = phi float [ %1109, %1106 ], [ %1100, %1015 ]
  %1114 = fmul float %1113, %1103
  %1115 = fmul float %1112, %1103
  %1116 = fmul float %1111, %1103
  %1117 = fadd fast float %1116, %793
  %1118 = fadd fast float %1115, %794
  %1119 = fadd fast float %1114, %795
  %1120 = icmp ne i32 %1016, 0
  %1121 = select i1 %1120, float 1.000000e+00, float 0.000000e+00
  %1122 = fmul fast float %1007, %1121
  %1123 = fsub fast float %1061, %800
  %1124 = fsub fast float %1062, %801
  %1125 = fsub fast float %1063, %802
  %1126 = fmul fast float %1123, %1122
  %1127 = fmul fast float %1124, %1122
  %1128 = fmul fast float %1125, %1122
  %1129 = fadd fast float %1126, %800
  %1130 = fadd fast float %1127, %801
  %1131 = fadd fast float %1128, %802
  %1132 = fsub fast float %1034, %799
  %1133 = fmul fast float %1132, %1122
  %1134 = fadd fast float %1133, %799
  %1135 = fmul fast float %1122, %789
  %1136 = fsub fast float %789, %1135
  %1137 = fmul fast float %1122, %788
  %1138 = fsub fast float %788, %1137
  %1139 = fadd fast float %1007, %798
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fsub fast float %1054, %797
  %1142 = fmul fast float %1141, %1103
  %1143 = fadd fast float %1142, %797
  %1144 = fsub fast float %1040, %796
  %1145 = fmul fast float %1144, %1103
  %1146 = fadd fast float %1145, %796
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1062, float %1063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1151 = fmul fast float %1150, %1147
  %1152 = fadd fast float %1151, %1149
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  %1154 = bitcast float %849 to i32
  %1155 = and i32 %1154, 65535
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = lshr i32 %1154, 16
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fcmp fast oge float %1156, 0.000000e+00
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = select i1 %1159, float %1156, float %1161
  %1163 = fadd fast float %1162, %1158
  %1164 = fsub fast float %1153, %787
  %1165 = fmul fast float %1164, %1007
  %1166 = fadd fast float %1165, %787
  %1167 = fmul fast float %1163, %1007
  %1168 = call float @dx.op.binary.f32(i32 35, float %786, float %1167)  ; FMax(a,b)
  %1169 = and i32 %861, 16
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1193, label %1171

; <label>:1171                                    ; preds = %1110
  %1172 = bitcast float %855 to i32
  %1173 = add i32 %852, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1173, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1174, %dx.types.Handle %1020, float %948, float %951, float undef, float undef, i32 0, i32 0, i32 undef, float %953, float %955, float undef, float %957, float %959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = and i32 %1172, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fmul fast float %1176, %846
  %1182 = fmul fast float %1177, %847
  %1183 = fmul fast float %1178, %848
  %1184 = and i32 %861, 16384
  %1185 = icmp ne i32 %1184, 0
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = select i1 %1185, float %1187, float 1.000000e+00
  %1189 = fmul fast float %1188, %1180
  %1190 = fmul fast float %1181, %1189
  %1191 = fmul fast float %1182, %1189
  %1192 = fmul fast float %1183, %1189
  br label %1193

; <label>:1193                                    ; preds = %1171, %1110
  %1194 = phi float [ %1190, %1171 ], [ 0.000000e+00, %1110 ]
  %1195 = phi float [ %1191, %1171 ], [ 0.000000e+00, %1110 ]
  %1196 = phi float [ %1192, %1171 ], [ 0.000000e+00, %1110 ]
  %1197 = fsub fast float %1194, %790
  %1198 = fsub fast float %1195, %791
  %1199 = fsub fast float %1196, %792
  %1200 = fmul fast float %1197, %1007
  %1201 = fmul fast float %1198, %1007
  %1202 = fmul fast float %1199, %1007
  %1203 = fadd fast float %1200, %790
  %1204 = fadd fast float %1201, %791
  %1205 = fadd fast float %1202, %792
  br label %910

; <label>:1206                                    ; preds = %910
  br label %1207

; <label>:1207                                    ; preds = %1206, %687
  %1208 = phi float [ 0.000000e+00, %687 ], [ %911, %1206 ]
  %1209 = phi float [ %702, %687 ], [ %912, %1206 ]
  %1210 = phi float [ %700, %687 ], [ %913, %1206 ]
  %1211 = phi float [ 0.000000e+00, %687 ], [ %914, %1206 ]
  %1212 = phi float [ 0.000000e+00, %687 ], [ %915, %1206 ]
  %1213 = phi float [ %690, %687 ], [ %916, %1206 ]
  %1214 = phi float [ %691, %687 ], [ %917, %1206 ]
  %1215 = phi float [ %692, %687 ], [ %918, %1206 ]
  %1216 = phi float [ %728, %687 ], [ %919, %1206 ]
  %1217 = phi float [ %729, %687 ], [ %920, %1206 ]
  %1218 = phi float [ %730, %687 ], [ %921, %1206 ]
  %1219 = phi float [ %699, %687 ], [ %922, %1206 ]
  %1220 = phi float [ %698, %687 ], [ %923, %1206 ]
  %1221 = phi float [ 0.000000e+00, %687 ], [ %924, %1206 ]
  %1222 = phi float [ %696, %687 ], [ %925, %1206 ]
  %1223 = phi float [ %693, %687 ], [ %926, %1206 ]
  %1224 = phi float [ %694, %687 ], [ %927, %1206 ]
  %1225 = phi float [ %695, %687 ], [ %928, %1206 ]
  %1226 = call float @dx.op.dot3.f32(i32 55, float %1216, float %1217, float %1218, float %1216, float %1217, float %1218)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = call float @dx.op.unary.f32(i32 25, float %1226)  ; Rsqrt(value)
  %1228 = fmul fast float %1227, %1216
  %1229 = fmul fast float %1227, %1217
  %1230 = fmul fast float %1227, %1218
  %1231 = fadd fast float %1221, %697
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1229, float %1230, float %1228, float %1229, float %1230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = call float @dx.op.unary.f32(i32 25, float %1233)  ; Rsqrt(value)
  %1235 = fmul fast float %1234, %1228
  %1236 = fmul fast float %1234, %1229
  %1237 = fmul fast float %1234, %1230
  %1238 = fadd fast float %1222, 0xBFB99999A0000000
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = fmul fast float %1239, 0x3FF1C71C80000000
  %1241 = call float @dx.op.binary.f32(i32 36, float %1222, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1242 = fsub fast float 1.000000e+00, %1240
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = fmul fast float %1243, %1223
  %1245 = fmul fast float %1243, %1224
  %1246 = fmul fast float %1243, %1225
  %1247 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1248 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1249 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1250 = fmul fast float %1240, %1223
  %1251 = fmul fast float %1240, %1224
  %1252 = fmul fast float %1240, %1225
  %1253 = fadd fast float %1250, %1241
  %1254 = fadd fast float %1251, %1241
  %1255 = fadd fast float %1252, %1241
  %1256 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1257 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1258 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.i32 %1260, 3
  %1262 = and i32 %1261, 8
  %1263 = icmp ne i32 %1262, 0
  %1264 = call float @dx.op.binary.f32(i32 35, float %1247, float %1223)  ; FMax(a,b)
  %1265 = call float @dx.op.binary.f32(i32 35, float %1248, float %1223)  ; FMax(a,b)
  %1266 = call float @dx.op.binary.f32(i32 35, float %1249, float %1223)  ; FMax(a,b)
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1247, float %1248, float %1249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = select i1 %186, float %1223, float %1247
  %1269 = select i1 %186, float %1267, float %1248
  %1270 = select i1 %186, float 1.000000e+00, float %1249
  %1271 = select i1 %1263, float %1264, float %1268
  %1272 = select i1 %1263, float %1265, float %1269
  %1273 = select i1 %1263, float %1266, float %1270
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1278 = fadd fast float %1275, %115
  %1279 = fadd fast float %1276, %116
  %1280 = fadd fast float %1277, %117
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = fsub fast float %1278, %1282
  %1285 = fsub fast float %1279, %1283
  %1286 = fmul fast float %1284, %1284
  %1287 = fmul fast float %1285, %1285
  %1288 = fadd fast float %1286, %1287
  %1289 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1291 = fcmp fast olt float %1289, %1290
  br i1 %1291, label %1292, label %1359

; <label>:1292                                    ; preds = %1207
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1301 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1303 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1304 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1305 = fadd fast float %1302, %1278
  %1306 = fadd fast float %1303, %1279
  %1307 = fadd fast float %1304, %1280
  %1308 = fmul fast float %1305, %1294
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %1296, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1307, float %1298, float %1309)  ; FMad(a,b,c)
  %1311 = fmul fast float %1305, %1299
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1306, float %1300, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1307, float %1301, float %1312)  ; FMad(a,b,c)
  %1314 = fsub fast float %1310, %1302
  %1315 = fsub fast float %1313, %1303
  %1316 = fsub fast float %1314, %1282
  %1317 = fadd fast float %1316, %1290
  %1318 = fsub fast float %1315, %1283
  %1319 = fadd fast float %1318, %1290
  %1320 = extractvalue %dx.types.CBufRet.f32 %1281, 3
  %1321 = fmul fast float %1317, %1320
  %1322 = fmul fast float %1319, %1320
  %1323 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1324 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1325 = fsub fast float 1.000000e+00, %1323
  %1326 = fsub fast float 1.000000e+00, %1324
  %1327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = fcmp fast ugt float %1328, 0.000000e+00
  br i1 %1329, label %1330, label %1633

; <label>:1330                                    ; preds = %1292
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1333 = fmul fast float %1332, %1328
  %1334 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1335 = fadd fast float %1334, %1333
  %1336 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1337 = fadd fast float %1335, %1304
  %1338 = fmul fast float %1310, %1298
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1301, float %1338)  ; FMad(a,b,c)
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %1336, float %1339)  ; FMad(a,b,c)
  %1341 = fsub fast float %1340, %1304
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1344 = fsub fast float %1341, %1343
  %1345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = extractvalue %dx.types.ResRet.f32 %1345, 2
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = fadd fast float %1350, %1346
  %1354 = fmul fast float %1353, 0x3F847AE140000000
  %1355 = fadd fast float %1351, %1347
  %1356 = fmul fast float %1355, 0x3F847AE140000000
  %1357 = fadd fast float %1352, %1348
  %1358 = fmul fast float %1357, 0x3F847AE140000000
  br label %1633

; <label>:1359                                    ; preds = %1207
  %1360 = and i32 %162, 1
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1633, label %1362

; <label>:1362                                    ; preds = %1359
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1370 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1371 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1372 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1373 = extractvalue %dx.types.CBufRet.f32 %1365, 3
  %1374 = extractvalue %dx.types.CBufRet.f32 %1367, 3
  %1375 = fadd fast float %1372, %1278
  %1376 = fadd fast float %1373, %1279
  %1377 = fadd fast float %1374, %1280
  %1378 = fmul fast float %1375, %1364
  %1379 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %1366, float %1378)  ; FMad(a,b,c)
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1377, float %1368, float %1379)  ; FMad(a,b,c)
  %1381 = fmul fast float %1375, %1369
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %1370, float %1381)  ; FMad(a,b,c)
  %1383 = call float @dx.op.tertiary.f32(i32 46, float %1377, float %1371, float %1382)  ; FMad(a,b,c)
  %1384 = fsub fast float %1380, %1372
  %1385 = fsub fast float %1383, %1373
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.CBufRet.f32 %1386, 2
  %1390 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 3
  %1393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.i32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.i32 %1393, 1
  %1396 = udiv i32 %1395, %1394
  %1397 = fsub fast float %1384, %1387
  %1398 = fsub fast float %1385, %1388
  %1399 = call float @dx.op.binary.f32(i32 35, float %1397, float 0.000000e+00)  ; FMax(a,b)
  %1400 = call float @dx.op.binary.f32(i32 35, float %1398, float 0.000000e+00)  ; FMax(a,b)
  %1401 = call float @dx.op.binary.f32(i32 36, float %1399, float %1389)  ; FMin(a,b)
  %1402 = call float @dx.op.binary.f32(i32 36, float %1400, float %1390)  ; FMin(a,b)
  %1403 = add i32 %1394, -1
  %1404 = add i32 %1396, -1
  %1405 = fmul fast float %1401, %1392
  %1406 = fmul fast float %1402, %1392
  %1407 = fptoui float %1405 to i32
  %1408 = fptoui float %1406 to i32
  %1409 = call i32 @dx.op.binary.i32(i32 40, i32 %1407, i32 %1403)  ; UMin(a,b)
  %1410 = call i32 @dx.op.binary.i32(i32 40, i32 %1408, i32 %1404)  ; UMin(a,b)
  %1411 = mul i32 %1410, %1394
  %1412 = add i32 %1411, %1409
  %1413 = shl i32 %1412, 2
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = icmp eq i32 %1415, -1
  br i1 %1416, label %1633, label %1417

; <label>:1417                                    ; preds = %1362
  %1418 = mul i32 %1415, 148
  %1419 = add i32 %1418, 4
  %1420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = add i32 %1418, 8
  %1423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = add i32 %1418, 36
  %1426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = add i32 %1418, 60
  %1429 = add i32 %1418, 92
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = add i32 %1418, 116
  %1433 = fsub fast float %1384, %1421
  %1434 = fsub fast float %1385, %1424
  %1435 = fmul fast float %1392, %1433
  %1436 = fmul fast float %1392, %1434
  %1437 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1438 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1439 = fsub fast float 1.000000e+00, %1438
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 2
  %1442 = call float @dx.op.unary.f32(i32 83, float %1437)  ; DerivCoarseX(value)
  %1443 = call float @dx.op.unary.f32(i32 83, float %1439)  ; DerivCoarseX(value)
  %1444 = call float @dx.op.unary.f32(i32 84, float %1437)  ; DerivCoarseY(value)
  %1445 = call float @dx.op.unary.f32(i32 84, float %1439)  ; DerivCoarseY(value)
  %1446 = fmul fast float %1442, %1441
  %1447 = fmul fast float %1443, %1441
  %1448 = fmul fast float %1444, %1441
  %1449 = fmul fast float %1445, %1441
  %1450 = call float @dx.op.dot2.f32(i32 54, float %1448, float %1449, float %1448, float %1449)  ; Dot2(ax,ay,bx,by)
  %1451 = call float @dx.op.dot2.f32(i32 54, float %1446, float %1447, float %1446, float %1447)  ; Dot2(ax,ay,bx,by)
  %1452 = call float @dx.op.binary.f32(i32 35, float %1451, float %1450)  ; FMax(a,b)
  %1453 = call float @dx.op.unary.f32(i32 23, float %1452)  ; Log(value)
  %1454 = fmul fast float %1453, 5.000000e-01
  %1455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.f32 %1455, 1
  %1457 = fadd fast float %1456, %1454
  %1458 = call float @dx.op.binary.f32(i32 35, float %1457, float 0.000000e+00)  ; FMax(a,b)
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  %1461 = fadd fast float %1460, %1458
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 3
  %1464 = fadd fast float %1461, %1463
  %1465 = add i32 %1431, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1465, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1466, i32 0)  ; GetDimensions(handle,mipLevel)
  %1468 = extractvalue %dx.types.Dimensions %1467, 0
  %1469 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1468)  ; FirstbitLo(value)
  %1470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.i32 %1470, 1
  %1472 = sub nsw i32 %1471, %1469
  %1473 = sitofp i32 %1472 to float
  %1474 = fsub fast float %1464, %1473
  %1475 = call float @dx.op.binary.f32(i32 35, float %1474, float 0.000000e+00)  ; FMax(a,b)
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1466, %dx.types.Handle %33, float %1437, float %1439, float %1427, float undef, i32 0, i32 0, i32 undef, float %1475)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = fcmp ule float %1477, 0x3FE0101020000000
  %1479 = extractvalue %dx.types.CBufRet.i32 %1470, 0
  %1480 = and i32 %1479, 128
  %1481 = icmp ne i32 %1480, 0
  %1482 = and i1 %1478, %1481
  br i1 %1482, label %1633, label %1483

; <label>:1483                                    ; preds = %1417
  %1484 = add i32 %1418, 20
  %1485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = add i32 %1418, 24
  %1488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = add i32 %1418, 40
  %1491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = add i32 %1418, 96
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 2
  %1498 = fmul fast float %1497, %1437
  %1499 = fmul fast float %1497, %1439
  %1500 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1501 = fadd fast float %1498, %1500
  %1502 = fadd fast float %1499, %1500
  %1503 = add i32 %1495, 0
  %1504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1503, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1505 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1504, i32 0)  ; GetDimensions(handle,mipLevel)
  %1506 = extractvalue %dx.types.Dimensions %1505, 0
  %1507 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1506)  ; FirstbitLo(value)
  %1508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.i32 %1508, 1
  %1510 = sub nsw i32 %1509, %1507
  %1511 = sitofp i32 %1510 to float
  %1512 = fsub fast float %1461, %1511
  %1513 = call float @dx.op.binary.f32(i32 35, float %1512, float 0.000000e+00)  ; FMax(a,b)
  %1514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1504, %dx.types.Handle %33, float %1501, float %1502, float %1492, float undef, i32 0, i32 0, i32 undef, float %1513)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = fmul fast float %1515, %1486
  %1517 = fadd fast float %1516, %1489
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 3
  %1526 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1527 = fadd fast float %1523, %1384
  %1528 = fadd fast float %1525, %1385
  %1529 = fadd fast float %1517, %1526
  %1530 = fmul fast float %1527, %1519
  %1531 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1520, float %1530)  ; FMad(a,b,c)
  %1532 = call float @dx.op.tertiary.f32(i32 46, float %1529, float %1521, float %1531)  ; FMad(a,b,c)
  %1533 = fsub fast float %1532, %1526
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1536 = fsub fast float %1533, %1535
  %1537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.i32 %1537, 0
  %1539 = call i32 @dx.op.binary.i32(i32 40, i32 %1415, i32 %1538)  ; UMin(a,b)
  %1540 = mul i32 %1539, 36
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = add i32 %1540, 4
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1546 = fmul fast float %1545, %1437
  %1547 = fmul fast float %1545, %1439
  %1548 = extractvalue %dx.types.CBufRet.f32 %1544, 1
  %1549 = fadd fast float %1546, %1548
  %1550 = fadd fast float %1547, %1548
  %1551 = icmp eq i32 %1542, 0
  br i1 %1551, label %1620, label %1552

; <label>:1552                                    ; preds = %1483
  br label %1553

; <label>:1553                                    ; preds = %1610, %1552
  %1554 = phi float [ %1611, %1610 ], [ 0.000000e+00, %1552 ]
  %1555 = phi float [ %1612, %1610 ], [ 0.000000e+00, %1552 ]
  %1556 = phi float [ %1613, %1610 ], [ 0.000000e+00, %1552 ]
  %1557 = phi float [ %1614, %1610 ], [ 0.000000e+00, %1552 ]
  %1558 = phi float [ %1615, %1610 ], [ 0.000000e+00, %1552 ]
  %1559 = phi float [ %1616, %1610 ], [ 0.000000e+00, %1552 ]
  %1560 = phi i32 [ %1617, %1610 ], [ 0, %1552 ]
  %1561 = shl i32 %1560, 2
  %1562 = add i32 %1428, %1561
  %1563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = add i32 %1432, %1561
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1568, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1569, i32 0)  ; GetDimensions(handle,mipLevel)
  %1571 = extractvalue %dx.types.Dimensions %1570, 0
  %1572 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1571)  ; FirstbitLo(value)
  %1573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.i32 %1573, 1
  %1575 = sub nsw i32 %1574, %1572
  %1576 = sitofp i32 %1575 to float
  %1577 = fsub fast float %1461, %1576
  %1578 = call float @dx.op.binary.f32(i32 35, float %1577, float 0.000000e+00)  ; FMax(a,b)
  %1579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1569, %dx.types.Handle %33, float %1549, float %1550, float %1564, float undef, i32 0, i32 0, i32 undef, float %1578)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = fcmp fast ogt float %1580, 0.000000e+00
  br i1 %1581, label %1582, label %1610

; <label>:1582                                    ; preds = %1553
  %1583 = add i32 %1543, %1561
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 32767
  %1587 = mul nuw nsw i32 %1586, 928
  %1588 = add nuw nsw i32 %1587, 48
  %1589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  %1591 = extractvalue %dx.types.ResRet.f32 %1589, 1
  %1592 = extractvalue %dx.types.ResRet.f32 %1589, 2
  %1593 = add nuw nsw i32 %1587, 60
  %1594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.ResRet.f32 %1594, 1
  %1597 = extractvalue %dx.types.ResRet.f32 %1594, 2
  %1598 = fmul fast float %1590, %1580
  %1599 = fmul fast float %1591, %1580
  %1600 = fmul fast float %1592, %1580
  %1601 = fadd fast float %1598, %1554
  %1602 = fadd fast float %1599, %1555
  %1603 = fadd fast float %1600, %1556
  %1604 = fmul fast float %1595, %1580
  %1605 = fmul fast float %1596, %1580
  %1606 = fmul fast float %1597, %1580
  %1607 = fadd fast float %1604, %1557
  %1608 = fadd fast float %1605, %1558
  %1609 = fadd fast float %1606, %1559
  br label %1610

; <label>:1610                                    ; preds = %1582, %1553
  %1611 = phi float [ %1601, %1582 ], [ %1554, %1553 ]
  %1612 = phi float [ %1602, %1582 ], [ %1555, %1553 ]
  %1613 = phi float [ %1603, %1582 ], [ %1556, %1553 ]
  %1614 = phi float [ %1607, %1582 ], [ %1557, %1553 ]
  %1615 = phi float [ %1608, %1582 ], [ %1558, %1553 ]
  %1616 = phi float [ %1609, %1582 ], [ %1559, %1553 ]
  %1617 = add nuw i32 %1560, 1
  %1618 = icmp eq i32 %1617, %1542
  br i1 %1618, label %1619, label %1553

; <label>:1619                                    ; preds = %1610
  br label %1620

; <label>:1620                                    ; preds = %1619, %1483
  %1621 = phi float [ 0.000000e+00, %1483 ], [ %1611, %1619 ]
  %1622 = phi float [ 0.000000e+00, %1483 ], [ %1612, %1619 ]
  %1623 = phi float [ 0.000000e+00, %1483 ], [ %1613, %1619 ]
  %1624 = phi float [ 0.000000e+00, %1483 ], [ %1614, %1619 ]
  %1625 = phi float [ 0.000000e+00, %1483 ], [ %1615, %1619 ]
  %1626 = phi float [ 0.000000e+00, %1483 ], [ %1616, %1619 ]
  %1627 = fadd fast float %1624, %1621
  %1628 = fmul fast float %1627, 0x3F847AE140000000
  %1629 = fadd fast float %1625, %1622
  %1630 = fmul fast float %1629, 0x3F847AE140000000
  %1631 = fadd fast float %1626, %1623
  %1632 = fmul fast float %1631, 0x3F847AE140000000
  br label %1633

; <label>:1633                                    ; preds = %1620, %1417, %1362, %1359, %1330, %1292
  %1634 = phi float [ %1344, %1330 ], [ -1.310720e+05, %1292 ], [ %1536, %1620 ], [ -1.310720e+05, %1362 ], [ -1.310720e+05, %1417 ], [ -1.310720e+05, %1359 ]
  %1635 = phi float [ %1354, %1330 ], [ 0.000000e+00, %1292 ], [ %1628, %1620 ], [ 0.000000e+00, %1362 ], [ 0.000000e+00, %1417 ], [ 0.000000e+00, %1359 ]
  %1636 = phi float [ %1356, %1330 ], [ 0.000000e+00, %1292 ], [ %1630, %1620 ], [ 0.000000e+00, %1362 ], [ 0.000000e+00, %1417 ], [ 0.000000e+00, %1359 ]
  %1637 = phi float [ %1358, %1330 ], [ 0.000000e+00, %1292 ], [ %1632, %1620 ], [ 0.000000e+00, %1362 ], [ 0.000000e+00, %1417 ], [ 0.000000e+00, %1359 ]
  %1638 = phi i1 [ true, %1330 ], [ false, %1292 ], [ true, %1620 ], [ false, %1362 ], [ false, %1417 ], [ false, %1359 ]
  %1639 = and i32 %162, 3
  %1640 = icmp eq i32 %1639, 1
  %1641 = select i1 %1640, float 1.000000e+00, float 0.000000e+00
  %1642 = fsub fast float %1634, %117
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = select i1 %1638, float %1643, float 1.000000e+00
  %1645 = fmul fast float %1644, %1641
  %1646 = icmp eq i32 %1639, 3
  %1647 = select i1 %1646, float 1.000000e+00, float %1645
  %1648 = call float @dx.op.binary.f32(i32 35, float %1208, float %1647)  ; FMax(a,b)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1650 = fcmp fast une float %1649, 0.000000e+00
  %1651 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = call float @dx.op.unary.f32(i32 25, float %1651)  ; Rsqrt(value)
  br i1 %1650, label %1660, label %1653

; <label>:1653                                    ; preds = %1633
  %1654 = fmul fast float %1652, %115
  %1655 = fmul fast float %1652, %116
  %1656 = fmul fast float %1652, %117
  %1657 = fsub fast float -0.000000e+00, %1654
  %1658 = fsub fast float -0.000000e+00, %1655
  %1659 = fsub fast float -0.000000e+00, %1656
  br label %1828

; <label>:1660                                    ; preds = %1633
  %1661 = fmul fast float %115, %1652
  %1662 = fsub fast float -0.000000e+00, %1661
  %1663 = fmul fast float %116, %1652
  %1664 = fsub fast float -0.000000e+00, %1663
  %1665 = fmul fast float %117, %1652
  %1666 = fsub fast float -0.000000e+00, %1665
  %1667 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1664, float %1666, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %1668 = fmul fast float %1649, 2.500000e+00
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = fmul fast float %1649, 0x4013FFFFE0000000
  %1671 = fadd fast float %1670, 0xBFFFFFFFE0000000
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = fmul fast float %1649, 0x4004000020000000
  %1674 = fadd fast float %1673, 0xBFF8000040000000
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1677 = fmul fast float %1238, 1.000000e+01
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fmul fast float %1678, 2.000000e+00
  %1680 = fsub fast float 3.000000e+00, %1679
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1681, %1680
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fsub fast float 0x3FE3333340000000, %1259
  %1685 = fmul fast float %1684, 0x400AAAAAA0000000
  %1686 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1687 = fmul fast float %1683, %1686
  %1688 = fmul fast float %1271, 0x3FEA2B8620000000
  %1689 = fmul fast float %1272, 0x3FEA2B8620000000
  %1690 = fmul fast float %1273, 0x3FEA2B8620000000
  %1691 = fadd fast float %1688, 0x3FC81DFBA0000000
  %1692 = fmul fast float %1691, %1271
  %1693 = fadd fast float %1692, 0x3F910E6020000000
  %1694 = fadd fast float %1689, 0x3FC81DFBA0000000
  %1695 = fmul fast float %1694, %1272
  %1696 = fadd fast float %1695, 0x3F910E6020000000
  %1697 = fadd fast float %1690, 0x3FC81DFBA0000000
  %1698 = fmul fast float %1697, %1273
  %1699 = fadd fast float %1698, 0x3F910E6020000000
  %1700 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1701 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1702 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1703 = fsub fast float %1700, %1271
  %1704 = fsub fast float %1701, %1272
  %1705 = fsub fast float %1702, %1273
  %1706 = fmul fast float %1703, %1676
  %1707 = fmul fast float %1706, %1687
  %1708 = fmul fast float %1704, %1676
  %1709 = fmul fast float %1708, %1687
  %1710 = fmul fast float %1705, %1676
  %1711 = fmul fast float %1710, %1687
  %1712 = fadd fast float %1707, %1271
  %1713 = fadd fast float %1709, %1272
  %1714 = fadd fast float %1711, %1273
  %1715 = fmul fast float %1219, %1219
  %1716 = fmul fast float %1715, %1715
  %1717 = fadd fast float %1672, 1.000000e+00
  %1718 = fsub fast float %1717, %1687
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1722 = fsub fast float 1.000000e+00, %1716
  %1723 = call float @dx.op.binary.f32(i32 36, float %1719, float %1722)  ; FMin(a,b)
  %1724 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1725 = call float @dx.op.binary.f32(i32 35, float %1723, float %1724)  ; FMax(a,b)
  %1726 = fadd fast float %1721, 0xBFE4CCCCC0000000
  %1727 = fmul fast float %1726, 0x4006DB6DA0000000
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fmul fast float %1728, 2.000000e+00
  %1730 = fsub fast float 3.000000e+00, %1729
  %1731 = bitcast float %1256 to i32
  %1732 = ashr i32 %1731, 1
  %1733 = add nsw i32 %1732, 532487669
  %1734 = bitcast i32 %1733 to float
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = bitcast float %1735 to i32
  %1737 = sub nsw i32 2129859010, %1736
  %1738 = bitcast i32 %1737 to float
  %1739 = fmul fast float %1738, 2.000000e+00
  %1740 = bitcast float %1257 to i32
  %1741 = ashr i32 %1740, 1
  %1742 = add nsw i32 %1741, 532487669
  %1743 = bitcast i32 %1742 to float
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = bitcast float %1744 to i32
  %1746 = sub nsw i32 2129859010, %1745
  %1747 = bitcast i32 %1746 to float
  %1748 = fmul fast float %1747, 2.000000e+00
  %1749 = bitcast float %1258 to i32
  %1750 = ashr i32 %1749, 1
  %1751 = add nsw i32 %1750, 532487669
  %1752 = bitcast i32 %1751 to float
  %1753 = fsub fast float 1.000000e+00, %1752
  %1754 = bitcast float %1753 to i32
  %1755 = sub nsw i32 2129859010, %1754
  %1756 = bitcast i32 %1755 to float
  %1757 = fmul fast float %1756, 2.000000e+00
  %1758 = fsub fast float 0x4002A9FBE0000000, %1739
  %1759 = fadd fast float %1739, 0x3FD54FDF00000000
  %1760 = bitcast float %1759 to i32
  %1761 = sub nsw i32 2129859010, %1760
  %1762 = bitcast i32 %1761 to float
  %1763 = fmul fast float %1762, %1758
  %1764 = fmul fast float %1763, %1763
  %1765 = fsub fast float 0x4002A9FBE0000000, %1748
  %1766 = fadd fast float %1748, 0x3FD54FDF00000000
  %1767 = bitcast float %1766 to i32
  %1768 = sub nsw i32 2129859010, %1767
  %1769 = bitcast i32 %1768 to float
  %1770 = fmul fast float %1769, %1765
  %1771 = fmul fast float %1770, %1770
  %1772 = fsub fast float 0x4002A9FBE0000000, %1757
  %1773 = fadd fast float %1757, 0x3FD54FDF00000000
  %1774 = bitcast float %1773 to i32
  %1775 = sub nsw i32 2129859010, %1774
  %1776 = bitcast i32 %1775 to float
  %1777 = fmul fast float %1776, %1772
  %1778 = fmul fast float %1777, %1777
  %1779 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1764)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1771)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1778)  ; FMax(a,b)
  %1782 = fsub fast float 1.000000e+00, %1667
  %1783 = fadd fast float %1782, %1683
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = fsub fast float 1.000000e+00, %1647
  %1786 = fmul fast float %1725, %1785
  %1787 = fmul fast float %1728, %1728
  %1788 = fmul fast float %1787, %1786
  %1789 = fmul fast float %1788, %1730
  %1790 = fmul fast float %1785, 0xBFE99999A0000000
  %1791 = fmul fast float %1790, %1676
  %1792 = fmul fast float %1791, %1687
  %1793 = fadd fast float %1792, 1.000000e+00
  %1794 = fadd fast float %1259, -1.000000e+00
  %1795 = fmul fast float %1793, %1794
  %1796 = fadd fast float %1795, 1.000000e+00
  %1797 = fsub fast float %1779, %1256
  %1798 = fsub fast float %1780, %1257
  %1799 = fsub fast float %1781, %1258
  %1800 = fmul fast float %1789, %1797
  %1801 = fmul fast float %1789, %1798
  %1802 = fmul fast float %1789, %1799
  %1803 = fadd fast float %1800, %1256
  %1804 = fadd fast float %1801, %1257
  %1805 = fadd fast float %1802, %1258
  %1806 = fsub fast float %63, %1235
  %1807 = fsub fast float %64, %1236
  %1808 = fsub fast float %65, %1237
  %1809 = fmul fast float %1789, %1806
  %1810 = fmul fast float %1789, %1807
  %1811 = fmul fast float %1789, %1808
  %1812 = fadd fast float %1809, %1235
  %1813 = fadd fast float %1810, %1236
  %1814 = fadd fast float %1811, %1237
  %1815 = fmul fast float %1789, %1784
  %1816 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1817 = fsub fast float 1.000000e+00, %1816
  %1818 = fmul fast float %1815, %1817
  %1819 = fadd fast float %1818, %1816
  %1820 = fsub fast float 1.000000e+00, %1219
  %1821 = fmul fast float %1789, %1820
  %1822 = fadd fast float %1821, %1219
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1812, float %1813, float %1814, float %1812, float %1813, float %1814)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1812, %1824
  %1826 = fmul fast float %1813, %1824
  %1827 = fmul fast float %1814, %1824
  br label %1828

; <label>:1828                                    ; preds = %1660, %1653
  %1829 = phi float [ %1659, %1653 ], [ %1666, %1660 ]
  %1830 = phi float [ %1658, %1653 ], [ %1664, %1660 ]
  %1831 = phi float [ %1657, %1653 ], [ %1662, %1660 ]
  %1832 = phi float [ %1656, %1653 ], [ %1665, %1660 ]
  %1833 = phi float [ %1655, %1653 ], [ %1663, %1660 ]
  %1834 = phi float [ %1654, %1653 ], [ %1661, %1660 ]
  %1835 = phi float [ %1256, %1653 ], [ %1803, %1660 ]
  %1836 = phi float [ %1257, %1653 ], [ %1804, %1660 ]
  %1837 = phi float [ %1258, %1653 ], [ %1805, %1660 ]
  %1838 = phi float [ %1271, %1653 ], [ %1712, %1660 ]
  %1839 = phi float [ %1272, %1653 ], [ %1713, %1660 ]
  %1840 = phi float [ %1273, %1653 ], [ %1714, %1660 ]
  %1841 = phi float [ %1235, %1653 ], [ %1825, %1660 ]
  %1842 = phi float [ %1236, %1653 ], [ %1826, %1660 ]
  %1843 = phi float [ %1237, %1653 ], [ %1827, %1660 ]
  %1844 = phi float [ %1259, %1653 ], [ %1819, %1660 ]
  %1845 = phi float [ %1219, %1653 ], [ %1822, %1660 ]
  %1846 = select i1 %186, float 0.000000e+00, float %1837
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %1831, float %1830, float %1829)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1849 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1833, float %1832, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %1850 = fmul fast float %1849, 2.000000e+00
  %1851 = fmul fast float %1850, %1841
  %1852 = fmul fast float %1850, %1842
  %1853 = fmul fast float %1850, %1843
  %1854 = fsub fast float %1834, %1851
  %1855 = fsub fast float %1833, %1852
  %1856 = fsub fast float %1832, %1853
  %1857 = call float @dx.op.binary.f32(i32 36, float %1845, float 1.000000e+00)  ; FMin(a,b)
  %1858 = fsub fast float 1.000000e+00, %1845
  %1859 = bitcast float %1858 to i32
  %1860 = sub nsw i32 2129859010, %1859
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1861, 1
  %1864 = fadd fast float %1862, %115
  %1865 = fadd fast float %1863, %116
  %1866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.i32 %1866, 0
  %1868 = icmp eq i32 %1867, 1
  br i1 %1868, label %1869, label %1904

; <label>:1869                                    ; preds = %1828
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1873 = fsub fast float %1864, %1871
  %1874 = fsub fast float %1865, %1872
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = fmul fast float %1873, %1876
  %1879 = fmul fast float %1874, %1877
  %1880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1878, float %1879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = fcmp fast ogt float %1881, 0.000000e+00
  %1883 = extractvalue %dx.types.CBufRet.i32 %1866, 3
  %1884 = icmp ne i32 %1883, 0
  %1885 = and i1 %1882, %1884
  br i1 %1885, label %1886, label %1904, !dx.controlflow.hints !72

; <label>:1886                                    ; preds = %1869
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = fsub fast float %1864, %1888
  %1891 = fsub fast float %1865, %1889
  %1892 = fmul fast float %1890, %1890
  %1893 = fmul fast float %1891, %1891
  %1894 = fadd fast float %1892, %1893
  %1895 = uitofp i32 %1883 to float
  %1896 = fmul fast float %1895, %1895
  %1897 = fcmp fast ogt float %1894, %1896
  br i1 %1897, label %1904, label %1898

; <label>:1898                                    ; preds = %1886
  %1899 = call float @dx.op.unary.f32(i32 24, float %1894)  ; Sqrt(value)
  %1900 = fsub fast float %1895, %1899
  %1901 = fmul fast float %1900, 0x3F75555560000000
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = call float @dx.op.binary.f32(i32 36, float %1902, float %1881)  ; FMin(a,b)
  br label %1904

; <label>:1904                                    ; preds = %1898, %1886, %1869, %1828
  %1905 = phi float [ 1.000000e+00, %1828 ], [ %1903, %1898 ], [ %1881, %1869 ], [ 0.000000e+00, %1886 ]
  %1906 = fcmp fast ogt float %1905, 0.000000e+00
  br i1 %1906, label %1907, label %2005, !dx.controlflow.hints !73

; <label>:1907                                    ; preds = %1904
  %1908 = fadd fast float %146, 5.000000e-01
  %1909 = call float @dx.op.unary.f32(i32 27, float %1908)  ; Round_ni(value)
  %1910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %144, float %145, float %1909, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1910, 2
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 3
  %1916 = fmul fast float %1915, %1911
  %1917 = fmul fast float %1915, %1912
  %1918 = fmul fast float %1915, %1913
  %1919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %144, float %145, float %1909, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %144, float %145, float %1909, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.ResRet.f32 %1921, 1
  %1924 = fmul fast float %1922, 2.000000e+00
  %1925 = fmul fast float %1923, 2.000000e+00
  %1926 = fadd fast float %1924, -1.000000e+00
  %1927 = fadd fast float %1925, -1.000000e+00
  %1928 = fadd fast float %1926, %1927
  %1929 = fmul fast float %1928, 5.000000e-01
  %1930 = fsub fast float %1926, %1927
  %1931 = fmul fast float %1930, 5.000000e-01
  %1932 = call float @dx.op.unary.f32(i32 6, float %1929)  ; FAbs(value)
  %1933 = fsub fast float 1.000000e+00, %1932
  %1934 = call float @dx.op.unary.f32(i32 6, float %1931)  ; FAbs(value)
  %1935 = fsub fast float %1933, %1934
  %1936 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1935)  ; FMax(a,b)
  %1937 = call float @dx.op.dot3.f32(i32 55, float %1929, float %1931, float %1936, float %1929, float %1931, float %1936)  ; Dot3(ax,ay,az,bx,by,bz)
  %1938 = bitcast float %1937 to i32
  %1939 = ashr i32 %1938, 1
  %1940 = sub nsw i32 1597250115, %1939
  %1941 = bitcast i32 %1940 to float
  %1942 = fmul fast float %1941, %1929
  %1943 = fmul fast float %1941, %1931
  %1944 = fmul fast float %1941, %1936
  %1945 = fsub fast float 1.000000e+00, %1920
  %1946 = fdiv fast float %1945, %1944
  %1947 = fmul fast float %1944, %63
  %1948 = fmul fast float %1944, %64
  %1949 = fmul fast float %1944, %65
  %1950 = fmul fast float %1942, %66
  %1951 = fmul fast float %1942, %67
  %1952 = fmul fast float %1942, %68
  %1953 = fadd fast float %1947, %1950
  %1954 = fadd fast float %1948, %1951
  %1955 = fadd fast float %1949, %1952
  %1956 = fmul fast float %1943, %79
  %1957 = fmul fast float %1943, %80
  %1958 = fmul fast float %1943, %81
  %1959 = fadd fast float %1953, %1956
  %1960 = fadd fast float %1954, %1957
  %1961 = fadd fast float %1955, %1958
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1959, float %1960, float %1961, float %1959, float %1960, float %1961)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call float @dx.op.unary.f32(i32 25, float %1962)  ; Rsqrt(value)
  %1964 = fmul fast float %1959, %1963
  %1965 = fmul fast float %1960, %1963
  %1966 = fmul fast float %1961, %1963
  %1967 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fmul fast float %1968, 5.000000e-01
  %1970 = fadd fast float %1969, 5.000000e-01
  %1971 = fmul fast float %1970, %1920
  %1972 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %1964, float %1965, float %1966)  ; Dot3(ax,ay,az,bx,by,bz)
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = fmul fast float %1973, %1946
  %1975 = fadd fast float %1971, %1974
  %1976 = fsub fast float 5.000000e-01, %1969
  %1977 = fmul fast float %1976, %1838
  %1978 = fmul fast float %1976, %1839
  %1979 = fmul fast float %1976, %1840
  %1980 = fadd fast float %1975, %1977
  %1981 = fmul fast float %1980, %1916
  %1982 = fadd fast float %1975, %1978
  %1983 = fmul fast float %1982, %1917
  %1984 = fadd fast float %1975, %1979
  %1985 = fmul fast float %1984, %1918
  %1986 = call float @dx.op.dot3.f32(i32 55, float %1854, float %1855, float %1856, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = fmul fast float %1987, 5.000000e-01
  %1989 = fadd fast float %1988, 5.000000e-01
  %1990 = fmul fast float %1989, %1920
  %1991 = call float @dx.op.dot3.f32(i32 55, float %1854, float %1855, float %1856, float %1964, float %1965, float %1966)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fmul fast float %1992, %1946
  %1994 = fadd fast float %1990, %1993
  %1995 = fsub fast float 5.000000e-01, %1988
  %1996 = fmul fast float %1995, %1838
  %1997 = fmul fast float %1995, %1839
  %1998 = fmul fast float %1995, %1840
  %1999 = fadd fast float %1994, %1996
  %2000 = fmul fast float %1999, %1916
  %2001 = fadd fast float %1994, %1997
  %2002 = fmul fast float %2001, %1917
  %2003 = fadd fast float %1994, %1998
  %2004 = fmul fast float %2003, %1918
  br label %2005

; <label>:2005                                    ; preds = %1907, %1904
  %2006 = phi float [ %2000, %1907 ], [ 0.000000e+00, %1904 ]
  %2007 = phi float [ %2002, %1907 ], [ 0.000000e+00, %1904 ]
  %2008 = phi float [ %2004, %1907 ], [ 0.000000e+00, %1904 ]
  %2009 = phi float [ %1981, %1907 ], [ 0.000000e+00, %1904 ]
  %2010 = phi float [ %1983, %1907 ], [ 0.000000e+00, %1904 ]
  %2011 = phi float [ %1985, %1907 ], [ 0.000000e+00, %1904 ]
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 0
  %2014 = fcmp fast ogt float %2013, 0.000000e+00
  %2015 = and i1 %1906, %2014
  br i1 %2015, label %2016, label %2220, !dx.controlflow.hints !74

; <label>:2016                                    ; preds = %2005
  %2017 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %2018 = fadd fast float %2017, %117
  %2019 = fmul fast float %1841, 3.200000e+01
  %2020 = fmul fast float %1842, 3.200000e+01
  %2021 = fadd fast float %1864, %2019
  %2022 = fadd fast float %1865, %2020
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = fsub fast float %2021, %2024
  %2027 = fsub fast float %2022, %2025
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2031 = fmul fast float %2026, %2029
  %2032 = fmul fast float %2027, %2030
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2036 = fsub fast float %1864, %2034
  %2037 = fsub fast float %1865, %2035
  %2038 = fmul fast float %2036, %2036
  %2039 = fmul fast float %2037, %2037
  %2040 = fadd fast float %2038, %2039
  %2041 = call float @dx.op.unary.f32(i32 24, float %2040)  ; Sqrt(value)
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.CBufRet.f32 %2042, 1
  %2045 = fsub fast float %2041, %2043
  %2046 = fdiv fast float %2045, %2044
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = fmul fast float %2047, 2.000000e+00
  %2049 = fsub fast float 3.000000e+00, %2048
  %2050 = fmul fast float %2047, %2047
  %2051 = fmul fast float %2050, %2049
  %2052 = fcmp fast oge float %2031, 0.000000e+00
  %2053 = fcmp fast ole float %2031, 1.000000e+00
  %2054 = and i1 %2053, %2052
  %2055 = fcmp fast oge float %2032, 0.000000e+00
  %2056 = and i1 %2055, %2054
  %2057 = fcmp fast ole float %2032, 1.000000e+00
  %2058 = and i1 %2057, %2056
  %2059 = fcmp fast ogt float %2051, 0.000000e+00
  %2060 = and i1 %2059, %2058
  br i1 %2060, label %2061, label %2184, !dx.controlflow.hints !75

; <label>:2061                                    ; preds = %2016
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 3
  %2065 = fmul fast float %2063, %2031
  %2066 = fmul fast float %2064, %2032
  %2067 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2069 = fptosi float %2067 to i32
  %2070 = fptosi float %2068 to i32
  %2071 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2069, i32 %2070, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = lshr i32 %2072, 16
  %2074 = icmp eq i32 %2073, 65535
  br i1 %2074, label %2184, label %2075

; <label>:2075                                    ; preds = %2061
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2078 = fmul fast float %2077, %2031
  %2079 = extractvalue %dx.types.CBufRet.f32 %2076, 1
  %2080 = fadd fast float %2078, %2079
  %2081 = extractvalue %dx.types.CBufRet.f32 %2076, 2
  %2082 = fmul fast float %2081, %2032
  %2083 = extractvalue %dx.types.CBufRet.f32 %2076, 3
  %2084 = fadd fast float %2082, %2083
  %2085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2080, float %2084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.ResRet.f32 %2085, 1
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 1
  %2090 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2091 = fsub fast float %2089, %2090
  %2092 = fmul fast float %2091, %2086
  %2093 = fadd fast float %2092, %2090
  %2094 = extractvalue %dx.types.CBufRet.f32 %2088, 3
  %2095 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2096 = fsub fast float %2094, %2095
  %2097 = fmul fast float %2096, %2087
  %2098 = fadd fast float %2097, %2095
  %2099 = fsub fast float %2018, %2093
  %2100 = fsub fast float %2098, %2093
  %2101 = fdiv fast float %2099, %2100
  %2102 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2104 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2106 = fmul fast float %2104, %2031
  %2107 = fmul fast float %2105, %2032
  %2108 = fmul fast float %2106, 1.250000e-01
  %2109 = fmul fast float %2107, 1.250000e-01
  %2110 = call float @dx.op.unary.f32(i32 27, float %2108)  ; Round_ni(value)
  %2111 = call float @dx.op.unary.f32(i32 27, float %2109)  ; Round_ni(value)
  %2112 = fmul fast float %2110, 8.000000e+00
  %2113 = fmul fast float %2111, 8.000000e+00
  %2114 = fsub fast float %2106, %2112
  %2115 = fsub fast float %2107, %2113
  %2116 = fadd fast float %2114, 5.000000e-01
  %2117 = fadd fast float %2115, 5.000000e-01
  %2118 = and i32 %2073, 255
  %2119 = lshr i32 %2072, 24
  %2120 = mul nuw nsw i32 %2118, 9
  %2121 = uitofp i32 %2120 to float
  %2122 = mul nuw nsw i32 %2119, 9
  %2123 = uitofp i32 %2122 to float
  %2124 = fadd fast float %2116, %2121
  %2125 = fadd fast float %2117, %2123
  %2126 = fdiv fast float %2124, %2013
  %2127 = fdiv fast float %2125, %2103
  %2128 = fmul fast float %2102, 4.375000e-01
  %2129 = fadd fast float %2128, 3.125000e-02
  %2130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2126, float %2127, float %2129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = fadd fast float %2128, 5.312500e-01
  %2135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2126, float %2127, float %2134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.ResRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.ResRet.f32 %2135, 2
  %2139 = fmul fast float %2136, 2.000000e+00
  %2140 = fmul fast float %2137, 2.000000e+00
  %2141 = fmul fast float %2138, 2.000000e+00
  %2142 = fadd fast float %2139, -1.000000e+00
  %2143 = fadd fast float %2140, -1.000000e+00
  %2144 = fadd fast float %2141, -1.000000e+00
  %2145 = fmul fast float %2142, %2142
  %2146 = fmul fast float %2143, %2143
  %2147 = fadd fast float %2145, %2146
  %2148 = fmul fast float %2144, %2144
  %2149 = fadd fast float %2147, %2148
  %2150 = call float @dx.op.unary.f32(i32 24, float %2149)  ; Sqrt(value)
  %2151 = fcmp fast ogt float %2150, 0.000000e+00
  br i1 %2151, label %2152, label %2156

; <label>:2152                                    ; preds = %2075
  %2153 = fdiv fast float %2142, %2150
  %2154 = fdiv fast float %2143, %2150
  %2155 = fdiv fast float %2144, %2150
  br label %2156

; <label>:2156                                    ; preds = %2152, %2075
  %2157 = phi float [ %2153, %2152 ], [ 0.000000e+00, %2075 ]
  %2158 = phi float [ %2154, %2152 ], [ 0.000000e+00, %2075 ]
  %2159 = phi float [ %2155, %2152 ], [ 0.000000e+00, %2075 ]
  %2160 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2161 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2160)  ; FMax(a,b)
  %2162 = fmul fast float %2161, 0x400C5BF8A0000000
  %2163 = fmul fast float %2131, %2051
  %2164 = fmul fast float %2163, %2162
  %2165 = fmul fast float %2132, %2051
  %2166 = fmul fast float %2165, %2162
  %2167 = fmul fast float %2133, %2051
  %2168 = fmul fast float %2167, %2162
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 3
  %2171 = fmul fast float %2164, %2170
  %2172 = fmul fast float %2166, %2170
  %2173 = fmul fast float %2168, %2170
  %2174 = fcmp fast ogt float %2018, %2098
  br i1 %2174, label %2175, label %2184

; <label>:2175                                    ; preds = %2156
  %2176 = fmul fast float %2100, 0x3FC24924A0000000
  %2177 = fsub fast float %2018, %2098
  %2178 = fdiv fast float %2177, %2176
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2180, %2171
  %2182 = fmul fast float %2180, %2172
  %2183 = fmul fast float %2180, %2173
  br label %2184

; <label>:2184                                    ; preds = %2175, %2156, %2061, %2016
  %2185 = phi float [ %2183, %2175 ], [ %2173, %2156 ], [ 0.000000e+00, %2061 ], [ 0.000000e+00, %2016 ]
  %2186 = phi float [ %2182, %2175 ], [ %2172, %2156 ], [ 0.000000e+00, %2061 ], [ 0.000000e+00, %2016 ]
  %2187 = phi float [ %2181, %2175 ], [ %2171, %2156 ], [ 0.000000e+00, %2061 ], [ 0.000000e+00, %2016 ]
  %2188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2187)  ; FMax(a,b)
  %2189 = fmul fast float %2188, 0x3FD20DD760000000
  %2190 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = fmul fast float %2190, 0x3FDF454380000000
  %2192 = fmul fast float %2190, %2190
  %2193 = fmul fast float %2192, 0x3FEE471020000000
  %2194 = fadd fast float %2193, 0xBFD42F6020000000
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2188, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2191, float %2194)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2186)  ; FMax(a,b)
  %2197 = fmul fast float %2196, 0x3FD20DD760000000
  %2198 = call float @dx.op.dot3.f32(i32 55, float %2196, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2191, float %2194)  ; Dot3(ax,ay,az,bx,by,bz)
  %2199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2185)  ; FMax(a,b)
  %2200 = fmul fast float %2199, 0x3FD20DD760000000
  %2201 = call float @dx.op.dot3.f32(i32 55, float %2199, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2191, float %2194)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = call float @dx.op.binary.f32(i32 35, float %2189, float 0.000000e+00)  ; FMax(a,b)
  %2203 = call float @dx.op.binary.f32(i32 35, float %2197, float 0.000000e+00)  ; FMax(a,b)
  %2204 = call float @dx.op.binary.f32(i32 35, float %2200, float 0.000000e+00)  ; FMax(a,b)
  %2205 = call float @dx.op.binary.f32(i32 35, float %2195, float 0.000000e+00)  ; FMax(a,b)
  %2206 = call float @dx.op.binary.f32(i32 35, float %2198, float 0.000000e+00)  ; FMax(a,b)
  %2207 = call float @dx.op.binary.f32(i32 35, float %2201, float 0.000000e+00)  ; FMax(a,b)
  %2208 = fmul fast float %2202, %1905
  %2209 = fmul fast float %2203, %1905
  %2210 = fmul fast float %2204, %1905
  %2211 = fadd fast float %2208, %2009
  %2212 = fadd fast float %2209, %2010
  %2213 = fadd fast float %2210, %2011
  %2214 = fmul fast float %2205, %1905
  %2215 = fmul fast float %2206, %1905
  %2216 = fmul fast float %2207, %1905
  %2217 = fadd fast float %2214, %2006
  %2218 = fadd fast float %2215, %2007
  %2219 = fadd fast float %2216, %2008
  br label %2220

; <label>:2220                                    ; preds = %2184, %2005
  %2221 = phi float [ %2217, %2184 ], [ %2006, %2005 ]
  %2222 = phi float [ %2218, %2184 ], [ %2007, %2005 ]
  %2223 = phi float [ %2219, %2184 ], [ %2008, %2005 ]
  %2224 = phi float [ %2211, %2184 ], [ %2009, %2005 ]
  %2225 = phi float [ %2212, %2184 ], [ %2010, %2005 ]
  %2226 = phi float [ %2213, %2184 ], [ %2011, %2005 ]
  %2227 = fcmp fast olt float %1905, 1.000000e+00
  br i1 %2227, label %2228, label %3046, !dx.controlflow.hints !76

; <label>:2228                                    ; preds = %2220
  %2229 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %2230 = fadd fast float %2229, %117
  %2231 = fmul fast float %1841, 3.200000e+01
  %2232 = fmul fast float %1842, 3.200000e+01
  %2233 = fadd fast float %1864, %2231
  %2234 = fadd fast float %1865, %2232
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = extractvalue %dx.types.CBufRet.f32 %2235, 1
  %2238 = fsub fast float %2233, %2236
  %2239 = fsub fast float %2234, %2237
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2243 = fmul fast float %2238, %2241
  %2244 = fmul fast float %2239, %2242
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = fmul fast float %2243, %2246
  %2248 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2249 = fadd fast float %2247, %2248
  %2250 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2251 = fmul fast float %2250, %2244
  %2252 = extractvalue %dx.types.CBufRet.f32 %2245, 3
  %2253 = fadd fast float %2251, %2252
  %2254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2249, float %2253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2255 = extractvalue %dx.types.ResRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.ResRet.f32 %2254, 1
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2259 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2260 = fsub fast float %2258, %2259
  %2261 = fmul fast float %2260, %2255
  %2262 = fadd fast float %2261, %2259
  %2263 = extractvalue %dx.types.CBufRet.f32 %2257, 3
  %2264 = extractvalue %dx.types.CBufRet.f32 %2257, 2
  %2265 = fsub fast float %2263, %2264
  %2266 = fmul fast float %2265, %2256
  %2267 = fadd fast float %2266, %2264
  %2268 = fsub fast float %2230, %2262
  %2269 = fsub fast float %2267, %2262
  %2270 = fdiv fast float %2268, %2269
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2274 = fmul fast float %2273, %2271
  %2275 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2276 = fadd fast float %2274, %2275
  %2277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2249, float %2253, float %2276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.ResRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.ResRet.f32 %2277, 2
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.CBufRet.f32 %2281, 2
  %2285 = fmul fast float %2282, %2278
  %2286 = fmul fast float %2283, %2279
  %2287 = fmul fast float %2284, %2280
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2292 = fadd fast float %2285, %2289
  %2293 = fadd fast float %2286, %2290
  %2294 = fadd fast float %2287, %2291
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = fmul fast float %2296, %2243
  %2298 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2299 = fadd fast float %2297, %2298
  %2300 = extractvalue %dx.types.CBufRet.f32 %2295, 2
  %2301 = fmul fast float %2300, %2244
  %2302 = extractvalue %dx.types.CBufRet.f32 %2295, 3
  %2303 = fadd fast float %2301, %2302
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.CBufRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.CBufRet.f32 %2304, 3
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.CBufRet.f32 %2309, 3
  %2314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2299, float %2303, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2315 = extractvalue %dx.types.ResRet.f32 %2314, 0
  %2316 = extractvalue %dx.types.ResRet.f32 %2314, 1
  %2317 = extractvalue %dx.types.ResRet.f32 %2314, 2
  %2318 = extractvalue %dx.types.ResRet.f32 %2314, 3
  %2319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2299, float %2303, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.ResRet.f32 %2319, 1
  %2322 = extractvalue %dx.types.ResRet.f32 %2319, 2
  %2323 = extractvalue %dx.types.ResRet.f32 %2319, 3
  %2324 = fmul fast float %2315, %2292
  %2325 = fmul fast float %2320, %2292
  %2326 = fmul fast float %2322, %2292
  %2327 = fmul fast float %2318, %2292
  %2328 = fadd fast float %2324, %2305
  %2329 = fadd fast float %2325, %2306
  %2330 = fadd fast float %2326, %2307
  %2331 = fadd fast float %2327, %2308
  %2332 = fmul fast float %2316, %2292
  %2333 = fmul fast float %2321, %2292
  %2334 = fadd fast float %2332, %2310
  %2335 = fadd fast float %2333, %2311
  %2336 = fmul fast float %2317, %2292
  %2337 = fmul fast float %2323, %2292
  %2338 = fadd fast float %2336, %2312
  %2339 = fadd fast float %2337, %2313
  %2340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2299, float %2303, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.ResRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.ResRet.f32 %2340, 2
  %2344 = extractvalue %dx.types.ResRet.f32 %2340, 3
  %2345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2299, float %2303, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2346 = extractvalue %dx.types.ResRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.ResRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.ResRet.f32 %2345, 2
  %2349 = extractvalue %dx.types.ResRet.f32 %2345, 3
  %2350 = fmul fast float %2341, %2293
  %2351 = fmul fast float %2346, %2293
  %2352 = fmul fast float %2348, %2293
  %2353 = fmul fast float %2344, %2293
  %2354 = fadd fast float %2328, %2350
  %2355 = fadd fast float %2329, %2351
  %2356 = fadd fast float %2330, %2352
  %2357 = fadd fast float %2331, %2353
  %2358 = fmul fast float %2342, %2293
  %2359 = fmul fast float %2347, %2293
  %2360 = fadd fast float %2334, %2358
  %2361 = fadd fast float %2335, %2359
  %2362 = fmul fast float %2343, %2293
  %2363 = fmul fast float %2349, %2293
  %2364 = fadd fast float %2338, %2362
  %2365 = fadd fast float %2339, %2363
  %2366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2299, float %2303, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.ResRet.f32 %2366, 3
  %2371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2299, float %2303, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.ResRet.f32 %2371, 1
  %2374 = extractvalue %dx.types.ResRet.f32 %2371, 2
  %2375 = extractvalue %dx.types.ResRet.f32 %2371, 3
  %2376 = fmul fast float %2367, %2294
  %2377 = fmul fast float %2372, %2294
  %2378 = fmul fast float %2374, %2294
  %2379 = fmul fast float %2370, %2294
  %2380 = fadd fast float %2354, %2376
  %2381 = fadd fast float %2355, %2377
  %2382 = fadd fast float %2356, %2378
  %2383 = fadd fast float %2357, %2379
  %2384 = fmul fast float %2368, %2294
  %2385 = fmul fast float %2373, %2294
  %2386 = fadd fast float %2360, %2384
  %2387 = fadd fast float %2361, %2385
  %2388 = fmul fast float %2369, %2294
  %2389 = fmul fast float %2375, %2294
  %2390 = fadd fast float %2364, %2388
  %2391 = fadd fast float %2365, %2389
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = fsub fast float %1864, %2393
  %2395 = fsub fast float %2236, %1864
  %2396 = call float @dx.op.binary.f32(i32 35, float %2395, float %2394)  ; FMax(a,b)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2398 = fsub fast float %1865, %2397
  %2399 = fsub fast float %2237, %1865
  %2400 = call float @dx.op.binary.f32(i32 35, float %2399, float %2398)  ; FMax(a,b)
  %2401 = call float @dx.op.binary.f32(i32 35, float %2396, float %2400)  ; FMax(a,b)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2240, 3
  %2403 = fmul fast float %2402, %2401
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.CBufRet.f32 %2405, 1
  %2408 = extractvalue %dx.types.CBufRet.f32 %2405, 2
  %2409 = extractvalue %dx.types.CBufRet.f32 %2405, 3
  %2410 = fsub fast float %2406, %2380
  %2411 = fsub fast float %2407, %2381
  %2412 = fsub fast float %2408, %2382
  %2413 = fsub fast float %2409, %2383
  %2414 = fmul fast float %2410, %2404
  %2415 = fmul fast float %2411, %2404
  %2416 = fmul fast float %2412, %2404
  %2417 = fmul fast float %2413, %2404
  %2418 = fadd fast float %2414, %2380
  %2419 = fadd fast float %2415, %2381
  %2420 = fadd fast float %2416, %2382
  %2421 = fadd fast float %2417, %2383
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2425 = fsub fast float %2423, %2386
  %2426 = fsub fast float %2424, %2387
  %2427 = fmul fast float %2425, %2404
  %2428 = fmul fast float %2426, %2404
  %2429 = fadd fast float %2427, %2386
  %2430 = fadd fast float %2428, %2387
  %2431 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2432 = extractvalue %dx.types.CBufRet.f32 %2422, 3
  %2433 = fsub fast float %2431, %2390
  %2434 = fsub fast float %2432, %2391
  %2435 = fmul fast float %2433, %2404
  %2436 = fmul fast float %2434, %2404
  %2437 = fadd fast float %2435, %2390
  %2438 = fadd fast float %2436, %2391
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = fmul fast float %2440, %2418
  %2442 = fmul fast float %2440, %2419
  %2443 = fmul fast float %2440, %2420
  %2444 = fmul fast float %2440, %2421
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 0
  %2447 = fmul fast float %2446, %2429
  %2448 = fmul fast float %2446, %2430
  %2449 = fadd fast float %2447, %2441
  %2450 = fadd fast float %2448, %2443
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = fmul fast float %2452, %2437
  %2454 = fmul fast float %2452, %2438
  %2455 = fadd fast float %2449, %2453
  %2456 = fadd fast float %2450, %2454
  %2457 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2458 = fmul fast float %2457, %2418
  %2459 = fmul fast float %2457, %2419
  %2460 = fmul fast float %2457, %2420
  %2461 = fmul fast float %2457, %2421
  %2462 = extractvalue %dx.types.CBufRet.f32 %2445, 1
  %2463 = fmul fast float %2462, %2429
  %2464 = fmul fast float %2462, %2430
  %2465 = fadd fast float %2463, %2458
  %2466 = fadd fast float %2464, %2460
  %2467 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2468 = fmul fast float %2467, %2437
  %2469 = fmul fast float %2467, %2438
  %2470 = fadd fast float %2465, %2468
  %2471 = fadd fast float %2466, %2469
  %2472 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2473 = fmul fast float %2472, %2418
  %2474 = fmul fast float %2472, %2419
  %2475 = fmul fast float %2472, %2420
  %2476 = fmul fast float %2472, %2421
  %2477 = extractvalue %dx.types.CBufRet.f32 %2445, 2
  %2478 = fmul fast float %2477, %2429
  %2479 = fmul fast float %2477, %2430
  %2480 = fadd fast float %2478, %2473
  %2481 = fadd fast float %2479, %2475
  %2482 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2483 = fmul fast float %2482, %2437
  %2484 = fmul fast float %2482, %2438
  %2485 = fadd fast float %2480, %2483
  %2486 = fadd fast float %2481, %2484
  %2487 = fmul fast float %2474, %2474
  %2488 = fmul fast float %2486, %2486
  %2489 = fmul fast float %2476, %2476
  %2490 = fadd fast float %2489, %2487
  %2491 = fadd fast float %2490, %2488
  %2492 = call float @dx.op.unary.f32(i32 24, float %2491)  ; Sqrt(value)
  %2493 = fcmp fast ugt float %2492, 0.000000e+00
  br i1 %2493, label %2494, label %2509

; <label>:2494                                    ; preds = %2228
  %2495 = fsub fast float -0.000000e+00, %2476
  %2496 = fdiv fast float %2495, %2492
  %2497 = fsub fast float -0.000000e+00, %2474
  %2498 = fdiv fast float %2497, %2492
  %2499 = fdiv fast float %2486, %2492
  %2500 = fmul fast float %2485, 0x3FE279A760000000
  %2501 = fmul fast float %2498, %2474
  %2502 = fmul fast float %2499, %2486
  %2503 = fmul fast float %2496, %2476
  %2504 = fadd fast float %2501, %2503
  %2505 = fsub fast float %2504, %2502
  %2506 = call float @dx.op.unary.f32(i32 6, float %2505)  ; FAbs(value)
  %2507 = fadd fast float %2506, 0x3DDB7CDFE0000000
  %2508 = fdiv fast float %2500, %2507
  br label %2509

; <label>:2509                                    ; preds = %2494, %2228
  %2510 = phi float [ %2508, %2494 ], [ 1.000000e+00, %2228 ]
  %2511 = fmul fast float %2459, %2459
  %2512 = fmul fast float %2471, %2471
  %2513 = fmul fast float %2461, %2461
  %2514 = fadd fast float %2513, %2511
  %2515 = fadd fast float %2514, %2512
  %2516 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2517 = fcmp fast ugt float %2516, 0.000000e+00
  br i1 %2517, label %2518, label %2533

; <label>:2518                                    ; preds = %2509
  %2519 = fsub fast float -0.000000e+00, %2461
  %2520 = fdiv fast float %2519, %2516
  %2521 = fsub fast float -0.000000e+00, %2459
  %2522 = fdiv fast float %2521, %2516
  %2523 = fdiv fast float %2471, %2516
  %2524 = fmul fast float %2470, 0x3FE279A760000000
  %2525 = fmul fast float %2522, %2459
  %2526 = fmul fast float %2523, %2471
  %2527 = fmul fast float %2520, %2461
  %2528 = fadd fast float %2525, %2527
  %2529 = fsub fast float %2528, %2526
  %2530 = call float @dx.op.unary.f32(i32 6, float %2529)  ; FAbs(value)
  %2531 = fadd fast float %2530, 0x3DDB7CDFE0000000
  %2532 = fdiv fast float %2524, %2531
  br label %2533

; <label>:2533                                    ; preds = %2518, %2509
  %2534 = phi float [ %2532, %2518 ], [ 1.000000e+00, %2509 ]
  %2535 = call float @dx.op.binary.f32(i32 36, float %2534, float %2510)  ; FMin(a,b)
  %2536 = fmul fast float %2442, %2442
  %2537 = fmul fast float %2456, %2456
  %2538 = fmul fast float %2444, %2444
  %2539 = fadd fast float %2538, %2536
  %2540 = fadd fast float %2539, %2537
  %2541 = call float @dx.op.unary.f32(i32 24, float %2540)  ; Sqrt(value)
  %2542 = fcmp fast ugt float %2541, 0.000000e+00
  br i1 %2542, label %2543, label %2558

; <label>:2543                                    ; preds = %2533
  %2544 = fsub fast float -0.000000e+00, %2444
  %2545 = fdiv fast float %2544, %2541
  %2546 = fsub fast float -0.000000e+00, %2442
  %2547 = fdiv fast float %2546, %2541
  %2548 = fdiv fast float %2456, %2541
  %2549 = fmul fast float %2455, 0x3FE279A760000000
  %2550 = fmul fast float %2547, %2442
  %2551 = fmul fast float %2548, %2456
  %2552 = fmul fast float %2545, %2444
  %2553 = fadd fast float %2550, %2552
  %2554 = fsub fast float %2553, %2551
  %2555 = call float @dx.op.unary.f32(i32 6, float %2554)  ; FAbs(value)
  %2556 = fadd fast float %2555, 0x3DDB7CDFE0000000
  %2557 = fdiv fast float %2549, %2556
  br label %2558

; <label>:2558                                    ; preds = %2543, %2533
  %2559 = phi float [ %2557, %2543 ], [ 1.000000e+00, %2533 ]
  %2560 = call float @dx.op.binary.f32(i32 36, float %2559, float %2535)  ; FMin(a,b)
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2562 = fcmp fast olt float %2561, 1.000000e+00
  br i1 %2562, label %2563, label %2573

; <label>:2563                                    ; preds = %2558
  %2564 = fmul fast float %2561, %2442
  %2565 = fmul fast float %2561, %2456
  %2566 = fmul fast float %2561, %2444
  %2567 = fmul fast float %2561, %2459
  %2568 = fmul fast float %2561, %2471
  %2569 = fmul fast float %2561, %2461
  %2570 = fmul fast float %2561, %2474
  %2571 = fmul fast float %2561, %2486
  %2572 = fmul fast float %2561, %2476
  br label %2573

; <label>:2573                                    ; preds = %2563, %2558
  %2574 = phi float [ %2570, %2563 ], [ %2474, %2558 ]
  %2575 = phi float [ %2571, %2563 ], [ %2486, %2558 ]
  %2576 = phi float [ %2572, %2563 ], [ %2476, %2558 ]
  %2577 = phi float [ %2567, %2563 ], [ %2459, %2558 ]
  %2578 = phi float [ %2568, %2563 ], [ %2471, %2558 ]
  %2579 = phi float [ %2569, %2563 ], [ %2461, %2558 ]
  %2580 = phi float [ %2564, %2563 ], [ %2442, %2558 ]
  %2581 = phi float [ %2565, %2563 ], [ %2456, %2558 ]
  %2582 = phi float [ %2566, %2563 ], [ %2444, %2558 ]
  %2583 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2455)  ; FMax(a,b)
  %2584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2470)  ; FMax(a,b)
  %2585 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2485)  ; FMax(a,b)
  %2586 = fcmp fast oge float %2243, 0.000000e+00
  %2587 = and i1 %2586, %2014
  %2588 = fcmp fast ole float %2243, 1.000000e+00
  %2589 = and i1 %2588, %2587
  %2590 = fcmp fast oge float %2244, 0.000000e+00
  %2591 = and i1 %2590, %2589
  %2592 = fcmp fast ole float %2244, 1.000000e+00
  %2593 = and i1 %2592, %2591
  br i1 %2593, label %2594, label %2739, !dx.controlflow.hints !77

; <label>:2594                                    ; preds = %2573
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 2
  %2597 = extractvalue %dx.types.CBufRet.f32 %2595, 3
  %2598 = fmul fast float %2596, %2243
  %2599 = fmul fast float %2597, %2244
  %2600 = call float @dx.op.unary.f32(i32 27, float %2598)  ; Round_ni(value)
  %2601 = call float @dx.op.unary.f32(i32 27, float %2599)  ; Round_ni(value)
  %2602 = fptosi float %2600 to i32
  %2603 = fptosi float %2601 to i32
  %2604 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2602, i32 %2603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 65535
  %2607 = lshr i32 %2605, 16
  %2608 = icmp eq i32 %2606, 65535
  br i1 %2608, label %2645, label %2609

; <label>:2609                                    ; preds = %2594
  %2610 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2611 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2612 = extractvalue %dx.types.CBufRet.f32 %2595, 1
  %2613 = fmul fast float %2611, %2243
  %2614 = fmul fast float %2612, %2244
  %2615 = fmul fast float %2613, 1.250000e-01
  %2616 = fmul fast float %2614, 1.250000e-01
  %2617 = call float @dx.op.unary.f32(i32 27, float %2615)  ; Round_ni(value)
  %2618 = call float @dx.op.unary.f32(i32 27, float %2616)  ; Round_ni(value)
  %2619 = fmul fast float %2617, 8.000000e+00
  %2620 = fmul fast float %2618, 8.000000e+00
  %2621 = and i32 %2605, 255
  %2622 = lshr i32 %2605, 8
  %2623 = and i32 %2622, 255
  %2624 = mul nuw nsw i32 %2621, 9
  %2625 = uitofp i32 %2624 to float
  %2626 = mul nuw nsw i32 %2623, 9
  %2627 = uitofp i32 %2626 to float
  %2628 = fadd fast float %2625, 5.000000e-01
  %2629 = fadd fast float %2628, %2613
  %2630 = fsub fast float %2629, %2619
  %2631 = fadd fast float %2627, 5.000000e-01
  %2632 = fadd fast float %2631, %2614
  %2633 = fsub fast float %2632, %2620
  %2634 = fdiv fast float %2630, %2013
  %2635 = fdiv fast float %2633, %2610
  %2636 = fmul fast float %2271, 4.375000e-01
  %2637 = fadd fast float %2636, 3.125000e-02
  %2638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2634, float %2635, float %2637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.ResRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.ResRet.f32 %2638, 2
  %2642 = fadd fast float %2639, %2583
  %2643 = fadd fast float %2640, %2584
  %2644 = fadd fast float %2641, %2585
  br label %2645

; <label>:2645                                    ; preds = %2609, %2594
  %2646 = phi float [ %2644, %2609 ], [ %2585, %2594 ]
  %2647 = phi float [ %2643, %2609 ], [ %2584, %2594 ]
  %2648 = phi float [ %2642, %2609 ], [ %2583, %2594 ]
  %2649 = icmp eq i32 %2607, 65535
  br i1 %2649, label %2739, label %2650

; <label>:2650                                    ; preds = %2645
  %2651 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2652 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2653 = extractvalue %dx.types.CBufRet.f32 %2595, 1
  %2654 = fmul fast float %2652, %2243
  %2655 = fmul fast float %2653, %2244
  %2656 = fmul fast float %2654, 1.250000e-01
  %2657 = fmul fast float %2655, 1.250000e-01
  %2658 = call float @dx.op.unary.f32(i32 27, float %2656)  ; Round_ni(value)
  %2659 = call float @dx.op.unary.f32(i32 27, float %2657)  ; Round_ni(value)
  %2660 = fmul fast float %2658, 8.000000e+00
  %2661 = fmul fast float %2659, 8.000000e+00
  %2662 = fsub fast float %2654, %2660
  %2663 = fsub fast float %2655, %2661
  %2664 = fadd fast float %2662, 5.000000e-01
  %2665 = fadd fast float %2663, 5.000000e-01
  %2666 = and i32 %2607, 255
  %2667 = lshr i32 %2605, 24
  %2668 = mul nuw nsw i32 %2666, 9
  %2669 = uitofp i32 %2668 to float
  %2670 = mul nuw nsw i32 %2667, 9
  %2671 = uitofp i32 %2670 to float
  %2672 = fadd fast float %2664, %2669
  %2673 = fadd fast float %2665, %2671
  %2674 = fdiv fast float %2672, %2013
  %2675 = fdiv fast float %2673, %2651
  %2676 = fmul fast float %2271, 4.375000e-01
  %2677 = fadd fast float %2676, 3.125000e-02
  %2678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2674, float %2675, float %2677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.ResRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.ResRet.f32 %2678, 2
  %2682 = fadd fast float %2676, 5.312500e-01
  %2683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2674, float %2675, float %2682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2684 = extractvalue %dx.types.ResRet.f32 %2683, 0
  %2685 = extractvalue %dx.types.ResRet.f32 %2683, 1
  %2686 = extractvalue %dx.types.ResRet.f32 %2683, 2
  %2687 = fmul fast float %2684, 2.000000e+00
  %2688 = fmul fast float %2685, 2.000000e+00
  %2689 = fmul fast float %2686, 2.000000e+00
  %2690 = fadd fast float %2687, -1.000000e+00
  %2691 = fadd fast float %2688, -1.000000e+00
  %2692 = fadd fast float %2689, -1.000000e+00
  %2693 = fmul fast float %2690, %2690
  %2694 = fmul fast float %2691, %2691
  %2695 = fadd fast float %2693, %2694
  %2696 = fmul fast float %2692, %2692
  %2697 = fadd fast float %2695, %2696
  %2698 = call float @dx.op.unary.f32(i32 24, float %2697)  ; Sqrt(value)
  %2699 = fcmp fast ogt float %2698, 0.000000e+00
  br i1 %2699, label %2700, label %2704

; <label>:2700                                    ; preds = %2650
  %2701 = fdiv fast float %2690, %2698
  %2702 = fdiv fast float %2691, %2698
  %2703 = fdiv fast float %2692, %2698
  br label %2704

; <label>:2704                                    ; preds = %2700, %2650
  %2705 = phi float [ %2701, %2700 ], [ 0.000000e+00, %2650 ]
  %2706 = phi float [ %2702, %2700 ], [ 0.000000e+00, %2650 ]
  %2707 = phi float [ %2703, %2700 ], [ 0.000000e+00, %2650 ]
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2711 = fsub fast float %1864, %2709
  %2712 = fsub fast float %1865, %2710
  %2713 = fmul fast float %2711, %2711
  %2714 = fmul fast float %2712, %2712
  %2715 = fadd fast float %2713, %2714
  %2716 = call float @dx.op.unary.f32(i32 24, float %2715)  ; Sqrt(value)
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2720 = fsub fast float %2716, %2718
  %2721 = fdiv fast float %2720, %2719
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = fmul fast float %2722, 2.000000e+00
  %2724 = fsub fast float 3.000000e+00, %2723
  %2725 = fmul fast float %2722, %2722
  %2726 = fmul fast float %2725, %2724
  %2727 = call float @dx.op.dot3.f32(i32 55, float %2705, float %2706, float %2707, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2727)  ; FMax(a,b)
  %2729 = fmul fast float %2728, 0x400C5BF8A0000000
  %2730 = fmul fast float %2726, %2679
  %2731 = fmul fast float %2730, %2729
  %2732 = fadd fast float %2731, %2648
  %2733 = fmul fast float %2726, %2680
  %2734 = fmul fast float %2733, %2729
  %2735 = fadd fast float %2734, %2647
  %2736 = fmul fast float %2726, %2681
  %2737 = fmul fast float %2736, %2729
  %2738 = fadd fast float %2737, %2646
  br label %2739

; <label>:2739                                    ; preds = %2704, %2645, %2573
  %2740 = phi float [ %2738, %2704 ], [ %2646, %2645 ], [ %2585, %2573 ]
  %2741 = phi float [ %2735, %2704 ], [ %2647, %2645 ], [ %2584, %2573 ]
  %2742 = phi float [ %2732, %2704 ], [ %2648, %2645 ], [ %2583, %2573 ]
  %2743 = fcmp fast ogt float %2230, %2267
  %2744 = and i1 %2586, %2743
  %2745 = and i1 %2588, %2744
  %2746 = and i1 %2590, %2745
  %2747 = and i1 %2592, %2746
  br i1 %2747, label %2748, label %2805, !dx.controlflow.hints !78

; <label>:2748                                    ; preds = %2739
  %2749 = fmul fast float %2269, 0x3FC24924A0000000
  %2750 = fsub fast float %2230, %2267
  %2751 = fdiv fast float %2750, %2749
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.CBufRet.f32 %2755, 2
  %2759 = fsub fast float %2754, %2742
  %2760 = fsub fast float %2756, %2580
  %2761 = fsub fast float %2757, %2581
  %2762 = fsub fast float %2758, %2582
  %2763 = fmul fast float %2759, %2752
  %2764 = fmul fast float %2760, %2752
  %2765 = fmul fast float %2761, %2752
  %2766 = fmul fast float %2762, %2752
  %2767 = fadd fast float %2763, %2742
  %2768 = fadd fast float %2764, %2580
  %2769 = fadd fast float %2765, %2581
  %2770 = fadd fast float %2766, %2582
  %2771 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2774 = extractvalue %dx.types.CBufRet.f32 %2772, 1
  %2775 = extractvalue %dx.types.CBufRet.f32 %2772, 2
  %2776 = fsub fast float %2771, %2741
  %2777 = fsub fast float %2773, %2577
  %2778 = fsub fast float %2774, %2578
  %2779 = fsub fast float %2775, %2579
  %2780 = fmul fast float %2776, %2752
  %2781 = fmul fast float %2777, %2752
  %2782 = fmul fast float %2778, %2752
  %2783 = fmul fast float %2779, %2752
  %2784 = fadd fast float %2780, %2741
  %2785 = fadd fast float %2781, %2577
  %2786 = fadd fast float %2782, %2578
  %2787 = fadd fast float %2783, %2579
  %2788 = extractvalue %dx.types.CBufRet.f32 %2753, 2
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2793 = fsub fast float %2788, %2740
  %2794 = fsub fast float %2790, %2574
  %2795 = fsub fast float %2791, %2575
  %2796 = fsub fast float %2792, %2576
  %2797 = fmul fast float %2793, %2752
  %2798 = fmul fast float %2794, %2752
  %2799 = fmul fast float %2795, %2752
  %2800 = fmul fast float %2796, %2752
  %2801 = fadd fast float %2797, %2740
  %2802 = fadd fast float %2798, %2574
  %2803 = fadd fast float %2799, %2575
  %2804 = fadd fast float %2800, %2576
  br label %2805

; <label>:2805                                    ; preds = %2748, %2739
  %2806 = phi float [ %2801, %2748 ], [ %2740, %2739 ]
  %2807 = phi float [ %2802, %2748 ], [ %2574, %2739 ]
  %2808 = phi float [ %2803, %2748 ], [ %2575, %2739 ]
  %2809 = phi float [ %2804, %2748 ], [ %2576, %2739 ]
  %2810 = phi float [ %2784, %2748 ], [ %2741, %2739 ]
  %2811 = phi float [ %2785, %2748 ], [ %2577, %2739 ]
  %2812 = phi float [ %2786, %2748 ], [ %2578, %2739 ]
  %2813 = phi float [ %2787, %2748 ], [ %2579, %2739 ]
  %2814 = phi float [ %2767, %2748 ], [ %2742, %2739 ]
  %2815 = phi float [ %2768, %2748 ], [ %2580, %2739 ]
  %2816 = phi float [ %2769, %2748 ], [ %2581, %2739 ]
  %2817 = phi float [ %2770, %2748 ], [ %2582, %2739 ]
  %2818 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2819 = fmul fast float %2818, %2814
  %2820 = fmul fast float %2818, %2810
  %2821 = fmul fast float %2818, %2806
  %2822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.f32 %2822, 3
  %2824 = fmul fast float %2819, %2823
  %2825 = fmul fast float %2820, %2823
  %2826 = fmul fast float %2821, %2823
  %2827 = fmul fast float %2815, 1.500000e+00
  %2828 = fmul fast float %2827, %2818
  %2829 = fmul fast float %2828, %2823
  %2830 = fmul fast float %2816, 1.500000e+00
  %2831 = fmul fast float %2830, %2818
  %2832 = fmul fast float %2831, %2823
  %2833 = fmul fast float %2817, 1.500000e+00
  %2834 = fmul fast float %2833, %2818
  %2835 = fmul fast float %2834, %2823
  %2836 = fmul fast float %2811, 1.500000e+00
  %2837 = fmul fast float %2836, %2818
  %2838 = fmul fast float %2837, %2823
  %2839 = fmul fast float %2812, 1.500000e+00
  %2840 = fmul fast float %2839, %2818
  %2841 = fmul fast float %2840, %2823
  %2842 = fmul fast float %2813, 1.500000e+00
  %2843 = fmul fast float %2842, %2818
  %2844 = fmul fast float %2843, %2823
  %2845 = fmul fast float %2807, 1.500000e+00
  %2846 = fmul fast float %2845, %2818
  %2847 = fmul fast float %2846, %2823
  %2848 = fmul fast float %2808, 1.500000e+00
  %2849 = fmul fast float %2848, %2818
  %2850 = fmul fast float %2849, %2823
  %2851 = fmul fast float %2809, 1.500000e+00
  %2852 = fmul fast float %2851, %2818
  %2853 = fmul fast float %2852, %2823
  %2854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2824)  ; FMax(a,b)
  %2855 = call float @dx.op.dot3.f32(i32 55, float %2829, float %2832, float %2835, float %2829, float %2832, float %2835)  ; Dot3(ax,ay,az,bx,by,bz)
  %2856 = fcmp fast oeq float %2855, 0.000000e+00
  %2857 = fcmp fast oeq float %2854, 0.000000e+00
  %2858 = or i1 %2857, %2856
  br i1 %2858, label %2888, label %2859

; <label>:2859                                    ; preds = %2805
  %2860 = fsub fast float -0.000000e+00, %2835
  %2861 = fsub fast float -0.000000e+00, %2829
  %2862 = call float @dx.op.unary.f32(i32 24, float %2855)  ; Sqrt(value)
  %2863 = fdiv fast float %2862, %2854
  %2864 = fcmp fast ogt float %2863, 0x3FFB6F8900000000
  %2865 = select i1 %2864, float 0x3FFB6F8900000000, float %2863
  %2866 = fmul fast float %2865, 0x3FE8A23460000000
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2868 = call float @dx.op.binary.f32(i32 35, float %2865, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2869 = fmul fast float %2867, %2854
  %2870 = fmul fast float %2868, 0x3FF279A740000000
  %2871 = fadd fast float %2870, -1.000000e+00
  %2872 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2861, float %2832, float %2860, float %2861, float %2832)  ; Dot3(ax,ay,az,bx,by,bz)
  %2873 = call float @dx.op.unary.f32(i32 25, float %2872)  ; Rsqrt(value)
  %2874 = fmul fast float %2873, %2860
  %2875 = fmul fast float %2873, %2861
  %2876 = fmul fast float %2873, %2832
  %2877 = fmul fast float %2871, %2871
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2868, 0x40005F8BE0000000
  %2880 = fsub fast float 0x400C5BF8A0000000, %2879
  %2881 = fdiv fast float %2869, %2880
  %2882 = fmul fast float %2881, 0x3FEE31C3C0000000
  %2883 = fmul fast float %2882, %2878
  %2884 = fmul fast float %2868, 0x3FDACB7480000000
  %2885 = fadd fast float %2884, 0xBFD7347680000000
  %2886 = fmul fast float %2885, %2881
  %2887 = fmul fast float %2886, %2878
  br label %2888

; <label>:2888                                    ; preds = %2859, %2805
  %2889 = phi float [ %2874, %2859 ], [ 0.000000e+00, %2805 ]
  %2890 = phi float [ %2875, %2859 ], [ 0.000000e+00, %2805 ]
  %2891 = phi float [ %2876, %2859 ], [ 0.000000e+00, %2805 ]
  %2892 = phi float [ %2883, %2859 ], [ 0.000000e+00, %2805 ]
  %2893 = phi float [ %2887, %2859 ], [ 0.000000e+00, %2805 ]
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2889, float %2890, float %2891, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = fmul fast float %2894, %2894
  %2896 = fmul fast float %2895, 0x3FEE471020000000
  %2897 = fadd fast float %2896, 0xBFD42F6020000000
  %2898 = fmul fast float %2854, 0x3FD20DD760000000
  %2899 = fmul fast float %2897, %2893
  %2900 = fmul fast float %2892, 0x3FDF454380000000
  %2901 = fmul fast float %2900, %2894
  %2902 = fadd fast float %2901, %2898
  %2903 = fadd fast float %2902, %2899
  %2904 = call float @dx.op.dot3.f32(i32 55, float %2889, float %2890, float %2891, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2905 = fmul fast float %2904, 0x3FDF454380000000
  %2906 = fmul fast float %2904, %2904
  %2907 = fmul fast float %2906, 0x3FEE471020000000
  %2908 = fadd fast float %2907, 0xBFD42F6020000000
  %2909 = call float @dx.op.dot3.f32(i32 55, float %2854, float %2892, float %2893, float 0x3FD20DD760000000, float %2905, float %2908)  ; Dot3(ax,ay,az,bx,by,bz)
  %2910 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2825)  ; FMax(a,b)
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2838, float %2841, float %2844, float %2838, float %2841, float %2844)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = fcmp fast oeq float %2911, 0.000000e+00
  %2913 = fcmp fast oeq float %2910, 0.000000e+00
  %2914 = or i1 %2913, %2912
  br i1 %2914, label %2944, label %2915

; <label>:2915                                    ; preds = %2888
  %2916 = fsub fast float -0.000000e+00, %2844
  %2917 = fsub fast float -0.000000e+00, %2838
  %2918 = call float @dx.op.unary.f32(i32 24, float %2911)  ; Sqrt(value)
  %2919 = fdiv fast float %2918, %2910
  %2920 = fcmp fast ogt float %2919, 0x3FFB6F8900000000
  %2921 = select i1 %2920, float 0x3FFB6F8900000000, float %2919
  %2922 = fmul fast float %2921, 0x3FE8A23460000000
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2921, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2925 = fmul fast float %2923, %2910
  %2926 = fmul fast float %2924, 0x3FF279A740000000
  %2927 = fadd fast float %2926, -1.000000e+00
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2841, float %2916, float %2917, float %2841)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = call float @dx.op.unary.f32(i32 25, float %2928)  ; Rsqrt(value)
  %2930 = fmul fast float %2929, %2916
  %2931 = fmul fast float %2929, %2917
  %2932 = fmul fast float %2929, %2841
  %2933 = fmul fast float %2927, %2927
  %2934 = fsub fast float 1.000000e+00, %2933
  %2935 = fmul fast float %2924, 0x40005F8BE0000000
  %2936 = fsub fast float 0x400C5BF8A0000000, %2935
  %2937 = fdiv fast float %2925, %2936
  %2938 = fmul fast float %2937, 0x3FEE31C3C0000000
  %2939 = fmul fast float %2938, %2934
  %2940 = fmul fast float %2924, 0x3FDACB7480000000
  %2941 = fadd fast float %2940, 0xBFD7347680000000
  %2942 = fmul fast float %2941, %2937
  %2943 = fmul fast float %2942, %2934
  br label %2944

; <label>:2944                                    ; preds = %2915, %2888
  %2945 = phi float [ %2930, %2915 ], [ 0.000000e+00, %2888 ]
  %2946 = phi float [ %2931, %2915 ], [ 0.000000e+00, %2888 ]
  %2947 = phi float [ %2932, %2915 ], [ 0.000000e+00, %2888 ]
  %2948 = phi float [ %2939, %2915 ], [ 0.000000e+00, %2888 ]
  %2949 = phi float [ %2943, %2915 ], [ 0.000000e+00, %2888 ]
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2946, float %2947, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = fmul fast float %2950, %2950
  %2952 = fmul fast float %2951, 0x3FEE471020000000
  %2953 = fadd fast float %2952, 0xBFD42F6020000000
  %2954 = fmul fast float %2910, 0x3FD20DD760000000
  %2955 = fmul fast float %2953, %2949
  %2956 = fmul fast float %2948, 0x3FDF454380000000
  %2957 = fmul fast float %2956, %2950
  %2958 = fadd fast float %2957, %2954
  %2959 = fadd fast float %2958, %2955
  %2960 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2946, float %2947, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2961 = fmul fast float %2960, 0x3FDF454380000000
  %2962 = fmul fast float %2960, %2960
  %2963 = fmul fast float %2962, 0x3FEE471020000000
  %2964 = fadd fast float %2963, 0xBFD42F6020000000
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2910, float %2948, float %2949, float 0x3FD20DD760000000, float %2961, float %2964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2826)  ; FMax(a,b)
  %2967 = call float @dx.op.dot3.f32(i32 55, float %2847, float %2850, float %2853, float %2847, float %2850, float %2853)  ; Dot3(ax,ay,az,bx,by,bz)
  %2968 = fcmp fast oeq float %2967, 0.000000e+00
  %2969 = fcmp fast oeq float %2966, 0.000000e+00
  %2970 = or i1 %2969, %2968
  br i1 %2970, label %3000, label %2971

; <label>:2971                                    ; preds = %2944
  %2972 = fsub fast float -0.000000e+00, %2853
  %2973 = fsub fast float -0.000000e+00, %2847
  %2974 = call float @dx.op.unary.f32(i32 24, float %2967)  ; Sqrt(value)
  %2975 = fdiv fast float %2974, %2966
  %2976 = fcmp fast ogt float %2975, 0x3FFB6F8900000000
  %2977 = select i1 %2976, float 0x3FFB6F8900000000, float %2975
  %2978 = fmul fast float %2977, 0x3FE8A23460000000
  %2979 = call float @dx.op.unary.f32(i32 7, float %2978)  ; Saturate(value)
  %2980 = call float @dx.op.binary.f32(i32 35, float %2977, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2981 = fmul fast float %2979, %2966
  %2982 = fmul fast float %2980, 0x3FF279A740000000
  %2983 = fadd fast float %2982, -1.000000e+00
  %2984 = call float @dx.op.dot3.f32(i32 55, float %2972, float %2973, float %2850, float %2972, float %2973, float %2850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2985 = call float @dx.op.unary.f32(i32 25, float %2984)  ; Rsqrt(value)
  %2986 = fmul fast float %2985, %2972
  %2987 = fmul fast float %2985, %2973
  %2988 = fmul fast float %2985, %2850
  %2989 = fmul fast float %2983, %2983
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = fmul fast float %2980, 0x40005F8BE0000000
  %2992 = fsub fast float 0x400C5BF8A0000000, %2991
  %2993 = fdiv fast float %2981, %2992
  %2994 = fmul fast float %2993, 0x3FEE31C3C0000000
  %2995 = fmul fast float %2994, %2990
  %2996 = fmul fast float %2980, 0x3FDACB7480000000
  %2997 = fadd fast float %2996, 0xBFD7347680000000
  %2998 = fmul fast float %2997, %2993
  %2999 = fmul fast float %2998, %2990
  br label %3000

; <label>:3000                                    ; preds = %2971, %2944
  %3001 = phi float [ %2986, %2971 ], [ 0.000000e+00, %2944 ]
  %3002 = phi float [ %2987, %2971 ], [ 0.000000e+00, %2944 ]
  %3003 = phi float [ %2988, %2971 ], [ 0.000000e+00, %2944 ]
  %3004 = phi float [ %2995, %2971 ], [ 0.000000e+00, %2944 ]
  %3005 = phi float [ %2999, %2971 ], [ 0.000000e+00, %2944 ]
  %3006 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = fmul fast float %3006, %3006
  %3008 = fmul fast float %3007, 0x3FEE471020000000
  %3009 = fadd fast float %3008, 0xBFD42F6020000000
  %3010 = fmul fast float %2966, 0x3FD20DD760000000
  %3011 = fmul fast float %3009, %3005
  %3012 = fmul fast float %3004, 0x3FDF454380000000
  %3013 = fmul fast float %3012, %3006
  %3014 = fadd fast float %3013, %3010
  %3015 = fadd fast float %3014, %3011
  %3016 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float %1854, float %1855, float %1856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = fmul fast float %3016, 0x3FDF454380000000
  %3018 = fmul fast float %3016, %3016
  %3019 = fmul fast float %3018, 0x3FEE471020000000
  %3020 = fadd fast float %3019, 0xBFD42F6020000000
  %3021 = call float @dx.op.dot3.f32(i32 55, float %2966, float %3004, float %3005, float 0x3FD20DD760000000, float %3017, float %3020)  ; Dot3(ax,ay,az,bx,by,bz)
  %3022 = call float @dx.op.binary.f32(i32 35, float %2903, float 0.000000e+00)  ; FMax(a,b)
  %3023 = call float @dx.op.binary.f32(i32 35, float %2959, float 0.000000e+00)  ; FMax(a,b)
  %3024 = call float @dx.op.binary.f32(i32 35, float %3015, float 0.000000e+00)  ; FMax(a,b)
  %3025 = call float @dx.op.binary.f32(i32 35, float %2909, float 0.000000e+00)  ; FMax(a,b)
  %3026 = call float @dx.op.binary.f32(i32 35, float %2965, float 0.000000e+00)  ; FMax(a,b)
  %3027 = call float @dx.op.binary.f32(i32 35, float %3021, float 0.000000e+00)  ; FMax(a,b)
  %3028 = fsub fast float %2224, %3022
  %3029 = fsub fast float %2225, %3023
  %3030 = fsub fast float %2226, %3024
  %3031 = fmul fast float %3028, %1905
  %3032 = fmul fast float %3029, %1905
  %3033 = fmul fast float %3030, %1905
  %3034 = fadd fast float %3031, %3022
  %3035 = fadd fast float %3032, %3023
  %3036 = fadd fast float %3033, %3024
  %3037 = fsub fast float %2221, %3025
  %3038 = fsub fast float %2222, %3026
  %3039 = fsub fast float %2223, %3027
  %3040 = fmul fast float %3037, %1905
  %3041 = fmul fast float %3038, %1905
  %3042 = fmul fast float %3039, %1905
  %3043 = fadd fast float %3040, %3025
  %3044 = fadd fast float %3041, %3026
  %3045 = fadd fast float %3042, %3027
  br label %3046

; <label>:3046                                    ; preds = %3000, %2220
  %3047 = phi float [ %3043, %3000 ], [ %2221, %2220 ]
  %3048 = phi float [ %3044, %3000 ], [ %2222, %2220 ]
  %3049 = phi float [ %3045, %3000 ], [ %2223, %2220 ]
  %3050 = phi float [ %3034, %3000 ], [ %2224, %2220 ]
  %3051 = phi float [ %3035, %3000 ], [ %2225, %2220 ]
  %3052 = phi float [ %3036, %3000 ], [ %2226, %2220 ]
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 0
  %3055 = call float @dx.op.binary.f32(i32 36, float %1838, float %3054)  ; FMin(a,b)
  %3056 = fsub fast float 1.000000e+00, %1857
  %3057 = fmul fast float %3055, %3056
  %3058 = fsub fast float 1.000000e+00, %3057
  %3059 = bitcast float %3058 to i32
  %3060 = sub nsw i32 2129859010, %3059
  %3061 = bitcast i32 %3060 to float
  %3062 = call float @dx.op.binary.f32(i32 36, float %1839, float %3054)  ; FMin(a,b)
  %3063 = fmul fast float %3062, %3056
  %3064 = fsub fast float 1.000000e+00, %3063
  %3065 = bitcast float %3064 to i32
  %3066 = sub nsw i32 2129859010, %3065
  %3067 = bitcast i32 %3066 to float
  %3068 = call float @dx.op.binary.f32(i32 36, float %1840, float %3054)  ; FMin(a,b)
  %3069 = fmul fast float %3068, %3056
  %3070 = fsub fast float 1.000000e+00, %3069
  %3071 = bitcast float %3070 to i32
  %3072 = sub nsw i32 2129859010, %3071
  %3073 = bitcast i32 %3072 to float
  %3074 = fmul fast float %3050, %1857
  %3075 = fmul fast float %3074, %3061
  %3076 = fmul fast float %3051, %1857
  %3077 = fmul fast float %3076, %3067
  %3078 = fmul fast float %3052, %1857
  %3079 = fmul fast float %3078, %3073
  %3080 = call float @dx.op.binary.f32(i32 36, float %1835, float %3054)  ; FMin(a,b)
  %3081 = fmul fast float %3080, %3056
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = bitcast float %3082 to i32
  %3084 = sub nsw i32 2129859010, %3083
  %3085 = bitcast i32 %3084 to float
  %3086 = call float @dx.op.binary.f32(i32 36, float %1836, float %3054)  ; FMin(a,b)
  %3087 = fmul fast float %3086, %3056
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = bitcast float %3088 to i32
  %3090 = sub nsw i32 2129859010, %3089
  %3091 = bitcast i32 %3090 to float
  %3092 = call float @dx.op.binary.f32(i32 36, float %1846, float %3054)  ; FMin(a,b)
  %3093 = fmul fast float %3092, %3056
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = bitcast float %3094 to i32
  %3096 = sub nsw i32 2129859010, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3047, %1857
  %3099 = fmul fast float %3098, %3085
  %3100 = fmul fast float %3048, %1857
  %3101 = fmul fast float %3100, %3091
  %3102 = fmul fast float %3049, %1857
  %3103 = fmul fast float %3102, %3097
  %3104 = call float @dx.op.dot3.f32(i32 55, float %3075, float %3077, float %3079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3105 = select i1 %186, float 0.000000e+00, float %3075
  %3106 = select i1 %186, float %3104, float %3077
  %3107 = select i1 %186, float 0.000000e+00, float %3079
  %3108 = call float @dx.op.dot3.f32(i32 55, float %3099, float %3101, float %3103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3109 = select i1 %186, float 0.000000e+00, float %3099
  %3110 = select i1 %186, float %3108, float %3101
  %3111 = select i1 %186, float 0.000000e+00, float %3103
  %3112 = fmul fast float %1848, 9.843750e-01
  %3113 = fmul fast float %1844, 9.843750e-01
  %3114 = fadd fast float %3112, 7.812500e-03
  %3115 = fadd fast float %3113, 7.812500e-03
  %3116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3117 = extractvalue %dx.types.ResRet.f32 %3116, 2
  %3118 = extractvalue %dx.types.ResRet.f32 %3116, 3
  %3119 = fmul fast float %3117, %1835
  %3120 = fmul fast float %3117, %1836
  %3121 = fmul fast float %3117, %1846
  %3122 = fadd fast float %3119, %3118
  %3123 = fadd fast float %3120, %3118
  %3124 = fadd fast float %3121, %3118
  %3125 = fcmp fast ogt float %1212, 0.000000e+00
  br i1 %3125, label %3126, label %3152

; <label>:3126                                    ; preds = %3046
  %3127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1212, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.ResRet.f32 %3127, 1
  %3130 = extractvalue %dx.types.ResRet.f32 %3127, 2
  %3131 = fadd fast float %3128, -5.000000e-01
  %3132 = fadd fast float %3129, -5.000000e-01
  %3133 = fadd fast float %3130, -5.000000e-01
  %3134 = fsub fast float 1.000000e+00, %1835
  %3135 = fsub fast float 1.000000e+00, %1836
  %3136 = fsub fast float 1.000000e+00, %1846
  %3137 = fmul fast float %1835, 4.000000e+00
  %3138 = fmul fast float %3137, %3134
  %3139 = fmul fast float %3138, %3131
  %3140 = fmul fast float %1836, 4.000000e+00
  %3141 = fmul fast float %3140, %3135
  %3142 = fmul fast float %3141, %3132
  %3143 = fmul fast float %1846, 4.000000e+00
  %3144 = fmul fast float %3143, %3136
  %3145 = fmul fast float %3144, %3133
  %3146 = fadd fast float %3139, %3122
  %3147 = fadd fast float %3142, %3123
  %3148 = fadd fast float %3145, %3124
  %3149 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3150 = call float @dx.op.unary.f32(i32 7, float %3147)  ; Saturate(value)
  %3151 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  br label %3152

; <label>:3152                                    ; preds = %3126, %3046
  %3153 = phi float [ %3149, %3126 ], [ %3122, %3046 ]
  %3154 = phi float [ %3150, %3126 ], [ %3123, %3046 ]
  %3155 = phi float [ %3151, %3126 ], [ %3124, %3046 ]
  %3156 = call float @dx.op.binary.f32(i32 35, float %3154, float %3155)  ; FMax(a,b)
  %3157 = call float @dx.op.binary.f32(i32 35, float %3153, float %3156)  ; FMax(a,b)
  %3158 = fsub fast float 1.000000e+00, %3157
  %3159 = fmul fast float %3158, %3105
  %3160 = fmul fast float %3158, %3106
  %3161 = fmul fast float %3158, %3107
  %3162 = call float @dx.op.dot3.f32(i32 55, float %1838, float %1839, float %1840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3163 = fcmp fast ogt float %3162, 0x3E7FF19E20000000
  %3164 = fdiv fast float 1.000000e+00, %3162
  %3165 = select i1 %3163, float %3164, float 0.000000e+00
  %3166 = fmul fast float %3165, %1838
  %3167 = fmul fast float %3165, %1839
  %3168 = fmul fast float %3165, %1840
  %3169 = fadd fast float %3166, -1.000000e+00
  %3170 = fadd fast float %3167, -1.000000e+00
  %3171 = fadd fast float %3168, -1.000000e+00
  %3172 = fmul fast float %3169, 5.000000e-01
  %3173 = fmul fast float %3170, 5.000000e-01
  %3174 = fmul fast float %3171, 5.000000e-01
  %3175 = fadd fast float %3172, 1.000000e+00
  %3176 = fadd fast float %3173, 1.000000e+00
  %3177 = fadd fast float %3174, 1.000000e+00
  %3178 = fmul fast float %3153, %3109
  %3179 = fmul fast float %3154, %3110
  %3180 = fmul fast float %3155, %3111
  %3181 = fsub fast float 1.000000e+00, %1848
  %3182 = bitcast float %3181 to i32
  %3183 = sitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 5.000000e+00
  %3185 = fadd fast float %3184, 0xC1EFBF8940000000
  %3186 = fptosi float %3185 to i32
  %3187 = bitcast i32 %3186 to float
  %3188 = fmul fast float %3187, %1211
  %3189 = fmul fast float %3105, %3188
  %3190 = fmul fast float %3189, %3158
  %3191 = fmul fast float %3190, %3175
  %3192 = fmul fast float %3106, %3188
  %3193 = fmul fast float %3192, %3158
  %3194 = fmul fast float %3193, %3176
  %3195 = fmul fast float %3107, %3188
  %3196 = fmul fast float %3195, %3158
  %3197 = fmul fast float %3196, %3177
  %3198 = fmul fast float %3159, %1232
  %3199 = fmul fast float %3160, %1232
  %3200 = fmul fast float %3161, %1232
  %3201 = fadd fast float %3178, %1213
  %3202 = fadd fast float %3201, %3191
  %3203 = fmul fast float %3202, %1232
  %3204 = fadd fast float %3179, %1214
  %3205 = fadd fast float %3204, %3194
  %3206 = fmul fast float %3205, %1232
  %3207 = fadd fast float %3180, %1215
  %3208 = fadd fast float %3207, %3197
  %3209 = fmul fast float %3208, %1232
  %3210 = bitcast i32 %1860 to float
  %3211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.f32 %3211, 3
  %3213 = fcmp fast oeq float %3212, 0.000000e+00
  br i1 %3213, label %3441, label %3214

; <label>:3214                                    ; preds = %3152
  %3215 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  %3216 = extractvalue %dx.types.CBufRet.f32 %3211, 1
  %3217 = extractvalue %dx.types.CBufRet.f32 %3211, 2
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3221 = extractvalue %dx.types.CBufRet.f32 %3218, 2
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3225 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3226 = select i1 %186, float %3223, float %3219
  %3227 = select i1 %186, float %3225, float %3220
  %3228 = select i1 %186, float %3224, float %3221
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3231 = fcmp fast une float %3230, 0.000000e+00
  br i1 %3231, label %3232, label %3249

; <label>:3232                                    ; preds = %3214
  %3233 = fptoui float %60 to i32
  %3234 = fptoui float %61 to i32
  %3235 = lshr i32 %3233, 4
  %3236 = lshr i32 %3234, 4
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 0
  %3239 = fptoui float %3238 to i32
  %3240 = add i32 %3239, 15
  %3241 = lshr i32 %3240, 4
  %3242 = mul i32 %3241, %3236
  %3243 = add i32 %3242, %3235
  %3244 = shl i32 %3243, 3
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %3246, -268435456
  %3248 = icmp eq i32 %3247, -1342177280
  br i1 %3248, label %3259, label %3249

; <label>:3249                                    ; preds = %3232, %3214
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 2
  %3252 = extractvalue %dx.types.CBufRet.f32 %3250, 3
  %3253 = fmul fast float %3251, %60
  %3254 = fmul fast float %3252, %61
  %3255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3253, float %3254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = extractvalue %dx.types.ResRet.f32 %3255, 1
  %3258 = extractvalue %dx.types.ResRet.f32 %3255, 2
  br label %3259

; <label>:3259                                    ; preds = %3249, %3232
  %3260 = phi float [ %3256, %3249 ], [ 0.000000e+00, %3232 ]
  %3261 = phi float [ %3257, %3249 ], [ 0.000000e+00, %3232 ]
  %3262 = phi float [ %3258, %3249 ], [ 0.000000e+00, %3232 ]
  %3263 = call float @dx.op.binary.f32(i32 36, float %3261, float %3262)  ; FMin(a,b)
  %3264 = call float @dx.op.binary.f32(i32 36, float %3260, float %3263)  ; FMin(a,b)
  %3265 = fcmp fast ogt float %3264, 0.000000e+00
  br i1 %3265, label %3266, label %3441, !dx.controlflow.hints !79

; <label>:3266                                    ; preds = %3259
  %3267 = fmul fast float %3260, %3226
  %3268 = fmul fast float %3261, %3227
  %3269 = fmul fast float %3262, %3228
  %3270 = fsub fast float %3215, %1834
  %3271 = fsub fast float %3216, %1833
  %3272 = fsub fast float %3217, %1832
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3270, float %3271, float %3272, float %3270, float %3271, float %3272)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = call float @dx.op.unary.f32(i32 25, float %3273)  ; Rsqrt(value)
  %3275 = fmul fast float %3274, %3270
  %3276 = fmul fast float %3274, %3271
  %3277 = fmul fast float %3274, %3272
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3215, float %3216, float %3217, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1830, float %1829, float %3275, float %3276, float %3277)  ; Dot3(ax,ay,az,bx,by,bz)
  %3280 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3281 = fmul fast float %3280, %3280
  %3282 = fmul fast float %3281, %3210
  %3283 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3284 = fmul fast float %3283, %3280
  %3285 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %3275, float %3276, float %3277)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = fmul fast float %3285, %3285
  %3287 = call float @dx.op.unary.f32(i32 6, float %3278)  ; FAbs(value)
  %3288 = fsub fast float 1.000000e+00, %1844
  %3289 = call float @dx.op.binary.f32(i32 35, float %3288, float 0x3F847AE140000000)  ; FMax(a,b)
  %3290 = fmul fast float %3289, %3289
  %3291 = fmul fast float %3290, %3290
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = fmul fast float %1848, %1848
  %3294 = fmul fast float %3293, %3292
  %3295 = fadd fast float %3294, %3291
  %3296 = bitcast float %3295 to i32
  %3297 = ashr i32 %3296, 1
  %3298 = add nsw i32 %3297, 532487669
  %3299 = bitcast i32 %3298 to float
  %3300 = fadd fast float %3299, %1848
  %3301 = fmul fast float %3291, %3286
  %3302 = fsub fast float 1.000000e+00, %3286
  %3303 = fadd fast float %3302, %3301
  %3304 = fmul fast float %3287, %3287
  %3305 = fmul fast float %3304, %3292
  %3306 = fadd fast float %3305, %3291
  %3307 = bitcast float %3306 to i32
  %3308 = ashr i32 %3307, 1
  %3309 = add nsw i32 %3308, 532487669
  %3310 = bitcast i32 %3309 to float
  %3311 = fadd fast float %3310, %3287
  %3312 = fmul fast float %3303, %3303
  %3313 = fmul fast float %3312, %3300
  %3314 = fmul fast float %3313, %3311
  %3315 = fdiv fast float 0x3FF0A00000000000, %3314
  %3316 = fmul fast float %3315, %3291
  %3317 = call float @dx.op.unary.f32(i32 6, float %3279)  ; FAbs(value)
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = bitcast float %3318 to i32
  %3320 = sitofp i32 %3319 to float
  %3321 = fmul fast float %3320, 5.000000e+00
  %3322 = fadd fast float %3321, 0xC1EFBF8940000000
  %3323 = fptosi float %3322 to i32
  %3324 = bitcast i32 %3323 to float
  %3325 = fsub fast float 1.000000e+00, %1835
  %3326 = fsub fast float 1.000000e+00, %1836
  %3327 = fsub fast float 1.000000e+00, %1846
  %3328 = fmul fast float %3324, %3325
  %3329 = fmul fast float %3324, %3326
  %3330 = fmul fast float %3324, %3327
  %3331 = fadd fast float %3328, %1835
  %3332 = fadd fast float %3329, %1836
  %3333 = fadd fast float %3330, %1846
  br i1 %3125, label %3334, label %3357

; <label>:3334                                    ; preds = %3266
  %3335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1212, float %3317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3336 = extractvalue %dx.types.ResRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.ResRet.f32 %3335, 1
  %3338 = extractvalue %dx.types.ResRet.f32 %3335, 2
  %3339 = fadd fast float %3336, -5.000000e-01
  %3340 = fadd fast float %3337, -5.000000e-01
  %3341 = fadd fast float %3338, -5.000000e-01
  %3342 = fmul fast float %1835, 4.000000e+00
  %3343 = fmul fast float %3342, %3325
  %3344 = fmul fast float %3343, %3339
  %3345 = fmul fast float %1836, 4.000000e+00
  %3346 = fmul fast float %3345, %3326
  %3347 = fmul fast float %3346, %3340
  %3348 = fmul fast float %1846, 4.000000e+00
  %3349 = fmul fast float %3348, %3327
  %3350 = fmul fast float %3349, %3341
  %3351 = fadd fast float %3344, %3331
  %3352 = fadd fast float %3347, %3332
  %3353 = fadd fast float %3350, %3333
  %3354 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  %3355 = call float @dx.op.unary.f32(i32 7, float %3352)  ; Saturate(value)
  %3356 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  br label %3357

; <label>:3357                                    ; preds = %3334, %3266
  %3358 = phi float [ %3354, %3334 ], [ %3331, %3266 ]
  %3359 = phi float [ %3355, %3334 ], [ %3332, %3266 ]
  %3360 = phi float [ %3356, %3334 ], [ %3333, %3266 ]
  %3361 = fmul fast float %3278, 9.843750e-01
  %3362 = fadd fast float %3361, 7.812500e-03
  %3363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3362, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 3
  %3366 = fmul fast float %3364, %1835
  %3367 = fmul fast float %3364, %1836
  %3368 = fmul fast float %3364, %1846
  %3369 = fadd fast float %3366, %3365
  %3370 = fadd fast float %3367, %3365
  %3371 = fadd fast float %3368, %3365
  br i1 %3125, label %3372, label %3395

; <label>:3372                                    ; preds = %3357
  %3373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1212, float %3278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3374 = extractvalue %dx.types.ResRet.f32 %3373, 0
  %3375 = extractvalue %dx.types.ResRet.f32 %3373, 1
  %3376 = extractvalue %dx.types.ResRet.f32 %3373, 2
  %3377 = fadd fast float %3374, -5.000000e-01
  %3378 = fadd fast float %3375, -5.000000e-01
  %3379 = fadd fast float %3376, -5.000000e-01
  %3380 = fmul fast float %1835, 4.000000e+00
  %3381 = fmul fast float %3380, %3325
  %3382 = fmul fast float %3381, %3377
  %3383 = fmul fast float %1836, 4.000000e+00
  %3384 = fmul fast float %3383, %3326
  %3385 = fmul fast float %3384, %3378
  %3386 = fmul fast float %1846, 4.000000e+00
  %3387 = fmul fast float %3386, %3327
  %3388 = fmul fast float %3387, %3379
  %3389 = fadd fast float %3382, %3369
  %3390 = fadd fast float %3385, %3370
  %3391 = fadd fast float %3388, %3371
  %3392 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3393 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3394 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  br label %3395

; <label>:3395                                    ; preds = %3372, %3357
  %3396 = phi float [ %3392, %3372 ], [ %3369, %3357 ]
  %3397 = phi float [ %3393, %3372 ], [ %3370, %3357 ]
  %3398 = phi float [ %3394, %3372 ], [ %3371, %3357 ]
  %3399 = call float @dx.op.binary.f32(i32 35, float %3397, float %3398)  ; FMax(a,b)
  %3400 = call float @dx.op.binary.f32(i32 35, float %3396, float %3399)  ; FMax(a,b)
  %3401 = fsub fast float 1.000000e+00, %3400
  %3402 = fmul fast float %3358, %3316
  %3403 = fmul fast float %3359, %3316
  %3404 = fmul fast float %3360, %3316
  %3405 = fsub fast float 1.000000e+00, %3279
  %3406 = bitcast float %3405 to i32
  %3407 = sitofp i32 %3406 to float
  %3408 = fmul fast float %3407, 5.000000e+00
  %3409 = fadd fast float %3408, 0xC1EFBF8940000000
  %3410 = fptosi float %3409 to i32
  %3411 = bitcast i32 %3410 to float
  %3412 = fmul fast float %3411, %1211
  %3413 = fmul fast float %3401, %3412
  %3414 = fmul fast float %3413, %3175
  %3415 = fmul fast float %3413, %3176
  %3416 = fmul fast float %3413, %3177
  %3417 = fadd fast float %3414, %3402
  %3418 = fadd fast float %3415, %3403
  %3419 = fadd fast float %3416, %3404
  %3420 = fmul fast float %3284, %3267
  %3421 = fmul fast float %3420, %3401
  %3422 = fmul fast float %3284, %3268
  %3423 = fmul fast float %3422, %3401
  %3424 = fmul fast float %3284, %3269
  %3425 = fmul fast float %3424, %3401
  %3426 = fmul fast float %3420, %3417
  %3427 = fmul fast float %3422, %3418
  %3428 = fmul fast float %3424, %3419
  %3429 = fadd fast float %3421, %3159
  %3430 = fmul fast float %3429, %1232
  %3431 = fadd fast float %3423, %3160
  %3432 = fmul fast float %3431, %1232
  %3433 = fadd fast float %3425, %3161
  %3434 = fmul fast float %3433, %1232
  %3435 = fadd fast float %3426, %3202
  %3436 = fmul fast float %3435, %1232
  %3437 = fadd fast float %3427, %3205
  %3438 = fmul fast float %3437, %1232
  %3439 = fadd fast float %3428, %3208
  %3440 = fmul fast float %3439, %1232
  br label %3441

; <label>:3441                                    ; preds = %3395, %3259, %3152
  %3442 = phi float [ %3203, %3152 ], [ %3203, %3259 ], [ %3436, %3395 ]
  %3443 = phi float [ %3206, %3152 ], [ %3206, %3259 ], [ %3438, %3395 ]
  %3444 = phi float [ %3209, %3152 ], [ %3209, %3259 ], [ %3440, %3395 ]
  %3445 = phi float [ %3198, %3152 ], [ %3198, %3259 ], [ %3430, %3395 ]
  %3446 = phi float [ %3199, %3152 ], [ %3199, %3259 ], [ %3432, %3395 ]
  %3447 = phi float [ %3200, %3152 ], [ %3200, %3259 ], [ %3434, %3395 ]
  %3448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.i32 %3448, 0
  %3450 = icmp eq i32 %3449, 0
  br i1 %3450, label %3885, label %3451

; <label>:3451                                    ; preds = %3441
  %3452 = fptoui float %60 to i32
  %3453 = fptoui float %61 to i32
  %3454 = lshr i32 %3452, 4
  %3455 = lshr i32 %3453, 4
  %3456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.i32 %3456, 0
  %3458 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3455, i32 %3457, i32 %3454)  ; UMad(a,b,c)
  %3459 = add nsw i32 %3449, -1
  %3460 = call i32 @dx.op.binary.i32(i32 37, i32 %3459, i32 0)  ; IMax(a,b)
  %3461 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %3462 = fptoui float %3461 to i32
  %3463 = lshr i32 %3462, 5
  %3464 = call i32 @dx.op.binary.i32(i32 40, i32 %3463, i32 8191)  ; UMin(a,b)
  %3465 = shl i32 %3464, 2
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = lshr i32 %3467, 16
  %3469 = and i32 %3467, 65535
  %3470 = lshr i32 %3467, 21
  %3471 = lshr i32 %3469, 5
  %3472 = call i32 @dx.op.binary.i32(i32 40, i32 %3471, i32 %3460)  ; UMin(a,b)
  %3473 = icmp ugt i32 %3470, %3472
  br i1 %3473, label %3885, label %3474

; <label>:3474                                    ; preds = %3451
  br label %3475

; <label>:3475                                    ; preds = %3875, %3474
  %3476 = phi i32 [ %3882, %3875 ], [ %3470, %3474 ]
  %3477 = phi float [ %3876, %3875 ], [ %3442, %3474 ]
  %3478 = phi float [ %3877, %3875 ], [ %3443, %3474 ]
  %3479 = phi float [ %3878, %3875 ], [ %3444, %3474 ]
  %3480 = phi float [ %3879, %3875 ], [ %3445, %3474 ]
  %3481 = phi float [ %3880, %3875 ], [ %3446, %3474 ]
  %3482 = phi float [ %3881, %3875 ], [ %3447, %3474 ]
  %3483 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.i32 %3483, 0
  %3485 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3458, i32 %3484, i32 %3476)  ; UMad(a,b,c)
  %3486 = shl i32 %3485, 2
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = shl i32 %3476, 5
  %3490 = sub nsw i32 %3468, %3489
  %3491 = call i32 @dx.op.binary.i32(i32 37, i32 %3490, i32 0)  ; IMax(a,b)
  %3492 = call i32 @dx.op.binary.i32(i32 38, i32 %3491, i32 31)  ; IMin(a,b)
  %3493 = sub nsw i32 1, %3468
  %3494 = add nsw i32 %3493, %3469
  %3495 = call i32 @dx.op.binary.i32(i32 37, i32 %3494, i32 0)  ; IMax(a,b)
  %3496 = call i32 @dx.op.binary.i32(i32 38, i32 %3495, i32 32)  ; IMin(a,b)
  %3497 = and i32 %3496, 31
  %3498 = shl i32 -1, %3497
  %3499 = xor i32 %3498, -1
  %3500 = and i32 %3492, 31
  %3501 = shl i32 %3499, %3500
  %3502 = icmp eq i32 %3496, 32
  %3503 = select i1 %3502, i32 -1, i32 %3501
  %3504 = and i32 %3503, %3488
  %3505 = icmp eq i32 %3504, 0
  br i1 %3505, label %3875, label %3506

; <label>:3506                                    ; preds = %3475
  br label %3507

; <label>:3507                                    ; preds = %3587, %3506
  %3508 = phi i32 [ %3519, %3587 ], [ %3504, %3506 ]
  %3509 = phi float [ %3588, %3587 ], [ %3477, %3506 ]
  %3510 = phi float [ %3589, %3587 ], [ %3478, %3506 ]
  %3511 = phi float [ %3590, %3587 ], [ %3479, %3506 ]
  %3512 = phi float [ %3591, %3587 ], [ %3480, %3506 ]
  %3513 = phi float [ %3592, %3587 ], [ %3481, %3506 ]
  %3514 = phi float [ %3593, %3587 ], [ %3482, %3506 ]
  %3515 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3508)  ; FirstbitLo(value)
  %3516 = add i32 %3515, %3489
  %3517 = and i32 %3515, 31
  %3518 = shl i32 1, %3517
  %3519 = xor i32 %3518, %3508
  %3520 = mul i32 %3516, 112
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3525 = or i32 %3520, 12
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = add i32 %3520, 44
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = add i32 %3520, 48
  %3532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.f32 %3532, 0
  %3534 = extractvalue %dx.types.ResRet.f32 %3532, 1
  %3535 = extractvalue %dx.types.ResRet.f32 %3532, 2
  %3536 = add i32 %3520, 80
  %3537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3537, 2
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3523, float %3524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = select i1 %186, float %3538, float %3522
  %3542 = select i1 %186, float %3540, float %3523
  %3543 = select i1 %186, float %3539, float %3524
  %3544 = fsub fast float %3533, %115
  %3545 = fsub fast float %3534, %116
  %3546 = fsub fast float %3535, %117
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3544, float %3545, float %3546, float %3544, float %3545, float %3546)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = call float @dx.op.unary.f32(i32 24, float %3547)  ; Sqrt(value)
  %3549 = fdiv fast float 1.000000e+00, %3548
  %3550 = fmul fast float %3549, %3544
  %3551 = fmul fast float %3549, %3545
  %3552 = fmul fast float %3549, %3546
  %3553 = fadd fast float %3548, %3527
  %3554 = fdiv fast float 1.000000e+00, %3553
  %3555 = fmul float %3530, %3554
  %3556 = fmul float %3555, %3555
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = and i32 %3518, %3504
  %3559 = icmp eq i32 %3558, 0
  br i1 %3559, label %3582, label %3560, !dx.controlflow.hints !80

; <label>:3560                                    ; preds = %3507
  %3561 = lshr i32 %3452, 5
  %3562 = lshr i32 %3453, 5
  %3563 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3561, i32 %3562, i32 %3516, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = and i32 %3564, 3
  %3566 = icmp eq i32 %3565, 0
  %3567 = select i1 %3566, float 1.000000e+00, float 0.000000e+00
  %3568 = icmp eq i32 %3565, 3
  br i1 %3568, label %3569, label %3582

; <label>:3569                                    ; preds = %3560
  %3570 = lshr i32 %3564, 10
  %3571 = and i32 %3570, 8160
  %3572 = and i32 %3453, 31
  %3573 = or i32 %3571, %3572
  %3574 = lshr i32 %3564, 1
  %3575 = and i32 %3574, 16352
  %3576 = and i32 %3452, 31
  %3577 = or i32 %3575, %3576
  %3578 = lshr i32 %3564, 23
  %3579 = and i32 %3578, 255
  %3580 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3577, i32 %3573, i32 %3579, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  br label %3582

; <label>:3582                                    ; preds = %3569, %3560, %3507
  %3583 = phi float [ %3581, %3569 ], [ %3567, %3560 ], [ 0.000000e+00, %3507 ]
  %3584 = call float @dx.op.binary.f32(i32 36, float %3583, float %3583)  ; FMin(a,b)
  %3585 = call float @dx.op.binary.f32(i32 36, float %3583, float %3584)  ; FMin(a,b)
  %3586 = fcmp fast ogt float %3585, 0.000000e+00
  br i1 %3586, label %3595, label %3587, !dx.controlflow.hints !81

; <label>:3587                                    ; preds = %3831, %3582
  %3588 = phi float [ %3509, %3582 ], [ %3871, %3831 ]
  %3589 = phi float [ %3510, %3582 ], [ %3872, %3831 ]
  %3590 = phi float [ %3511, %3582 ], [ %3873, %3831 ]
  %3591 = phi float [ %3512, %3582 ], [ %3865, %3831 ]
  %3592 = phi float [ %3513, %3582 ], [ %3866, %3831 ]
  %3593 = phi float [ %3514, %3582 ], [ %3867, %3831 ]
  %3594 = icmp eq i32 %3508, %3518
  br i1 %3594, label %3874, label %3507

; <label>:3595                                    ; preds = %3582
  %3596 = fmul fast float %3583, %3541
  %3597 = fmul fast float %3583, %3542
  %3598 = fmul fast float %3583, %3543
  %3599 = fsub fast float %3535, %1634
  %3600 = fcmp fast ogt float %3599, 0.000000e+00
  %3601 = fsub fast float %117, %1634
  %3602 = fcmp fast ogt float %3601, 0.000000e+00
  %3603 = xor i1 %3602, %3600
  %3604 = fsub fast float %1634, %3535
  %3605 = fmul fast float %3604, 2.000000e+00
  %3606 = fadd fast float %3605, %3535
  %3607 = select i1 %3603, float %3535, float %3606
  %3608 = fsub fast float %3607, %117
  %3609 = call float @dx.op.dot3.f32(i32 55, float %3544, float %3545, float %3608, float %3544, float %3545, float %3608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call float @dx.op.unary.f32(i32 25, float %3609)  ; Rsqrt(value)
  %3611 = fmul fast float %3610, %3544
  %3612 = fmul fast float %3610, %3545
  %3613 = fmul fast float %3610, %3608
  %3614 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1642)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3611, float %3612, float %3613)  ; Dot3(ax,ay,az,bx,by,bz)
  %3616 = fdiv fast float 1.000000e+00, %3615
  %3617 = fmul fast float %3616, %3614
  %3618 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3601, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = fcmp fast ogt float %3618, 0.000000e+00
  %3620 = fcmp fast olt float %3618, 0.000000e+00
  %3621 = zext i1 %3619 to i32
  %3622 = zext i1 %3620 to i32
  %3623 = sub nsw i32 %3621, %3622
  %3624 = sitofp i32 %3623 to float
  %3625 = fsub fast float %3607, %1634
  %3626 = call float @dx.op.dot3.f32(i32 55, float %3544, float %3545, float %3625, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3627 = fcmp fast ogt float %3626, 0.000000e+00
  %3628 = fcmp fast olt float %3626, 0.000000e+00
  %3629 = zext i1 %3627 to i32
  %3630 = zext i1 %3628 to i32
  %3631 = sub nsw i32 %3629, %3630
  %3632 = sitofp i32 %3631 to float
  %3633 = fcmp fast une float %3624, %3632
  br i1 %3633, label %3634, label %3644

; <label>:3634                                    ; preds = %3595
  %3635 = fmul fast float %3617, %3613
  %3636 = fmul fast float %3617, %3612
  %3637 = fmul fast float %3617, %3611
  %3638 = fmul fast float %3637, %3637
  %3639 = fmul fast float %3636, %3636
  %3640 = fadd fast float %3638, %3639
  %3641 = fmul fast float %3635, %3635
  %3642 = fadd fast float %3640, %3641
  %3643 = call float @dx.op.unary.f32(i32 24, float %3642)  ; Sqrt(value)
  br label %3656

; <label>:3644                                    ; preds = %3595
  %3645 = icmp slt i32 %3623, 0
  br i1 %3645, label %3646, label %3656

; <label>:3646                                    ; preds = %3644
  %3647 = fsub fast float %115, %3533
  %3648 = fsub fast float %116, %3534
  %3649 = fsub fast float %117, %3607
  %3650 = fmul fast float %3647, %3647
  %3651 = fmul fast float %3648, %3648
  %3652 = fadd fast float %3650, %3651
  %3653 = fmul fast float %3649, %3649
  %3654 = fadd fast float %3652, %3653
  %3655 = call float @dx.op.unary.f32(i32 24, float %3654)  ; Sqrt(value)
  br label %3656

; <label>:3656                                    ; preds = %3646, %3644, %3634
  %3657 = phi float [ %3643, %3634 ], [ %3655, %3646 ], [ 0.000000e+00, %3644 ]
  %3658 = and i1 %3602, %3600
  %3659 = fsub fast float -0.000000e+00, %3657
  %3660 = select i1 %3658, float -0.000000e+00, float %3659
  %3661 = fmul fast float %1635, 0x3FF7154760000000
  %3662 = fmul fast float %3661, %3660
  %3663 = fmul fast float %1636, 0x3FF7154760000000
  %3664 = fmul fast float %3663, %3660
  %3665 = fmul fast float %1637, 0x3FF7154760000000
  %3666 = fmul fast float %3665, %3660
  %3667 = call float @dx.op.unary.f32(i32 21, float %3662)  ; Exp(value)
  %3668 = call float @dx.op.unary.f32(i32 21, float %3664)  ; Exp(value)
  %3669 = call float @dx.op.unary.f32(i32 21, float %3666)  ; Exp(value)
  %3670 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3671 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3672 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  %3673 = fmul fast float %3596, %3670
  %3674 = fmul fast float %3597, %3671
  %3675 = fmul fast float %3598, %3672
  %3676 = fsub fast float %3550, %1834
  %3677 = fsub fast float %3551, %1833
  %3678 = fsub fast float %3552, %1832
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3676, float %3677, float %3678, float %3676, float %3677, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call float @dx.op.unary.f32(i32 25, float %3679)  ; Rsqrt(value)
  %3681 = fmul fast float %3680, %3676
  %3682 = fmul fast float %3680, %3677
  %3683 = fmul fast float %3680, %3678
  %3684 = call float @dx.op.dot3.f32(i32 55, float %3550, float %3551, float %3552, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3685 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1830, float %1829, float %3681, float %3682, float %3683)  ; Dot3(ax,ay,az,bx,by,bz)
  %3686 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3687 = fmul fast float %3686, %3557
  %3688 = fmul fast float %3686, %3686
  %3689 = fmul fast float %3688, %3210
  %3690 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3691 = fmul fast float %3687, %3690
  %3692 = bitcast float %3547 to i32
  %3693 = ashr i32 %3692, 1
  %3694 = sub nsw i32 1597463007, %3693
  %3695 = bitcast i32 %3694 to float
  %3696 = fmul fast float %3695, %3544
  %3697 = fmul fast float %3695, %3545
  %3698 = fmul fast float %3695, %3546
  %3699 = fsub fast float %3696, %1834
  %3700 = fsub fast float %3697, %1833
  %3701 = fsub fast float %3698, %1832
  %3702 = call float @dx.op.dot3.f32(i32 55, float %3699, float %3700, float %3701, float %3699, float %3700, float %3701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3703 = call float @dx.op.unary.f32(i32 25, float %3702)  ; Rsqrt(value)
  %3704 = fmul fast float %3699, %3703
  %3705 = fmul fast float %3700, %3703
  %3706 = fmul fast float %3701, %3703
  %3707 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %3704, float %3705, float %3706)  ; Dot3(ax,ay,az,bx,by,bz)
  %3708 = fmul fast float %3707, %3707
  %3709 = call float @dx.op.unary.f32(i32 6, float %3684)  ; FAbs(value)
  %3710 = fsub fast float 1.000000e+00, %1844
  %3711 = call float @dx.op.binary.f32(i32 35, float %3710, float 0x3F847AE140000000)  ; FMax(a,b)
  %3712 = fmul fast float %3711, %3711
  %3713 = fmul fast float %3712, %3712
  %3714 = fsub fast float 1.000000e+00, %3713
  %3715 = fmul fast float %1848, %1848
  %3716 = fmul fast float %3715, %3714
  %3717 = fadd fast float %3716, %3713
  %3718 = bitcast float %3717 to i32
  %3719 = ashr i32 %3718, 1
  %3720 = add nsw i32 %3719, 532487669
  %3721 = bitcast i32 %3720 to float
  %3722 = fadd fast float %3721, %1848
  %3723 = fmul fast float %3713, %3708
  %3724 = fsub fast float 1.000000e+00, %3708
  %3725 = fadd fast float %3724, %3723
  %3726 = fmul fast float %3709, %3709
  %3727 = fmul fast float %3726, %3714
  %3728 = fadd fast float %3727, %3713
  %3729 = bitcast float %3728 to i32
  %3730 = ashr i32 %3729, 1
  %3731 = add nsw i32 %3730, 532487669
  %3732 = bitcast i32 %3731 to float
  %3733 = fadd fast float %3732, %3709
  %3734 = fmul fast float %3725, %3725
  %3735 = fmul fast float %3734, %3722
  %3736 = fmul fast float %3735, %3733
  %3737 = fdiv fast float 1.000000e+00, %3736
  %3738 = bitcast float %3713 to i32
  %3739 = sitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3FE7F73180000000
  %3741 = fadd fast float %3740, 0x41AFE27C40000000
  %3742 = fptosi float %3741 to i32
  %3743 = bitcast i32 %3742 to float
  %3744 = fmul fast float %3530, 0x3FD80E9D60000000
  %3745 = fmul fast float %3744, %3695
  %3746 = fadd fast float %3743, %3745
  %3747 = bitcast float %3746 to i32
  %3748 = sub nsw i32 2129859010, %3747
  %3749 = bitcast i32 %3748 to float
  %3750 = fmul fast float %3713, %3737
  %3751 = fmul fast float %3750, %3743
  %3752 = fmul fast float %3751, %3749
  %3753 = call float @dx.op.unary.f32(i32 6, float %3685)  ; FAbs(value)
  %3754 = fsub fast float 1.000000e+00, %3753
  %3755 = bitcast float %3754 to i32
  %3756 = sitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 5.000000e+00
  %3758 = fadd fast float %3757, 0xC1EFBF8940000000
  %3759 = fptosi float %3758 to i32
  %3760 = bitcast i32 %3759 to float
  %3761 = fsub fast float 1.000000e+00, %1835
  %3762 = fsub fast float 1.000000e+00, %1836
  %3763 = fsub fast float 1.000000e+00, %1846
  %3764 = fmul fast float %3760, %3761
  %3765 = fmul fast float %3760, %3762
  %3766 = fmul fast float %3760, %3763
  %3767 = fadd fast float %3764, %1835
  %3768 = fadd fast float %3765, %1836
  %3769 = fadd fast float %3766, %1846
  br i1 %3125, label %3770, label %3793

; <label>:3770                                    ; preds = %3656
  %3771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1212, float %3753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.ResRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3771, 2
  %3775 = fadd fast float %3772, -5.000000e-01
  %3776 = fadd fast float %3773, -5.000000e-01
  %3777 = fadd fast float %3774, -5.000000e-01
  %3778 = fmul fast float %1835, 4.000000e+00
  %3779 = fmul fast float %3778, %3761
  %3780 = fmul fast float %3779, %3775
  %3781 = fmul fast float %1836, 4.000000e+00
  %3782 = fmul fast float %3781, %3762
  %3783 = fmul fast float %3782, %3776
  %3784 = fmul fast float %1846, 4.000000e+00
  %3785 = fmul fast float %3784, %3763
  %3786 = fmul fast float %3785, %3777
  %3787 = fadd fast float %3780, %3767
  %3788 = fadd fast float %3783, %3768
  %3789 = fadd fast float %3786, %3769
  %3790 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  br label %3793

; <label>:3793                                    ; preds = %3770, %3656
  %3794 = phi float [ %3790, %3770 ], [ %3767, %3656 ]
  %3795 = phi float [ %3791, %3770 ], [ %3768, %3656 ]
  %3796 = phi float [ %3792, %3770 ], [ %3769, %3656 ]
  %3797 = fmul fast float %3684, 9.843750e-01
  %3798 = fadd fast float %3797, 7.812500e-03
  %3799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3798, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3802 = fmul fast float %3800, %1835
  %3803 = fmul fast float %3800, %1836
  %3804 = fmul fast float %3800, %1846
  %3805 = fadd fast float %3802, %3801
  %3806 = fadd fast float %3803, %3801
  %3807 = fadd fast float %3804, %3801
  br i1 %3125, label %3808, label %3831

; <label>:3808                                    ; preds = %3793
  %3809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1212, float %3684, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = fadd fast float %3810, -5.000000e-01
  %3814 = fadd fast float %3811, -5.000000e-01
  %3815 = fadd fast float %3812, -5.000000e-01
  %3816 = fmul fast float %1835, 4.000000e+00
  %3817 = fmul fast float %3816, %3761
  %3818 = fmul fast float %3817, %3813
  %3819 = fmul fast float %1836, 4.000000e+00
  %3820 = fmul fast float %3819, %3762
  %3821 = fmul fast float %3820, %3814
  %3822 = fmul fast float %1846, 4.000000e+00
  %3823 = fmul fast float %3822, %3763
  %3824 = fmul fast float %3823, %3815
  %3825 = fadd fast float %3818, %3805
  %3826 = fadd fast float %3821, %3806
  %3827 = fadd fast float %3824, %3807
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3830 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  br label %3831

; <label>:3831                                    ; preds = %3808, %3793
  %3832 = phi float [ %3828, %3808 ], [ %3805, %3793 ]
  %3833 = phi float [ %3829, %3808 ], [ %3806, %3793 ]
  %3834 = phi float [ %3830, %3808 ], [ %3807, %3793 ]
  %3835 = call float @dx.op.binary.f32(i32 35, float %3833, float %3834)  ; FMax(a,b)
  %3836 = call float @dx.op.binary.f32(i32 35, float %3832, float %3835)  ; FMax(a,b)
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3794, %3752
  %3839 = fmul fast float %3795, %3752
  %3840 = fmul fast float %3796, %3752
  %3841 = fsub fast float 1.000000e+00, %3685
  %3842 = bitcast float %3841 to i32
  %3843 = sitofp i32 %3842 to float
  %3844 = fmul fast float %3843, 5.000000e+00
  %3845 = fadd fast float %3844, 0xC1EFBF8940000000
  %3846 = fptosi float %3845 to i32
  %3847 = bitcast i32 %3846 to float
  %3848 = fmul fast float %3847, %1211
  %3849 = fmul fast float %3837, %3848
  %3850 = fmul fast float %3849, %3175
  %3851 = fmul fast float %3849, %3176
  %3852 = fmul fast float %3849, %3177
  %3853 = fadd fast float %3850, %3838
  %3854 = fadd fast float %3851, %3839
  %3855 = fadd fast float %3852, %3840
  %3856 = fmul fast float %3673, %1232
  %3857 = fmul fast float %3856, %3691
  %3858 = fmul fast float %3857, %3837
  %3859 = fmul fast float %3674, %1232
  %3860 = fmul fast float %3859, %3691
  %3861 = fmul fast float %3860, %3837
  %3862 = fmul fast float %3675, %1232
  %3863 = fmul fast float %3862, %3691
  %3864 = fmul fast float %3863, %3837
  %3865 = fadd fast float %3858, %3512
  %3866 = fadd fast float %3861, %3513
  %3867 = fadd fast float %3864, %3514
  %3868 = fmul fast float %3857, %3853
  %3869 = fmul fast float %3860, %3854
  %3870 = fmul fast float %3863, %3855
  %3871 = fadd fast float %3868, %3509
  %3872 = fadd fast float %3869, %3510
  %3873 = fadd fast float %3870, %3511
  br label %3587

; <label>:3874                                    ; preds = %3587
  br label %3875

; <label>:3875                                    ; preds = %3874, %3475
  %3876 = phi float [ %3477, %3475 ], [ %3588, %3874 ]
  %3877 = phi float [ %3478, %3475 ], [ %3589, %3874 ]
  %3878 = phi float [ %3479, %3475 ], [ %3590, %3874 ]
  %3879 = phi float [ %3480, %3475 ], [ %3591, %3874 ]
  %3880 = phi float [ %3481, %3475 ], [ %3592, %3874 ]
  %3881 = phi float [ %3482, %3475 ], [ %3593, %3874 ]
  %3882 = add i32 %3476, 1
  %3883 = icmp ugt i32 %3882, %3472
  br i1 %3883, label %3884, label %3475

; <label>:3884                                    ; preds = %3875
  br label %3885

; <label>:3885                                    ; preds = %3884, %3451, %3441
  %3886 = phi float [ %3442, %3441 ], [ %3442, %3451 ], [ %3876, %3884 ]
  %3887 = phi float [ %3443, %3441 ], [ %3443, %3451 ], [ %3877, %3884 ]
  %3888 = phi float [ %3444, %3441 ], [ %3444, %3451 ], [ %3878, %3884 ]
  %3889 = phi float [ %3445, %3441 ], [ %3445, %3451 ], [ %3879, %3884 ]
  %3890 = phi float [ %3446, %3441 ], [ %3446, %3451 ], [ %3880, %3884 ]
  %3891 = phi float [ %3447, %3441 ], [ %3447, %3451 ], [ %3881, %3884 ]
  %3892 = call float @dx.op.unary.f32(i32 24, float %1838)  ; Sqrt(value)
  %3893 = call float @dx.op.unary.f32(i32 24, float %1839)  ; Sqrt(value)
  %3894 = call float @dx.op.unary.f32(i32 24, float %1840)  ; Sqrt(value)
  %3895 = fmul fast float %3892, %3889
  %3896 = fmul fast float %3893, %3890
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  br i1 %186, label %3899, label %3919

; <label>:3899                                    ; preds = %3885
  %3900 = fadd fast float %3891, %1209
  %3901 = fmul fast float %3900, %1210
  %3902 = fsub fast float 1.000000e+00, %1210
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 3
  %3906 = fmul fast float %3905, %3903
  %3907 = fadd fast float %3906, %3901
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = fmul fast float %3909, %3181
  %3911 = fsub fast float %3907, %3910
  %3912 = fadd fast float %3896, %3895
  %3913 = fmul fast float %3898, %3912
  %3914 = extractvalue %dx.types.CBufRet.f32 %3904, 1
  %3915 = fsub fast float %3911, %3914
  %3916 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3917 = fmul fast float %3915, %3916
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  br label %3935

; <label>:3919                                    ; preds = %3885
  %3920 = fmul fast float %3894, %3891
  %3921 = fmul fast float %3898, %3895
  %3922 = fmul fast float %3898, %3896
  %3923 = fmul fast float %3920, %3898
  %3924 = add i32 %40, 116
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = and i32 %3926, 32
  %3928 = icmp eq i32 %3927, 0
  br i1 %3928, label %3935, label %3929

; <label>:3929                                    ; preds = %3919
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = fmul fast float %3931, 0x3FE99999A0000000
  %3933 = fadd fast float %3931, %3921
  %3934 = fadd fast float %3932, %3923
  br label %3935

; <label>:3935                                    ; preds = %3929, %3919, %3899
  %3936 = phi float [ %3913, %3899 ], [ %3933, %3929 ], [ %3921, %3919 ]
  %3937 = phi float [ %3918, %3899 ], [ %3922, %3929 ], [ %3922, %3919 ]
  %3938 = phi float [ 1.000000e+00, %3899 ], [ %3934, %3929 ], [ %3923, %3919 ]
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = fmul fast float %3940, %3887
  %3942 = fmul fast float %3940, %3888
  %3943 = fadd fast float %3887, %3886
  %3944 = select i1 %186, float %3943, float %3886
  %3945 = fmul float %3944, %3940
  %3946 = select i1 %186, float 0.000000e+00, float %3941
  %3947 = select i1 %186, float 0.000000e+00, float %3942
  %3948 = fmul fast float %3936, %3892
  %3949 = fmul fast float %3937, %3893
  %3950 = fmul fast float %3938, %3894
  %3951 = fadd fast float %3945, %3948
  %3952 = fadd fast float %3946, %3949
  %3953 = fadd fast float %3947, %3950
  %3954 = select i1 %186, float %3937, float %3952
  %3955 = select i1 %186, float %3938, float %3953
  %3956 = call float @dx.op.binary.f32(i32 36, float %3951, float 3.225500e+04)  ; FMin(a,b)
  %3957 = call float @dx.op.binary.f32(i32 36, float %3954, float 3.225500e+04)  ; FMin(a,b)
  %3958 = call float @dx.op.binary.f32(i32 36, float %3955, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3956)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3957)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3958)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!46 = !{!47, !48, !49, !50}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!51 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !71}
!53 = !{!54, !69, null}
!54 = !{!55, !58, !60, !62, !63, !65, !67, !68}
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
!65 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 5, i8 0, !66}
!66 = !{i32 3, i32 1}
!67 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !56, i8 1, i32 1, i8 1, i32 5, i8 1, !66}
!68 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !64}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}

