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
; shader hash: e453ebf14ef8f7b94eabf4d735dd4588
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
  %680 = phi float [ 0.000000e+00, %175 ], [ %533, %660 ]
  %681 = phi float [ 0.000000e+00, %175 ], [ %534, %660 ]
  %682 = phi float [ 0.000000e+00, %175 ], [ %535, %660 ]
  %683 = phi float [ 0.000000e+00, %175 ], [ %661, %660 ]
  %684 = phi float [ 0.000000e+00, %175 ], [ %662, %660 ]
  %685 = phi float [ 0.000000e+00, %175 ], [ %663, %660 ]
  %686 = phi float [ 0.000000e+00, %175 ], [ %519, %660 ]
  %687 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %660 ]
  %688 = phi float [ 0.000000e+00, %175 ], [ %613, %660 ]
  %689 = phi float [ 0.000000e+00, %175 ], [ %616, %660 ]
  %690 = phi float [ 0.000000e+00, %175 ], [ %676, %660 ]
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = fmul fast float %694, %683
  %696 = fmul fast float %694, %684
  %697 = fmul fast float %694, %685
  %698 = call float @dx.op.dot2.f32(i32 54, float %678, float %679, float %678, float %679)  ; Dot2(ax,ay,bx,by)
  %699 = fmul fast float %698, 0x3FE3333340000000
  %700 = fsub fast float 1.000000e+00, %699
  %701 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %700, float %678, float %679, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.unary.f32(i32 25, float %701)  ; Rsqrt(value)
  %703 = fmul fast float %702, %678
  %704 = fmul fast float %702, %679
  %705 = fmul fast float %700, %702
  %706 = fmul fast float %705, %43
  %707 = fmul fast float %705, %44
  %708 = fmul fast float %705, %45
  %709 = fmul fast float %703, %39
  %710 = fmul fast float %703, %40
  %711 = fmul fast float %703, %41
  %712 = fadd fast float %706, %709
  %713 = fadd fast float %707, %710
  %714 = fadd fast float %708, %711
  %715 = fmul fast float %704, %69
  %716 = fmul fast float %704, %70
  %717 = fmul fast float %704, %71
  %718 = fadd fast float %712, %715
  %719 = fadd fast float %713, %716
  %720 = fadd fast float %714, %717
  %721 = call float @dx.op.dot3.f32(i32 55, float %718, float %719, float %720, float %718, float %719, float %720)  ; Dot3(ax,ay,az,bx,by,bz)
  %722 = call float @dx.op.unary.f32(i32 25, float %721)  ; Rsqrt(value)
  %723 = fmul fast float %718, %722
  %724 = fmul fast float %719, %722
  %725 = fmul fast float %720, %722
  %726 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %727 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %728 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %729 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %730 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %731 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %732 = fadd fast float %726, %105
  %733 = fadd fast float %727, %106
  %734 = fadd fast float %728, %107
  %735 = fadd fast float %729, %105
  %736 = fadd fast float %730, %106
  %737 = fadd fast float %731, %107
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 0
  %740 = extractvalue %dx.types.CBufRet.f32 %738, 1
  %741 = extractvalue %dx.types.CBufRet.f32 %738, 2
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %745 = fmul fast float %739, %58
  %746 = fmul fast float %745, %743
  %747 = fmul fast float %740, %59
  %748 = fmul fast float %747, %744
  %749 = fptoui float %746 to i32
  %750 = fptoui float %748 to i32
  %751 = fadd fast float %739, -1.000000e+00
  %752 = fadd fast float %740, -1.000000e+00
  %753 = fptoui float %751 to i32
  %754 = fptoui float %752 to i32
  %755 = call i32 @dx.op.binary.i32(i32 40, i32 %749, i32 %753)  ; UMin(a,b)
  %756 = call i32 @dx.op.binary.i32(i32 40, i32 %750, i32 %754)  ; UMin(a,b)
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %760 = fmul fast float %758, %53
  %761 = fsub fast float %760, %759
  %762 = fadd fast float %741, -1.000000e+00
  %763 = call float @dx.op.binary.f32(i32 36, float %761, float %762)  ; FMin(a,b)
  %764 = fptoui float %763 to i32
  %765 = fptoui float %739 to i32
  %766 = fptoui float %740 to i32
  %767 = mul i32 %764, %766
  %768 = add i32 %767, %756
  %769 = mul i32 %768, %765
  %770 = add i32 %769, %755
  %771 = shl i32 %770, 2
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 1023
  %775 = lshr i32 %773, 10
  %776 = icmp eq i32 %774, 0
  br i1 %776, label %1202, label %777

; <label>:777                                     ; preds = %677
  %778 = and i32 %773, 1023
  br label %779

; <label>:779                                     ; preds = %905, %777
  %780 = phi float [ %906, %905 ], [ 0.000000e+00, %777 ]
  %781 = phi float [ %907, %905 ], [ %692, %777 ]
  %782 = phi float [ %908, %905 ], [ %690, %777 ]
  %783 = phi float [ %909, %905 ], [ 0.000000e+00, %777 ]
  %784 = phi float [ %910, %905 ], [ 0.000000e+00, %777 ]
  %785 = phi float [ %911, %905 ], [ %695, %777 ]
  %786 = phi float [ %912, %905 ], [ %696, %777 ]
  %787 = phi float [ %913, %905 ], [ %697, %777 ]
  %788 = phi float [ %914, %905 ], [ %723, %777 ]
  %789 = phi float [ %915, %905 ], [ %724, %777 ]
  %790 = phi float [ %916, %905 ], [ %725, %777 ]
  %791 = phi float [ %917, %905 ], [ %689, %777 ]
  %792 = phi float [ %918, %905 ], [ %688, %777 ]
  %793 = phi float [ %919, %905 ], [ 0.000000e+00, %777 ]
  %794 = phi float [ %920, %905 ], [ %686, %777 ]
  %795 = phi float [ %921, %905 ], [ %680, %777 ]
  %796 = phi float [ %922, %905 ], [ %681, %777 ]
  %797 = phi float [ %923, %905 ], [ %682, %777 ]
  %798 = phi i32 [ %855, %905 ], [ 0, %777 ]
  %799 = add nuw nsw i32 %798, %775
  %800 = shl i32 %799, 2
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = shl i32 %802, 8
  %804 = or i32 %803, 48
  %805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = or i32 %803, 64
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = extractvalue %dx.types.ResRet.i32 %811, 1
  %814 = or i32 %803, 80
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 2
  %817 = extractvalue %dx.types.ResRet.f32 %815, 3
  %818 = or i32 %803, 96
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  %824 = or i32 %803, 112
  %825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 2
  %827 = or i32 %803, 128
  %828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = extractvalue %dx.types.ResRet.f32 %828, 3
  %833 = or i32 %803, 144
  %834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = extractvalue %dx.types.ResRet.f32 %834, 3
  %839 = or i32 %803, 160
  %840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = extractvalue %dx.types.ResRet.f32 %840, 1
  %843 = extractvalue %dx.types.ResRet.f32 %840, 2
  %844 = extractvalue %dx.types.ResRet.f32 %840, 3
  %845 = or i32 %803, 192
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = or i32 %803, 208
  %849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = or i32 %803, 248
  %852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = add nuw nsw i32 %798, 1
  %856 = bitcast float %809 to i32
  %857 = and i32 %856, 2560
  %858 = icmp eq i32 %857, 0
  %859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = extractvalue %dx.types.ResRet.f32 %859, 2
  %863 = extractvalue %dx.types.ResRet.f32 %859, 3
  %864 = call float @dx.op.dot4.f32(i32 56, float %860, float %861, float %862, float %863, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %865 = or i32 %803, 16
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = extractvalue %dx.types.ResRet.f32 %866, 3
  %871 = call float @dx.op.dot4.f32(i32 56, float %867, float %868, float %869, float %870, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %872 = or i32 %803, 32
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  %877 = extractvalue %dx.types.ResRet.f32 %873, 3
  %878 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %879 = call float @dx.op.unary.f32(i32 27, float %864)  ; Round_ni(value)
  %880 = call float @dx.op.unary.f32(i32 6, float %879)  ; FAbs(value)
  %881 = call float @dx.op.unary.f32(i32 27, float %871)  ; Round_ni(value)
  %882 = call float @dx.op.unary.f32(i32 6, float %881)  ; FAbs(value)
  %883 = call float @dx.op.unary.f32(i32 6, float %878)  ; FAbs(value)
  %884 = call float @dx.op.unary.f32(i32 27, float %883)  ; Round_ni(value)
  %885 = fadd fast float %882, %880
  %886 = fadd fast float %885, %884
  %887 = fcmp fast oeq float %886, 0.000000e+00
  %888 = call float @dx.op.dot4.f32(i32 56, float %860, float %861, float %862, float %863, float %732, float %733, float %734, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %889 = call float @dx.op.dot4.f32(i32 56, float %867, float %868, float %869, float %870, float %732, float %733, float %734, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %890 = call float @dx.op.dot4.f32(i32 56, float %860, float %861, float %862, float %863, float %735, float %736, float %737, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %891 = call float @dx.op.dot4.f32(i32 56, float %867, float %868, float %869, float %870, float %735, float %736, float %737, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %892 = fsub fast float %888, %864
  %893 = fsub fast float %890, %864
  %894 = fsub fast float %889, %871
  %895 = fsub fast float %891, %871
  %896 = call float @dx.op.dot3.f32(i32 55, float %806, float %807, float %808, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %899 = fadd fast float %898, %896
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %902 = fcmp fast ogt float %900, %901
  %903 = and i1 %887, %902
  %904 = and i1 %858, %903
  br i1 %904, label %925, label %905

; <label>:905                                     ; preds = %1188, %1006, %925, %779
  %906 = phi float [ %780, %925 ], [ %1009, %1006 ], [ %1009, %1188 ], [ %780, %779 ]
  %907 = phi float [ %781, %925 ], [ %781, %1006 ], [ %1163, %1188 ], [ %781, %779 ]
  %908 = phi float [ %782, %925 ], [ %782, %1006 ], [ %1161, %1188 ], [ %782, %779 ]
  %909 = phi float [ %783, %925 ], [ %783, %1006 ], [ %1133, %1188 ], [ %783, %779 ]
  %910 = phi float [ %784, %925 ], [ %784, %1006 ], [ %1131, %1188 ], [ %784, %779 ]
  %911 = phi float [ %785, %925 ], [ %785, %1006 ], [ %1198, %1188 ], [ %785, %779 ]
  %912 = phi float [ %786, %925 ], [ %786, %1006 ], [ %1199, %1188 ], [ %786, %779 ]
  %913 = phi float [ %787, %925 ], [ %787, %1006 ], [ %1200, %1188 ], [ %787, %779 ]
  %914 = phi float [ %788, %925 ], [ %788, %1006 ], [ %1112, %1188 ], [ %788, %779 ]
  %915 = phi float [ %789, %925 ], [ %789, %1006 ], [ %1113, %1188 ], [ %789, %779 ]
  %916 = phi float [ %790, %925 ], [ %790, %1006 ], [ %1114, %1188 ], [ %790, %779 ]
  %917 = phi float [ %791, %925 ], [ %791, %1006 ], [ %1141, %1188 ], [ %791, %779 ]
  %918 = phi float [ %792, %925 ], [ %792, %1006 ], [ %1138, %1188 ], [ %792, %779 ]
  %919 = phi float [ %793, %925 ], [ %793, %1006 ], [ %1135, %1188 ], [ %793, %779 ]
  %920 = phi float [ %794, %925 ], [ %794, %1006 ], [ %1129, %1188 ], [ %794, %779 ]
  %921 = phi float [ %795, %925 ], [ %795, %1006 ], [ %1124, %1188 ], [ %795, %779 ]
  %922 = phi float [ %796, %925 ], [ %796, %1006 ], [ %1125, %1188 ], [ %796, %779 ]
  %923 = phi float [ %797, %925 ], [ %797, %1006 ], [ %1126, %1188 ], [ %797, %779 ]
  %924 = icmp eq i32 %855, %778
  br i1 %924, label %1201, label %779

; <label>:925                                     ; preds = %779
  %926 = extractvalue %dx.types.ResRet.f32 %825, 3
  %927 = extractvalue %dx.types.ResRet.f32 %825, 1
  %928 = extractvalue %dx.types.ResRet.f32 %825, 0
  %929 = extractvalue %dx.types.ResRet.f32 %815, 1
  %930 = extractvalue %dx.types.ResRet.f32 %815, 0
  %931 = extractvalue %dx.types.ResRet.i32 %811, 3
  %932 = extractvalue %dx.types.ResRet.i32 %811, 2
  %933 = add i32 %931, 0
  %934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %934, %dx.types.Handle %935, float %864, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float %892, float %894, float undef, float %893, float %895, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = fmul fast float %937, %930
  %939 = fadd fast float %938, %929
  %940 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %941 = fmul fast float %864, %820
  %942 = call float @dx.op.tertiary.f32(i32 46, float %821, float %871, float %941)  ; FMad(a,b,c)
  %943 = fadd fast float %942, %928
  %944 = fmul fast float %864, %822
  %945 = call float @dx.op.tertiary.f32(i32 46, float %823, float %871, float %944)  ; FMad(a,b,c)
  %946 = fadd fast float %945, %927
  %947 = fmul fast float %892, %820
  %948 = call float @dx.op.tertiary.f32(i32 46, float %821, float %894, float %947)  ; FMad(a,b,c)
  %949 = fmul fast float %892, %822
  %950 = call float @dx.op.tertiary.f32(i32 46, float %823, float %894, float %949)  ; FMad(a,b,c)
  %951 = fmul fast float %893, %820
  %952 = call float @dx.op.tertiary.f32(i32 46, float %821, float %895, float %951)  ; FMad(a,b,c)
  %953 = fmul fast float %893, %822
  %954 = call float @dx.op.tertiary.f32(i32 46, float %823, float %895, float %953)  ; FMad(a,b,c)
  %955 = add i32 %932, 0
  %956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %956, %dx.types.Handle %935, float %943, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float %948, float %950, float undef, float %952, float %954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = and i32 %856, 1024
  %960 = icmp ne i32 %959, 0
  %961 = fcmp fast ogt float %958, 0x3FE0101020000000
  %962 = uitofp i1 %961 to float
  %963 = select i1 %960, float %962, float %958
  %964 = and i32 %856, 8192
  %965 = icmp ne i32 %964, 0
  %966 = select i1 %965, float %926, float 1.000000e+00
  %967 = fmul fast float %864, 2.000000e+00
  %968 = fadd fast float %967, -1.000000e+00
  %969 = call float @dx.op.unary.f32(i32 6, float %968)  ; FAbs(value)
  %970 = fmul fast float %969, %853
  %971 = fsub fast float %970, %853
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %973 = fmul fast float %871, 2.000000e+00
  %974 = fadd fast float %973, -1.000000e+00
  %975 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %976 = fmul fast float %975, %854
  %977 = fsub fast float %976, %854
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fmul fast float %883, %816
  %980 = fsub fast float %979, %816
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = fmul fast float %940, %966
  %983 = fmul fast float %982, %937
  %984 = fmul fast float %983, %972
  %985 = fmul fast float %984, %963
  %986 = fmul fast float %985, %978
  %987 = fmul fast float %986, %981
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %991 = fsub fast float %900, %990
  %992 = fmul fast float %991, %989
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fmul fast float %987, %817
  %995 = fadd fast float %987, %817
  %996 = fmul fast float %995, %826
  %997 = fsub fast float %996, %826
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = and i32 %856, 128
  %1000 = icmp ne i32 %999, 0
  %1001 = select i1 %1000, float %998, float %994
  %1002 = fmul fast float %1001, %993
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = fcmp fast ugt float %1002, %1004
  br i1 %1005, label %1006, label %905

; <label>:1006                                    ; preds = %925
  %1007 = select i1 %965, float %1002, float 0.000000e+00
  %1008 = fadd fast float %1007, %780
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  br i1 %965, label %905, label %1010

; <label>:1010                                    ; preds = %1006
  %1011 = and i32 %856, 4
  %1012 = and i32 %856, 8
  %1013 = add i32 %812, 0
  %1014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1013, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1014, %dx.types.Handle %1015, float %943, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float %948, float %950, float undef, float %952, float %954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.f32 %1016, 2
  %1020 = extractvalue %dx.types.ResRet.f32 %1016, 3
  %1021 = bitcast float %838 to i32
  %1022 = and i32 %1021, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = lshr i32 %1021, 8
  %1025 = and i32 %1024, 255
  %1026 = uitofp i32 %1025 to float
  %1027 = fmul fast float %1020, %1023
  %1028 = fadd fast float %1027, %1026
  %1029 = fmul fast float %1028, 0x3F70101000000000
  %1030 = add i32 %813, 0
  %1031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1030, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1031, %dx.types.Handle %1015, float %943, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float %948, float %950, float undef, float %952, float %954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1037 = bitcast float %832 to i32
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1037, 8
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = lshr i32 %1037, 16
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F70101000000000
  %1047 = fmul fast float %1033, %1039
  %1048 = fadd fast float %1047, %1042
  %1049 = fmul fast float %1048, 0x3F70101000000000
  %1050 = fadd fast float %1034, -5.000000e-01
  %1051 = fadd fast float %1036, -5.000000e-01
  %1052 = fmul fast float %1050, %1046
  %1053 = fmul fast float %1051, %1046
  %1054 = fadd fast float %1052, 5.000000e-01
  %1055 = fadd fast float %1053, 5.000000e-01
  %1056 = fmul fast float %1017, %841
  %1057 = fmul fast float %1018, %842
  %1058 = fmul fast float %1019, %843
  %1059 = fmul fast float %1054, 2.000000e+00
  %1060 = fadd fast float %1059, -1.000000e+00
  %1061 = fmul fast float %1055, 2.000000e+00
  %1062 = fadd fast float %1061, -1.000000e+00
  %1063 = fadd fast float %1060, %1062
  %1064 = fmul fast float %1063, 5.000000e-01
  %1065 = fsub fast float %1060, %1062
  %1066 = fmul fast float %1065, 5.000000e-01
  %1067 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1070 = fsub fast float %1068, %1069
  %1071 = call float @dx.op.dot3.f32(i32 55, float %1064, float %1066, float %1070, float %1064, float %1066, float %1070)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = call float @dx.op.unary.f32(i32 25, float %1071)  ; Rsqrt(value)
  %1073 = fmul fast float %1064, %1072
  %1074 = fmul fast float %1066, %1072
  %1075 = fmul fast float %1072, %1070
  %1076 = fmul fast float %1075, %806
  %1077 = fmul fast float %1075, %807
  %1078 = fmul fast float %1075, %808
  %1079 = fmul fast float %1073, %829
  %1080 = fmul fast float %1073, %830
  %1081 = fmul fast float %1073, %831
  %1082 = fadd fast float %1079, %1076
  %1083 = fadd fast float %1080, %1077
  %1084 = fadd fast float %1081, %1078
  %1085 = fmul fast float %1074, %835
  %1086 = fmul fast float %1074, %836
  %1087 = fmul fast float %1074, %837
  %1088 = fadd fast float %1082, %1085
  %1089 = fadd fast float %1083, %1086
  %1090 = fadd fast float %1084, %1087
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1088, float %1089, float %1090, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.unary.f32(i32 25, float %1091)  ; Rsqrt(value)
  %1093 = fmul fast float %1088, %1092
  %1094 = fmul fast float %1089, %1092
  %1095 = fmul fast float %1090, %1092
  %1096 = icmp ne i32 %1012, 0
  %1097 = select i1 %1096, float 1.000000e+00, float 0.000000e+00
  %1098 = fmul fast float %1002, %1097
  %1099 = and i32 %856, 1
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1101, label %1105

; <label>:1101                                    ; preds = %1010
  %1102 = fsub fast float %1093, %788
  %1103 = fsub fast float %1094, %789
  %1104 = fsub fast float %1095, %790
  br label %1105

; <label>:1105                                    ; preds = %1101, %1010
  %1106 = phi float [ %1102, %1101 ], [ %1093, %1010 ]
  %1107 = phi float [ %1103, %1101 ], [ %1094, %1010 ]
  %1108 = phi float [ %1104, %1101 ], [ %1095, %1010 ]
  %1109 = fmul float %1108, %1098
  %1110 = fmul float %1107, %1098
  %1111 = fmul float %1106, %1098
  %1112 = fadd fast float %1111, %788
  %1113 = fadd fast float %1110, %789
  %1114 = fadd fast float %1109, %790
  %1115 = icmp ne i32 %1011, 0
  %1116 = select i1 %1115, float 1.000000e+00, float 0.000000e+00
  %1117 = fmul fast float %1002, %1116
  %1118 = fsub fast float %1056, %795
  %1119 = fsub fast float %1057, %796
  %1120 = fsub fast float %1058, %797
  %1121 = fmul fast float %1118, %1117
  %1122 = fmul fast float %1119, %1117
  %1123 = fmul fast float %1120, %1117
  %1124 = fadd fast float %1121, %795
  %1125 = fadd fast float %1122, %796
  %1126 = fadd fast float %1123, %797
  %1127 = fsub fast float %1029, %794
  %1128 = fmul fast float %1127, %1117
  %1129 = fadd fast float %1128, %794
  %1130 = fmul fast float %1117, %784
  %1131 = fsub fast float %784, %1130
  %1132 = fmul fast float %1117, %783
  %1133 = fsub fast float %783, %1132
  %1134 = fadd fast float %1002, %793
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fsub fast float %1049, %792
  %1137 = fmul fast float %1136, %1098
  %1138 = fadd fast float %1137, %792
  %1139 = fsub fast float %1035, %791
  %1140 = fmul fast float %1139, %1098
  %1141 = fadd fast float %1140, %791
  %1142 = call float @dx.op.dot3.f32(i32 55, float %1056, float %1057, float %1058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1146 = fmul fast float %1145, %1142
  %1147 = fadd fast float %1146, %1144
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = bitcast float %844 to i32
  %1150 = and i32 %1149, 65535
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = lshr i32 %1149, 16
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = fcmp fast oge float %1151, 0.000000e+00
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = select i1 %1154, float %1151, float %1156
  %1158 = fadd fast float %1157, %1153
  %1159 = fsub fast float %1148, %782
  %1160 = fmul fast float %1159, %1002
  %1161 = fadd fast float %1160, %782
  %1162 = fmul fast float %1158, %1002
  %1163 = call float @dx.op.binary.f32(i32 35, float %781, float %1162)  ; FMax(a,b)
  %1164 = and i32 %856, 16
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1188, label %1166

; <label>:1166                                    ; preds = %1105
  %1167 = bitcast float %850 to i32
  %1168 = add i32 %847, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1168, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1169, %dx.types.Handle %1015, float %943, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float %948, float %950, float undef, float %952, float %954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = and i32 %1167, 65535
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = fmul fast float %1171, %841
  %1177 = fmul fast float %1172, %842
  %1178 = fmul fast float %1173, %843
  %1179 = and i32 %856, 16384
  %1180 = icmp ne i32 %1179, 0
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = select i1 %1180, float %1182, float 1.000000e+00
  %1184 = fmul fast float %1183, %1175
  %1185 = fmul fast float %1176, %1184
  %1186 = fmul fast float %1177, %1184
  %1187 = fmul fast float %1178, %1184
  br label %1188

; <label>:1188                                    ; preds = %1166, %1105
  %1189 = phi float [ %1185, %1166 ], [ 0.000000e+00, %1105 ]
  %1190 = phi float [ %1186, %1166 ], [ 0.000000e+00, %1105 ]
  %1191 = phi float [ %1187, %1166 ], [ 0.000000e+00, %1105 ]
  %1192 = fsub fast float %1189, %785
  %1193 = fsub fast float %1190, %786
  %1194 = fsub fast float %1191, %787
  %1195 = fmul fast float %1192, %1002
  %1196 = fmul fast float %1193, %1002
  %1197 = fmul fast float %1194, %1002
  %1198 = fadd fast float %1195, %785
  %1199 = fadd fast float %1196, %786
  %1200 = fadd fast float %1197, %787
  br label %905

; <label>:1201                                    ; preds = %905
  br label %1202

; <label>:1202                                    ; preds = %1201, %677
  %1203 = phi float [ 0.000000e+00, %677 ], [ %906, %1201 ]
  %1204 = phi float [ %692, %677 ], [ %907, %1201 ]
  %1205 = phi float [ %690, %677 ], [ %908, %1201 ]
  %1206 = phi float [ 0.000000e+00, %677 ], [ %909, %1201 ]
  %1207 = phi float [ 0.000000e+00, %677 ], [ %910, %1201 ]
  %1208 = phi float [ %695, %677 ], [ %911, %1201 ]
  %1209 = phi float [ %696, %677 ], [ %912, %1201 ]
  %1210 = phi float [ %697, %677 ], [ %913, %1201 ]
  %1211 = phi float [ %723, %677 ], [ %914, %1201 ]
  %1212 = phi float [ %724, %677 ], [ %915, %1201 ]
  %1213 = phi float [ %725, %677 ], [ %916, %1201 ]
  %1214 = phi float [ %689, %677 ], [ %917, %1201 ]
  %1215 = phi float [ %688, %677 ], [ %918, %1201 ]
  %1216 = phi float [ 0.000000e+00, %677 ], [ %919, %1201 ]
  %1217 = phi float [ %686, %677 ], [ %920, %1201 ]
  %1218 = phi float [ %680, %677 ], [ %921, %1201 ]
  %1219 = phi float [ %681, %677 ], [ %922, %1201 ]
  %1220 = phi float [ %682, %677 ], [ %923, %1201 ]
  %1221 = call float @dx.op.dot3.f32(i32 55, float %1211, float %1212, float %1213, float %1211, float %1212, float %1213)  ; Dot3(ax,ay,az,bx,by,bz)
  %1222 = call float @dx.op.unary.f32(i32 25, float %1221)  ; Rsqrt(value)
  %1223 = fmul fast float %1222, %1211
  %1224 = fmul fast float %1222, %1212
  %1225 = fmul fast float %1222, %1213
  %1226 = fadd fast float %1216, %687
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1223, float %1224, float %1225, float %1223, float %1224, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = call float @dx.op.unary.f32(i32 25, float %1228)  ; Rsqrt(value)
  %1230 = fmul fast float %1229, %1223
  %1231 = fmul fast float %1229, %1224
  %1232 = fmul fast float %1229, %1225
  %1233 = fadd fast float %1217, 0xBFB99999A0000000
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = fmul fast float %1234, 0x3FF1C71C80000000
  %1236 = call float @dx.op.binary.f32(i32 36, float %1217, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1237 = fsub fast float 1.000000e+00, %1235
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1239 = fmul fast float %1238, %1218
  %1240 = fmul fast float %1238, %1219
  %1241 = fmul fast float %1238, %1220
  %1242 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1243 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1244 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  %1245 = fmul fast float %1235, %1218
  %1246 = fmul fast float %1235, %1219
  %1247 = fmul fast float %1235, %1220
  %1248 = fadd fast float %1245, %1236
  %1249 = fadd fast float %1246, %1236
  %1250 = fadd fast float %1247, %1236
  %1251 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1254 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.i32 %1255, 3
  %1257 = and i32 %1256, 8
  %1258 = icmp ne i32 %1257, 0
  %1259 = call float @dx.op.binary.f32(i32 35, float %1242, float %1218)  ; FMax(a,b)
  %1260 = call float @dx.op.binary.f32(i32 35, float %1243, float %1218)  ; FMax(a,b)
  %1261 = call float @dx.op.binary.f32(i32 35, float %1244, float %1218)  ; FMax(a,b)
  %1262 = call float @dx.op.dot3.f32(i32 55, float %1242, float %1243, float %1244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1263 = select i1 %176, float %1218, float %1242
  %1264 = select i1 %176, float %1262, float %1243
  %1265 = select i1 %176, float 1.000000e+00, float %1244
  %1266 = select i1 %1258, float %1259, float %1263
  %1267 = select i1 %1258, float %1260, float %1264
  %1268 = select i1 %1258, float %1261, float %1265
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1273 = fadd fast float %1270, %105
  %1274 = fadd fast float %1271, %106
  %1275 = fadd fast float %1272, %107
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1279 = fsub fast float %1273, %1277
  %1280 = fsub fast float %1274, %1278
  %1281 = fmul fast float %1279, %1279
  %1282 = fmul fast float %1280, %1280
  %1283 = fadd fast float %1281, %1282
  %1284 = call float @dx.op.unary.f32(i32 24, float %1283)  ; Sqrt(value)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1276, 2
  %1286 = fcmp fast olt float %1284, %1285
  br i1 %1286, label %1287, label %1354

; <label>:1287                                    ; preds = %1202
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1290, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1298 = extractvalue %dx.types.CBufRet.f32 %1290, 3
  %1299 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1300 = fadd fast float %1297, %1273
  %1301 = fadd fast float %1298, %1274
  %1302 = fadd fast float %1299, %1275
  %1303 = fmul fast float %1300, %1289
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %1291, float %1303)  ; FMad(a,b,c)
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1293, float %1304)  ; FMad(a,b,c)
  %1306 = fmul fast float %1300, %1294
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %1295, float %1306)  ; FMad(a,b,c)
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1296, float %1307)  ; FMad(a,b,c)
  %1309 = fsub fast float %1305, %1297
  %1310 = fsub fast float %1308, %1298
  %1311 = fsub fast float %1309, %1277
  %1312 = fadd fast float %1311, %1285
  %1313 = fsub fast float %1310, %1278
  %1314 = fadd fast float %1313, %1285
  %1315 = extractvalue %dx.types.CBufRet.f32 %1276, 3
  %1316 = fmul fast float %1312, %1315
  %1317 = fmul fast float %1314, %1315
  %1318 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1319 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1320 = fsub fast float 1.000000e+00, %1318
  %1321 = fsub fast float 1.000000e+00, %1319
  %1322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = fcmp fast ugt float %1323, 0.000000e+00
  br i1 %1324, label %1325, label %1628

; <label>:1325                                    ; preds = %1287
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1328 = fmul fast float %1327, %1323
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1330 = fadd fast float %1329, %1328
  %1331 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1332 = fadd fast float %1330, %1299
  %1333 = fmul fast float %1305, %1293
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1308, float %1296, float %1333)  ; FMad(a,b,c)
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1332, float %1331, float %1334)  ; FMad(a,b,c)
  %1336 = fsub fast float %1335, %1299
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1339 = fsub fast float %1336, %1338
  %1340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.ResRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.ResRet.f32 %1340, 2
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = fadd fast float %1345, %1341
  %1349 = fmul fast float %1348, 0x3F847AE140000000
  %1350 = fadd fast float %1346, %1342
  %1351 = fmul fast float %1350, 0x3F847AE140000000
  %1352 = fadd fast float %1347, %1343
  %1353 = fmul fast float %1352, 0x3F847AE140000000
  br label %1628

; <label>:1354                                    ; preds = %1202
  %1355 = and i32 %152, 1
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1628, label %1357

; <label>:1357                                    ; preds = %1354
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1358, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1367 = extractvalue %dx.types.CBufRet.f32 %1358, 3
  %1368 = extractvalue %dx.types.CBufRet.f32 %1360, 3
  %1369 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1370 = fadd fast float %1367, %1273
  %1371 = fadd fast float %1368, %1274
  %1372 = fadd fast float %1369, %1275
  %1373 = fmul fast float %1370, %1359
  %1374 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1361, float %1373)  ; FMad(a,b,c)
  %1375 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %1363, float %1374)  ; FMad(a,b,c)
  %1376 = fmul fast float %1370, %1364
  %1377 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1365, float %1376)  ; FMad(a,b,c)
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %1366, float %1377)  ; FMad(a,b,c)
  %1379 = fsub fast float %1375, %1367
  %1380 = fsub fast float %1378, %1368
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1385 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.i32 %1388, 0
  %1390 = extractvalue %dx.types.CBufRet.i32 %1388, 1
  %1391 = udiv i32 %1390, %1389
  %1392 = fsub fast float %1379, %1382
  %1393 = fsub fast float %1380, %1383
  %1394 = call float @dx.op.binary.f32(i32 35, float %1392, float 0.000000e+00)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 35, float %1393, float 0.000000e+00)  ; FMax(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1394, float %1384)  ; FMin(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1395, float %1385)  ; FMin(a,b)
  %1398 = add i32 %1389, -1
  %1399 = add i32 %1391, -1
  %1400 = fmul fast float %1396, %1387
  %1401 = fmul fast float %1397, %1387
  %1402 = fptoui float %1400 to i32
  %1403 = fptoui float %1401 to i32
  %1404 = call i32 @dx.op.binary.i32(i32 40, i32 %1402, i32 %1398)  ; UMin(a,b)
  %1405 = call i32 @dx.op.binary.i32(i32 40, i32 %1403, i32 %1399)  ; UMin(a,b)
  %1406 = mul i32 %1405, %1389
  %1407 = add i32 %1406, %1404
  %1408 = shl i32 %1407, 2
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = icmp eq i32 %1410, -1
  br i1 %1411, label %1628, label %1412

; <label>:1412                                    ; preds = %1357
  %1413 = mul i32 %1410, 148
  %1414 = add i32 %1413, 4
  %1415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = add i32 %1413, 8
  %1418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = add i32 %1413, 36
  %1421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = add i32 %1413, 60
  %1424 = add i32 %1413, 92
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = add i32 %1413, 116
  %1428 = fsub fast float %1379, %1416
  %1429 = fsub fast float %1380, %1419
  %1430 = fmul fast float %1387, %1428
  %1431 = fmul fast float %1387, %1429
  %1432 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1433 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1434 = fsub fast float 1.000000e+00, %1433
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 2
  %1437 = call float @dx.op.unary.f32(i32 83, float %1432)  ; DerivCoarseX(value)
  %1438 = call float @dx.op.unary.f32(i32 83, float %1434)  ; DerivCoarseX(value)
  %1439 = call float @dx.op.unary.f32(i32 84, float %1432)  ; DerivCoarseY(value)
  %1440 = call float @dx.op.unary.f32(i32 84, float %1434)  ; DerivCoarseY(value)
  %1441 = fmul fast float %1437, %1436
  %1442 = fmul fast float %1438, %1436
  %1443 = fmul fast float %1439, %1436
  %1444 = fmul fast float %1440, %1436
  %1445 = call float @dx.op.dot2.f32(i32 54, float %1443, float %1444, float %1443, float %1444)  ; Dot2(ax,ay,bx,by)
  %1446 = call float @dx.op.dot2.f32(i32 54, float %1441, float %1442, float %1441, float %1442)  ; Dot2(ax,ay,bx,by)
  %1447 = call float @dx.op.binary.f32(i32 35, float %1446, float %1445)  ; FMax(a,b)
  %1448 = call float @dx.op.unary.f32(i32 23, float %1447)  ; Log(value)
  %1449 = fmul fast float %1448, 5.000000e-01
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 1
  %1452 = fadd fast float %1451, %1449
  %1453 = call float @dx.op.binary.f32(i32 35, float %1452, float 0.000000e+00)  ; FMax(a,b)
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 3
  %1456 = fadd fast float %1455, %1453
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 3
  %1459 = fadd fast float %1456, %1458
  %1460 = add i32 %1426, 0
  %1461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1460, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1462 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1461, i32 0)  ; GetDimensions(handle,mipLevel)
  %1463 = extractvalue %dx.types.Dimensions %1462, 0
  %1464 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1463)  ; FirstbitLo(value)
  %1465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.i32 %1465, 1
  %1467 = sub nsw i32 %1466, %1464
  %1468 = sitofp i32 %1467 to float
  %1469 = fsub fast float %1459, %1468
  %1470 = call float @dx.op.binary.f32(i32 35, float %1469, float 0.000000e+00)  ; FMax(a,b)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1461, %dx.types.Handle %33, float %1432, float %1434, float %1422, float undef, i32 0, i32 0, i32 undef, float %1470)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = fcmp ule float %1472, 0x3FE0101020000000
  %1474 = extractvalue %dx.types.CBufRet.i32 %1465, 0
  %1475 = and i32 %1474, 128
  %1476 = icmp ne i32 %1475, 0
  %1477 = and i1 %1473, %1476
  br i1 %1477, label %1628, label %1478

; <label>:1478                                    ; preds = %1412
  %1479 = add i32 %1413, 20
  %1480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = add i32 %1413, 24
  %1483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = add i32 %1413, 40
  %1486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  %1488 = add i32 %1413, 96
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 2
  %1493 = fmul fast float %1492, %1432
  %1494 = fmul fast float %1492, %1434
  %1495 = extractvalue %dx.types.CBufRet.f32 %1491, 3
  %1496 = fadd fast float %1493, %1495
  %1497 = fadd fast float %1494, %1495
  %1498 = add i32 %1490, 0
  %1499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1498, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1500 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1499, i32 0)  ; GetDimensions(handle,mipLevel)
  %1501 = extractvalue %dx.types.Dimensions %1500, 0
  %1502 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1501)  ; FirstbitLo(value)
  %1503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.i32 %1503, 1
  %1505 = sub nsw i32 %1504, %1502
  %1506 = sitofp i32 %1505 to float
  %1507 = fsub fast float %1456, %1506
  %1508 = call float @dx.op.binary.f32(i32 35, float %1507, float 0.000000e+00)  ; FMax(a,b)
  %1509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1499, %dx.types.Handle %33, float %1496, float %1497, float %1487, float undef, i32 0, i32 0, i32 undef, float %1508)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = fmul fast float %1510, %1481
  %1512 = fadd fast float %1511, %1484
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 3
  %1521 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1522 = fadd fast float %1518, %1379
  %1523 = fadd fast float %1520, %1380
  %1524 = fadd fast float %1512, %1521
  %1525 = fmul fast float %1522, %1514
  %1526 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %1515, float %1525)  ; FMad(a,b,c)
  %1527 = call float @dx.op.tertiary.f32(i32 46, float %1524, float %1516, float %1526)  ; FMad(a,b,c)
  %1528 = fsub fast float %1527, %1521
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1531 = fsub fast float %1528, %1530
  %1532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.i32 %1532, 0
  %1534 = call i32 @dx.op.binary.i32(i32 40, i32 %1410, i32 %1533)  ; UMin(a,b)
  %1535 = mul i32 %1534, 36
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %1535, 4
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = fmul fast float %1540, %1432
  %1542 = fmul fast float %1540, %1434
  %1543 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1544 = fadd fast float %1541, %1543
  %1545 = fadd fast float %1542, %1543
  %1546 = icmp eq i32 %1537, 0
  br i1 %1546, label %1615, label %1547

; <label>:1547                                    ; preds = %1478
  br label %1548

; <label>:1548                                    ; preds = %1605, %1547
  %1549 = phi float [ %1606, %1605 ], [ 0.000000e+00, %1547 ]
  %1550 = phi float [ %1607, %1605 ], [ 0.000000e+00, %1547 ]
  %1551 = phi float [ %1608, %1605 ], [ 0.000000e+00, %1547 ]
  %1552 = phi float [ %1609, %1605 ], [ 0.000000e+00, %1547 ]
  %1553 = phi float [ %1610, %1605 ], [ 0.000000e+00, %1547 ]
  %1554 = phi float [ %1611, %1605 ], [ 0.000000e+00, %1547 ]
  %1555 = phi i32 [ %1612, %1605 ], [ 0, %1547 ]
  %1556 = shl i32 %1555, 2
  %1557 = add i32 %1423, %1556
  %1558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = add i32 %1427, %1556
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1562, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1563, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1564, i32 0)  ; GetDimensions(handle,mipLevel)
  %1566 = extractvalue %dx.types.Dimensions %1565, 0
  %1567 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1566)  ; FirstbitLo(value)
  %1568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.i32 %1568, 1
  %1570 = sub nsw i32 %1569, %1567
  %1571 = sitofp i32 %1570 to float
  %1572 = fsub fast float %1456, %1571
  %1573 = call float @dx.op.binary.f32(i32 35, float %1572, float 0.000000e+00)  ; FMax(a,b)
  %1574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1564, %dx.types.Handle %33, float %1544, float %1545, float %1559, float undef, i32 0, i32 0, i32 undef, float %1573)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = fcmp fast ogt float %1575, 0.000000e+00
  br i1 %1576, label %1577, label %1605

; <label>:1577                                    ; preds = %1548
  %1578 = add i32 %1538, %1556
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 32767
  %1582 = mul nuw nsw i32 %1581, 928
  %1583 = add nuw nsw i32 %1582, 48
  %1584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.ResRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.ResRet.f32 %1584, 2
  %1588 = add nuw nsw i32 %1582, 60
  %1589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  %1591 = extractvalue %dx.types.ResRet.f32 %1589, 1
  %1592 = extractvalue %dx.types.ResRet.f32 %1589, 2
  %1593 = fmul fast float %1585, %1575
  %1594 = fmul fast float %1586, %1575
  %1595 = fmul fast float %1587, %1575
  %1596 = fadd fast float %1593, %1549
  %1597 = fadd fast float %1594, %1550
  %1598 = fadd fast float %1595, %1551
  %1599 = fmul fast float %1590, %1575
  %1600 = fmul fast float %1591, %1575
  %1601 = fmul fast float %1592, %1575
  %1602 = fadd fast float %1599, %1552
  %1603 = fadd fast float %1600, %1553
  %1604 = fadd fast float %1601, %1554
  br label %1605

; <label>:1605                                    ; preds = %1577, %1548
  %1606 = phi float [ %1596, %1577 ], [ %1549, %1548 ]
  %1607 = phi float [ %1597, %1577 ], [ %1550, %1548 ]
  %1608 = phi float [ %1598, %1577 ], [ %1551, %1548 ]
  %1609 = phi float [ %1602, %1577 ], [ %1552, %1548 ]
  %1610 = phi float [ %1603, %1577 ], [ %1553, %1548 ]
  %1611 = phi float [ %1604, %1577 ], [ %1554, %1548 ]
  %1612 = add nuw i32 %1555, 1
  %1613 = icmp eq i32 %1612, %1537
  br i1 %1613, label %1614, label %1548

; <label>:1614                                    ; preds = %1605
  br label %1615

; <label>:1615                                    ; preds = %1614, %1478
  %1616 = phi float [ 0.000000e+00, %1478 ], [ %1606, %1614 ]
  %1617 = phi float [ 0.000000e+00, %1478 ], [ %1607, %1614 ]
  %1618 = phi float [ 0.000000e+00, %1478 ], [ %1608, %1614 ]
  %1619 = phi float [ 0.000000e+00, %1478 ], [ %1609, %1614 ]
  %1620 = phi float [ 0.000000e+00, %1478 ], [ %1610, %1614 ]
  %1621 = phi float [ 0.000000e+00, %1478 ], [ %1611, %1614 ]
  %1622 = fadd fast float %1619, %1616
  %1623 = fmul fast float %1622, 0x3F847AE140000000
  %1624 = fadd fast float %1620, %1617
  %1625 = fmul fast float %1624, 0x3F847AE140000000
  %1626 = fadd fast float %1621, %1618
  %1627 = fmul fast float %1626, 0x3F847AE140000000
  br label %1628

; <label>:1628                                    ; preds = %1615, %1412, %1357, %1354, %1325, %1287
  %1629 = phi float [ %1339, %1325 ], [ -1.310720e+05, %1287 ], [ %1531, %1615 ], [ -1.310720e+05, %1357 ], [ -1.310720e+05, %1412 ], [ -1.310720e+05, %1354 ]
  %1630 = phi float [ %1349, %1325 ], [ 0.000000e+00, %1287 ], [ %1623, %1615 ], [ 0.000000e+00, %1357 ], [ 0.000000e+00, %1412 ], [ 0.000000e+00, %1354 ]
  %1631 = phi float [ %1351, %1325 ], [ 0.000000e+00, %1287 ], [ %1625, %1615 ], [ 0.000000e+00, %1357 ], [ 0.000000e+00, %1412 ], [ 0.000000e+00, %1354 ]
  %1632 = phi float [ %1353, %1325 ], [ 0.000000e+00, %1287 ], [ %1627, %1615 ], [ 0.000000e+00, %1357 ], [ 0.000000e+00, %1412 ], [ 0.000000e+00, %1354 ]
  %1633 = phi i1 [ true, %1325 ], [ false, %1287 ], [ true, %1615 ], [ false, %1357 ], [ false, %1412 ], [ false, %1354 ]
  %1634 = and i32 %152, 3
  %1635 = icmp eq i32 %1634, 1
  %1636 = select i1 %1635, float 1.000000e+00, float 0.000000e+00
  %1637 = fsub fast float %1629, %107
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = select i1 %1633, float %1638, float 1.000000e+00
  %1640 = fmul fast float %1639, %1636
  %1641 = icmp eq i32 %1634, 3
  %1642 = select i1 %1641, float 1.000000e+00, float %1640
  %1643 = call float @dx.op.binary.f32(i32 35, float %1203, float %1642)  ; FMax(a,b)
  %1644 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1645 = fcmp fast une float %1644, 0.000000e+00
  %1646 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1647 = call float @dx.op.unary.f32(i32 25, float %1646)  ; Rsqrt(value)
  br i1 %1645, label %1655, label %1648

; <label>:1648                                    ; preds = %1628
  %1649 = fmul fast float %1647, %105
  %1650 = fmul fast float %1647, %106
  %1651 = fmul fast float %1647, %107
  %1652 = fsub fast float -0.000000e+00, %1649
  %1653 = fsub fast float -0.000000e+00, %1650
  %1654 = fsub fast float -0.000000e+00, %1651
  br label %1823

; <label>:1655                                    ; preds = %1628
  %1656 = fmul fast float %105, %1647
  %1657 = fsub fast float -0.000000e+00, %1656
  %1658 = fmul fast float %106, %1647
  %1659 = fsub fast float -0.000000e+00, %1658
  %1660 = fmul fast float %107, %1647
  %1661 = fsub fast float -0.000000e+00, %1660
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1659, float %1661, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = fmul fast float %1644, 2.500000e+00
  %1664 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1665 = fmul fast float %1644, 0x4013FFFFE0000000
  %1666 = fadd fast float %1665, 0xBFFFFFFFE0000000
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1668 = fmul fast float %1644, 0x4004000020000000
  %1669 = fadd fast float %1668, 0xBFF8000040000000
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1672 = fmul fast float %1233, 1.000000e+01
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fmul fast float %1673, 2.000000e+00
  %1675 = fsub fast float 3.000000e+00, %1674
  %1676 = fmul fast float %1673, %1673
  %1677 = fmul fast float %1676, %1675
  %1678 = fsub fast float 1.000000e+00, %1677
  %1679 = fsub fast float 0x3FE3333340000000, %1254
  %1680 = fmul fast float %1679, 0x400AAAAAA0000000
  %1681 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1682 = fmul fast float %1678, %1681
  %1683 = fmul fast float %1266, 0x3FEA2B8620000000
  %1684 = fmul fast float %1267, 0x3FEA2B8620000000
  %1685 = fmul fast float %1268, 0x3FEA2B8620000000
  %1686 = fadd fast float %1683, 0x3FC81DFBA0000000
  %1687 = fmul fast float %1686, %1266
  %1688 = fadd fast float %1687, 0x3F910E6020000000
  %1689 = fadd fast float %1684, 0x3FC81DFBA0000000
  %1690 = fmul fast float %1689, %1267
  %1691 = fadd fast float %1690, 0x3F910E6020000000
  %1692 = fadd fast float %1685, 0x3FC81DFBA0000000
  %1693 = fmul fast float %1692, %1268
  %1694 = fadd fast float %1693, 0x3F910E6020000000
  %1695 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1698 = fsub fast float %1695, %1266
  %1699 = fsub fast float %1696, %1267
  %1700 = fsub fast float %1697, %1268
  %1701 = fmul fast float %1698, %1671
  %1702 = fmul fast float %1701, %1682
  %1703 = fmul fast float %1699, %1671
  %1704 = fmul fast float %1703, %1682
  %1705 = fmul fast float %1700, %1671
  %1706 = fmul fast float %1705, %1682
  %1707 = fadd fast float %1702, %1266
  %1708 = fadd fast float %1704, %1267
  %1709 = fadd fast float %1706, %1268
  %1710 = fmul fast float %1214, %1214
  %1711 = fmul fast float %1710, %1710
  %1712 = fadd fast float %1667, 1.000000e+00
  %1713 = fsub fast float %1712, %1682
  %1714 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1715 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fsub fast float 1.000000e+00, %1711
  %1718 = call float @dx.op.binary.f32(i32 36, float %1714, float %1717)  ; FMin(a,b)
  %1719 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1720 = call float @dx.op.binary.f32(i32 35, float %1718, float %1719)  ; FMax(a,b)
  %1721 = fadd fast float %1716, 0xBFE4CCCCC0000000
  %1722 = fmul fast float %1721, 0x4006DB6DA0000000
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1724 = fmul fast float %1723, 2.000000e+00
  %1725 = fsub fast float 3.000000e+00, %1724
  %1726 = bitcast float %1251 to i32
  %1727 = ashr i32 %1726, 1
  %1728 = add nsw i32 %1727, 532487669
  %1729 = bitcast i32 %1728 to float
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = bitcast float %1730 to i32
  %1732 = sub nsw i32 2129859010, %1731
  %1733 = bitcast i32 %1732 to float
  %1734 = fmul fast float %1733, 2.000000e+00
  %1735 = bitcast float %1252 to i32
  %1736 = ashr i32 %1735, 1
  %1737 = add nsw i32 %1736, 532487669
  %1738 = bitcast i32 %1737 to float
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = bitcast float %1739 to i32
  %1741 = sub nsw i32 2129859010, %1740
  %1742 = bitcast i32 %1741 to float
  %1743 = fmul fast float %1742, 2.000000e+00
  %1744 = bitcast float %1253 to i32
  %1745 = ashr i32 %1744, 1
  %1746 = add nsw i32 %1745, 532487669
  %1747 = bitcast i32 %1746 to float
  %1748 = fsub fast float 1.000000e+00, %1747
  %1749 = bitcast float %1748 to i32
  %1750 = sub nsw i32 2129859010, %1749
  %1751 = bitcast i32 %1750 to float
  %1752 = fmul fast float %1751, 2.000000e+00
  %1753 = fsub fast float 0x4002A9FBE0000000, %1734
  %1754 = fadd fast float %1734, 0x3FD54FDF00000000
  %1755 = bitcast float %1754 to i32
  %1756 = sub nsw i32 2129859010, %1755
  %1757 = bitcast i32 %1756 to float
  %1758 = fmul fast float %1757, %1753
  %1759 = fmul fast float %1758, %1758
  %1760 = fsub fast float 0x4002A9FBE0000000, %1743
  %1761 = fadd fast float %1743, 0x3FD54FDF00000000
  %1762 = bitcast float %1761 to i32
  %1763 = sub nsw i32 2129859010, %1762
  %1764 = bitcast i32 %1763 to float
  %1765 = fmul fast float %1764, %1760
  %1766 = fmul fast float %1765, %1765
  %1767 = fsub fast float 0x4002A9FBE0000000, %1752
  %1768 = fadd fast float %1752, 0x3FD54FDF00000000
  %1769 = bitcast float %1768 to i32
  %1770 = sub nsw i32 2129859010, %1769
  %1771 = bitcast i32 %1770 to float
  %1772 = fmul fast float %1771, %1767
  %1773 = fmul fast float %1772, %1772
  %1774 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1759)  ; FMax(a,b)
  %1775 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1766)  ; FMax(a,b)
  %1776 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1773)  ; FMax(a,b)
  %1777 = fsub fast float 1.000000e+00, %1662
  %1778 = fadd fast float %1777, %1678
  %1779 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1780 = fsub fast float 1.000000e+00, %1642
  %1781 = fmul fast float %1720, %1780
  %1782 = fmul fast float %1723, %1723
  %1783 = fmul fast float %1782, %1781
  %1784 = fmul fast float %1783, %1725
  %1785 = fmul fast float %1780, 0xBFE99999A0000000
  %1786 = fmul fast float %1785, %1671
  %1787 = fmul fast float %1786, %1682
  %1788 = fadd fast float %1787, 1.000000e+00
  %1789 = fadd fast float %1254, -1.000000e+00
  %1790 = fmul fast float %1788, %1789
  %1791 = fadd fast float %1790, 1.000000e+00
  %1792 = fsub fast float %1774, %1251
  %1793 = fsub fast float %1775, %1252
  %1794 = fsub fast float %1776, %1253
  %1795 = fmul fast float %1784, %1792
  %1796 = fmul fast float %1784, %1793
  %1797 = fmul fast float %1784, %1794
  %1798 = fadd fast float %1795, %1251
  %1799 = fadd fast float %1796, %1252
  %1800 = fadd fast float %1797, %1253
  %1801 = fsub fast float %43, %1230
  %1802 = fsub fast float %44, %1231
  %1803 = fsub fast float %45, %1232
  %1804 = fmul fast float %1784, %1801
  %1805 = fmul fast float %1784, %1802
  %1806 = fmul fast float %1784, %1803
  %1807 = fadd fast float %1804, %1230
  %1808 = fadd fast float %1805, %1231
  %1809 = fadd fast float %1806, %1232
  %1810 = fmul fast float %1784, %1779
  %1811 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  %1812 = fsub fast float 1.000000e+00, %1811
  %1813 = fmul fast float %1810, %1812
  %1814 = fadd fast float %1813, %1811
  %1815 = fsub fast float 1.000000e+00, %1214
  %1816 = fmul fast float %1784, %1815
  %1817 = fadd fast float %1816, %1214
  %1818 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = call float @dx.op.unary.f32(i32 25, float %1818)  ; Rsqrt(value)
  %1820 = fmul fast float %1807, %1819
  %1821 = fmul fast float %1808, %1819
  %1822 = fmul fast float %1809, %1819
  br label %1823

; <label>:1823                                    ; preds = %1655, %1648
  %1824 = phi float [ %1654, %1648 ], [ %1661, %1655 ]
  %1825 = phi float [ %1653, %1648 ], [ %1659, %1655 ]
  %1826 = phi float [ %1652, %1648 ], [ %1657, %1655 ]
  %1827 = phi float [ %1651, %1648 ], [ %1660, %1655 ]
  %1828 = phi float [ %1650, %1648 ], [ %1658, %1655 ]
  %1829 = phi float [ %1649, %1648 ], [ %1656, %1655 ]
  %1830 = phi float [ %1251, %1648 ], [ %1798, %1655 ]
  %1831 = phi float [ %1252, %1648 ], [ %1799, %1655 ]
  %1832 = phi float [ %1253, %1648 ], [ %1800, %1655 ]
  %1833 = phi float [ %1266, %1648 ], [ %1707, %1655 ]
  %1834 = phi float [ %1267, %1648 ], [ %1708, %1655 ]
  %1835 = phi float [ %1268, %1648 ], [ %1709, %1655 ]
  %1836 = phi float [ %1230, %1648 ], [ %1820, %1655 ]
  %1837 = phi float [ %1231, %1648 ], [ %1821, %1655 ]
  %1838 = phi float [ %1232, %1648 ], [ %1822, %1655 ]
  %1839 = phi float [ %1254, %1648 ], [ %1814, %1655 ]
  %1840 = phi float [ %1214, %1648 ], [ %1817, %1655 ]
  %1841 = select i1 %176, float 0.000000e+00, float %1832
  %1842 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1838, float %1826, float %1825, float %1824)  ; Dot3(ax,ay,az,bx,by,bz)
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = call float @dx.op.dot3.f32(i32 55, float %1829, float %1828, float %1827, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %1845 = fmul fast float %1844, 2.000000e+00
  %1846 = fmul fast float %1845, %1836
  %1847 = fmul fast float %1845, %1837
  %1848 = fmul fast float %1845, %1838
  %1849 = fsub fast float %1829, %1846
  %1850 = fsub fast float %1828, %1847
  %1851 = fsub fast float %1827, %1848
  %1852 = call float @dx.op.binary.f32(i32 36, float %1840, float 1.000000e+00)  ; FMin(a,b)
  %1853 = fsub fast float 1.000000e+00, %1840
  %1854 = bitcast float %1853 to i32
  %1855 = sub nsw i32 2129859010, %1854
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1858 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1859 = fadd fast float %1857, %105
  %1860 = fadd fast float %1858, %106
  %1861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.i32 %1861, 0
  %1863 = icmp eq i32 %1862, 1
  br i1 %1863, label %1864, label %1899

; <label>:1864                                    ; preds = %1823
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = fsub fast float %1859, %1866
  %1869 = fsub fast float %1860, %1867
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1873 = fmul fast float %1868, %1871
  %1874 = fmul fast float %1869, %1872
  %1875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1873, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = fcmp fast ogt float %1876, 0.000000e+00
  %1878 = extractvalue %dx.types.CBufRet.i32 %1861, 3
  %1879 = icmp ne i32 %1878, 0
  %1880 = and i1 %1877, %1879
  br i1 %1880, label %1881, label %1899, !dx.controlflow.hints !72

; <label>:1881                                    ; preds = %1864
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = fsub fast float %1859, %1883
  %1886 = fsub fast float %1860, %1884
  %1887 = fmul fast float %1885, %1885
  %1888 = fmul fast float %1886, %1886
  %1889 = fadd fast float %1887, %1888
  %1890 = uitofp i32 %1878 to float
  %1891 = fmul fast float %1890, %1890
  %1892 = fcmp fast ogt float %1889, %1891
  br i1 %1892, label %1899, label %1893

; <label>:1893                                    ; preds = %1881
  %1894 = call float @dx.op.unary.f32(i32 24, float %1889)  ; Sqrt(value)
  %1895 = fsub fast float %1890, %1894
  %1896 = fmul fast float %1895, 0x3F75555560000000
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = call float @dx.op.binary.f32(i32 36, float %1897, float %1876)  ; FMin(a,b)
  br label %1899

; <label>:1899                                    ; preds = %1893, %1881, %1864, %1823
  %1900 = phi float [ 1.000000e+00, %1823 ], [ %1898, %1893 ], [ %1876, %1864 ], [ 0.000000e+00, %1881 ]
  %1901 = fcmp fast ogt float %1900, 0.000000e+00
  br i1 %1901, label %1902, label %2000, !dx.controlflow.hints !73

; <label>:1902                                    ; preds = %1899
  %1903 = fadd fast float %136, 5.000000e-01
  %1904 = call float @dx.op.unary.f32(i32 27, float %1903)  ; Round_ni(value)
  %1905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1904, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 3
  %1911 = fmul fast float %1910, %1906
  %1912 = fmul fast float %1910, %1907
  %1913 = fmul fast float %1910, %1908
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1904, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1904, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = fmul fast float %1917, 2.000000e+00
  %1920 = fmul fast float %1918, 2.000000e+00
  %1921 = fadd fast float %1919, -1.000000e+00
  %1922 = fadd fast float %1920, -1.000000e+00
  %1923 = fadd fast float %1921, %1922
  %1924 = fmul fast float %1923, 5.000000e-01
  %1925 = fsub fast float %1921, %1922
  %1926 = fmul fast float %1925, 5.000000e-01
  %1927 = call float @dx.op.unary.f32(i32 6, float %1924)  ; FAbs(value)
  %1928 = fsub fast float 1.000000e+00, %1927
  %1929 = call float @dx.op.unary.f32(i32 6, float %1926)  ; FAbs(value)
  %1930 = fsub fast float %1928, %1929
  %1931 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1930)  ; FMax(a,b)
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1924, float %1926, float %1931, float %1924, float %1926, float %1931)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = bitcast float %1932 to i32
  %1934 = ashr i32 %1933, 1
  %1935 = sub nsw i32 1597250115, %1934
  %1936 = bitcast i32 %1935 to float
  %1937 = fmul fast float %1936, %1924
  %1938 = fmul fast float %1936, %1926
  %1939 = fmul fast float %1936, %1931
  %1940 = fsub fast float 1.000000e+00, %1915
  %1941 = fdiv fast float %1940, %1939
  %1942 = fmul fast float %1939, %43
  %1943 = fmul fast float %1939, %44
  %1944 = fmul fast float %1939, %45
  %1945 = fmul fast float %1937, %39
  %1946 = fmul fast float %1937, %40
  %1947 = fmul fast float %1937, %41
  %1948 = fadd fast float %1942, %1945
  %1949 = fadd fast float %1943, %1946
  %1950 = fadd fast float %1944, %1947
  %1951 = fmul fast float %1938, %69
  %1952 = fmul fast float %1938, %70
  %1953 = fmul fast float %1938, %71
  %1954 = fadd fast float %1948, %1951
  %1955 = fadd fast float %1949, %1952
  %1956 = fadd fast float %1950, %1953
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1954, float %1955, float %1956, float %1954, float %1955, float %1956)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = call float @dx.op.unary.f32(i32 25, float %1957)  ; Rsqrt(value)
  %1959 = fmul fast float %1954, %1958
  %1960 = fmul fast float %1955, %1958
  %1961 = fmul fast float %1956, %1958
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1838, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1964 = fmul fast float %1963, 5.000000e-01
  %1965 = fadd fast float %1964, 5.000000e-01
  %1966 = fmul fast float %1965, %1915
  %1967 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1838, float %1959, float %1960, float %1961)  ; Dot3(ax,ay,az,bx,by,bz)
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fmul fast float %1968, %1941
  %1970 = fadd fast float %1966, %1969
  %1971 = fsub fast float 5.000000e-01, %1964
  %1972 = fmul fast float %1971, %1833
  %1973 = fmul fast float %1971, %1834
  %1974 = fmul fast float %1971, %1835
  %1975 = fadd fast float %1970, %1972
  %1976 = fmul fast float %1975, %1911
  %1977 = fadd fast float %1970, %1973
  %1978 = fmul fast float %1977, %1912
  %1979 = fadd fast float %1970, %1974
  %1980 = fmul fast float %1979, %1913
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1849, float %1850, float %1851, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = fmul fast float %1982, 5.000000e-01
  %1984 = fadd fast float %1983, 5.000000e-01
  %1985 = fmul fast float %1984, %1915
  %1986 = call float @dx.op.dot3.f32(i32 55, float %1849, float %1850, float %1851, float %1959, float %1960, float %1961)  ; Dot3(ax,ay,az,bx,by,bz)
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = fmul fast float %1987, %1941
  %1989 = fadd fast float %1985, %1988
  %1990 = fsub fast float 5.000000e-01, %1983
  %1991 = fmul fast float %1990, %1833
  %1992 = fmul fast float %1990, %1834
  %1993 = fmul fast float %1990, %1835
  %1994 = fadd fast float %1989, %1991
  %1995 = fmul fast float %1994, %1911
  %1996 = fadd fast float %1989, %1992
  %1997 = fmul fast float %1996, %1912
  %1998 = fadd fast float %1989, %1993
  %1999 = fmul fast float %1998, %1913
  br label %2000

; <label>:2000                                    ; preds = %1902, %1899
  %2001 = phi float [ %1995, %1902 ], [ 0.000000e+00, %1899 ]
  %2002 = phi float [ %1997, %1902 ], [ 0.000000e+00, %1899 ]
  %2003 = phi float [ %1999, %1902 ], [ 0.000000e+00, %1899 ]
  %2004 = phi float [ %1976, %1902 ], [ 0.000000e+00, %1899 ]
  %2005 = phi float [ %1978, %1902 ], [ 0.000000e+00, %1899 ]
  %2006 = phi float [ %1980, %1902 ], [ 0.000000e+00, %1899 ]
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 0
  %2009 = fcmp fast ogt float %2008, 0.000000e+00
  %2010 = and i1 %1901, %2009
  br i1 %2010, label %2011, label %2215, !dx.controlflow.hints !74

; <label>:2011                                    ; preds = %2000
  %2012 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %2013 = fadd fast float %2012, %107
  %2014 = fmul fast float %1836, 3.200000e+01
  %2015 = fmul fast float %1837, 3.200000e+01
  %2016 = fadd fast float %1859, %2014
  %2017 = fadd fast float %1860, %2015
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.CBufRet.f32 %2018, 1
  %2021 = fsub fast float %2016, %2019
  %2022 = fsub fast float %2017, %2020
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = fmul fast float %2021, %2024
  %2027 = fmul fast float %2022, %2025
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2031 = fsub fast float %1859, %2029
  %2032 = fsub fast float %1860, %2030
  %2033 = fmul fast float %2031, %2031
  %2034 = fmul fast float %2032, %2032
  %2035 = fadd fast float %2033, %2034
  %2036 = call float @dx.op.unary.f32(i32 24, float %2035)  ; Sqrt(value)
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 0
  %2039 = extractvalue %dx.types.CBufRet.f32 %2037, 1
  %2040 = fsub fast float %2036, %2038
  %2041 = fdiv fast float %2040, %2039
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fmul fast float %2042, 2.000000e+00
  %2044 = fsub fast float 3.000000e+00, %2043
  %2045 = fmul fast float %2042, %2042
  %2046 = fmul fast float %2045, %2044
  %2047 = fcmp fast oge float %2026, 0.000000e+00
  %2048 = fcmp fast ole float %2026, 1.000000e+00
  %2049 = and i1 %2048, %2047
  %2050 = fcmp fast oge float %2027, 0.000000e+00
  %2051 = and i1 %2050, %2049
  %2052 = fcmp fast ole float %2027, 1.000000e+00
  %2053 = and i1 %2052, %2051
  %2054 = fcmp fast ogt float %2046, 0.000000e+00
  %2055 = and i1 %2054, %2053
  br i1 %2055, label %2056, label %2179, !dx.controlflow.hints !75

; <label>:2056                                    ; preds = %2011
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 3
  %2060 = fmul fast float %2058, %2026
  %2061 = fmul fast float %2059, %2027
  %2062 = call float @dx.op.unary.f32(i32 27, float %2060)  ; Round_ni(value)
  %2063 = call float @dx.op.unary.f32(i32 27, float %2061)  ; Round_ni(value)
  %2064 = fptosi float %2062 to i32
  %2065 = fptosi float %2063 to i32
  %2066 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2064, i32 %2065, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = lshr i32 %2067, 16
  %2069 = icmp eq i32 %2068, 65535
  br i1 %2069, label %2179, label %2070

; <label>:2070                                    ; preds = %2056
  %2071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2072 = extractvalue %dx.types.CBufRet.f32 %2071, 0
  %2073 = fmul fast float %2072, %2026
  %2074 = extractvalue %dx.types.CBufRet.f32 %2071, 1
  %2075 = fadd fast float %2073, %2074
  %2076 = extractvalue %dx.types.CBufRet.f32 %2071, 2
  %2077 = fmul fast float %2076, %2027
  %2078 = extractvalue %dx.types.CBufRet.f32 %2071, 3
  %2079 = fadd fast float %2077, %2078
  %2080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2075, float %2079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 1
  %2083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2084 = extractvalue %dx.types.CBufRet.f32 %2083, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2083, 0
  %2086 = fsub fast float %2084, %2085
  %2087 = fmul fast float %2086, %2081
  %2088 = fadd fast float %2087, %2085
  %2089 = extractvalue %dx.types.CBufRet.f32 %2083, 3
  %2090 = extractvalue %dx.types.CBufRet.f32 %2083, 2
  %2091 = fsub fast float %2089, %2090
  %2092 = fmul fast float %2091, %2082
  %2093 = fadd fast float %2092, %2090
  %2094 = fsub fast float %2013, %2088
  %2095 = fsub fast float %2093, %2088
  %2096 = fdiv fast float %2094, %2095
  %2097 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2007, 1
  %2099 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2101 = fmul fast float %2099, %2026
  %2102 = fmul fast float %2100, %2027
  %2103 = fmul fast float %2101, 1.250000e-01
  %2104 = fmul fast float %2102, 1.250000e-01
  %2105 = call float @dx.op.unary.f32(i32 27, float %2103)  ; Round_ni(value)
  %2106 = call float @dx.op.unary.f32(i32 27, float %2104)  ; Round_ni(value)
  %2107 = fmul fast float %2105, 8.000000e+00
  %2108 = fmul fast float %2106, 8.000000e+00
  %2109 = fsub fast float %2101, %2107
  %2110 = fsub fast float %2102, %2108
  %2111 = fadd fast float %2109, 5.000000e-01
  %2112 = fadd fast float %2110, 5.000000e-01
  %2113 = and i32 %2068, 255
  %2114 = lshr i32 %2067, 24
  %2115 = mul nuw nsw i32 %2113, 9
  %2116 = uitofp i32 %2115 to float
  %2117 = mul nuw nsw i32 %2114, 9
  %2118 = uitofp i32 %2117 to float
  %2119 = fadd fast float %2111, %2116
  %2120 = fadd fast float %2112, %2118
  %2121 = fdiv fast float %2119, %2008
  %2122 = fdiv fast float %2120, %2098
  %2123 = fmul fast float %2097, 4.375000e-01
  %2124 = fadd fast float %2123, 3.125000e-02
  %2125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2121, float %2122, float %2124, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2126 = extractvalue %dx.types.ResRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.ResRet.f32 %2125, 1
  %2128 = extractvalue %dx.types.ResRet.f32 %2125, 2
  %2129 = fadd fast float %2123, 5.312500e-01
  %2130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2121, float %2122, float %2129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = fmul fast float %2131, 2.000000e+00
  %2135 = fmul fast float %2132, 2.000000e+00
  %2136 = fmul fast float %2133, 2.000000e+00
  %2137 = fadd fast float %2134, -1.000000e+00
  %2138 = fadd fast float %2135, -1.000000e+00
  %2139 = fadd fast float %2136, -1.000000e+00
  %2140 = fmul fast float %2137, %2137
  %2141 = fmul fast float %2138, %2138
  %2142 = fadd fast float %2140, %2141
  %2143 = fmul fast float %2139, %2139
  %2144 = fadd fast float %2142, %2143
  %2145 = call float @dx.op.unary.f32(i32 24, float %2144)  ; Sqrt(value)
  %2146 = fcmp fast ogt float %2145, 0.000000e+00
  br i1 %2146, label %2147, label %2151

; <label>:2147                                    ; preds = %2070
  %2148 = fdiv fast float %2137, %2145
  %2149 = fdiv fast float %2138, %2145
  %2150 = fdiv fast float %2139, %2145
  br label %2151

; <label>:2151                                    ; preds = %2147, %2070
  %2152 = phi float [ %2148, %2147 ], [ 0.000000e+00, %2070 ]
  %2153 = phi float [ %2149, %2147 ], [ 0.000000e+00, %2070 ]
  %2154 = phi float [ %2150, %2147 ], [ 0.000000e+00, %2070 ]
  %2155 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2153, float %2154, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %2156 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2155)  ; FMax(a,b)
  %2157 = fmul fast float %2156, 0x400C5BF8A0000000
  %2158 = fmul fast float %2126, %2046
  %2159 = fmul fast float %2158, %2157
  %2160 = fmul fast float %2127, %2046
  %2161 = fmul fast float %2160, %2157
  %2162 = fmul fast float %2128, %2046
  %2163 = fmul fast float %2162, %2157
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 3
  %2166 = fmul fast float %2159, %2165
  %2167 = fmul fast float %2161, %2165
  %2168 = fmul fast float %2163, %2165
  %2169 = fcmp fast ogt float %2013, %2093
  br i1 %2169, label %2170, label %2179

; <label>:2170                                    ; preds = %2151
  %2171 = fmul fast float %2095, 0x3FC24924A0000000
  %2172 = fsub fast float %2013, %2093
  %2173 = fdiv fast float %2172, %2171
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2166
  %2177 = fmul fast float %2175, %2167
  %2178 = fmul fast float %2175, %2168
  br label %2179

; <label>:2179                                    ; preds = %2170, %2151, %2056, %2011
  %2180 = phi float [ %2178, %2170 ], [ %2168, %2151 ], [ 0.000000e+00, %2056 ], [ 0.000000e+00, %2011 ]
  %2181 = phi float [ %2177, %2170 ], [ %2167, %2151 ], [ 0.000000e+00, %2056 ], [ 0.000000e+00, %2011 ]
  %2182 = phi float [ %2176, %2170 ], [ %2166, %2151 ], [ 0.000000e+00, %2056 ], [ 0.000000e+00, %2011 ]
  %2183 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2182)  ; FMax(a,b)
  %2184 = fmul fast float %2183, 0x3FD20DD760000000
  %2185 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1849, float %1850, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = fmul fast float %2185, 0x3FDF454380000000
  %2187 = fmul fast float %2185, %2185
  %2188 = fmul fast float %2187, 0x3FEE471020000000
  %2189 = fadd fast float %2188, 0xBFD42F6020000000
  %2190 = call float @dx.op.dot3.f32(i32 55, float %2183, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2186, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2181)  ; FMax(a,b)
  %2192 = fmul fast float %2191, 0x3FD20DD760000000
  %2193 = call float @dx.op.dot3.f32(i32 55, float %2191, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2186, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %2194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2180)  ; FMax(a,b)
  %2195 = fmul fast float %2194, 0x3FD20DD760000000
  %2196 = call float @dx.op.dot3.f32(i32 55, float %2194, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2186, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %2197 = call float @dx.op.binary.f32(i32 35, float %2184, float 0.000000e+00)  ; FMax(a,b)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2192, float 0.000000e+00)  ; FMax(a,b)
  %2199 = call float @dx.op.binary.f32(i32 35, float %2195, float 0.000000e+00)  ; FMax(a,b)
  %2200 = call float @dx.op.binary.f32(i32 35, float %2190, float 0.000000e+00)  ; FMax(a,b)
  %2201 = call float @dx.op.binary.f32(i32 35, float %2193, float 0.000000e+00)  ; FMax(a,b)
  %2202 = call float @dx.op.binary.f32(i32 35, float %2196, float 0.000000e+00)  ; FMax(a,b)
  %2203 = fmul fast float %2197, %1900
  %2204 = fmul fast float %2198, %1900
  %2205 = fmul fast float %2199, %1900
  %2206 = fadd fast float %2203, %2004
  %2207 = fadd fast float %2204, %2005
  %2208 = fadd fast float %2205, %2006
  %2209 = fmul fast float %2200, %1900
  %2210 = fmul fast float %2201, %1900
  %2211 = fmul fast float %2202, %1900
  %2212 = fadd fast float %2209, %2001
  %2213 = fadd fast float %2210, %2002
  %2214 = fadd fast float %2211, %2003
  br label %2215

; <label>:2215                                    ; preds = %2179, %2000
  %2216 = phi float [ %2212, %2179 ], [ %2001, %2000 ]
  %2217 = phi float [ %2213, %2179 ], [ %2002, %2000 ]
  %2218 = phi float [ %2214, %2179 ], [ %2003, %2000 ]
  %2219 = phi float [ %2206, %2179 ], [ %2004, %2000 ]
  %2220 = phi float [ %2207, %2179 ], [ %2005, %2000 ]
  %2221 = phi float [ %2208, %2179 ], [ %2006, %2000 ]
  %2222 = fcmp fast olt float %1900, 1.000000e+00
  br i1 %2222, label %2223, label %3041, !dx.controlflow.hints !76

; <label>:2223                                    ; preds = %2215
  %2224 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %2225 = fadd fast float %2224, %107
  %2226 = fmul fast float %1836, 3.200000e+01
  %2227 = fmul fast float %1837, 3.200000e+01
  %2228 = fadd fast float %1859, %2226
  %2229 = fadd fast float %1860, %2227
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2233 = fsub fast float %2228, %2231
  %2234 = fsub fast float %2229, %2232
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = extractvalue %dx.types.CBufRet.f32 %2235, 1
  %2238 = fmul fast float %2233, %2236
  %2239 = fmul fast float %2234, %2237
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 0
  %2242 = fmul fast float %2238, %2241
  %2243 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2244 = fadd fast float %2242, %2243
  %2245 = extractvalue %dx.types.CBufRet.f32 %2240, 2
  %2246 = fmul fast float %2245, %2239
  %2247 = extractvalue %dx.types.CBufRet.f32 %2240, 3
  %2248 = fadd fast float %2246, %2247
  %2249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2244, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2250 = extractvalue %dx.types.ResRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.ResRet.f32 %2249, 1
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2254 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2255 = fsub fast float %2253, %2254
  %2256 = fmul fast float %2255, %2250
  %2257 = fadd fast float %2256, %2254
  %2258 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2259 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2260 = fsub fast float %2258, %2259
  %2261 = fmul fast float %2260, %2251
  %2262 = fadd fast float %2261, %2259
  %2263 = fsub fast float %2225, %2257
  %2264 = fsub fast float %2262, %2257
  %2265 = fdiv fast float %2263, %2264
  %2266 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = fmul fast float %2268, %2266
  %2270 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2271 = fadd fast float %2269, %2270
  %2272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2244, float %2248, float %2271, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.ResRet.f32 %2272, 2
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2279 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2280 = fmul fast float %2277, %2273
  %2281 = fmul fast float %2278, %2274
  %2282 = fmul fast float %2279, %2275
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2286 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2287 = fadd fast float %2280, %2284
  %2288 = fadd fast float %2281, %2285
  %2289 = fadd fast float %2282, %2286
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2292 = fmul fast float %2291, %2238
  %2293 = extractvalue %dx.types.CBufRet.f32 %2290, 1
  %2294 = fadd fast float %2292, %2293
  %2295 = extractvalue %dx.types.CBufRet.f32 %2290, 2
  %2296 = fmul fast float %2295, %2239
  %2297 = extractvalue %dx.types.CBufRet.f32 %2290, 3
  %2298 = fadd fast float %2296, %2297
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2303 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.CBufRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.CBufRet.f32 %2304, 3
  %2309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2294, float %2298, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.ResRet.f32 %2309, 3
  %2314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2294, float %2298, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2315 = extractvalue %dx.types.ResRet.f32 %2314, 0
  %2316 = extractvalue %dx.types.ResRet.f32 %2314, 1
  %2317 = extractvalue %dx.types.ResRet.f32 %2314, 2
  %2318 = extractvalue %dx.types.ResRet.f32 %2314, 3
  %2319 = fmul fast float %2310, %2287
  %2320 = fmul fast float %2315, %2287
  %2321 = fmul fast float %2317, %2287
  %2322 = fmul fast float %2313, %2287
  %2323 = fadd fast float %2319, %2300
  %2324 = fadd fast float %2320, %2301
  %2325 = fadd fast float %2321, %2302
  %2326 = fadd fast float %2322, %2303
  %2327 = fmul fast float %2311, %2287
  %2328 = fmul fast float %2316, %2287
  %2329 = fadd fast float %2327, %2305
  %2330 = fadd fast float %2328, %2306
  %2331 = fmul fast float %2312, %2287
  %2332 = fmul fast float %2318, %2287
  %2333 = fadd fast float %2331, %2307
  %2334 = fadd fast float %2332, %2308
  %2335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2294, float %2298, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.ResRet.f32 %2335, 3
  %2340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2294, float %2298, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.ResRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.ResRet.f32 %2340, 2
  %2344 = extractvalue %dx.types.ResRet.f32 %2340, 3
  %2345 = fmul fast float %2336, %2288
  %2346 = fmul fast float %2341, %2288
  %2347 = fmul fast float %2343, %2288
  %2348 = fmul fast float %2339, %2288
  %2349 = fadd fast float %2323, %2345
  %2350 = fadd fast float %2324, %2346
  %2351 = fadd fast float %2325, %2347
  %2352 = fadd fast float %2326, %2348
  %2353 = fmul fast float %2337, %2288
  %2354 = fmul fast float %2342, %2288
  %2355 = fadd fast float %2329, %2353
  %2356 = fadd fast float %2330, %2354
  %2357 = fmul fast float %2338, %2288
  %2358 = fmul fast float %2344, %2288
  %2359 = fadd fast float %2333, %2357
  %2360 = fadd fast float %2334, %2358
  %2361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2294, float %2298, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.ResRet.f32 %2361, 2
  %2365 = extractvalue %dx.types.ResRet.f32 %2361, 3
  %2366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2294, float %2298, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.ResRet.f32 %2366, 3
  %2371 = fmul fast float %2362, %2289
  %2372 = fmul fast float %2367, %2289
  %2373 = fmul fast float %2369, %2289
  %2374 = fmul fast float %2365, %2289
  %2375 = fadd fast float %2349, %2371
  %2376 = fadd fast float %2350, %2372
  %2377 = fadd fast float %2351, %2373
  %2378 = fadd fast float %2352, %2374
  %2379 = fmul fast float %2363, %2289
  %2380 = fmul fast float %2368, %2289
  %2381 = fadd fast float %2355, %2379
  %2382 = fadd fast float %2356, %2380
  %2383 = fmul fast float %2364, %2289
  %2384 = fmul fast float %2370, %2289
  %2385 = fadd fast float %2359, %2383
  %2386 = fadd fast float %2360, %2384
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = fsub fast float %1859, %2388
  %2390 = fsub fast float %2231, %1859
  %2391 = call float @dx.op.binary.f32(i32 35, float %2390, float %2389)  ; FMax(a,b)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2387, 1
  %2393 = fsub fast float %1860, %2392
  %2394 = fsub fast float %2232, %1860
  %2395 = call float @dx.op.binary.f32(i32 35, float %2394, float %2393)  ; FMax(a,b)
  %2396 = call float @dx.op.binary.f32(i32 35, float %2391, float %2395)  ; FMax(a,b)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2235, 3
  %2398 = fmul fast float %2397, %2396
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.CBufRet.f32 %2400, 1
  %2403 = extractvalue %dx.types.CBufRet.f32 %2400, 2
  %2404 = extractvalue %dx.types.CBufRet.f32 %2400, 3
  %2405 = fsub fast float %2401, %2375
  %2406 = fsub fast float %2402, %2376
  %2407 = fsub fast float %2403, %2377
  %2408 = fsub fast float %2404, %2378
  %2409 = fmul fast float %2405, %2399
  %2410 = fmul fast float %2406, %2399
  %2411 = fmul fast float %2407, %2399
  %2412 = fmul fast float %2408, %2399
  %2413 = fadd fast float %2409, %2375
  %2414 = fadd fast float %2410, %2376
  %2415 = fadd fast float %2411, %2377
  %2416 = fadd fast float %2412, %2378
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2420 = fsub fast float %2418, %2381
  %2421 = fsub fast float %2419, %2382
  %2422 = fmul fast float %2420, %2399
  %2423 = fmul fast float %2421, %2399
  %2424 = fadd fast float %2422, %2381
  %2425 = fadd fast float %2423, %2382
  %2426 = extractvalue %dx.types.CBufRet.f32 %2417, 2
  %2427 = extractvalue %dx.types.CBufRet.f32 %2417, 3
  %2428 = fsub fast float %2426, %2385
  %2429 = fsub fast float %2427, %2386
  %2430 = fmul fast float %2428, %2399
  %2431 = fmul fast float %2429, %2399
  %2432 = fadd fast float %2430, %2385
  %2433 = fadd fast float %2431, %2386
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = fmul fast float %2435, %2413
  %2437 = fmul fast float %2435, %2414
  %2438 = fmul fast float %2435, %2415
  %2439 = fmul fast float %2435, %2416
  %2440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.f32 %2440, 0
  %2442 = fmul fast float %2441, %2424
  %2443 = fmul fast float %2441, %2425
  %2444 = fadd fast float %2442, %2436
  %2445 = fadd fast float %2443, %2438
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = fmul fast float %2447, %2432
  %2449 = fmul fast float %2447, %2433
  %2450 = fadd fast float %2444, %2448
  %2451 = fadd fast float %2445, %2449
  %2452 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2453 = fmul fast float %2452, %2413
  %2454 = fmul fast float %2452, %2414
  %2455 = fmul fast float %2452, %2415
  %2456 = fmul fast float %2452, %2416
  %2457 = extractvalue %dx.types.CBufRet.f32 %2440, 1
  %2458 = fmul fast float %2457, %2424
  %2459 = fmul fast float %2457, %2425
  %2460 = fadd fast float %2458, %2453
  %2461 = fadd fast float %2459, %2455
  %2462 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2463 = fmul fast float %2462, %2432
  %2464 = fmul fast float %2462, %2433
  %2465 = fadd fast float %2460, %2463
  %2466 = fadd fast float %2461, %2464
  %2467 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2468 = fmul fast float %2467, %2413
  %2469 = fmul fast float %2467, %2414
  %2470 = fmul fast float %2467, %2415
  %2471 = fmul fast float %2467, %2416
  %2472 = extractvalue %dx.types.CBufRet.f32 %2440, 2
  %2473 = fmul fast float %2472, %2424
  %2474 = fmul fast float %2472, %2425
  %2475 = fadd fast float %2473, %2468
  %2476 = fadd fast float %2474, %2470
  %2477 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2478 = fmul fast float %2477, %2432
  %2479 = fmul fast float %2477, %2433
  %2480 = fadd fast float %2475, %2478
  %2481 = fadd fast float %2476, %2479
  %2482 = fmul fast float %2469, %2469
  %2483 = fmul fast float %2481, %2481
  %2484 = fmul fast float %2471, %2471
  %2485 = fadd fast float %2484, %2482
  %2486 = fadd fast float %2485, %2483
  %2487 = call float @dx.op.unary.f32(i32 24, float %2486)  ; Sqrt(value)
  %2488 = fcmp fast ugt float %2487, 0.000000e+00
  br i1 %2488, label %2489, label %2504

; <label>:2489                                    ; preds = %2223
  %2490 = fsub fast float -0.000000e+00, %2471
  %2491 = fdiv fast float %2490, %2487
  %2492 = fsub fast float -0.000000e+00, %2469
  %2493 = fdiv fast float %2492, %2487
  %2494 = fdiv fast float %2481, %2487
  %2495 = fmul fast float %2480, 0x3FE279A760000000
  %2496 = fmul fast float %2493, %2469
  %2497 = fmul fast float %2494, %2481
  %2498 = fmul fast float %2491, %2471
  %2499 = fadd fast float %2496, %2498
  %2500 = fsub fast float %2499, %2497
  %2501 = call float @dx.op.unary.f32(i32 6, float %2500)  ; FAbs(value)
  %2502 = fadd fast float %2501, 0x3DDB7CDFE0000000
  %2503 = fdiv fast float %2495, %2502
  br label %2504

; <label>:2504                                    ; preds = %2489, %2223
  %2505 = phi float [ %2503, %2489 ], [ 1.000000e+00, %2223 ]
  %2506 = fmul fast float %2454, %2454
  %2507 = fmul fast float %2466, %2466
  %2508 = fmul fast float %2456, %2456
  %2509 = fadd fast float %2508, %2506
  %2510 = fadd fast float %2509, %2507
  %2511 = call float @dx.op.unary.f32(i32 24, float %2510)  ; Sqrt(value)
  %2512 = fcmp fast ugt float %2511, 0.000000e+00
  br i1 %2512, label %2513, label %2528

; <label>:2513                                    ; preds = %2504
  %2514 = fsub fast float -0.000000e+00, %2456
  %2515 = fdiv fast float %2514, %2511
  %2516 = fsub fast float -0.000000e+00, %2454
  %2517 = fdiv fast float %2516, %2511
  %2518 = fdiv fast float %2466, %2511
  %2519 = fmul fast float %2465, 0x3FE279A760000000
  %2520 = fmul fast float %2517, %2454
  %2521 = fmul fast float %2518, %2466
  %2522 = fmul fast float %2515, %2456
  %2523 = fadd fast float %2520, %2522
  %2524 = fsub fast float %2523, %2521
  %2525 = call float @dx.op.unary.f32(i32 6, float %2524)  ; FAbs(value)
  %2526 = fadd fast float %2525, 0x3DDB7CDFE0000000
  %2527 = fdiv fast float %2519, %2526
  br label %2528

; <label>:2528                                    ; preds = %2513, %2504
  %2529 = phi float [ %2527, %2513 ], [ 1.000000e+00, %2504 ]
  %2530 = call float @dx.op.binary.f32(i32 36, float %2529, float %2505)  ; FMin(a,b)
  %2531 = fmul fast float %2437, %2437
  %2532 = fmul fast float %2451, %2451
  %2533 = fmul fast float %2439, %2439
  %2534 = fadd fast float %2533, %2531
  %2535 = fadd fast float %2534, %2532
  %2536 = call float @dx.op.unary.f32(i32 24, float %2535)  ; Sqrt(value)
  %2537 = fcmp fast ugt float %2536, 0.000000e+00
  br i1 %2537, label %2538, label %2553

; <label>:2538                                    ; preds = %2528
  %2539 = fsub fast float -0.000000e+00, %2439
  %2540 = fdiv fast float %2539, %2536
  %2541 = fsub fast float -0.000000e+00, %2437
  %2542 = fdiv fast float %2541, %2536
  %2543 = fdiv fast float %2451, %2536
  %2544 = fmul fast float %2450, 0x3FE279A760000000
  %2545 = fmul fast float %2542, %2437
  %2546 = fmul fast float %2543, %2451
  %2547 = fmul fast float %2540, %2439
  %2548 = fadd fast float %2545, %2547
  %2549 = fsub fast float %2548, %2546
  %2550 = call float @dx.op.unary.f32(i32 6, float %2549)  ; FAbs(value)
  %2551 = fadd fast float %2550, 0x3DDB7CDFE0000000
  %2552 = fdiv fast float %2544, %2551
  br label %2553

; <label>:2553                                    ; preds = %2538, %2528
  %2554 = phi float [ %2552, %2538 ], [ 1.000000e+00, %2528 ]
  %2555 = call float @dx.op.binary.f32(i32 36, float %2554, float %2530)  ; FMin(a,b)
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  %2557 = fcmp fast olt float %2556, 1.000000e+00
  br i1 %2557, label %2558, label %2568

; <label>:2558                                    ; preds = %2553
  %2559 = fmul fast float %2556, %2437
  %2560 = fmul fast float %2556, %2451
  %2561 = fmul fast float %2556, %2439
  %2562 = fmul fast float %2556, %2454
  %2563 = fmul fast float %2556, %2466
  %2564 = fmul fast float %2556, %2456
  %2565 = fmul fast float %2556, %2469
  %2566 = fmul fast float %2556, %2481
  %2567 = fmul fast float %2556, %2471
  br label %2568

; <label>:2568                                    ; preds = %2558, %2553
  %2569 = phi float [ %2565, %2558 ], [ %2469, %2553 ]
  %2570 = phi float [ %2566, %2558 ], [ %2481, %2553 ]
  %2571 = phi float [ %2567, %2558 ], [ %2471, %2553 ]
  %2572 = phi float [ %2562, %2558 ], [ %2454, %2553 ]
  %2573 = phi float [ %2563, %2558 ], [ %2466, %2553 ]
  %2574 = phi float [ %2564, %2558 ], [ %2456, %2553 ]
  %2575 = phi float [ %2559, %2558 ], [ %2437, %2553 ]
  %2576 = phi float [ %2560, %2558 ], [ %2451, %2553 ]
  %2577 = phi float [ %2561, %2558 ], [ %2439, %2553 ]
  %2578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2450)  ; FMax(a,b)
  %2579 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2465)  ; FMax(a,b)
  %2580 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2480)  ; FMax(a,b)
  %2581 = fcmp fast oge float %2238, 0.000000e+00
  %2582 = and i1 %2581, %2009
  %2583 = fcmp fast ole float %2238, 1.000000e+00
  %2584 = and i1 %2583, %2582
  %2585 = fcmp fast oge float %2239, 0.000000e+00
  %2586 = and i1 %2585, %2584
  %2587 = fcmp fast ole float %2239, 1.000000e+00
  %2588 = and i1 %2587, %2586
  br i1 %2588, label %2589, label %2734, !dx.controlflow.hints !77

; <label>:2589                                    ; preds = %2568
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 2
  %2592 = extractvalue %dx.types.CBufRet.f32 %2590, 3
  %2593 = fmul fast float %2591, %2238
  %2594 = fmul fast float %2592, %2239
  %2595 = call float @dx.op.unary.f32(i32 27, float %2593)  ; Round_ni(value)
  %2596 = call float @dx.op.unary.f32(i32 27, float %2594)  ; Round_ni(value)
  %2597 = fptosi float %2595 to i32
  %2598 = fptosi float %2596 to i32
  %2599 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2597, i32 %2598, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, 65535
  %2602 = lshr i32 %2600, 16
  %2603 = icmp eq i32 %2601, 65535
  br i1 %2603, label %2640, label %2604

; <label>:2604                                    ; preds = %2589
  %2605 = extractvalue %dx.types.CBufRet.f32 %2007, 1
  %2606 = extractvalue %dx.types.CBufRet.f32 %2590, 0
  %2607 = extractvalue %dx.types.CBufRet.f32 %2590, 1
  %2608 = fmul fast float %2606, %2238
  %2609 = fmul fast float %2607, %2239
  %2610 = fmul fast float %2608, 1.250000e-01
  %2611 = fmul fast float %2609, 1.250000e-01
  %2612 = call float @dx.op.unary.f32(i32 27, float %2610)  ; Round_ni(value)
  %2613 = call float @dx.op.unary.f32(i32 27, float %2611)  ; Round_ni(value)
  %2614 = fmul fast float %2612, 8.000000e+00
  %2615 = fmul fast float %2613, 8.000000e+00
  %2616 = and i32 %2600, 255
  %2617 = lshr i32 %2600, 8
  %2618 = and i32 %2617, 255
  %2619 = mul nuw nsw i32 %2616, 9
  %2620 = uitofp i32 %2619 to float
  %2621 = mul nuw nsw i32 %2618, 9
  %2622 = uitofp i32 %2621 to float
  %2623 = fadd fast float %2620, 5.000000e-01
  %2624 = fadd fast float %2623, %2608
  %2625 = fsub fast float %2624, %2614
  %2626 = fadd fast float %2622, 5.000000e-01
  %2627 = fadd fast float %2626, %2609
  %2628 = fsub fast float %2627, %2615
  %2629 = fdiv fast float %2625, %2008
  %2630 = fdiv fast float %2628, %2605
  %2631 = fmul fast float %2266, 4.375000e-01
  %2632 = fadd fast float %2631, 3.125000e-02
  %2633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2629, float %2630, float %2632, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.ResRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.ResRet.f32 %2633, 2
  %2637 = fadd fast float %2634, %2578
  %2638 = fadd fast float %2635, %2579
  %2639 = fadd fast float %2636, %2580
  br label %2640

; <label>:2640                                    ; preds = %2604, %2589
  %2641 = phi float [ %2639, %2604 ], [ %2580, %2589 ]
  %2642 = phi float [ %2638, %2604 ], [ %2579, %2589 ]
  %2643 = phi float [ %2637, %2604 ], [ %2578, %2589 ]
  %2644 = icmp eq i32 %2602, 65535
  br i1 %2644, label %2734, label %2645

; <label>:2645                                    ; preds = %2640
  %2646 = extractvalue %dx.types.CBufRet.f32 %2007, 1
  %2647 = extractvalue %dx.types.CBufRet.f32 %2590, 0
  %2648 = extractvalue %dx.types.CBufRet.f32 %2590, 1
  %2649 = fmul fast float %2647, %2238
  %2650 = fmul fast float %2648, %2239
  %2651 = fmul fast float %2649, 1.250000e-01
  %2652 = fmul fast float %2650, 1.250000e-01
  %2653 = call float @dx.op.unary.f32(i32 27, float %2651)  ; Round_ni(value)
  %2654 = call float @dx.op.unary.f32(i32 27, float %2652)  ; Round_ni(value)
  %2655 = fmul fast float %2653, 8.000000e+00
  %2656 = fmul fast float %2654, 8.000000e+00
  %2657 = fsub fast float %2649, %2655
  %2658 = fsub fast float %2650, %2656
  %2659 = fadd fast float %2657, 5.000000e-01
  %2660 = fadd fast float %2658, 5.000000e-01
  %2661 = and i32 %2602, 255
  %2662 = lshr i32 %2600, 24
  %2663 = mul nuw nsw i32 %2661, 9
  %2664 = uitofp i32 %2663 to float
  %2665 = mul nuw nsw i32 %2662, 9
  %2666 = uitofp i32 %2665 to float
  %2667 = fadd fast float %2659, %2664
  %2668 = fadd fast float %2660, %2666
  %2669 = fdiv fast float %2667, %2008
  %2670 = fdiv fast float %2668, %2646
  %2671 = fmul fast float %2266, 4.375000e-01
  %2672 = fadd fast float %2671, 3.125000e-02
  %2673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2669, float %2670, float %2672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2674 = extractvalue %dx.types.ResRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.ResRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.ResRet.f32 %2673, 2
  %2677 = fadd fast float %2671, 5.312500e-01
  %2678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2669, float %2670, float %2677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.ResRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.ResRet.f32 %2678, 2
  %2682 = fmul fast float %2679, 2.000000e+00
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fmul fast float %2681, 2.000000e+00
  %2685 = fadd fast float %2682, -1.000000e+00
  %2686 = fadd fast float %2683, -1.000000e+00
  %2687 = fadd fast float %2684, -1.000000e+00
  %2688 = fmul fast float %2685, %2685
  %2689 = fmul fast float %2686, %2686
  %2690 = fadd fast float %2688, %2689
  %2691 = fmul fast float %2687, %2687
  %2692 = fadd fast float %2690, %2691
  %2693 = call float @dx.op.unary.f32(i32 24, float %2692)  ; Sqrt(value)
  %2694 = fcmp fast ogt float %2693, 0.000000e+00
  br i1 %2694, label %2695, label %2699

; <label>:2695                                    ; preds = %2645
  %2696 = fdiv fast float %2685, %2693
  %2697 = fdiv fast float %2686, %2693
  %2698 = fdiv fast float %2687, %2693
  br label %2699

; <label>:2699                                    ; preds = %2695, %2645
  %2700 = phi float [ %2696, %2695 ], [ 0.000000e+00, %2645 ]
  %2701 = phi float [ %2697, %2695 ], [ 0.000000e+00, %2645 ]
  %2702 = phi float [ %2698, %2695 ], [ 0.000000e+00, %2645 ]
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2706 = fsub fast float %1859, %2704
  %2707 = fsub fast float %1860, %2705
  %2708 = fmul fast float %2706, %2706
  %2709 = fmul fast float %2707, %2707
  %2710 = fadd fast float %2708, %2709
  %2711 = call float @dx.op.unary.f32(i32 24, float %2710)  ; Sqrt(value)
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2715 = fsub fast float %2711, %2713
  %2716 = fdiv fast float %2715, %2714
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = fmul fast float %2717, 2.000000e+00
  %2719 = fsub fast float 3.000000e+00, %2718
  %2720 = fmul fast float %2717, %2717
  %2721 = fmul fast float %2720, %2719
  %2722 = call float @dx.op.dot3.f32(i32 55, float %2700, float %2701, float %2702, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %2723 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2722)  ; FMax(a,b)
  %2724 = fmul fast float %2723, 0x400C5BF8A0000000
  %2725 = fmul fast float %2721, %2674
  %2726 = fmul fast float %2725, %2724
  %2727 = fadd fast float %2726, %2643
  %2728 = fmul fast float %2721, %2675
  %2729 = fmul fast float %2728, %2724
  %2730 = fadd fast float %2729, %2642
  %2731 = fmul fast float %2721, %2676
  %2732 = fmul fast float %2731, %2724
  %2733 = fadd fast float %2732, %2641
  br label %2734

; <label>:2734                                    ; preds = %2699, %2640, %2568
  %2735 = phi float [ %2733, %2699 ], [ %2641, %2640 ], [ %2580, %2568 ]
  %2736 = phi float [ %2730, %2699 ], [ %2642, %2640 ], [ %2579, %2568 ]
  %2737 = phi float [ %2727, %2699 ], [ %2643, %2640 ], [ %2578, %2568 ]
  %2738 = fcmp fast ogt float %2225, %2262
  %2739 = and i1 %2581, %2738
  %2740 = and i1 %2583, %2739
  %2741 = and i1 %2585, %2740
  %2742 = and i1 %2587, %2741
  br i1 %2742, label %2743, label %2800, !dx.controlflow.hints !78

; <label>:2743                                    ; preds = %2734
  %2744 = fmul fast float %2264, 0x3FC24924A0000000
  %2745 = fsub fast float %2225, %2262
  %2746 = fdiv fast float %2745, %2744
  %2747 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2754 = fsub fast float %2749, %2737
  %2755 = fsub fast float %2751, %2575
  %2756 = fsub fast float %2752, %2576
  %2757 = fsub fast float %2753, %2577
  %2758 = fmul fast float %2754, %2747
  %2759 = fmul fast float %2755, %2747
  %2760 = fmul fast float %2756, %2747
  %2761 = fmul fast float %2757, %2747
  %2762 = fadd fast float %2758, %2737
  %2763 = fadd fast float %2759, %2575
  %2764 = fadd fast float %2760, %2576
  %2765 = fadd fast float %2761, %2577
  %2766 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.CBufRet.f32 %2767, 2
  %2771 = fsub fast float %2766, %2736
  %2772 = fsub fast float %2768, %2572
  %2773 = fsub fast float %2769, %2573
  %2774 = fsub fast float %2770, %2574
  %2775 = fmul fast float %2771, %2747
  %2776 = fmul fast float %2772, %2747
  %2777 = fmul fast float %2773, %2747
  %2778 = fmul fast float %2774, %2747
  %2779 = fadd fast float %2775, %2736
  %2780 = fadd fast float %2776, %2572
  %2781 = fadd fast float %2777, %2573
  %2782 = fadd fast float %2778, %2574
  %2783 = extractvalue %dx.types.CBufRet.f32 %2748, 2
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.CBufRet.f32 %2784, 2
  %2788 = fsub fast float %2783, %2735
  %2789 = fsub fast float %2785, %2569
  %2790 = fsub fast float %2786, %2570
  %2791 = fsub fast float %2787, %2571
  %2792 = fmul fast float %2788, %2747
  %2793 = fmul fast float %2789, %2747
  %2794 = fmul fast float %2790, %2747
  %2795 = fmul fast float %2791, %2747
  %2796 = fadd fast float %2792, %2735
  %2797 = fadd fast float %2793, %2569
  %2798 = fadd fast float %2794, %2570
  %2799 = fadd fast float %2795, %2571
  br label %2800

; <label>:2800                                    ; preds = %2743, %2734
  %2801 = phi float [ %2796, %2743 ], [ %2735, %2734 ]
  %2802 = phi float [ %2797, %2743 ], [ %2569, %2734 ]
  %2803 = phi float [ %2798, %2743 ], [ %2570, %2734 ]
  %2804 = phi float [ %2799, %2743 ], [ %2571, %2734 ]
  %2805 = phi float [ %2779, %2743 ], [ %2736, %2734 ]
  %2806 = phi float [ %2780, %2743 ], [ %2572, %2734 ]
  %2807 = phi float [ %2781, %2743 ], [ %2573, %2734 ]
  %2808 = phi float [ %2782, %2743 ], [ %2574, %2734 ]
  %2809 = phi float [ %2762, %2743 ], [ %2737, %2734 ]
  %2810 = phi float [ %2763, %2743 ], [ %2575, %2734 ]
  %2811 = phi float [ %2764, %2743 ], [ %2576, %2734 ]
  %2812 = phi float [ %2765, %2743 ], [ %2577, %2734 ]
  %2813 = extractvalue %dx.types.CBufRet.f32 %2387, 3
  %2814 = fmul fast float %2813, %2809
  %2815 = fmul fast float %2813, %2805
  %2816 = fmul fast float %2813, %2801
  %2817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2818 = extractvalue %dx.types.CBufRet.f32 %2817, 3
  %2819 = fmul fast float %2814, %2818
  %2820 = fmul fast float %2815, %2818
  %2821 = fmul fast float %2816, %2818
  %2822 = fmul fast float %2810, 1.500000e+00
  %2823 = fmul fast float %2822, %2813
  %2824 = fmul fast float %2823, %2818
  %2825 = fmul fast float %2811, 1.500000e+00
  %2826 = fmul fast float %2825, %2813
  %2827 = fmul fast float %2826, %2818
  %2828 = fmul fast float %2812, 1.500000e+00
  %2829 = fmul fast float %2828, %2813
  %2830 = fmul fast float %2829, %2818
  %2831 = fmul fast float %2806, 1.500000e+00
  %2832 = fmul fast float %2831, %2813
  %2833 = fmul fast float %2832, %2818
  %2834 = fmul fast float %2807, 1.500000e+00
  %2835 = fmul fast float %2834, %2813
  %2836 = fmul fast float %2835, %2818
  %2837 = fmul fast float %2808, 1.500000e+00
  %2838 = fmul fast float %2837, %2813
  %2839 = fmul fast float %2838, %2818
  %2840 = fmul fast float %2802, 1.500000e+00
  %2841 = fmul fast float %2840, %2813
  %2842 = fmul fast float %2841, %2818
  %2843 = fmul fast float %2803, 1.500000e+00
  %2844 = fmul fast float %2843, %2813
  %2845 = fmul fast float %2844, %2818
  %2846 = fmul fast float %2804, 1.500000e+00
  %2847 = fmul fast float %2846, %2813
  %2848 = fmul fast float %2847, %2818
  %2849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2819)  ; FMax(a,b)
  %2850 = call float @dx.op.dot3.f32(i32 55, float %2824, float %2827, float %2830, float %2824, float %2827, float %2830)  ; Dot3(ax,ay,az,bx,by,bz)
  %2851 = fcmp fast oeq float %2850, 0.000000e+00
  %2852 = fcmp fast oeq float %2849, 0.000000e+00
  %2853 = or i1 %2852, %2851
  br i1 %2853, label %2883, label %2854

; <label>:2854                                    ; preds = %2800
  %2855 = fsub fast float -0.000000e+00, %2830
  %2856 = fsub fast float -0.000000e+00, %2824
  %2857 = call float @dx.op.unary.f32(i32 24, float %2850)  ; Sqrt(value)
  %2858 = fdiv fast float %2857, %2849
  %2859 = fcmp fast ogt float %2858, 0x3FFB6F8900000000
  %2860 = select i1 %2859, float 0x3FFB6F8900000000, float %2858
  %2861 = fmul fast float %2860, 0x3FE8A23460000000
  %2862 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2863 = call float @dx.op.binary.f32(i32 35, float %2860, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2864 = fmul fast float %2862, %2849
  %2865 = fmul fast float %2863, 0x3FF279A740000000
  %2866 = fadd fast float %2865, -1.000000e+00
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2856, float %2827, float %2855, float %2856, float %2827)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = call float @dx.op.unary.f32(i32 25, float %2867)  ; Rsqrt(value)
  %2869 = fmul fast float %2868, %2855
  %2870 = fmul fast float %2868, %2856
  %2871 = fmul fast float %2868, %2827
  %2872 = fmul fast float %2866, %2866
  %2873 = fsub fast float 1.000000e+00, %2872
  %2874 = fmul fast float %2863, 0x40005F8BE0000000
  %2875 = fsub fast float 0x400C5BF8A0000000, %2874
  %2876 = fdiv fast float %2864, %2875
  %2877 = fmul fast float %2876, 0x3FEE31C3C0000000
  %2878 = fmul fast float %2877, %2873
  %2879 = fmul fast float %2863, 0x3FDACB7480000000
  %2880 = fadd fast float %2879, 0xBFD7347680000000
  %2881 = fmul fast float %2880, %2876
  %2882 = fmul fast float %2881, %2873
  br label %2883

; <label>:2883                                    ; preds = %2854, %2800
  %2884 = phi float [ %2869, %2854 ], [ 0.000000e+00, %2800 ]
  %2885 = phi float [ %2870, %2854 ], [ 0.000000e+00, %2800 ]
  %2886 = phi float [ %2871, %2854 ], [ 0.000000e+00, %2800 ]
  %2887 = phi float [ %2878, %2854 ], [ 0.000000e+00, %2800 ]
  %2888 = phi float [ %2882, %2854 ], [ 0.000000e+00, %2800 ]
  %2889 = call float @dx.op.dot3.f32(i32 55, float %2884, float %2885, float %2886, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %2890 = fmul fast float %2889, %2889
  %2891 = fmul fast float %2890, 0x3FEE471020000000
  %2892 = fadd fast float %2891, 0xBFD42F6020000000
  %2893 = fmul fast float %2849, 0x3FD20DD760000000
  %2894 = fmul fast float %2892, %2888
  %2895 = fmul fast float %2887, 0x3FDF454380000000
  %2896 = fmul fast float %2895, %2889
  %2897 = fadd fast float %2896, %2893
  %2898 = fadd fast float %2897, %2894
  %2899 = call float @dx.op.dot3.f32(i32 55, float %2884, float %2885, float %2886, float %1849, float %1850, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2900 = fmul fast float %2899, 0x3FDF454380000000
  %2901 = fmul fast float %2899, %2899
  %2902 = fmul fast float %2901, 0x3FEE471020000000
  %2903 = fadd fast float %2902, 0xBFD42F6020000000
  %2904 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2887, float %2888, float 0x3FD20DD760000000, float %2900, float %2903)  ; Dot3(ax,ay,az,bx,by,bz)
  %2905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2820)  ; FMax(a,b)
  %2906 = call float @dx.op.dot3.f32(i32 55, float %2833, float %2836, float %2839, float %2833, float %2836, float %2839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2907 = fcmp fast oeq float %2906, 0.000000e+00
  %2908 = fcmp fast oeq float %2905, 0.000000e+00
  %2909 = or i1 %2908, %2907
  br i1 %2909, label %2939, label %2910

; <label>:2910                                    ; preds = %2883
  %2911 = fsub fast float -0.000000e+00, %2839
  %2912 = fsub fast float -0.000000e+00, %2833
  %2913 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %2914 = fdiv fast float %2913, %2905
  %2915 = fcmp fast ogt float %2914, 0x3FFB6F8900000000
  %2916 = select i1 %2915, float 0x3FFB6F8900000000, float %2914
  %2917 = fmul fast float %2916, 0x3FE8A23460000000
  %2918 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  %2919 = call float @dx.op.binary.f32(i32 35, float %2916, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2920 = fmul fast float %2918, %2905
  %2921 = fmul fast float %2919, 0x3FF279A740000000
  %2922 = fadd fast float %2921, -1.000000e+00
  %2923 = call float @dx.op.dot3.f32(i32 55, float %2911, float %2912, float %2836, float %2911, float %2912, float %2836)  ; Dot3(ax,ay,az,bx,by,bz)
  %2924 = call float @dx.op.unary.f32(i32 25, float %2923)  ; Rsqrt(value)
  %2925 = fmul fast float %2924, %2911
  %2926 = fmul fast float %2924, %2912
  %2927 = fmul fast float %2924, %2836
  %2928 = fmul fast float %2922, %2922
  %2929 = fsub fast float 1.000000e+00, %2928
  %2930 = fmul fast float %2919, 0x40005F8BE0000000
  %2931 = fsub fast float 0x400C5BF8A0000000, %2930
  %2932 = fdiv fast float %2920, %2931
  %2933 = fmul fast float %2932, 0x3FEE31C3C0000000
  %2934 = fmul fast float %2933, %2929
  %2935 = fmul fast float %2919, 0x3FDACB7480000000
  %2936 = fadd fast float %2935, 0xBFD7347680000000
  %2937 = fmul fast float %2936, %2932
  %2938 = fmul fast float %2937, %2929
  br label %2939

; <label>:2939                                    ; preds = %2910, %2883
  %2940 = phi float [ %2925, %2910 ], [ 0.000000e+00, %2883 ]
  %2941 = phi float [ %2926, %2910 ], [ 0.000000e+00, %2883 ]
  %2942 = phi float [ %2927, %2910 ], [ 0.000000e+00, %2883 ]
  %2943 = phi float [ %2934, %2910 ], [ 0.000000e+00, %2883 ]
  %2944 = phi float [ %2938, %2910 ], [ 0.000000e+00, %2883 ]
  %2945 = call float @dx.op.dot3.f32(i32 55, float %2940, float %2941, float %2942, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %2946 = fmul fast float %2945, %2945
  %2947 = fmul fast float %2946, 0x3FEE471020000000
  %2948 = fadd fast float %2947, 0xBFD42F6020000000
  %2949 = fmul fast float %2905, 0x3FD20DD760000000
  %2950 = fmul fast float %2948, %2944
  %2951 = fmul fast float %2943, 0x3FDF454380000000
  %2952 = fmul fast float %2951, %2945
  %2953 = fadd fast float %2952, %2949
  %2954 = fadd fast float %2953, %2950
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2940, float %2941, float %2942, float %1849, float %1850, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = fmul fast float %2955, 0x3FDF454380000000
  %2957 = fmul fast float %2955, %2955
  %2958 = fmul fast float %2957, 0x3FEE471020000000
  %2959 = fadd fast float %2958, 0xBFD42F6020000000
  %2960 = call float @dx.op.dot3.f32(i32 55, float %2905, float %2943, float %2944, float 0x3FD20DD760000000, float %2956, float %2959)  ; Dot3(ax,ay,az,bx,by,bz)
  %2961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2821)  ; FMax(a,b)
  %2962 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2845, float %2848, float %2842, float %2845, float %2848)  ; Dot3(ax,ay,az,bx,by,bz)
  %2963 = fcmp fast oeq float %2962, 0.000000e+00
  %2964 = fcmp fast oeq float %2961, 0.000000e+00
  %2965 = or i1 %2964, %2963
  br i1 %2965, label %2995, label %2966

; <label>:2966                                    ; preds = %2939
  %2967 = fsub fast float -0.000000e+00, %2848
  %2968 = fsub fast float -0.000000e+00, %2842
  %2969 = call float @dx.op.unary.f32(i32 24, float %2962)  ; Sqrt(value)
  %2970 = fdiv fast float %2969, %2961
  %2971 = fcmp fast ogt float %2970, 0x3FFB6F8900000000
  %2972 = select i1 %2971, float 0x3FFB6F8900000000, float %2970
  %2973 = fmul fast float %2972, 0x3FE8A23460000000
  %2974 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  %2975 = call float @dx.op.binary.f32(i32 35, float %2972, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2976 = fmul fast float %2974, %2961
  %2977 = fmul fast float %2975, 0x3FF279A740000000
  %2978 = fadd fast float %2977, -1.000000e+00
  %2979 = call float @dx.op.dot3.f32(i32 55, float %2967, float %2968, float %2845, float %2967, float %2968, float %2845)  ; Dot3(ax,ay,az,bx,by,bz)
  %2980 = call float @dx.op.unary.f32(i32 25, float %2979)  ; Rsqrt(value)
  %2981 = fmul fast float %2980, %2967
  %2982 = fmul fast float %2980, %2968
  %2983 = fmul fast float %2980, %2845
  %2984 = fmul fast float %2978, %2978
  %2985 = fsub fast float 1.000000e+00, %2984
  %2986 = fmul fast float %2975, 0x40005F8BE0000000
  %2987 = fsub fast float 0x400C5BF8A0000000, %2986
  %2988 = fdiv fast float %2976, %2987
  %2989 = fmul fast float %2988, 0x3FEE31C3C0000000
  %2990 = fmul fast float %2989, %2985
  %2991 = fmul fast float %2975, 0x3FDACB7480000000
  %2992 = fadd fast float %2991, 0xBFD7347680000000
  %2993 = fmul fast float %2992, %2988
  %2994 = fmul fast float %2993, %2985
  br label %2995

; <label>:2995                                    ; preds = %2966, %2939
  %2996 = phi float [ %2981, %2966 ], [ 0.000000e+00, %2939 ]
  %2997 = phi float [ %2982, %2966 ], [ 0.000000e+00, %2939 ]
  %2998 = phi float [ %2983, %2966 ], [ 0.000000e+00, %2939 ]
  %2999 = phi float [ %2990, %2966 ], [ 0.000000e+00, %2939 ]
  %3000 = phi float [ %2994, %2966 ], [ 0.000000e+00, %2939 ]
  %3001 = call float @dx.op.dot3.f32(i32 55, float %2996, float %2997, float %2998, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3002 = fmul fast float %3001, %3001
  %3003 = fmul fast float %3002, 0x3FEE471020000000
  %3004 = fadd fast float %3003, 0xBFD42F6020000000
  %3005 = fmul fast float %2961, 0x3FD20DD760000000
  %3006 = fmul fast float %3004, %3000
  %3007 = fmul fast float %2999, 0x3FDF454380000000
  %3008 = fmul fast float %3007, %3001
  %3009 = fadd fast float %3008, %3005
  %3010 = fadd fast float %3009, %3006
  %3011 = call float @dx.op.dot3.f32(i32 55, float %2996, float %2997, float %2998, float %1849, float %1850, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %3012 = fmul fast float %3011, 0x3FDF454380000000
  %3013 = fmul fast float %3011, %3011
  %3014 = fmul fast float %3013, 0x3FEE471020000000
  %3015 = fadd fast float %3014, 0xBFD42F6020000000
  %3016 = call float @dx.op.dot3.f32(i32 55, float %2961, float %2999, float %3000, float 0x3FD20DD760000000, float %3012, float %3015)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = call float @dx.op.binary.f32(i32 35, float %2898, float 0.000000e+00)  ; FMax(a,b)
  %3018 = call float @dx.op.binary.f32(i32 35, float %2954, float 0.000000e+00)  ; FMax(a,b)
  %3019 = call float @dx.op.binary.f32(i32 35, float %3010, float 0.000000e+00)  ; FMax(a,b)
  %3020 = call float @dx.op.binary.f32(i32 35, float %2904, float 0.000000e+00)  ; FMax(a,b)
  %3021 = call float @dx.op.binary.f32(i32 35, float %2960, float 0.000000e+00)  ; FMax(a,b)
  %3022 = call float @dx.op.binary.f32(i32 35, float %3016, float 0.000000e+00)  ; FMax(a,b)
  %3023 = fsub fast float %2219, %3017
  %3024 = fsub fast float %2220, %3018
  %3025 = fsub fast float %2221, %3019
  %3026 = fmul fast float %3023, %1900
  %3027 = fmul fast float %3024, %1900
  %3028 = fmul fast float %3025, %1900
  %3029 = fadd fast float %3026, %3017
  %3030 = fadd fast float %3027, %3018
  %3031 = fadd fast float %3028, %3019
  %3032 = fsub fast float %2216, %3020
  %3033 = fsub fast float %2217, %3021
  %3034 = fsub fast float %2218, %3022
  %3035 = fmul fast float %3032, %1900
  %3036 = fmul fast float %3033, %1900
  %3037 = fmul fast float %3034, %1900
  %3038 = fadd fast float %3035, %3020
  %3039 = fadd fast float %3036, %3021
  %3040 = fadd fast float %3037, %3022
  br label %3041

; <label>:3041                                    ; preds = %2995, %2215
  %3042 = phi float [ %3038, %2995 ], [ %2216, %2215 ]
  %3043 = phi float [ %3039, %2995 ], [ %2217, %2215 ]
  %3044 = phi float [ %3040, %2995 ], [ %2218, %2215 ]
  %3045 = phi float [ %3029, %2995 ], [ %2219, %2215 ]
  %3046 = phi float [ %3030, %2995 ], [ %2220, %2215 ]
  %3047 = phi float [ %3031, %2995 ], [ %2221, %2215 ]
  %3048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3049 = extractvalue %dx.types.CBufRet.f32 %3048, 0
  %3050 = call float @dx.op.binary.f32(i32 36, float %1833, float %3049)  ; FMin(a,b)
  %3051 = fsub fast float 1.000000e+00, %1852
  %3052 = fmul fast float %3050, %3051
  %3053 = fsub fast float 1.000000e+00, %3052
  %3054 = bitcast float %3053 to i32
  %3055 = sub nsw i32 2129859010, %3054
  %3056 = bitcast i32 %3055 to float
  %3057 = call float @dx.op.binary.f32(i32 36, float %1834, float %3049)  ; FMin(a,b)
  %3058 = fmul fast float %3057, %3051
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = bitcast float %3059 to i32
  %3061 = sub nsw i32 2129859010, %3060
  %3062 = bitcast i32 %3061 to float
  %3063 = call float @dx.op.binary.f32(i32 36, float %1835, float %3049)  ; FMin(a,b)
  %3064 = fmul fast float %3063, %3051
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = bitcast float %3065 to i32
  %3067 = sub nsw i32 2129859010, %3066
  %3068 = bitcast i32 %3067 to float
  %3069 = fmul fast float %3045, %1852
  %3070 = fmul fast float %3069, %3056
  %3071 = fmul fast float %3046, %1852
  %3072 = fmul fast float %3071, %3062
  %3073 = fmul fast float %3047, %1852
  %3074 = fmul fast float %3073, %3068
  %3075 = call float @dx.op.binary.f32(i32 36, float %1830, float %3049)  ; FMin(a,b)
  %3076 = fmul fast float %3075, %3051
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = bitcast float %3077 to i32
  %3079 = sub nsw i32 2129859010, %3078
  %3080 = bitcast i32 %3079 to float
  %3081 = call float @dx.op.binary.f32(i32 36, float %1831, float %3049)  ; FMin(a,b)
  %3082 = fmul fast float %3081, %3051
  %3083 = fsub fast float 1.000000e+00, %3082
  %3084 = bitcast float %3083 to i32
  %3085 = sub nsw i32 2129859010, %3084
  %3086 = bitcast i32 %3085 to float
  %3087 = call float @dx.op.binary.f32(i32 36, float %1841, float %3049)  ; FMin(a,b)
  %3088 = fmul fast float %3087, %3051
  %3089 = fsub fast float 1.000000e+00, %3088
  %3090 = bitcast float %3089 to i32
  %3091 = sub nsw i32 2129859010, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3042, %1852
  %3094 = fmul fast float %3093, %3080
  %3095 = fmul fast float %3043, %1852
  %3096 = fmul fast float %3095, %3086
  %3097 = fmul fast float %3044, %1852
  %3098 = fmul fast float %3097, %3092
  %3099 = call float @dx.op.dot3.f32(i32 55, float %3070, float %3072, float %3074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3100 = select i1 %176, float 0.000000e+00, float %3070
  %3101 = select i1 %176, float %3099, float %3072
  %3102 = select i1 %176, float 0.000000e+00, float %3074
  %3103 = call float @dx.op.dot3.f32(i32 55, float %3094, float %3096, float %3098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3104 = select i1 %176, float 0.000000e+00, float %3094
  %3105 = select i1 %176, float %3103, float %3096
  %3106 = select i1 %176, float 0.000000e+00, float %3098
  %3107 = fmul fast float %1843, 9.843750e-01
  %3108 = fmul fast float %1839, 9.843750e-01
  %3109 = fadd fast float %3107, 7.812500e-03
  %3110 = fadd fast float %3108, 7.812500e-03
  %3111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3109, float %3110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 3
  %3114 = fmul fast float %3112, %1830
  %3115 = fmul fast float %3112, %1831
  %3116 = fmul fast float %3112, %1841
  %3117 = fadd fast float %3114, %3113
  %3118 = fadd fast float %3115, %3113
  %3119 = fadd fast float %3116, %3113
  %3120 = fcmp fast ogt float %1207, 0.000000e+00
  br i1 %3120, label %3121, label %3147

; <label>:3121                                    ; preds = %3041
  %3122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1207, float %1843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3123 = extractvalue %dx.types.ResRet.f32 %3122, 0
  %3124 = extractvalue %dx.types.ResRet.f32 %3122, 1
  %3125 = extractvalue %dx.types.ResRet.f32 %3122, 2
  %3126 = fadd fast float %3123, -5.000000e-01
  %3127 = fadd fast float %3124, -5.000000e-01
  %3128 = fadd fast float %3125, -5.000000e-01
  %3129 = fsub fast float 1.000000e+00, %1830
  %3130 = fsub fast float 1.000000e+00, %1831
  %3131 = fsub fast float 1.000000e+00, %1841
  %3132 = fmul fast float %1830, 4.000000e+00
  %3133 = fmul fast float %3132, %3129
  %3134 = fmul fast float %3133, %3126
  %3135 = fmul fast float %1831, 4.000000e+00
  %3136 = fmul fast float %3135, %3130
  %3137 = fmul fast float %3136, %3127
  %3138 = fmul fast float %1841, 4.000000e+00
  %3139 = fmul fast float %3138, %3131
  %3140 = fmul fast float %3139, %3128
  %3141 = fadd fast float %3134, %3117
  %3142 = fadd fast float %3137, %3118
  %3143 = fadd fast float %3140, %3119
  %3144 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3145 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3146 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  br label %3147

; <label>:3147                                    ; preds = %3121, %3041
  %3148 = phi float [ %3144, %3121 ], [ %3117, %3041 ]
  %3149 = phi float [ %3145, %3121 ], [ %3118, %3041 ]
  %3150 = phi float [ %3146, %3121 ], [ %3119, %3041 ]
  %3151 = call float @dx.op.binary.f32(i32 35, float %3149, float %3150)  ; FMax(a,b)
  %3152 = call float @dx.op.binary.f32(i32 35, float %3148, float %3151)  ; FMax(a,b)
  %3153 = fsub fast float 1.000000e+00, %3152
  %3154 = fmul fast float %3153, %3100
  %3155 = fmul fast float %3153, %3101
  %3156 = fmul fast float %3153, %3102
  %3157 = call float @dx.op.dot3.f32(i32 55, float %1833, float %1834, float %1835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3158 = fcmp fast ogt float %3157, 0x3E7FF19E20000000
  %3159 = fdiv fast float 1.000000e+00, %3157
  %3160 = select i1 %3158, float %3159, float 0.000000e+00
  %3161 = fmul fast float %3160, %1833
  %3162 = fmul fast float %3160, %1834
  %3163 = fmul fast float %3160, %1835
  %3164 = fadd fast float %3161, -1.000000e+00
  %3165 = fadd fast float %3162, -1.000000e+00
  %3166 = fadd fast float %3163, -1.000000e+00
  %3167 = fmul fast float %3164, 5.000000e-01
  %3168 = fmul fast float %3165, 5.000000e-01
  %3169 = fmul fast float %3166, 5.000000e-01
  %3170 = fadd fast float %3167, 1.000000e+00
  %3171 = fadd fast float %3168, 1.000000e+00
  %3172 = fadd fast float %3169, 1.000000e+00
  %3173 = fmul fast float %3148, %3104
  %3174 = fmul fast float %3149, %3105
  %3175 = fmul fast float %3150, %3106
  %3176 = fsub fast float 1.000000e+00, %1843
  %3177 = bitcast float %3176 to i32
  %3178 = sitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 5.000000e+00
  %3180 = fadd fast float %3179, 0xC1EFBF8940000000
  %3181 = fptosi float %3180 to i32
  %3182 = bitcast i32 %3181 to float
  %3183 = fmul fast float %3182, %1206
  %3184 = fmul fast float %3100, %3183
  %3185 = fmul fast float %3184, %3153
  %3186 = fmul fast float %3185, %3170
  %3187 = fmul fast float %3101, %3183
  %3188 = fmul fast float %3187, %3153
  %3189 = fmul fast float %3188, %3171
  %3190 = fmul fast float %3102, %3183
  %3191 = fmul fast float %3190, %3153
  %3192 = fmul fast float %3191, %3172
  %3193 = fmul fast float %3154, %1227
  %3194 = fmul fast float %3155, %1227
  %3195 = fmul fast float %3156, %1227
  %3196 = fadd fast float %3173, %1208
  %3197 = fadd fast float %3196, %3186
  %3198 = fmul fast float %3197, %1227
  %3199 = fadd fast float %3174, %1209
  %3200 = fadd fast float %3199, %3189
  %3201 = fmul fast float %3200, %1227
  %3202 = fadd fast float %3175, %1210
  %3203 = fadd fast float %3202, %3192
  %3204 = fmul fast float %3203, %1227
  %3205 = bitcast i32 %1855 to float
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 3
  %3208 = fcmp fast oeq float %3207, 0.000000e+00
  br i1 %3208, label %3436, label %3209

; <label>:3209                                    ; preds = %3147
  %3210 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3211 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3212 = extractvalue %dx.types.CBufRet.f32 %3206, 2
  %3213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.CBufRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.CBufRet.f32 %3213, 2
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.CBufRet.f32 %3217, 1
  %3220 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3215, float %3216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3221 = select i1 %176, float %3218, float %3214
  %3222 = select i1 %176, float %3220, float %3215
  %3223 = select i1 %176, float %3219, float %3216
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3226 = fcmp fast une float %3225, 0.000000e+00
  br i1 %3226, label %3227, label %3244

; <label>:3227                                    ; preds = %3209
  %3228 = fptoui float %58 to i32
  %3229 = fptoui float %59 to i32
  %3230 = lshr i32 %3228, 4
  %3231 = lshr i32 %3229, 4
  %3232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3233 = extractvalue %dx.types.CBufRet.f32 %3232, 0
  %3234 = fptoui float %3233 to i32
  %3235 = add i32 %3234, 15
  %3236 = lshr i32 %3235, 4
  %3237 = mul i32 %3236, %3231
  %3238 = add i32 %3237, %3230
  %3239 = shl i32 %3238, 3
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, -268435456
  %3243 = icmp eq i32 %3242, -1342177280
  br i1 %3243, label %3254, label %3244

; <label>:3244                                    ; preds = %3227, %3209
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 2
  %3247 = extractvalue %dx.types.CBufRet.f32 %3245, 3
  %3248 = fmul fast float %3246, %58
  %3249 = fmul fast float %3247, %59
  %3250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3248, float %3249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.ResRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.ResRet.f32 %3250, 2
  br label %3254

; <label>:3254                                    ; preds = %3244, %3227
  %3255 = phi float [ %3251, %3244 ], [ 0.000000e+00, %3227 ]
  %3256 = phi float [ %3252, %3244 ], [ 0.000000e+00, %3227 ]
  %3257 = phi float [ %3253, %3244 ], [ 0.000000e+00, %3227 ]
  %3258 = call float @dx.op.binary.f32(i32 36, float %3256, float %3257)  ; FMin(a,b)
  %3259 = call float @dx.op.binary.f32(i32 36, float %3255, float %3258)  ; FMin(a,b)
  %3260 = fcmp fast ogt float %3259, 0.000000e+00
  br i1 %3260, label %3261, label %3436, !dx.controlflow.hints !79

; <label>:3261                                    ; preds = %3254
  %3262 = fmul fast float %3255, %3221
  %3263 = fmul fast float %3256, %3222
  %3264 = fmul fast float %3257, %3223
  %3265 = fsub fast float %3210, %1829
  %3266 = fsub fast float %3211, %1828
  %3267 = fsub fast float %3212, %1827
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3266, float %3267, float %3265, float %3266, float %3267)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = call float @dx.op.unary.f32(i32 25, float %3268)  ; Rsqrt(value)
  %3270 = fmul fast float %3269, %3265
  %3271 = fmul fast float %3269, %3266
  %3272 = fmul fast float %3269, %3267
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3210, float %3211, float %3212, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = call float @dx.op.dot3.f32(i32 55, float %1826, float %1825, float %1824, float %3270, float %3271, float %3272)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3276 = fmul fast float %3275, %3275
  %3277 = fmul fast float %3276, %3205
  %3278 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3279 = fmul fast float %3278, %3275
  %3280 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1838, float %3270, float %3271, float %3272)  ; Dot3(ax,ay,az,bx,by,bz)
  %3281 = fmul fast float %3280, %3280
  %3282 = call float @dx.op.unary.f32(i32 6, float %3273)  ; FAbs(value)
  %3283 = fsub fast float 1.000000e+00, %1839
  %3284 = call float @dx.op.binary.f32(i32 35, float %3283, float 0x3F847AE140000000)  ; FMax(a,b)
  %3285 = fmul fast float %3284, %3284
  %3286 = fmul fast float %3285, %3285
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = fmul fast float %1843, %1843
  %3289 = fmul fast float %3288, %3287
  %3290 = fadd fast float %3289, %3286
  %3291 = bitcast float %3290 to i32
  %3292 = ashr i32 %3291, 1
  %3293 = add nsw i32 %3292, 532487669
  %3294 = bitcast i32 %3293 to float
  %3295 = fadd fast float %3294, %1843
  %3296 = fmul fast float %3286, %3281
  %3297 = fsub fast float 1.000000e+00, %3281
  %3298 = fadd fast float %3297, %3296
  %3299 = fmul fast float %3282, %3282
  %3300 = fmul fast float %3299, %3287
  %3301 = fadd fast float %3300, %3286
  %3302 = bitcast float %3301 to i32
  %3303 = ashr i32 %3302, 1
  %3304 = add nsw i32 %3303, 532487669
  %3305 = bitcast i32 %3304 to float
  %3306 = fadd fast float %3305, %3282
  %3307 = fmul fast float %3298, %3298
  %3308 = fmul fast float %3307, %3295
  %3309 = fmul fast float %3308, %3306
  %3310 = fdiv fast float 0x3FF0A00000000000, %3309
  %3311 = fmul fast float %3310, %3286
  %3312 = call float @dx.op.unary.f32(i32 6, float %3274)  ; FAbs(value)
  %3313 = fsub fast float 1.000000e+00, %3312
  %3314 = bitcast float %3313 to i32
  %3315 = sitofp i32 %3314 to float
  %3316 = fmul fast float %3315, 5.000000e+00
  %3317 = fadd fast float %3316, 0xC1EFBF8940000000
  %3318 = fptosi float %3317 to i32
  %3319 = bitcast i32 %3318 to float
  %3320 = fsub fast float 1.000000e+00, %1830
  %3321 = fsub fast float 1.000000e+00, %1831
  %3322 = fsub fast float 1.000000e+00, %1841
  %3323 = fmul fast float %3319, %3320
  %3324 = fmul fast float %3319, %3321
  %3325 = fmul fast float %3319, %3322
  %3326 = fadd fast float %3323, %1830
  %3327 = fadd fast float %3324, %1831
  %3328 = fadd fast float %3325, %1841
  br i1 %3120, label %3329, label %3352

; <label>:3329                                    ; preds = %3261
  %3330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1207, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3334 = fadd fast float %3331, -5.000000e-01
  %3335 = fadd fast float %3332, -5.000000e-01
  %3336 = fadd fast float %3333, -5.000000e-01
  %3337 = fmul fast float %1830, 4.000000e+00
  %3338 = fmul fast float %3337, %3320
  %3339 = fmul fast float %3338, %3334
  %3340 = fmul fast float %1831, 4.000000e+00
  %3341 = fmul fast float %3340, %3321
  %3342 = fmul fast float %3341, %3335
  %3343 = fmul fast float %1841, 4.000000e+00
  %3344 = fmul fast float %3343, %3322
  %3345 = fmul fast float %3344, %3336
  %3346 = fadd fast float %3339, %3326
  %3347 = fadd fast float %3342, %3327
  %3348 = fadd fast float %3345, %3328
  %3349 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  br label %3352

; <label>:3352                                    ; preds = %3329, %3261
  %3353 = phi float [ %3349, %3329 ], [ %3326, %3261 ]
  %3354 = phi float [ %3350, %3329 ], [ %3327, %3261 ]
  %3355 = phi float [ %3351, %3329 ], [ %3328, %3261 ]
  %3356 = fmul fast float %3273, 9.843750e-01
  %3357 = fadd fast float %3356, 7.812500e-03
  %3358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3357, float %3110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 3
  %3361 = fmul fast float %3359, %1830
  %3362 = fmul fast float %3359, %1831
  %3363 = fmul fast float %3359, %1841
  %3364 = fadd fast float %3361, %3360
  %3365 = fadd fast float %3362, %3360
  %3366 = fadd fast float %3363, %3360
  br i1 %3120, label %3367, label %3390

; <label>:3367                                    ; preds = %3352
  %3368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1207, float %3273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3369 = extractvalue %dx.types.ResRet.f32 %3368, 0
  %3370 = extractvalue %dx.types.ResRet.f32 %3368, 1
  %3371 = extractvalue %dx.types.ResRet.f32 %3368, 2
  %3372 = fadd fast float %3369, -5.000000e-01
  %3373 = fadd fast float %3370, -5.000000e-01
  %3374 = fadd fast float %3371, -5.000000e-01
  %3375 = fmul fast float %1830, 4.000000e+00
  %3376 = fmul fast float %3375, %3320
  %3377 = fmul fast float %3376, %3372
  %3378 = fmul fast float %1831, 4.000000e+00
  %3379 = fmul fast float %3378, %3321
  %3380 = fmul fast float %3379, %3373
  %3381 = fmul fast float %1841, 4.000000e+00
  %3382 = fmul fast float %3381, %3322
  %3383 = fmul fast float %3382, %3374
  %3384 = fadd fast float %3377, %3364
  %3385 = fadd fast float %3380, %3365
  %3386 = fadd fast float %3383, %3366
  %3387 = call float @dx.op.unary.f32(i32 7, float %3384)  ; Saturate(value)
  %3388 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3389 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  br label %3390

; <label>:3390                                    ; preds = %3367, %3352
  %3391 = phi float [ %3387, %3367 ], [ %3364, %3352 ]
  %3392 = phi float [ %3388, %3367 ], [ %3365, %3352 ]
  %3393 = phi float [ %3389, %3367 ], [ %3366, %3352 ]
  %3394 = call float @dx.op.binary.f32(i32 35, float %3392, float %3393)  ; FMax(a,b)
  %3395 = call float @dx.op.binary.f32(i32 35, float %3391, float %3394)  ; FMax(a,b)
  %3396 = fsub fast float 1.000000e+00, %3395
  %3397 = fmul fast float %3353, %3311
  %3398 = fmul fast float %3354, %3311
  %3399 = fmul fast float %3355, %3311
  %3400 = fsub fast float 1.000000e+00, %3274
  %3401 = bitcast float %3400 to i32
  %3402 = sitofp i32 %3401 to float
  %3403 = fmul fast float %3402, 5.000000e+00
  %3404 = fadd fast float %3403, 0xC1EFBF8940000000
  %3405 = fptosi float %3404 to i32
  %3406 = bitcast i32 %3405 to float
  %3407 = fmul fast float %3406, %1206
  %3408 = fmul fast float %3396, %3407
  %3409 = fmul fast float %3408, %3170
  %3410 = fmul fast float %3408, %3171
  %3411 = fmul fast float %3408, %3172
  %3412 = fadd fast float %3409, %3397
  %3413 = fadd fast float %3410, %3398
  %3414 = fadd fast float %3411, %3399
  %3415 = fmul fast float %3279, %3262
  %3416 = fmul fast float %3415, %3396
  %3417 = fmul fast float %3279, %3263
  %3418 = fmul fast float %3417, %3396
  %3419 = fmul fast float %3279, %3264
  %3420 = fmul fast float %3419, %3396
  %3421 = fmul fast float %3415, %3412
  %3422 = fmul fast float %3417, %3413
  %3423 = fmul fast float %3419, %3414
  %3424 = fadd fast float %3416, %3154
  %3425 = fmul fast float %3424, %1227
  %3426 = fadd fast float %3418, %3155
  %3427 = fmul fast float %3426, %1227
  %3428 = fadd fast float %3420, %3156
  %3429 = fmul fast float %3428, %1227
  %3430 = fadd fast float %3421, %3197
  %3431 = fmul fast float %3430, %1227
  %3432 = fadd fast float %3422, %3200
  %3433 = fmul fast float %3432, %1227
  %3434 = fadd fast float %3423, %3203
  %3435 = fmul fast float %3434, %1227
  br label %3436

; <label>:3436                                    ; preds = %3390, %3254, %3147
  %3437 = phi float [ %3198, %3147 ], [ %3198, %3254 ], [ %3431, %3390 ]
  %3438 = phi float [ %3201, %3147 ], [ %3201, %3254 ], [ %3433, %3390 ]
  %3439 = phi float [ %3204, %3147 ], [ %3204, %3254 ], [ %3435, %3390 ]
  %3440 = phi float [ %3193, %3147 ], [ %3193, %3254 ], [ %3425, %3390 ]
  %3441 = phi float [ %3194, %3147 ], [ %3194, %3254 ], [ %3427, %3390 ]
  %3442 = phi float [ %3195, %3147 ], [ %3195, %3254 ], [ %3429, %3390 ]
  %3443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.i32 %3443, 0
  %3445 = icmp eq i32 %3444, 0
  br i1 %3445, label %3880, label %3446

; <label>:3446                                    ; preds = %3436
  %3447 = fptoui float %58 to i32
  %3448 = fptoui float %59 to i32
  %3449 = lshr i32 %3447, 4
  %3450 = lshr i32 %3448, 4
  %3451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.i32 %3451, 0
  %3453 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3450, i32 %3452, i32 %3449)  ; UMad(a,b,c)
  %3454 = add nsw i32 %3444, -1
  %3455 = call i32 @dx.op.binary.i32(i32 37, i32 %3454, i32 0)  ; IMax(a,b)
  %3456 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3457 = fptoui float %3456 to i32
  %3458 = lshr i32 %3457, 5
  %3459 = call i32 @dx.op.binary.i32(i32 40, i32 %3458, i32 8191)  ; UMin(a,b)
  %3460 = shl i32 %3459, 2
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = lshr i32 %3462, 16
  %3464 = and i32 %3462, 65535
  %3465 = lshr i32 %3462, 21
  %3466 = lshr i32 %3464, 5
  %3467 = call i32 @dx.op.binary.i32(i32 40, i32 %3466, i32 %3455)  ; UMin(a,b)
  %3468 = icmp ugt i32 %3465, %3467
  br i1 %3468, label %3880, label %3469

; <label>:3469                                    ; preds = %3446
  br label %3470

; <label>:3470                                    ; preds = %3870, %3469
  %3471 = phi i32 [ %3877, %3870 ], [ %3465, %3469 ]
  %3472 = phi float [ %3871, %3870 ], [ %3437, %3469 ]
  %3473 = phi float [ %3872, %3870 ], [ %3438, %3469 ]
  %3474 = phi float [ %3873, %3870 ], [ %3439, %3469 ]
  %3475 = phi float [ %3874, %3870 ], [ %3440, %3469 ]
  %3476 = phi float [ %3875, %3870 ], [ %3441, %3469 ]
  %3477 = phi float [ %3876, %3870 ], [ %3442, %3469 ]
  %3478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.i32 %3478, 0
  %3480 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3453, i32 %3479, i32 %3471)  ; UMad(a,b,c)
  %3481 = shl i32 %3480, 2
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = shl i32 %3471, 5
  %3485 = sub nsw i32 %3463, %3484
  %3486 = call i32 @dx.op.binary.i32(i32 37, i32 %3485, i32 0)  ; IMax(a,b)
  %3487 = call i32 @dx.op.binary.i32(i32 38, i32 %3486, i32 31)  ; IMin(a,b)
  %3488 = sub nsw i32 1, %3463
  %3489 = add nsw i32 %3488, %3464
  %3490 = call i32 @dx.op.binary.i32(i32 37, i32 %3489, i32 0)  ; IMax(a,b)
  %3491 = call i32 @dx.op.binary.i32(i32 38, i32 %3490, i32 32)  ; IMin(a,b)
  %3492 = and i32 %3491, 31
  %3493 = shl i32 -1, %3492
  %3494 = xor i32 %3493, -1
  %3495 = and i32 %3487, 31
  %3496 = shl i32 %3494, %3495
  %3497 = icmp eq i32 %3491, 32
  %3498 = select i1 %3497, i32 -1, i32 %3496
  %3499 = and i32 %3498, %3483
  %3500 = icmp eq i32 %3499, 0
  br i1 %3500, label %3870, label %3501

; <label>:3501                                    ; preds = %3470
  br label %3502

; <label>:3502                                    ; preds = %3582, %3501
  %3503 = phi i32 [ %3514, %3582 ], [ %3499, %3501 ]
  %3504 = phi float [ %3583, %3582 ], [ %3472, %3501 ]
  %3505 = phi float [ %3584, %3582 ], [ %3473, %3501 ]
  %3506 = phi float [ %3585, %3582 ], [ %3474, %3501 ]
  %3507 = phi float [ %3586, %3582 ], [ %3475, %3501 ]
  %3508 = phi float [ %3587, %3582 ], [ %3476, %3501 ]
  %3509 = phi float [ %3588, %3582 ], [ %3477, %3501 ]
  %3510 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3503)  ; FirstbitLo(value)
  %3511 = add i32 %3510, %3484
  %3512 = and i32 %3510, 31
  %3513 = shl i32 1, %3512
  %3514 = xor i32 %3513, %3503
  %3515 = mul i32 %3511, 112
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = or i32 %3515, 12
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = add i32 %3515, 44
  %3524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = add i32 %3515, 48
  %3527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 0
  %3529 = extractvalue %dx.types.ResRet.f32 %3527, 1
  %3530 = extractvalue %dx.types.ResRet.f32 %3527, 2
  %3531 = add i32 %3515, 80
  %3532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.f32 %3532, 1
  %3534 = extractvalue %dx.types.ResRet.f32 %3532, 2
  %3535 = call float @dx.op.dot3.f32(i32 55, float %3517, float %3518, float %3519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3536 = select i1 %176, float %3533, float %3517
  %3537 = select i1 %176, float %3535, float %3518
  %3538 = select i1 %176, float %3534, float %3519
  %3539 = fsub fast float %3528, %105
  %3540 = fsub fast float %3529, %106
  %3541 = fsub fast float %3530, %107
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3540, float %3541, float %3539, float %3540, float %3541)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = call float @dx.op.unary.f32(i32 24, float %3542)  ; Sqrt(value)
  %3544 = fdiv fast float 1.000000e+00, %3543
  %3545 = fmul fast float %3544, %3539
  %3546 = fmul fast float %3544, %3540
  %3547 = fmul fast float %3544, %3541
  %3548 = fadd fast float %3543, %3522
  %3549 = fdiv fast float 1.000000e+00, %3548
  %3550 = fmul float %3525, %3549
  %3551 = fmul float %3550, %3550
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = and i32 %3513, %3499
  %3554 = icmp eq i32 %3553, 0
  br i1 %3554, label %3577, label %3555, !dx.controlflow.hints !80

; <label>:3555                                    ; preds = %3502
  %3556 = lshr i32 %3447, 5
  %3557 = lshr i32 %3448, 5
  %3558 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3556, i32 %3557, i32 %3511, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = and i32 %3559, 3
  %3561 = icmp eq i32 %3560, 0
  %3562 = select i1 %3561, float 1.000000e+00, float 0.000000e+00
  %3563 = icmp eq i32 %3560, 3
  br i1 %3563, label %3564, label %3577

; <label>:3564                                    ; preds = %3555
  %3565 = lshr i32 %3559, 10
  %3566 = and i32 %3565, 8160
  %3567 = and i32 %3448, 31
  %3568 = or i32 %3566, %3567
  %3569 = lshr i32 %3559, 1
  %3570 = and i32 %3569, 16352
  %3571 = and i32 %3447, 31
  %3572 = or i32 %3570, %3571
  %3573 = lshr i32 %3559, 23
  %3574 = and i32 %3573, 255
  %3575 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3572, i32 %3568, i32 %3574, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  br label %3577

; <label>:3577                                    ; preds = %3564, %3555, %3502
  %3578 = phi float [ %3576, %3564 ], [ %3562, %3555 ], [ 0.000000e+00, %3502 ]
  %3579 = call float @dx.op.binary.f32(i32 36, float %3578, float %3578)  ; FMin(a,b)
  %3580 = call float @dx.op.binary.f32(i32 36, float %3578, float %3579)  ; FMin(a,b)
  %3581 = fcmp fast ogt float %3580, 0.000000e+00
  br i1 %3581, label %3590, label %3582, !dx.controlflow.hints !81

; <label>:3582                                    ; preds = %3826, %3577
  %3583 = phi float [ %3504, %3577 ], [ %3866, %3826 ]
  %3584 = phi float [ %3505, %3577 ], [ %3867, %3826 ]
  %3585 = phi float [ %3506, %3577 ], [ %3868, %3826 ]
  %3586 = phi float [ %3507, %3577 ], [ %3860, %3826 ]
  %3587 = phi float [ %3508, %3577 ], [ %3861, %3826 ]
  %3588 = phi float [ %3509, %3577 ], [ %3862, %3826 ]
  %3589 = icmp eq i32 %3503, %3513
  br i1 %3589, label %3869, label %3502

; <label>:3590                                    ; preds = %3577
  %3591 = fmul fast float %3578, %3536
  %3592 = fmul fast float %3578, %3537
  %3593 = fmul fast float %3578, %3538
  %3594 = fsub fast float %3530, %1629
  %3595 = fcmp fast ogt float %3594, 0.000000e+00
  %3596 = fsub fast float %107, %1629
  %3597 = fcmp fast ogt float %3596, 0.000000e+00
  %3598 = xor i1 %3597, %3595
  %3599 = fsub fast float %1629, %3530
  %3600 = fmul fast float %3599, 2.000000e+00
  %3601 = fadd fast float %3600, %3530
  %3602 = select i1 %3598, float %3530, float %3601
  %3603 = fsub fast float %3602, %107
  %3604 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3540, float %3603, float %3539, float %3540, float %3603)  ; Dot3(ax,ay,az,bx,by,bz)
  %3605 = call float @dx.op.unary.f32(i32 25, float %3604)  ; Rsqrt(value)
  %3606 = fmul fast float %3605, %3539
  %3607 = fmul fast float %3605, %3540
  %3608 = fmul fast float %3605, %3603
  %3609 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3606, float %3607, float %3608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = fdiv fast float 1.000000e+00, %3610
  %3612 = fmul fast float %3611, %3609
  %3613 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3596, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3614 = fcmp fast ogt float %3613, 0.000000e+00
  %3615 = fcmp fast olt float %3613, 0.000000e+00
  %3616 = zext i1 %3614 to i32
  %3617 = zext i1 %3615 to i32
  %3618 = sub nsw i32 %3616, %3617
  %3619 = sitofp i32 %3618 to float
  %3620 = fsub fast float %3602, %1629
  %3621 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3540, float %3620, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3622 = fcmp fast ogt float %3621, 0.000000e+00
  %3623 = fcmp fast olt float %3621, 0.000000e+00
  %3624 = zext i1 %3622 to i32
  %3625 = zext i1 %3623 to i32
  %3626 = sub nsw i32 %3624, %3625
  %3627 = sitofp i32 %3626 to float
  %3628 = fcmp fast une float %3619, %3627
  br i1 %3628, label %3629, label %3639

; <label>:3629                                    ; preds = %3590
  %3630 = fmul fast float %3612, %3608
  %3631 = fmul fast float %3612, %3607
  %3632 = fmul fast float %3612, %3606
  %3633 = fmul fast float %3632, %3632
  %3634 = fmul fast float %3631, %3631
  %3635 = fadd fast float %3633, %3634
  %3636 = fmul fast float %3630, %3630
  %3637 = fadd fast float %3635, %3636
  %3638 = call float @dx.op.unary.f32(i32 24, float %3637)  ; Sqrt(value)
  br label %3651

; <label>:3639                                    ; preds = %3590
  %3640 = icmp slt i32 %3618, 0
  br i1 %3640, label %3641, label %3651

; <label>:3641                                    ; preds = %3639
  %3642 = fsub fast float %105, %3528
  %3643 = fsub fast float %106, %3529
  %3644 = fsub fast float %107, %3602
  %3645 = fmul fast float %3642, %3642
  %3646 = fmul fast float %3643, %3643
  %3647 = fadd fast float %3645, %3646
  %3648 = fmul fast float %3644, %3644
  %3649 = fadd fast float %3647, %3648
  %3650 = call float @dx.op.unary.f32(i32 24, float %3649)  ; Sqrt(value)
  br label %3651

; <label>:3651                                    ; preds = %3641, %3639, %3629
  %3652 = phi float [ %3638, %3629 ], [ %3650, %3641 ], [ 0.000000e+00, %3639 ]
  %3653 = and i1 %3597, %3595
  %3654 = fsub fast float -0.000000e+00, %3652
  %3655 = select i1 %3653, float -0.000000e+00, float %3654
  %3656 = fmul fast float %1630, 0x3FF7154760000000
  %3657 = fmul fast float %3656, %3655
  %3658 = fmul fast float %1631, 0x3FF7154760000000
  %3659 = fmul fast float %3658, %3655
  %3660 = fmul fast float %1632, 0x3FF7154760000000
  %3661 = fmul fast float %3660, %3655
  %3662 = call float @dx.op.unary.f32(i32 21, float %3657)  ; Exp(value)
  %3663 = call float @dx.op.unary.f32(i32 21, float %3659)  ; Exp(value)
  %3664 = call float @dx.op.unary.f32(i32 21, float %3661)  ; Exp(value)
  %3665 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3668 = fmul fast float %3591, %3665
  %3669 = fmul fast float %3592, %3666
  %3670 = fmul fast float %3593, %3667
  %3671 = fsub fast float %3545, %1829
  %3672 = fsub fast float %3546, %1828
  %3673 = fsub fast float %3547, %1827
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3671, float %3672, float %3673)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = call float @dx.op.unary.f32(i32 25, float %3674)  ; Rsqrt(value)
  %3676 = fmul fast float %3675, %3671
  %3677 = fmul fast float %3675, %3672
  %3678 = fmul fast float %3675, %3673
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3545, float %3546, float %3547, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call float @dx.op.dot3.f32(i32 55, float %1826, float %1825, float %1824, float %3676, float %3677, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call float @dx.op.unary.f32(i32 7, float %3679)  ; Saturate(value)
  %3682 = fmul fast float %3681, %3552
  %3683 = fmul fast float %3681, %3681
  %3684 = fmul fast float %3683, %3205
  %3685 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3686 = fmul fast float %3682, %3685
  %3687 = bitcast float %3542 to i32
  %3688 = ashr i32 %3687, 1
  %3689 = sub nsw i32 1597463007, %3688
  %3690 = bitcast i32 %3689 to float
  %3691 = fmul fast float %3690, %3539
  %3692 = fmul fast float %3690, %3540
  %3693 = fmul fast float %3690, %3541
  %3694 = fsub fast float %3691, %1829
  %3695 = fsub fast float %3692, %1828
  %3696 = fsub fast float %3693, %1827
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3694, float %3695, float %3696, float %3694, float %3695, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = call float @dx.op.unary.f32(i32 25, float %3697)  ; Rsqrt(value)
  %3699 = fmul fast float %3694, %3698
  %3700 = fmul fast float %3695, %3698
  %3701 = fmul fast float %3696, %3698
  %3702 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1838, float %3699, float %3700, float %3701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3703 = fmul fast float %3702, %3702
  %3704 = call float @dx.op.unary.f32(i32 6, float %3679)  ; FAbs(value)
  %3705 = fsub fast float 1.000000e+00, %1839
  %3706 = call float @dx.op.binary.f32(i32 35, float %3705, float 0x3F847AE140000000)  ; FMax(a,b)
  %3707 = fmul fast float %3706, %3706
  %3708 = fmul fast float %3707, %3707
  %3709 = fsub fast float 1.000000e+00, %3708
  %3710 = fmul fast float %1843, %1843
  %3711 = fmul fast float %3710, %3709
  %3712 = fadd fast float %3711, %3708
  %3713 = bitcast float %3712 to i32
  %3714 = ashr i32 %3713, 1
  %3715 = add nsw i32 %3714, 532487669
  %3716 = bitcast i32 %3715 to float
  %3717 = fadd fast float %3716, %1843
  %3718 = fmul fast float %3708, %3703
  %3719 = fsub fast float 1.000000e+00, %3703
  %3720 = fadd fast float %3719, %3718
  %3721 = fmul fast float %3704, %3704
  %3722 = fmul fast float %3721, %3709
  %3723 = fadd fast float %3722, %3708
  %3724 = bitcast float %3723 to i32
  %3725 = ashr i32 %3724, 1
  %3726 = add nsw i32 %3725, 532487669
  %3727 = bitcast i32 %3726 to float
  %3728 = fadd fast float %3727, %3704
  %3729 = fmul fast float %3720, %3720
  %3730 = fmul fast float %3729, %3717
  %3731 = fmul fast float %3730, %3728
  %3732 = fdiv fast float 1.000000e+00, %3731
  %3733 = bitcast float %3708 to i32
  %3734 = sitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3FE7F73180000000
  %3736 = fadd fast float %3735, 0x41AFE27C40000000
  %3737 = fptosi float %3736 to i32
  %3738 = bitcast i32 %3737 to float
  %3739 = fmul fast float %3525, 0x3FD80E9D60000000
  %3740 = fmul fast float %3739, %3690
  %3741 = fadd fast float %3738, %3740
  %3742 = bitcast float %3741 to i32
  %3743 = sub nsw i32 2129859010, %3742
  %3744 = bitcast i32 %3743 to float
  %3745 = fmul fast float %3708, %3732
  %3746 = fmul fast float %3745, %3738
  %3747 = fmul fast float %3746, %3744
  %3748 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3749 = fsub fast float 1.000000e+00, %3748
  %3750 = bitcast float %3749 to i32
  %3751 = sitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 5.000000e+00
  %3753 = fadd fast float %3752, 0xC1EFBF8940000000
  %3754 = fptosi float %3753 to i32
  %3755 = bitcast i32 %3754 to float
  %3756 = fsub fast float 1.000000e+00, %1830
  %3757 = fsub fast float 1.000000e+00, %1831
  %3758 = fsub fast float 1.000000e+00, %1841
  %3759 = fmul fast float %3755, %3756
  %3760 = fmul fast float %3755, %3757
  %3761 = fmul fast float %3755, %3758
  %3762 = fadd fast float %3759, %1830
  %3763 = fadd fast float %3760, %1831
  %3764 = fadd fast float %3761, %1841
  br i1 %3120, label %3765, label %3788

; <label>:3765                                    ; preds = %3651
  %3766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1207, float %3748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3767 = extractvalue %dx.types.ResRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.ResRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3766, 2
  %3770 = fadd fast float %3767, -5.000000e-01
  %3771 = fadd fast float %3768, -5.000000e-01
  %3772 = fadd fast float %3769, -5.000000e-01
  %3773 = fmul fast float %1830, 4.000000e+00
  %3774 = fmul fast float %3773, %3756
  %3775 = fmul fast float %3774, %3770
  %3776 = fmul fast float %1831, 4.000000e+00
  %3777 = fmul fast float %3776, %3757
  %3778 = fmul fast float %3777, %3771
  %3779 = fmul fast float %1841, 4.000000e+00
  %3780 = fmul fast float %3779, %3758
  %3781 = fmul fast float %3780, %3772
  %3782 = fadd fast float %3775, %3762
  %3783 = fadd fast float %3778, %3763
  %3784 = fadd fast float %3781, %3764
  %3785 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3786 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3787 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  br label %3788

; <label>:3788                                    ; preds = %3765, %3651
  %3789 = phi float [ %3785, %3765 ], [ %3762, %3651 ]
  %3790 = phi float [ %3786, %3765 ], [ %3763, %3651 ]
  %3791 = phi float [ %3787, %3765 ], [ %3764, %3651 ]
  %3792 = fmul fast float %3679, 9.843750e-01
  %3793 = fadd fast float %3792, 7.812500e-03
  %3794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3793, float %3110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3795 = extractvalue %dx.types.ResRet.f32 %3794, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3794, 3
  %3797 = fmul fast float %3795, %1830
  %3798 = fmul fast float %3795, %1831
  %3799 = fmul fast float %3795, %1841
  %3800 = fadd fast float %3797, %3796
  %3801 = fadd fast float %3798, %3796
  %3802 = fadd fast float %3799, %3796
  br i1 %3120, label %3803, label %3826

; <label>:3803                                    ; preds = %3788
  %3804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1207, float %3679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3808 = fadd fast float %3805, -5.000000e-01
  %3809 = fadd fast float %3806, -5.000000e-01
  %3810 = fadd fast float %3807, -5.000000e-01
  %3811 = fmul fast float %1830, 4.000000e+00
  %3812 = fmul fast float %3811, %3756
  %3813 = fmul fast float %3812, %3808
  %3814 = fmul fast float %1831, 4.000000e+00
  %3815 = fmul fast float %3814, %3757
  %3816 = fmul fast float %3815, %3809
  %3817 = fmul fast float %1841, 4.000000e+00
  %3818 = fmul fast float %3817, %3758
  %3819 = fmul fast float %3818, %3810
  %3820 = fadd fast float %3813, %3800
  %3821 = fadd fast float %3816, %3801
  %3822 = fadd fast float %3819, %3802
  %3823 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  br label %3826

; <label>:3826                                    ; preds = %3803, %3788
  %3827 = phi float [ %3823, %3803 ], [ %3800, %3788 ]
  %3828 = phi float [ %3824, %3803 ], [ %3801, %3788 ]
  %3829 = phi float [ %3825, %3803 ], [ %3802, %3788 ]
  %3830 = call float @dx.op.binary.f32(i32 35, float %3828, float %3829)  ; FMax(a,b)
  %3831 = call float @dx.op.binary.f32(i32 35, float %3827, float %3830)  ; FMax(a,b)
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3789, %3747
  %3834 = fmul fast float %3790, %3747
  %3835 = fmul fast float %3791, %3747
  %3836 = fsub fast float 1.000000e+00, %3680
  %3837 = bitcast float %3836 to i32
  %3838 = sitofp i32 %3837 to float
  %3839 = fmul fast float %3838, 5.000000e+00
  %3840 = fadd fast float %3839, 0xC1EFBF8940000000
  %3841 = fptosi float %3840 to i32
  %3842 = bitcast i32 %3841 to float
  %3843 = fmul fast float %3842, %1206
  %3844 = fmul fast float %3832, %3843
  %3845 = fmul fast float %3844, %3170
  %3846 = fmul fast float %3844, %3171
  %3847 = fmul fast float %3844, %3172
  %3848 = fadd fast float %3845, %3833
  %3849 = fadd fast float %3846, %3834
  %3850 = fadd fast float %3847, %3835
  %3851 = fmul fast float %3668, %1227
  %3852 = fmul fast float %3851, %3686
  %3853 = fmul fast float %3852, %3832
  %3854 = fmul fast float %3669, %1227
  %3855 = fmul fast float %3854, %3686
  %3856 = fmul fast float %3855, %3832
  %3857 = fmul fast float %3670, %1227
  %3858 = fmul fast float %3857, %3686
  %3859 = fmul fast float %3858, %3832
  %3860 = fadd fast float %3853, %3507
  %3861 = fadd fast float %3856, %3508
  %3862 = fadd fast float %3859, %3509
  %3863 = fmul fast float %3852, %3848
  %3864 = fmul fast float %3855, %3849
  %3865 = fmul fast float %3858, %3850
  %3866 = fadd fast float %3863, %3504
  %3867 = fadd fast float %3864, %3505
  %3868 = fadd fast float %3865, %3506
  br label %3582

; <label>:3869                                    ; preds = %3582
  br label %3870

; <label>:3870                                    ; preds = %3869, %3470
  %3871 = phi float [ %3472, %3470 ], [ %3583, %3869 ]
  %3872 = phi float [ %3473, %3470 ], [ %3584, %3869 ]
  %3873 = phi float [ %3474, %3470 ], [ %3585, %3869 ]
  %3874 = phi float [ %3475, %3470 ], [ %3586, %3869 ]
  %3875 = phi float [ %3476, %3470 ], [ %3587, %3869 ]
  %3876 = phi float [ %3477, %3470 ], [ %3588, %3869 ]
  %3877 = add i32 %3471, 1
  %3878 = icmp ugt i32 %3877, %3467
  br i1 %3878, label %3879, label %3470

; <label>:3879                                    ; preds = %3870
  br label %3880

; <label>:3880                                    ; preds = %3879, %3446, %3436
  %3881 = phi float [ %3437, %3436 ], [ %3437, %3446 ], [ %3871, %3879 ]
  %3882 = phi float [ %3438, %3436 ], [ %3438, %3446 ], [ %3872, %3879 ]
  %3883 = phi float [ %3439, %3436 ], [ %3439, %3446 ], [ %3873, %3879 ]
  %3884 = phi float [ %3440, %3436 ], [ %3440, %3446 ], [ %3874, %3879 ]
  %3885 = phi float [ %3441, %3436 ], [ %3441, %3446 ], [ %3875, %3879 ]
  %3886 = phi float [ %3442, %3436 ], [ %3442, %3446 ], [ %3876, %3879 ]
  %3887 = call float @dx.op.unary.f32(i32 24, float %1833)  ; Sqrt(value)
  %3888 = call float @dx.op.unary.f32(i32 24, float %1834)  ; Sqrt(value)
  %3889 = call float @dx.op.unary.f32(i32 24, float %1835)  ; Sqrt(value)
  %3890 = fmul fast float %3887, %3884
  %3891 = fmul fast float %3888, %3885
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  br i1 %176, label %3894, label %3914

; <label>:3894                                    ; preds = %3880
  %3895 = fadd fast float %3886, %1204
  %3896 = fmul fast float %3895, %1205
  %3897 = fsub fast float 1.000000e+00, %1205
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 3
  %3901 = fmul fast float %3900, %3898
  %3902 = fadd fast float %3901, %3896
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 0
  %3905 = fmul fast float %3904, %3176
  %3906 = fsub fast float %3902, %3905
  %3907 = fadd fast float %3891, %3890
  %3908 = fmul fast float %3893, %3907
  %3909 = extractvalue %dx.types.CBufRet.f32 %3899, 1
  %3910 = fsub fast float %3906, %3909
  %3911 = extractvalue %dx.types.CBufRet.f32 %3899, 2
  %3912 = fmul fast float %3910, %3911
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  br label %3930

; <label>:3914                                    ; preds = %3880
  %3915 = fmul fast float %3889, %3886
  %3916 = fmul fast float %3893, %3890
  %3917 = fmul fast float %3893, %3891
  %3918 = fmul fast float %3915, %3893
  %3919 = add i32 %38, 116
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = and i32 %3921, 32
  %3923 = icmp eq i32 %3922, 0
  br i1 %3923, label %3930, label %3924

; <label>:3924                                    ; preds = %3914
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = fmul fast float %3926, 0x3FE99999A0000000
  %3928 = fadd fast float %3926, %3916
  %3929 = fadd fast float %3927, %3918
  br label %3930

; <label>:3930                                    ; preds = %3924, %3914, %3894
  %3931 = phi float [ %3908, %3894 ], [ %3928, %3924 ], [ %3916, %3914 ]
  %3932 = phi float [ %3913, %3894 ], [ %3917, %3924 ], [ %3917, %3914 ]
  %3933 = phi float [ 1.000000e+00, %3894 ], [ %3929, %3924 ], [ %3918, %3914 ]
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = fmul fast float %3935, %3882
  %3937 = fmul fast float %3935, %3883
  %3938 = fadd fast float %3882, %3881
  %3939 = select i1 %176, float %3938, float %3881
  %3940 = fmul float %3939, %3935
  %3941 = select i1 %176, float 0.000000e+00, float %3936
  %3942 = select i1 %176, float 0.000000e+00, float %3937
  %3943 = fmul fast float %3931, %3887
  %3944 = fmul fast float %3932, %3888
  %3945 = fmul fast float %3933, %3889
  %3946 = fadd fast float %3940, %3943
  %3947 = fadd fast float %3941, %3944
  %3948 = fadd fast float %3942, %3945
  %3949 = select i1 %176, float %3932, float %3947
  %3950 = select i1 %176, float %3933, float %3948
  %3951 = call float @dx.op.binary.f32(i32 36, float %3946, float 3.225500e+04)  ; FMin(a,b)
  %3952 = call float @dx.op.binary.f32(i32 36, float %3949, float 3.225500e+04)  ; FMin(a,b)
  %3953 = call float @dx.op.binary.f32(i32 36, float %3950, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3953)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

