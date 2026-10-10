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
; shader hash: 195ccdaafb6dce6940ca70a76219e520
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
  br i1 %216, label %706, label %217

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
  %323 = add i32 %38, 136
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
  %346 = add i32 %38, 160
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
  %544 = add i32 %38, 140
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
  %628 = add i32 %38, 144
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
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 26624
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %691, label %668

; <label>:668                                     ; preds = %660
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 16384
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %691, label %673

; <label>:673                                     ; preds = %668
  %674 = and i32 %670, 1048576
  %675 = icmp ne i32 %674, 0
  %676 = add i32 %38, 164
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %680, %dx.types.Handle %55, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = add i32 %38, 48
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = lshr i32 %685, 24
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %682, 0x3F70101020000000
  %689 = select i1 %675, float 0x3F70101020000000, float %688
  %690 = fmul fast float %689, %687
  br label %691

; <label>:691                                     ; preds = %673, %668, %660
  %692 = phi float [ %690, %673 ], [ 0.000000e+00, %668 ], [ 0.000000e+00, %660 ]
  %693 = add i32 %38, 48
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = lshr i32 %695, 8
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = call float @dx.op.dot3.f32(i32 55, float %533, float %534, float %535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = fmul fast float %700, %701
  %703 = fadd fast float %702, %697
  %704 = fmul fast float %703, 0x3F70101020000000
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  br label %706

; <label>:706                                     ; preds = %691, %175
  %707 = phi float [ 0.000000e+00, %175 ], [ %614, %691 ]
  %708 = phi float [ 0.000000e+00, %175 ], [ %615, %691 ]
  %709 = phi float [ 0.000000e+00, %175 ], [ %661, %691 ]
  %710 = phi float [ 0.000000e+00, %175 ], [ %662, %691 ]
  %711 = phi float [ 0.000000e+00, %175 ], [ %663, %691 ]
  %712 = phi float [ 0.000000e+00, %175 ], [ %533, %691 ]
  %713 = phi float [ 0.000000e+00, %175 ], [ %534, %691 ]
  %714 = phi float [ 0.000000e+00, %175 ], [ %535, %691 ]
  %715 = phi float [ 0.000000e+00, %175 ], [ %519, %691 ]
  %716 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %691 ]
  %717 = phi float [ 0.000000e+00, %175 ], [ %613, %691 ]
  %718 = phi float [ 0.000000e+00, %175 ], [ %616, %691 ]
  %719 = phi float [ 0.000000e+00, %175 ], [ %692, %691 ]
  %720 = phi float [ 0.000000e+00, %175 ], [ %705, %691 ]
  %721 = add i32 %38, 120
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = extractvalue %dx.types.ResRet.i32 %722, 1
  %725 = bitcast i32 %723 to float
  %726 = bitcast i32 %724 to float
  %727 = fcmp fast oge float %725, 0.000000e+00
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = select i1 %727, float %725, float %729
  %731 = add i32 %38, 156
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %55, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = fmul fast float %737, %726
  %739 = fadd fast float %738, %730
  %740 = call float @dx.op.dot2.f32(i32 54, float %707, float %708, float %707, float %708)  ; Dot2(ax,ay,bx,by)
  %741 = fmul fast float %740, 0x3FE3333340000000
  %742 = fsub fast float 1.000000e+00, %741
  %743 = call float @dx.op.dot3.f32(i32 55, float %707, float %708, float %742, float %707, float %708, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = call float @dx.op.unary.f32(i32 25, float %743)  ; Rsqrt(value)
  %745 = fmul fast float %744, %707
  %746 = fmul fast float %744, %708
  %747 = fmul fast float %742, %744
  %748 = fmul fast float %747, %43
  %749 = fmul fast float %747, %44
  %750 = fmul fast float %747, %45
  %751 = fmul fast float %745, %39
  %752 = fmul fast float %745, %40
  %753 = fmul fast float %745, %41
  %754 = fadd fast float %748, %751
  %755 = fadd fast float %749, %752
  %756 = fadd fast float %750, %753
  %757 = fmul fast float %746, %69
  %758 = fmul fast float %746, %70
  %759 = fmul fast float %746, %71
  %760 = fadd fast float %754, %757
  %761 = fadd fast float %755, %758
  %762 = fadd fast float %756, %759
  %763 = call float @dx.op.dot3.f32(i32 55, float %760, float %761, float %762, float %760, float %761, float %762)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.unary.f32(i32 25, float %763)  ; Rsqrt(value)
  %765 = fmul fast float %760, %764
  %766 = fmul fast float %761, %764
  %767 = fmul fast float %762, %764
  %768 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %769 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %770 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %771 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %772 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %773 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %774 = fadd fast float %768, %105
  %775 = fadd fast float %769, %106
  %776 = fadd fast float %770, %107
  %777 = fadd fast float %771, %105
  %778 = fadd fast float %772, %106
  %779 = fadd fast float %773, %107
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %787 = fmul fast float %781, %58
  %788 = fmul fast float %787, %785
  %789 = fmul fast float %782, %59
  %790 = fmul fast float %789, %786
  %791 = fptoui float %788 to i32
  %792 = fptoui float %790 to i32
  %793 = fadd fast float %781, -1.000000e+00
  %794 = fadd fast float %782, -1.000000e+00
  %795 = fptoui float %793 to i32
  %796 = fptoui float %794 to i32
  %797 = call i32 @dx.op.binary.i32(i32 40, i32 %791, i32 %795)  ; UMin(a,b)
  %798 = call i32 @dx.op.binary.i32(i32 40, i32 %792, i32 %796)  ; UMin(a,b)
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %801 = extractvalue %dx.types.CBufRet.f32 %799, 3
  %802 = fmul fast float %800, %53
  %803 = fsub fast float %802, %801
  %804 = fadd fast float %783, -1.000000e+00
  %805 = call float @dx.op.binary.f32(i32 36, float %803, float %804)  ; FMin(a,b)
  %806 = fptoui float %805 to i32
  %807 = fptoui float %781 to i32
  %808 = fptoui float %782 to i32
  %809 = mul i32 %806, %808
  %810 = add i32 %809, %798
  %811 = mul i32 %810, %807
  %812 = add i32 %811, %797
  %813 = shl i32 %812, 2
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 1023
  %817 = lshr i32 %815, 10
  %818 = icmp eq i32 %816, 0
  br i1 %818, label %1244, label %819

; <label>:819                                     ; preds = %706
  %820 = and i32 %815, 1023
  br label %821

; <label>:821                                     ; preds = %947, %819
  %822 = phi float [ %948, %947 ], [ 0.000000e+00, %819 ]
  %823 = phi float [ %949, %947 ], [ %739, %819 ]
  %824 = phi float [ %950, %947 ], [ %720, %819 ]
  %825 = phi float [ %951, %947 ], [ %719, %819 ]
  %826 = phi float [ %952, %947 ], [ 0.000000e+00, %819 ]
  %827 = phi float [ %953, %947 ], [ %709, %819 ]
  %828 = phi float [ %954, %947 ], [ %710, %819 ]
  %829 = phi float [ %955, %947 ], [ %711, %819 ]
  %830 = phi float [ %956, %947 ], [ %765, %819 ]
  %831 = phi float [ %957, %947 ], [ %766, %819 ]
  %832 = phi float [ %958, %947 ], [ %767, %819 ]
  %833 = phi float [ %959, %947 ], [ %718, %819 ]
  %834 = phi float [ %960, %947 ], [ %717, %819 ]
  %835 = phi float [ %961, %947 ], [ 0.000000e+00, %819 ]
  %836 = phi float [ %962, %947 ], [ %715, %819 ]
  %837 = phi float [ %963, %947 ], [ %712, %819 ]
  %838 = phi float [ %964, %947 ], [ %713, %819 ]
  %839 = phi float [ %965, %947 ], [ %714, %819 ]
  %840 = phi i32 [ %897, %947 ], [ 0, %819 ]
  %841 = add nuw nsw i32 %840, %817
  %842 = shl i32 %841, 2
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = shl i32 %844, 8
  %846 = or i32 %845, 48
  %847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = extractvalue %dx.types.ResRet.f32 %847, 1
  %850 = extractvalue %dx.types.ResRet.f32 %847, 2
  %851 = extractvalue %dx.types.ResRet.f32 %847, 3
  %852 = or i32 %845, 64
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = extractvalue %dx.types.ResRet.i32 %853, 1
  %856 = or i32 %845, 80
  %857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 2
  %859 = extractvalue %dx.types.ResRet.f32 %857, 3
  %860 = or i32 %845, 96
  %861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = extractvalue %dx.types.ResRet.f32 %861, 1
  %864 = extractvalue %dx.types.ResRet.f32 %861, 2
  %865 = extractvalue %dx.types.ResRet.f32 %861, 3
  %866 = or i32 %845, 112
  %867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 2
  %869 = or i32 %845, 128
  %870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.f32 %870, 0
  %872 = extractvalue %dx.types.ResRet.f32 %870, 1
  %873 = extractvalue %dx.types.ResRet.f32 %870, 2
  %874 = extractvalue %dx.types.ResRet.f32 %870, 3
  %875 = or i32 %845, 144
  %876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = extractvalue %dx.types.ResRet.f32 %876, 1
  %879 = extractvalue %dx.types.ResRet.f32 %876, 2
  %880 = extractvalue %dx.types.ResRet.f32 %876, 3
  %881 = or i32 %845, 160
  %882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = extractvalue %dx.types.ResRet.f32 %882, 3
  %887 = or i32 %845, 192
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = or i32 %845, 208
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = or i32 %845, 248
  %894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = add nuw nsw i32 %840, 1
  %898 = bitcast float %851 to i32
  %899 = and i32 %898, 2560
  %900 = icmp eq i32 %899, 0
  %901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = extractvalue %dx.types.ResRet.f32 %901, 3
  %906 = call float @dx.op.dot4.f32(i32 56, float %902, float %903, float %904, float %905, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %907 = or i32 %845, 16
  %908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = extractvalue %dx.types.ResRet.f32 %908, 3
  %913 = call float @dx.op.dot4.f32(i32 56, float %909, float %910, float %911, float %912, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %914 = or i32 %845, 32
  %915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = extractvalue %dx.types.ResRet.f32 %915, 3
  %920 = call float @dx.op.dot4.f32(i32 56, float %916, float %917, float %918, float %919, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %921 = call float @dx.op.unary.f32(i32 27, float %906)  ; Round_ni(value)
  %922 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %923 = call float @dx.op.unary.f32(i32 27, float %913)  ; Round_ni(value)
  %924 = call float @dx.op.unary.f32(i32 6, float %923)  ; FAbs(value)
  %925 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %926 = call float @dx.op.unary.f32(i32 27, float %925)  ; Round_ni(value)
  %927 = fadd fast float %924, %922
  %928 = fadd fast float %927, %926
  %929 = fcmp fast oeq float %928, 0.000000e+00
  %930 = call float @dx.op.dot4.f32(i32 56, float %902, float %903, float %904, float %905, float %774, float %775, float %776, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %931 = call float @dx.op.dot4.f32(i32 56, float %909, float %910, float %911, float %912, float %774, float %775, float %776, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %932 = call float @dx.op.dot4.f32(i32 56, float %902, float %903, float %904, float %905, float %777, float %778, float %779, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %933 = call float @dx.op.dot4.f32(i32 56, float %909, float %910, float %911, float %912, float %777, float %778, float %779, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %934 = fsub fast float %930, %906
  %935 = fsub fast float %932, %906
  %936 = fsub fast float %931, %913
  %937 = fsub fast float %933, %913
  %938 = call float @dx.op.dot3.f32(i32 55, float %848, float %849, float %850, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %941 = fadd fast float %940, %938
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %944 = fcmp fast ogt float %942, %943
  %945 = and i1 %929, %944
  %946 = and i1 %900, %945
  br i1 %946, label %967, label %947

; <label>:947                                     ; preds = %1230, %1048, %967, %821
  %948 = phi float [ %822, %967 ], [ %1051, %1048 ], [ %1051, %1230 ], [ %822, %821 ]
  %949 = phi float [ %823, %967 ], [ %823, %1048 ], [ %1205, %1230 ], [ %823, %821 ]
  %950 = phi float [ %824, %967 ], [ %824, %1048 ], [ %1203, %1230 ], [ %824, %821 ]
  %951 = phi float [ %825, %967 ], [ %825, %1048 ], [ %1175, %1230 ], [ %825, %821 ]
  %952 = phi float [ %826, %967 ], [ %826, %1048 ], [ %1173, %1230 ], [ %826, %821 ]
  %953 = phi float [ %827, %967 ], [ %827, %1048 ], [ %1240, %1230 ], [ %827, %821 ]
  %954 = phi float [ %828, %967 ], [ %828, %1048 ], [ %1241, %1230 ], [ %828, %821 ]
  %955 = phi float [ %829, %967 ], [ %829, %1048 ], [ %1242, %1230 ], [ %829, %821 ]
  %956 = phi float [ %830, %967 ], [ %830, %1048 ], [ %1154, %1230 ], [ %830, %821 ]
  %957 = phi float [ %831, %967 ], [ %831, %1048 ], [ %1155, %1230 ], [ %831, %821 ]
  %958 = phi float [ %832, %967 ], [ %832, %1048 ], [ %1156, %1230 ], [ %832, %821 ]
  %959 = phi float [ %833, %967 ], [ %833, %1048 ], [ %1183, %1230 ], [ %833, %821 ]
  %960 = phi float [ %834, %967 ], [ %834, %1048 ], [ %1180, %1230 ], [ %834, %821 ]
  %961 = phi float [ %835, %967 ], [ %835, %1048 ], [ %1177, %1230 ], [ %835, %821 ]
  %962 = phi float [ %836, %967 ], [ %836, %1048 ], [ %1171, %1230 ], [ %836, %821 ]
  %963 = phi float [ %837, %967 ], [ %837, %1048 ], [ %1166, %1230 ], [ %837, %821 ]
  %964 = phi float [ %838, %967 ], [ %838, %1048 ], [ %1167, %1230 ], [ %838, %821 ]
  %965 = phi float [ %839, %967 ], [ %839, %1048 ], [ %1168, %1230 ], [ %839, %821 ]
  %966 = icmp eq i32 %897, %820
  br i1 %966, label %1243, label %821

; <label>:967                                     ; preds = %821
  %968 = extractvalue %dx.types.ResRet.f32 %867, 3
  %969 = extractvalue %dx.types.ResRet.f32 %867, 1
  %970 = extractvalue %dx.types.ResRet.f32 %867, 0
  %971 = extractvalue %dx.types.ResRet.f32 %857, 1
  %972 = extractvalue %dx.types.ResRet.f32 %857, 0
  %973 = extractvalue %dx.types.ResRet.i32 %853, 3
  %974 = extractvalue %dx.types.ResRet.i32 %853, 2
  %975 = add i32 %973, 0
  %976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %975, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %978 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %976, %dx.types.Handle %977, float %906, float %913, float undef, float undef, i32 0, i32 0, i32 undef, float %934, float %936, float undef, float %935, float %937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = fmul fast float %979, %972
  %981 = fadd fast float %980, %971
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  %983 = fmul fast float %906, %862
  %984 = call float @dx.op.tertiary.f32(i32 46, float %863, float %913, float %983)  ; FMad(a,b,c)
  %985 = fadd fast float %984, %970
  %986 = fmul fast float %906, %864
  %987 = call float @dx.op.tertiary.f32(i32 46, float %865, float %913, float %986)  ; FMad(a,b,c)
  %988 = fadd fast float %987, %969
  %989 = fmul fast float %934, %862
  %990 = call float @dx.op.tertiary.f32(i32 46, float %863, float %936, float %989)  ; FMad(a,b,c)
  %991 = fmul fast float %934, %864
  %992 = call float @dx.op.tertiary.f32(i32 46, float %865, float %936, float %991)  ; FMad(a,b,c)
  %993 = fmul fast float %935, %862
  %994 = call float @dx.op.tertiary.f32(i32 46, float %863, float %937, float %993)  ; FMad(a,b,c)
  %995 = fmul fast float %935, %864
  %996 = call float @dx.op.tertiary.f32(i32 46, float %865, float %937, float %995)  ; FMad(a,b,c)
  %997 = add i32 %974, 0
  %998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %997, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %998, %dx.types.Handle %977, float %985, float %988, float undef, float undef, i32 0, i32 0, i32 undef, float %990, float %992, float undef, float %994, float %996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = and i32 %898, 1024
  %1002 = icmp ne i32 %1001, 0
  %1003 = fcmp fast ogt float %1000, 0x3FE0101020000000
  %1004 = uitofp i1 %1003 to float
  %1005 = select i1 %1002, float %1004, float %1000
  %1006 = and i32 %898, 8192
  %1007 = icmp ne i32 %1006, 0
  %1008 = select i1 %1007, float %968, float 1.000000e+00
  %1009 = fmul fast float %906, 2.000000e+00
  %1010 = fadd fast float %1009, -1.000000e+00
  %1011 = call float @dx.op.unary.f32(i32 6, float %1010)  ; FAbs(value)
  %1012 = fmul fast float %1011, %895
  %1013 = fsub fast float %1012, %895
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fmul fast float %913, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1018 = fmul fast float %1017, %896
  %1019 = fsub fast float %1018, %896
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = fmul fast float %925, %858
  %1022 = fsub fast float %1021, %858
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1024 = fmul fast float %982, %1008
  %1025 = fmul fast float %1024, %979
  %1026 = fmul fast float %1025, %1014
  %1027 = fmul fast float %1026, %1005
  %1028 = fmul fast float %1027, %1020
  %1029 = fmul fast float %1028, %1023
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1033 = fsub fast float %942, %1032
  %1034 = fmul fast float %1033, %1031
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = fmul fast float %1029, %859
  %1037 = fadd fast float %1029, %859
  %1038 = fmul fast float %1037, %868
  %1039 = fsub fast float %1038, %868
  %1040 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1041 = and i32 %898, 128
  %1042 = icmp ne i32 %1041, 0
  %1043 = select i1 %1042, float %1040, float %1036
  %1044 = fmul fast float %1043, %1035
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = fcmp fast ugt float %1044, %1046
  br i1 %1047, label %1048, label %947

; <label>:1048                                    ; preds = %967
  %1049 = select i1 %1007, float %1044, float 0.000000e+00
  %1050 = fadd fast float %1049, %822
  %1051 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  br i1 %1007, label %947, label %1052

; <label>:1052                                    ; preds = %1048
  %1053 = and i32 %898, 4
  %1054 = and i32 %898, 8
  %1055 = add i32 %854, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1055, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1056, %dx.types.Handle %1057, float %985, float %988, float undef, float undef, i32 0, i32 0, i32 undef, float %990, float %992, float undef, float %994, float %996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.f32 %1058, 3
  %1063 = bitcast float %880 to i32
  %1064 = and i32 %1063, 255
  %1065 = uitofp i32 %1064 to float
  %1066 = lshr i32 %1063, 8
  %1067 = and i32 %1066, 255
  %1068 = uitofp i32 %1067 to float
  %1069 = fmul fast float %1062, %1065
  %1070 = fadd fast float %1069, %1068
  %1071 = fmul fast float %1070, 0x3F70101000000000
  %1072 = add i32 %855, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1072, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1073, %dx.types.Handle %1057, float %985, float %988, float undef, float undef, i32 0, i32 0, i32 undef, float %990, float %992, float undef, float %994, float %996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1079 = bitcast float %874 to i32
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = lshr i32 %1079, 8
  %1083 = and i32 %1082, 255
  %1084 = uitofp i32 %1083 to float
  %1085 = lshr i32 %1079, 16
  %1086 = and i32 %1085, 255
  %1087 = uitofp i32 %1086 to float
  %1088 = fmul fast float %1087, 0x3F70101000000000
  %1089 = fmul fast float %1075, %1081
  %1090 = fadd fast float %1089, %1084
  %1091 = fmul fast float %1090, 0x3F70101000000000
  %1092 = fadd fast float %1076, -5.000000e-01
  %1093 = fadd fast float %1078, -5.000000e-01
  %1094 = fmul fast float %1092, %1088
  %1095 = fmul fast float %1093, %1088
  %1096 = fadd fast float %1094, 5.000000e-01
  %1097 = fadd fast float %1095, 5.000000e-01
  %1098 = fmul fast float %1059, %883
  %1099 = fmul fast float %1060, %884
  %1100 = fmul fast float %1061, %885
  %1101 = fmul fast float %1096, 2.000000e+00
  %1102 = fadd fast float %1101, -1.000000e+00
  %1103 = fmul fast float %1097, 2.000000e+00
  %1104 = fadd fast float %1103, -1.000000e+00
  %1105 = fadd fast float %1102, %1104
  %1106 = fmul fast float %1105, 5.000000e-01
  %1107 = fsub fast float %1102, %1104
  %1108 = fmul fast float %1107, 5.000000e-01
  %1109 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1110 = fsub fast float 1.000000e+00, %1109
  %1111 = call float @dx.op.unary.f32(i32 6, float %1108)  ; FAbs(value)
  %1112 = fsub fast float %1110, %1111
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1108, float %1112, float %1106, float %1108, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call float @dx.op.unary.f32(i32 25, float %1113)  ; Rsqrt(value)
  %1115 = fmul fast float %1106, %1114
  %1116 = fmul fast float %1108, %1114
  %1117 = fmul fast float %1114, %1112
  %1118 = fmul fast float %1117, %848
  %1119 = fmul fast float %1117, %849
  %1120 = fmul fast float %1117, %850
  %1121 = fmul fast float %1115, %871
  %1122 = fmul fast float %1115, %872
  %1123 = fmul fast float %1115, %873
  %1124 = fadd fast float %1121, %1118
  %1125 = fadd fast float %1122, %1119
  %1126 = fadd fast float %1123, %1120
  %1127 = fmul fast float %1116, %877
  %1128 = fmul fast float %1116, %878
  %1129 = fmul fast float %1116, %879
  %1130 = fadd fast float %1124, %1127
  %1131 = fadd fast float %1125, %1128
  %1132 = fadd fast float %1126, %1129
  %1133 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1131, float %1132, float %1130, float %1131, float %1132)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = call float @dx.op.unary.f32(i32 25, float %1133)  ; Rsqrt(value)
  %1135 = fmul fast float %1130, %1134
  %1136 = fmul fast float %1131, %1134
  %1137 = fmul fast float %1132, %1134
  %1138 = icmp ne i32 %1054, 0
  %1139 = select i1 %1138, float 1.000000e+00, float 0.000000e+00
  %1140 = fmul fast float %1044, %1139
  %1141 = and i32 %898, 1
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1143, label %1147

; <label>:1143                                    ; preds = %1052
  %1144 = fsub fast float %1135, %830
  %1145 = fsub fast float %1136, %831
  %1146 = fsub fast float %1137, %832
  br label %1147

; <label>:1147                                    ; preds = %1143, %1052
  %1148 = phi float [ %1144, %1143 ], [ %1135, %1052 ]
  %1149 = phi float [ %1145, %1143 ], [ %1136, %1052 ]
  %1150 = phi float [ %1146, %1143 ], [ %1137, %1052 ]
  %1151 = fmul float %1150, %1140
  %1152 = fmul float %1149, %1140
  %1153 = fmul float %1148, %1140
  %1154 = fadd fast float %1153, %830
  %1155 = fadd fast float %1152, %831
  %1156 = fadd fast float %1151, %832
  %1157 = icmp ne i32 %1053, 0
  %1158 = select i1 %1157, float 1.000000e+00, float 0.000000e+00
  %1159 = fmul fast float %1044, %1158
  %1160 = fsub fast float %1098, %837
  %1161 = fsub fast float %1099, %838
  %1162 = fsub fast float %1100, %839
  %1163 = fmul fast float %1160, %1159
  %1164 = fmul fast float %1161, %1159
  %1165 = fmul fast float %1162, %1159
  %1166 = fadd fast float %1163, %837
  %1167 = fadd fast float %1164, %838
  %1168 = fadd fast float %1165, %839
  %1169 = fsub fast float %1071, %836
  %1170 = fmul fast float %1169, %1159
  %1171 = fadd fast float %1170, %836
  %1172 = fmul fast float %1159, %826
  %1173 = fsub fast float %826, %1172
  %1174 = fmul fast float %1159, %825
  %1175 = fsub fast float %825, %1174
  %1176 = fadd fast float %1044, %835
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = fsub fast float %1091, %834
  %1179 = fmul fast float %1178, %1140
  %1180 = fadd fast float %1179, %834
  %1181 = fsub fast float %1077, %833
  %1182 = fmul fast float %1181, %1140
  %1183 = fadd fast float %1182, %833
  %1184 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1099, float %1100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = fmul fast float %1187, %1184
  %1189 = fadd fast float %1188, %1186
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = bitcast float %886 to i32
  %1192 = and i32 %1191, 65535
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = lshr i32 %1191, 16
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = fcmp fast oge float %1193, 0.000000e+00
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = select i1 %1196, float %1193, float %1198
  %1200 = fadd fast float %1199, %1195
  %1201 = fsub fast float %1190, %824
  %1202 = fmul fast float %1201, %1044
  %1203 = fadd fast float %1202, %824
  %1204 = fmul fast float %1200, %1044
  %1205 = call float @dx.op.binary.f32(i32 35, float %823, float %1204)  ; FMax(a,b)
  %1206 = and i32 %898, 16
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1230, label %1208

; <label>:1208                                    ; preds = %1147
  %1209 = bitcast float %892 to i32
  %1210 = add i32 %889, 0
  %1211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1210, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1211, %dx.types.Handle %1057, float %985, float %988, float undef, float undef, i32 0, i32 0, i32 undef, float %990, float %992, float undef, float %994, float %996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = and i32 %1209, 65535
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = fmul fast float %1213, %883
  %1219 = fmul fast float %1214, %884
  %1220 = fmul fast float %1215, %885
  %1221 = and i32 %898, 16384
  %1222 = icmp ne i32 %1221, 0
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = select i1 %1222, float %1224, float 1.000000e+00
  %1226 = fmul fast float %1225, %1217
  %1227 = fmul fast float %1218, %1226
  %1228 = fmul fast float %1219, %1226
  %1229 = fmul fast float %1220, %1226
  br label %1230

; <label>:1230                                    ; preds = %1208, %1147
  %1231 = phi float [ %1227, %1208 ], [ 0.000000e+00, %1147 ]
  %1232 = phi float [ %1228, %1208 ], [ 0.000000e+00, %1147 ]
  %1233 = phi float [ %1229, %1208 ], [ 0.000000e+00, %1147 ]
  %1234 = fsub fast float %1231, %827
  %1235 = fsub fast float %1232, %828
  %1236 = fsub fast float %1233, %829
  %1237 = fmul fast float %1234, %1044
  %1238 = fmul fast float %1235, %1044
  %1239 = fmul fast float %1236, %1044
  %1240 = fadd fast float %1237, %827
  %1241 = fadd fast float %1238, %828
  %1242 = fadd fast float %1239, %829
  br label %947

; <label>:1243                                    ; preds = %947
  br label %1244

; <label>:1244                                    ; preds = %1243, %706
  %1245 = phi float [ 0.000000e+00, %706 ], [ %948, %1243 ]
  %1246 = phi float [ %739, %706 ], [ %949, %1243 ]
  %1247 = phi float [ %720, %706 ], [ %950, %1243 ]
  %1248 = phi float [ %719, %706 ], [ %951, %1243 ]
  %1249 = phi float [ 0.000000e+00, %706 ], [ %952, %1243 ]
  %1250 = phi float [ %709, %706 ], [ %953, %1243 ]
  %1251 = phi float [ %710, %706 ], [ %954, %1243 ]
  %1252 = phi float [ %711, %706 ], [ %955, %1243 ]
  %1253 = phi float [ %765, %706 ], [ %956, %1243 ]
  %1254 = phi float [ %766, %706 ], [ %957, %1243 ]
  %1255 = phi float [ %767, %706 ], [ %958, %1243 ]
  %1256 = phi float [ %718, %706 ], [ %959, %1243 ]
  %1257 = phi float [ %717, %706 ], [ %960, %1243 ]
  %1258 = phi float [ 0.000000e+00, %706 ], [ %961, %1243 ]
  %1259 = phi float [ %715, %706 ], [ %962, %1243 ]
  %1260 = phi float [ %712, %706 ], [ %963, %1243 ]
  %1261 = phi float [ %713, %706 ], [ %964, %1243 ]
  %1262 = phi float [ %714, %706 ], [ %965, %1243 ]
  %1263 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1254, float %1255, float %1253, float %1254, float %1255)  ; Dot3(ax,ay,az,bx,by,bz)
  %1264 = call float @dx.op.unary.f32(i32 25, float %1263)  ; Rsqrt(value)
  %1265 = fmul fast float %1264, %1253
  %1266 = fmul fast float %1264, %1254
  %1267 = fmul fast float %1264, %1255
  %1268 = fadd fast float %1258, %716
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1270 = call float @dx.op.dot3.f32(i32 55, float %1265, float %1266, float %1267, float %1265, float %1266, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = call float @dx.op.unary.f32(i32 25, float %1270)  ; Rsqrt(value)
  %1272 = fmul fast float %1271, %1265
  %1273 = fmul fast float %1271, %1266
  %1274 = fmul fast float %1271, %1267
  %1275 = fadd fast float %1259, 0xBFB99999A0000000
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1277 = fmul fast float %1276, 0x3FF1C71C80000000
  %1278 = call float @dx.op.binary.f32(i32 36, float %1259, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1279 = fsub fast float 1.000000e+00, %1277
  %1280 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1281 = fmul fast float %1280, %1260
  %1282 = fmul fast float %1280, %1261
  %1283 = fmul fast float %1280, %1262
  %1284 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1285 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1286 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1287 = fmul fast float %1277, %1260
  %1288 = fmul fast float %1277, %1261
  %1289 = fmul fast float %1277, %1262
  %1290 = fadd fast float %1287, %1278
  %1291 = fadd fast float %1288, %1278
  %1292 = fadd fast float %1289, %1278
  %1293 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1294 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1295 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1296 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.i32 %1297, 3
  %1299 = and i32 %1298, 8
  %1300 = icmp ne i32 %1299, 0
  %1301 = call float @dx.op.binary.f32(i32 35, float %1284, float %1260)  ; FMax(a,b)
  %1302 = call float @dx.op.binary.f32(i32 35, float %1285, float %1260)  ; FMax(a,b)
  %1303 = call float @dx.op.binary.f32(i32 35, float %1286, float %1260)  ; FMax(a,b)
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1285, float %1286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = select i1 %176, float %1260, float %1284
  %1306 = select i1 %176, float %1304, float %1285
  %1307 = select i1 %176, float 1.000000e+00, float %1286
  %1308 = select i1 %1300, float %1301, float %1305
  %1309 = select i1 %1300, float %1302, float %1306
  %1310 = select i1 %1300, float %1303, float %1307
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1315 = fadd fast float %1312, %105
  %1316 = fadd fast float %1313, %106
  %1317 = fadd fast float %1314, %107
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.CBufRet.f32 %1318, 1
  %1321 = fsub fast float %1315, %1319
  %1322 = fsub fast float %1316, %1320
  %1323 = fmul fast float %1321, %1321
  %1324 = fmul fast float %1322, %1322
  %1325 = fadd fast float %1323, %1324
  %1326 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1318, 2
  %1328 = fcmp fast olt float %1326, %1327
  br i1 %1328, label %1329, label %1396

; <label>:1329                                    ; preds = %1244
  %1330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.f32 %1330, 0
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.CBufRet.f32 %1330, 1
  %1337 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1338 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1330, 3
  %1340 = extractvalue %dx.types.CBufRet.f32 %1332, 3
  %1341 = extractvalue %dx.types.CBufRet.f32 %1334, 3
  %1342 = fadd fast float %1339, %1315
  %1343 = fadd fast float %1340, %1316
  %1344 = fadd fast float %1341, %1317
  %1345 = fmul fast float %1342, %1331
  %1346 = call float @dx.op.tertiary.f32(i32 46, float %1343, float %1333, float %1345)  ; FMad(a,b,c)
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1344, float %1335, float %1346)  ; FMad(a,b,c)
  %1348 = fmul fast float %1342, %1336
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %1343, float %1337, float %1348)  ; FMad(a,b,c)
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1344, float %1338, float %1349)  ; FMad(a,b,c)
  %1351 = fsub fast float %1347, %1339
  %1352 = fsub fast float %1350, %1340
  %1353 = fsub fast float %1351, %1319
  %1354 = fadd fast float %1353, %1327
  %1355 = fsub fast float %1352, %1320
  %1356 = fadd fast float %1355, %1327
  %1357 = extractvalue %dx.types.CBufRet.f32 %1318, 3
  %1358 = fmul fast float %1354, %1357
  %1359 = fmul fast float %1356, %1357
  %1360 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1361 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1362 = fsub fast float 1.000000e+00, %1360
  %1363 = fsub fast float 1.000000e+00, %1361
  %1364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1362, float %1363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = fcmp fast ugt float %1365, 0.000000e+00
  br i1 %1366, label %1367, label %1670

; <label>:1367                                    ; preds = %1329
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1370 = fmul fast float %1369, %1365
  %1371 = extractvalue %dx.types.CBufRet.f32 %1368, 3
  %1372 = fadd fast float %1371, %1370
  %1373 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1374 = fadd fast float %1372, %1341
  %1375 = fmul fast float %1347, %1335
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1350, float %1338, float %1375)  ; FMad(a,b,c)
  %1377 = call float @dx.op.tertiary.f32(i32 46, float %1374, float %1373, float %1376)  ; FMad(a,b,c)
  %1378 = fsub fast float %1377, %1341
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 2
  %1381 = fsub fast float %1378, %1380
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1362, float %1363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1362, float %1363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = fadd fast float %1387, %1383
  %1391 = fmul fast float %1390, 0x3F847AE140000000
  %1392 = fadd fast float %1388, %1384
  %1393 = fmul fast float %1392, 0x3F847AE140000000
  %1394 = fadd fast float %1389, %1385
  %1395 = fmul fast float %1394, 0x3F847AE140000000
  br label %1670

; <label>:1396                                    ; preds = %1244
  %1397 = and i32 %152, 1
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1670, label %1399

; <label>:1399                                    ; preds = %1396
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1407 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1409 = extractvalue %dx.types.CBufRet.f32 %1400, 3
  %1410 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1411 = extractvalue %dx.types.CBufRet.f32 %1404, 3
  %1412 = fadd fast float %1409, %1315
  %1413 = fadd fast float %1410, %1316
  %1414 = fadd fast float %1411, %1317
  %1415 = fmul fast float %1412, %1401
  %1416 = call float @dx.op.tertiary.f32(i32 46, float %1413, float %1403, float %1415)  ; FMad(a,b,c)
  %1417 = call float @dx.op.tertiary.f32(i32 46, float %1414, float %1405, float %1416)  ; FMad(a,b,c)
  %1418 = fmul fast float %1412, %1406
  %1419 = call float @dx.op.tertiary.f32(i32 46, float %1413, float %1407, float %1418)  ; FMad(a,b,c)
  %1420 = call float @dx.op.tertiary.f32(i32 46, float %1414, float %1408, float %1419)  ; FMad(a,b,c)
  %1421 = fsub fast float %1417, %1409
  %1422 = fsub fast float %1420, %1410
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.CBufRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1427 = extractvalue %dx.types.CBufRet.f32 %1423, 3
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.i32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.i32 %1430, 1
  %1433 = udiv i32 %1432, %1431
  %1434 = fsub fast float %1421, %1424
  %1435 = fsub fast float %1422, %1425
  %1436 = call float @dx.op.binary.f32(i32 35, float %1434, float 0.000000e+00)  ; FMax(a,b)
  %1437 = call float @dx.op.binary.f32(i32 35, float %1435, float 0.000000e+00)  ; FMax(a,b)
  %1438 = call float @dx.op.binary.f32(i32 36, float %1436, float %1426)  ; FMin(a,b)
  %1439 = call float @dx.op.binary.f32(i32 36, float %1437, float %1427)  ; FMin(a,b)
  %1440 = add i32 %1431, -1
  %1441 = add i32 %1433, -1
  %1442 = fmul fast float %1438, %1429
  %1443 = fmul fast float %1439, %1429
  %1444 = fptoui float %1442 to i32
  %1445 = fptoui float %1443 to i32
  %1446 = call i32 @dx.op.binary.i32(i32 40, i32 %1444, i32 %1440)  ; UMin(a,b)
  %1447 = call i32 @dx.op.binary.i32(i32 40, i32 %1445, i32 %1441)  ; UMin(a,b)
  %1448 = mul i32 %1447, %1431
  %1449 = add i32 %1448, %1446
  %1450 = shl i32 %1449, 2
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = icmp eq i32 %1452, -1
  br i1 %1453, label %1670, label %1454

; <label>:1454                                    ; preds = %1399
  %1455 = mul i32 %1452, 148
  %1456 = add i32 %1455, 4
  %1457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = add i32 %1455, 8
  %1460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = add i32 %1455, 36
  %1463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = add i32 %1455, 60
  %1466 = add i32 %1455, 92
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1455, 116
  %1470 = fsub fast float %1421, %1458
  %1471 = fsub fast float %1422, %1461
  %1472 = fmul fast float %1429, %1470
  %1473 = fmul fast float %1429, %1471
  %1474 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  %1475 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 2
  %1479 = call float @dx.op.unary.f32(i32 83, float %1474)  ; DerivCoarseX(value)
  %1480 = call float @dx.op.unary.f32(i32 83, float %1476)  ; DerivCoarseX(value)
  %1481 = call float @dx.op.unary.f32(i32 84, float %1474)  ; DerivCoarseY(value)
  %1482 = call float @dx.op.unary.f32(i32 84, float %1476)  ; DerivCoarseY(value)
  %1483 = fmul fast float %1479, %1478
  %1484 = fmul fast float %1480, %1478
  %1485 = fmul fast float %1481, %1478
  %1486 = fmul fast float %1482, %1478
  %1487 = call float @dx.op.dot2.f32(i32 54, float %1485, float %1486, float %1485, float %1486)  ; Dot2(ax,ay,bx,by)
  %1488 = call float @dx.op.dot2.f32(i32 54, float %1483, float %1484, float %1483, float %1484)  ; Dot2(ax,ay,bx,by)
  %1489 = call float @dx.op.binary.f32(i32 35, float %1488, float %1487)  ; FMax(a,b)
  %1490 = call float @dx.op.unary.f32(i32 23, float %1489)  ; Log(value)
  %1491 = fmul fast float %1490, 5.000000e-01
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1494 = fadd fast float %1493, %1491
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0.000000e+00)  ; FMax(a,b)
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1498 = fadd fast float %1497, %1495
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 3
  %1501 = fadd fast float %1498, %1500
  %1502 = add i32 %1468, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1502, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1503, i32 0)  ; GetDimensions(handle,mipLevel)
  %1505 = extractvalue %dx.types.Dimensions %1504, 0
  %1506 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1505)  ; FirstbitLo(value)
  %1507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.i32 %1507, 1
  %1509 = sub nsw i32 %1508, %1506
  %1510 = sitofp i32 %1509 to float
  %1511 = fsub fast float %1501, %1510
  %1512 = call float @dx.op.binary.f32(i32 35, float %1511, float 0.000000e+00)  ; FMax(a,b)
  %1513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1503, %dx.types.Handle %33, float %1474, float %1476, float %1464, float undef, i32 0, i32 0, i32 undef, float %1512)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = fcmp ule float %1514, 0x3FE0101020000000
  %1516 = extractvalue %dx.types.CBufRet.i32 %1507, 0
  %1517 = and i32 %1516, 128
  %1518 = icmp ne i32 %1517, 0
  %1519 = and i1 %1515, %1518
  br i1 %1519, label %1670, label %1520

; <label>:1520                                    ; preds = %1454
  %1521 = add i32 %1455, 20
  %1522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = add i32 %1455, 24
  %1525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = add i32 %1455, 40
  %1528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = add i32 %1455, 96
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1535 = fmul fast float %1534, %1474
  %1536 = fmul fast float %1534, %1476
  %1537 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1538 = fadd fast float %1535, %1537
  %1539 = fadd fast float %1536, %1537
  %1540 = add i32 %1532, 0
  %1541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1542 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1541, i32 0)  ; GetDimensions(handle,mipLevel)
  %1543 = extractvalue %dx.types.Dimensions %1542, 0
  %1544 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1543)  ; FirstbitLo(value)
  %1545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.i32 %1545, 1
  %1547 = sub nsw i32 %1546, %1544
  %1548 = sitofp i32 %1547 to float
  %1549 = fsub fast float %1498, %1548
  %1550 = call float @dx.op.binary.f32(i32 35, float %1549, float 0.000000e+00)  ; FMax(a,b)
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1541, %dx.types.Handle %33, float %1538, float %1539, float %1529, float undef, i32 0, i32 0, i32 undef, float %1550)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = fmul fast float %1552, %1523
  %1554 = fadd fast float %1553, %1526
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 3
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 3
  %1563 = extractvalue %dx.types.CBufRet.f32 %1555, 3
  %1564 = fadd fast float %1560, %1421
  %1565 = fadd fast float %1562, %1422
  %1566 = fadd fast float %1554, %1563
  %1567 = fmul fast float %1564, %1556
  %1568 = call float @dx.op.tertiary.f32(i32 46, float %1565, float %1557, float %1567)  ; FMad(a,b,c)
  %1569 = call float @dx.op.tertiary.f32(i32 46, float %1566, float %1558, float %1568)  ; FMad(a,b,c)
  %1570 = fsub fast float %1569, %1563
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 2
  %1573 = fsub fast float %1570, %1572
  %1574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.i32 %1574, 0
  %1576 = call i32 @dx.op.binary.i32(i32 40, i32 %1452, i32 %1575)  ; UMin(a,b)
  %1577 = mul i32 %1576, 36
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %1577, 4
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = fmul fast float %1582, %1474
  %1584 = fmul fast float %1582, %1476
  %1585 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1586 = fadd fast float %1583, %1585
  %1587 = fadd fast float %1584, %1585
  %1588 = icmp eq i32 %1579, 0
  br i1 %1588, label %1657, label %1589

; <label>:1589                                    ; preds = %1520
  br label %1590

; <label>:1590                                    ; preds = %1647, %1589
  %1591 = phi float [ %1648, %1647 ], [ 0.000000e+00, %1589 ]
  %1592 = phi float [ %1649, %1647 ], [ 0.000000e+00, %1589 ]
  %1593 = phi float [ %1650, %1647 ], [ 0.000000e+00, %1589 ]
  %1594 = phi float [ %1651, %1647 ], [ 0.000000e+00, %1589 ]
  %1595 = phi float [ %1652, %1647 ], [ 0.000000e+00, %1589 ]
  %1596 = phi float [ %1653, %1647 ], [ 0.000000e+00, %1589 ]
  %1597 = phi i32 [ %1654, %1647 ], [ 0, %1589 ]
  %1598 = shl i32 %1597, 2
  %1599 = add i32 %1465, %1598
  %1600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 0
  %1602 = add i32 %1469, %1598
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = add i32 %1604, 0
  %1606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1605, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1607 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1606, i32 0)  ; GetDimensions(handle,mipLevel)
  %1608 = extractvalue %dx.types.Dimensions %1607, 0
  %1609 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1608)  ; FirstbitLo(value)
  %1610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.i32 %1610, 1
  %1612 = sub nsw i32 %1611, %1609
  %1613 = sitofp i32 %1612 to float
  %1614 = fsub fast float %1498, %1613
  %1615 = call float @dx.op.binary.f32(i32 35, float %1614, float 0.000000e+00)  ; FMax(a,b)
  %1616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1606, %dx.types.Handle %33, float %1586, float %1587, float %1601, float undef, i32 0, i32 0, i32 undef, float %1615)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = fcmp fast ogt float %1617, 0.000000e+00
  br i1 %1618, label %1619, label %1647

; <label>:1619                                    ; preds = %1590
  %1620 = add i32 %1580, %1598
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 32767
  %1624 = mul nuw nsw i32 %1623, 928
  %1625 = add nuw nsw i32 %1624, 48
  %1626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1625, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.ResRet.f32 %1626, 1
  %1629 = extractvalue %dx.types.ResRet.f32 %1626, 2
  %1630 = add nuw nsw i32 %1624, 60
  %1631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.ResRet.f32 %1631, 1
  %1634 = extractvalue %dx.types.ResRet.f32 %1631, 2
  %1635 = fmul fast float %1627, %1617
  %1636 = fmul fast float %1628, %1617
  %1637 = fmul fast float %1629, %1617
  %1638 = fadd fast float %1635, %1591
  %1639 = fadd fast float %1636, %1592
  %1640 = fadd fast float %1637, %1593
  %1641 = fmul fast float %1632, %1617
  %1642 = fmul fast float %1633, %1617
  %1643 = fmul fast float %1634, %1617
  %1644 = fadd fast float %1641, %1594
  %1645 = fadd fast float %1642, %1595
  %1646 = fadd fast float %1643, %1596
  br label %1647

; <label>:1647                                    ; preds = %1619, %1590
  %1648 = phi float [ %1638, %1619 ], [ %1591, %1590 ]
  %1649 = phi float [ %1639, %1619 ], [ %1592, %1590 ]
  %1650 = phi float [ %1640, %1619 ], [ %1593, %1590 ]
  %1651 = phi float [ %1644, %1619 ], [ %1594, %1590 ]
  %1652 = phi float [ %1645, %1619 ], [ %1595, %1590 ]
  %1653 = phi float [ %1646, %1619 ], [ %1596, %1590 ]
  %1654 = add nuw i32 %1597, 1
  %1655 = icmp eq i32 %1654, %1579
  br i1 %1655, label %1656, label %1590

; <label>:1656                                    ; preds = %1647
  br label %1657

; <label>:1657                                    ; preds = %1656, %1520
  %1658 = phi float [ 0.000000e+00, %1520 ], [ %1648, %1656 ]
  %1659 = phi float [ 0.000000e+00, %1520 ], [ %1649, %1656 ]
  %1660 = phi float [ 0.000000e+00, %1520 ], [ %1650, %1656 ]
  %1661 = phi float [ 0.000000e+00, %1520 ], [ %1651, %1656 ]
  %1662 = phi float [ 0.000000e+00, %1520 ], [ %1652, %1656 ]
  %1663 = phi float [ 0.000000e+00, %1520 ], [ %1653, %1656 ]
  %1664 = fadd fast float %1661, %1658
  %1665 = fmul fast float %1664, 0x3F847AE140000000
  %1666 = fadd fast float %1662, %1659
  %1667 = fmul fast float %1666, 0x3F847AE140000000
  %1668 = fadd fast float %1663, %1660
  %1669 = fmul fast float %1668, 0x3F847AE140000000
  br label %1670

; <label>:1670                                    ; preds = %1657, %1454, %1399, %1396, %1367, %1329
  %1671 = phi float [ %1381, %1367 ], [ -1.310720e+05, %1329 ], [ %1573, %1657 ], [ -1.310720e+05, %1399 ], [ -1.310720e+05, %1454 ], [ -1.310720e+05, %1396 ]
  %1672 = phi float [ %1391, %1367 ], [ 0.000000e+00, %1329 ], [ %1665, %1657 ], [ 0.000000e+00, %1399 ], [ 0.000000e+00, %1454 ], [ 0.000000e+00, %1396 ]
  %1673 = phi float [ %1393, %1367 ], [ 0.000000e+00, %1329 ], [ %1667, %1657 ], [ 0.000000e+00, %1399 ], [ 0.000000e+00, %1454 ], [ 0.000000e+00, %1396 ]
  %1674 = phi float [ %1395, %1367 ], [ 0.000000e+00, %1329 ], [ %1669, %1657 ], [ 0.000000e+00, %1399 ], [ 0.000000e+00, %1454 ], [ 0.000000e+00, %1396 ]
  %1675 = phi i1 [ true, %1367 ], [ false, %1329 ], [ true, %1657 ], [ false, %1399 ], [ false, %1454 ], [ false, %1396 ]
  %1676 = and i32 %152, 3
  %1677 = icmp eq i32 %1676, 1
  %1678 = select i1 %1677, float 1.000000e+00, float 0.000000e+00
  %1679 = fsub fast float %1671, %107
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = select i1 %1675, float %1680, float 1.000000e+00
  %1682 = fmul fast float %1681, %1678
  %1683 = icmp eq i32 %1676, 3
  %1684 = select i1 %1683, float 1.000000e+00, float %1682
  %1685 = call float @dx.op.binary.f32(i32 35, float %1245, float %1684)  ; FMax(a,b)
  %1686 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1687 = fcmp fast une float %1686, 0.000000e+00
  %1688 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = call float @dx.op.unary.f32(i32 25, float %1688)  ; Rsqrt(value)
  br i1 %1687, label %1697, label %1690

; <label>:1690                                    ; preds = %1670
  %1691 = fmul fast float %1689, %105
  %1692 = fmul fast float %1689, %106
  %1693 = fmul fast float %1689, %107
  %1694 = fsub fast float -0.000000e+00, %1691
  %1695 = fsub fast float -0.000000e+00, %1692
  %1696 = fsub fast float -0.000000e+00, %1693
  br label %1865

; <label>:1697                                    ; preds = %1670
  %1698 = fmul fast float %105, %1689
  %1699 = fsub fast float -0.000000e+00, %1698
  %1700 = fmul fast float %106, %1689
  %1701 = fsub fast float -0.000000e+00, %1700
  %1702 = fmul fast float %107, %1689
  %1703 = fsub fast float -0.000000e+00, %1702
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1699, float %1701, float %1703, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = fmul fast float %1686, 2.500000e+00
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1707 = fmul fast float %1686, 0x4013FFFFE0000000
  %1708 = fadd fast float %1707, 0xBFFFFFFFE0000000
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = fmul fast float %1686, 0x4004000020000000
  %1711 = fadd fast float %1710, 0xBFF8000040000000
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1714 = fmul fast float %1275, 1.000000e+01
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = fmul fast float %1715, 2.000000e+00
  %1717 = fsub fast float 3.000000e+00, %1716
  %1718 = fmul fast float %1715, %1715
  %1719 = fmul fast float %1718, %1717
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fsub fast float 0x3FE3333340000000, %1296
  %1722 = fmul fast float %1721, 0x400AAAAAA0000000
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1724 = fmul fast float %1720, %1723
  %1725 = fmul fast float %1308, 0x3FEA2B8620000000
  %1726 = fmul fast float %1309, 0x3FEA2B8620000000
  %1727 = fmul fast float %1310, 0x3FEA2B8620000000
  %1728 = fadd fast float %1725, 0x3FC81DFBA0000000
  %1729 = fmul fast float %1728, %1308
  %1730 = fadd fast float %1729, 0x3F910E6020000000
  %1731 = fadd fast float %1726, 0x3FC81DFBA0000000
  %1732 = fmul fast float %1731, %1309
  %1733 = fadd fast float %1732, 0x3F910E6020000000
  %1734 = fadd fast float %1727, 0x3FC81DFBA0000000
  %1735 = fmul fast float %1734, %1310
  %1736 = fadd fast float %1735, 0x3F910E6020000000
  %1737 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1738 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1739 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1740 = fsub fast float %1737, %1308
  %1741 = fsub fast float %1738, %1309
  %1742 = fsub fast float %1739, %1310
  %1743 = fmul fast float %1740, %1713
  %1744 = fmul fast float %1743, %1724
  %1745 = fmul fast float %1741, %1713
  %1746 = fmul fast float %1745, %1724
  %1747 = fmul fast float %1742, %1713
  %1748 = fmul fast float %1747, %1724
  %1749 = fadd fast float %1744, %1308
  %1750 = fadd fast float %1746, %1309
  %1751 = fadd fast float %1748, %1310
  %1752 = fmul fast float %1256, %1256
  %1753 = fmul fast float %1752, %1752
  %1754 = fadd fast float %1709, 1.000000e+00
  %1755 = fsub fast float %1754, %1724
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1757 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1759 = fsub fast float 1.000000e+00, %1753
  %1760 = call float @dx.op.binary.f32(i32 36, float %1756, float %1759)  ; FMin(a,b)
  %1761 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1762 = call float @dx.op.binary.f32(i32 35, float %1760, float %1761)  ; FMax(a,b)
  %1763 = fadd fast float %1758, 0xBFE4CCCCC0000000
  %1764 = fmul fast float %1763, 0x4006DB6DA0000000
  %1765 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1766 = fmul fast float %1765, 2.000000e+00
  %1767 = fsub fast float 3.000000e+00, %1766
  %1768 = bitcast float %1293 to i32
  %1769 = ashr i32 %1768, 1
  %1770 = add nsw i32 %1769, 532487669
  %1771 = bitcast i32 %1770 to float
  %1772 = fsub fast float 1.000000e+00, %1771
  %1773 = bitcast float %1772 to i32
  %1774 = sub nsw i32 2129859010, %1773
  %1775 = bitcast i32 %1774 to float
  %1776 = fmul fast float %1775, 2.000000e+00
  %1777 = bitcast float %1294 to i32
  %1778 = ashr i32 %1777, 1
  %1779 = add nsw i32 %1778, 532487669
  %1780 = bitcast i32 %1779 to float
  %1781 = fsub fast float 1.000000e+00, %1780
  %1782 = bitcast float %1781 to i32
  %1783 = sub nsw i32 2129859010, %1782
  %1784 = bitcast i32 %1783 to float
  %1785 = fmul fast float %1784, 2.000000e+00
  %1786 = bitcast float %1295 to i32
  %1787 = ashr i32 %1786, 1
  %1788 = add nsw i32 %1787, 532487669
  %1789 = bitcast i32 %1788 to float
  %1790 = fsub fast float 1.000000e+00, %1789
  %1791 = bitcast float %1790 to i32
  %1792 = sub nsw i32 2129859010, %1791
  %1793 = bitcast i32 %1792 to float
  %1794 = fmul fast float %1793, 2.000000e+00
  %1795 = fsub fast float 0x4002A9FBE0000000, %1776
  %1796 = fadd fast float %1776, 0x3FD54FDF00000000
  %1797 = bitcast float %1796 to i32
  %1798 = sub nsw i32 2129859010, %1797
  %1799 = bitcast i32 %1798 to float
  %1800 = fmul fast float %1799, %1795
  %1801 = fmul fast float %1800, %1800
  %1802 = fsub fast float 0x4002A9FBE0000000, %1785
  %1803 = fadd fast float %1785, 0x3FD54FDF00000000
  %1804 = bitcast float %1803 to i32
  %1805 = sub nsw i32 2129859010, %1804
  %1806 = bitcast i32 %1805 to float
  %1807 = fmul fast float %1806, %1802
  %1808 = fmul fast float %1807, %1807
  %1809 = fsub fast float 0x4002A9FBE0000000, %1794
  %1810 = fadd fast float %1794, 0x3FD54FDF00000000
  %1811 = bitcast float %1810 to i32
  %1812 = sub nsw i32 2129859010, %1811
  %1813 = bitcast i32 %1812 to float
  %1814 = fmul fast float %1813, %1809
  %1815 = fmul fast float %1814, %1814
  %1816 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1801)  ; FMax(a,b)
  %1817 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1808)  ; FMax(a,b)
  %1818 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1815)  ; FMax(a,b)
  %1819 = fsub fast float 1.000000e+00, %1704
  %1820 = fadd fast float %1819, %1720
  %1821 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1822 = fsub fast float 1.000000e+00, %1684
  %1823 = fmul fast float %1762, %1822
  %1824 = fmul fast float %1765, %1765
  %1825 = fmul fast float %1824, %1823
  %1826 = fmul fast float %1825, %1767
  %1827 = fmul fast float %1822, 0xBFE99999A0000000
  %1828 = fmul fast float %1827, %1713
  %1829 = fmul fast float %1828, %1724
  %1830 = fadd fast float %1829, 1.000000e+00
  %1831 = fadd fast float %1296, -1.000000e+00
  %1832 = fmul fast float %1830, %1831
  %1833 = fadd fast float %1832, 1.000000e+00
  %1834 = fsub fast float %1816, %1293
  %1835 = fsub fast float %1817, %1294
  %1836 = fsub fast float %1818, %1295
  %1837 = fmul fast float %1826, %1834
  %1838 = fmul fast float %1826, %1835
  %1839 = fmul fast float %1826, %1836
  %1840 = fadd fast float %1837, %1293
  %1841 = fadd fast float %1838, %1294
  %1842 = fadd fast float %1839, %1295
  %1843 = fsub fast float %43, %1272
  %1844 = fsub fast float %44, %1273
  %1845 = fsub fast float %45, %1274
  %1846 = fmul fast float %1826, %1843
  %1847 = fmul fast float %1826, %1844
  %1848 = fmul fast float %1826, %1845
  %1849 = fadd fast float %1846, %1272
  %1850 = fadd fast float %1847, %1273
  %1851 = fadd fast float %1848, %1274
  %1852 = fmul fast float %1826, %1821
  %1853 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1854 = fsub fast float 1.000000e+00, %1853
  %1855 = fmul fast float %1852, %1854
  %1856 = fadd fast float %1855, %1853
  %1857 = fsub fast float 1.000000e+00, %1256
  %1858 = fmul fast float %1826, %1857
  %1859 = fadd fast float %1858, %1256
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1849, float %1850, float %1851, float %1849, float %1850, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = call float @dx.op.unary.f32(i32 25, float %1860)  ; Rsqrt(value)
  %1862 = fmul fast float %1849, %1861
  %1863 = fmul fast float %1850, %1861
  %1864 = fmul fast float %1851, %1861
  br label %1865

; <label>:1865                                    ; preds = %1697, %1690
  %1866 = phi float [ %1696, %1690 ], [ %1703, %1697 ]
  %1867 = phi float [ %1695, %1690 ], [ %1701, %1697 ]
  %1868 = phi float [ %1694, %1690 ], [ %1699, %1697 ]
  %1869 = phi float [ %1693, %1690 ], [ %1702, %1697 ]
  %1870 = phi float [ %1692, %1690 ], [ %1700, %1697 ]
  %1871 = phi float [ %1691, %1690 ], [ %1698, %1697 ]
  %1872 = phi float [ %1293, %1690 ], [ %1840, %1697 ]
  %1873 = phi float [ %1294, %1690 ], [ %1841, %1697 ]
  %1874 = phi float [ %1295, %1690 ], [ %1842, %1697 ]
  %1875 = phi float [ %1308, %1690 ], [ %1749, %1697 ]
  %1876 = phi float [ %1309, %1690 ], [ %1750, %1697 ]
  %1877 = phi float [ %1310, %1690 ], [ %1751, %1697 ]
  %1878 = phi float [ %1272, %1690 ], [ %1862, %1697 ]
  %1879 = phi float [ %1273, %1690 ], [ %1863, %1697 ]
  %1880 = phi float [ %1274, %1690 ], [ %1864, %1697 ]
  %1881 = phi float [ %1296, %1690 ], [ %1856, %1697 ]
  %1882 = phi float [ %1256, %1690 ], [ %1859, %1697 ]
  %1883 = select i1 %176, float 0.000000e+00, float %1874
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %1868, float %1867, float %1866)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1886 = call float @dx.op.dot3.f32(i32 55, float %1871, float %1870, float %1869, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %1887 = fmul fast float %1886, 2.000000e+00
  %1888 = fmul fast float %1887, %1878
  %1889 = fmul fast float %1887, %1879
  %1890 = fmul fast float %1887, %1880
  %1891 = fsub fast float %1871, %1888
  %1892 = fsub fast float %1870, %1889
  %1893 = fsub fast float %1869, %1890
  %1894 = call float @dx.op.binary.f32(i32 36, float %1882, float 1.000000e+00)  ; FMin(a,b)
  %1895 = fsub fast float 1.000000e+00, %1882
  %1896 = bitcast float %1895 to i32
  %1897 = sub nsw i32 2129859010, %1896
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.CBufRet.f32 %1898, 1
  %1901 = fadd fast float %1899, %105
  %1902 = fadd fast float %1900, %106
  %1903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.i32 %1903, 0
  %1905 = icmp eq i32 %1904, 1
  br i1 %1905, label %1906, label %1941

; <label>:1906                                    ; preds = %1865
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = fsub fast float %1901, %1908
  %1911 = fsub fast float %1902, %1909
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1915 = fmul fast float %1910, %1913
  %1916 = fmul fast float %1911, %1914
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = fcmp fast ogt float %1918, 0.000000e+00
  %1920 = extractvalue %dx.types.CBufRet.i32 %1903, 3
  %1921 = icmp ne i32 %1920, 0
  %1922 = and i1 %1919, %1921
  br i1 %1922, label %1923, label %1941, !dx.controlflow.hints !72

; <label>:1923                                    ; preds = %1906
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.CBufRet.f32 %1924, 1
  %1927 = fsub fast float %1901, %1925
  %1928 = fsub fast float %1902, %1926
  %1929 = fmul fast float %1927, %1927
  %1930 = fmul fast float %1928, %1928
  %1931 = fadd fast float %1929, %1930
  %1932 = uitofp i32 %1920 to float
  %1933 = fmul fast float %1932, %1932
  %1934 = fcmp fast ogt float %1931, %1933
  br i1 %1934, label %1941, label %1935

; <label>:1935                                    ; preds = %1923
  %1936 = call float @dx.op.unary.f32(i32 24, float %1931)  ; Sqrt(value)
  %1937 = fsub fast float %1932, %1936
  %1938 = fmul fast float %1937, 0x3F75555560000000
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  %1940 = call float @dx.op.binary.f32(i32 36, float %1939, float %1918)  ; FMin(a,b)
  br label %1941

; <label>:1941                                    ; preds = %1935, %1923, %1906, %1865
  %1942 = phi float [ 1.000000e+00, %1865 ], [ %1940, %1935 ], [ %1918, %1906 ], [ 0.000000e+00, %1923 ]
  %1943 = fcmp fast ogt float %1942, 0.000000e+00
  br i1 %1943, label %1944, label %2042, !dx.controlflow.hints !73

; <label>:1944                                    ; preds = %1941
  %1945 = fadd fast float %136, 5.000000e-01
  %1946 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1946, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.ResRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.ResRet.f32 %1947, 2
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 3
  %1953 = fmul fast float %1952, %1948
  %1954 = fmul fast float %1952, %1949
  %1955 = fmul fast float %1952, %1950
  %1956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1946, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1957 = extractvalue %dx.types.ResRet.f32 %1956, 0
  %1958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1946, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = extractvalue %dx.types.ResRet.f32 %1958, 1
  %1961 = fmul fast float %1959, 2.000000e+00
  %1962 = fmul fast float %1960, 2.000000e+00
  %1963 = fadd fast float %1961, -1.000000e+00
  %1964 = fadd fast float %1962, -1.000000e+00
  %1965 = fadd fast float %1963, %1964
  %1966 = fmul fast float %1965, 5.000000e-01
  %1967 = fsub fast float %1963, %1964
  %1968 = fmul fast float %1967, 5.000000e-01
  %1969 = call float @dx.op.unary.f32(i32 6, float %1966)  ; FAbs(value)
  %1970 = fsub fast float 1.000000e+00, %1969
  %1971 = call float @dx.op.unary.f32(i32 6, float %1968)  ; FAbs(value)
  %1972 = fsub fast float %1970, %1971
  %1973 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1972)  ; FMax(a,b)
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1966, float %1968, float %1973, float %1966, float %1968, float %1973)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = bitcast float %1974 to i32
  %1976 = ashr i32 %1975, 1
  %1977 = sub nsw i32 1597250115, %1976
  %1978 = bitcast i32 %1977 to float
  %1979 = fmul fast float %1978, %1966
  %1980 = fmul fast float %1978, %1968
  %1981 = fmul fast float %1978, %1973
  %1982 = fsub fast float 1.000000e+00, %1957
  %1983 = fdiv fast float %1982, %1981
  %1984 = fmul fast float %1981, %43
  %1985 = fmul fast float %1981, %44
  %1986 = fmul fast float %1981, %45
  %1987 = fmul fast float %1979, %39
  %1988 = fmul fast float %1979, %40
  %1989 = fmul fast float %1979, %41
  %1990 = fadd fast float %1984, %1987
  %1991 = fadd fast float %1985, %1988
  %1992 = fadd fast float %1986, %1989
  %1993 = fmul fast float %1980, %69
  %1994 = fmul fast float %1980, %70
  %1995 = fmul fast float %1980, %71
  %1996 = fadd fast float %1990, %1993
  %1997 = fadd fast float %1991, %1994
  %1998 = fadd fast float %1992, %1995
  %1999 = call float @dx.op.dot3.f32(i32 55, float %1996, float %1997, float %1998, float %1996, float %1997, float %1998)  ; Dot3(ax,ay,az,bx,by,bz)
  %2000 = call float @dx.op.unary.f32(i32 25, float %1999)  ; Rsqrt(value)
  %2001 = fmul fast float %1996, %2000
  %2002 = fmul fast float %1997, %2000
  %2003 = fmul fast float %1998, %2000
  %2004 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2006 = fmul fast float %2005, 5.000000e-01
  %2007 = fadd fast float %2006, 5.000000e-01
  %2008 = fmul fast float %2007, %1957
  %2009 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %2001, float %2002, float %2003)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = fmul fast float %2010, %1983
  %2012 = fadd fast float %2008, %2011
  %2013 = fsub fast float 5.000000e-01, %2006
  %2014 = fmul fast float %2013, %1875
  %2015 = fmul fast float %2013, %1876
  %2016 = fmul fast float %2013, %1877
  %2017 = fadd fast float %2012, %2014
  %2018 = fmul fast float %2017, %1953
  %2019 = fadd fast float %2012, %2015
  %2020 = fmul fast float %2019, %1954
  %2021 = fadd fast float %2012, %2016
  %2022 = fmul fast float %2021, %1955
  %2023 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = fmul fast float %2024, 5.000000e-01
  %2026 = fadd fast float %2025, 5.000000e-01
  %2027 = fmul fast float %2026, %1957
  %2028 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %2001, float %2002, float %2003)  ; Dot3(ax,ay,az,bx,by,bz)
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = fmul fast float %2029, %1983
  %2031 = fadd fast float %2027, %2030
  %2032 = fsub fast float 5.000000e-01, %2025
  %2033 = fmul fast float %2032, %1875
  %2034 = fmul fast float %2032, %1876
  %2035 = fmul fast float %2032, %1877
  %2036 = fadd fast float %2031, %2033
  %2037 = fmul fast float %2036, %1953
  %2038 = fadd fast float %2031, %2034
  %2039 = fmul fast float %2038, %1954
  %2040 = fadd fast float %2031, %2035
  %2041 = fmul fast float %2040, %1955
  br label %2042

; <label>:2042                                    ; preds = %1944, %1941
  %2043 = phi float [ %2037, %1944 ], [ 0.000000e+00, %1941 ]
  %2044 = phi float [ %2039, %1944 ], [ 0.000000e+00, %1941 ]
  %2045 = phi float [ %2041, %1944 ], [ 0.000000e+00, %1941 ]
  %2046 = phi float [ %2018, %1944 ], [ 0.000000e+00, %1941 ]
  %2047 = phi float [ %2020, %1944 ], [ 0.000000e+00, %1941 ]
  %2048 = phi float [ %2022, %1944 ], [ 0.000000e+00, %1941 ]
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = fcmp fast ogt float %2050, 0.000000e+00
  %2052 = and i1 %1943, %2051
  br i1 %2052, label %2053, label %2257, !dx.controlflow.hints !74

; <label>:2053                                    ; preds = %2042
  %2054 = extractvalue %dx.types.CBufRet.f32 %1898, 2
  %2055 = fadd fast float %2054, %107
  %2056 = fmul fast float %1878, 3.200000e+01
  %2057 = fmul fast float %1879, 3.200000e+01
  %2058 = fadd fast float %1901, %2056
  %2059 = fadd fast float %1902, %2057
  %2060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2061 = extractvalue %dx.types.CBufRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.CBufRet.f32 %2060, 1
  %2063 = fsub fast float %2058, %2061
  %2064 = fsub fast float %2059, %2062
  %2065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.CBufRet.f32 %2065, 1
  %2068 = fmul fast float %2063, %2066
  %2069 = fmul fast float %2064, %2067
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.CBufRet.f32 %2070, 1
  %2073 = fsub fast float %1901, %2071
  %2074 = fsub fast float %1902, %2072
  %2075 = fmul fast float %2073, %2073
  %2076 = fmul fast float %2074, %2074
  %2077 = fadd fast float %2075, %2076
  %2078 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2082 = fsub fast float %2078, %2080
  %2083 = fdiv fast float %2082, %2081
  %2084 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2085 = fmul fast float %2084, 2.000000e+00
  %2086 = fsub fast float 3.000000e+00, %2085
  %2087 = fmul fast float %2084, %2084
  %2088 = fmul fast float %2087, %2086
  %2089 = fcmp fast oge float %2068, 0.000000e+00
  %2090 = fcmp fast ole float %2068, 1.000000e+00
  %2091 = and i1 %2090, %2089
  %2092 = fcmp fast oge float %2069, 0.000000e+00
  %2093 = and i1 %2092, %2091
  %2094 = fcmp fast ole float %2069, 1.000000e+00
  %2095 = and i1 %2094, %2093
  %2096 = fcmp fast ogt float %2088, 0.000000e+00
  %2097 = and i1 %2096, %2095
  br i1 %2097, label %2098, label %2221, !dx.controlflow.hints !75

; <label>:2098                                    ; preds = %2053
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 2
  %2101 = extractvalue %dx.types.CBufRet.f32 %2099, 3
  %2102 = fmul fast float %2100, %2068
  %2103 = fmul fast float %2101, %2069
  %2104 = call float @dx.op.unary.f32(i32 27, float %2102)  ; Round_ni(value)
  %2105 = call float @dx.op.unary.f32(i32 27, float %2103)  ; Round_ni(value)
  %2106 = fptosi float %2104 to i32
  %2107 = fptosi float %2105 to i32
  %2108 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2106, i32 %2107, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = lshr i32 %2109, 16
  %2111 = icmp eq i32 %2110, 65535
  br i1 %2111, label %2221, label %2112

; <label>:2112                                    ; preds = %2098
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = fmul fast float %2114, %2068
  %2116 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2117 = fadd fast float %2115, %2116
  %2118 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2119 = fmul fast float %2118, %2069
  %2120 = extractvalue %dx.types.CBufRet.f32 %2113, 3
  %2121 = fadd fast float %2119, %2120
  %2122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2117, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.ResRet.f32 %2122, 1
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2127 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2128 = fsub fast float %2126, %2127
  %2129 = fmul fast float %2128, %2123
  %2130 = fadd fast float %2129, %2127
  %2131 = extractvalue %dx.types.CBufRet.f32 %2125, 3
  %2132 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2133 = fsub fast float %2131, %2132
  %2134 = fmul fast float %2133, %2124
  %2135 = fadd fast float %2134, %2132
  %2136 = fsub fast float %2055, %2130
  %2137 = fsub fast float %2135, %2130
  %2138 = fdiv fast float %2136, %2137
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2141 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2142 = extractvalue %dx.types.CBufRet.f32 %2099, 1
  %2143 = fmul fast float %2141, %2068
  %2144 = fmul fast float %2142, %2069
  %2145 = fmul fast float %2143, 1.250000e-01
  %2146 = fmul fast float %2144, 1.250000e-01
  %2147 = call float @dx.op.unary.f32(i32 27, float %2145)  ; Round_ni(value)
  %2148 = call float @dx.op.unary.f32(i32 27, float %2146)  ; Round_ni(value)
  %2149 = fmul fast float %2147, 8.000000e+00
  %2150 = fmul fast float %2148, 8.000000e+00
  %2151 = fsub fast float %2143, %2149
  %2152 = fsub fast float %2144, %2150
  %2153 = fadd fast float %2151, 5.000000e-01
  %2154 = fadd fast float %2152, 5.000000e-01
  %2155 = and i32 %2110, 255
  %2156 = lshr i32 %2109, 24
  %2157 = mul nuw nsw i32 %2155, 9
  %2158 = uitofp i32 %2157 to float
  %2159 = mul nuw nsw i32 %2156, 9
  %2160 = uitofp i32 %2159 to float
  %2161 = fadd fast float %2153, %2158
  %2162 = fadd fast float %2154, %2160
  %2163 = fdiv fast float %2161, %2050
  %2164 = fdiv fast float %2162, %2140
  %2165 = fmul fast float %2139, 4.375000e-01
  %2166 = fadd fast float %2165, 3.125000e-02
  %2167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2163, float %2164, float %2166, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = fadd fast float %2165, 5.312500e-01
  %2172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2163, float %2164, float %2171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.ResRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.ResRet.f32 %2172, 2
  %2176 = fmul fast float %2173, 2.000000e+00
  %2177 = fmul fast float %2174, 2.000000e+00
  %2178 = fmul fast float %2175, 2.000000e+00
  %2179 = fadd fast float %2176, -1.000000e+00
  %2180 = fadd fast float %2177, -1.000000e+00
  %2181 = fadd fast float %2178, -1.000000e+00
  %2182 = fmul fast float %2179, %2179
  %2183 = fmul fast float %2180, %2180
  %2184 = fadd fast float %2182, %2183
  %2185 = fmul fast float %2181, %2181
  %2186 = fadd fast float %2184, %2185
  %2187 = call float @dx.op.unary.f32(i32 24, float %2186)  ; Sqrt(value)
  %2188 = fcmp fast ogt float %2187, 0.000000e+00
  br i1 %2188, label %2189, label %2193

; <label>:2189                                    ; preds = %2112
  %2190 = fdiv fast float %2179, %2187
  %2191 = fdiv fast float %2180, %2187
  %2192 = fdiv fast float %2181, %2187
  br label %2193

; <label>:2193                                    ; preds = %2189, %2112
  %2194 = phi float [ %2190, %2189 ], [ 0.000000e+00, %2112 ]
  %2195 = phi float [ %2191, %2189 ], [ 0.000000e+00, %2112 ]
  %2196 = phi float [ %2192, %2189 ], [ 0.000000e+00, %2112 ]
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2194, float %2195, float %2196, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2197)  ; FMax(a,b)
  %2199 = fmul fast float %2198, 0x400C5BF8A0000000
  %2200 = fmul fast float %2168, %2088
  %2201 = fmul fast float %2200, %2199
  %2202 = fmul fast float %2169, %2088
  %2203 = fmul fast float %2202, %2199
  %2204 = fmul fast float %2170, %2088
  %2205 = fmul fast float %2204, %2199
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2208 = fmul fast float %2201, %2207
  %2209 = fmul fast float %2203, %2207
  %2210 = fmul fast float %2205, %2207
  %2211 = fcmp fast ogt float %2055, %2135
  br i1 %2211, label %2212, label %2221

; <label>:2212                                    ; preds = %2193
  %2213 = fmul fast float %2137, 0x3FC24924A0000000
  %2214 = fsub fast float %2055, %2135
  %2215 = fdiv fast float %2214, %2213
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fsub fast float 1.000000e+00, %2216
  %2218 = fmul fast float %2217, %2208
  %2219 = fmul fast float %2217, %2209
  %2220 = fmul fast float %2217, %2210
  br label %2221

; <label>:2221                                    ; preds = %2212, %2193, %2098, %2053
  %2222 = phi float [ %2220, %2212 ], [ %2210, %2193 ], [ 0.000000e+00, %2098 ], [ 0.000000e+00, %2053 ]
  %2223 = phi float [ %2219, %2212 ], [ %2209, %2193 ], [ 0.000000e+00, %2098 ], [ 0.000000e+00, %2053 ]
  %2224 = phi float [ %2218, %2212 ], [ %2208, %2193 ], [ 0.000000e+00, %2098 ], [ 0.000000e+00, %2053 ]
  %2225 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2224)  ; FMax(a,b)
  %2226 = fmul fast float %2225, 0x3FD20DD760000000
  %2227 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1891, float %1892, float %1893)  ; Dot3(ax,ay,az,bx,by,bz)
  %2228 = fmul fast float %2227, 0x3FDF454380000000
  %2229 = fmul fast float %2227, %2227
  %2230 = fmul fast float %2229, 0x3FEE471020000000
  %2231 = fadd fast float %2230, 0xBFD42F6020000000
  %2232 = call float @dx.op.dot3.f32(i32 55, float %2225, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2228, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2223)  ; FMax(a,b)
  %2234 = fmul fast float %2233, 0x3FD20DD760000000
  %2235 = call float @dx.op.dot3.f32(i32 55, float %2233, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2228, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2236 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2222)  ; FMax(a,b)
  %2237 = fmul fast float %2236, 0x3FD20DD760000000
  %2238 = call float @dx.op.dot3.f32(i32 55, float %2236, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2228, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = call float @dx.op.binary.f32(i32 35, float %2226, float 0.000000e+00)  ; FMax(a,b)
  %2240 = call float @dx.op.binary.f32(i32 35, float %2234, float 0.000000e+00)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 35, float %2237, float 0.000000e+00)  ; FMax(a,b)
  %2242 = call float @dx.op.binary.f32(i32 35, float %2232, float 0.000000e+00)  ; FMax(a,b)
  %2243 = call float @dx.op.binary.f32(i32 35, float %2235, float 0.000000e+00)  ; FMax(a,b)
  %2244 = call float @dx.op.binary.f32(i32 35, float %2238, float 0.000000e+00)  ; FMax(a,b)
  %2245 = fmul fast float %2239, %1942
  %2246 = fmul fast float %2240, %1942
  %2247 = fmul fast float %2241, %1942
  %2248 = fadd fast float %2245, %2046
  %2249 = fadd fast float %2246, %2047
  %2250 = fadd fast float %2247, %2048
  %2251 = fmul fast float %2242, %1942
  %2252 = fmul fast float %2243, %1942
  %2253 = fmul fast float %2244, %1942
  %2254 = fadd fast float %2251, %2043
  %2255 = fadd fast float %2252, %2044
  %2256 = fadd fast float %2253, %2045
  br label %2257

; <label>:2257                                    ; preds = %2221, %2042
  %2258 = phi float [ %2254, %2221 ], [ %2043, %2042 ]
  %2259 = phi float [ %2255, %2221 ], [ %2044, %2042 ]
  %2260 = phi float [ %2256, %2221 ], [ %2045, %2042 ]
  %2261 = phi float [ %2248, %2221 ], [ %2046, %2042 ]
  %2262 = phi float [ %2249, %2221 ], [ %2047, %2042 ]
  %2263 = phi float [ %2250, %2221 ], [ %2048, %2042 ]
  %2264 = fcmp fast olt float %1942, 1.000000e+00
  br i1 %2264, label %2265, label %3083, !dx.controlflow.hints !76

; <label>:2265                                    ; preds = %2257
  %2266 = extractvalue %dx.types.CBufRet.f32 %1898, 2
  %2267 = fadd fast float %2266, %107
  %2268 = fmul fast float %1878, 3.200000e+01
  %2269 = fmul fast float %1879, 3.200000e+01
  %2270 = fadd fast float %1901, %2268
  %2271 = fadd fast float %1902, %2269
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2275 = fsub fast float %2270, %2273
  %2276 = fsub fast float %2271, %2274
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2280 = fmul fast float %2275, %2278
  %2281 = fmul fast float %2276, %2279
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = fmul fast float %2280, %2283
  %2285 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2286 = fadd fast float %2284, %2285
  %2287 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2288 = fmul fast float %2287, %2281
  %2289 = extractvalue %dx.types.CBufRet.f32 %2282, 3
  %2290 = fadd fast float %2288, %2289
  %2291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2286, float %2290, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2292 = extractvalue %dx.types.ResRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.ResRet.f32 %2291, 1
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 1
  %2296 = extractvalue %dx.types.CBufRet.f32 %2294, 0
  %2297 = fsub fast float %2295, %2296
  %2298 = fmul fast float %2297, %2292
  %2299 = fadd fast float %2298, %2296
  %2300 = extractvalue %dx.types.CBufRet.f32 %2294, 3
  %2301 = extractvalue %dx.types.CBufRet.f32 %2294, 2
  %2302 = fsub fast float %2300, %2301
  %2303 = fmul fast float %2302, %2293
  %2304 = fadd fast float %2303, %2301
  %2305 = fsub fast float %2267, %2299
  %2306 = fsub fast float %2304, %2299
  %2307 = fdiv fast float %2305, %2306
  %2308 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = fmul fast float %2310, %2308
  %2312 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2313 = fadd fast float %2311, %2312
  %2314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2286, float %2290, float %2313, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2315 = extractvalue %dx.types.ResRet.f32 %2314, 0
  %2316 = extractvalue %dx.types.ResRet.f32 %2314, 1
  %2317 = extractvalue %dx.types.ResRet.f32 %2314, 2
  %2318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2319 = extractvalue %dx.types.CBufRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.CBufRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.CBufRet.f32 %2318, 2
  %2322 = fmul fast float %2319, %2315
  %2323 = fmul fast float %2320, %2316
  %2324 = fmul fast float %2321, %2317
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.CBufRet.f32 %2325, 2
  %2329 = fadd fast float %2322, %2326
  %2330 = fadd fast float %2323, %2327
  %2331 = fadd fast float %2324, %2328
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 0
  %2334 = fmul fast float %2333, %2280
  %2335 = extractvalue %dx.types.CBufRet.f32 %2332, 1
  %2336 = fadd fast float %2334, %2335
  %2337 = extractvalue %dx.types.CBufRet.f32 %2332, 2
  %2338 = fmul fast float %2337, %2281
  %2339 = extractvalue %dx.types.CBufRet.f32 %2332, 3
  %2340 = fadd fast float %2338, %2339
  %2341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.CBufRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.CBufRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.CBufRet.f32 %2341, 3
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2346, 2
  %2350 = extractvalue %dx.types.CBufRet.f32 %2346, 3
  %2351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2336, float %2340, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.ResRet.f32 %2351, 2
  %2355 = extractvalue %dx.types.ResRet.f32 %2351, 3
  %2356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2336, float %2340, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.ResRet.f32 %2356, 3
  %2361 = fmul fast float %2352, %2329
  %2362 = fmul fast float %2357, %2329
  %2363 = fmul fast float %2359, %2329
  %2364 = fmul fast float %2355, %2329
  %2365 = fadd fast float %2361, %2342
  %2366 = fadd fast float %2362, %2343
  %2367 = fadd fast float %2363, %2344
  %2368 = fadd fast float %2364, %2345
  %2369 = fmul fast float %2353, %2329
  %2370 = fmul fast float %2358, %2329
  %2371 = fadd fast float %2369, %2347
  %2372 = fadd fast float %2370, %2348
  %2373 = fmul fast float %2354, %2329
  %2374 = fmul fast float %2360, %2329
  %2375 = fadd fast float %2373, %2349
  %2376 = fadd fast float %2374, %2350
  %2377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2336, float %2340, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  %2379 = extractvalue %dx.types.ResRet.f32 %2377, 1
  %2380 = extractvalue %dx.types.ResRet.f32 %2377, 2
  %2381 = extractvalue %dx.types.ResRet.f32 %2377, 3
  %2382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2336, float %2340, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.ResRet.f32 %2382, 1
  %2385 = extractvalue %dx.types.ResRet.f32 %2382, 2
  %2386 = extractvalue %dx.types.ResRet.f32 %2382, 3
  %2387 = fmul fast float %2378, %2330
  %2388 = fmul fast float %2383, %2330
  %2389 = fmul fast float %2385, %2330
  %2390 = fmul fast float %2381, %2330
  %2391 = fadd fast float %2365, %2387
  %2392 = fadd fast float %2366, %2388
  %2393 = fadd fast float %2367, %2389
  %2394 = fadd fast float %2368, %2390
  %2395 = fmul fast float %2379, %2330
  %2396 = fmul fast float %2384, %2330
  %2397 = fadd fast float %2371, %2395
  %2398 = fadd fast float %2372, %2396
  %2399 = fmul fast float %2380, %2330
  %2400 = fmul fast float %2386, %2330
  %2401 = fadd fast float %2375, %2399
  %2402 = fadd fast float %2376, %2400
  %2403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2336, float %2340, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2404 = extractvalue %dx.types.ResRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.ResRet.f32 %2403, 1
  %2406 = extractvalue %dx.types.ResRet.f32 %2403, 2
  %2407 = extractvalue %dx.types.ResRet.f32 %2403, 3
  %2408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2336, float %2340, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2409 = extractvalue %dx.types.ResRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.ResRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.ResRet.f32 %2408, 2
  %2412 = extractvalue %dx.types.ResRet.f32 %2408, 3
  %2413 = fmul fast float %2404, %2331
  %2414 = fmul fast float %2409, %2331
  %2415 = fmul fast float %2411, %2331
  %2416 = fmul fast float %2407, %2331
  %2417 = fadd fast float %2391, %2413
  %2418 = fadd fast float %2392, %2414
  %2419 = fadd fast float %2393, %2415
  %2420 = fadd fast float %2394, %2416
  %2421 = fmul fast float %2405, %2331
  %2422 = fmul fast float %2410, %2331
  %2423 = fadd fast float %2397, %2421
  %2424 = fadd fast float %2398, %2422
  %2425 = fmul fast float %2406, %2331
  %2426 = fmul fast float %2412, %2331
  %2427 = fadd fast float %2401, %2425
  %2428 = fadd fast float %2402, %2426
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = fsub fast float %1901, %2430
  %2432 = fsub fast float %2273, %1901
  %2433 = call float @dx.op.binary.f32(i32 35, float %2432, float %2431)  ; FMax(a,b)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2435 = fsub fast float %1902, %2434
  %2436 = fsub fast float %2274, %1902
  %2437 = call float @dx.op.binary.f32(i32 35, float %2436, float %2435)  ; FMax(a,b)
  %2438 = call float @dx.op.binary.f32(i32 35, float %2433, float %2437)  ; FMax(a,b)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2277, 3
  %2440 = fmul fast float %2439, %2438
  %2441 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.CBufRet.f32 %2442, 1
  %2445 = extractvalue %dx.types.CBufRet.f32 %2442, 2
  %2446 = extractvalue %dx.types.CBufRet.f32 %2442, 3
  %2447 = fsub fast float %2443, %2417
  %2448 = fsub fast float %2444, %2418
  %2449 = fsub fast float %2445, %2419
  %2450 = fsub fast float %2446, %2420
  %2451 = fmul fast float %2447, %2441
  %2452 = fmul fast float %2448, %2441
  %2453 = fmul fast float %2449, %2441
  %2454 = fmul fast float %2450, %2441
  %2455 = fadd fast float %2451, %2417
  %2456 = fadd fast float %2452, %2418
  %2457 = fadd fast float %2453, %2419
  %2458 = fadd fast float %2454, %2420
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2462 = fsub fast float %2460, %2423
  %2463 = fsub fast float %2461, %2424
  %2464 = fmul fast float %2462, %2441
  %2465 = fmul fast float %2463, %2441
  %2466 = fadd fast float %2464, %2423
  %2467 = fadd fast float %2465, %2424
  %2468 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2469 = extractvalue %dx.types.CBufRet.f32 %2459, 3
  %2470 = fsub fast float %2468, %2427
  %2471 = fsub fast float %2469, %2428
  %2472 = fmul fast float %2470, %2441
  %2473 = fmul fast float %2471, %2441
  %2474 = fadd fast float %2472, %2427
  %2475 = fadd fast float %2473, %2428
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 0
  %2478 = fmul fast float %2477, %2455
  %2479 = fmul fast float %2477, %2456
  %2480 = fmul fast float %2477, %2457
  %2481 = fmul fast float %2477, %2458
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 0
  %2484 = fmul fast float %2483, %2466
  %2485 = fmul fast float %2483, %2467
  %2486 = fadd fast float %2484, %2478
  %2487 = fadd fast float %2485, %2480
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = fmul fast float %2489, %2474
  %2491 = fmul fast float %2489, %2475
  %2492 = fadd fast float %2486, %2490
  %2493 = fadd fast float %2487, %2491
  %2494 = extractvalue %dx.types.CBufRet.f32 %2476, 1
  %2495 = fmul fast float %2494, %2455
  %2496 = fmul fast float %2494, %2456
  %2497 = fmul fast float %2494, %2457
  %2498 = fmul fast float %2494, %2458
  %2499 = extractvalue %dx.types.CBufRet.f32 %2482, 1
  %2500 = fmul fast float %2499, %2466
  %2501 = fmul fast float %2499, %2467
  %2502 = fadd fast float %2500, %2495
  %2503 = fadd fast float %2501, %2497
  %2504 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %2505 = fmul fast float %2504, %2474
  %2506 = fmul fast float %2504, %2475
  %2507 = fadd fast float %2502, %2505
  %2508 = fadd fast float %2503, %2506
  %2509 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2510 = fmul fast float %2509, %2455
  %2511 = fmul fast float %2509, %2456
  %2512 = fmul fast float %2509, %2457
  %2513 = fmul fast float %2509, %2458
  %2514 = extractvalue %dx.types.CBufRet.f32 %2482, 2
  %2515 = fmul fast float %2514, %2466
  %2516 = fmul fast float %2514, %2467
  %2517 = fadd fast float %2515, %2510
  %2518 = fadd fast float %2516, %2512
  %2519 = extractvalue %dx.types.CBufRet.f32 %2488, 2
  %2520 = fmul fast float %2519, %2474
  %2521 = fmul fast float %2519, %2475
  %2522 = fadd fast float %2517, %2520
  %2523 = fadd fast float %2518, %2521
  %2524 = fmul fast float %2511, %2511
  %2525 = fmul fast float %2523, %2523
  %2526 = fmul fast float %2513, %2513
  %2527 = fadd fast float %2526, %2524
  %2528 = fadd fast float %2527, %2525
  %2529 = call float @dx.op.unary.f32(i32 24, float %2528)  ; Sqrt(value)
  %2530 = fcmp fast ugt float %2529, 0.000000e+00
  br i1 %2530, label %2531, label %2546

; <label>:2531                                    ; preds = %2265
  %2532 = fsub fast float -0.000000e+00, %2513
  %2533 = fdiv fast float %2532, %2529
  %2534 = fsub fast float -0.000000e+00, %2511
  %2535 = fdiv fast float %2534, %2529
  %2536 = fdiv fast float %2523, %2529
  %2537 = fmul fast float %2522, 0x3FE279A760000000
  %2538 = fmul fast float %2535, %2511
  %2539 = fmul fast float %2536, %2523
  %2540 = fmul fast float %2533, %2513
  %2541 = fadd fast float %2538, %2540
  %2542 = fsub fast float %2541, %2539
  %2543 = call float @dx.op.unary.f32(i32 6, float %2542)  ; FAbs(value)
  %2544 = fadd fast float %2543, 0x3DDB7CDFE0000000
  %2545 = fdiv fast float %2537, %2544
  br label %2546

; <label>:2546                                    ; preds = %2531, %2265
  %2547 = phi float [ %2545, %2531 ], [ 1.000000e+00, %2265 ]
  %2548 = fmul fast float %2496, %2496
  %2549 = fmul fast float %2508, %2508
  %2550 = fmul fast float %2498, %2498
  %2551 = fadd fast float %2550, %2548
  %2552 = fadd fast float %2551, %2549
  %2553 = call float @dx.op.unary.f32(i32 24, float %2552)  ; Sqrt(value)
  %2554 = fcmp fast ugt float %2553, 0.000000e+00
  br i1 %2554, label %2555, label %2570

; <label>:2555                                    ; preds = %2546
  %2556 = fsub fast float -0.000000e+00, %2498
  %2557 = fdiv fast float %2556, %2553
  %2558 = fsub fast float -0.000000e+00, %2496
  %2559 = fdiv fast float %2558, %2553
  %2560 = fdiv fast float %2508, %2553
  %2561 = fmul fast float %2507, 0x3FE279A760000000
  %2562 = fmul fast float %2559, %2496
  %2563 = fmul fast float %2560, %2508
  %2564 = fmul fast float %2557, %2498
  %2565 = fadd fast float %2562, %2564
  %2566 = fsub fast float %2565, %2563
  %2567 = call float @dx.op.unary.f32(i32 6, float %2566)  ; FAbs(value)
  %2568 = fadd fast float %2567, 0x3DDB7CDFE0000000
  %2569 = fdiv fast float %2561, %2568
  br label %2570

; <label>:2570                                    ; preds = %2555, %2546
  %2571 = phi float [ %2569, %2555 ], [ 1.000000e+00, %2546 ]
  %2572 = call float @dx.op.binary.f32(i32 36, float %2571, float %2547)  ; FMin(a,b)
  %2573 = fmul fast float %2479, %2479
  %2574 = fmul fast float %2493, %2493
  %2575 = fmul fast float %2481, %2481
  %2576 = fadd fast float %2575, %2573
  %2577 = fadd fast float %2576, %2574
  %2578 = call float @dx.op.unary.f32(i32 24, float %2577)  ; Sqrt(value)
  %2579 = fcmp fast ugt float %2578, 0.000000e+00
  br i1 %2579, label %2580, label %2595

; <label>:2580                                    ; preds = %2570
  %2581 = fsub fast float -0.000000e+00, %2481
  %2582 = fdiv fast float %2581, %2578
  %2583 = fsub fast float -0.000000e+00, %2479
  %2584 = fdiv fast float %2583, %2578
  %2585 = fdiv fast float %2493, %2578
  %2586 = fmul fast float %2492, 0x3FE279A760000000
  %2587 = fmul fast float %2584, %2479
  %2588 = fmul fast float %2585, %2493
  %2589 = fmul fast float %2582, %2481
  %2590 = fadd fast float %2587, %2589
  %2591 = fsub fast float %2590, %2588
  %2592 = call float @dx.op.unary.f32(i32 6, float %2591)  ; FAbs(value)
  %2593 = fadd fast float %2592, 0x3DDB7CDFE0000000
  %2594 = fdiv fast float %2586, %2593
  br label %2595

; <label>:2595                                    ; preds = %2580, %2570
  %2596 = phi float [ %2594, %2580 ], [ 1.000000e+00, %2570 ]
  %2597 = call float @dx.op.binary.f32(i32 36, float %2596, float %2572)  ; FMin(a,b)
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2599 = fcmp fast olt float %2598, 1.000000e+00
  br i1 %2599, label %2600, label %2610

; <label>:2600                                    ; preds = %2595
  %2601 = fmul fast float %2598, %2479
  %2602 = fmul fast float %2598, %2493
  %2603 = fmul fast float %2598, %2481
  %2604 = fmul fast float %2598, %2496
  %2605 = fmul fast float %2598, %2508
  %2606 = fmul fast float %2598, %2498
  %2607 = fmul fast float %2598, %2511
  %2608 = fmul fast float %2598, %2523
  %2609 = fmul fast float %2598, %2513
  br label %2610

; <label>:2610                                    ; preds = %2600, %2595
  %2611 = phi float [ %2607, %2600 ], [ %2511, %2595 ]
  %2612 = phi float [ %2608, %2600 ], [ %2523, %2595 ]
  %2613 = phi float [ %2609, %2600 ], [ %2513, %2595 ]
  %2614 = phi float [ %2604, %2600 ], [ %2496, %2595 ]
  %2615 = phi float [ %2605, %2600 ], [ %2508, %2595 ]
  %2616 = phi float [ %2606, %2600 ], [ %2498, %2595 ]
  %2617 = phi float [ %2601, %2600 ], [ %2479, %2595 ]
  %2618 = phi float [ %2602, %2600 ], [ %2493, %2595 ]
  %2619 = phi float [ %2603, %2600 ], [ %2481, %2595 ]
  %2620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2492)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2507)  ; FMax(a,b)
  %2622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2522)  ; FMax(a,b)
  %2623 = fcmp fast oge float %2280, 0.000000e+00
  %2624 = and i1 %2623, %2051
  %2625 = fcmp fast ole float %2280, 1.000000e+00
  %2626 = and i1 %2625, %2624
  %2627 = fcmp fast oge float %2281, 0.000000e+00
  %2628 = and i1 %2627, %2626
  %2629 = fcmp fast ole float %2281, 1.000000e+00
  %2630 = and i1 %2629, %2628
  br i1 %2630, label %2631, label %2776, !dx.controlflow.hints !77

; <label>:2631                                    ; preds = %2610
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2634 = extractvalue %dx.types.CBufRet.f32 %2632, 3
  %2635 = fmul fast float %2633, %2280
  %2636 = fmul fast float %2634, %2281
  %2637 = call float @dx.op.unary.f32(i32 27, float %2635)  ; Round_ni(value)
  %2638 = call float @dx.op.unary.f32(i32 27, float %2636)  ; Round_ni(value)
  %2639 = fptosi float %2637 to i32
  %2640 = fptosi float %2638 to i32
  %2641 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2639, i32 %2640, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 65535
  %2644 = lshr i32 %2642, 16
  %2645 = icmp eq i32 %2643, 65535
  br i1 %2645, label %2682, label %2646

; <label>:2646                                    ; preds = %2631
  %2647 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2648 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2649 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2650 = fmul fast float %2648, %2280
  %2651 = fmul fast float %2649, %2281
  %2652 = fmul fast float %2650, 1.250000e-01
  %2653 = fmul fast float %2651, 1.250000e-01
  %2654 = call float @dx.op.unary.f32(i32 27, float %2652)  ; Round_ni(value)
  %2655 = call float @dx.op.unary.f32(i32 27, float %2653)  ; Round_ni(value)
  %2656 = fmul fast float %2654, 8.000000e+00
  %2657 = fmul fast float %2655, 8.000000e+00
  %2658 = and i32 %2642, 255
  %2659 = lshr i32 %2642, 8
  %2660 = and i32 %2659, 255
  %2661 = mul nuw nsw i32 %2658, 9
  %2662 = uitofp i32 %2661 to float
  %2663 = mul nuw nsw i32 %2660, 9
  %2664 = uitofp i32 %2663 to float
  %2665 = fadd fast float %2662, 5.000000e-01
  %2666 = fadd fast float %2665, %2650
  %2667 = fsub fast float %2666, %2656
  %2668 = fadd fast float %2664, 5.000000e-01
  %2669 = fadd fast float %2668, %2651
  %2670 = fsub fast float %2669, %2657
  %2671 = fdiv fast float %2667, %2050
  %2672 = fdiv fast float %2670, %2647
  %2673 = fmul fast float %2308, 4.375000e-01
  %2674 = fadd fast float %2673, 3.125000e-02
  %2675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2671, float %2672, float %2674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.ResRet.f32 %2675, 1
  %2678 = extractvalue %dx.types.ResRet.f32 %2675, 2
  %2679 = fadd fast float %2676, %2620
  %2680 = fadd fast float %2677, %2621
  %2681 = fadd fast float %2678, %2622
  br label %2682

; <label>:2682                                    ; preds = %2646, %2631
  %2683 = phi float [ %2681, %2646 ], [ %2622, %2631 ]
  %2684 = phi float [ %2680, %2646 ], [ %2621, %2631 ]
  %2685 = phi float [ %2679, %2646 ], [ %2620, %2631 ]
  %2686 = icmp eq i32 %2644, 65535
  br i1 %2686, label %2776, label %2687

; <label>:2687                                    ; preds = %2682
  %2688 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2689 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2690 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2691 = fmul fast float %2689, %2280
  %2692 = fmul fast float %2690, %2281
  %2693 = fmul fast float %2691, 1.250000e-01
  %2694 = fmul fast float %2692, 1.250000e-01
  %2695 = call float @dx.op.unary.f32(i32 27, float %2693)  ; Round_ni(value)
  %2696 = call float @dx.op.unary.f32(i32 27, float %2694)  ; Round_ni(value)
  %2697 = fmul fast float %2695, 8.000000e+00
  %2698 = fmul fast float %2696, 8.000000e+00
  %2699 = fsub fast float %2691, %2697
  %2700 = fsub fast float %2692, %2698
  %2701 = fadd fast float %2699, 5.000000e-01
  %2702 = fadd fast float %2700, 5.000000e-01
  %2703 = and i32 %2644, 255
  %2704 = lshr i32 %2642, 24
  %2705 = mul nuw nsw i32 %2703, 9
  %2706 = uitofp i32 %2705 to float
  %2707 = mul nuw nsw i32 %2704, 9
  %2708 = uitofp i32 %2707 to float
  %2709 = fadd fast float %2701, %2706
  %2710 = fadd fast float %2702, %2708
  %2711 = fdiv fast float %2709, %2050
  %2712 = fdiv fast float %2710, %2688
  %2713 = fmul fast float %2308, 4.375000e-01
  %2714 = fadd fast float %2713, 3.125000e-02
  %2715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2711, float %2712, float %2714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.ResRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.ResRet.f32 %2715, 2
  %2719 = fadd fast float %2713, 5.312500e-01
  %2720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2711, float %2712, float %2719, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2721 = extractvalue %dx.types.ResRet.f32 %2720, 0
  %2722 = extractvalue %dx.types.ResRet.f32 %2720, 1
  %2723 = extractvalue %dx.types.ResRet.f32 %2720, 2
  %2724 = fmul fast float %2721, 2.000000e+00
  %2725 = fmul fast float %2722, 2.000000e+00
  %2726 = fmul fast float %2723, 2.000000e+00
  %2727 = fadd fast float %2724, -1.000000e+00
  %2728 = fadd fast float %2725, -1.000000e+00
  %2729 = fadd fast float %2726, -1.000000e+00
  %2730 = fmul fast float %2727, %2727
  %2731 = fmul fast float %2728, %2728
  %2732 = fadd fast float %2730, %2731
  %2733 = fmul fast float %2729, %2729
  %2734 = fadd fast float %2732, %2733
  %2735 = call float @dx.op.unary.f32(i32 24, float %2734)  ; Sqrt(value)
  %2736 = fcmp fast ogt float %2735, 0.000000e+00
  br i1 %2736, label %2737, label %2741

; <label>:2737                                    ; preds = %2687
  %2738 = fdiv fast float %2727, %2735
  %2739 = fdiv fast float %2728, %2735
  %2740 = fdiv fast float %2729, %2735
  br label %2741

; <label>:2741                                    ; preds = %2737, %2687
  %2742 = phi float [ %2738, %2737 ], [ 0.000000e+00, %2687 ]
  %2743 = phi float [ %2739, %2737 ], [ 0.000000e+00, %2687 ]
  %2744 = phi float [ %2740, %2737 ], [ 0.000000e+00, %2687 ]
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 0
  %2747 = extractvalue %dx.types.CBufRet.f32 %2745, 1
  %2748 = fsub fast float %1901, %2746
  %2749 = fsub fast float %1902, %2747
  %2750 = fmul fast float %2748, %2748
  %2751 = fmul fast float %2749, %2749
  %2752 = fadd fast float %2750, %2751
  %2753 = call float @dx.op.unary.f32(i32 24, float %2752)  ; Sqrt(value)
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2757 = fsub fast float %2753, %2755
  %2758 = fdiv fast float %2757, %2756
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = fmul fast float %2759, 2.000000e+00
  %2761 = fsub fast float 3.000000e+00, %2760
  %2762 = fmul fast float %2759, %2759
  %2763 = fmul fast float %2762, %2761
  %2764 = call float @dx.op.dot3.f32(i32 55, float %2742, float %2743, float %2744, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2764)  ; FMax(a,b)
  %2766 = fmul fast float %2765, 0x400C5BF8A0000000
  %2767 = fmul fast float %2763, %2716
  %2768 = fmul fast float %2767, %2766
  %2769 = fadd fast float %2768, %2685
  %2770 = fmul fast float %2763, %2717
  %2771 = fmul fast float %2770, %2766
  %2772 = fadd fast float %2771, %2684
  %2773 = fmul fast float %2763, %2718
  %2774 = fmul fast float %2773, %2766
  %2775 = fadd fast float %2774, %2683
  br label %2776

; <label>:2776                                    ; preds = %2741, %2682, %2610
  %2777 = phi float [ %2775, %2741 ], [ %2683, %2682 ], [ %2622, %2610 ]
  %2778 = phi float [ %2772, %2741 ], [ %2684, %2682 ], [ %2621, %2610 ]
  %2779 = phi float [ %2769, %2741 ], [ %2685, %2682 ], [ %2620, %2610 ]
  %2780 = fcmp fast ogt float %2267, %2304
  %2781 = and i1 %2623, %2780
  %2782 = and i1 %2625, %2781
  %2783 = and i1 %2627, %2782
  %2784 = and i1 %2629, %2783
  br i1 %2784, label %2785, label %2842, !dx.controlflow.hints !78

; <label>:2785                                    ; preds = %2776
  %2786 = fmul fast float %2306, 0x3FC24924A0000000
  %2787 = fsub fast float %2267, %2304
  %2788 = fdiv fast float %2787, %2786
  %2789 = call float @dx.op.unary.f32(i32 7, float %2788)  ; Saturate(value)
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 0
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = fsub fast float %2791, %2779
  %2797 = fsub fast float %2793, %2617
  %2798 = fsub fast float %2794, %2618
  %2799 = fsub fast float %2795, %2619
  %2800 = fmul fast float %2796, %2789
  %2801 = fmul fast float %2797, %2789
  %2802 = fmul fast float %2798, %2789
  %2803 = fmul fast float %2799, %2789
  %2804 = fadd fast float %2800, %2779
  %2805 = fadd fast float %2801, %2617
  %2806 = fadd fast float %2802, %2618
  %2807 = fadd fast float %2803, %2619
  %2808 = extractvalue %dx.types.CBufRet.f32 %2790, 1
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2813 = fsub fast float %2808, %2778
  %2814 = fsub fast float %2810, %2614
  %2815 = fsub fast float %2811, %2615
  %2816 = fsub fast float %2812, %2616
  %2817 = fmul fast float %2813, %2789
  %2818 = fmul fast float %2814, %2789
  %2819 = fmul fast float %2815, %2789
  %2820 = fmul fast float %2816, %2789
  %2821 = fadd fast float %2817, %2778
  %2822 = fadd fast float %2818, %2614
  %2823 = fadd fast float %2819, %2615
  %2824 = fadd fast float %2820, %2616
  %2825 = extractvalue %dx.types.CBufRet.f32 %2790, 2
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 0
  %2828 = extractvalue %dx.types.CBufRet.f32 %2826, 1
  %2829 = extractvalue %dx.types.CBufRet.f32 %2826, 2
  %2830 = fsub fast float %2825, %2777
  %2831 = fsub fast float %2827, %2611
  %2832 = fsub fast float %2828, %2612
  %2833 = fsub fast float %2829, %2613
  %2834 = fmul fast float %2830, %2789
  %2835 = fmul fast float %2831, %2789
  %2836 = fmul fast float %2832, %2789
  %2837 = fmul fast float %2833, %2789
  %2838 = fadd fast float %2834, %2777
  %2839 = fadd fast float %2835, %2611
  %2840 = fadd fast float %2836, %2612
  %2841 = fadd fast float %2837, %2613
  br label %2842

; <label>:2842                                    ; preds = %2785, %2776
  %2843 = phi float [ %2838, %2785 ], [ %2777, %2776 ]
  %2844 = phi float [ %2839, %2785 ], [ %2611, %2776 ]
  %2845 = phi float [ %2840, %2785 ], [ %2612, %2776 ]
  %2846 = phi float [ %2841, %2785 ], [ %2613, %2776 ]
  %2847 = phi float [ %2821, %2785 ], [ %2778, %2776 ]
  %2848 = phi float [ %2822, %2785 ], [ %2614, %2776 ]
  %2849 = phi float [ %2823, %2785 ], [ %2615, %2776 ]
  %2850 = phi float [ %2824, %2785 ], [ %2616, %2776 ]
  %2851 = phi float [ %2804, %2785 ], [ %2779, %2776 ]
  %2852 = phi float [ %2805, %2785 ], [ %2617, %2776 ]
  %2853 = phi float [ %2806, %2785 ], [ %2618, %2776 ]
  %2854 = phi float [ %2807, %2785 ], [ %2619, %2776 ]
  %2855 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2856 = fmul fast float %2855, %2851
  %2857 = fmul fast float %2855, %2847
  %2858 = fmul fast float %2855, %2843
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2861 = fmul fast float %2856, %2860
  %2862 = fmul fast float %2857, %2860
  %2863 = fmul fast float %2858, %2860
  %2864 = fmul fast float %2852, 1.500000e+00
  %2865 = fmul fast float %2864, %2855
  %2866 = fmul fast float %2865, %2860
  %2867 = fmul fast float %2853, 1.500000e+00
  %2868 = fmul fast float %2867, %2855
  %2869 = fmul fast float %2868, %2860
  %2870 = fmul fast float %2854, 1.500000e+00
  %2871 = fmul fast float %2870, %2855
  %2872 = fmul fast float %2871, %2860
  %2873 = fmul fast float %2848, 1.500000e+00
  %2874 = fmul fast float %2873, %2855
  %2875 = fmul fast float %2874, %2860
  %2876 = fmul fast float %2849, 1.500000e+00
  %2877 = fmul fast float %2876, %2855
  %2878 = fmul fast float %2877, %2860
  %2879 = fmul fast float %2850, 1.500000e+00
  %2880 = fmul fast float %2879, %2855
  %2881 = fmul fast float %2880, %2860
  %2882 = fmul fast float %2844, 1.500000e+00
  %2883 = fmul fast float %2882, %2855
  %2884 = fmul fast float %2883, %2860
  %2885 = fmul fast float %2845, 1.500000e+00
  %2886 = fmul fast float %2885, %2855
  %2887 = fmul fast float %2886, %2860
  %2888 = fmul fast float %2846, 1.500000e+00
  %2889 = fmul fast float %2888, %2855
  %2890 = fmul fast float %2889, %2860
  %2891 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2861)  ; FMax(a,b)
  %2892 = call float @dx.op.dot3.f32(i32 55, float %2866, float %2869, float %2872, float %2866, float %2869, float %2872)  ; Dot3(ax,ay,az,bx,by,bz)
  %2893 = fcmp fast oeq float %2892, 0.000000e+00
  %2894 = fcmp fast oeq float %2891, 0.000000e+00
  %2895 = or i1 %2894, %2893
  br i1 %2895, label %2925, label %2896

; <label>:2896                                    ; preds = %2842
  %2897 = fsub fast float -0.000000e+00, %2872
  %2898 = fsub fast float -0.000000e+00, %2866
  %2899 = call float @dx.op.unary.f32(i32 24, float %2892)  ; Sqrt(value)
  %2900 = fdiv fast float %2899, %2891
  %2901 = fcmp fast ogt float %2900, 0x3FFB6F8900000000
  %2902 = select i1 %2901, float 0x3FFB6F8900000000, float %2900
  %2903 = fmul fast float %2902, 0x3FE8A23460000000
  %2904 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  %2905 = call float @dx.op.binary.f32(i32 35, float %2902, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2906 = fmul fast float %2904, %2891
  %2907 = fmul fast float %2905, 0x3FF279A740000000
  %2908 = fadd fast float %2907, -1.000000e+00
  %2909 = call float @dx.op.dot3.f32(i32 55, float %2897, float %2898, float %2869, float %2897, float %2898, float %2869)  ; Dot3(ax,ay,az,bx,by,bz)
  %2910 = call float @dx.op.unary.f32(i32 25, float %2909)  ; Rsqrt(value)
  %2911 = fmul fast float %2910, %2897
  %2912 = fmul fast float %2910, %2898
  %2913 = fmul fast float %2910, %2869
  %2914 = fmul fast float %2908, %2908
  %2915 = fsub fast float 1.000000e+00, %2914
  %2916 = fmul fast float %2905, 0x40005F8BE0000000
  %2917 = fsub fast float 0x400C5BF8A0000000, %2916
  %2918 = fdiv fast float %2906, %2917
  %2919 = fmul fast float %2918, 0x3FEE31C3C0000000
  %2920 = fmul fast float %2919, %2915
  %2921 = fmul fast float %2905, 0x3FDACB7480000000
  %2922 = fadd fast float %2921, 0xBFD7347680000000
  %2923 = fmul fast float %2922, %2918
  %2924 = fmul fast float %2923, %2915
  br label %2925

; <label>:2925                                    ; preds = %2896, %2842
  %2926 = phi float [ %2911, %2896 ], [ 0.000000e+00, %2842 ]
  %2927 = phi float [ %2912, %2896 ], [ 0.000000e+00, %2842 ]
  %2928 = phi float [ %2913, %2896 ], [ 0.000000e+00, %2842 ]
  %2929 = phi float [ %2920, %2896 ], [ 0.000000e+00, %2842 ]
  %2930 = phi float [ %2924, %2896 ], [ 0.000000e+00, %2842 ]
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2926, float %2927, float %2928, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = fmul fast float %2931, %2931
  %2933 = fmul fast float %2932, 0x3FEE471020000000
  %2934 = fadd fast float %2933, 0xBFD42F6020000000
  %2935 = fmul fast float %2891, 0x3FD20DD760000000
  %2936 = fmul fast float %2934, %2930
  %2937 = fmul fast float %2929, 0x3FDF454380000000
  %2938 = fmul fast float %2937, %2931
  %2939 = fadd fast float %2938, %2935
  %2940 = fadd fast float %2939, %2936
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2926, float %2927, float %2928, float %1891, float %1892, float %1893)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = fmul fast float %2941, 0x3FDF454380000000
  %2943 = fmul fast float %2941, %2941
  %2944 = fmul fast float %2943, 0x3FEE471020000000
  %2945 = fadd fast float %2944, 0xBFD42F6020000000
  %2946 = call float @dx.op.dot3.f32(i32 55, float %2891, float %2929, float %2930, float 0x3FD20DD760000000, float %2942, float %2945)  ; Dot3(ax,ay,az,bx,by,bz)
  %2947 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2862)  ; FMax(a,b)
  %2948 = call float @dx.op.dot3.f32(i32 55, float %2875, float %2878, float %2881, float %2875, float %2878, float %2881)  ; Dot3(ax,ay,az,bx,by,bz)
  %2949 = fcmp fast oeq float %2948, 0.000000e+00
  %2950 = fcmp fast oeq float %2947, 0.000000e+00
  %2951 = or i1 %2950, %2949
  br i1 %2951, label %2981, label %2952

; <label>:2952                                    ; preds = %2925
  %2953 = fsub fast float -0.000000e+00, %2881
  %2954 = fsub fast float -0.000000e+00, %2875
  %2955 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %2956 = fdiv fast float %2955, %2947
  %2957 = fcmp fast ogt float %2956, 0x3FFB6F8900000000
  %2958 = select i1 %2957, float 0x3FFB6F8900000000, float %2956
  %2959 = fmul fast float %2958, 0x3FE8A23460000000
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = call float @dx.op.binary.f32(i32 35, float %2958, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2962 = fmul fast float %2960, %2947
  %2963 = fmul fast float %2961, 0x3FF279A740000000
  %2964 = fadd fast float %2963, -1.000000e+00
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2954, float %2878, float %2953, float %2954, float %2878)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = call float @dx.op.unary.f32(i32 25, float %2965)  ; Rsqrt(value)
  %2967 = fmul fast float %2966, %2953
  %2968 = fmul fast float %2966, %2954
  %2969 = fmul fast float %2966, %2878
  %2970 = fmul fast float %2964, %2964
  %2971 = fsub fast float 1.000000e+00, %2970
  %2972 = fmul fast float %2961, 0x40005F8BE0000000
  %2973 = fsub fast float 0x400C5BF8A0000000, %2972
  %2974 = fdiv fast float %2962, %2973
  %2975 = fmul fast float %2974, 0x3FEE31C3C0000000
  %2976 = fmul fast float %2975, %2971
  %2977 = fmul fast float %2961, 0x3FDACB7480000000
  %2978 = fadd fast float %2977, 0xBFD7347680000000
  %2979 = fmul fast float %2978, %2974
  %2980 = fmul fast float %2979, %2971
  br label %2981

; <label>:2981                                    ; preds = %2952, %2925
  %2982 = phi float [ %2967, %2952 ], [ 0.000000e+00, %2925 ]
  %2983 = phi float [ %2968, %2952 ], [ 0.000000e+00, %2925 ]
  %2984 = phi float [ %2969, %2952 ], [ 0.000000e+00, %2925 ]
  %2985 = phi float [ %2976, %2952 ], [ 0.000000e+00, %2925 ]
  %2986 = phi float [ %2980, %2952 ], [ 0.000000e+00, %2925 ]
  %2987 = call float @dx.op.dot3.f32(i32 55, float %2982, float %2983, float %2984, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = fmul fast float %2987, %2987
  %2989 = fmul fast float %2988, 0x3FEE471020000000
  %2990 = fadd fast float %2989, 0xBFD42F6020000000
  %2991 = fmul fast float %2947, 0x3FD20DD760000000
  %2992 = fmul fast float %2990, %2986
  %2993 = fmul fast float %2985, 0x3FDF454380000000
  %2994 = fmul fast float %2993, %2987
  %2995 = fadd fast float %2994, %2991
  %2996 = fadd fast float %2995, %2992
  %2997 = call float @dx.op.dot3.f32(i32 55, float %2982, float %2983, float %2984, float %1891, float %1892, float %1893)  ; Dot3(ax,ay,az,bx,by,bz)
  %2998 = fmul fast float %2997, 0x3FDF454380000000
  %2999 = fmul fast float %2997, %2997
  %3000 = fmul fast float %2999, 0x3FEE471020000000
  %3001 = fadd fast float %3000, 0xBFD42F6020000000
  %3002 = call float @dx.op.dot3.f32(i32 55, float %2947, float %2985, float %2986, float 0x3FD20DD760000000, float %2998, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %3003 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2863)  ; FMax(a,b)
  %3004 = call float @dx.op.dot3.f32(i32 55, float %2884, float %2887, float %2890, float %2884, float %2887, float %2890)  ; Dot3(ax,ay,az,bx,by,bz)
  %3005 = fcmp fast oeq float %3004, 0.000000e+00
  %3006 = fcmp fast oeq float %3003, 0.000000e+00
  %3007 = or i1 %3006, %3005
  br i1 %3007, label %3037, label %3008

; <label>:3008                                    ; preds = %2981
  %3009 = fsub fast float -0.000000e+00, %2890
  %3010 = fsub fast float -0.000000e+00, %2884
  %3011 = call float @dx.op.unary.f32(i32 24, float %3004)  ; Sqrt(value)
  %3012 = fdiv fast float %3011, %3003
  %3013 = fcmp fast ogt float %3012, 0x3FFB6F8900000000
  %3014 = select i1 %3013, float 0x3FFB6F8900000000, float %3012
  %3015 = fmul fast float %3014, 0x3FE8A23460000000
  %3016 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3017 = call float @dx.op.binary.f32(i32 35, float %3014, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3018 = fmul fast float %3016, %3003
  %3019 = fmul fast float %3017, 0x3FF279A740000000
  %3020 = fadd fast float %3019, -1.000000e+00
  %3021 = call float @dx.op.dot3.f32(i32 55, float %3009, float %3010, float %2887, float %3009, float %3010, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %3022 = call float @dx.op.unary.f32(i32 25, float %3021)  ; Rsqrt(value)
  %3023 = fmul fast float %3022, %3009
  %3024 = fmul fast float %3022, %3010
  %3025 = fmul fast float %3022, %2887
  %3026 = fmul fast float %3020, %3020
  %3027 = fsub fast float 1.000000e+00, %3026
  %3028 = fmul fast float %3017, 0x40005F8BE0000000
  %3029 = fsub fast float 0x400C5BF8A0000000, %3028
  %3030 = fdiv fast float %3018, %3029
  %3031 = fmul fast float %3030, 0x3FEE31C3C0000000
  %3032 = fmul fast float %3031, %3027
  %3033 = fmul fast float %3017, 0x3FDACB7480000000
  %3034 = fadd fast float %3033, 0xBFD7347680000000
  %3035 = fmul fast float %3034, %3030
  %3036 = fmul fast float %3035, %3027
  br label %3037

; <label>:3037                                    ; preds = %3008, %2981
  %3038 = phi float [ %3023, %3008 ], [ 0.000000e+00, %2981 ]
  %3039 = phi float [ %3024, %3008 ], [ 0.000000e+00, %2981 ]
  %3040 = phi float [ %3025, %3008 ], [ 0.000000e+00, %2981 ]
  %3041 = phi float [ %3032, %3008 ], [ 0.000000e+00, %2981 ]
  %3042 = phi float [ %3036, %3008 ], [ 0.000000e+00, %2981 ]
  %3043 = call float @dx.op.dot3.f32(i32 55, float %3038, float %3039, float %3040, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %3044 = fmul fast float %3043, %3043
  %3045 = fmul fast float %3044, 0x3FEE471020000000
  %3046 = fadd fast float %3045, 0xBFD42F6020000000
  %3047 = fmul fast float %3003, 0x3FD20DD760000000
  %3048 = fmul fast float %3046, %3042
  %3049 = fmul fast float %3041, 0x3FDF454380000000
  %3050 = fmul fast float %3049, %3043
  %3051 = fadd fast float %3050, %3047
  %3052 = fadd fast float %3051, %3048
  %3053 = call float @dx.op.dot3.f32(i32 55, float %3038, float %3039, float %3040, float %1891, float %1892, float %1893)  ; Dot3(ax,ay,az,bx,by,bz)
  %3054 = fmul fast float %3053, 0x3FDF454380000000
  %3055 = fmul fast float %3053, %3053
  %3056 = fmul fast float %3055, 0x3FEE471020000000
  %3057 = fadd fast float %3056, 0xBFD42F6020000000
  %3058 = call float @dx.op.dot3.f32(i32 55, float %3003, float %3041, float %3042, float 0x3FD20DD760000000, float %3054, float %3057)  ; Dot3(ax,ay,az,bx,by,bz)
  %3059 = call float @dx.op.binary.f32(i32 35, float %2940, float 0.000000e+00)  ; FMax(a,b)
  %3060 = call float @dx.op.binary.f32(i32 35, float %2996, float 0.000000e+00)  ; FMax(a,b)
  %3061 = call float @dx.op.binary.f32(i32 35, float %3052, float 0.000000e+00)  ; FMax(a,b)
  %3062 = call float @dx.op.binary.f32(i32 35, float %2946, float 0.000000e+00)  ; FMax(a,b)
  %3063 = call float @dx.op.binary.f32(i32 35, float %3002, float 0.000000e+00)  ; FMax(a,b)
  %3064 = call float @dx.op.binary.f32(i32 35, float %3058, float 0.000000e+00)  ; FMax(a,b)
  %3065 = fsub fast float %2261, %3059
  %3066 = fsub fast float %2262, %3060
  %3067 = fsub fast float %2263, %3061
  %3068 = fmul fast float %3065, %1942
  %3069 = fmul fast float %3066, %1942
  %3070 = fmul fast float %3067, %1942
  %3071 = fadd fast float %3068, %3059
  %3072 = fadd fast float %3069, %3060
  %3073 = fadd fast float %3070, %3061
  %3074 = fsub fast float %2258, %3062
  %3075 = fsub fast float %2259, %3063
  %3076 = fsub fast float %2260, %3064
  %3077 = fmul fast float %3074, %1942
  %3078 = fmul fast float %3075, %1942
  %3079 = fmul fast float %3076, %1942
  %3080 = fadd fast float %3077, %3062
  %3081 = fadd fast float %3078, %3063
  %3082 = fadd fast float %3079, %3064
  br label %3083

; <label>:3083                                    ; preds = %3037, %2257
  %3084 = phi float [ %3080, %3037 ], [ %2258, %2257 ]
  %3085 = phi float [ %3081, %3037 ], [ %2259, %2257 ]
  %3086 = phi float [ %3082, %3037 ], [ %2260, %2257 ]
  %3087 = phi float [ %3071, %3037 ], [ %2261, %2257 ]
  %3088 = phi float [ %3072, %3037 ], [ %2262, %2257 ]
  %3089 = phi float [ %3073, %3037 ], [ %2263, %2257 ]
  %3090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3091 = extractvalue %dx.types.CBufRet.f32 %3090, 0
  %3092 = call float @dx.op.binary.f32(i32 36, float %1875, float %3091)  ; FMin(a,b)
  %3093 = fsub fast float 1.000000e+00, %1894
  %3094 = fmul fast float %3092, %3093
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = bitcast float %3095 to i32
  %3097 = sub nsw i32 2129859010, %3096
  %3098 = bitcast i32 %3097 to float
  %3099 = call float @dx.op.binary.f32(i32 36, float %1876, float %3091)  ; FMin(a,b)
  %3100 = fmul fast float %3099, %3093
  %3101 = fsub fast float 1.000000e+00, %3100
  %3102 = bitcast float %3101 to i32
  %3103 = sub nsw i32 2129859010, %3102
  %3104 = bitcast i32 %3103 to float
  %3105 = call float @dx.op.binary.f32(i32 36, float %1877, float %3091)  ; FMin(a,b)
  %3106 = fmul fast float %3105, %3093
  %3107 = fsub fast float 1.000000e+00, %3106
  %3108 = bitcast float %3107 to i32
  %3109 = sub nsw i32 2129859010, %3108
  %3110 = bitcast i32 %3109 to float
  %3111 = fmul fast float %3087, %1894
  %3112 = fmul fast float %3111, %3098
  %3113 = fmul fast float %3088, %1894
  %3114 = fmul fast float %3113, %3104
  %3115 = fmul fast float %3089, %1894
  %3116 = fmul fast float %3115, %3110
  %3117 = call float @dx.op.binary.f32(i32 36, float %1872, float %3091)  ; FMin(a,b)
  %3118 = fmul fast float %3117, %3093
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = bitcast float %3119 to i32
  %3121 = sub nsw i32 2129859010, %3120
  %3122 = bitcast i32 %3121 to float
  %3123 = call float @dx.op.binary.f32(i32 36, float %1873, float %3091)  ; FMin(a,b)
  %3124 = fmul fast float %3123, %3093
  %3125 = fsub fast float 1.000000e+00, %3124
  %3126 = bitcast float %3125 to i32
  %3127 = sub nsw i32 2129859010, %3126
  %3128 = bitcast i32 %3127 to float
  %3129 = call float @dx.op.binary.f32(i32 36, float %1883, float %3091)  ; FMin(a,b)
  %3130 = fmul fast float %3129, %3093
  %3131 = fsub fast float 1.000000e+00, %3130
  %3132 = bitcast float %3131 to i32
  %3133 = sub nsw i32 2129859010, %3132
  %3134 = bitcast i32 %3133 to float
  %3135 = fmul fast float %3084, %1894
  %3136 = fmul fast float %3135, %3122
  %3137 = fmul fast float %3085, %1894
  %3138 = fmul fast float %3137, %3128
  %3139 = fmul fast float %3086, %1894
  %3140 = fmul fast float %3139, %3134
  %3141 = call float @dx.op.dot3.f32(i32 55, float %3112, float %3114, float %3116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3142 = select i1 %176, float 0.000000e+00, float %3112
  %3143 = select i1 %176, float %3141, float %3114
  %3144 = select i1 %176, float 0.000000e+00, float %3116
  %3145 = call float @dx.op.dot3.f32(i32 55, float %3136, float %3138, float %3140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3146 = select i1 %176, float 0.000000e+00, float %3136
  %3147 = select i1 %176, float %3145, float %3138
  %3148 = select i1 %176, float 0.000000e+00, float %3140
  %3149 = fmul fast float %1885, 9.843750e-01
  %3150 = fmul fast float %1881, 9.843750e-01
  %3151 = fadd fast float %3149, 7.812500e-03
  %3152 = fadd fast float %3150, 7.812500e-03
  %3153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3151, float %3152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3154 = extractvalue %dx.types.ResRet.f32 %3153, 2
  %3155 = extractvalue %dx.types.ResRet.f32 %3153, 3
  %3156 = fmul fast float %3154, %1872
  %3157 = fmul fast float %3154, %1873
  %3158 = fmul fast float %3154, %1883
  %3159 = fadd fast float %3156, %3155
  %3160 = fadd fast float %3157, %3155
  %3161 = fadd fast float %3158, %3155
  %3162 = fcmp fast ogt float %1249, 0.000000e+00
  br i1 %3162, label %3163, label %3189

; <label>:3163                                    ; preds = %3083
  %3164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1249, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.ResRet.f32 %3164, 2
  %3168 = fadd fast float %3165, -5.000000e-01
  %3169 = fadd fast float %3166, -5.000000e-01
  %3170 = fadd fast float %3167, -5.000000e-01
  %3171 = fsub fast float 1.000000e+00, %1872
  %3172 = fsub fast float 1.000000e+00, %1873
  %3173 = fsub fast float 1.000000e+00, %1883
  %3174 = fmul fast float %1872, 4.000000e+00
  %3175 = fmul fast float %3174, %3171
  %3176 = fmul fast float %3175, %3168
  %3177 = fmul fast float %1873, 4.000000e+00
  %3178 = fmul fast float %3177, %3172
  %3179 = fmul fast float %3178, %3169
  %3180 = fmul fast float %1883, 4.000000e+00
  %3181 = fmul fast float %3180, %3173
  %3182 = fmul fast float %3181, %3170
  %3183 = fadd fast float %3176, %3159
  %3184 = fadd fast float %3179, %3160
  %3185 = fadd fast float %3182, %3161
  %3186 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3187 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3188 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  br label %3189

; <label>:3189                                    ; preds = %3163, %3083
  %3190 = phi float [ %3186, %3163 ], [ %3159, %3083 ]
  %3191 = phi float [ %3187, %3163 ], [ %3160, %3083 ]
  %3192 = phi float [ %3188, %3163 ], [ %3161, %3083 ]
  %3193 = call float @dx.op.binary.f32(i32 35, float %3191, float %3192)  ; FMax(a,b)
  %3194 = call float @dx.op.binary.f32(i32 35, float %3190, float %3193)  ; FMax(a,b)
  %3195 = fsub fast float 1.000000e+00, %3194
  %3196 = fmul fast float %3195, %3142
  %3197 = fmul fast float %3195, %3143
  %3198 = fmul fast float %3195, %3144
  %3199 = call float @dx.op.dot3.f32(i32 55, float %1875, float %1876, float %1877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3200 = fcmp fast ogt float %3199, 0x3E7FF19E20000000
  %3201 = fdiv fast float 1.000000e+00, %3199
  %3202 = select i1 %3200, float %3201, float 0.000000e+00
  %3203 = fmul fast float %3202, %1875
  %3204 = fmul fast float %3202, %1876
  %3205 = fmul fast float %3202, %1877
  %3206 = fadd fast float %3203, -1.000000e+00
  %3207 = fadd fast float %3204, -1.000000e+00
  %3208 = fadd fast float %3205, -1.000000e+00
  %3209 = fmul fast float %3206, 5.000000e-01
  %3210 = fmul fast float %3207, 5.000000e-01
  %3211 = fmul fast float %3208, 5.000000e-01
  %3212 = fadd fast float %3209, 1.000000e+00
  %3213 = fadd fast float %3210, 1.000000e+00
  %3214 = fadd fast float %3211, 1.000000e+00
  %3215 = fmul fast float %3190, %3146
  %3216 = fmul fast float %3191, %3147
  %3217 = fmul fast float %3192, %3148
  %3218 = fsub fast float 1.000000e+00, %1885
  %3219 = bitcast float %3218 to i32
  %3220 = sitofp i32 %3219 to float
  %3221 = fmul fast float %3220, 5.000000e+00
  %3222 = fadd fast float %3221, 0xC1EFBF8940000000
  %3223 = fptosi float %3222 to i32
  %3224 = bitcast i32 %3223 to float
  %3225 = fmul fast float %3224, %1248
  %3226 = fmul fast float %3142, %3225
  %3227 = fmul fast float %3226, %3195
  %3228 = fmul fast float %3227, %3212
  %3229 = fmul fast float %3143, %3225
  %3230 = fmul fast float %3229, %3195
  %3231 = fmul fast float %3230, %3213
  %3232 = fmul fast float %3144, %3225
  %3233 = fmul fast float %3232, %3195
  %3234 = fmul fast float %3233, %3214
  %3235 = fmul fast float %3196, %1269
  %3236 = fmul fast float %3197, %1269
  %3237 = fmul fast float %3198, %1269
  %3238 = fadd fast float %3215, %1250
  %3239 = fadd fast float %3238, %3228
  %3240 = fmul fast float %3239, %1269
  %3241 = fadd fast float %3216, %1251
  %3242 = fadd fast float %3241, %3231
  %3243 = fmul fast float %3242, %1269
  %3244 = fadd fast float %3217, %1252
  %3245 = fadd fast float %3244, %3234
  %3246 = fmul fast float %3245, %1269
  %3247 = bitcast i32 %1897 to float
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 3
  %3250 = fcmp fast oeq float %3249, 0.000000e+00
  br i1 %3250, label %3478, label %3251

; <label>:3251                                    ; preds = %3189
  %3252 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3256 = extractvalue %dx.types.CBufRet.f32 %3255, 0
  %3257 = extractvalue %dx.types.CBufRet.f32 %3255, 1
  %3258 = extractvalue %dx.types.CBufRet.f32 %3255, 2
  %3259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3260 = extractvalue %dx.types.CBufRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.CBufRet.f32 %3259, 1
  %3262 = call float @dx.op.dot3.f32(i32 55, float %3256, float %3257, float %3258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3263 = select i1 %176, float %3260, float %3256
  %3264 = select i1 %176, float %3262, float %3257
  %3265 = select i1 %176, float %3261, float %3258
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 1
  %3268 = fcmp fast une float %3267, 0.000000e+00
  br i1 %3268, label %3269, label %3286

; <label>:3269                                    ; preds = %3251
  %3270 = fptoui float %58 to i32
  %3271 = fptoui float %59 to i32
  %3272 = lshr i32 %3270, 4
  %3273 = lshr i32 %3271, 4
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = fptoui float %3275 to i32
  %3277 = add i32 %3276, 15
  %3278 = lshr i32 %3277, 4
  %3279 = mul i32 %3278, %3273
  %3280 = add i32 %3279, %3272
  %3281 = shl i32 %3280, 3
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, -268435456
  %3285 = icmp eq i32 %3284, -1342177280
  br i1 %3285, label %3296, label %3286

; <label>:3286                                    ; preds = %3269, %3251
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 2
  %3289 = extractvalue %dx.types.CBufRet.f32 %3287, 3
  %3290 = fmul fast float %3288, %58
  %3291 = fmul fast float %3289, %59
  %3292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3290, float %3291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  br label %3296

; <label>:3296                                    ; preds = %3286, %3269
  %3297 = phi float [ %3293, %3286 ], [ 0.000000e+00, %3269 ]
  %3298 = phi float [ %3294, %3286 ], [ 0.000000e+00, %3269 ]
  %3299 = phi float [ %3295, %3286 ], [ 0.000000e+00, %3269 ]
  %3300 = call float @dx.op.binary.f32(i32 36, float %3298, float %3299)  ; FMin(a,b)
  %3301 = call float @dx.op.binary.f32(i32 36, float %3297, float %3300)  ; FMin(a,b)
  %3302 = fcmp fast ogt float %3301, 0.000000e+00
  br i1 %3302, label %3303, label %3478, !dx.controlflow.hints !79

; <label>:3303                                    ; preds = %3296
  %3304 = fmul fast float %3297, %3263
  %3305 = fmul fast float %3298, %3264
  %3306 = fmul fast float %3299, %3265
  %3307 = fsub fast float %3252, %1871
  %3308 = fsub fast float %3253, %1870
  %3309 = fsub fast float %3254, %1869
  %3310 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3308, float %3309, float %3307, float %3308, float %3309)  ; Dot3(ax,ay,az,bx,by,bz)
  %3311 = call float @dx.op.unary.f32(i32 25, float %3310)  ; Rsqrt(value)
  %3312 = fmul fast float %3311, %3307
  %3313 = fmul fast float %3311, %3308
  %3314 = fmul fast float %3311, %3309
  %3315 = call float @dx.op.dot3.f32(i32 55, float %3252, float %3253, float %3254, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %3316 = call float @dx.op.dot3.f32(i32 55, float %1868, float %1867, float %1866, float %3312, float %3313, float %3314)  ; Dot3(ax,ay,az,bx,by,bz)
  %3317 = call float @dx.op.unary.f32(i32 7, float %3315)  ; Saturate(value)
  %3318 = fmul fast float %3317, %3317
  %3319 = fmul fast float %3318, %3247
  %3320 = call float @dx.op.unary.f32(i32 7, float %3319)  ; Saturate(value)
  %3321 = fmul fast float %3320, %3317
  %3322 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %3312, float %3313, float %3314)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = fmul fast float %3322, %3322
  %3324 = call float @dx.op.unary.f32(i32 6, float %3315)  ; FAbs(value)
  %3325 = fsub fast float 1.000000e+00, %1881
  %3326 = call float @dx.op.binary.f32(i32 35, float %3325, float 0x3F847AE140000000)  ; FMax(a,b)
  %3327 = fmul fast float %3326, %3326
  %3328 = fmul fast float %3327, %3327
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %1885, %1885
  %3331 = fmul fast float %3330, %3329
  %3332 = fadd fast float %3331, %3328
  %3333 = bitcast float %3332 to i32
  %3334 = ashr i32 %3333, 1
  %3335 = add nsw i32 %3334, 532487669
  %3336 = bitcast i32 %3335 to float
  %3337 = fadd fast float %3336, %1885
  %3338 = fmul fast float %3328, %3323
  %3339 = fsub fast float 1.000000e+00, %3323
  %3340 = fadd fast float %3339, %3338
  %3341 = fmul fast float %3324, %3324
  %3342 = fmul fast float %3341, %3329
  %3343 = fadd fast float %3342, %3328
  %3344 = bitcast float %3343 to i32
  %3345 = ashr i32 %3344, 1
  %3346 = add nsw i32 %3345, 532487669
  %3347 = bitcast i32 %3346 to float
  %3348 = fadd fast float %3347, %3324
  %3349 = fmul fast float %3340, %3340
  %3350 = fmul fast float %3349, %3337
  %3351 = fmul fast float %3350, %3348
  %3352 = fdiv fast float 0x3FF0A00000000000, %3351
  %3353 = fmul fast float %3352, %3328
  %3354 = call float @dx.op.unary.f32(i32 6, float %3316)  ; FAbs(value)
  %3355 = fsub fast float 1.000000e+00, %3354
  %3356 = bitcast float %3355 to i32
  %3357 = sitofp i32 %3356 to float
  %3358 = fmul fast float %3357, 5.000000e+00
  %3359 = fadd fast float %3358, 0xC1EFBF8940000000
  %3360 = fptosi float %3359 to i32
  %3361 = bitcast i32 %3360 to float
  %3362 = fsub fast float 1.000000e+00, %1872
  %3363 = fsub fast float 1.000000e+00, %1873
  %3364 = fsub fast float 1.000000e+00, %1883
  %3365 = fmul fast float %3361, %3362
  %3366 = fmul fast float %3361, %3363
  %3367 = fmul fast float %3361, %3364
  %3368 = fadd fast float %3365, %1872
  %3369 = fadd fast float %3366, %1873
  %3370 = fadd fast float %3367, %1883
  br i1 %3162, label %3371, label %3394

; <label>:3371                                    ; preds = %3303
  %3372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1249, float %3354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3373 = extractvalue %dx.types.ResRet.f32 %3372, 0
  %3374 = extractvalue %dx.types.ResRet.f32 %3372, 1
  %3375 = extractvalue %dx.types.ResRet.f32 %3372, 2
  %3376 = fadd fast float %3373, -5.000000e-01
  %3377 = fadd fast float %3374, -5.000000e-01
  %3378 = fadd fast float %3375, -5.000000e-01
  %3379 = fmul fast float %1872, 4.000000e+00
  %3380 = fmul fast float %3379, %3362
  %3381 = fmul fast float %3380, %3376
  %3382 = fmul fast float %1873, 4.000000e+00
  %3383 = fmul fast float %3382, %3363
  %3384 = fmul fast float %3383, %3377
  %3385 = fmul fast float %1883, 4.000000e+00
  %3386 = fmul fast float %3385, %3364
  %3387 = fmul fast float %3386, %3378
  %3388 = fadd fast float %3381, %3368
  %3389 = fadd fast float %3384, %3369
  %3390 = fadd fast float %3387, %3370
  %3391 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  %3392 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3393 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  br label %3394

; <label>:3394                                    ; preds = %3371, %3303
  %3395 = phi float [ %3391, %3371 ], [ %3368, %3303 ]
  %3396 = phi float [ %3392, %3371 ], [ %3369, %3303 ]
  %3397 = phi float [ %3393, %3371 ], [ %3370, %3303 ]
  %3398 = fmul fast float %3315, 9.843750e-01
  %3399 = fadd fast float %3398, 7.812500e-03
  %3400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3399, float %3152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3403 = fmul fast float %3401, %1872
  %3404 = fmul fast float %3401, %1873
  %3405 = fmul fast float %3401, %1883
  %3406 = fadd fast float %3403, %3402
  %3407 = fadd fast float %3404, %3402
  %3408 = fadd fast float %3405, %3402
  br i1 %3162, label %3409, label %3432

; <label>:3409                                    ; preds = %3394
  %3410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1249, float %3315, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3413 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3414 = fadd fast float %3411, -5.000000e-01
  %3415 = fadd fast float %3412, -5.000000e-01
  %3416 = fadd fast float %3413, -5.000000e-01
  %3417 = fmul fast float %1872, 4.000000e+00
  %3418 = fmul fast float %3417, %3362
  %3419 = fmul fast float %3418, %3414
  %3420 = fmul fast float %1873, 4.000000e+00
  %3421 = fmul fast float %3420, %3363
  %3422 = fmul fast float %3421, %3415
  %3423 = fmul fast float %1883, 4.000000e+00
  %3424 = fmul fast float %3423, %3364
  %3425 = fmul fast float %3424, %3416
  %3426 = fadd fast float %3419, %3406
  %3427 = fadd fast float %3422, %3407
  %3428 = fadd fast float %3425, %3408
  %3429 = call float @dx.op.unary.f32(i32 7, float %3426)  ; Saturate(value)
  %3430 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  %3431 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  br label %3432

; <label>:3432                                    ; preds = %3409, %3394
  %3433 = phi float [ %3429, %3409 ], [ %3406, %3394 ]
  %3434 = phi float [ %3430, %3409 ], [ %3407, %3394 ]
  %3435 = phi float [ %3431, %3409 ], [ %3408, %3394 ]
  %3436 = call float @dx.op.binary.f32(i32 35, float %3434, float %3435)  ; FMax(a,b)
  %3437 = call float @dx.op.binary.f32(i32 35, float %3433, float %3436)  ; FMax(a,b)
  %3438 = fsub fast float 1.000000e+00, %3437
  %3439 = fmul fast float %3395, %3353
  %3440 = fmul fast float %3396, %3353
  %3441 = fmul fast float %3397, %3353
  %3442 = fsub fast float 1.000000e+00, %3316
  %3443 = bitcast float %3442 to i32
  %3444 = sitofp i32 %3443 to float
  %3445 = fmul fast float %3444, 5.000000e+00
  %3446 = fadd fast float %3445, 0xC1EFBF8940000000
  %3447 = fptosi float %3446 to i32
  %3448 = bitcast i32 %3447 to float
  %3449 = fmul fast float %3448, %1248
  %3450 = fmul fast float %3438, %3449
  %3451 = fmul fast float %3450, %3212
  %3452 = fmul fast float %3450, %3213
  %3453 = fmul fast float %3450, %3214
  %3454 = fadd fast float %3451, %3439
  %3455 = fadd fast float %3452, %3440
  %3456 = fadd fast float %3453, %3441
  %3457 = fmul fast float %3321, %3304
  %3458 = fmul fast float %3457, %3438
  %3459 = fmul fast float %3321, %3305
  %3460 = fmul fast float %3459, %3438
  %3461 = fmul fast float %3321, %3306
  %3462 = fmul fast float %3461, %3438
  %3463 = fmul fast float %3457, %3454
  %3464 = fmul fast float %3459, %3455
  %3465 = fmul fast float %3461, %3456
  %3466 = fadd fast float %3458, %3196
  %3467 = fmul fast float %3466, %1269
  %3468 = fadd fast float %3460, %3197
  %3469 = fmul fast float %3468, %1269
  %3470 = fadd fast float %3462, %3198
  %3471 = fmul fast float %3470, %1269
  %3472 = fadd fast float %3463, %3239
  %3473 = fmul fast float %3472, %1269
  %3474 = fadd fast float %3464, %3242
  %3475 = fmul fast float %3474, %1269
  %3476 = fadd fast float %3465, %3245
  %3477 = fmul fast float %3476, %1269
  br label %3478

; <label>:3478                                    ; preds = %3432, %3296, %3189
  %3479 = phi float [ %3240, %3189 ], [ %3240, %3296 ], [ %3473, %3432 ]
  %3480 = phi float [ %3243, %3189 ], [ %3243, %3296 ], [ %3475, %3432 ]
  %3481 = phi float [ %3246, %3189 ], [ %3246, %3296 ], [ %3477, %3432 ]
  %3482 = phi float [ %3235, %3189 ], [ %3235, %3296 ], [ %3467, %3432 ]
  %3483 = phi float [ %3236, %3189 ], [ %3236, %3296 ], [ %3469, %3432 ]
  %3484 = phi float [ %3237, %3189 ], [ %3237, %3296 ], [ %3471, %3432 ]
  %3485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.i32 %3485, 0
  %3487 = icmp eq i32 %3486, 0
  br i1 %3487, label %3922, label %3488

; <label>:3488                                    ; preds = %3478
  %3489 = fptoui float %58 to i32
  %3490 = fptoui float %59 to i32
  %3491 = lshr i32 %3489, 4
  %3492 = lshr i32 %3490, 4
  %3493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.i32 %3493, 0
  %3495 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3492, i32 %3494, i32 %3491)  ; UMad(a,b,c)
  %3496 = add nsw i32 %3486, -1
  %3497 = call i32 @dx.op.binary.i32(i32 37, i32 %3496, i32 0)  ; IMax(a,b)
  %3498 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3499 = fptoui float %3498 to i32
  %3500 = lshr i32 %3499, 5
  %3501 = call i32 @dx.op.binary.i32(i32 40, i32 %3500, i32 8191)  ; UMin(a,b)
  %3502 = shl i32 %3501, 2
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = lshr i32 %3504, 16
  %3506 = and i32 %3504, 65535
  %3507 = lshr i32 %3504, 21
  %3508 = lshr i32 %3506, 5
  %3509 = call i32 @dx.op.binary.i32(i32 40, i32 %3508, i32 %3497)  ; UMin(a,b)
  %3510 = icmp ugt i32 %3507, %3509
  br i1 %3510, label %3922, label %3511

; <label>:3511                                    ; preds = %3488
  br label %3512

; <label>:3512                                    ; preds = %3912, %3511
  %3513 = phi i32 [ %3919, %3912 ], [ %3507, %3511 ]
  %3514 = phi float [ %3913, %3912 ], [ %3479, %3511 ]
  %3515 = phi float [ %3914, %3912 ], [ %3480, %3511 ]
  %3516 = phi float [ %3915, %3912 ], [ %3481, %3511 ]
  %3517 = phi float [ %3916, %3912 ], [ %3482, %3511 ]
  %3518 = phi float [ %3917, %3912 ], [ %3483, %3511 ]
  %3519 = phi float [ %3918, %3912 ], [ %3484, %3511 ]
  %3520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.i32 %3520, 0
  %3522 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3495, i32 %3521, i32 %3513)  ; UMad(a,b,c)
  %3523 = shl i32 %3522, 2
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = shl i32 %3513, 5
  %3527 = sub nsw i32 %3505, %3526
  %3528 = call i32 @dx.op.binary.i32(i32 37, i32 %3527, i32 0)  ; IMax(a,b)
  %3529 = call i32 @dx.op.binary.i32(i32 38, i32 %3528, i32 31)  ; IMin(a,b)
  %3530 = sub nsw i32 1, %3505
  %3531 = add nsw i32 %3530, %3506
  %3532 = call i32 @dx.op.binary.i32(i32 37, i32 %3531, i32 0)  ; IMax(a,b)
  %3533 = call i32 @dx.op.binary.i32(i32 38, i32 %3532, i32 32)  ; IMin(a,b)
  %3534 = and i32 %3533, 31
  %3535 = shl i32 -1, %3534
  %3536 = xor i32 %3535, -1
  %3537 = and i32 %3529, 31
  %3538 = shl i32 %3536, %3537
  %3539 = icmp eq i32 %3533, 32
  %3540 = select i1 %3539, i32 -1, i32 %3538
  %3541 = and i32 %3540, %3525
  %3542 = icmp eq i32 %3541, 0
  br i1 %3542, label %3912, label %3543

; <label>:3543                                    ; preds = %3512
  br label %3544

; <label>:3544                                    ; preds = %3624, %3543
  %3545 = phi i32 [ %3556, %3624 ], [ %3541, %3543 ]
  %3546 = phi float [ %3625, %3624 ], [ %3514, %3543 ]
  %3547 = phi float [ %3626, %3624 ], [ %3515, %3543 ]
  %3548 = phi float [ %3627, %3624 ], [ %3516, %3543 ]
  %3549 = phi float [ %3628, %3624 ], [ %3517, %3543 ]
  %3550 = phi float [ %3629, %3624 ], [ %3518, %3543 ]
  %3551 = phi float [ %3630, %3624 ], [ %3519, %3543 ]
  %3552 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3545)  ; FirstbitLo(value)
  %3553 = add i32 %3552, %3526
  %3554 = and i32 %3552, 31
  %3555 = shl i32 1, %3554
  %3556 = xor i32 %3555, %3545
  %3557 = mul i32 %3553, 112
  %3558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.f32 %3558, 0
  %3560 = extractvalue %dx.types.ResRet.f32 %3558, 1
  %3561 = extractvalue %dx.types.ResRet.f32 %3558, 2
  %3562 = or i32 %3557, 12
  %3563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.f32 %3563, 0
  %3565 = add i32 %3557, 44
  %3566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.f32 %3566, 0
  %3568 = add i32 %3557, 48
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = add i32 %3557, 80
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3577 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3560, float %3561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3578 = select i1 %176, float %3575, float %3559
  %3579 = select i1 %176, float %3577, float %3560
  %3580 = select i1 %176, float %3576, float %3561
  %3581 = fsub fast float %3570, %105
  %3582 = fsub fast float %3571, %106
  %3583 = fsub fast float %3572, %107
  %3584 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3583, float %3581, float %3582, float %3583)  ; Dot3(ax,ay,az,bx,by,bz)
  %3585 = call float @dx.op.unary.f32(i32 24, float %3584)  ; Sqrt(value)
  %3586 = fdiv fast float 1.000000e+00, %3585
  %3587 = fmul fast float %3586, %3581
  %3588 = fmul fast float %3586, %3582
  %3589 = fmul fast float %3586, %3583
  %3590 = fadd fast float %3585, %3564
  %3591 = fdiv fast float 1.000000e+00, %3590
  %3592 = fmul float %3567, %3591
  %3593 = fmul float %3592, %3592
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = and i32 %3555, %3541
  %3596 = icmp eq i32 %3595, 0
  br i1 %3596, label %3619, label %3597, !dx.controlflow.hints !80

; <label>:3597                                    ; preds = %3544
  %3598 = lshr i32 %3489, 5
  %3599 = lshr i32 %3490, 5
  %3600 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3598, i32 %3599, i32 %3553, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = and i32 %3601, 3
  %3603 = icmp eq i32 %3602, 0
  %3604 = select i1 %3603, float 1.000000e+00, float 0.000000e+00
  %3605 = icmp eq i32 %3602, 3
  br i1 %3605, label %3606, label %3619

; <label>:3606                                    ; preds = %3597
  %3607 = lshr i32 %3601, 10
  %3608 = and i32 %3607, 8160
  %3609 = and i32 %3490, 31
  %3610 = or i32 %3608, %3609
  %3611 = lshr i32 %3601, 1
  %3612 = and i32 %3611, 16352
  %3613 = and i32 %3489, 31
  %3614 = or i32 %3612, %3613
  %3615 = lshr i32 %3601, 23
  %3616 = and i32 %3615, 255
  %3617 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3614, i32 %3610, i32 %3616, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  br label %3619

; <label>:3619                                    ; preds = %3606, %3597, %3544
  %3620 = phi float [ %3618, %3606 ], [ %3604, %3597 ], [ 0.000000e+00, %3544 ]
  %3621 = call float @dx.op.binary.f32(i32 36, float %3620, float %3620)  ; FMin(a,b)
  %3622 = call float @dx.op.binary.f32(i32 36, float %3620, float %3621)  ; FMin(a,b)
  %3623 = fcmp fast ogt float %3622, 0.000000e+00
  br i1 %3623, label %3632, label %3624, !dx.controlflow.hints !81

; <label>:3624                                    ; preds = %3868, %3619
  %3625 = phi float [ %3546, %3619 ], [ %3908, %3868 ]
  %3626 = phi float [ %3547, %3619 ], [ %3909, %3868 ]
  %3627 = phi float [ %3548, %3619 ], [ %3910, %3868 ]
  %3628 = phi float [ %3549, %3619 ], [ %3902, %3868 ]
  %3629 = phi float [ %3550, %3619 ], [ %3903, %3868 ]
  %3630 = phi float [ %3551, %3619 ], [ %3904, %3868 ]
  %3631 = icmp eq i32 %3545, %3555
  br i1 %3631, label %3911, label %3544

; <label>:3632                                    ; preds = %3619
  %3633 = fmul fast float %3620, %3578
  %3634 = fmul fast float %3620, %3579
  %3635 = fmul fast float %3620, %3580
  %3636 = fsub fast float %3572, %1671
  %3637 = fcmp fast ogt float %3636, 0.000000e+00
  %3638 = fsub fast float %107, %1671
  %3639 = fcmp fast ogt float %3638, 0.000000e+00
  %3640 = xor i1 %3639, %3637
  %3641 = fsub fast float %1671, %3572
  %3642 = fmul fast float %3641, 2.000000e+00
  %3643 = fadd fast float %3642, %3572
  %3644 = select i1 %3640, float %3572, float %3643
  %3645 = fsub fast float %3644, %107
  %3646 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3645, float %3581, float %3582, float %3645)  ; Dot3(ax,ay,az,bx,by,bz)
  %3647 = call float @dx.op.unary.f32(i32 25, float %3646)  ; Rsqrt(value)
  %3648 = fmul fast float %3647, %3581
  %3649 = fmul fast float %3647, %3582
  %3650 = fmul fast float %3647, %3645
  %3651 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1679)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3653 = fdiv fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3653, %3651
  %3655 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3638, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = fcmp fast ogt float %3655, 0.000000e+00
  %3657 = fcmp fast olt float %3655, 0.000000e+00
  %3658 = zext i1 %3656 to i32
  %3659 = zext i1 %3657 to i32
  %3660 = sub nsw i32 %3658, %3659
  %3661 = sitofp i32 %3660 to float
  %3662 = fsub fast float %3644, %1671
  %3663 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3662, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3664 = fcmp fast ogt float %3663, 0.000000e+00
  %3665 = fcmp fast olt float %3663, 0.000000e+00
  %3666 = zext i1 %3664 to i32
  %3667 = zext i1 %3665 to i32
  %3668 = sub nsw i32 %3666, %3667
  %3669 = sitofp i32 %3668 to float
  %3670 = fcmp fast une float %3661, %3669
  br i1 %3670, label %3671, label %3681

; <label>:3671                                    ; preds = %3632
  %3672 = fmul fast float %3654, %3650
  %3673 = fmul fast float %3654, %3649
  %3674 = fmul fast float %3654, %3648
  %3675 = fmul fast float %3674, %3674
  %3676 = fmul fast float %3673, %3673
  %3677 = fadd fast float %3675, %3676
  %3678 = fmul fast float %3672, %3672
  %3679 = fadd fast float %3677, %3678
  %3680 = call float @dx.op.unary.f32(i32 24, float %3679)  ; Sqrt(value)
  br label %3693

; <label>:3681                                    ; preds = %3632
  %3682 = icmp slt i32 %3660, 0
  br i1 %3682, label %3683, label %3693

; <label>:3683                                    ; preds = %3681
  %3684 = fsub fast float %105, %3570
  %3685 = fsub fast float %106, %3571
  %3686 = fsub fast float %107, %3644
  %3687 = fmul fast float %3684, %3684
  %3688 = fmul fast float %3685, %3685
  %3689 = fadd fast float %3687, %3688
  %3690 = fmul fast float %3686, %3686
  %3691 = fadd fast float %3689, %3690
  %3692 = call float @dx.op.unary.f32(i32 24, float %3691)  ; Sqrt(value)
  br label %3693

; <label>:3693                                    ; preds = %3683, %3681, %3671
  %3694 = phi float [ %3680, %3671 ], [ %3692, %3683 ], [ 0.000000e+00, %3681 ]
  %3695 = and i1 %3639, %3637
  %3696 = fsub fast float -0.000000e+00, %3694
  %3697 = select i1 %3695, float -0.000000e+00, float %3696
  %3698 = fmul fast float %1672, 0x3FF7154760000000
  %3699 = fmul fast float %3698, %3697
  %3700 = fmul fast float %1673, 0x3FF7154760000000
  %3701 = fmul fast float %3700, %3697
  %3702 = fmul fast float %1674, 0x3FF7154760000000
  %3703 = fmul fast float %3702, %3697
  %3704 = call float @dx.op.unary.f32(i32 21, float %3699)  ; Exp(value)
  %3705 = call float @dx.op.unary.f32(i32 21, float %3701)  ; Exp(value)
  %3706 = call float @dx.op.unary.f32(i32 21, float %3703)  ; Exp(value)
  %3707 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3708 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3709 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3710 = fmul fast float %3633, %3707
  %3711 = fmul fast float %3634, %3708
  %3712 = fmul fast float %3635, %3709
  %3713 = fsub fast float %3587, %1871
  %3714 = fsub fast float %3588, %1870
  %3715 = fsub fast float %3589, %1869
  %3716 = call float @dx.op.dot3.f32(i32 55, float %3713, float %3714, float %3715, float %3713, float %3714, float %3715)  ; Dot3(ax,ay,az,bx,by,bz)
  %3717 = call float @dx.op.unary.f32(i32 25, float %3716)  ; Rsqrt(value)
  %3718 = fmul fast float %3717, %3713
  %3719 = fmul fast float %3717, %3714
  %3720 = fmul fast float %3717, %3715
  %3721 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3588, float %3589, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %3722 = call float @dx.op.dot3.f32(i32 55, float %1868, float %1867, float %1866, float %3718, float %3719, float %3720)  ; Dot3(ax,ay,az,bx,by,bz)
  %3723 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3724 = fmul fast float %3723, %3594
  %3725 = fmul fast float %3723, %3723
  %3726 = fmul fast float %3725, %3247
  %3727 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3728 = fmul fast float %3724, %3727
  %3729 = bitcast float %3584 to i32
  %3730 = ashr i32 %3729, 1
  %3731 = sub nsw i32 1597463007, %3730
  %3732 = bitcast i32 %3731 to float
  %3733 = fmul fast float %3732, %3581
  %3734 = fmul fast float %3732, %3582
  %3735 = fmul fast float %3732, %3583
  %3736 = fsub fast float %3733, %1871
  %3737 = fsub fast float %3734, %1870
  %3738 = fsub fast float %3735, %1869
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float %3736, float %3737, float %3738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call float @dx.op.unary.f32(i32 25, float %3739)  ; Rsqrt(value)
  %3741 = fmul fast float %3736, %3740
  %3742 = fmul fast float %3737, %3740
  %3743 = fmul fast float %3738, %3740
  %3744 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %3741, float %3742, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = fmul fast float %3744, %3744
  %3746 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3747 = fsub fast float 1.000000e+00, %1881
  %3748 = call float @dx.op.binary.f32(i32 35, float %3747, float 0x3F847AE140000000)  ; FMax(a,b)
  %3749 = fmul fast float %3748, %3748
  %3750 = fmul fast float %3749, %3749
  %3751 = fsub fast float 1.000000e+00, %3750
  %3752 = fmul fast float %1885, %1885
  %3753 = fmul fast float %3752, %3751
  %3754 = fadd fast float %3753, %3750
  %3755 = bitcast float %3754 to i32
  %3756 = ashr i32 %3755, 1
  %3757 = add nsw i32 %3756, 532487669
  %3758 = bitcast i32 %3757 to float
  %3759 = fadd fast float %3758, %1885
  %3760 = fmul fast float %3750, %3745
  %3761 = fsub fast float 1.000000e+00, %3745
  %3762 = fadd fast float %3761, %3760
  %3763 = fmul fast float %3746, %3746
  %3764 = fmul fast float %3763, %3751
  %3765 = fadd fast float %3764, %3750
  %3766 = bitcast float %3765 to i32
  %3767 = ashr i32 %3766, 1
  %3768 = add nsw i32 %3767, 532487669
  %3769 = bitcast i32 %3768 to float
  %3770 = fadd fast float %3769, %3746
  %3771 = fmul fast float %3762, %3762
  %3772 = fmul fast float %3771, %3759
  %3773 = fmul fast float %3772, %3770
  %3774 = fdiv fast float 1.000000e+00, %3773
  %3775 = bitcast float %3750 to i32
  %3776 = sitofp i32 %3775 to float
  %3777 = fmul fast float %3776, 0x3FE7F73180000000
  %3778 = fadd fast float %3777, 0x41AFE27C40000000
  %3779 = fptosi float %3778 to i32
  %3780 = bitcast i32 %3779 to float
  %3781 = fmul fast float %3567, 0x3FD80E9D60000000
  %3782 = fmul fast float %3781, %3732
  %3783 = fadd fast float %3780, %3782
  %3784 = bitcast float %3783 to i32
  %3785 = sub nsw i32 2129859010, %3784
  %3786 = bitcast i32 %3785 to float
  %3787 = fmul fast float %3750, %3774
  %3788 = fmul fast float %3787, %3780
  %3789 = fmul fast float %3788, %3786
  %3790 = call float @dx.op.unary.f32(i32 6, float %3722)  ; FAbs(value)
  %3791 = fsub fast float 1.000000e+00, %3790
  %3792 = bitcast float %3791 to i32
  %3793 = sitofp i32 %3792 to float
  %3794 = fmul fast float %3793, 5.000000e+00
  %3795 = fadd fast float %3794, 0xC1EFBF8940000000
  %3796 = fptosi float %3795 to i32
  %3797 = bitcast i32 %3796 to float
  %3798 = fsub fast float 1.000000e+00, %1872
  %3799 = fsub fast float 1.000000e+00, %1873
  %3800 = fsub fast float 1.000000e+00, %1883
  %3801 = fmul fast float %3797, %3798
  %3802 = fmul fast float %3797, %3799
  %3803 = fmul fast float %3797, %3800
  %3804 = fadd fast float %3801, %1872
  %3805 = fadd fast float %3802, %1873
  %3806 = fadd fast float %3803, %1883
  br i1 %3162, label %3807, label %3830

; <label>:3807                                    ; preds = %3693
  %3808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1249, float %3790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = fadd fast float %3809, -5.000000e-01
  %3813 = fadd fast float %3810, -5.000000e-01
  %3814 = fadd fast float %3811, -5.000000e-01
  %3815 = fmul fast float %1872, 4.000000e+00
  %3816 = fmul fast float %3815, %3798
  %3817 = fmul fast float %3816, %3812
  %3818 = fmul fast float %1873, 4.000000e+00
  %3819 = fmul fast float %3818, %3799
  %3820 = fmul fast float %3819, %3813
  %3821 = fmul fast float %1883, 4.000000e+00
  %3822 = fmul fast float %3821, %3800
  %3823 = fmul fast float %3822, %3814
  %3824 = fadd fast float %3817, %3804
  %3825 = fadd fast float %3820, %3805
  %3826 = fadd fast float %3823, %3806
  %3827 = call float @dx.op.unary.f32(i32 7, float %3824)  ; Saturate(value)
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  br label %3830

; <label>:3830                                    ; preds = %3807, %3693
  %3831 = phi float [ %3827, %3807 ], [ %3804, %3693 ]
  %3832 = phi float [ %3828, %3807 ], [ %3805, %3693 ]
  %3833 = phi float [ %3829, %3807 ], [ %3806, %3693 ]
  %3834 = fmul fast float %3721, 9.843750e-01
  %3835 = fadd fast float %3834, 7.812500e-03
  %3836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3835, float %3152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 3
  %3839 = fmul fast float %3837, %1872
  %3840 = fmul fast float %3837, %1873
  %3841 = fmul fast float %3837, %1883
  %3842 = fadd fast float %3839, %3838
  %3843 = fadd fast float %3840, %3838
  %3844 = fadd fast float %3841, %3838
  br i1 %3162, label %3845, label %3868

; <label>:3845                                    ; preds = %3830
  %3846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1249, float %3721, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = fadd fast float %3847, -5.000000e-01
  %3851 = fadd fast float %3848, -5.000000e-01
  %3852 = fadd fast float %3849, -5.000000e-01
  %3853 = fmul fast float %1872, 4.000000e+00
  %3854 = fmul fast float %3853, %3798
  %3855 = fmul fast float %3854, %3850
  %3856 = fmul fast float %1873, 4.000000e+00
  %3857 = fmul fast float %3856, %3799
  %3858 = fmul fast float %3857, %3851
  %3859 = fmul fast float %1883, 4.000000e+00
  %3860 = fmul fast float %3859, %3800
  %3861 = fmul fast float %3860, %3852
  %3862 = fadd fast float %3855, %3842
  %3863 = fadd fast float %3858, %3843
  %3864 = fadd fast float %3861, %3844
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3866 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3867 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  br label %3868

; <label>:3868                                    ; preds = %3845, %3830
  %3869 = phi float [ %3865, %3845 ], [ %3842, %3830 ]
  %3870 = phi float [ %3866, %3845 ], [ %3843, %3830 ]
  %3871 = phi float [ %3867, %3845 ], [ %3844, %3830 ]
  %3872 = call float @dx.op.binary.f32(i32 35, float %3870, float %3871)  ; FMax(a,b)
  %3873 = call float @dx.op.binary.f32(i32 35, float %3869, float %3872)  ; FMax(a,b)
  %3874 = fsub fast float 1.000000e+00, %3873
  %3875 = fmul fast float %3831, %3789
  %3876 = fmul fast float %3832, %3789
  %3877 = fmul fast float %3833, %3789
  %3878 = fsub fast float 1.000000e+00, %3722
  %3879 = bitcast float %3878 to i32
  %3880 = sitofp i32 %3879 to float
  %3881 = fmul fast float %3880, 5.000000e+00
  %3882 = fadd fast float %3881, 0xC1EFBF8940000000
  %3883 = fptosi float %3882 to i32
  %3884 = bitcast i32 %3883 to float
  %3885 = fmul fast float %3884, %1248
  %3886 = fmul fast float %3874, %3885
  %3887 = fmul fast float %3886, %3212
  %3888 = fmul fast float %3886, %3213
  %3889 = fmul fast float %3886, %3214
  %3890 = fadd fast float %3887, %3875
  %3891 = fadd fast float %3888, %3876
  %3892 = fadd fast float %3889, %3877
  %3893 = fmul fast float %3710, %1269
  %3894 = fmul fast float %3893, %3728
  %3895 = fmul fast float %3894, %3874
  %3896 = fmul fast float %3711, %1269
  %3897 = fmul fast float %3896, %3728
  %3898 = fmul fast float %3897, %3874
  %3899 = fmul fast float %3712, %1269
  %3900 = fmul fast float %3899, %3728
  %3901 = fmul fast float %3900, %3874
  %3902 = fadd fast float %3895, %3549
  %3903 = fadd fast float %3898, %3550
  %3904 = fadd fast float %3901, %3551
  %3905 = fmul fast float %3894, %3890
  %3906 = fmul fast float %3897, %3891
  %3907 = fmul fast float %3900, %3892
  %3908 = fadd fast float %3905, %3546
  %3909 = fadd fast float %3906, %3547
  %3910 = fadd fast float %3907, %3548
  br label %3624

; <label>:3911                                    ; preds = %3624
  br label %3912

; <label>:3912                                    ; preds = %3911, %3512
  %3913 = phi float [ %3514, %3512 ], [ %3625, %3911 ]
  %3914 = phi float [ %3515, %3512 ], [ %3626, %3911 ]
  %3915 = phi float [ %3516, %3512 ], [ %3627, %3911 ]
  %3916 = phi float [ %3517, %3512 ], [ %3628, %3911 ]
  %3917 = phi float [ %3518, %3512 ], [ %3629, %3911 ]
  %3918 = phi float [ %3519, %3512 ], [ %3630, %3911 ]
  %3919 = add i32 %3513, 1
  %3920 = icmp ugt i32 %3919, %3509
  br i1 %3920, label %3921, label %3512

; <label>:3921                                    ; preds = %3912
  br label %3922

; <label>:3922                                    ; preds = %3921, %3488, %3478
  %3923 = phi float [ %3479, %3478 ], [ %3479, %3488 ], [ %3913, %3921 ]
  %3924 = phi float [ %3480, %3478 ], [ %3480, %3488 ], [ %3914, %3921 ]
  %3925 = phi float [ %3481, %3478 ], [ %3481, %3488 ], [ %3915, %3921 ]
  %3926 = phi float [ %3482, %3478 ], [ %3482, %3488 ], [ %3916, %3921 ]
  %3927 = phi float [ %3483, %3478 ], [ %3483, %3488 ], [ %3917, %3921 ]
  %3928 = phi float [ %3484, %3478 ], [ %3484, %3488 ], [ %3918, %3921 ]
  %3929 = call float @dx.op.unary.f32(i32 24, float %1875)  ; Sqrt(value)
  %3930 = call float @dx.op.unary.f32(i32 24, float %1876)  ; Sqrt(value)
  %3931 = call float @dx.op.unary.f32(i32 24, float %1877)  ; Sqrt(value)
  %3932 = fmul fast float %3929, %3926
  %3933 = fmul fast float %3930, %3927
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  br i1 %176, label %3936, label %3956

; <label>:3936                                    ; preds = %3922
  %3937 = fadd fast float %3928, %1246
  %3938 = fmul fast float %3937, %1247
  %3939 = fsub fast float 1.000000e+00, %1247
  %3940 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3943 = fmul fast float %3942, %3940
  %3944 = fadd fast float %3943, %3938
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = fmul fast float %3946, %3218
  %3948 = fsub fast float %3944, %3947
  %3949 = fadd fast float %3933, %3932
  %3950 = fmul fast float %3935, %3949
  %3951 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3952 = fsub fast float %3948, %3951
  %3953 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3954 = fmul fast float %3952, %3953
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  br label %3972

; <label>:3956                                    ; preds = %3922
  %3957 = fmul fast float %3931, %3928
  %3958 = fmul fast float %3935, %3932
  %3959 = fmul fast float %3935, %3933
  %3960 = fmul fast float %3957, %3935
  %3961 = add i32 %38, 116
  %3962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.i32 %3962, 0
  %3964 = and i32 %3963, 32
  %3965 = icmp eq i32 %3964, 0
  br i1 %3965, label %3972, label %3966

; <label>:3966                                    ; preds = %3956
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = fmul fast float %3968, 0x3FE99999A0000000
  %3970 = fadd fast float %3968, %3958
  %3971 = fadd fast float %3969, %3960
  br label %3972

; <label>:3972                                    ; preds = %3966, %3956, %3936
  %3973 = phi float [ %3950, %3936 ], [ %3970, %3966 ], [ %3958, %3956 ]
  %3974 = phi float [ %3955, %3936 ], [ %3959, %3966 ], [ %3959, %3956 ]
  %3975 = phi float [ 1.000000e+00, %3936 ], [ %3971, %3966 ], [ %3960, %3956 ]
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 0
  %3978 = fmul fast float %3977, %3924
  %3979 = fmul fast float %3977, %3925
  %3980 = fadd fast float %3924, %3923
  %3981 = select i1 %176, float %3980, float %3923
  %3982 = fmul float %3981, %3977
  %3983 = select i1 %176, float 0.000000e+00, float %3978
  %3984 = select i1 %176, float 0.000000e+00, float %3979
  %3985 = fmul fast float %3973, %3929
  %3986 = fmul fast float %3974, %3930
  %3987 = fmul fast float %3975, %3931
  %3988 = fadd fast float %3982, %3985
  %3989 = fadd fast float %3983, %3986
  %3990 = fadd fast float %3984, %3987
  %3991 = select i1 %176, float %3974, float %3989
  %3992 = select i1 %176, float %3975, float %3990
  %3993 = call float @dx.op.binary.f32(i32 36, float %3988, float 3.225500e+04)  ; FMin(a,b)
  %3994 = call float @dx.op.binary.f32(i32 36, float %3991, float 3.225500e+04)  ; FMin(a,b)
  %3995 = call float @dx.op.binary.f32(i32 36, float %3992, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3993)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3994)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3995)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

