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
; TRANSIENT_INDEX          0    y          5     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 263377a0fdfd426e14d600a75228ca07
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
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
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
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = fmul fast float %57, %51
  %59 = fmul fast float %57, %52
  %60 = fmul fast float %44, %41
  %61 = fmul fast float %45, %40
  %62 = fsub fast float %60, %61
  %63 = fmul fast float %45, %39
  %64 = fmul fast float %43, %41
  %65 = fsub fast float %63, %64
  %66 = fmul fast float %43, %40
  %67 = fmul fast float %44, %39
  %68 = fsub fast float %66, %67
  %69 = fmul fast float %62, %42
  %70 = fmul fast float %65, %42
  %71 = fmul fast float %68, %42
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 3
  %75 = fmul fast float %73, 2.000000e+00
  %76 = fmul fast float %75, %58
  %77 = fmul fast float %74, 2.000000e+00
  %78 = fmul fast float %77, %59
  %79 = fsub fast float 1.000000e+00, %76
  %80 = fsub fast float 1.000000e+00, %78
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fmul fast float %79, %82
  %86 = fmul fast float %79, %83
  %87 = fmul fast float %79, %84
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = fmul fast float %80, %89
  %93 = fmul fast float %80, %90
  %94 = fmul fast float %80, %91
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fadd fast float %92, %96
  %100 = fadd fast float %99, %85
  %101 = fadd fast float %93, %97
  %102 = fadd fast float %101, %86
  %103 = fadd fast float %94, %98
  %104 = fadd fast float %103, %87
  %105 = fmul fast float %100, %53
  %106 = fmul fast float %102, %53
  %107 = fmul fast float %104, %53
  %108 = fadd fast float %48, 5.000000e-01
  %109 = fptoui float %108 to i32
  %110 = shl i32 %109, 3
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = or i32 %110, 4
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %112, 8191
  %117 = lshr i32 %112, 13
  %118 = and i32 %117, 8191
  %119 = lshr i32 %112, 26
  %120 = and i32 %115, 65535
  %121 = lshr i32 %115, 16
  %122 = uitofp i32 %120 to float
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = uitofp i32 %121 to float
  %126 = uitofp i32 %116 to float
  %127 = fmul fast float %124, %126
  %128 = uitofp i32 %118 to float
  %129 = fmul fast float %124, %128
  %130 = fmul fast float %124, %46
  %131 = fmul fast float %130, %122
  %132 = fmul fast float %124, %47
  %133 = fmul fast float %132, %125
  %134 = fadd fast float %131, %127
  %135 = fadd fast float %129, %133
  %136 = uitofp i32 %119 to float
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %58
  %141 = fmul fast float %139, %59
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 3
  %157 = icmp ne i32 %156, 0
  %158 = and i32 %155, 4
  %159 = icmp ne i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %172

; <label>:161                                     ; preds = %0
  %162 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %163 = fmul fast float %162, %59
  %164 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %165 = fmul fast float %164, %58
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %165, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %175

; <label>:172                                     ; preds = %0
  %173 = icmp eq i32 %158, 0
  %174 = and i1 %157, %173
  br label %175

; <label>:175                                     ; preds = %172, %161
  %176 = phi i1 [ %171, %161 ], [ %174, %172 ]
  %177 = add i32 %38, 60
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = shl i32 %179, 4
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %179, 7
  %184 = and i32 %183, 32752
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %179, 22
  %187 = shl nuw nsw i32 %186, 5
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = add i32 %38, 72
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %191, 8
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = lshr i32 %191, 16
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = add i32 %38, 36
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = add i32 %38, 96
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = add i32 %38, 24
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = add i32 %38, 28
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = or i32 %214, %211
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %677, label %217

; <label>:217                                     ; preds = %175
  %218 = lshr i32 %208, 16
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = fmul fast float %219, 0x3F50624DE0000000
  %221 = and i32 %208, 65535
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = fmul fast float %222, 0x3F50624DE0000000
  %224 = lshr i32 %205, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = and i32 %205, 65535
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = add i32 %38, 92
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = lshr i32 %230, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %232, 0x3F50624DE0000000
  %234 = add i32 %38, 40
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = and i32 %237, 255
  %239 = lshr i32 %236, 24
  %240 = add i32 %38, 100
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %38, 32
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = lshr i32 %249, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = shl i32 %249, 4
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 7
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %261 = fmul fast float %260, 1.000000e+03
  %262 = fmul fast float %223, %261
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = fadd fast float %263, %227
  %265 = fmul fast float %220, %261
  %266 = call float @dx.op.unary.f32(i32 22, float %265)  ; Frc(value)
  %267 = fadd fast float %266, %225
  %268 = fmul fast float %233, %261
  %269 = call float @dx.op.unary.f32(i32 22, float %268)  ; Frc(value)
  %270 = fmul fast float %269, 0x401921FB60000000
  %271 = fadd fast float %270, %252
  %272 = call float @dx.op.unary.f32(i32 13, float %271)  ; Sin(value)
  %273 = call float @dx.op.unary.f32(i32 12, float %271)  ; Cos(value)
  %274 = fsub fast float -0.000000e+00, %272
  %275 = fadd fast float %49, -5.000000e-01
  %276 = fadd fast float %50, -5.000000e-01
  %277 = fmul fast float %244, %275
  %278 = fmul fast float %246, %276
  %279 = fadd fast float %277, 5.000000e-01
  %280 = fadd fast float %278, 5.000000e-01
  %281 = fmul fast float %255, %279
  %282 = fmul fast float %258, %280
  %283 = fmul fast float %273, %281
  %284 = call float @dx.op.tertiary.f32(i32 46, float %274, float %282, float %283)  ; FMad(a,b,c)
  %285 = fmul fast float %272, %281
  %286 = call float @dx.op.tertiary.f32(i32 46, float %273, float %282, float %285)  ; FMad(a,b,c)
  %287 = fadd fast float %264, %284
  %288 = fadd fast float %267, %286
  %289 = icmp ugt i32 %238, 1
  %290 = icmp ugt i32 %236, 33554431
  %291 = or i1 %290, %289
  br i1 %291, label %292, label %317

; <label>:292                                     ; preds = %217
  %293 = add i32 %38, 84
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = lshr i32 %295, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %260, %297
  %299 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %300 = mul nuw nsw i32 %238, %239
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %299, %301
  %303 = call float @dx.op.unary.f32(i32 27, float %302)  ; Round_ni(value)
  %304 = fptoui float %303 to i32
  %305 = urem i32 %304, %238
  %306 = udiv i32 %304, %239
  %307 = call float @dx.op.unary.f32(i32 22, float %287)  ; Frc(value)
  %308 = call float @dx.op.unary.f32(i32 22, float %288)  ; Frc(value)
  %309 = uitofp i32 %305 to float
  %310 = uitofp i32 %306 to float
  %311 = fadd fast float %307, %309
  %312 = fadd fast float %308, %310
  %313 = uitofp i32 %238 to float
  %314 = uitofp i32 %239 to float
  %315 = fdiv fast float %311, %313
  %316 = fdiv fast float %312, %314
  br label %317

; <label>:317                                     ; preds = %292, %217
  %318 = phi float [ %315, %292 ], [ %287, %217 ]
  %319 = phi float [ %316, %292 ], [ %288, %217 ]
  %320 = and i32 %211, 16
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %518, label %322

; <label>:322                                     ; preds = %317
  %323 = add i32 %38, 120
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = add i32 %325, 0
  %327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %327, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = and i32 %236, 255
  %334 = uitofp i32 %333 to float
  %335 = lshr i32 %236, 8
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %332, %334
  %339 = fadd fast float %338, %337
  %340 = fmul fast float %339, 0x3F70101000000000
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 512
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %353, label %345

; <label>:345                                     ; preds = %322
  %346 = add i32 %38, 140
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = add i32 %348, 0
  %350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %350, %dx.types.Handle %55, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  br label %353

; <label>:353                                     ; preds = %345, %322
  %354 = phi float [ %352, %345 ], [ 1.000000e+00, %322 ]
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 33554432
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %465, label %359

; <label>:359                                     ; preds = %353
  %360 = add i32 %38, 80
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %38, 84
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %388 = add i32 %38, 76
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = lshr i32 %390, 24
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = and i32 %390, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = lshr i32 %390, 8
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F70101020000000
  %401 = lshr i32 %390, 16
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = bitcast float %329 to i32
  %406 = ashr i32 %405, 1
  %407 = sub nsw i32 1597463174, %406
  %408 = bitcast i32 %407 to float
  %409 = fmul fast float %329, 5.000000e-01
  %410 = fmul fast float %408, %408
  %411 = fmul fast float %410, %409
  %412 = fsub fast float 1.500000e+00, %411
  %413 = fmul fast float %408, %329
  %414 = fmul fast float %413, %412
  %415 = bitcast float %330 to i32
  %416 = ashr i32 %415, 1
  %417 = sub nsw i32 1597463174, %416
  %418 = bitcast i32 %417 to float
  %419 = fmul fast float %330, 5.000000e-01
  %420 = fmul fast float %418, %418
  %421 = fmul fast float %420, %419
  %422 = fsub fast float 1.500000e+00, %421
  %423 = fmul fast float %418, %330
  %424 = fmul fast float %423, %422
  %425 = bitcast float %331 to i32
  %426 = ashr i32 %425, 1
  %427 = sub nsw i32 1597463174, %426
  %428 = bitcast i32 %427 to float
  %429 = fmul fast float %331, 5.000000e-01
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %430, %429
  %432 = fsub fast float 1.500000e+00, %431
  %433 = fmul fast float %428, %331
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %414, %396
  %436 = fsub fast float %424, %400
  %437 = fsub fast float %434, %404
  %438 = fmul fast float %435, %364
  %439 = fmul fast float %436, %366
  %440 = fmul fast float %437, %371
  %441 = fadd fast float %438, %379
  %442 = fadd fast float %439, %383
  %443 = fadd fast float %440, %387
  %444 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %445 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %446 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %445, %445
  %449 = fmul fast float %446, %446
  %450 = fsub fast float %447, %329
  %451 = fsub fast float %448, %330
  %452 = fsub fast float %449, %331
  %453 = fmul fast float %450, %354
  %454 = fmul fast float %451, %354
  %455 = fmul fast float %452, %354
  %456 = fadd fast float %453, %329
  %457 = fadd fast float %454, %330
  %458 = fadd fast float %455, %331
  %459 = fadd fast float %376, %340
  %460 = fsub fast float %459, %393
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fsub fast float %461, %340
  %463 = fmul fast float %462, %354
  %464 = fadd fast float %463, %340
  br label %518

; <label>:465                                     ; preds = %353
  %466 = and i32 %356, 134217728
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %502, label %468

; <label>:468                                     ; preds = %465
  %469 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %470 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %471 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %472 = fadd fast float %469, -5.000000e-01
  %473 = fadd fast float %470, -5.000000e-01
  %474 = fadd fast float %471, -5.000000e-01
  %475 = fmul fast float %472, %354
  %476 = fmul fast float %473, %354
  %477 = fmul fast float %474, %354
  %478 = fadd fast float %475, 5.000000e-01
  %479 = fadd fast float %476, 5.000000e-01
  %480 = fadd fast float %477, 5.000000e-01
  %481 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %482 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %483 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %484 = fmul fast float %478, 2.000000e+00
  %485 = fsub fast float 1.000000e+00, %484
  %486 = fmul fast float %485, %481
  %487 = fadd fast float %486, %484
  %488 = fmul fast float %487, %481
  %489 = fmul fast float %479, 2.000000e+00
  %490 = fsub fast float 1.000000e+00, %489
  %491 = fmul fast float %490, %482
  %492 = fadd fast float %491, %489
  %493 = fmul fast float %492, %482
  %494 = fmul fast float %480, 2.000000e+00
  %495 = fsub fast float 1.000000e+00, %494
  %496 = fmul fast float %495, %483
  %497 = fadd fast float %496, %494
  %498 = fmul fast float %497, %483
  %499 = fmul fast float %488, %488
  %500 = fmul fast float %493, %493
  %501 = fmul fast float %498, %498
  br label %518

; <label>:502                                     ; preds = %465
  %503 = fmul fast float %194, %194
  %504 = fmul fast float %198, %198
  %505 = fmul fast float %202, %202
  %506 = fadd fast float %503, -1.000000e+00
  %507 = fadd fast float %504, -1.000000e+00
  %508 = fadd fast float %505, -1.000000e+00
  %509 = fmul fast float %354, %506
  %510 = fmul fast float %354, %507
  %511 = fmul fast float %354, %508
  %512 = fadd fast float %509, 1.000000e+00
  %513 = fadd fast float %510, 1.000000e+00
  %514 = fadd fast float %511, 1.000000e+00
  %515 = fmul fast float %512, %329
  %516 = fmul fast float %513, %330
  %517 = fmul fast float %514, %331
  br label %518

; <label>:518                                     ; preds = %502, %468, %359, %317
  %519 = phi float [ %464, %359 ], [ %340, %468 ], [ %340, %502 ], [ 0x3FA23C0BE0000000, %317 ]
  %520 = phi float [ %456, %359 ], [ %499, %468 ], [ %515, %502 ], [ 1.000000e+00, %317 ]
  %521 = phi float [ %457, %359 ], [ %500, %468 ], [ %516, %502 ], [ 1.000000e+00, %317 ]
  %522 = phi float [ %458, %359 ], [ %501, %468 ], [ %517, %502 ], [ 1.000000e+00, %317 ]
  %523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.i32 %523, 1
  %525 = and i32 %524, 1
  %526 = icmp ne i32 %525, 0
  %527 = add i32 %38, 116
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 32
  %531 = icmp ne i32 %530, 0
  %532 = and i1 %526, %531
  %533 = select i1 %532, float 1.000000e+00, float %520
  %534 = select i1 %532, float 0x3FD3333340000000, float %521
  %535 = select i1 %532, float 0x3FD3333340000000, float %522
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 32
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %612, label %540

; <label>:540                                     ; preds = %518
  %541 = add i32 %38, 44
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %38, 124
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = add i32 %546, 0
  %548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %548, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = extractvalue %dx.types.ResRet.f32 %549, 3
  %554 = and i32 %543, 255
  %555 = uitofp i32 %554 to float
  %556 = lshr i32 %543, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = lshr i32 %543, 16
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101000000000
  %563 = fmul fast float %550, %555
  %564 = fadd fast float %563, %558
  %565 = fmul fast float %564, 0x3F70101000000000
  %566 = fadd fast float %551, -5.000000e-01
  %567 = fadd fast float %553, -5.000000e-01
  %568 = fmul fast float %566, %562
  %569 = fmul fast float %567, %562
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fmul fast float %570, 2.000000e+00
  %573 = fadd fast float %572, -1.000000e+00
  %574 = fmul fast float %571, 2.000000e+00
  %575 = fadd fast float %574, -1.000000e+00
  %576 = fadd fast float %573, %575
  %577 = fmul fast float %576, 5.000000e-01
  %578 = fsub fast float %573, %575
  %579 = fmul fast float %578, 5.000000e-01
  %580 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %581 = fsub fast float 1.000000e+00, %580
  %582 = call float @dx.op.unary.f32(i32 6, float %579)  ; FAbs(value)
  %583 = fsub fast float %581, %582
  %584 = call float @dx.op.dot3.f32(i32 55, float %577, float %579, float %583, float %577, float %579, float %583)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %577, %585
  %587 = fmul fast float %579, %585
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 67108864
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %608, label %592

; <label>:592                                     ; preds = %540
  %593 = add i32 %38, 88
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 65535
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 65535
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %595, 16
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = fsub fast float %565, %603
  %605 = fmul fast float %604, %597
  %606 = fadd fast float %605, %601
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  br label %608

; <label>:608                                     ; preds = %592, %540
  %609 = phi float [ %607, %592 ], [ %565, %540 ]
  %610 = call float @dx.op.dot2.f32(i32 54, float %586, float %587, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %611 = call float @dx.op.dot2.f32(i32 54, float %586, float %587, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %612

; <label>:612                                     ; preds = %608, %518
  %613 = phi float [ %609, %608 ], [ 0x3FD6666660000000, %518 ]
  %614 = phi float [ %610, %608 ], [ 0.000000e+00, %518 ]
  %615 = phi float [ %611, %608 ], [ 0.000000e+00, %518 ]
  %616 = phi float [ %552, %608 ], [ 1.000000e+00, %518 ]
  %617 = add i32 %38, 64
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 22
  %621 = shl nuw nsw i32 %620, 5
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 64
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %660, label %627

; <label>:627                                     ; preds = %612
  %628 = add i32 %38, 128
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 131072
  %636 = icmp eq i32 %635, 0
  %637 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %632, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = fmul fast float %638, %182
  %642 = fmul fast float %639, %185
  %643 = fmul fast float %640, %188
  br i1 %636, label %650, label %644

; <label>:644                                     ; preds = %627
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = fmul fast float %646, %641
  %648 = fmul fast float %646, %642
  %649 = fmul fast float %646, %643
  br label %650

; <label>:650                                     ; preds = %644, %627
  %651 = phi float [ %647, %644 ], [ %641, %627 ]
  %652 = phi float [ %648, %644 ], [ %642, %627 ]
  %653 = phi float [ %649, %644 ], [ %643, %627 ]
  %654 = fmul fast float %651, %622
  %655 = select i1 %176, float %654, float %651
  %656 = call float @dx.op.dot3.f32(i32 55, float %655, float %652, float %653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = select i1 %176, float 0.000000e+00, float %651
  %658 = select i1 %176, float %656, float %652
  %659 = select i1 %176, float 0.000000e+00, float %653
  br label %660

; <label>:660                                     ; preds = %650, %612
  %661 = phi float [ %657, %650 ], [ 0.000000e+00, %612 ]
  %662 = phi float [ %658, %650 ], [ 0.000000e+00, %612 ]
  %663 = phi float [ %659, %650 ], [ 0.000000e+00, %612 ]
  %664 = add i32 %38, 48
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %666, 8
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = call float @dx.op.dot3.f32(i32 55, float %533, float %534, float %535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = fmul fast float %671, %672
  %674 = fadd fast float %673, %668
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br label %677

; <label>:677                                     ; preds = %660, %175
  %678 = phi float [ 0.000000e+00, %175 ], [ %614, %660 ]
  %679 = phi float [ 0.000000e+00, %175 ], [ %615, %660 ]
  %680 = phi float [ 0.000000e+00, %175 ], [ %661, %660 ]
  %681 = phi float [ 0.000000e+00, %175 ], [ %662, %660 ]
  %682 = phi float [ 0.000000e+00, %175 ], [ %663, %660 ]
  %683 = phi float [ 0.000000e+00, %175 ], [ %533, %660 ]
  %684 = phi float [ 0.000000e+00, %175 ], [ %534, %660 ]
  %685 = phi float [ 0.000000e+00, %175 ], [ %535, %660 ]
  %686 = phi float [ 0.000000e+00, %175 ], [ %519, %660 ]
  %687 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %660 ]
  %688 = phi float [ 0.000000e+00, %175 ], [ %613, %660 ]
  %689 = phi float [ 0.000000e+00, %175 ], [ %616, %660 ]
  %690 = phi float [ 0.000000e+00, %175 ], [ %676, %660 ]
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = call float @dx.op.dot2.f32(i32 54, float %678, float %679, float %678, float %679)  ; Dot2(ax,ay,bx,by)
  %694 = fmul fast float %693, 0x3FE3333340000000
  %695 = fsub fast float 1.000000e+00, %694
  %696 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %695, float %678, float %679, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 25, float %696)  ; Rsqrt(value)
  %698 = fmul fast float %697, %678
  %699 = fmul fast float %697, %679
  %700 = fmul fast float %695, %697
  %701 = fmul fast float %700, %43
  %702 = fmul fast float %700, %44
  %703 = fmul fast float %700, %45
  %704 = fmul fast float %698, %39
  %705 = fmul fast float %698, %40
  %706 = fmul fast float %698, %41
  %707 = fadd fast float %701, %704
  %708 = fadd fast float %702, %705
  %709 = fadd fast float %703, %706
  %710 = fmul fast float %699, %69
  %711 = fmul fast float %699, %70
  %712 = fmul fast float %699, %71
  %713 = fadd fast float %707, %710
  %714 = fadd fast float %708, %711
  %715 = fadd fast float %709, %712
  %716 = call float @dx.op.dot3.f32(i32 55, float %713, float %714, float %715, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = call float @dx.op.unary.f32(i32 25, float %716)  ; Rsqrt(value)
  %718 = fmul fast float %713, %717
  %719 = fmul fast float %714, %717
  %720 = fmul fast float %715, %717
  %721 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %722 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %723 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %724 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %725 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %726 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %727 = fadd fast float %721, %105
  %728 = fadd fast float %722, %106
  %729 = fadd fast float %723, %107
  %730 = fadd fast float %724, %105
  %731 = fadd fast float %725, %106
  %732 = fadd fast float %726, %107
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %739 = extractvalue %dx.types.CBufRet.f32 %737, 3
  %740 = fmul fast float %734, %58
  %741 = fmul fast float %740, %738
  %742 = fmul fast float %735, %59
  %743 = fmul fast float %742, %739
  %744 = fptoui float %741 to i32
  %745 = fptoui float %743 to i32
  %746 = fadd fast float %734, -1.000000e+00
  %747 = fadd fast float %735, -1.000000e+00
  %748 = fptoui float %746 to i32
  %749 = fptoui float %747 to i32
  %750 = call i32 @dx.op.binary.i32(i32 40, i32 %744, i32 %748)  ; UMin(a,b)
  %751 = call i32 @dx.op.binary.i32(i32 40, i32 %745, i32 %749)  ; UMin(a,b)
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 3
  %755 = fmul fast float %753, %53
  %756 = fsub fast float %755, %754
  %757 = fadd fast float %736, -1.000000e+00
  %758 = call float @dx.op.binary.f32(i32 36, float %756, float %757)  ; FMin(a,b)
  %759 = fptoui float %758 to i32
  %760 = fptoui float %734 to i32
  %761 = fptoui float %735 to i32
  %762 = mul i32 %759, %761
  %763 = add i32 %762, %751
  %764 = mul i32 %763, %760
  %765 = add i32 %764, %750
  %766 = shl i32 %765, 2
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 1023
  %770 = lshr i32 %768, 10
  %771 = icmp eq i32 %769, 0
  br i1 %771, label %1197, label %772

; <label>:772                                     ; preds = %677
  %773 = and i32 %768, 1023
  br label %774

; <label>:774                                     ; preds = %900, %772
  %775 = phi float [ %901, %900 ], [ 0.000000e+00, %772 ]
  %776 = phi float [ %902, %900 ], [ %692, %772 ]
  %777 = phi float [ %903, %900 ], [ %690, %772 ]
  %778 = phi float [ %904, %900 ], [ 0.000000e+00, %772 ]
  %779 = phi float [ %905, %900 ], [ 0.000000e+00, %772 ]
  %780 = phi float [ %906, %900 ], [ %680, %772 ]
  %781 = phi float [ %907, %900 ], [ %681, %772 ]
  %782 = phi float [ %908, %900 ], [ %682, %772 ]
  %783 = phi float [ %909, %900 ], [ %718, %772 ]
  %784 = phi float [ %910, %900 ], [ %719, %772 ]
  %785 = phi float [ %911, %900 ], [ %720, %772 ]
  %786 = phi float [ %912, %900 ], [ %689, %772 ]
  %787 = phi float [ %913, %900 ], [ %688, %772 ]
  %788 = phi float [ %914, %900 ], [ 0.000000e+00, %772 ]
  %789 = phi float [ %915, %900 ], [ %686, %772 ]
  %790 = phi float [ %916, %900 ], [ %683, %772 ]
  %791 = phi float [ %917, %900 ], [ %684, %772 ]
  %792 = phi float [ %918, %900 ], [ %685, %772 ]
  %793 = phi i32 [ %850, %900 ], [ 0, %772 ]
  %794 = add nuw nsw i32 %793, %770
  %795 = shl i32 %794, 2
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = shl i32 %797, 8
  %799 = or i32 %798, 48
  %800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = or i32 %798, 64
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = extractvalue %dx.types.ResRet.i32 %806, 1
  %809 = or i32 %798, 80
  %810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 2
  %812 = extractvalue %dx.types.ResRet.f32 %810, 3
  %813 = or i32 %798, 96
  %814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  %819 = or i32 %798, 112
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 2
  %822 = or i32 %798, 128
  %823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = extractvalue %dx.types.ResRet.f32 %823, 2
  %827 = extractvalue %dx.types.ResRet.f32 %823, 3
  %828 = or i32 %798, 144
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = extractvalue %dx.types.ResRet.f32 %829, 3
  %834 = or i32 %798, 160
  %835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = extractvalue %dx.types.ResRet.f32 %835, 3
  %840 = or i32 %798, 192
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = or i32 %798, 208
  %844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = or i32 %798, 248
  %847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = extractvalue %dx.types.ResRet.f32 %847, 1
  %850 = add nuw nsw i32 %793, 1
  %851 = bitcast float %804 to i32
  %852 = and i32 %851, 2560
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = extractvalue %dx.types.ResRet.f32 %854, 3
  %859 = call float @dx.op.dot4.f32(i32 56, float %855, float %856, float %857, float %858, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %860 = or i32 %798, 16
  %861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = extractvalue %dx.types.ResRet.f32 %861, 1
  %864 = extractvalue %dx.types.ResRet.f32 %861, 2
  %865 = extractvalue %dx.types.ResRet.f32 %861, 3
  %866 = call float @dx.op.dot4.f32(i32 56, float %862, float %863, float %864, float %865, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %867 = or i32 %798, 32
  %868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = extractvalue %dx.types.ResRet.f32 %868, 3
  %873 = call float @dx.op.dot4.f32(i32 56, float %869, float %870, float %871, float %872, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %874 = call float @dx.op.unary.f32(i32 27, float %859)  ; Round_ni(value)
  %875 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %876 = call float @dx.op.unary.f32(i32 27, float %866)  ; Round_ni(value)
  %877 = call float @dx.op.unary.f32(i32 6, float %876)  ; FAbs(value)
  %878 = call float @dx.op.unary.f32(i32 6, float %873)  ; FAbs(value)
  %879 = call float @dx.op.unary.f32(i32 27, float %878)  ; Round_ni(value)
  %880 = fadd fast float %877, %875
  %881 = fadd fast float %880, %879
  %882 = fcmp fast oeq float %881, 0.000000e+00
  %883 = call float @dx.op.dot4.f32(i32 56, float %855, float %856, float %857, float %858, float %727, float %728, float %729, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %884 = call float @dx.op.dot4.f32(i32 56, float %862, float %863, float %864, float %865, float %727, float %728, float %729, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %885 = call float @dx.op.dot4.f32(i32 56, float %855, float %856, float %857, float %858, float %730, float %731, float %732, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %886 = call float @dx.op.dot4.f32(i32 56, float %862, float %863, float %864, float %865, float %730, float %731, float %732, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %887 = fsub fast float %883, %859
  %888 = fsub fast float %885, %859
  %889 = fsub fast float %884, %866
  %890 = fsub fast float %886, %866
  %891 = call float @dx.op.dot3.f32(i32 55, float %801, float %802, float %803, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = fadd fast float %893, %891
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %896 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %897 = fcmp fast ogt float %895, %896
  %898 = and i1 %882, %897
  %899 = and i1 %853, %898
  br i1 %899, label %920, label %900

; <label>:900                                     ; preds = %1183, %1001, %920, %774
  %901 = phi float [ %775, %920 ], [ %1004, %1001 ], [ %1004, %1183 ], [ %775, %774 ]
  %902 = phi float [ %776, %920 ], [ %776, %1001 ], [ %1158, %1183 ], [ %776, %774 ]
  %903 = phi float [ %777, %920 ], [ %777, %1001 ], [ %1156, %1183 ], [ %777, %774 ]
  %904 = phi float [ %778, %920 ], [ %778, %1001 ], [ %1128, %1183 ], [ %778, %774 ]
  %905 = phi float [ %779, %920 ], [ %779, %1001 ], [ %1126, %1183 ], [ %779, %774 ]
  %906 = phi float [ %780, %920 ], [ %780, %1001 ], [ %1193, %1183 ], [ %780, %774 ]
  %907 = phi float [ %781, %920 ], [ %781, %1001 ], [ %1194, %1183 ], [ %781, %774 ]
  %908 = phi float [ %782, %920 ], [ %782, %1001 ], [ %1195, %1183 ], [ %782, %774 ]
  %909 = phi float [ %783, %920 ], [ %783, %1001 ], [ %1107, %1183 ], [ %783, %774 ]
  %910 = phi float [ %784, %920 ], [ %784, %1001 ], [ %1108, %1183 ], [ %784, %774 ]
  %911 = phi float [ %785, %920 ], [ %785, %1001 ], [ %1109, %1183 ], [ %785, %774 ]
  %912 = phi float [ %786, %920 ], [ %786, %1001 ], [ %1136, %1183 ], [ %786, %774 ]
  %913 = phi float [ %787, %920 ], [ %787, %1001 ], [ %1133, %1183 ], [ %787, %774 ]
  %914 = phi float [ %788, %920 ], [ %788, %1001 ], [ %1130, %1183 ], [ %788, %774 ]
  %915 = phi float [ %789, %920 ], [ %789, %1001 ], [ %1124, %1183 ], [ %789, %774 ]
  %916 = phi float [ %790, %920 ], [ %790, %1001 ], [ %1119, %1183 ], [ %790, %774 ]
  %917 = phi float [ %791, %920 ], [ %791, %1001 ], [ %1120, %1183 ], [ %791, %774 ]
  %918 = phi float [ %792, %920 ], [ %792, %1001 ], [ %1121, %1183 ], [ %792, %774 ]
  %919 = icmp eq i32 %850, %773
  br i1 %919, label %1196, label %774

; <label>:920                                     ; preds = %774
  %921 = extractvalue %dx.types.ResRet.f32 %820, 3
  %922 = extractvalue %dx.types.ResRet.f32 %820, 1
  %923 = extractvalue %dx.types.ResRet.f32 %820, 0
  %924 = extractvalue %dx.types.ResRet.f32 %810, 1
  %925 = extractvalue %dx.types.ResRet.f32 %810, 0
  %926 = extractvalue %dx.types.ResRet.i32 %806, 3
  %927 = extractvalue %dx.types.ResRet.i32 %806, 2
  %928 = add i32 %926, 0
  %929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %928, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %931 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %929, %dx.types.Handle %930, float %859, float %866, float undef, float undef, i32 0, i32 0, i32 undef, float %887, float %889, float undef, float %888, float %890, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = fmul fast float %932, %925
  %934 = fadd fast float %933, %924
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = fmul fast float %859, %815
  %937 = call float @dx.op.tertiary.f32(i32 46, float %816, float %866, float %936)  ; FMad(a,b,c)
  %938 = fadd fast float %937, %923
  %939 = fmul fast float %859, %817
  %940 = call float @dx.op.tertiary.f32(i32 46, float %818, float %866, float %939)  ; FMad(a,b,c)
  %941 = fadd fast float %940, %922
  %942 = fmul fast float %887, %815
  %943 = call float @dx.op.tertiary.f32(i32 46, float %816, float %889, float %942)  ; FMad(a,b,c)
  %944 = fmul fast float %887, %817
  %945 = call float @dx.op.tertiary.f32(i32 46, float %818, float %889, float %944)  ; FMad(a,b,c)
  %946 = fmul fast float %888, %815
  %947 = call float @dx.op.tertiary.f32(i32 46, float %816, float %890, float %946)  ; FMad(a,b,c)
  %948 = fmul fast float %888, %817
  %949 = call float @dx.op.tertiary.f32(i32 46, float %818, float %890, float %948)  ; FMad(a,b,c)
  %950 = add i32 %927, 0
  %951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %950, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %952 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %951, %dx.types.Handle %930, float %938, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float %943, float %945, float undef, float %947, float %949, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = and i32 %851, 1024
  %955 = icmp ne i32 %954, 0
  %956 = fcmp fast ogt float %953, 0x3FE0101020000000
  %957 = uitofp i1 %956 to float
  %958 = select i1 %955, float %957, float %953
  %959 = and i32 %851, 8192
  %960 = icmp ne i32 %959, 0
  %961 = select i1 %960, float %921, float 1.000000e+00
  %962 = fmul fast float %859, 2.000000e+00
  %963 = fadd fast float %962, -1.000000e+00
  %964 = call float @dx.op.unary.f32(i32 6, float %963)  ; FAbs(value)
  %965 = fmul fast float %964, %848
  %966 = fsub fast float %965, %848
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = fmul fast float %866, 2.000000e+00
  %969 = fadd fast float %968, -1.000000e+00
  %970 = call float @dx.op.unary.f32(i32 6, float %969)  ; FAbs(value)
  %971 = fmul fast float %970, %849
  %972 = fsub fast float %971, %849
  %973 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %974 = fmul fast float %878, %811
  %975 = fsub fast float %974, %811
  %976 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %977 = fmul fast float %935, %961
  %978 = fmul fast float %977, %932
  %979 = fmul fast float %978, %967
  %980 = fmul fast float %979, %958
  %981 = fmul fast float %980, %973
  %982 = fmul fast float %981, %976
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %986 = fsub fast float %895, %985
  %987 = fmul fast float %986, %984
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %982, %812
  %990 = fadd fast float %982, %812
  %991 = fmul fast float %990, %821
  %992 = fsub fast float %991, %821
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = and i32 %851, 128
  %995 = icmp ne i32 %994, 0
  %996 = select i1 %995, float %993, float %989
  %997 = fmul fast float %996, %988
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = fcmp fast ugt float %997, %999
  br i1 %1000, label %1001, label %900

; <label>:1001                                    ; preds = %920
  %1002 = select i1 %960, float %997, float 0.000000e+00
  %1003 = fadd fast float %1002, %775
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  br i1 %960, label %900, label %1005

; <label>:1005                                    ; preds = %1001
  %1006 = and i32 %851, 4
  %1007 = and i32 %851, 8
  %1008 = add i32 %807, 0
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1008, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1009, %dx.types.Handle %1010, float %938, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float %943, float %945, float undef, float %947, float %949, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = extractvalue %dx.types.ResRet.f32 %1011, 3
  %1016 = bitcast float %833 to i32
  %1017 = and i32 %1016, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = lshr i32 %1016, 8
  %1020 = and i32 %1019, 255
  %1021 = uitofp i32 %1020 to float
  %1022 = fmul fast float %1015, %1018
  %1023 = fadd fast float %1022, %1021
  %1024 = fmul fast float %1023, 0x3F70101000000000
  %1025 = add i32 %808, 0
  %1026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1025, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1027 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1026, %dx.types.Handle %1010, float %938, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float %943, float %945, float undef, float %947, float %949, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = bitcast float %827 to i32
  %1033 = and i32 %1032, 255
  %1034 = uitofp i32 %1033 to float
  %1035 = lshr i32 %1032, 8
  %1036 = and i32 %1035, 255
  %1037 = uitofp i32 %1036 to float
  %1038 = lshr i32 %1032, 16
  %1039 = and i32 %1038, 255
  %1040 = uitofp i32 %1039 to float
  %1041 = fmul fast float %1040, 0x3F70101000000000
  %1042 = fmul fast float %1028, %1034
  %1043 = fadd fast float %1042, %1037
  %1044 = fmul fast float %1043, 0x3F70101000000000
  %1045 = fadd fast float %1029, -5.000000e-01
  %1046 = fadd fast float %1031, -5.000000e-01
  %1047 = fmul fast float %1045, %1041
  %1048 = fmul fast float %1046, %1041
  %1049 = fadd fast float %1047, 5.000000e-01
  %1050 = fadd fast float %1048, 5.000000e-01
  %1051 = fmul fast float %1012, %836
  %1052 = fmul fast float %1013, %837
  %1053 = fmul fast float %1014, %838
  %1054 = fmul fast float %1049, 2.000000e+00
  %1055 = fadd fast float %1054, -1.000000e+00
  %1056 = fmul fast float %1050, 2.000000e+00
  %1057 = fadd fast float %1056, -1.000000e+00
  %1058 = fadd fast float %1055, %1057
  %1059 = fmul fast float %1058, 5.000000e-01
  %1060 = fsub fast float %1055, %1057
  %1061 = fmul fast float %1060, 5.000000e-01
  %1062 = call float @dx.op.unary.f32(i32 6, float %1059)  ; FAbs(value)
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1065 = fsub fast float %1063, %1064
  %1066 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1061, float %1065, float %1059, float %1061, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = call float @dx.op.unary.f32(i32 25, float %1066)  ; Rsqrt(value)
  %1068 = fmul fast float %1059, %1067
  %1069 = fmul fast float %1061, %1067
  %1070 = fmul fast float %1067, %1065
  %1071 = fmul fast float %1070, %801
  %1072 = fmul fast float %1070, %802
  %1073 = fmul fast float %1070, %803
  %1074 = fmul fast float %1068, %824
  %1075 = fmul fast float %1068, %825
  %1076 = fmul fast float %1068, %826
  %1077 = fadd fast float %1074, %1071
  %1078 = fadd fast float %1075, %1072
  %1079 = fadd fast float %1076, %1073
  %1080 = fmul fast float %1069, %830
  %1081 = fmul fast float %1069, %831
  %1082 = fmul fast float %1069, %832
  %1083 = fadd fast float %1077, %1080
  %1084 = fadd fast float %1078, %1081
  %1085 = fadd fast float %1079, %1082
  %1086 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1084, float %1085, float %1083, float %1084, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1087 = call float @dx.op.unary.f32(i32 25, float %1086)  ; Rsqrt(value)
  %1088 = fmul fast float %1083, %1087
  %1089 = fmul fast float %1084, %1087
  %1090 = fmul fast float %1085, %1087
  %1091 = icmp ne i32 %1007, 0
  %1092 = select i1 %1091, float 1.000000e+00, float 0.000000e+00
  %1093 = fmul fast float %997, %1092
  %1094 = and i32 %851, 1
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1100

; <label>:1096                                    ; preds = %1005
  %1097 = fsub fast float %1088, %783
  %1098 = fsub fast float %1089, %784
  %1099 = fsub fast float %1090, %785
  br label %1100

; <label>:1100                                    ; preds = %1096, %1005
  %1101 = phi float [ %1097, %1096 ], [ %1088, %1005 ]
  %1102 = phi float [ %1098, %1096 ], [ %1089, %1005 ]
  %1103 = phi float [ %1099, %1096 ], [ %1090, %1005 ]
  %1104 = fmul float %1103, %1093
  %1105 = fmul float %1102, %1093
  %1106 = fmul float %1101, %1093
  %1107 = fadd fast float %1106, %783
  %1108 = fadd fast float %1105, %784
  %1109 = fadd fast float %1104, %785
  %1110 = icmp ne i32 %1006, 0
  %1111 = select i1 %1110, float 1.000000e+00, float 0.000000e+00
  %1112 = fmul fast float %997, %1111
  %1113 = fsub fast float %1051, %790
  %1114 = fsub fast float %1052, %791
  %1115 = fsub fast float %1053, %792
  %1116 = fmul fast float %1113, %1112
  %1117 = fmul fast float %1114, %1112
  %1118 = fmul fast float %1115, %1112
  %1119 = fadd fast float %1116, %790
  %1120 = fadd fast float %1117, %791
  %1121 = fadd fast float %1118, %792
  %1122 = fsub fast float %1024, %789
  %1123 = fmul fast float %1122, %1112
  %1124 = fadd fast float %1123, %789
  %1125 = fmul fast float %1112, %779
  %1126 = fsub fast float %779, %1125
  %1127 = fmul fast float %1112, %778
  %1128 = fsub fast float %778, %1127
  %1129 = fadd fast float %997, %788
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1131 = fsub fast float %1044, %787
  %1132 = fmul fast float %1131, %1093
  %1133 = fadd fast float %1132, %787
  %1134 = fsub fast float %1030, %786
  %1135 = fmul fast float %1134, %1093
  %1136 = fadd fast float %1135, %786
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1051, float %1052, float %1053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = fmul fast float %1140, %1137
  %1142 = fadd fast float %1141, %1139
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = bitcast float %839 to i32
  %1145 = and i32 %1144, 65535
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = lshr i32 %1144, 16
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = fcmp fast oge float %1146, 0.000000e+00
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = select i1 %1149, float %1146, float %1151
  %1153 = fadd fast float %1152, %1148
  %1154 = fsub fast float %1143, %777
  %1155 = fmul fast float %1154, %997
  %1156 = fadd fast float %1155, %777
  %1157 = fmul fast float %1153, %997
  %1158 = call float @dx.op.binary.f32(i32 35, float %776, float %1157)  ; FMax(a,b)
  %1159 = and i32 %851, 16
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1183, label %1161

; <label>:1161                                    ; preds = %1100
  %1162 = bitcast float %845 to i32
  %1163 = add i32 %842, 0
  %1164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1164, %dx.types.Handle %1010, float %938, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float %943, float %945, float undef, float %947, float %949, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = and i32 %1162, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = fmul fast float %1166, %836
  %1172 = fmul fast float %1167, %837
  %1173 = fmul fast float %1168, %838
  %1174 = and i32 %851, 16384
  %1175 = icmp ne i32 %1174, 0
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = select i1 %1175, float %1177, float 1.000000e+00
  %1179 = fmul fast float %1178, %1170
  %1180 = fmul fast float %1171, %1179
  %1181 = fmul fast float %1172, %1179
  %1182 = fmul fast float %1173, %1179
  br label %1183

; <label>:1183                                    ; preds = %1161, %1100
  %1184 = phi float [ %1180, %1161 ], [ 0.000000e+00, %1100 ]
  %1185 = phi float [ %1181, %1161 ], [ 0.000000e+00, %1100 ]
  %1186 = phi float [ %1182, %1161 ], [ 0.000000e+00, %1100 ]
  %1187 = fsub fast float %1184, %780
  %1188 = fsub fast float %1185, %781
  %1189 = fsub fast float %1186, %782
  %1190 = fmul fast float %1187, %997
  %1191 = fmul fast float %1188, %997
  %1192 = fmul fast float %1189, %997
  %1193 = fadd fast float %1190, %780
  %1194 = fadd fast float %1191, %781
  %1195 = fadd fast float %1192, %782
  br label %900

; <label>:1196                                    ; preds = %900
  br label %1197

; <label>:1197                                    ; preds = %1196, %677
  %1198 = phi float [ 0.000000e+00, %677 ], [ %901, %1196 ]
  %1199 = phi float [ %692, %677 ], [ %902, %1196 ]
  %1200 = phi float [ %690, %677 ], [ %903, %1196 ]
  %1201 = phi float [ 0.000000e+00, %677 ], [ %904, %1196 ]
  %1202 = phi float [ 0.000000e+00, %677 ], [ %905, %1196 ]
  %1203 = phi float [ %680, %677 ], [ %906, %1196 ]
  %1204 = phi float [ %681, %677 ], [ %907, %1196 ]
  %1205 = phi float [ %682, %677 ], [ %908, %1196 ]
  %1206 = phi float [ %718, %677 ], [ %909, %1196 ]
  %1207 = phi float [ %719, %677 ], [ %910, %1196 ]
  %1208 = phi float [ %720, %677 ], [ %911, %1196 ]
  %1209 = phi float [ %689, %677 ], [ %912, %1196 ]
  %1210 = phi float [ %688, %677 ], [ %913, %1196 ]
  %1211 = phi float [ 0.000000e+00, %677 ], [ %914, %1196 ]
  %1212 = phi float [ %686, %677 ], [ %915, %1196 ]
  %1213 = phi float [ %683, %677 ], [ %916, %1196 ]
  %1214 = phi float [ %684, %677 ], [ %917, %1196 ]
  %1215 = phi float [ %685, %677 ], [ %918, %1196 ]
  %1216 = call float @dx.op.dot3.f32(i32 55, float %1206, float %1207, float %1208, float %1206, float %1207, float %1208)  ; Dot3(ax,ay,az,bx,by,bz)
  %1217 = call float @dx.op.unary.f32(i32 25, float %1216)  ; Rsqrt(value)
  %1218 = fmul fast float %1217, %1206
  %1219 = fmul fast float %1217, %1207
  %1220 = fmul fast float %1217, %1208
  %1221 = fadd fast float %1211, %687
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1219, float %1220, float %1218, float %1219, float %1220)  ; Dot3(ax,ay,az,bx,by,bz)
  %1224 = call float @dx.op.unary.f32(i32 25, float %1223)  ; Rsqrt(value)
  %1225 = fmul fast float %1224, %1218
  %1226 = fmul fast float %1224, %1219
  %1227 = fmul fast float %1224, %1220
  %1228 = fadd fast float %1212, 0xBFB99999A0000000
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fmul fast float %1229, 0x3FF1C71C80000000
  %1231 = call float @dx.op.binary.f32(i32 36, float %1212, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1232 = fsub fast float 1.000000e+00, %1230
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = fmul fast float %1233, %1213
  %1235 = fmul fast float %1233, %1214
  %1236 = fmul fast float %1233, %1215
  %1237 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1238 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1239 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1240 = fmul fast float %1230, %1213
  %1241 = fmul fast float %1230, %1214
  %1242 = fmul fast float %1230, %1215
  %1243 = fadd fast float %1240, %1231
  %1244 = fadd fast float %1241, %1231
  %1245 = fadd fast float %1242, %1231
  %1246 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1247 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1248 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1249 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.i32 %1250, 3
  %1252 = and i32 %1251, 8
  %1253 = icmp ne i32 %1252, 0
  %1254 = call float @dx.op.binary.f32(i32 35, float %1237, float %1213)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 35, float %1238, float %1213)  ; FMax(a,b)
  %1256 = call float @dx.op.binary.f32(i32 35, float %1239, float %1213)  ; FMax(a,b)
  %1257 = call float @dx.op.dot3.f32(i32 55, float %1237, float %1238, float %1239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1258 = select i1 %176, float %1213, float %1237
  %1259 = select i1 %176, float %1257, float %1238
  %1260 = select i1 %176, float 1.000000e+00, float %1239
  %1261 = select i1 %1253, float %1254, float %1258
  %1262 = select i1 %1253, float %1255, float %1259
  %1263 = select i1 %1253, float %1256, float %1260
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.CBufRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.CBufRet.f32 %1264, 2
  %1268 = fadd fast float %1265, %105
  %1269 = fadd fast float %1266, %106
  %1270 = fadd fast float %1267, %107
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = fsub fast float %1268, %1272
  %1275 = fsub fast float %1269, %1273
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1275, %1275
  %1278 = fadd fast float %1276, %1277
  %1279 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1281 = fcmp fast olt float %1279, %1280
  br i1 %1281, label %1282, label %1349

; <label>:1282                                    ; preds = %1197
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1290 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1293 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1294 = extractvalue %dx.types.CBufRet.f32 %1287, 3
  %1295 = fadd fast float %1292, %1268
  %1296 = fadd fast float %1293, %1269
  %1297 = fadd fast float %1294, %1270
  %1298 = fmul fast float %1295, %1284
  %1299 = call float @dx.op.tertiary.f32(i32 46, float %1296, float %1286, float %1298)  ; FMad(a,b,c)
  %1300 = call float @dx.op.tertiary.f32(i32 46, float %1297, float %1288, float %1299)  ; FMad(a,b,c)
  %1301 = fmul fast float %1295, %1289
  %1302 = call float @dx.op.tertiary.f32(i32 46, float %1296, float %1290, float %1301)  ; FMad(a,b,c)
  %1303 = call float @dx.op.tertiary.f32(i32 46, float %1297, float %1291, float %1302)  ; FMad(a,b,c)
  %1304 = fsub fast float %1300, %1292
  %1305 = fsub fast float %1303, %1293
  %1306 = fsub fast float %1304, %1272
  %1307 = fadd fast float %1306, %1280
  %1308 = fsub fast float %1305, %1273
  %1309 = fadd fast float %1308, %1280
  %1310 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1311 = fmul fast float %1307, %1310
  %1312 = fmul fast float %1309, %1310
  %1313 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1314 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1315 = fsub fast float 1.000000e+00, %1313
  %1316 = fsub fast float 1.000000e+00, %1314
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = fcmp fast ugt float %1318, 0.000000e+00
  br i1 %1319, label %1320, label %1623

; <label>:1320                                    ; preds = %1282
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 2
  %1323 = fmul fast float %1322, %1318
  %1324 = extractvalue %dx.types.CBufRet.f32 %1321, 3
  %1325 = fadd fast float %1324, %1323
  %1326 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1327 = fadd fast float %1325, %1294
  %1328 = fmul fast float %1300, %1288
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1291, float %1328)  ; FMad(a,b,c)
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1326, float %1329)  ; FMad(a,b,c)
  %1331 = fsub fast float %1330, %1294
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = fsub fast float %1331, %1333
  %1335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.ResRet.f32 %1335, 1
  %1338 = extractvalue %dx.types.ResRet.f32 %1335, 2
  %1339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.ResRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.ResRet.f32 %1339, 2
  %1343 = fadd fast float %1340, %1336
  %1344 = fmul fast float %1343, 0x3F847AE140000000
  %1345 = fadd fast float %1341, %1337
  %1346 = fmul fast float %1345, 0x3F847AE140000000
  %1347 = fadd fast float %1342, %1338
  %1348 = fmul fast float %1347, 0x3F847AE140000000
  br label %1623

; <label>:1349                                    ; preds = %1197
  %1350 = and i32 %152, 1
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1623, label %1352

; <label>:1352                                    ; preds = %1349
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 0
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1353, 1
  %1360 = extractvalue %dx.types.CBufRet.f32 %1355, 1
  %1361 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1362 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  %1363 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1364 = extractvalue %dx.types.CBufRet.f32 %1357, 3
  %1365 = fadd fast float %1362, %1268
  %1366 = fadd fast float %1363, %1269
  %1367 = fadd fast float %1364, %1270
  %1368 = fmul fast float %1365, %1354
  %1369 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1356, float %1368)  ; FMad(a,b,c)
  %1370 = call float @dx.op.tertiary.f32(i32 46, float %1367, float %1358, float %1369)  ; FMad(a,b,c)
  %1371 = fmul fast float %1365, %1359
  %1372 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1360, float %1371)  ; FMad(a,b,c)
  %1373 = call float @dx.op.tertiary.f32(i32 46, float %1367, float %1361, float %1372)  ; FMad(a,b,c)
  %1374 = fsub fast float %1370, %1362
  %1375 = fsub fast float %1373, %1363
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1379 = extractvalue %dx.types.CBufRet.f32 %1376, 2
  %1380 = extractvalue %dx.types.CBufRet.f32 %1376, 3
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.i32 %1383, 1
  %1386 = udiv i32 %1385, %1384
  %1387 = fsub fast float %1374, %1377
  %1388 = fsub fast float %1375, %1378
  %1389 = call float @dx.op.binary.f32(i32 35, float %1387, float 0.000000e+00)  ; FMax(a,b)
  %1390 = call float @dx.op.binary.f32(i32 35, float %1388, float 0.000000e+00)  ; FMax(a,b)
  %1391 = call float @dx.op.binary.f32(i32 36, float %1389, float %1379)  ; FMin(a,b)
  %1392 = call float @dx.op.binary.f32(i32 36, float %1390, float %1380)  ; FMin(a,b)
  %1393 = add i32 %1384, -1
  %1394 = add i32 %1386, -1
  %1395 = fmul fast float %1391, %1382
  %1396 = fmul fast float %1392, %1382
  %1397 = fptoui float %1395 to i32
  %1398 = fptoui float %1396 to i32
  %1399 = call i32 @dx.op.binary.i32(i32 40, i32 %1397, i32 %1393)  ; UMin(a,b)
  %1400 = call i32 @dx.op.binary.i32(i32 40, i32 %1398, i32 %1394)  ; UMin(a,b)
  %1401 = mul i32 %1400, %1384
  %1402 = add i32 %1401, %1399
  %1403 = shl i32 %1402, 2
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = icmp eq i32 %1405, -1
  br i1 %1406, label %1623, label %1407

; <label>:1407                                    ; preds = %1352
  %1408 = mul i32 %1405, 148
  %1409 = add i32 %1408, 4
  %1410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = add i32 %1408, 8
  %1413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = add i32 %1408, 36
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = add i32 %1408, 60
  %1419 = add i32 %1408, 92
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1408, 116
  %1423 = fsub fast float %1374, %1411
  %1424 = fsub fast float %1375, %1414
  %1425 = fmul fast float %1382, %1423
  %1426 = fmul fast float %1382, %1424
  %1427 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1428 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1429 = fsub fast float 1.000000e+00, %1428
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1432 = call float @dx.op.unary.f32(i32 83, float %1427)  ; DerivCoarseX(value)
  %1433 = call float @dx.op.unary.f32(i32 83, float %1429)  ; DerivCoarseX(value)
  %1434 = call float @dx.op.unary.f32(i32 84, float %1427)  ; DerivCoarseY(value)
  %1435 = call float @dx.op.unary.f32(i32 84, float %1429)  ; DerivCoarseY(value)
  %1436 = fmul fast float %1432, %1431
  %1437 = fmul fast float %1433, %1431
  %1438 = fmul fast float %1434, %1431
  %1439 = fmul fast float %1435, %1431
  %1440 = call float @dx.op.dot2.f32(i32 54, float %1438, float %1439, float %1438, float %1439)  ; Dot2(ax,ay,bx,by)
  %1441 = call float @dx.op.dot2.f32(i32 54, float %1436, float %1437, float %1436, float %1437)  ; Dot2(ax,ay,bx,by)
  %1442 = call float @dx.op.binary.f32(i32 35, float %1441, float %1440)  ; FMax(a,b)
  %1443 = call float @dx.op.unary.f32(i32 23, float %1442)  ; Log(value)
  %1444 = fmul fast float %1443, 5.000000e-01
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1447 = fadd fast float %1446, %1444
  %1448 = call float @dx.op.binary.f32(i32 35, float %1447, float 0.000000e+00)  ; FMax(a,b)
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 3
  %1451 = fadd fast float %1450, %1448
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 3
  %1454 = fadd fast float %1451, %1453
  %1455 = add i32 %1421, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1455, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1456, i32 0)  ; GetDimensions(handle,mipLevel)
  %1458 = extractvalue %dx.types.Dimensions %1457, 0
  %1459 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1458)  ; FirstbitLo(value)
  %1460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.i32 %1460, 1
  %1462 = sub nsw i32 %1461, %1459
  %1463 = sitofp i32 %1462 to float
  %1464 = fsub fast float %1454, %1463
  %1465 = call float @dx.op.binary.f32(i32 35, float %1464, float 0.000000e+00)  ; FMax(a,b)
  %1466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1456, %dx.types.Handle %33, float %1427, float %1429, float %1417, float undef, i32 0, i32 0, i32 undef, float %1465)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = fcmp ule float %1467, 0x3FE0101020000000
  %1469 = extractvalue %dx.types.CBufRet.i32 %1460, 0
  %1470 = and i32 %1469, 128
  %1471 = icmp ne i32 %1470, 0
  %1472 = and i1 %1468, %1471
  br i1 %1472, label %1623, label %1473

; <label>:1473                                    ; preds = %1407
  %1474 = add i32 %1408, 20
  %1475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = add i32 %1408, 24
  %1478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = add i32 %1408, 40
  %1481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = add i32 %1408, 96
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 2
  %1488 = fmul fast float %1487, %1427
  %1489 = fmul fast float %1487, %1429
  %1490 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1491 = fadd fast float %1488, %1490
  %1492 = fadd fast float %1489, %1490
  %1493 = add i32 %1485, 0
  %1494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1493, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1495 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1494, i32 0)  ; GetDimensions(handle,mipLevel)
  %1496 = extractvalue %dx.types.Dimensions %1495, 0
  %1497 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1496)  ; FirstbitLo(value)
  %1498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.i32 %1498, 1
  %1500 = sub nsw i32 %1499, %1497
  %1501 = sitofp i32 %1500 to float
  %1502 = fsub fast float %1451, %1501
  %1503 = call float @dx.op.binary.f32(i32 35, float %1502, float 0.000000e+00)  ; FMax(a,b)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1494, %dx.types.Handle %33, float %1491, float %1492, float %1482, float undef, i32 0, i32 0, i32 undef, float %1503)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = fmul fast float %1505, %1476
  %1507 = fadd fast float %1506, %1479
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 3
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 3
  %1516 = extractvalue %dx.types.CBufRet.f32 %1508, 3
  %1517 = fadd fast float %1513, %1374
  %1518 = fadd fast float %1515, %1375
  %1519 = fadd fast float %1507, %1516
  %1520 = fmul fast float %1517, %1509
  %1521 = call float @dx.op.tertiary.f32(i32 46, float %1518, float %1510, float %1520)  ; FMad(a,b,c)
  %1522 = call float @dx.op.tertiary.f32(i32 46, float %1519, float %1511, float %1521)  ; FMad(a,b,c)
  %1523 = fsub fast float %1522, %1516
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  %1526 = fsub fast float %1523, %1525
  %1527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.i32 %1527, 0
  %1529 = call i32 @dx.op.binary.i32(i32 40, i32 %1405, i32 %1528)  ; UMin(a,b)
  %1530 = mul i32 %1529, 36
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1530, 4
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = fmul fast float %1535, %1427
  %1537 = fmul fast float %1535, %1429
  %1538 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1539 = fadd fast float %1536, %1538
  %1540 = fadd fast float %1537, %1538
  %1541 = icmp eq i32 %1532, 0
  br i1 %1541, label %1610, label %1542

; <label>:1542                                    ; preds = %1473
  br label %1543

; <label>:1543                                    ; preds = %1600, %1542
  %1544 = phi float [ %1601, %1600 ], [ 0.000000e+00, %1542 ]
  %1545 = phi float [ %1602, %1600 ], [ 0.000000e+00, %1542 ]
  %1546 = phi float [ %1603, %1600 ], [ 0.000000e+00, %1542 ]
  %1547 = phi float [ %1604, %1600 ], [ 0.000000e+00, %1542 ]
  %1548 = phi float [ %1605, %1600 ], [ 0.000000e+00, %1542 ]
  %1549 = phi float [ %1606, %1600 ], [ 0.000000e+00, %1542 ]
  %1550 = phi i32 [ %1607, %1600 ], [ 0, %1542 ]
  %1551 = shl i32 %1550, 2
  %1552 = add i32 %1418, %1551
  %1553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = add i32 %1422, %1551
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = add i32 %1557, 0
  %1559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1558, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1560 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1559, i32 0)  ; GetDimensions(handle,mipLevel)
  %1561 = extractvalue %dx.types.Dimensions %1560, 0
  %1562 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1561)  ; FirstbitLo(value)
  %1563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.i32 %1563, 1
  %1565 = sub nsw i32 %1564, %1562
  %1566 = sitofp i32 %1565 to float
  %1567 = fsub fast float %1451, %1566
  %1568 = call float @dx.op.binary.f32(i32 35, float %1567, float 0.000000e+00)  ; FMax(a,b)
  %1569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1559, %dx.types.Handle %33, float %1539, float %1540, float %1554, float undef, i32 0, i32 0, i32 undef, float %1568)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = fcmp fast ogt float %1570, 0.000000e+00
  br i1 %1571, label %1572, label %1600

; <label>:1572                                    ; preds = %1543
  %1573 = add i32 %1533, %1551
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 32767
  %1577 = mul nuw nsw i32 %1576, 928
  %1578 = add nuw nsw i32 %1577, 48
  %1579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = add nuw nsw i32 %1577, 60
  %1584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.ResRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.ResRet.f32 %1584, 2
  %1588 = fmul fast float %1580, %1570
  %1589 = fmul fast float %1581, %1570
  %1590 = fmul fast float %1582, %1570
  %1591 = fadd fast float %1588, %1544
  %1592 = fadd fast float %1589, %1545
  %1593 = fadd fast float %1590, %1546
  %1594 = fmul fast float %1585, %1570
  %1595 = fmul fast float %1586, %1570
  %1596 = fmul fast float %1587, %1570
  %1597 = fadd fast float %1594, %1547
  %1598 = fadd fast float %1595, %1548
  %1599 = fadd fast float %1596, %1549
  br label %1600

; <label>:1600                                    ; preds = %1572, %1543
  %1601 = phi float [ %1591, %1572 ], [ %1544, %1543 ]
  %1602 = phi float [ %1592, %1572 ], [ %1545, %1543 ]
  %1603 = phi float [ %1593, %1572 ], [ %1546, %1543 ]
  %1604 = phi float [ %1597, %1572 ], [ %1547, %1543 ]
  %1605 = phi float [ %1598, %1572 ], [ %1548, %1543 ]
  %1606 = phi float [ %1599, %1572 ], [ %1549, %1543 ]
  %1607 = add nuw i32 %1550, 1
  %1608 = icmp eq i32 %1607, %1532
  br i1 %1608, label %1609, label %1543

; <label>:1609                                    ; preds = %1600
  br label %1610

; <label>:1610                                    ; preds = %1609, %1473
  %1611 = phi float [ 0.000000e+00, %1473 ], [ %1601, %1609 ]
  %1612 = phi float [ 0.000000e+00, %1473 ], [ %1602, %1609 ]
  %1613 = phi float [ 0.000000e+00, %1473 ], [ %1603, %1609 ]
  %1614 = phi float [ 0.000000e+00, %1473 ], [ %1604, %1609 ]
  %1615 = phi float [ 0.000000e+00, %1473 ], [ %1605, %1609 ]
  %1616 = phi float [ 0.000000e+00, %1473 ], [ %1606, %1609 ]
  %1617 = fadd fast float %1614, %1611
  %1618 = fmul fast float %1617, 0x3F847AE140000000
  %1619 = fadd fast float %1615, %1612
  %1620 = fmul fast float %1619, 0x3F847AE140000000
  %1621 = fadd fast float %1616, %1613
  %1622 = fmul fast float %1621, 0x3F847AE140000000
  br label %1623

; <label>:1623                                    ; preds = %1610, %1407, %1352, %1349, %1320, %1282
  %1624 = phi float [ %1334, %1320 ], [ -1.310720e+05, %1282 ], [ %1526, %1610 ], [ -1.310720e+05, %1352 ], [ -1.310720e+05, %1407 ], [ -1.310720e+05, %1349 ]
  %1625 = phi float [ %1344, %1320 ], [ 0.000000e+00, %1282 ], [ %1618, %1610 ], [ 0.000000e+00, %1352 ], [ 0.000000e+00, %1407 ], [ 0.000000e+00, %1349 ]
  %1626 = phi float [ %1346, %1320 ], [ 0.000000e+00, %1282 ], [ %1620, %1610 ], [ 0.000000e+00, %1352 ], [ 0.000000e+00, %1407 ], [ 0.000000e+00, %1349 ]
  %1627 = phi float [ %1348, %1320 ], [ 0.000000e+00, %1282 ], [ %1622, %1610 ], [ 0.000000e+00, %1352 ], [ 0.000000e+00, %1407 ], [ 0.000000e+00, %1349 ]
  %1628 = phi i1 [ true, %1320 ], [ false, %1282 ], [ true, %1610 ], [ false, %1352 ], [ false, %1407 ], [ false, %1349 ]
  %1629 = and i32 %152, 3
  %1630 = icmp eq i32 %1629, 1
  %1631 = select i1 %1630, float 1.000000e+00, float 0.000000e+00
  %1632 = fsub fast float %1624, %107
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = select i1 %1628, float %1633, float 1.000000e+00
  %1635 = fmul fast float %1634, %1631
  %1636 = icmp eq i32 %1629, 3
  %1637 = select i1 %1636, float 1.000000e+00, float %1635
  %1638 = call float @dx.op.binary.f32(i32 35, float %1198, float %1637)  ; FMax(a,b)
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fcmp fast une float %1639, 0.000000e+00
  %1641 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = call float @dx.op.unary.f32(i32 25, float %1641)  ; Rsqrt(value)
  br i1 %1640, label %1650, label %1643

; <label>:1643                                    ; preds = %1623
  %1644 = fmul fast float %1642, %105
  %1645 = fmul fast float %1642, %106
  %1646 = fmul fast float %1642, %107
  %1647 = fsub fast float -0.000000e+00, %1644
  %1648 = fsub fast float -0.000000e+00, %1645
  %1649 = fsub fast float -0.000000e+00, %1646
  br label %1818

; <label>:1650                                    ; preds = %1623
  %1651 = fmul fast float %105, %1642
  %1652 = fsub fast float -0.000000e+00, %1651
  %1653 = fmul fast float %106, %1642
  %1654 = fsub fast float -0.000000e+00, %1653
  %1655 = fmul fast float %107, %1642
  %1656 = fsub fast float -0.000000e+00, %1655
  %1657 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1654, float %1656, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1658 = fmul fast float %1639, 2.500000e+00
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = fmul fast float %1639, 0x4013FFFFE0000000
  %1661 = fadd fast float %1660, 0xBFFFFFFFE0000000
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1663 = fmul fast float %1639, 0x4004000020000000
  %1664 = fadd fast float %1663, 0xBFF8000040000000
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1667 = fmul fast float %1228, 1.000000e+01
  %1668 = call float @dx.op.unary.f32(i32 7, float %1667)  ; Saturate(value)
  %1669 = fmul fast float %1668, 2.000000e+00
  %1670 = fsub fast float 3.000000e+00, %1669
  %1671 = fmul fast float %1668, %1668
  %1672 = fmul fast float %1671, %1670
  %1673 = fsub fast float 1.000000e+00, %1672
  %1674 = fsub fast float 0x3FE3333340000000, %1249
  %1675 = fmul fast float %1674, 0x400AAAAAA0000000
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fmul fast float %1673, %1676
  %1678 = fmul fast float %1261, 0x3FEA2B8620000000
  %1679 = fmul fast float %1262, 0x3FEA2B8620000000
  %1680 = fmul fast float %1263, 0x3FEA2B8620000000
  %1681 = fadd fast float %1678, 0x3FC81DFBA0000000
  %1682 = fmul fast float %1681, %1261
  %1683 = fadd fast float %1682, 0x3F910E6020000000
  %1684 = fadd fast float %1679, 0x3FC81DFBA0000000
  %1685 = fmul fast float %1684, %1262
  %1686 = fadd fast float %1685, 0x3F910E6020000000
  %1687 = fadd fast float %1680, 0x3FC81DFBA0000000
  %1688 = fmul fast float %1687, %1263
  %1689 = fadd fast float %1688, 0x3F910E6020000000
  %1690 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1691 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1692 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1693 = fsub fast float %1690, %1261
  %1694 = fsub fast float %1691, %1262
  %1695 = fsub fast float %1692, %1263
  %1696 = fmul fast float %1693, %1666
  %1697 = fmul fast float %1696, %1677
  %1698 = fmul fast float %1694, %1666
  %1699 = fmul fast float %1698, %1677
  %1700 = fmul fast float %1695, %1666
  %1701 = fmul fast float %1700, %1677
  %1702 = fadd fast float %1697, %1261
  %1703 = fadd fast float %1699, %1262
  %1704 = fadd fast float %1701, %1263
  %1705 = fmul fast float %1209, %1209
  %1706 = fmul fast float %1705, %1705
  %1707 = fadd fast float %1662, 1.000000e+00
  %1708 = fsub fast float %1707, %1677
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1712 = fsub fast float 1.000000e+00, %1706
  %1713 = call float @dx.op.binary.f32(i32 36, float %1709, float %1712)  ; FMin(a,b)
  %1714 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1715 = call float @dx.op.binary.f32(i32 35, float %1713, float %1714)  ; FMax(a,b)
  %1716 = fadd fast float %1711, 0xBFE4CCCCC0000000
  %1717 = fmul fast float %1716, 0x4006DB6DA0000000
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = fmul fast float %1718, 2.000000e+00
  %1720 = fsub fast float 3.000000e+00, %1719
  %1721 = bitcast float %1246 to i32
  %1722 = ashr i32 %1721, 1
  %1723 = add nsw i32 %1722, 532487669
  %1724 = bitcast i32 %1723 to float
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = bitcast float %1725 to i32
  %1727 = sub nsw i32 2129859010, %1726
  %1728 = bitcast i32 %1727 to float
  %1729 = fmul fast float %1728, 2.000000e+00
  %1730 = bitcast float %1247 to i32
  %1731 = ashr i32 %1730, 1
  %1732 = add nsw i32 %1731, 532487669
  %1733 = bitcast i32 %1732 to float
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = bitcast float %1734 to i32
  %1736 = sub nsw i32 2129859010, %1735
  %1737 = bitcast i32 %1736 to float
  %1738 = fmul fast float %1737, 2.000000e+00
  %1739 = bitcast float %1248 to i32
  %1740 = ashr i32 %1739, 1
  %1741 = add nsw i32 %1740, 532487669
  %1742 = bitcast i32 %1741 to float
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = bitcast float %1743 to i32
  %1745 = sub nsw i32 2129859010, %1744
  %1746 = bitcast i32 %1745 to float
  %1747 = fmul fast float %1746, 2.000000e+00
  %1748 = fsub fast float 0x4002A9FBE0000000, %1729
  %1749 = fadd fast float %1729, 0x3FD54FDF00000000
  %1750 = bitcast float %1749 to i32
  %1751 = sub nsw i32 2129859010, %1750
  %1752 = bitcast i32 %1751 to float
  %1753 = fmul fast float %1752, %1748
  %1754 = fmul fast float %1753, %1753
  %1755 = fsub fast float 0x4002A9FBE0000000, %1738
  %1756 = fadd fast float %1738, 0x3FD54FDF00000000
  %1757 = bitcast float %1756 to i32
  %1758 = sub nsw i32 2129859010, %1757
  %1759 = bitcast i32 %1758 to float
  %1760 = fmul fast float %1759, %1755
  %1761 = fmul fast float %1760, %1760
  %1762 = fsub fast float 0x4002A9FBE0000000, %1747
  %1763 = fadd fast float %1747, 0x3FD54FDF00000000
  %1764 = bitcast float %1763 to i32
  %1765 = sub nsw i32 2129859010, %1764
  %1766 = bitcast i32 %1765 to float
  %1767 = fmul fast float %1766, %1762
  %1768 = fmul fast float %1767, %1767
  %1769 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1754)  ; FMax(a,b)
  %1770 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1761)  ; FMax(a,b)
  %1771 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1768)  ; FMax(a,b)
  %1772 = fsub fast float 1.000000e+00, %1657
  %1773 = fadd fast float %1772, %1673
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1775 = fsub fast float 1.000000e+00, %1637
  %1776 = fmul fast float %1715, %1775
  %1777 = fmul fast float %1718, %1718
  %1778 = fmul fast float %1777, %1776
  %1779 = fmul fast float %1778, %1720
  %1780 = fmul fast float %1775, 0xBFE99999A0000000
  %1781 = fmul fast float %1780, %1666
  %1782 = fmul fast float %1781, %1677
  %1783 = fadd fast float %1782, 1.000000e+00
  %1784 = fadd fast float %1249, -1.000000e+00
  %1785 = fmul fast float %1783, %1784
  %1786 = fadd fast float %1785, 1.000000e+00
  %1787 = fsub fast float %1769, %1246
  %1788 = fsub fast float %1770, %1247
  %1789 = fsub fast float %1771, %1248
  %1790 = fmul fast float %1779, %1787
  %1791 = fmul fast float %1779, %1788
  %1792 = fmul fast float %1779, %1789
  %1793 = fadd fast float %1790, %1246
  %1794 = fadd fast float %1791, %1247
  %1795 = fadd fast float %1792, %1248
  %1796 = fsub fast float %43, %1225
  %1797 = fsub fast float %44, %1226
  %1798 = fsub fast float %45, %1227
  %1799 = fmul fast float %1779, %1796
  %1800 = fmul fast float %1779, %1797
  %1801 = fmul fast float %1779, %1798
  %1802 = fadd fast float %1799, %1225
  %1803 = fadd fast float %1800, %1226
  %1804 = fadd fast float %1801, %1227
  %1805 = fmul fast float %1779, %1774
  %1806 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1807 = fsub fast float 1.000000e+00, %1806
  %1808 = fmul fast float %1805, %1807
  %1809 = fadd fast float %1808, %1806
  %1810 = fsub fast float 1.000000e+00, %1209
  %1811 = fmul fast float %1779, %1810
  %1812 = fadd fast float %1811, %1209
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1804, float %1802, float %1803, float %1804)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call float @dx.op.unary.f32(i32 25, float %1813)  ; Rsqrt(value)
  %1815 = fmul fast float %1802, %1814
  %1816 = fmul fast float %1803, %1814
  %1817 = fmul fast float %1804, %1814
  br label %1818

; <label>:1818                                    ; preds = %1650, %1643
  %1819 = phi float [ %1649, %1643 ], [ %1656, %1650 ]
  %1820 = phi float [ %1648, %1643 ], [ %1654, %1650 ]
  %1821 = phi float [ %1647, %1643 ], [ %1652, %1650 ]
  %1822 = phi float [ %1646, %1643 ], [ %1655, %1650 ]
  %1823 = phi float [ %1645, %1643 ], [ %1653, %1650 ]
  %1824 = phi float [ %1644, %1643 ], [ %1651, %1650 ]
  %1825 = phi float [ %1246, %1643 ], [ %1793, %1650 ]
  %1826 = phi float [ %1247, %1643 ], [ %1794, %1650 ]
  %1827 = phi float [ %1248, %1643 ], [ %1795, %1650 ]
  %1828 = phi float [ %1261, %1643 ], [ %1702, %1650 ]
  %1829 = phi float [ %1262, %1643 ], [ %1703, %1650 ]
  %1830 = phi float [ %1263, %1643 ], [ %1704, %1650 ]
  %1831 = phi float [ %1225, %1643 ], [ %1815, %1650 ]
  %1832 = phi float [ %1226, %1643 ], [ %1816, %1650 ]
  %1833 = phi float [ %1227, %1643 ], [ %1817, %1650 ]
  %1834 = phi float [ %1249, %1643 ], [ %1809, %1650 ]
  %1835 = phi float [ %1209, %1643 ], [ %1812, %1650 ]
  %1836 = select i1 %176, float 0.000000e+00, float %1827
  %1837 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %1821, float %1820, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1839 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1823, float %1822, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %1840 = fmul fast float %1839, 2.000000e+00
  %1841 = fmul fast float %1840, %1831
  %1842 = fmul fast float %1840, %1832
  %1843 = fmul fast float %1840, %1833
  %1844 = fsub fast float %1824, %1841
  %1845 = fsub fast float %1823, %1842
  %1846 = fsub fast float %1822, %1843
  %1847 = call float @dx.op.binary.f32(i32 36, float %1835, float 1.000000e+00)  ; FMin(a,b)
  %1848 = fsub fast float 1.000000e+00, %1835
  %1849 = bitcast float %1848 to i32
  %1850 = sub nsw i32 2129859010, %1849
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1854 = fadd fast float %1852, %105
  %1855 = fadd fast float %1853, %106
  %1856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.i32 %1856, 0
  %1858 = icmp eq i32 %1857, 1
  br i1 %1858, label %1859, label %1894

; <label>:1859                                    ; preds = %1818
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1863 = fsub fast float %1854, %1861
  %1864 = fsub fast float %1855, %1862
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = fmul fast float %1863, %1866
  %1869 = fmul fast float %1864, %1867
  %1870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1868, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = fcmp fast ogt float %1871, 0.000000e+00
  %1873 = extractvalue %dx.types.CBufRet.i32 %1856, 3
  %1874 = icmp ne i32 %1873, 0
  %1875 = and i1 %1872, %1874
  br i1 %1875, label %1876, label %1894, !dx.controlflow.hints !72

; <label>:1876                                    ; preds = %1859
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.CBufRet.f32 %1877, 1
  %1880 = fsub fast float %1854, %1878
  %1881 = fsub fast float %1855, %1879
  %1882 = fmul fast float %1880, %1880
  %1883 = fmul fast float %1881, %1881
  %1884 = fadd fast float %1882, %1883
  %1885 = uitofp i32 %1873 to float
  %1886 = fmul fast float %1885, %1885
  %1887 = fcmp fast ogt float %1884, %1886
  br i1 %1887, label %1894, label %1888

; <label>:1888                                    ; preds = %1876
  %1889 = call float @dx.op.unary.f32(i32 24, float %1884)  ; Sqrt(value)
  %1890 = fsub fast float %1885, %1889
  %1891 = fmul fast float %1890, 0x3F75555560000000
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = call float @dx.op.binary.f32(i32 36, float %1892, float %1871)  ; FMin(a,b)
  br label %1894

; <label>:1894                                    ; preds = %1888, %1876, %1859, %1818
  %1895 = phi float [ 1.000000e+00, %1818 ], [ %1893, %1888 ], [ %1871, %1859 ], [ 0.000000e+00, %1876 ]
  %1896 = fcmp fast ogt float %1895, 0.000000e+00
  br i1 %1896, label %1897, label %1995, !dx.controlflow.hints !73

; <label>:1897                                    ; preds = %1894
  %1898 = fadd fast float %136, 5.000000e-01
  %1899 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1899, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 3
  %1906 = fmul fast float %1905, %1901
  %1907 = fmul fast float %1905, %1902
  %1908 = fmul fast float %1905, %1903
  %1909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1899, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1899, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = fmul fast float %1912, 2.000000e+00
  %1915 = fmul fast float %1913, 2.000000e+00
  %1916 = fadd fast float %1914, -1.000000e+00
  %1917 = fadd fast float %1915, -1.000000e+00
  %1918 = fadd fast float %1916, %1917
  %1919 = fmul fast float %1918, 5.000000e-01
  %1920 = fsub fast float %1916, %1917
  %1921 = fmul fast float %1920, 5.000000e-01
  %1922 = call float @dx.op.unary.f32(i32 6, float %1919)  ; FAbs(value)
  %1923 = fsub fast float 1.000000e+00, %1922
  %1924 = call float @dx.op.unary.f32(i32 6, float %1921)  ; FAbs(value)
  %1925 = fsub fast float %1923, %1924
  %1926 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1925)  ; FMax(a,b)
  %1927 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1921, float %1926, float %1919, float %1921, float %1926)  ; Dot3(ax,ay,az,bx,by,bz)
  %1928 = bitcast float %1927 to i32
  %1929 = ashr i32 %1928, 1
  %1930 = sub nsw i32 1597250115, %1929
  %1931 = bitcast i32 %1930 to float
  %1932 = fmul fast float %1931, %1919
  %1933 = fmul fast float %1931, %1921
  %1934 = fmul fast float %1931, %1926
  %1935 = fsub fast float 1.000000e+00, %1910
  %1936 = fdiv fast float %1935, %1934
  %1937 = fmul fast float %1934, %43
  %1938 = fmul fast float %1934, %44
  %1939 = fmul fast float %1934, %45
  %1940 = fmul fast float %1932, %39
  %1941 = fmul fast float %1932, %40
  %1942 = fmul fast float %1932, %41
  %1943 = fadd fast float %1937, %1940
  %1944 = fadd fast float %1938, %1941
  %1945 = fadd fast float %1939, %1942
  %1946 = fmul fast float %1933, %69
  %1947 = fmul fast float %1933, %70
  %1948 = fmul fast float %1933, %71
  %1949 = fadd fast float %1943, %1946
  %1950 = fadd fast float %1944, %1947
  %1951 = fadd fast float %1945, %1948
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1949, float %1950, float %1951, float %1949, float %1950, float %1951)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = call float @dx.op.unary.f32(i32 25, float %1952)  ; Rsqrt(value)
  %1954 = fmul fast float %1949, %1953
  %1955 = fmul fast float %1950, %1953
  %1956 = fmul fast float %1951, %1953
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fmul fast float %1958, 5.000000e-01
  %1960 = fadd fast float %1959, 5.000000e-01
  %1961 = fmul fast float %1960, %1910
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %1954, float %1955, float %1956)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1964 = fmul fast float %1963, %1936
  %1965 = fadd fast float %1961, %1964
  %1966 = fsub fast float 5.000000e-01, %1959
  %1967 = fmul fast float %1966, %1828
  %1968 = fmul fast float %1966, %1829
  %1969 = fmul fast float %1966, %1830
  %1970 = fadd fast float %1965, %1967
  %1971 = fmul fast float %1970, %1906
  %1972 = fadd fast float %1965, %1968
  %1973 = fmul fast float %1972, %1907
  %1974 = fadd fast float %1965, %1969
  %1975 = fmul fast float %1974, %1908
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1844, float %1845, float %1846, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1978 = fmul fast float %1977, 5.000000e-01
  %1979 = fadd fast float %1978, 5.000000e-01
  %1980 = fmul fast float %1979, %1910
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1844, float %1845, float %1846, float %1954, float %1955, float %1956)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = fmul fast float %1982, %1936
  %1984 = fadd fast float %1980, %1983
  %1985 = fsub fast float 5.000000e-01, %1978
  %1986 = fmul fast float %1985, %1828
  %1987 = fmul fast float %1985, %1829
  %1988 = fmul fast float %1985, %1830
  %1989 = fadd fast float %1984, %1986
  %1990 = fmul fast float %1989, %1906
  %1991 = fadd fast float %1984, %1987
  %1992 = fmul fast float %1991, %1907
  %1993 = fadd fast float %1984, %1988
  %1994 = fmul fast float %1993, %1908
  br label %1995

; <label>:1995                                    ; preds = %1897, %1894
  %1996 = phi float [ %1990, %1897 ], [ 0.000000e+00, %1894 ]
  %1997 = phi float [ %1992, %1897 ], [ 0.000000e+00, %1894 ]
  %1998 = phi float [ %1994, %1897 ], [ 0.000000e+00, %1894 ]
  %1999 = phi float [ %1971, %1897 ], [ 0.000000e+00, %1894 ]
  %2000 = phi float [ %1973, %1897 ], [ 0.000000e+00, %1894 ]
  %2001 = phi float [ %1975, %1897 ], [ 0.000000e+00, %1894 ]
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 0
  %2004 = fcmp fast ogt float %2003, 0.000000e+00
  %2005 = and i1 %1896, %2004
  br i1 %2005, label %2006, label %2210, !dx.controlflow.hints !74

; <label>:2006                                    ; preds = %1995
  %2007 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  %2008 = fadd fast float %2007, %107
  %2009 = fmul fast float %1831, 3.200000e+01
  %2010 = fmul fast float %1832, 3.200000e+01
  %2011 = fadd fast float %1854, %2009
  %2012 = fadd fast float %1855, %2010
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.CBufRet.f32 %2013, 1
  %2016 = fsub fast float %2011, %2014
  %2017 = fsub fast float %2012, %2015
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.CBufRet.f32 %2018, 1
  %2021 = fmul fast float %2016, %2019
  %2022 = fmul fast float %2017, %2020
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = fsub fast float %1854, %2024
  %2027 = fsub fast float %1855, %2025
  %2028 = fmul fast float %2026, %2026
  %2029 = fmul fast float %2027, %2027
  %2030 = fadd fast float %2028, %2029
  %2031 = call float @dx.op.unary.f32(i32 24, float %2030)  ; Sqrt(value)
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2035 = fsub fast float %2031, %2033
  %2036 = fdiv fast float %2035, %2034
  %2037 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2038 = fmul fast float %2037, 2.000000e+00
  %2039 = fsub fast float 3.000000e+00, %2038
  %2040 = fmul fast float %2037, %2037
  %2041 = fmul fast float %2040, %2039
  %2042 = fcmp fast oge float %2021, 0.000000e+00
  %2043 = fcmp fast ole float %2021, 1.000000e+00
  %2044 = and i1 %2043, %2042
  %2045 = fcmp fast oge float %2022, 0.000000e+00
  %2046 = and i1 %2045, %2044
  %2047 = fcmp fast ole float %2022, 1.000000e+00
  %2048 = and i1 %2047, %2046
  %2049 = fcmp fast ogt float %2041, 0.000000e+00
  %2050 = and i1 %2049, %2048
  br i1 %2050, label %2051, label %2174, !dx.controlflow.hints !75

; <label>:2051                                    ; preds = %2006
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 2
  %2054 = extractvalue %dx.types.CBufRet.f32 %2052, 3
  %2055 = fmul fast float %2053, %2021
  %2056 = fmul fast float %2054, %2022
  %2057 = call float @dx.op.unary.f32(i32 27, float %2055)  ; Round_ni(value)
  %2058 = call float @dx.op.unary.f32(i32 27, float %2056)  ; Round_ni(value)
  %2059 = fptosi float %2057 to i32
  %2060 = fptosi float %2058 to i32
  %2061 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2059, i32 %2060, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = lshr i32 %2062, 16
  %2064 = icmp eq i32 %2063, 65535
  br i1 %2064, label %2174, label %2065

; <label>:2065                                    ; preds = %2051
  %2066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.f32 %2066, 0
  %2068 = fmul fast float %2067, %2021
  %2069 = extractvalue %dx.types.CBufRet.f32 %2066, 1
  %2070 = fadd fast float %2068, %2069
  %2071 = extractvalue %dx.types.CBufRet.f32 %2066, 2
  %2072 = fmul fast float %2071, %2022
  %2073 = extractvalue %dx.types.CBufRet.f32 %2066, 3
  %2074 = fadd fast float %2072, %2073
  %2075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2070, float %2074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2080 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2081 = fsub fast float %2079, %2080
  %2082 = fmul fast float %2081, %2076
  %2083 = fadd fast float %2082, %2080
  %2084 = extractvalue %dx.types.CBufRet.f32 %2078, 3
  %2085 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2086 = fsub fast float %2084, %2085
  %2087 = fmul fast float %2086, %2077
  %2088 = fadd fast float %2087, %2085
  %2089 = fsub fast float %2008, %2083
  %2090 = fsub fast float %2088, %2083
  %2091 = fdiv fast float %2089, %2090
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2002, 1
  %2094 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2095 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2096 = fmul fast float %2094, %2021
  %2097 = fmul fast float %2095, %2022
  %2098 = fmul fast float %2096, 1.250000e-01
  %2099 = fmul fast float %2097, 1.250000e-01
  %2100 = call float @dx.op.unary.f32(i32 27, float %2098)  ; Round_ni(value)
  %2101 = call float @dx.op.unary.f32(i32 27, float %2099)  ; Round_ni(value)
  %2102 = fmul fast float %2100, 8.000000e+00
  %2103 = fmul fast float %2101, 8.000000e+00
  %2104 = fsub fast float %2096, %2102
  %2105 = fsub fast float %2097, %2103
  %2106 = fadd fast float %2104, 5.000000e-01
  %2107 = fadd fast float %2105, 5.000000e-01
  %2108 = and i32 %2063, 255
  %2109 = lshr i32 %2062, 24
  %2110 = mul nuw nsw i32 %2108, 9
  %2111 = uitofp i32 %2110 to float
  %2112 = mul nuw nsw i32 %2109, 9
  %2113 = uitofp i32 %2112 to float
  %2114 = fadd fast float %2106, %2111
  %2115 = fadd fast float %2107, %2113
  %2116 = fdiv fast float %2114, %2003
  %2117 = fdiv fast float %2115, %2093
  %2118 = fmul fast float %2092, 4.375000e-01
  %2119 = fadd fast float %2118, 3.125000e-02
  %2120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2116, float %2117, float %2119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = extractvalue %dx.types.ResRet.f32 %2120, 1
  %2123 = extractvalue %dx.types.ResRet.f32 %2120, 2
  %2124 = fadd fast float %2118, 5.312500e-01
  %2125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2116, float %2117, float %2124, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2126 = extractvalue %dx.types.ResRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.ResRet.f32 %2125, 1
  %2128 = extractvalue %dx.types.ResRet.f32 %2125, 2
  %2129 = fmul fast float %2126, 2.000000e+00
  %2130 = fmul fast float %2127, 2.000000e+00
  %2131 = fmul fast float %2128, 2.000000e+00
  %2132 = fadd fast float %2129, -1.000000e+00
  %2133 = fadd fast float %2130, -1.000000e+00
  %2134 = fadd fast float %2131, -1.000000e+00
  %2135 = fmul fast float %2132, %2132
  %2136 = fmul fast float %2133, %2133
  %2137 = fadd fast float %2135, %2136
  %2138 = fmul fast float %2134, %2134
  %2139 = fadd fast float %2137, %2138
  %2140 = call float @dx.op.unary.f32(i32 24, float %2139)  ; Sqrt(value)
  %2141 = fcmp fast ogt float %2140, 0.000000e+00
  br i1 %2141, label %2142, label %2146

; <label>:2142                                    ; preds = %2065
  %2143 = fdiv fast float %2132, %2140
  %2144 = fdiv fast float %2133, %2140
  %2145 = fdiv fast float %2134, %2140
  br label %2146

; <label>:2146                                    ; preds = %2142, %2065
  %2147 = phi float [ %2143, %2142 ], [ 0.000000e+00, %2065 ]
  %2148 = phi float [ %2144, %2142 ], [ 0.000000e+00, %2065 ]
  %2149 = phi float [ %2145, %2142 ], [ 0.000000e+00, %2065 ]
  %2150 = call float @dx.op.dot3.f32(i32 55, float %2147, float %2148, float %2149, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2150)  ; FMax(a,b)
  %2152 = fmul fast float %2151, 0x400C5BF8A0000000
  %2153 = fmul fast float %2121, %2041
  %2154 = fmul fast float %2153, %2152
  %2155 = fmul fast float %2122, %2041
  %2156 = fmul fast float %2155, %2152
  %2157 = fmul fast float %2123, %2041
  %2158 = fmul fast float %2157, %2152
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2161 = fmul fast float %2154, %2160
  %2162 = fmul fast float %2156, %2160
  %2163 = fmul fast float %2158, %2160
  %2164 = fcmp fast ogt float %2008, %2088
  br i1 %2164, label %2165, label %2174

; <label>:2165                                    ; preds = %2146
  %2166 = fmul fast float %2090, 0x3FC24924A0000000
  %2167 = fsub fast float %2008, %2088
  %2168 = fdiv fast float %2167, %2166
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2170, %2161
  %2172 = fmul fast float %2170, %2162
  %2173 = fmul fast float %2170, %2163
  br label %2174

; <label>:2174                                    ; preds = %2165, %2146, %2051, %2006
  %2175 = phi float [ %2173, %2165 ], [ %2163, %2146 ], [ 0.000000e+00, %2051 ], [ 0.000000e+00, %2006 ]
  %2176 = phi float [ %2172, %2165 ], [ %2162, %2146 ], [ 0.000000e+00, %2051 ], [ 0.000000e+00, %2006 ]
  %2177 = phi float [ %2171, %2165 ], [ %2161, %2146 ], [ 0.000000e+00, %2051 ], [ 0.000000e+00, %2006 ]
  %2178 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2177)  ; FMax(a,b)
  %2179 = fmul fast float %2178, 0x3FD20DD760000000
  %2180 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1844, float %1845, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = fmul fast float %2180, 0x3FDF454380000000
  %2182 = fmul fast float %2180, %2180
  %2183 = fmul fast float %2182, 0x3FEE471020000000
  %2184 = fadd fast float %2183, 0xBFD42F6020000000
  %2185 = call float @dx.op.dot3.f32(i32 55, float %2178, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2181, float %2184)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2176)  ; FMax(a,b)
  %2187 = fmul fast float %2186, 0x3FD20DD760000000
  %2188 = call float @dx.op.dot3.f32(i32 55, float %2186, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2181, float %2184)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2175)  ; FMax(a,b)
  %2190 = fmul fast float %2189, 0x3FD20DD760000000
  %2191 = call float @dx.op.dot3.f32(i32 55, float %2189, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2181, float %2184)  ; Dot3(ax,ay,az,bx,by,bz)
  %2192 = call float @dx.op.binary.f32(i32 35, float %2179, float 0.000000e+00)  ; FMax(a,b)
  %2193 = call float @dx.op.binary.f32(i32 35, float %2187, float 0.000000e+00)  ; FMax(a,b)
  %2194 = call float @dx.op.binary.f32(i32 35, float %2190, float 0.000000e+00)  ; FMax(a,b)
  %2195 = call float @dx.op.binary.f32(i32 35, float %2185, float 0.000000e+00)  ; FMax(a,b)
  %2196 = call float @dx.op.binary.f32(i32 35, float %2188, float 0.000000e+00)  ; FMax(a,b)
  %2197 = call float @dx.op.binary.f32(i32 35, float %2191, float 0.000000e+00)  ; FMax(a,b)
  %2198 = fmul fast float %2192, %1895
  %2199 = fmul fast float %2193, %1895
  %2200 = fmul fast float %2194, %1895
  %2201 = fadd fast float %2198, %1999
  %2202 = fadd fast float %2199, %2000
  %2203 = fadd fast float %2200, %2001
  %2204 = fmul fast float %2195, %1895
  %2205 = fmul fast float %2196, %1895
  %2206 = fmul fast float %2197, %1895
  %2207 = fadd fast float %2204, %1996
  %2208 = fadd fast float %2205, %1997
  %2209 = fadd fast float %2206, %1998
  br label %2210

; <label>:2210                                    ; preds = %2174, %1995
  %2211 = phi float [ %2207, %2174 ], [ %1996, %1995 ]
  %2212 = phi float [ %2208, %2174 ], [ %1997, %1995 ]
  %2213 = phi float [ %2209, %2174 ], [ %1998, %1995 ]
  %2214 = phi float [ %2201, %2174 ], [ %1999, %1995 ]
  %2215 = phi float [ %2202, %2174 ], [ %2000, %1995 ]
  %2216 = phi float [ %2203, %2174 ], [ %2001, %1995 ]
  %2217 = fcmp fast olt float %1895, 1.000000e+00
  br i1 %2217, label %2218, label %3036, !dx.controlflow.hints !76

; <label>:2218                                    ; preds = %2210
  %2219 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  %2220 = fadd fast float %2219, %107
  %2221 = fmul fast float %1831, 3.200000e+01
  %2222 = fmul fast float %1832, 3.200000e+01
  %2223 = fadd fast float %1854, %2221
  %2224 = fadd fast float %1855, %2222
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.CBufRet.f32 %2225, 1
  %2228 = fsub fast float %2223, %2226
  %2229 = fsub fast float %2224, %2227
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2233 = fmul fast float %2228, %2231
  %2234 = fmul fast float %2229, %2232
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = fmul fast float %2233, %2236
  %2238 = extractvalue %dx.types.CBufRet.f32 %2235, 1
  %2239 = fadd fast float %2237, %2238
  %2240 = extractvalue %dx.types.CBufRet.f32 %2235, 2
  %2241 = fmul fast float %2240, %2234
  %2242 = extractvalue %dx.types.CBufRet.f32 %2235, 3
  %2243 = fadd fast float %2241, %2242
  %2244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2239, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.ResRet.f32 %2244, 1
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2250 = fsub fast float %2248, %2249
  %2251 = fmul fast float %2250, %2245
  %2252 = fadd fast float %2251, %2249
  %2253 = extractvalue %dx.types.CBufRet.f32 %2247, 3
  %2254 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2255 = fsub fast float %2253, %2254
  %2256 = fmul fast float %2255, %2246
  %2257 = fadd fast float %2256, %2254
  %2258 = fsub fast float %2220, %2252
  %2259 = fsub fast float %2257, %2252
  %2260 = fdiv fast float %2258, %2259
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = fmul fast float %2263, %2261
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2266 = fadd fast float %2264, %2265
  %2267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2239, float %2243, float %2266, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.ResRet.f32 %2267, 1
  %2270 = extractvalue %dx.types.ResRet.f32 %2267, 2
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2274 = extractvalue %dx.types.CBufRet.f32 %2271, 2
  %2275 = fmul fast float %2272, %2268
  %2276 = fmul fast float %2273, %2269
  %2277 = fmul fast float %2274, %2270
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.CBufRet.f32 %2278, 2
  %2282 = fadd fast float %2275, %2279
  %2283 = fadd fast float %2276, %2280
  %2284 = fadd fast float %2277, %2281
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2287 = fmul fast float %2286, %2233
  %2288 = extractvalue %dx.types.CBufRet.f32 %2285, 1
  %2289 = fadd fast float %2287, %2288
  %2290 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2291 = fmul fast float %2290, %2234
  %2292 = extractvalue %dx.types.CBufRet.f32 %2285, 3
  %2293 = fadd fast float %2291, %2292
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.CBufRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.CBufRet.f32 %2294, 2
  %2298 = extractvalue %dx.types.CBufRet.f32 %2294, 3
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2303 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2289, float %2293, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.ResRet.f32 %2304, 3
  %2309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2289, float %2293, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.ResRet.f32 %2309, 3
  %2314 = fmul fast float %2305, %2282
  %2315 = fmul fast float %2310, %2282
  %2316 = fmul fast float %2312, %2282
  %2317 = fmul fast float %2308, %2282
  %2318 = fadd fast float %2314, %2295
  %2319 = fadd fast float %2315, %2296
  %2320 = fadd fast float %2316, %2297
  %2321 = fadd fast float %2317, %2298
  %2322 = fmul fast float %2306, %2282
  %2323 = fmul fast float %2311, %2282
  %2324 = fadd fast float %2322, %2300
  %2325 = fadd fast float %2323, %2301
  %2326 = fmul fast float %2307, %2282
  %2327 = fmul fast float %2313, %2282
  %2328 = fadd fast float %2326, %2302
  %2329 = fadd fast float %2327, %2303
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2289, float %2293, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.f32 %2330, 1
  %2333 = extractvalue %dx.types.ResRet.f32 %2330, 2
  %2334 = extractvalue %dx.types.ResRet.f32 %2330, 3
  %2335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2289, float %2293, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.ResRet.f32 %2335, 3
  %2340 = fmul fast float %2331, %2283
  %2341 = fmul fast float %2336, %2283
  %2342 = fmul fast float %2338, %2283
  %2343 = fmul fast float %2334, %2283
  %2344 = fadd fast float %2318, %2340
  %2345 = fadd fast float %2319, %2341
  %2346 = fadd fast float %2320, %2342
  %2347 = fadd fast float %2321, %2343
  %2348 = fmul fast float %2332, %2283
  %2349 = fmul fast float %2337, %2283
  %2350 = fadd fast float %2324, %2348
  %2351 = fadd fast float %2325, %2349
  %2352 = fmul fast float %2333, %2283
  %2353 = fmul fast float %2339, %2283
  %2354 = fadd fast float %2328, %2352
  %2355 = fadd fast float %2329, %2353
  %2356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2289, float %2293, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.ResRet.f32 %2356, 3
  %2361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2289, float %2293, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.ResRet.f32 %2361, 2
  %2365 = extractvalue %dx.types.ResRet.f32 %2361, 3
  %2366 = fmul fast float %2357, %2284
  %2367 = fmul fast float %2362, %2284
  %2368 = fmul fast float %2364, %2284
  %2369 = fmul fast float %2360, %2284
  %2370 = fadd fast float %2344, %2366
  %2371 = fadd fast float %2345, %2367
  %2372 = fadd fast float %2346, %2368
  %2373 = fadd fast float %2347, %2369
  %2374 = fmul fast float %2358, %2284
  %2375 = fmul fast float %2363, %2284
  %2376 = fadd fast float %2350, %2374
  %2377 = fadd fast float %2351, %2375
  %2378 = fmul fast float %2359, %2284
  %2379 = fmul fast float %2365, %2284
  %2380 = fadd fast float %2354, %2378
  %2381 = fadd fast float %2355, %2379
  %2382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2382, 0
  %2384 = fsub fast float %1854, %2383
  %2385 = fsub fast float %2226, %1854
  %2386 = call float @dx.op.binary.f32(i32 35, float %2385, float %2384)  ; FMax(a,b)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2382, 1
  %2388 = fsub fast float %1855, %2387
  %2389 = fsub fast float %2227, %1855
  %2390 = call float @dx.op.binary.f32(i32 35, float %2389, float %2388)  ; FMax(a,b)
  %2391 = call float @dx.op.binary.f32(i32 35, float %2386, float %2390)  ; FMax(a,b)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2230, 3
  %2393 = fmul fast float %2392, %2391
  %2394 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.CBufRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %2399 = extractvalue %dx.types.CBufRet.f32 %2395, 3
  %2400 = fsub fast float %2396, %2370
  %2401 = fsub fast float %2397, %2371
  %2402 = fsub fast float %2398, %2372
  %2403 = fsub fast float %2399, %2373
  %2404 = fmul fast float %2400, %2394
  %2405 = fmul fast float %2401, %2394
  %2406 = fmul fast float %2402, %2394
  %2407 = fmul fast float %2403, %2394
  %2408 = fadd fast float %2404, %2370
  %2409 = fadd fast float %2405, %2371
  %2410 = fadd fast float %2406, %2372
  %2411 = fadd fast float %2407, %2373
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.CBufRet.f32 %2412, 1
  %2415 = fsub fast float %2413, %2376
  %2416 = fsub fast float %2414, %2377
  %2417 = fmul fast float %2415, %2394
  %2418 = fmul fast float %2416, %2394
  %2419 = fadd fast float %2417, %2376
  %2420 = fadd fast float %2418, %2377
  %2421 = extractvalue %dx.types.CBufRet.f32 %2412, 2
  %2422 = extractvalue %dx.types.CBufRet.f32 %2412, 3
  %2423 = fsub fast float %2421, %2380
  %2424 = fsub fast float %2422, %2381
  %2425 = fmul fast float %2423, %2394
  %2426 = fmul fast float %2424, %2394
  %2427 = fadd fast float %2425, %2380
  %2428 = fadd fast float %2426, %2381
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = fmul fast float %2430, %2408
  %2432 = fmul fast float %2430, %2409
  %2433 = fmul fast float %2430, %2410
  %2434 = fmul fast float %2430, %2411
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2437 = fmul fast float %2436, %2419
  %2438 = fmul fast float %2436, %2420
  %2439 = fadd fast float %2437, %2431
  %2440 = fadd fast float %2438, %2433
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = fmul fast float %2442, %2427
  %2444 = fmul fast float %2442, %2428
  %2445 = fadd fast float %2439, %2443
  %2446 = fadd fast float %2440, %2444
  %2447 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2448 = fmul fast float %2447, %2408
  %2449 = fmul fast float %2447, %2409
  %2450 = fmul fast float %2447, %2410
  %2451 = fmul fast float %2447, %2411
  %2452 = extractvalue %dx.types.CBufRet.f32 %2435, 1
  %2453 = fmul fast float %2452, %2419
  %2454 = fmul fast float %2452, %2420
  %2455 = fadd fast float %2453, %2448
  %2456 = fadd fast float %2454, %2450
  %2457 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2458 = fmul fast float %2457, %2427
  %2459 = fmul fast float %2457, %2428
  %2460 = fadd fast float %2455, %2458
  %2461 = fadd fast float %2456, %2459
  %2462 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2463 = fmul fast float %2462, %2408
  %2464 = fmul fast float %2462, %2409
  %2465 = fmul fast float %2462, %2410
  %2466 = fmul fast float %2462, %2411
  %2467 = extractvalue %dx.types.CBufRet.f32 %2435, 2
  %2468 = fmul fast float %2467, %2419
  %2469 = fmul fast float %2467, %2420
  %2470 = fadd fast float %2468, %2463
  %2471 = fadd fast float %2469, %2465
  %2472 = extractvalue %dx.types.CBufRet.f32 %2441, 2
  %2473 = fmul fast float %2472, %2427
  %2474 = fmul fast float %2472, %2428
  %2475 = fadd fast float %2470, %2473
  %2476 = fadd fast float %2471, %2474
  %2477 = fmul fast float %2464, %2464
  %2478 = fmul fast float %2476, %2476
  %2479 = fmul fast float %2466, %2466
  %2480 = fadd fast float %2479, %2477
  %2481 = fadd fast float %2480, %2478
  %2482 = call float @dx.op.unary.f32(i32 24, float %2481)  ; Sqrt(value)
  %2483 = fcmp fast ugt float %2482, 0.000000e+00
  br i1 %2483, label %2484, label %2499

; <label>:2484                                    ; preds = %2218
  %2485 = fsub fast float -0.000000e+00, %2466
  %2486 = fdiv fast float %2485, %2482
  %2487 = fsub fast float -0.000000e+00, %2464
  %2488 = fdiv fast float %2487, %2482
  %2489 = fdiv fast float %2476, %2482
  %2490 = fmul fast float %2475, 0x3FE279A760000000
  %2491 = fmul fast float %2488, %2464
  %2492 = fmul fast float %2489, %2476
  %2493 = fmul fast float %2486, %2466
  %2494 = fadd fast float %2491, %2493
  %2495 = fsub fast float %2494, %2492
  %2496 = call float @dx.op.unary.f32(i32 6, float %2495)  ; FAbs(value)
  %2497 = fadd fast float %2496, 0x3DDB7CDFE0000000
  %2498 = fdiv fast float %2490, %2497
  br label %2499

; <label>:2499                                    ; preds = %2484, %2218
  %2500 = phi float [ %2498, %2484 ], [ 1.000000e+00, %2218 ]
  %2501 = fmul fast float %2449, %2449
  %2502 = fmul fast float %2461, %2461
  %2503 = fmul fast float %2451, %2451
  %2504 = fadd fast float %2503, %2501
  %2505 = fadd fast float %2504, %2502
  %2506 = call float @dx.op.unary.f32(i32 24, float %2505)  ; Sqrt(value)
  %2507 = fcmp fast ugt float %2506, 0.000000e+00
  br i1 %2507, label %2508, label %2523

; <label>:2508                                    ; preds = %2499
  %2509 = fsub fast float -0.000000e+00, %2451
  %2510 = fdiv fast float %2509, %2506
  %2511 = fsub fast float -0.000000e+00, %2449
  %2512 = fdiv fast float %2511, %2506
  %2513 = fdiv fast float %2461, %2506
  %2514 = fmul fast float %2460, 0x3FE279A760000000
  %2515 = fmul fast float %2512, %2449
  %2516 = fmul fast float %2513, %2461
  %2517 = fmul fast float %2510, %2451
  %2518 = fadd fast float %2515, %2517
  %2519 = fsub fast float %2518, %2516
  %2520 = call float @dx.op.unary.f32(i32 6, float %2519)  ; FAbs(value)
  %2521 = fadd fast float %2520, 0x3DDB7CDFE0000000
  %2522 = fdiv fast float %2514, %2521
  br label %2523

; <label>:2523                                    ; preds = %2508, %2499
  %2524 = phi float [ %2522, %2508 ], [ 1.000000e+00, %2499 ]
  %2525 = call float @dx.op.binary.f32(i32 36, float %2524, float %2500)  ; FMin(a,b)
  %2526 = fmul fast float %2432, %2432
  %2527 = fmul fast float %2446, %2446
  %2528 = fmul fast float %2434, %2434
  %2529 = fadd fast float %2528, %2526
  %2530 = fadd fast float %2529, %2527
  %2531 = call float @dx.op.unary.f32(i32 24, float %2530)  ; Sqrt(value)
  %2532 = fcmp fast ugt float %2531, 0.000000e+00
  br i1 %2532, label %2533, label %2548

; <label>:2533                                    ; preds = %2523
  %2534 = fsub fast float -0.000000e+00, %2434
  %2535 = fdiv fast float %2534, %2531
  %2536 = fsub fast float -0.000000e+00, %2432
  %2537 = fdiv fast float %2536, %2531
  %2538 = fdiv fast float %2446, %2531
  %2539 = fmul fast float %2445, 0x3FE279A760000000
  %2540 = fmul fast float %2537, %2432
  %2541 = fmul fast float %2538, %2446
  %2542 = fmul fast float %2535, %2434
  %2543 = fadd fast float %2540, %2542
  %2544 = fsub fast float %2543, %2541
  %2545 = call float @dx.op.unary.f32(i32 6, float %2544)  ; FAbs(value)
  %2546 = fadd fast float %2545, 0x3DDB7CDFE0000000
  %2547 = fdiv fast float %2539, %2546
  br label %2548

; <label>:2548                                    ; preds = %2533, %2523
  %2549 = phi float [ %2547, %2533 ], [ 1.000000e+00, %2523 ]
  %2550 = call float @dx.op.binary.f32(i32 36, float %2549, float %2525)  ; FMin(a,b)
  %2551 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2552 = fcmp fast olt float %2551, 1.000000e+00
  br i1 %2552, label %2553, label %2563

; <label>:2553                                    ; preds = %2548
  %2554 = fmul fast float %2551, %2432
  %2555 = fmul fast float %2551, %2446
  %2556 = fmul fast float %2551, %2434
  %2557 = fmul fast float %2551, %2449
  %2558 = fmul fast float %2551, %2461
  %2559 = fmul fast float %2551, %2451
  %2560 = fmul fast float %2551, %2464
  %2561 = fmul fast float %2551, %2476
  %2562 = fmul fast float %2551, %2466
  br label %2563

; <label>:2563                                    ; preds = %2553, %2548
  %2564 = phi float [ %2560, %2553 ], [ %2464, %2548 ]
  %2565 = phi float [ %2561, %2553 ], [ %2476, %2548 ]
  %2566 = phi float [ %2562, %2553 ], [ %2466, %2548 ]
  %2567 = phi float [ %2557, %2553 ], [ %2449, %2548 ]
  %2568 = phi float [ %2558, %2553 ], [ %2461, %2548 ]
  %2569 = phi float [ %2559, %2553 ], [ %2451, %2548 ]
  %2570 = phi float [ %2554, %2553 ], [ %2432, %2548 ]
  %2571 = phi float [ %2555, %2553 ], [ %2446, %2548 ]
  %2572 = phi float [ %2556, %2553 ], [ %2434, %2548 ]
  %2573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2445)  ; FMax(a,b)
  %2574 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2460)  ; FMax(a,b)
  %2575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2475)  ; FMax(a,b)
  %2576 = fcmp fast oge float %2233, 0.000000e+00
  %2577 = and i1 %2576, %2004
  %2578 = fcmp fast ole float %2233, 1.000000e+00
  %2579 = and i1 %2578, %2577
  %2580 = fcmp fast oge float %2234, 0.000000e+00
  %2581 = and i1 %2580, %2579
  %2582 = fcmp fast ole float %2234, 1.000000e+00
  %2583 = and i1 %2582, %2581
  br i1 %2583, label %2584, label %2729, !dx.controlflow.hints !77

; <label>:2584                                    ; preds = %2563
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 3
  %2588 = fmul fast float %2586, %2233
  %2589 = fmul fast float %2587, %2234
  %2590 = call float @dx.op.unary.f32(i32 27, float %2588)  ; Round_ni(value)
  %2591 = call float @dx.op.unary.f32(i32 27, float %2589)  ; Round_ni(value)
  %2592 = fptosi float %2590 to i32
  %2593 = fptosi float %2591 to i32
  %2594 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2592, i32 %2593, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 65535
  %2597 = lshr i32 %2595, 16
  %2598 = icmp eq i32 %2596, 65535
  br i1 %2598, label %2635, label %2599

; <label>:2599                                    ; preds = %2584
  %2600 = extractvalue %dx.types.CBufRet.f32 %2002, 1
  %2601 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2602 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2603 = fmul fast float %2601, %2233
  %2604 = fmul fast float %2602, %2234
  %2605 = fmul fast float %2603, 1.250000e-01
  %2606 = fmul fast float %2604, 1.250000e-01
  %2607 = call float @dx.op.unary.f32(i32 27, float %2605)  ; Round_ni(value)
  %2608 = call float @dx.op.unary.f32(i32 27, float %2606)  ; Round_ni(value)
  %2609 = fmul fast float %2607, 8.000000e+00
  %2610 = fmul fast float %2608, 8.000000e+00
  %2611 = and i32 %2595, 255
  %2612 = lshr i32 %2595, 8
  %2613 = and i32 %2612, 255
  %2614 = mul nuw nsw i32 %2611, 9
  %2615 = uitofp i32 %2614 to float
  %2616 = mul nuw nsw i32 %2613, 9
  %2617 = uitofp i32 %2616 to float
  %2618 = fadd fast float %2615, 5.000000e-01
  %2619 = fadd fast float %2618, %2603
  %2620 = fsub fast float %2619, %2609
  %2621 = fadd fast float %2617, 5.000000e-01
  %2622 = fadd fast float %2621, %2604
  %2623 = fsub fast float %2622, %2610
  %2624 = fdiv fast float %2620, %2003
  %2625 = fdiv fast float %2623, %2600
  %2626 = fmul fast float %2261, 4.375000e-01
  %2627 = fadd fast float %2626, 3.125000e-02
  %2628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2624, float %2625, float %2627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2629 = extractvalue %dx.types.ResRet.f32 %2628, 0
  %2630 = extractvalue %dx.types.ResRet.f32 %2628, 1
  %2631 = extractvalue %dx.types.ResRet.f32 %2628, 2
  %2632 = fadd fast float %2629, %2573
  %2633 = fadd fast float %2630, %2574
  %2634 = fadd fast float %2631, %2575
  br label %2635

; <label>:2635                                    ; preds = %2599, %2584
  %2636 = phi float [ %2634, %2599 ], [ %2575, %2584 ]
  %2637 = phi float [ %2633, %2599 ], [ %2574, %2584 ]
  %2638 = phi float [ %2632, %2599 ], [ %2573, %2584 ]
  %2639 = icmp eq i32 %2597, 65535
  br i1 %2639, label %2729, label %2640

; <label>:2640                                    ; preds = %2635
  %2641 = extractvalue %dx.types.CBufRet.f32 %2002, 1
  %2642 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2643 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2644 = fmul fast float %2642, %2233
  %2645 = fmul fast float %2643, %2234
  %2646 = fmul fast float %2644, 1.250000e-01
  %2647 = fmul fast float %2645, 1.250000e-01
  %2648 = call float @dx.op.unary.f32(i32 27, float %2646)  ; Round_ni(value)
  %2649 = call float @dx.op.unary.f32(i32 27, float %2647)  ; Round_ni(value)
  %2650 = fmul fast float %2648, 8.000000e+00
  %2651 = fmul fast float %2649, 8.000000e+00
  %2652 = fsub fast float %2644, %2650
  %2653 = fsub fast float %2645, %2651
  %2654 = fadd fast float %2652, 5.000000e-01
  %2655 = fadd fast float %2653, 5.000000e-01
  %2656 = and i32 %2597, 255
  %2657 = lshr i32 %2595, 24
  %2658 = mul nuw nsw i32 %2656, 9
  %2659 = uitofp i32 %2658 to float
  %2660 = mul nuw nsw i32 %2657, 9
  %2661 = uitofp i32 %2660 to float
  %2662 = fadd fast float %2654, %2659
  %2663 = fadd fast float %2655, %2661
  %2664 = fdiv fast float %2662, %2003
  %2665 = fdiv fast float %2663, %2641
  %2666 = fmul fast float %2261, 4.375000e-01
  %2667 = fadd fast float %2666, 3.125000e-02
  %2668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2664, float %2665, float %2667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.ResRet.f32 %2668, 2
  %2672 = fadd fast float %2666, 5.312500e-01
  %2673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2664, float %2665, float %2672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2674 = extractvalue %dx.types.ResRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.ResRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.ResRet.f32 %2673, 2
  %2677 = fmul fast float %2674, 2.000000e+00
  %2678 = fmul fast float %2675, 2.000000e+00
  %2679 = fmul fast float %2676, 2.000000e+00
  %2680 = fadd fast float %2677, -1.000000e+00
  %2681 = fadd fast float %2678, -1.000000e+00
  %2682 = fadd fast float %2679, -1.000000e+00
  %2683 = fmul fast float %2680, %2680
  %2684 = fmul fast float %2681, %2681
  %2685 = fadd fast float %2683, %2684
  %2686 = fmul fast float %2682, %2682
  %2687 = fadd fast float %2685, %2686
  %2688 = call float @dx.op.unary.f32(i32 24, float %2687)  ; Sqrt(value)
  %2689 = fcmp fast ogt float %2688, 0.000000e+00
  br i1 %2689, label %2690, label %2694

; <label>:2690                                    ; preds = %2640
  %2691 = fdiv fast float %2680, %2688
  %2692 = fdiv fast float %2681, %2688
  %2693 = fdiv fast float %2682, %2688
  br label %2694

; <label>:2694                                    ; preds = %2690, %2640
  %2695 = phi float [ %2691, %2690 ], [ 0.000000e+00, %2640 ]
  %2696 = phi float [ %2692, %2690 ], [ 0.000000e+00, %2640 ]
  %2697 = phi float [ %2693, %2690 ], [ 0.000000e+00, %2640 ]
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2701 = fsub fast float %1854, %2699
  %2702 = fsub fast float %1855, %2700
  %2703 = fmul fast float %2701, %2701
  %2704 = fmul fast float %2702, %2702
  %2705 = fadd fast float %2703, %2704
  %2706 = call float @dx.op.unary.f32(i32 24, float %2705)  ; Sqrt(value)
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2710 = fsub fast float %2706, %2708
  %2711 = fdiv fast float %2710, %2709
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = fmul fast float %2712, 2.000000e+00
  %2714 = fsub fast float 3.000000e+00, %2713
  %2715 = fmul fast float %2712, %2712
  %2716 = fmul fast float %2715, %2714
  %2717 = call float @dx.op.dot3.f32(i32 55, float %2695, float %2696, float %2697, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2717)  ; FMax(a,b)
  %2719 = fmul fast float %2718, 0x400C5BF8A0000000
  %2720 = fmul fast float %2716, %2669
  %2721 = fmul fast float %2720, %2719
  %2722 = fadd fast float %2721, %2638
  %2723 = fmul fast float %2716, %2670
  %2724 = fmul fast float %2723, %2719
  %2725 = fadd fast float %2724, %2637
  %2726 = fmul fast float %2716, %2671
  %2727 = fmul fast float %2726, %2719
  %2728 = fadd fast float %2727, %2636
  br label %2729

; <label>:2729                                    ; preds = %2694, %2635, %2563
  %2730 = phi float [ %2728, %2694 ], [ %2636, %2635 ], [ %2575, %2563 ]
  %2731 = phi float [ %2725, %2694 ], [ %2637, %2635 ], [ %2574, %2563 ]
  %2732 = phi float [ %2722, %2694 ], [ %2638, %2635 ], [ %2573, %2563 ]
  %2733 = fcmp fast ogt float %2220, %2257
  %2734 = and i1 %2576, %2733
  %2735 = and i1 %2578, %2734
  %2736 = and i1 %2580, %2735
  %2737 = and i1 %2582, %2736
  br i1 %2737, label %2738, label %2795, !dx.controlflow.hints !78

; <label>:2738                                    ; preds = %2729
  %2739 = fmul fast float %2259, 0x3FC24924A0000000
  %2740 = fsub fast float %2220, %2257
  %2741 = fdiv fast float %2740, %2739
  %2742 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 0
  %2747 = extractvalue %dx.types.CBufRet.f32 %2745, 1
  %2748 = extractvalue %dx.types.CBufRet.f32 %2745, 2
  %2749 = fsub fast float %2744, %2732
  %2750 = fsub fast float %2746, %2570
  %2751 = fsub fast float %2747, %2571
  %2752 = fsub fast float %2748, %2572
  %2753 = fmul fast float %2749, %2742
  %2754 = fmul fast float %2750, %2742
  %2755 = fmul fast float %2751, %2742
  %2756 = fmul fast float %2752, %2742
  %2757 = fadd fast float %2753, %2732
  %2758 = fadd fast float %2754, %2570
  %2759 = fadd fast float %2755, %2571
  %2760 = fadd fast float %2756, %2572
  %2761 = extractvalue %dx.types.CBufRet.f32 %2743, 1
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.CBufRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.CBufRet.f32 %2762, 2
  %2766 = fsub fast float %2761, %2731
  %2767 = fsub fast float %2763, %2567
  %2768 = fsub fast float %2764, %2568
  %2769 = fsub fast float %2765, %2569
  %2770 = fmul fast float %2766, %2742
  %2771 = fmul fast float %2767, %2742
  %2772 = fmul fast float %2768, %2742
  %2773 = fmul fast float %2769, %2742
  %2774 = fadd fast float %2770, %2731
  %2775 = fadd fast float %2771, %2567
  %2776 = fadd fast float %2772, %2568
  %2777 = fadd fast float %2773, %2569
  %2778 = extractvalue %dx.types.CBufRet.f32 %2743, 2
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2783 = fsub fast float %2778, %2730
  %2784 = fsub fast float %2780, %2564
  %2785 = fsub fast float %2781, %2565
  %2786 = fsub fast float %2782, %2566
  %2787 = fmul fast float %2783, %2742
  %2788 = fmul fast float %2784, %2742
  %2789 = fmul fast float %2785, %2742
  %2790 = fmul fast float %2786, %2742
  %2791 = fadd fast float %2787, %2730
  %2792 = fadd fast float %2788, %2564
  %2793 = fadd fast float %2789, %2565
  %2794 = fadd fast float %2790, %2566
  br label %2795

; <label>:2795                                    ; preds = %2738, %2729
  %2796 = phi float [ %2791, %2738 ], [ %2730, %2729 ]
  %2797 = phi float [ %2792, %2738 ], [ %2564, %2729 ]
  %2798 = phi float [ %2793, %2738 ], [ %2565, %2729 ]
  %2799 = phi float [ %2794, %2738 ], [ %2566, %2729 ]
  %2800 = phi float [ %2774, %2738 ], [ %2731, %2729 ]
  %2801 = phi float [ %2775, %2738 ], [ %2567, %2729 ]
  %2802 = phi float [ %2776, %2738 ], [ %2568, %2729 ]
  %2803 = phi float [ %2777, %2738 ], [ %2569, %2729 ]
  %2804 = phi float [ %2757, %2738 ], [ %2732, %2729 ]
  %2805 = phi float [ %2758, %2738 ], [ %2570, %2729 ]
  %2806 = phi float [ %2759, %2738 ], [ %2571, %2729 ]
  %2807 = phi float [ %2760, %2738 ], [ %2572, %2729 ]
  %2808 = extractvalue %dx.types.CBufRet.f32 %2382, 3
  %2809 = fmul fast float %2808, %2804
  %2810 = fmul fast float %2808, %2800
  %2811 = fmul fast float %2808, %2796
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 3
  %2814 = fmul fast float %2809, %2813
  %2815 = fmul fast float %2810, %2813
  %2816 = fmul fast float %2811, %2813
  %2817 = fmul fast float %2805, 1.500000e+00
  %2818 = fmul fast float %2817, %2808
  %2819 = fmul fast float %2818, %2813
  %2820 = fmul fast float %2806, 1.500000e+00
  %2821 = fmul fast float %2820, %2808
  %2822 = fmul fast float %2821, %2813
  %2823 = fmul fast float %2807, 1.500000e+00
  %2824 = fmul fast float %2823, %2808
  %2825 = fmul fast float %2824, %2813
  %2826 = fmul fast float %2801, 1.500000e+00
  %2827 = fmul fast float %2826, %2808
  %2828 = fmul fast float %2827, %2813
  %2829 = fmul fast float %2802, 1.500000e+00
  %2830 = fmul fast float %2829, %2808
  %2831 = fmul fast float %2830, %2813
  %2832 = fmul fast float %2803, 1.500000e+00
  %2833 = fmul fast float %2832, %2808
  %2834 = fmul fast float %2833, %2813
  %2835 = fmul fast float %2797, 1.500000e+00
  %2836 = fmul fast float %2835, %2808
  %2837 = fmul fast float %2836, %2813
  %2838 = fmul fast float %2798, 1.500000e+00
  %2839 = fmul fast float %2838, %2808
  %2840 = fmul fast float %2839, %2813
  %2841 = fmul fast float %2799, 1.500000e+00
  %2842 = fmul fast float %2841, %2808
  %2843 = fmul fast float %2842, %2813
  %2844 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2814)  ; FMax(a,b)
  %2845 = call float @dx.op.dot3.f32(i32 55, float %2819, float %2822, float %2825, float %2819, float %2822, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %2846 = fcmp fast oeq float %2845, 0.000000e+00
  %2847 = fcmp fast oeq float %2844, 0.000000e+00
  %2848 = or i1 %2847, %2846
  br i1 %2848, label %2878, label %2849

; <label>:2849                                    ; preds = %2795
  %2850 = fsub fast float -0.000000e+00, %2825
  %2851 = fsub fast float -0.000000e+00, %2819
  %2852 = call float @dx.op.unary.f32(i32 24, float %2845)  ; Sqrt(value)
  %2853 = fdiv fast float %2852, %2844
  %2854 = fcmp fast ogt float %2853, 0x3FFB6F8900000000
  %2855 = select i1 %2854, float 0x3FFB6F8900000000, float %2853
  %2856 = fmul fast float %2855, 0x3FE8A23460000000
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2858 = call float @dx.op.binary.f32(i32 35, float %2855, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2859 = fmul fast float %2857, %2844
  %2860 = fmul fast float %2858, 0x3FF279A740000000
  %2861 = fadd fast float %2860, -1.000000e+00
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2850, float %2851, float %2822, float %2850, float %2851, float %2822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = call float @dx.op.unary.f32(i32 25, float %2862)  ; Rsqrt(value)
  %2864 = fmul fast float %2863, %2850
  %2865 = fmul fast float %2863, %2851
  %2866 = fmul fast float %2863, %2822
  %2867 = fmul fast float %2861, %2861
  %2868 = fsub fast float 1.000000e+00, %2867
  %2869 = fmul fast float %2858, 0x40005F8BE0000000
  %2870 = fsub fast float 0x400C5BF8A0000000, %2869
  %2871 = fdiv fast float %2859, %2870
  %2872 = fmul fast float %2871, 0x3FEE31C3C0000000
  %2873 = fmul fast float %2872, %2868
  %2874 = fmul fast float %2858, 0x3FDACB7480000000
  %2875 = fadd fast float %2874, 0xBFD7347680000000
  %2876 = fmul fast float %2875, %2871
  %2877 = fmul fast float %2876, %2868
  br label %2878

; <label>:2878                                    ; preds = %2849, %2795
  %2879 = phi float [ %2864, %2849 ], [ 0.000000e+00, %2795 ]
  %2880 = phi float [ %2865, %2849 ], [ 0.000000e+00, %2795 ]
  %2881 = phi float [ %2866, %2849 ], [ 0.000000e+00, %2795 ]
  %2882 = phi float [ %2873, %2849 ], [ 0.000000e+00, %2795 ]
  %2883 = phi float [ %2877, %2849 ], [ 0.000000e+00, %2795 ]
  %2884 = call float @dx.op.dot3.f32(i32 55, float %2879, float %2880, float %2881, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2885 = fmul fast float %2884, %2884
  %2886 = fmul fast float %2885, 0x3FEE471020000000
  %2887 = fadd fast float %2886, 0xBFD42F6020000000
  %2888 = fmul fast float %2844, 0x3FD20DD760000000
  %2889 = fmul fast float %2887, %2883
  %2890 = fmul fast float %2882, 0x3FDF454380000000
  %2891 = fmul fast float %2890, %2884
  %2892 = fadd fast float %2891, %2888
  %2893 = fadd fast float %2892, %2889
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2879, float %2880, float %2881, float %1844, float %1845, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = fmul fast float %2894, 0x3FDF454380000000
  %2896 = fmul fast float %2894, %2894
  %2897 = fmul fast float %2896, 0x3FEE471020000000
  %2898 = fadd fast float %2897, 0xBFD42F6020000000
  %2899 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2882, float %2883, float 0x3FD20DD760000000, float %2895, float %2898)  ; Dot3(ax,ay,az,bx,by,bz)
  %2900 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2815)  ; FMax(a,b)
  %2901 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2831, float %2834, float %2828, float %2831, float %2834)  ; Dot3(ax,ay,az,bx,by,bz)
  %2902 = fcmp fast oeq float %2901, 0.000000e+00
  %2903 = fcmp fast oeq float %2900, 0.000000e+00
  %2904 = or i1 %2903, %2902
  br i1 %2904, label %2934, label %2905

; <label>:2905                                    ; preds = %2878
  %2906 = fsub fast float -0.000000e+00, %2834
  %2907 = fsub fast float -0.000000e+00, %2828
  %2908 = call float @dx.op.unary.f32(i32 24, float %2901)  ; Sqrt(value)
  %2909 = fdiv fast float %2908, %2900
  %2910 = fcmp fast ogt float %2909, 0x3FFB6F8900000000
  %2911 = select i1 %2910, float 0x3FFB6F8900000000, float %2909
  %2912 = fmul fast float %2911, 0x3FE8A23460000000
  %2913 = call float @dx.op.unary.f32(i32 7, float %2912)  ; Saturate(value)
  %2914 = call float @dx.op.binary.f32(i32 35, float %2911, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2915 = fmul fast float %2913, %2900
  %2916 = fmul fast float %2914, 0x3FF279A740000000
  %2917 = fadd fast float %2916, -1.000000e+00
  %2918 = call float @dx.op.dot3.f32(i32 55, float %2906, float %2907, float %2831, float %2906, float %2907, float %2831)  ; Dot3(ax,ay,az,bx,by,bz)
  %2919 = call float @dx.op.unary.f32(i32 25, float %2918)  ; Rsqrt(value)
  %2920 = fmul fast float %2919, %2906
  %2921 = fmul fast float %2919, %2907
  %2922 = fmul fast float %2919, %2831
  %2923 = fmul fast float %2917, %2917
  %2924 = fsub fast float 1.000000e+00, %2923
  %2925 = fmul fast float %2914, 0x40005F8BE0000000
  %2926 = fsub fast float 0x400C5BF8A0000000, %2925
  %2927 = fdiv fast float %2915, %2926
  %2928 = fmul fast float %2927, 0x3FEE31C3C0000000
  %2929 = fmul fast float %2928, %2924
  %2930 = fmul fast float %2914, 0x3FDACB7480000000
  %2931 = fadd fast float %2930, 0xBFD7347680000000
  %2932 = fmul fast float %2931, %2927
  %2933 = fmul fast float %2932, %2924
  br label %2934

; <label>:2934                                    ; preds = %2905, %2878
  %2935 = phi float [ %2920, %2905 ], [ 0.000000e+00, %2878 ]
  %2936 = phi float [ %2921, %2905 ], [ 0.000000e+00, %2878 ]
  %2937 = phi float [ %2922, %2905 ], [ 0.000000e+00, %2878 ]
  %2938 = phi float [ %2929, %2905 ], [ 0.000000e+00, %2878 ]
  %2939 = phi float [ %2933, %2905 ], [ 0.000000e+00, %2878 ]
  %2940 = call float @dx.op.dot3.f32(i32 55, float %2935, float %2936, float %2937, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2941 = fmul fast float %2940, %2940
  %2942 = fmul fast float %2941, 0x3FEE471020000000
  %2943 = fadd fast float %2942, 0xBFD42F6020000000
  %2944 = fmul fast float %2900, 0x3FD20DD760000000
  %2945 = fmul fast float %2943, %2939
  %2946 = fmul fast float %2938, 0x3FDF454380000000
  %2947 = fmul fast float %2946, %2940
  %2948 = fadd fast float %2947, %2944
  %2949 = fadd fast float %2948, %2945
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2935, float %2936, float %2937, float %1844, float %1845, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = fmul fast float %2950, 0x3FDF454380000000
  %2952 = fmul fast float %2950, %2950
  %2953 = fmul fast float %2952, 0x3FEE471020000000
  %2954 = fadd fast float %2953, 0xBFD42F6020000000
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2900, float %2938, float %2939, float 0x3FD20DD760000000, float %2951, float %2954)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2816)  ; FMax(a,b)
  %2957 = call float @dx.op.dot3.f32(i32 55, float %2837, float %2840, float %2843, float %2837, float %2840, float %2843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2958 = fcmp fast oeq float %2957, 0.000000e+00
  %2959 = fcmp fast oeq float %2956, 0.000000e+00
  %2960 = or i1 %2959, %2958
  br i1 %2960, label %2990, label %2961

; <label>:2961                                    ; preds = %2934
  %2962 = fsub fast float -0.000000e+00, %2843
  %2963 = fsub fast float -0.000000e+00, %2837
  %2964 = call float @dx.op.unary.f32(i32 24, float %2957)  ; Sqrt(value)
  %2965 = fdiv fast float %2964, %2956
  %2966 = fcmp fast ogt float %2965, 0x3FFB6F8900000000
  %2967 = select i1 %2966, float 0x3FFB6F8900000000, float %2965
  %2968 = fmul fast float %2967, 0x3FE8A23460000000
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2970 = call float @dx.op.binary.f32(i32 35, float %2967, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2971 = fmul fast float %2969, %2956
  %2972 = fmul fast float %2970, 0x3FF279A740000000
  %2973 = fadd fast float %2972, -1.000000e+00
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2962, float %2963, float %2840, float %2962, float %2963, float %2840)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = call float @dx.op.unary.f32(i32 25, float %2974)  ; Rsqrt(value)
  %2976 = fmul fast float %2975, %2962
  %2977 = fmul fast float %2975, %2963
  %2978 = fmul fast float %2975, %2840
  %2979 = fmul fast float %2973, %2973
  %2980 = fsub fast float 1.000000e+00, %2979
  %2981 = fmul fast float %2970, 0x40005F8BE0000000
  %2982 = fsub fast float 0x400C5BF8A0000000, %2981
  %2983 = fdiv fast float %2971, %2982
  %2984 = fmul fast float %2983, 0x3FEE31C3C0000000
  %2985 = fmul fast float %2984, %2980
  %2986 = fmul fast float %2970, 0x3FDACB7480000000
  %2987 = fadd fast float %2986, 0xBFD7347680000000
  %2988 = fmul fast float %2987, %2983
  %2989 = fmul fast float %2988, %2980
  br label %2990

; <label>:2990                                    ; preds = %2961, %2934
  %2991 = phi float [ %2976, %2961 ], [ 0.000000e+00, %2934 ]
  %2992 = phi float [ %2977, %2961 ], [ 0.000000e+00, %2934 ]
  %2993 = phi float [ %2978, %2961 ], [ 0.000000e+00, %2934 ]
  %2994 = phi float [ %2985, %2961 ], [ 0.000000e+00, %2934 ]
  %2995 = phi float [ %2989, %2961 ], [ 0.000000e+00, %2934 ]
  %2996 = call float @dx.op.dot3.f32(i32 55, float %2991, float %2992, float %2993, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2997 = fmul fast float %2996, %2996
  %2998 = fmul fast float %2997, 0x3FEE471020000000
  %2999 = fadd fast float %2998, 0xBFD42F6020000000
  %3000 = fmul fast float %2956, 0x3FD20DD760000000
  %3001 = fmul fast float %2999, %2995
  %3002 = fmul fast float %2994, 0x3FDF454380000000
  %3003 = fmul fast float %3002, %2996
  %3004 = fadd fast float %3003, %3000
  %3005 = fadd fast float %3004, %3001
  %3006 = call float @dx.op.dot3.f32(i32 55, float %2991, float %2992, float %2993, float %1844, float %1845, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = fmul fast float %3006, 0x3FDF454380000000
  %3008 = fmul fast float %3006, %3006
  %3009 = fmul fast float %3008, 0x3FEE471020000000
  %3010 = fadd fast float %3009, 0xBFD42F6020000000
  %3011 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2994, float %2995, float 0x3FD20DD760000000, float %3007, float %3010)  ; Dot3(ax,ay,az,bx,by,bz)
  %3012 = call float @dx.op.binary.f32(i32 35, float %2893, float 0.000000e+00)  ; FMax(a,b)
  %3013 = call float @dx.op.binary.f32(i32 35, float %2949, float 0.000000e+00)  ; FMax(a,b)
  %3014 = call float @dx.op.binary.f32(i32 35, float %3005, float 0.000000e+00)  ; FMax(a,b)
  %3015 = call float @dx.op.binary.f32(i32 35, float %2899, float 0.000000e+00)  ; FMax(a,b)
  %3016 = call float @dx.op.binary.f32(i32 35, float %2955, float 0.000000e+00)  ; FMax(a,b)
  %3017 = call float @dx.op.binary.f32(i32 35, float %3011, float 0.000000e+00)  ; FMax(a,b)
  %3018 = fsub fast float %2214, %3012
  %3019 = fsub fast float %2215, %3013
  %3020 = fsub fast float %2216, %3014
  %3021 = fmul fast float %3018, %1895
  %3022 = fmul fast float %3019, %1895
  %3023 = fmul fast float %3020, %1895
  %3024 = fadd fast float %3021, %3012
  %3025 = fadd fast float %3022, %3013
  %3026 = fadd fast float %3023, %3014
  %3027 = fsub fast float %2211, %3015
  %3028 = fsub fast float %2212, %3016
  %3029 = fsub fast float %2213, %3017
  %3030 = fmul fast float %3027, %1895
  %3031 = fmul fast float %3028, %1895
  %3032 = fmul fast float %3029, %1895
  %3033 = fadd fast float %3030, %3015
  %3034 = fadd fast float %3031, %3016
  %3035 = fadd fast float %3032, %3017
  br label %3036

; <label>:3036                                    ; preds = %2990, %2210
  %3037 = phi float [ %3033, %2990 ], [ %2211, %2210 ]
  %3038 = phi float [ %3034, %2990 ], [ %2212, %2210 ]
  %3039 = phi float [ %3035, %2990 ], [ %2213, %2210 ]
  %3040 = phi float [ %3024, %2990 ], [ %2214, %2210 ]
  %3041 = phi float [ %3025, %2990 ], [ %2215, %2210 ]
  %3042 = phi float [ %3026, %2990 ], [ %2216, %2210 ]
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = call float @dx.op.binary.f32(i32 36, float %1828, float %3044)  ; FMin(a,b)
  %3046 = fsub fast float 1.000000e+00, %1847
  %3047 = fmul fast float %3045, %3046
  %3048 = fsub fast float 1.000000e+00, %3047
  %3049 = bitcast float %3048 to i32
  %3050 = sub nsw i32 2129859010, %3049
  %3051 = bitcast i32 %3050 to float
  %3052 = call float @dx.op.binary.f32(i32 36, float %1829, float %3044)  ; FMin(a,b)
  %3053 = fmul fast float %3052, %3046
  %3054 = fsub fast float 1.000000e+00, %3053
  %3055 = bitcast float %3054 to i32
  %3056 = sub nsw i32 2129859010, %3055
  %3057 = bitcast i32 %3056 to float
  %3058 = call float @dx.op.binary.f32(i32 36, float %1830, float %3044)  ; FMin(a,b)
  %3059 = fmul fast float %3058, %3046
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = bitcast float %3060 to i32
  %3062 = sub nsw i32 2129859010, %3061
  %3063 = bitcast i32 %3062 to float
  %3064 = fmul fast float %3040, %1847
  %3065 = fmul fast float %3064, %3051
  %3066 = fmul fast float %3041, %1847
  %3067 = fmul fast float %3066, %3057
  %3068 = fmul fast float %3042, %1847
  %3069 = fmul fast float %3068, %3063
  %3070 = call float @dx.op.binary.f32(i32 36, float %1825, float %3044)  ; FMin(a,b)
  %3071 = fmul fast float %3070, %3046
  %3072 = fsub fast float 1.000000e+00, %3071
  %3073 = bitcast float %3072 to i32
  %3074 = sub nsw i32 2129859010, %3073
  %3075 = bitcast i32 %3074 to float
  %3076 = call float @dx.op.binary.f32(i32 36, float %1826, float %3044)  ; FMin(a,b)
  %3077 = fmul fast float %3076, %3046
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = bitcast float %3078 to i32
  %3080 = sub nsw i32 2129859010, %3079
  %3081 = bitcast i32 %3080 to float
  %3082 = call float @dx.op.binary.f32(i32 36, float %1836, float %3044)  ; FMin(a,b)
  %3083 = fmul fast float %3082, %3046
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = bitcast float %3084 to i32
  %3086 = sub nsw i32 2129859010, %3085
  %3087 = bitcast i32 %3086 to float
  %3088 = fmul fast float %3037, %1847
  %3089 = fmul fast float %3088, %3075
  %3090 = fmul fast float %3038, %1847
  %3091 = fmul fast float %3090, %3081
  %3092 = fmul fast float %3039, %1847
  %3093 = fmul fast float %3092, %3087
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3067, float %3069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = select i1 %176, float 0.000000e+00, float %3065
  %3096 = select i1 %176, float %3094, float %3067
  %3097 = select i1 %176, float 0.000000e+00, float %3069
  %3098 = call float @dx.op.dot3.f32(i32 55, float %3089, float %3091, float %3093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3099 = select i1 %176, float 0.000000e+00, float %3089
  %3100 = select i1 %176, float %3098, float %3091
  %3101 = select i1 %176, float 0.000000e+00, float %3093
  %3102 = fmul fast float %1838, 9.843750e-01
  %3103 = fmul fast float %1834, 9.843750e-01
  %3104 = fadd fast float %3102, 7.812500e-03
  %3105 = fadd fast float %3103, 7.812500e-03
  %3106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3104, float %3105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3107 = extractvalue %dx.types.ResRet.f32 %3106, 2
  %3108 = extractvalue %dx.types.ResRet.f32 %3106, 3
  %3109 = fmul fast float %3107, %1825
  %3110 = fmul fast float %3107, %1826
  %3111 = fmul fast float %3107, %1836
  %3112 = fadd fast float %3109, %3108
  %3113 = fadd fast float %3110, %3108
  %3114 = fadd fast float %3111, %3108
  %3115 = fcmp fast ogt float %1202, 0.000000e+00
  br i1 %3115, label %3116, label %3142

; <label>:3116                                    ; preds = %3036
  %3117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1202, float %1838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = extractvalue %dx.types.ResRet.f32 %3117, 1
  %3120 = extractvalue %dx.types.ResRet.f32 %3117, 2
  %3121 = fadd fast float %3118, -5.000000e-01
  %3122 = fadd fast float %3119, -5.000000e-01
  %3123 = fadd fast float %3120, -5.000000e-01
  %3124 = fsub fast float 1.000000e+00, %1825
  %3125 = fsub fast float 1.000000e+00, %1826
  %3126 = fsub fast float 1.000000e+00, %1836
  %3127 = fmul fast float %1825, 4.000000e+00
  %3128 = fmul fast float %3127, %3124
  %3129 = fmul fast float %3128, %3121
  %3130 = fmul fast float %1826, 4.000000e+00
  %3131 = fmul fast float %3130, %3125
  %3132 = fmul fast float %3131, %3122
  %3133 = fmul fast float %1836, 4.000000e+00
  %3134 = fmul fast float %3133, %3126
  %3135 = fmul fast float %3134, %3123
  %3136 = fadd fast float %3129, %3112
  %3137 = fadd fast float %3132, %3113
  %3138 = fadd fast float %3135, %3114
  %3139 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  %3140 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3141 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  br label %3142

; <label>:3142                                    ; preds = %3116, %3036
  %3143 = phi float [ %3139, %3116 ], [ %3112, %3036 ]
  %3144 = phi float [ %3140, %3116 ], [ %3113, %3036 ]
  %3145 = phi float [ %3141, %3116 ], [ %3114, %3036 ]
  %3146 = call float @dx.op.binary.f32(i32 35, float %3144, float %3145)  ; FMax(a,b)
  %3147 = call float @dx.op.binary.f32(i32 35, float %3143, float %3146)  ; FMax(a,b)
  %3148 = fsub fast float 1.000000e+00, %3147
  %3149 = fmul fast float %3148, %3095
  %3150 = fmul fast float %3148, %3096
  %3151 = fmul fast float %3148, %3097
  %3152 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1829, float %1830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3153 = fcmp fast ogt float %3152, 0x3E7FF19E20000000
  %3154 = fdiv fast float 1.000000e+00, %3152
  %3155 = select i1 %3153, float %3154, float 0.000000e+00
  %3156 = fmul fast float %3155, %1828
  %3157 = fmul fast float %3155, %1829
  %3158 = fmul fast float %3155, %1830
  %3159 = fadd fast float %3156, -1.000000e+00
  %3160 = fadd fast float %3157, -1.000000e+00
  %3161 = fadd fast float %3158, -1.000000e+00
  %3162 = fmul fast float %3159, 5.000000e-01
  %3163 = fmul fast float %3160, 5.000000e-01
  %3164 = fmul fast float %3161, 5.000000e-01
  %3165 = fadd fast float %3162, 1.000000e+00
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fmul fast float %3143, %3099
  %3169 = fmul fast float %3144, %3100
  %3170 = fmul fast float %3145, %3101
  %3171 = fsub fast float 1.000000e+00, %1838
  %3172 = bitcast float %3171 to i32
  %3173 = sitofp i32 %3172 to float
  %3174 = fmul fast float %3173, 5.000000e+00
  %3175 = fadd fast float %3174, 0xC1EFBF8940000000
  %3176 = fptosi float %3175 to i32
  %3177 = bitcast i32 %3176 to float
  %3178 = fmul fast float %3177, %1201
  %3179 = fmul fast float %3095, %3178
  %3180 = fmul fast float %3179, %3148
  %3181 = fmul fast float %3180, %3165
  %3182 = fmul fast float %3096, %3178
  %3183 = fmul fast float %3182, %3148
  %3184 = fmul fast float %3183, %3166
  %3185 = fmul fast float %3097, %3178
  %3186 = fmul fast float %3185, %3148
  %3187 = fmul fast float %3186, %3167
  %3188 = fmul fast float %3149, %1222
  %3189 = fmul fast float %3150, %1222
  %3190 = fmul fast float %3151, %1222
  %3191 = fadd fast float %3168, %1203
  %3192 = fadd fast float %3191, %3181
  %3193 = fmul fast float %3192, %1222
  %3194 = fadd fast float %3169, %1204
  %3195 = fadd fast float %3194, %3184
  %3196 = fmul fast float %3195, %1222
  %3197 = fadd fast float %3170, %1205
  %3198 = fadd fast float %3197, %3187
  %3199 = fmul fast float %3198, %1222
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 3
  %3202 = fcmp fast oeq float %3201, 0.000000e+00
  br i1 %3202, label %3431, label %3203

; <label>:3203                                    ; preds = %3142
  %3204 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3205 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3206 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.CBufRet.f32 %3211, 1
  %3214 = call float @dx.op.dot3.f32(i32 55, float %3208, float %3209, float %3210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3215 = select i1 %176, float %3212, float %3208
  %3216 = select i1 %176, float %3214, float %3209
  %3217 = select i1 %176, float %3213, float %3210
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3220 = fcmp fast une float %3219, 0.000000e+00
  br i1 %3220, label %3221, label %3238

; <label>:3221                                    ; preds = %3203
  %3222 = fptoui float %58 to i32
  %3223 = fptoui float %59 to i32
  %3224 = lshr i32 %3222, 4
  %3225 = lshr i32 %3223, 4
  %3226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.f32 %3226, 0
  %3228 = fptoui float %3227 to i32
  %3229 = add i32 %3228, 15
  %3230 = lshr i32 %3229, 4
  %3231 = mul i32 %3230, %3225
  %3232 = add i32 %3231, %3224
  %3233 = shl i32 %3232, 3
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = and i32 %3235, -268435456
  %3237 = icmp eq i32 %3236, -1342177280
  br i1 %3237, label %3248, label %3238

; <label>:3238                                    ; preds = %3221, %3203
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 2
  %3241 = extractvalue %dx.types.CBufRet.f32 %3239, 3
  %3242 = fmul fast float %3240, %58
  %3243 = fmul fast float %3241, %59
  %3244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3242, float %3243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.ResRet.f32 %3244, 1
  %3247 = extractvalue %dx.types.ResRet.f32 %3244, 2
  br label %3248

; <label>:3248                                    ; preds = %3238, %3221
  %3249 = phi float [ %3245, %3238 ], [ 0.000000e+00, %3221 ]
  %3250 = phi float [ %3246, %3238 ], [ 0.000000e+00, %3221 ]
  %3251 = phi float [ %3247, %3238 ], [ 0.000000e+00, %3221 ]
  %3252 = call float @dx.op.binary.f32(i32 36, float %3250, float %3251)  ; FMin(a,b)
  %3253 = call float @dx.op.binary.f32(i32 36, float %3249, float %3252)  ; FMin(a,b)
  %3254 = fcmp fast ogt float %3253, 0.000000e+00
  br i1 %3254, label %3255, label %3431, !dx.controlflow.hints !79

; <label>:3255                                    ; preds = %3248
  %3256 = fmul fast float %3249, %3215
  %3257 = fmul fast float %3250, %3216
  %3258 = fmul fast float %3251, %3217
  %3259 = fsub fast float %3204, %1824
  %3260 = fsub fast float %3205, %1823
  %3261 = fsub fast float %3206, %1822
  %3262 = call float @dx.op.dot3.f32(i32 55, float %3259, float %3260, float %3261, float %3259, float %3260, float %3261)  ; Dot3(ax,ay,az,bx,by,bz)
  %3263 = call float @dx.op.unary.f32(i32 25, float %3262)  ; Rsqrt(value)
  %3264 = fmul fast float %3263, %3259
  %3265 = fmul fast float %3263, %3260
  %3266 = fmul fast float %3263, %3261
  %3267 = call float @dx.op.dot3.f32(i32 55, float %3204, float %3205, float %3206, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %3268 = call float @dx.op.dot3.f32(i32 55, float %1821, float %1820, float %1819, float %3264, float %3265, float %3266)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3270 = bitcast i32 %1850 to float
  %3271 = fmul fast float %3269, %3269
  %3272 = fmul fast float %3271, %3270
  %3273 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3274 = fmul fast float %3273, %3269
  %3275 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %3264, float %3265, float %3266)  ; Dot3(ax,ay,az,bx,by,bz)
  %3276 = fmul fast float %3275, %3275
  %3277 = call float @dx.op.unary.f32(i32 6, float %3267)  ; FAbs(value)
  %3278 = fsub fast float 1.000000e+00, %1834
  %3279 = call float @dx.op.binary.f32(i32 35, float %3278, float 0x3F847AE140000000)  ; FMax(a,b)
  %3280 = fmul fast float %3279, %3279
  %3281 = fmul fast float %3280, %3280
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %1838, %1838
  %3284 = fmul fast float %3283, %3282
  %3285 = fadd fast float %3284, %3281
  %3286 = bitcast float %3285 to i32
  %3287 = ashr i32 %3286, 1
  %3288 = add nsw i32 %3287, 532487669
  %3289 = bitcast i32 %3288 to float
  %3290 = fadd fast float %3289, %1838
  %3291 = fmul fast float %3281, %3276
  %3292 = fsub fast float 1.000000e+00, %3276
  %3293 = fadd fast float %3292, %3291
  %3294 = fmul fast float %3277, %3277
  %3295 = fmul fast float %3294, %3282
  %3296 = fadd fast float %3295, %3281
  %3297 = bitcast float %3296 to i32
  %3298 = ashr i32 %3297, 1
  %3299 = add nsw i32 %3298, 532487669
  %3300 = bitcast i32 %3299 to float
  %3301 = fadd fast float %3300, %3277
  %3302 = fmul fast float %3293, %3293
  %3303 = fmul fast float %3302, %3290
  %3304 = fmul fast float %3303, %3301
  %3305 = fdiv fast float 0x3FF0A00000000000, %3304
  %3306 = fmul fast float %3305, %3281
  %3307 = call float @dx.op.unary.f32(i32 6, float %3268)  ; FAbs(value)
  %3308 = fsub fast float 1.000000e+00, %3307
  %3309 = bitcast float %3308 to i32
  %3310 = sitofp i32 %3309 to float
  %3311 = fmul fast float %3310, 5.000000e+00
  %3312 = fadd fast float %3311, 0xC1EFBF8940000000
  %3313 = fptosi float %3312 to i32
  %3314 = bitcast i32 %3313 to float
  %3315 = fsub fast float 1.000000e+00, %1825
  %3316 = fsub fast float 1.000000e+00, %1826
  %3317 = fsub fast float 1.000000e+00, %1836
  %3318 = fmul fast float %3314, %3315
  %3319 = fmul fast float %3314, %3316
  %3320 = fmul fast float %3314, %3317
  %3321 = fadd fast float %3318, %1825
  %3322 = fadd fast float %3319, %1826
  %3323 = fadd fast float %3320, %1836
  br i1 %3115, label %3324, label %3347

; <label>:3324                                    ; preds = %3255
  %3325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1202, float %3307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = fadd fast float %3326, -5.000000e-01
  %3330 = fadd fast float %3327, -5.000000e-01
  %3331 = fadd fast float %3328, -5.000000e-01
  %3332 = fmul fast float %1825, 4.000000e+00
  %3333 = fmul fast float %3332, %3315
  %3334 = fmul fast float %3333, %3329
  %3335 = fmul fast float %1826, 4.000000e+00
  %3336 = fmul fast float %3335, %3316
  %3337 = fmul fast float %3336, %3330
  %3338 = fmul fast float %1836, 4.000000e+00
  %3339 = fmul fast float %3338, %3317
  %3340 = fmul fast float %3339, %3331
  %3341 = fadd fast float %3334, %3321
  %3342 = fadd fast float %3337, %3322
  %3343 = fadd fast float %3340, %3323
  %3344 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3345 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3346 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  br label %3347

; <label>:3347                                    ; preds = %3324, %3255
  %3348 = phi float [ %3344, %3324 ], [ %3321, %3255 ]
  %3349 = phi float [ %3345, %3324 ], [ %3322, %3255 ]
  %3350 = phi float [ %3346, %3324 ], [ %3323, %3255 ]
  %3351 = fmul fast float %3267, 9.843750e-01
  %3352 = fadd fast float %3351, 7.812500e-03
  %3353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3352, float %3105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 3
  %3356 = fmul fast float %3354, %1825
  %3357 = fmul fast float %3354, %1826
  %3358 = fmul fast float %3354, %1836
  %3359 = fadd fast float %3356, %3355
  %3360 = fadd fast float %3357, %3355
  %3361 = fadd fast float %3358, %3355
  br i1 %3115, label %3362, label %3385

; <label>:3362                                    ; preds = %3347
  %3363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1202, float %3267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = fadd fast float %3364, -5.000000e-01
  %3368 = fadd fast float %3365, -5.000000e-01
  %3369 = fadd fast float %3366, -5.000000e-01
  %3370 = fmul fast float %1825, 4.000000e+00
  %3371 = fmul fast float %3370, %3315
  %3372 = fmul fast float %3371, %3367
  %3373 = fmul fast float %1826, 4.000000e+00
  %3374 = fmul fast float %3373, %3316
  %3375 = fmul fast float %3374, %3368
  %3376 = fmul fast float %1836, 4.000000e+00
  %3377 = fmul fast float %3376, %3317
  %3378 = fmul fast float %3377, %3369
  %3379 = fadd fast float %3372, %3359
  %3380 = fadd fast float %3375, %3360
  %3381 = fadd fast float %3378, %3361
  %3382 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  br label %3385

; <label>:3385                                    ; preds = %3362, %3347
  %3386 = phi float [ %3382, %3362 ], [ %3359, %3347 ]
  %3387 = phi float [ %3383, %3362 ], [ %3360, %3347 ]
  %3388 = phi float [ %3384, %3362 ], [ %3361, %3347 ]
  %3389 = call float @dx.op.binary.f32(i32 35, float %3387, float %3388)  ; FMax(a,b)
  %3390 = call float @dx.op.binary.f32(i32 35, float %3386, float %3389)  ; FMax(a,b)
  %3391 = fsub fast float 1.000000e+00, %3390
  %3392 = fmul fast float %3348, %3306
  %3393 = fmul fast float %3349, %3306
  %3394 = fmul fast float %3350, %3306
  %3395 = fsub fast float 1.000000e+00, %3268
  %3396 = bitcast float %3395 to i32
  %3397 = sitofp i32 %3396 to float
  %3398 = fmul fast float %3397, 5.000000e+00
  %3399 = fadd fast float %3398, 0xC1EFBF8940000000
  %3400 = fptosi float %3399 to i32
  %3401 = bitcast i32 %3400 to float
  %3402 = fmul fast float %3401, %1201
  %3403 = fmul fast float %3391, %3402
  %3404 = fmul fast float %3403, %3165
  %3405 = fmul fast float %3403, %3166
  %3406 = fmul fast float %3403, %3167
  %3407 = fadd fast float %3404, %3392
  %3408 = fadd fast float %3405, %3393
  %3409 = fadd fast float %3406, %3394
  %3410 = fmul fast float %3274, %3256
  %3411 = fmul fast float %3410, %3391
  %3412 = fmul fast float %3274, %3257
  %3413 = fmul fast float %3412, %3391
  %3414 = fmul fast float %3274, %3258
  %3415 = fmul fast float %3414, %3391
  %3416 = fmul fast float %3410, %3407
  %3417 = fmul fast float %3412, %3408
  %3418 = fmul fast float %3414, %3409
  %3419 = fadd fast float %3411, %3149
  %3420 = fmul fast float %3419, %1222
  %3421 = fadd fast float %3413, %3150
  %3422 = fmul fast float %3421, %1222
  %3423 = fadd fast float %3415, %3151
  %3424 = fmul fast float %3423, %1222
  %3425 = fadd fast float %3416, %3192
  %3426 = fmul fast float %3425, %1222
  %3427 = fadd fast float %3417, %3195
  %3428 = fmul fast float %3427, %1222
  %3429 = fadd fast float %3418, %3198
  %3430 = fmul fast float %3429, %1222
  br label %3431

; <label>:3431                                    ; preds = %3385, %3248, %3142
  %3432 = phi float [ %3193, %3142 ], [ %3193, %3248 ], [ %3426, %3385 ]
  %3433 = phi float [ %3196, %3142 ], [ %3196, %3248 ], [ %3428, %3385 ]
  %3434 = phi float [ %3199, %3142 ], [ %3199, %3248 ], [ %3430, %3385 ]
  %3435 = phi float [ %3188, %3142 ], [ %3188, %3248 ], [ %3420, %3385 ]
  %3436 = phi float [ %3189, %3142 ], [ %3189, %3248 ], [ %3422, %3385 ]
  %3437 = phi float [ %3190, %3142 ], [ %3190, %3248 ], [ %3424, %3385 ]
  %3438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.i32 %3438, 0
  %3440 = icmp eq i32 %3439, 0
  br i1 %3440, label %3876, label %3441

; <label>:3441                                    ; preds = %3431
  %3442 = fptoui float %58 to i32
  %3443 = fptoui float %59 to i32
  %3444 = lshr i32 %3442, 4
  %3445 = lshr i32 %3443, 4
  %3446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.i32 %3446, 0
  %3448 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3445, i32 %3447, i32 %3444)  ; UMad(a,b,c)
  %3449 = add nsw i32 %3439, -1
  %3450 = call i32 @dx.op.binary.i32(i32 37, i32 %3449, i32 0)  ; IMax(a,b)
  %3451 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3452 = fptoui float %3451 to i32
  %3453 = lshr i32 %3452, 5
  %3454 = call i32 @dx.op.binary.i32(i32 40, i32 %3453, i32 8191)  ; UMin(a,b)
  %3455 = shl i32 %3454, 2
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = lshr i32 %3457, 16
  %3459 = and i32 %3457, 65535
  %3460 = lshr i32 %3457, 21
  %3461 = lshr i32 %3459, 5
  %3462 = call i32 @dx.op.binary.i32(i32 40, i32 %3461, i32 %3450)  ; UMin(a,b)
  %3463 = icmp ugt i32 %3460, %3462
  br i1 %3463, label %3876, label %3464

; <label>:3464                                    ; preds = %3441
  br label %3465

; <label>:3465                                    ; preds = %3866, %3464
  %3466 = phi i32 [ %3873, %3866 ], [ %3460, %3464 ]
  %3467 = phi float [ %3867, %3866 ], [ %3432, %3464 ]
  %3468 = phi float [ %3868, %3866 ], [ %3433, %3464 ]
  %3469 = phi float [ %3869, %3866 ], [ %3434, %3464 ]
  %3470 = phi float [ %3870, %3866 ], [ %3435, %3464 ]
  %3471 = phi float [ %3871, %3866 ], [ %3436, %3464 ]
  %3472 = phi float [ %3872, %3866 ], [ %3437, %3464 ]
  %3473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.i32 %3473, 0
  %3475 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3448, i32 %3474, i32 %3466)  ; UMad(a,b,c)
  %3476 = shl i32 %3475, 2
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = shl i32 %3466, 5
  %3480 = sub nsw i32 %3458, %3479
  %3481 = call i32 @dx.op.binary.i32(i32 37, i32 %3480, i32 0)  ; IMax(a,b)
  %3482 = call i32 @dx.op.binary.i32(i32 38, i32 %3481, i32 31)  ; IMin(a,b)
  %3483 = sub nsw i32 1, %3458
  %3484 = add nsw i32 %3483, %3459
  %3485 = call i32 @dx.op.binary.i32(i32 37, i32 %3484, i32 0)  ; IMax(a,b)
  %3486 = call i32 @dx.op.binary.i32(i32 38, i32 %3485, i32 32)  ; IMin(a,b)
  %3487 = and i32 %3486, 31
  %3488 = shl i32 -1, %3487
  %3489 = xor i32 %3488, -1
  %3490 = and i32 %3482, 31
  %3491 = shl i32 %3489, %3490
  %3492 = icmp eq i32 %3486, 32
  %3493 = select i1 %3492, i32 -1, i32 %3491
  %3494 = and i32 %3493, %3478
  %3495 = icmp eq i32 %3494, 0
  br i1 %3495, label %3866, label %3496

; <label>:3496                                    ; preds = %3465
  br label %3497

; <label>:3497                                    ; preds = %3577, %3496
  %3498 = phi i32 [ %3509, %3577 ], [ %3494, %3496 ]
  %3499 = phi float [ %3578, %3577 ], [ %3467, %3496 ]
  %3500 = phi float [ %3579, %3577 ], [ %3468, %3496 ]
  %3501 = phi float [ %3580, %3577 ], [ %3469, %3496 ]
  %3502 = phi float [ %3581, %3577 ], [ %3470, %3496 ]
  %3503 = phi float [ %3582, %3577 ], [ %3471, %3496 ]
  %3504 = phi float [ %3583, %3577 ], [ %3472, %3496 ]
  %3505 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3498)  ; FirstbitLo(value)
  %3506 = add i32 %3505, %3479
  %3507 = and i32 %3505, 31
  %3508 = shl i32 1, %3507
  %3509 = xor i32 %3508, %3498
  %3510 = mul i32 %3506, 112
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = or i32 %3510, 12
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = add i32 %3510, 44
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = add i32 %3510, 48
  %3522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.ResRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.ResRet.f32 %3522, 2
  %3526 = add i32 %3510, 80
  %3527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 1
  %3529 = extractvalue %dx.types.ResRet.f32 %3527, 2
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3512, float %3513, float %3514, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = select i1 %176, float %3528, float %3512
  %3532 = select i1 %176, float %3530, float %3513
  %3533 = select i1 %176, float %3529, float %3514
  %3534 = fsub fast float %3523, %105
  %3535 = fsub fast float %3524, %106
  %3536 = fsub fast float %3525, %107
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3534, float %3535, float %3536, float %3534, float %3535, float %3536)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = call float @dx.op.unary.f32(i32 24, float %3537)  ; Sqrt(value)
  %3539 = fdiv fast float 1.000000e+00, %3538
  %3540 = fmul fast float %3539, %3534
  %3541 = fmul fast float %3539, %3535
  %3542 = fmul fast float %3539, %3536
  %3543 = fadd fast float %3538, %3517
  %3544 = fdiv fast float 1.000000e+00, %3543
  %3545 = fmul float %3520, %3544
  %3546 = fmul float %3545, %3545
  %3547 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3548 = and i32 %3508, %3494
  %3549 = icmp eq i32 %3548, 0
  br i1 %3549, label %3572, label %3550, !dx.controlflow.hints !80

; <label>:3550                                    ; preds = %3497
  %3551 = lshr i32 %3442, 5
  %3552 = lshr i32 %3443, 5
  %3553 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3551, i32 %3552, i32 %3506, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 3
  %3556 = icmp eq i32 %3555, 0
  %3557 = select i1 %3556, float 1.000000e+00, float 0.000000e+00
  %3558 = icmp eq i32 %3555, 3
  br i1 %3558, label %3559, label %3572

; <label>:3559                                    ; preds = %3550
  %3560 = lshr i32 %3554, 10
  %3561 = and i32 %3560, 8160
  %3562 = and i32 %3443, 31
  %3563 = or i32 %3561, %3562
  %3564 = lshr i32 %3554, 1
  %3565 = and i32 %3564, 16352
  %3566 = and i32 %3442, 31
  %3567 = or i32 %3565, %3566
  %3568 = lshr i32 %3554, 23
  %3569 = and i32 %3568, 255
  %3570 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3567, i32 %3563, i32 %3569, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  br label %3572

; <label>:3572                                    ; preds = %3559, %3550, %3497
  %3573 = phi float [ %3571, %3559 ], [ %3557, %3550 ], [ 0.000000e+00, %3497 ]
  %3574 = call float @dx.op.binary.f32(i32 36, float %3573, float %3573)  ; FMin(a,b)
  %3575 = call float @dx.op.binary.f32(i32 36, float %3573, float %3574)  ; FMin(a,b)
  %3576 = fcmp fast ogt float %3575, 0.000000e+00
  br i1 %3576, label %3585, label %3577, !dx.controlflow.hints !81

; <label>:3577                                    ; preds = %3822, %3572
  %3578 = phi float [ %3499, %3572 ], [ %3862, %3822 ]
  %3579 = phi float [ %3500, %3572 ], [ %3863, %3822 ]
  %3580 = phi float [ %3501, %3572 ], [ %3864, %3822 ]
  %3581 = phi float [ %3502, %3572 ], [ %3856, %3822 ]
  %3582 = phi float [ %3503, %3572 ], [ %3857, %3822 ]
  %3583 = phi float [ %3504, %3572 ], [ %3858, %3822 ]
  %3584 = icmp eq i32 %3498, %3508
  br i1 %3584, label %3865, label %3497

; <label>:3585                                    ; preds = %3572
  %3586 = fmul fast float %3573, %3531
  %3587 = fmul fast float %3573, %3532
  %3588 = fmul fast float %3573, %3533
  %3589 = fsub fast float %3525, %1624
  %3590 = fcmp fast ogt float %3589, 0.000000e+00
  %3591 = fsub fast float %107, %1624
  %3592 = fcmp fast ogt float %3591, 0.000000e+00
  %3593 = xor i1 %3592, %3590
  %3594 = fsub fast float %1624, %3525
  %3595 = fmul fast float %3594, 2.000000e+00
  %3596 = fadd fast float %3595, %3525
  %3597 = select i1 %3593, float %3525, float %3596
  %3598 = fsub fast float %3597, %107
  %3599 = call float @dx.op.dot3.f32(i32 55, float %3534, float %3535, float %3598, float %3534, float %3535, float %3598)  ; Dot3(ax,ay,az,bx,by,bz)
  %3600 = call float @dx.op.unary.f32(i32 25, float %3599)  ; Rsqrt(value)
  %3601 = fmul fast float %3600, %3534
  %3602 = fmul fast float %3600, %3535
  %3603 = fmul fast float %3600, %3598
  %3604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1632)  ; Dot3(ax,ay,az,bx,by,bz)
  %3605 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3601, float %3602, float %3603)  ; Dot3(ax,ay,az,bx,by,bz)
  %3606 = fdiv fast float 1.000000e+00, %3605
  %3607 = fmul fast float %3606, %3604
  %3608 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3591, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3609 = fcmp fast ogt float %3608, 0.000000e+00
  %3610 = fcmp fast olt float %3608, 0.000000e+00
  %3611 = zext i1 %3609 to i32
  %3612 = zext i1 %3610 to i32
  %3613 = sub nsw i32 %3611, %3612
  %3614 = sitofp i32 %3613 to float
  %3615 = fsub fast float %3597, %1624
  %3616 = call float @dx.op.dot3.f32(i32 55, float %3534, float %3535, float %3615, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3617 = fcmp fast ogt float %3616, 0.000000e+00
  %3618 = fcmp fast olt float %3616, 0.000000e+00
  %3619 = zext i1 %3617 to i32
  %3620 = zext i1 %3618 to i32
  %3621 = sub nsw i32 %3619, %3620
  %3622 = sitofp i32 %3621 to float
  %3623 = fcmp fast une float %3614, %3622
  br i1 %3623, label %3624, label %3634

; <label>:3624                                    ; preds = %3585
  %3625 = fmul fast float %3607, %3603
  %3626 = fmul fast float %3607, %3602
  %3627 = fmul fast float %3607, %3601
  %3628 = fmul fast float %3627, %3627
  %3629 = fmul fast float %3626, %3626
  %3630 = fadd fast float %3628, %3629
  %3631 = fmul fast float %3625, %3625
  %3632 = fadd fast float %3630, %3631
  %3633 = call float @dx.op.unary.f32(i32 24, float %3632)  ; Sqrt(value)
  br label %3646

; <label>:3634                                    ; preds = %3585
  %3635 = icmp slt i32 %3613, 0
  br i1 %3635, label %3636, label %3646

; <label>:3636                                    ; preds = %3634
  %3637 = fsub fast float %105, %3523
  %3638 = fsub fast float %106, %3524
  %3639 = fsub fast float %107, %3597
  %3640 = fmul fast float %3637, %3637
  %3641 = fmul fast float %3638, %3638
  %3642 = fadd fast float %3640, %3641
  %3643 = fmul fast float %3639, %3639
  %3644 = fadd fast float %3642, %3643
  %3645 = call float @dx.op.unary.f32(i32 24, float %3644)  ; Sqrt(value)
  br label %3646

; <label>:3646                                    ; preds = %3636, %3634, %3624
  %3647 = phi float [ %3633, %3624 ], [ %3645, %3636 ], [ 0.000000e+00, %3634 ]
  %3648 = and i1 %3592, %3590
  %3649 = fsub fast float -0.000000e+00, %3647
  %3650 = select i1 %3648, float -0.000000e+00, float %3649
  %3651 = fmul fast float %1625, 0x3FF7154760000000
  %3652 = fmul fast float %3651, %3650
  %3653 = fmul fast float %1626, 0x3FF7154760000000
  %3654 = fmul fast float %3653, %3650
  %3655 = fmul fast float %1627, 0x3FF7154760000000
  %3656 = fmul fast float %3655, %3650
  %3657 = call float @dx.op.unary.f32(i32 21, float %3652)  ; Exp(value)
  %3658 = call float @dx.op.unary.f32(i32 21, float %3654)  ; Exp(value)
  %3659 = call float @dx.op.unary.f32(i32 21, float %3656)  ; Exp(value)
  %3660 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3661 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3662 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3663 = fmul fast float %3586, %3660
  %3664 = fmul fast float %3587, %3661
  %3665 = fmul fast float %3588, %3662
  %3666 = fsub fast float %3540, %1824
  %3667 = fsub fast float %3541, %1823
  %3668 = fsub fast float %3542, %1822
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3666, float %3667, float %3668, float %3666, float %3667, float %3668)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = call float @dx.op.unary.f32(i32 25, float %3669)  ; Rsqrt(value)
  %3671 = fmul fast float %3670, %3666
  %3672 = fmul fast float %3670, %3667
  %3673 = fmul fast float %3670, %3668
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3541, float %3542, float %1831, float %1832, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = call float @dx.op.dot3.f32(i32 55, float %1821, float %1820, float %1819, float %3671, float %3672, float %3673)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3677 = fmul fast float %3676, %3547
  %3678 = bitcast i32 %1850 to float
  %3679 = fmul fast float %3676, %3676
  %3680 = fmul fast float %3679, %3678
  %3681 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3682 = fmul fast float %3677, %3681
  %3683 = bitcast float %3537 to i32
  %3684 = ashr i32 %3683, 1
  %3685 = sub nsw i32 1597463007, %3684
  %3686 = bitcast i32 %3685 to float
  %3687 = fmul fast float %3686, %3534
  %3688 = fmul fast float %3686, %3535
  %3689 = fmul fast float %3686, %3536
  %3690 = fsub fast float %3687, %1824
  %3691 = fsub fast float %3688, %1823
  %3692 = fsub fast float %3689, %1822
  %3693 = call float @dx.op.dot3.f32(i32 55, float %3690, float %3691, float %3692, float %3690, float %3691, float %3692)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = call float @dx.op.unary.f32(i32 25, float %3693)  ; Rsqrt(value)
  %3695 = fmul fast float %3690, %3694
  %3696 = fmul fast float %3691, %3694
  %3697 = fmul fast float %3692, %3694
  %3698 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float %3695, float %3696, float %3697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3699 = fmul fast float %3698, %3698
  %3700 = call float @dx.op.unary.f32(i32 6, float %3674)  ; FAbs(value)
  %3701 = fsub fast float 1.000000e+00, %1834
  %3702 = call float @dx.op.binary.f32(i32 35, float %3701, float 0x3F847AE140000000)  ; FMax(a,b)
  %3703 = fmul fast float %3702, %3702
  %3704 = fmul fast float %3703, %3703
  %3705 = fsub fast float 1.000000e+00, %3704
  %3706 = fmul fast float %1838, %1838
  %3707 = fmul fast float %3706, %3705
  %3708 = fadd fast float %3707, %3704
  %3709 = bitcast float %3708 to i32
  %3710 = ashr i32 %3709, 1
  %3711 = add nsw i32 %3710, 532487669
  %3712 = bitcast i32 %3711 to float
  %3713 = fadd fast float %3712, %1838
  %3714 = fmul fast float %3704, %3699
  %3715 = fsub fast float 1.000000e+00, %3699
  %3716 = fadd fast float %3715, %3714
  %3717 = fmul fast float %3700, %3700
  %3718 = fmul fast float %3717, %3705
  %3719 = fadd fast float %3718, %3704
  %3720 = bitcast float %3719 to i32
  %3721 = ashr i32 %3720, 1
  %3722 = add nsw i32 %3721, 532487669
  %3723 = bitcast i32 %3722 to float
  %3724 = fadd fast float %3723, %3700
  %3725 = fmul fast float %3716, %3716
  %3726 = fmul fast float %3725, %3713
  %3727 = fmul fast float %3726, %3724
  %3728 = fdiv fast float 1.000000e+00, %3727
  %3729 = bitcast float %3704 to i32
  %3730 = sitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3FE7F73180000000
  %3732 = fadd fast float %3731, 0x41AFE27C40000000
  %3733 = fptosi float %3732 to i32
  %3734 = bitcast i32 %3733 to float
  %3735 = fmul fast float %3520, 0x3FD80E9D60000000
  %3736 = fmul fast float %3735, %3686
  %3737 = fadd fast float %3734, %3736
  %3738 = bitcast float %3737 to i32
  %3739 = sub nsw i32 2129859010, %3738
  %3740 = bitcast i32 %3739 to float
  %3741 = fmul fast float %3704, %3728
  %3742 = fmul fast float %3741, %3734
  %3743 = fmul fast float %3742, %3740
  %3744 = call float @dx.op.unary.f32(i32 6, float %3675)  ; FAbs(value)
  %3745 = fsub fast float 1.000000e+00, %3744
  %3746 = bitcast float %3745 to i32
  %3747 = sitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 5.000000e+00
  %3749 = fadd fast float %3748, 0xC1EFBF8940000000
  %3750 = fptosi float %3749 to i32
  %3751 = bitcast i32 %3750 to float
  %3752 = fsub fast float 1.000000e+00, %1825
  %3753 = fsub fast float 1.000000e+00, %1826
  %3754 = fsub fast float 1.000000e+00, %1836
  %3755 = fmul fast float %3751, %3752
  %3756 = fmul fast float %3751, %3753
  %3757 = fmul fast float %3751, %3754
  %3758 = fadd fast float %3755, %1825
  %3759 = fadd fast float %3756, %1826
  %3760 = fadd fast float %3757, %1836
  br i1 %3115, label %3761, label %3784

; <label>:3761                                    ; preds = %3646
  %3762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1202, float %3744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = fadd fast float %3763, -5.000000e-01
  %3767 = fadd fast float %3764, -5.000000e-01
  %3768 = fadd fast float %3765, -5.000000e-01
  %3769 = fmul fast float %1825, 4.000000e+00
  %3770 = fmul fast float %3769, %3752
  %3771 = fmul fast float %3770, %3766
  %3772 = fmul fast float %1826, 4.000000e+00
  %3773 = fmul fast float %3772, %3753
  %3774 = fmul fast float %3773, %3767
  %3775 = fmul fast float %1836, 4.000000e+00
  %3776 = fmul fast float %3775, %3754
  %3777 = fmul fast float %3776, %3768
  %3778 = fadd fast float %3771, %3758
  %3779 = fadd fast float %3774, %3759
  %3780 = fadd fast float %3777, %3760
  %3781 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3782 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3783 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  br label %3784

; <label>:3784                                    ; preds = %3761, %3646
  %3785 = phi float [ %3781, %3761 ], [ %3758, %3646 ]
  %3786 = phi float [ %3782, %3761 ], [ %3759, %3646 ]
  %3787 = phi float [ %3783, %3761 ], [ %3760, %3646 ]
  %3788 = fmul fast float %3674, 9.843750e-01
  %3789 = fadd fast float %3788, 7.812500e-03
  %3790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3789, float %3105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 3
  %3793 = fmul fast float %3791, %1825
  %3794 = fmul fast float %3791, %1826
  %3795 = fmul fast float %3791, %1836
  %3796 = fadd fast float %3793, %3792
  %3797 = fadd fast float %3794, %3792
  %3798 = fadd fast float %3795, %3792
  br i1 %3115, label %3799, label %3822

; <label>:3799                                    ; preds = %3784
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1202, float %3674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = fadd fast float %3801, -5.000000e-01
  %3805 = fadd fast float %3802, -5.000000e-01
  %3806 = fadd fast float %3803, -5.000000e-01
  %3807 = fmul fast float %1825, 4.000000e+00
  %3808 = fmul fast float %3807, %3752
  %3809 = fmul fast float %3808, %3804
  %3810 = fmul fast float %1826, 4.000000e+00
  %3811 = fmul fast float %3810, %3753
  %3812 = fmul fast float %3811, %3805
  %3813 = fmul fast float %1836, 4.000000e+00
  %3814 = fmul fast float %3813, %3754
  %3815 = fmul fast float %3814, %3806
  %3816 = fadd fast float %3809, %3796
  %3817 = fadd fast float %3812, %3797
  %3818 = fadd fast float %3815, %3798
  %3819 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3820 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3821 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  br label %3822

; <label>:3822                                    ; preds = %3799, %3784
  %3823 = phi float [ %3819, %3799 ], [ %3796, %3784 ]
  %3824 = phi float [ %3820, %3799 ], [ %3797, %3784 ]
  %3825 = phi float [ %3821, %3799 ], [ %3798, %3784 ]
  %3826 = call float @dx.op.binary.f32(i32 35, float %3824, float %3825)  ; FMax(a,b)
  %3827 = call float @dx.op.binary.f32(i32 35, float %3823, float %3826)  ; FMax(a,b)
  %3828 = fsub fast float 1.000000e+00, %3827
  %3829 = fmul fast float %3785, %3743
  %3830 = fmul fast float %3786, %3743
  %3831 = fmul fast float %3787, %3743
  %3832 = fsub fast float 1.000000e+00, %3675
  %3833 = bitcast float %3832 to i32
  %3834 = sitofp i32 %3833 to float
  %3835 = fmul fast float %3834, 5.000000e+00
  %3836 = fadd fast float %3835, 0xC1EFBF8940000000
  %3837 = fptosi float %3836 to i32
  %3838 = bitcast i32 %3837 to float
  %3839 = fmul fast float %3838, %1201
  %3840 = fmul fast float %3828, %3839
  %3841 = fmul fast float %3840, %3165
  %3842 = fmul fast float %3840, %3166
  %3843 = fmul fast float %3840, %3167
  %3844 = fadd fast float %3841, %3829
  %3845 = fadd fast float %3842, %3830
  %3846 = fadd fast float %3843, %3831
  %3847 = fmul fast float %3663, %1222
  %3848 = fmul fast float %3847, %3682
  %3849 = fmul fast float %3848, %3828
  %3850 = fmul fast float %3664, %1222
  %3851 = fmul fast float %3850, %3682
  %3852 = fmul fast float %3851, %3828
  %3853 = fmul fast float %3665, %1222
  %3854 = fmul fast float %3853, %3682
  %3855 = fmul fast float %3854, %3828
  %3856 = fadd fast float %3849, %3502
  %3857 = fadd fast float %3852, %3503
  %3858 = fadd fast float %3855, %3504
  %3859 = fmul fast float %3848, %3844
  %3860 = fmul fast float %3851, %3845
  %3861 = fmul fast float %3854, %3846
  %3862 = fadd fast float %3859, %3499
  %3863 = fadd fast float %3860, %3500
  %3864 = fadd fast float %3861, %3501
  br label %3577

; <label>:3865                                    ; preds = %3577
  br label %3866

; <label>:3866                                    ; preds = %3865, %3465
  %3867 = phi float [ %3467, %3465 ], [ %3578, %3865 ]
  %3868 = phi float [ %3468, %3465 ], [ %3579, %3865 ]
  %3869 = phi float [ %3469, %3465 ], [ %3580, %3865 ]
  %3870 = phi float [ %3470, %3465 ], [ %3581, %3865 ]
  %3871 = phi float [ %3471, %3465 ], [ %3582, %3865 ]
  %3872 = phi float [ %3472, %3465 ], [ %3583, %3865 ]
  %3873 = add i32 %3466, 1
  %3874 = icmp ugt i32 %3873, %3462
  br i1 %3874, label %3875, label %3465

; <label>:3875                                    ; preds = %3866
  br label %3876

; <label>:3876                                    ; preds = %3875, %3441, %3431
  %3877 = phi float [ %3432, %3431 ], [ %3432, %3441 ], [ %3867, %3875 ]
  %3878 = phi float [ %3433, %3431 ], [ %3433, %3441 ], [ %3868, %3875 ]
  %3879 = phi float [ %3434, %3431 ], [ %3434, %3441 ], [ %3869, %3875 ]
  %3880 = phi float [ %3435, %3431 ], [ %3435, %3441 ], [ %3870, %3875 ]
  %3881 = phi float [ %3436, %3431 ], [ %3436, %3441 ], [ %3871, %3875 ]
  %3882 = phi float [ %3437, %3431 ], [ %3437, %3441 ], [ %3872, %3875 ]
  %3883 = call float @dx.op.unary.f32(i32 24, float %1828)  ; Sqrt(value)
  %3884 = call float @dx.op.unary.f32(i32 24, float %1829)  ; Sqrt(value)
  %3885 = call float @dx.op.unary.f32(i32 24, float %1830)  ; Sqrt(value)
  %3886 = fmul fast float %3883, %3880
  %3887 = fmul fast float %3884, %3881
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  br i1 %176, label %3890, label %3910

; <label>:3890                                    ; preds = %3876
  %3891 = fadd fast float %3882, %1199
  %3892 = fmul fast float %3891, %1200
  %3893 = fsub fast float 1.000000e+00, %1200
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 3
  %3897 = fmul fast float %3896, %3894
  %3898 = fadd fast float %3897, %3892
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3901 = fmul fast float %3900, %3171
  %3902 = fsub fast float %3898, %3901
  %3903 = fadd fast float %3887, %3886
  %3904 = fmul fast float %3889, %3903
  %3905 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3906 = fsub fast float %3902, %3905
  %3907 = extractvalue %dx.types.CBufRet.f32 %3895, 2
  %3908 = fmul fast float %3906, %3907
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  br label %3926

; <label>:3910                                    ; preds = %3876
  %3911 = fmul fast float %3885, %3882
  %3912 = fmul fast float %3889, %3886
  %3913 = fmul fast float %3889, %3887
  %3914 = fmul fast float %3911, %3889
  %3915 = add i32 %38, 116
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = and i32 %3917, 32
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3926, label %3920

; <label>:3920                                    ; preds = %3910
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = fmul fast float %3922, 0x3FE99999A0000000
  %3924 = fadd fast float %3922, %3912
  %3925 = fadd fast float %3923, %3914
  br label %3926

; <label>:3926                                    ; preds = %3920, %3910, %3890
  %3927 = phi float [ %3904, %3890 ], [ %3924, %3920 ], [ %3912, %3910 ]
  %3928 = phi float [ %3909, %3890 ], [ %3913, %3920 ], [ %3913, %3910 ]
  %3929 = phi float [ 1.000000e+00, %3890 ], [ %3925, %3920 ], [ %3914, %3910 ]
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = fmul fast float %3931, %3878
  %3933 = fmul fast float %3931, %3879
  %3934 = fadd fast float %3878, %3877
  %3935 = select i1 %176, float %3934, float %3877
  %3936 = fmul float %3935, %3931
  %3937 = select i1 %176, float 0.000000e+00, float %3932
  %3938 = select i1 %176, float 0.000000e+00, float %3933
  %3939 = fmul fast float %3927, %3883
  %3940 = fmul fast float %3928, %3884
  %3941 = fmul fast float %3929, %3885
  %3942 = fadd fast float %3936, %3939
  %3943 = fadd fast float %3937, %3940
  %3944 = fadd fast float %3938, %3941
  %3945 = select i1 %176, float %3928, float %3943
  %3946 = select i1 %176, float %3929, float %3944
  %3947 = call float @dx.op.binary.f32(i32 36, float %3942, float 3.225500e+04)  ; FMin(a,b)
  %3948 = call float @dx.op.binary.f32(i32 36, float %3945, float 3.225500e+04)  ; FMin(a,b)
  %3949 = call float @dx.op.binary.f32(i32 36, float %3946, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3947)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3949)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!51 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
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
!67 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 5, i8 1, null}
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

