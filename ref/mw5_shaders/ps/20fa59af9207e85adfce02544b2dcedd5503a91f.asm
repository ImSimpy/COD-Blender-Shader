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
; shader hash: 9d451773121d2a6906fbe6b1abd3b1ad
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
  %691 = add i32 %38, 120
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = extractvalue %dx.types.ResRet.i32 %692, 1
  %695 = bitcast i32 %693 to float
  %696 = bitcast i32 %694 to float
  %697 = fcmp fast oge float %695, 0.000000e+00
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = select i1 %697, float %695, float %699
  %701 = add i32 %38, 156
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %55, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = fmul fast float %707, %696
  %709 = fadd fast float %708, %700
  %710 = call float @dx.op.dot2.f32(i32 54, float %678, float %679, float %678, float %679)  ; Dot2(ax,ay,bx,by)
  %711 = fmul fast float %710, 0x3FE3333340000000
  %712 = fsub fast float 1.000000e+00, %711
  %713 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %712, float %678, float %679, float %712)  ; Dot3(ax,ay,az,bx,by,bz)
  %714 = call float @dx.op.unary.f32(i32 25, float %713)  ; Rsqrt(value)
  %715 = fmul fast float %714, %678
  %716 = fmul fast float %714, %679
  %717 = fmul fast float %712, %714
  %718 = fmul fast float %717, %43
  %719 = fmul fast float %717, %44
  %720 = fmul fast float %717, %45
  %721 = fmul fast float %715, %39
  %722 = fmul fast float %715, %40
  %723 = fmul fast float %715, %41
  %724 = fadd fast float %718, %721
  %725 = fadd fast float %719, %722
  %726 = fadd fast float %720, %723
  %727 = fmul fast float %716, %69
  %728 = fmul fast float %716, %70
  %729 = fmul fast float %716, %71
  %730 = fadd fast float %724, %727
  %731 = fadd fast float %725, %728
  %732 = fadd fast float %726, %729
  %733 = call float @dx.op.dot3.f32(i32 55, float %730, float %731, float %732, float %730, float %731, float %732)  ; Dot3(ax,ay,az,bx,by,bz)
  %734 = call float @dx.op.unary.f32(i32 25, float %733)  ; Rsqrt(value)
  %735 = fmul fast float %730, %734
  %736 = fmul fast float %731, %734
  %737 = fmul fast float %732, %734
  %738 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %739 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %740 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %741 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %742 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %743 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %744 = fadd fast float %738, %105
  %745 = fadd fast float %739, %106
  %746 = fadd fast float %740, %107
  %747 = fadd fast float %741, %105
  %748 = fadd fast float %742, %106
  %749 = fadd fast float %743, %107
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 0
  %752 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %753 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %757 = fmul fast float %751, %58
  %758 = fmul fast float %757, %755
  %759 = fmul fast float %752, %59
  %760 = fmul fast float %759, %756
  %761 = fptoui float %758 to i32
  %762 = fptoui float %760 to i32
  %763 = fadd fast float %751, -1.000000e+00
  %764 = fadd fast float %752, -1.000000e+00
  %765 = fptoui float %763 to i32
  %766 = fptoui float %764 to i32
  %767 = call i32 @dx.op.binary.i32(i32 40, i32 %761, i32 %765)  ; UMin(a,b)
  %768 = call i32 @dx.op.binary.i32(i32 40, i32 %762, i32 %766)  ; UMin(a,b)
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %772 = fmul fast float %770, %53
  %773 = fsub fast float %772, %771
  %774 = fadd fast float %753, -1.000000e+00
  %775 = call float @dx.op.binary.f32(i32 36, float %773, float %774)  ; FMin(a,b)
  %776 = fptoui float %775 to i32
  %777 = fptoui float %751 to i32
  %778 = fptoui float %752 to i32
  %779 = mul i32 %776, %778
  %780 = add i32 %779, %768
  %781 = mul i32 %780, %777
  %782 = add i32 %781, %767
  %783 = shl i32 %782, 2
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 1023
  %787 = lshr i32 %785, 10
  %788 = icmp eq i32 %786, 0
  br i1 %788, label %1214, label %789

; <label>:789                                     ; preds = %677
  %790 = and i32 %785, 1023
  br label %791

; <label>:791                                     ; preds = %917, %789
  %792 = phi float [ %918, %917 ], [ 0.000000e+00, %789 ]
  %793 = phi float [ %919, %917 ], [ %709, %789 ]
  %794 = phi float [ %920, %917 ], [ %690, %789 ]
  %795 = phi float [ %921, %917 ], [ 0.000000e+00, %789 ]
  %796 = phi float [ %922, %917 ], [ 0.000000e+00, %789 ]
  %797 = phi float [ %923, %917 ], [ %683, %789 ]
  %798 = phi float [ %924, %917 ], [ %684, %789 ]
  %799 = phi float [ %925, %917 ], [ %685, %789 ]
  %800 = phi float [ %926, %917 ], [ %735, %789 ]
  %801 = phi float [ %927, %917 ], [ %736, %789 ]
  %802 = phi float [ %928, %917 ], [ %737, %789 ]
  %803 = phi float [ %929, %917 ], [ %689, %789 ]
  %804 = phi float [ %930, %917 ], [ %688, %789 ]
  %805 = phi float [ %931, %917 ], [ 0.000000e+00, %789 ]
  %806 = phi float [ %932, %917 ], [ %686, %789 ]
  %807 = phi float [ %933, %917 ], [ %680, %789 ]
  %808 = phi float [ %934, %917 ], [ %681, %789 ]
  %809 = phi float [ %935, %917 ], [ %682, %789 ]
  %810 = phi i32 [ %867, %917 ], [ 0, %789 ]
  %811 = add nuw nsw i32 %810, %787
  %812 = shl i32 %811, 2
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = shl i32 %814, 8
  %816 = or i32 %815, 48
  %817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = extractvalue %dx.types.ResRet.f32 %817, 3
  %822 = or i32 %815, 64
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = extractvalue %dx.types.ResRet.i32 %823, 1
  %826 = or i32 %815, 80
  %827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 2
  %829 = extractvalue %dx.types.ResRet.f32 %827, 3
  %830 = or i32 %815, 96
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = extractvalue %dx.types.ResRet.f32 %831, 3
  %836 = or i32 %815, 112
  %837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 2
  %839 = or i32 %815, 128
  %840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = extractvalue %dx.types.ResRet.f32 %840, 1
  %843 = extractvalue %dx.types.ResRet.f32 %840, 2
  %844 = extractvalue %dx.types.ResRet.f32 %840, 3
  %845 = or i32 %815, 144
  %846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  %851 = or i32 %815, 160
  %852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 2
  %856 = extractvalue %dx.types.ResRet.f32 %852, 3
  %857 = or i32 %815, 192
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = or i32 %815, 208
  %861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = or i32 %815, 248
  %864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.f32 %864, 0
  %866 = extractvalue %dx.types.ResRet.f32 %864, 1
  %867 = add nuw nsw i32 %810, 1
  %868 = bitcast float %821 to i32
  %869 = and i32 %868, 2560
  %870 = icmp eq i32 %869, 0
  %871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = extractvalue %dx.types.ResRet.f32 %871, 3
  %876 = call float @dx.op.dot4.f32(i32 56, float %872, float %873, float %874, float %875, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %877 = or i32 %815, 16
  %878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = extractvalue %dx.types.ResRet.f32 %878, 3
  %883 = call float @dx.op.dot4.f32(i32 56, float %879, float %880, float %881, float %882, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %884 = or i32 %815, 32
  %885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = extractvalue %dx.types.ResRet.f32 %885, 3
  %890 = call float @dx.op.dot4.f32(i32 56, float %886, float %887, float %888, float %889, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %891 = call float @dx.op.unary.f32(i32 27, float %876)  ; Round_ni(value)
  %892 = call float @dx.op.unary.f32(i32 6, float %891)  ; FAbs(value)
  %893 = call float @dx.op.unary.f32(i32 27, float %883)  ; Round_ni(value)
  %894 = call float @dx.op.unary.f32(i32 6, float %893)  ; FAbs(value)
  %895 = call float @dx.op.unary.f32(i32 6, float %890)  ; FAbs(value)
  %896 = call float @dx.op.unary.f32(i32 27, float %895)  ; Round_ni(value)
  %897 = fadd fast float %894, %892
  %898 = fadd fast float %897, %896
  %899 = fcmp fast oeq float %898, 0.000000e+00
  %900 = call float @dx.op.dot4.f32(i32 56, float %872, float %873, float %874, float %875, float %744, float %745, float %746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %901 = call float @dx.op.dot4.f32(i32 56, float %879, float %880, float %881, float %882, float %744, float %745, float %746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %902 = call float @dx.op.dot4.f32(i32 56, float %872, float %873, float %874, float %875, float %747, float %748, float %749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %903 = call float @dx.op.dot4.f32(i32 56, float %879, float %880, float %881, float %882, float %747, float %748, float %749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %904 = fsub fast float %900, %876
  %905 = fsub fast float %902, %876
  %906 = fsub fast float %901, %883
  %907 = fsub fast float %903, %883
  %908 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %911 = fadd fast float %910, %908
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %914 = fcmp fast ogt float %912, %913
  %915 = and i1 %899, %914
  %916 = and i1 %870, %915
  br i1 %916, label %937, label %917

; <label>:917                                     ; preds = %1200, %1018, %937, %791
  %918 = phi float [ %792, %937 ], [ %1021, %1018 ], [ %1021, %1200 ], [ %792, %791 ]
  %919 = phi float [ %793, %937 ], [ %793, %1018 ], [ %1175, %1200 ], [ %793, %791 ]
  %920 = phi float [ %794, %937 ], [ %794, %1018 ], [ %1173, %1200 ], [ %794, %791 ]
  %921 = phi float [ %795, %937 ], [ %795, %1018 ], [ %1145, %1200 ], [ %795, %791 ]
  %922 = phi float [ %796, %937 ], [ %796, %1018 ], [ %1143, %1200 ], [ %796, %791 ]
  %923 = phi float [ %797, %937 ], [ %797, %1018 ], [ %1210, %1200 ], [ %797, %791 ]
  %924 = phi float [ %798, %937 ], [ %798, %1018 ], [ %1211, %1200 ], [ %798, %791 ]
  %925 = phi float [ %799, %937 ], [ %799, %1018 ], [ %1212, %1200 ], [ %799, %791 ]
  %926 = phi float [ %800, %937 ], [ %800, %1018 ], [ %1124, %1200 ], [ %800, %791 ]
  %927 = phi float [ %801, %937 ], [ %801, %1018 ], [ %1125, %1200 ], [ %801, %791 ]
  %928 = phi float [ %802, %937 ], [ %802, %1018 ], [ %1126, %1200 ], [ %802, %791 ]
  %929 = phi float [ %803, %937 ], [ %803, %1018 ], [ %1153, %1200 ], [ %803, %791 ]
  %930 = phi float [ %804, %937 ], [ %804, %1018 ], [ %1150, %1200 ], [ %804, %791 ]
  %931 = phi float [ %805, %937 ], [ %805, %1018 ], [ %1147, %1200 ], [ %805, %791 ]
  %932 = phi float [ %806, %937 ], [ %806, %1018 ], [ %1141, %1200 ], [ %806, %791 ]
  %933 = phi float [ %807, %937 ], [ %807, %1018 ], [ %1136, %1200 ], [ %807, %791 ]
  %934 = phi float [ %808, %937 ], [ %808, %1018 ], [ %1137, %1200 ], [ %808, %791 ]
  %935 = phi float [ %809, %937 ], [ %809, %1018 ], [ %1138, %1200 ], [ %809, %791 ]
  %936 = icmp eq i32 %867, %790
  br i1 %936, label %1213, label %791

; <label>:937                                     ; preds = %791
  %938 = extractvalue %dx.types.ResRet.f32 %837, 3
  %939 = extractvalue %dx.types.ResRet.f32 %837, 1
  %940 = extractvalue %dx.types.ResRet.f32 %837, 0
  %941 = extractvalue %dx.types.ResRet.f32 %827, 1
  %942 = extractvalue %dx.types.ResRet.f32 %827, 0
  %943 = extractvalue %dx.types.ResRet.i32 %823, 3
  %944 = extractvalue %dx.types.ResRet.i32 %823, 2
  %945 = add i32 %943, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %946, %dx.types.Handle %947, float %876, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float %904, float %906, float undef, float %905, float %907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = fmul fast float %949, %942
  %951 = fadd fast float %950, %941
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = fmul fast float %876, %832
  %954 = call float @dx.op.tertiary.f32(i32 46, float %833, float %883, float %953)  ; FMad(a,b,c)
  %955 = fadd fast float %954, %940
  %956 = fmul fast float %876, %834
  %957 = call float @dx.op.tertiary.f32(i32 46, float %835, float %883, float %956)  ; FMad(a,b,c)
  %958 = fadd fast float %957, %939
  %959 = fmul fast float %904, %832
  %960 = call float @dx.op.tertiary.f32(i32 46, float %833, float %906, float %959)  ; FMad(a,b,c)
  %961 = fmul fast float %904, %834
  %962 = call float @dx.op.tertiary.f32(i32 46, float %835, float %906, float %961)  ; FMad(a,b,c)
  %963 = fmul fast float %905, %832
  %964 = call float @dx.op.tertiary.f32(i32 46, float %833, float %907, float %963)  ; FMad(a,b,c)
  %965 = fmul fast float %905, %834
  %966 = call float @dx.op.tertiary.f32(i32 46, float %835, float %907, float %965)  ; FMad(a,b,c)
  %967 = add i32 %944, 0
  %968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %967, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %968, %dx.types.Handle %947, float %955, float %958, float undef, float undef, i32 0, i32 0, i32 undef, float %960, float %962, float undef, float %964, float %966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 0
  %971 = and i32 %868, 1024
  %972 = icmp ne i32 %971, 0
  %973 = fcmp fast ogt float %970, 0x3FE0101020000000
  %974 = uitofp i1 %973 to float
  %975 = select i1 %972, float %974, float %970
  %976 = and i32 %868, 8192
  %977 = icmp ne i32 %976, 0
  %978 = select i1 %977, float %938, float 1.000000e+00
  %979 = fmul fast float %876, 2.000000e+00
  %980 = fadd fast float %979, -1.000000e+00
  %981 = call float @dx.op.unary.f32(i32 6, float %980)  ; FAbs(value)
  %982 = fmul fast float %981, %865
  %983 = fsub fast float %982, %865
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %985 = fmul fast float %883, 2.000000e+00
  %986 = fadd fast float %985, -1.000000e+00
  %987 = call float @dx.op.unary.f32(i32 6, float %986)  ; FAbs(value)
  %988 = fmul fast float %987, %866
  %989 = fsub fast float %988, %866
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = fmul fast float %895, %828
  %992 = fsub fast float %991, %828
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fmul fast float %952, %978
  %995 = fmul fast float %994, %949
  %996 = fmul fast float %995, %984
  %997 = fmul fast float %996, %975
  %998 = fmul fast float %997, %990
  %999 = fmul fast float %998, %993
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1003 = fsub fast float %912, %1002
  %1004 = fmul fast float %1003, %1001
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = fmul fast float %999, %829
  %1007 = fadd fast float %999, %829
  %1008 = fmul fast float %1007, %838
  %1009 = fsub fast float %1008, %838
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1011 = and i32 %868, 128
  %1012 = icmp ne i32 %1011, 0
  %1013 = select i1 %1012, float %1010, float %1006
  %1014 = fmul fast float %1013, %1005
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = fcmp fast ugt float %1014, %1016
  br i1 %1017, label %1018, label %917

; <label>:1018                                    ; preds = %937
  %1019 = select i1 %977, float %1014, float 0.000000e+00
  %1020 = fadd fast float %1019, %792
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  br i1 %977, label %917, label %1022

; <label>:1022                                    ; preds = %1018
  %1023 = and i32 %868, 4
  %1024 = and i32 %868, 8
  %1025 = add i32 %824, 0
  %1026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1025, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1028 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1026, %dx.types.Handle %1027, float %955, float %958, float undef, float undef, i32 0, i32 0, i32 undef, float %960, float %962, float undef, float %964, float %966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = extractvalue %dx.types.ResRet.f32 %1028, 3
  %1033 = bitcast float %850 to i32
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = lshr i32 %1033, 8
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1032, %1035
  %1040 = fadd fast float %1039, %1038
  %1041 = fmul fast float %1040, 0x3F70101000000000
  %1042 = add i32 %825, 0
  %1043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1042, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1044 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1043, %dx.types.Handle %1027, float %955, float %958, float undef, float undef, i32 0, i32 0, i32 undef, float %960, float %962, float undef, float %964, float %966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1049 = bitcast float %844 to i32
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = lshr i32 %1049, 8
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = lshr i32 %1049, 16
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1057, 0x3F70101000000000
  %1059 = fmul fast float %1045, %1051
  %1060 = fadd fast float %1059, %1054
  %1061 = fmul fast float %1060, 0x3F70101000000000
  %1062 = fadd fast float %1046, -5.000000e-01
  %1063 = fadd fast float %1048, -5.000000e-01
  %1064 = fmul fast float %1062, %1058
  %1065 = fmul fast float %1063, %1058
  %1066 = fadd fast float %1064, 5.000000e-01
  %1067 = fadd fast float %1065, 5.000000e-01
  %1068 = fmul fast float %1029, %853
  %1069 = fmul fast float %1030, %854
  %1070 = fmul fast float %1031, %855
  %1071 = fmul fast float %1066, 2.000000e+00
  %1072 = fadd fast float %1071, -1.000000e+00
  %1073 = fmul fast float %1067, 2.000000e+00
  %1074 = fadd fast float %1073, -1.000000e+00
  %1075 = fadd fast float %1072, %1074
  %1076 = fmul fast float %1075, 5.000000e-01
  %1077 = fsub fast float %1072, %1074
  %1078 = fmul fast float %1077, 5.000000e-01
  %1079 = call float @dx.op.unary.f32(i32 6, float %1076)  ; FAbs(value)
  %1080 = fsub fast float 1.000000e+00, %1079
  %1081 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1082 = fsub fast float %1080, %1081
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1076, float %1078, float %1082, float %1076, float %1078, float %1082)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call float @dx.op.unary.f32(i32 25, float %1083)  ; Rsqrt(value)
  %1085 = fmul fast float %1076, %1084
  %1086 = fmul fast float %1078, %1084
  %1087 = fmul fast float %1084, %1082
  %1088 = fmul fast float %1087, %818
  %1089 = fmul fast float %1087, %819
  %1090 = fmul fast float %1087, %820
  %1091 = fmul fast float %1085, %841
  %1092 = fmul fast float %1085, %842
  %1093 = fmul fast float %1085, %843
  %1094 = fadd fast float %1091, %1088
  %1095 = fadd fast float %1092, %1089
  %1096 = fadd fast float %1093, %1090
  %1097 = fmul fast float %1086, %847
  %1098 = fmul fast float %1086, %848
  %1099 = fmul fast float %1086, %849
  %1100 = fadd fast float %1094, %1097
  %1101 = fadd fast float %1095, %1098
  %1102 = fadd fast float %1096, %1099
  %1103 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1101, float %1102, float %1100, float %1101, float %1102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = call float @dx.op.unary.f32(i32 25, float %1103)  ; Rsqrt(value)
  %1105 = fmul fast float %1100, %1104
  %1106 = fmul fast float %1101, %1104
  %1107 = fmul fast float %1102, %1104
  %1108 = icmp ne i32 %1024, 0
  %1109 = select i1 %1108, float 1.000000e+00, float 0.000000e+00
  %1110 = fmul fast float %1014, %1109
  %1111 = and i32 %868, 1
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1113, label %1117

; <label>:1113                                    ; preds = %1022
  %1114 = fsub fast float %1105, %800
  %1115 = fsub fast float %1106, %801
  %1116 = fsub fast float %1107, %802
  br label %1117

; <label>:1117                                    ; preds = %1113, %1022
  %1118 = phi float [ %1114, %1113 ], [ %1105, %1022 ]
  %1119 = phi float [ %1115, %1113 ], [ %1106, %1022 ]
  %1120 = phi float [ %1116, %1113 ], [ %1107, %1022 ]
  %1121 = fmul float %1120, %1110
  %1122 = fmul float %1119, %1110
  %1123 = fmul float %1118, %1110
  %1124 = fadd fast float %1123, %800
  %1125 = fadd fast float %1122, %801
  %1126 = fadd fast float %1121, %802
  %1127 = icmp ne i32 %1023, 0
  %1128 = select i1 %1127, float 1.000000e+00, float 0.000000e+00
  %1129 = fmul fast float %1014, %1128
  %1130 = fsub fast float %1068, %807
  %1131 = fsub fast float %1069, %808
  %1132 = fsub fast float %1070, %809
  %1133 = fmul fast float %1130, %1129
  %1134 = fmul fast float %1131, %1129
  %1135 = fmul fast float %1132, %1129
  %1136 = fadd fast float %1133, %807
  %1137 = fadd fast float %1134, %808
  %1138 = fadd fast float %1135, %809
  %1139 = fsub fast float %1041, %806
  %1140 = fmul fast float %1139, %1129
  %1141 = fadd fast float %1140, %806
  %1142 = fmul fast float %1129, %796
  %1143 = fsub fast float %796, %1142
  %1144 = fmul fast float %1129, %795
  %1145 = fsub fast float %795, %1144
  %1146 = fadd fast float %1014, %805
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1148 = fsub fast float %1061, %804
  %1149 = fmul fast float %1148, %1110
  %1150 = fadd fast float %1149, %804
  %1151 = fsub fast float %1047, %803
  %1152 = fmul fast float %1151, %1110
  %1153 = fadd fast float %1152, %803
  %1154 = call float @dx.op.dot3.f32(i32 55, float %1068, float %1069, float %1070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1158 = fmul fast float %1157, %1154
  %1159 = fadd fast float %1158, %1156
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = bitcast float %856 to i32
  %1162 = and i32 %1161, 65535
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = lshr i32 %1161, 16
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = fcmp fast oge float %1163, 0.000000e+00
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1169 = select i1 %1166, float %1163, float %1168
  %1170 = fadd fast float %1169, %1165
  %1171 = fsub fast float %1160, %794
  %1172 = fmul fast float %1171, %1014
  %1173 = fadd fast float %1172, %794
  %1174 = fmul fast float %1170, %1014
  %1175 = call float @dx.op.binary.f32(i32 35, float %793, float %1174)  ; FMax(a,b)
  %1176 = and i32 %868, 16
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1200, label %1178

; <label>:1178                                    ; preds = %1117
  %1179 = bitcast float %862 to i32
  %1180 = add i32 %859, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1180, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1181, %dx.types.Handle %1027, float %955, float %958, float undef, float undef, i32 0, i32 0, i32 undef, float %960, float %962, float undef, float %964, float %966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = and i32 %1179, 65535
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = fmul fast float %1183, %853
  %1189 = fmul fast float %1184, %854
  %1190 = fmul fast float %1185, %855
  %1191 = and i32 %868, 16384
  %1192 = icmp ne i32 %1191, 0
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = select i1 %1192, float %1194, float 1.000000e+00
  %1196 = fmul fast float %1195, %1187
  %1197 = fmul fast float %1188, %1196
  %1198 = fmul fast float %1189, %1196
  %1199 = fmul fast float %1190, %1196
  br label %1200

; <label>:1200                                    ; preds = %1178, %1117
  %1201 = phi float [ %1197, %1178 ], [ 0.000000e+00, %1117 ]
  %1202 = phi float [ %1198, %1178 ], [ 0.000000e+00, %1117 ]
  %1203 = phi float [ %1199, %1178 ], [ 0.000000e+00, %1117 ]
  %1204 = fsub fast float %1201, %797
  %1205 = fsub fast float %1202, %798
  %1206 = fsub fast float %1203, %799
  %1207 = fmul fast float %1204, %1014
  %1208 = fmul fast float %1205, %1014
  %1209 = fmul fast float %1206, %1014
  %1210 = fadd fast float %1207, %797
  %1211 = fadd fast float %1208, %798
  %1212 = fadd fast float %1209, %799
  br label %917

; <label>:1213                                    ; preds = %917
  br label %1214

; <label>:1214                                    ; preds = %1213, %677
  %1215 = phi float [ 0.000000e+00, %677 ], [ %918, %1213 ]
  %1216 = phi float [ %709, %677 ], [ %919, %1213 ]
  %1217 = phi float [ %690, %677 ], [ %920, %1213 ]
  %1218 = phi float [ 0.000000e+00, %677 ], [ %921, %1213 ]
  %1219 = phi float [ 0.000000e+00, %677 ], [ %922, %1213 ]
  %1220 = phi float [ %683, %677 ], [ %923, %1213 ]
  %1221 = phi float [ %684, %677 ], [ %924, %1213 ]
  %1222 = phi float [ %685, %677 ], [ %925, %1213 ]
  %1223 = phi float [ %735, %677 ], [ %926, %1213 ]
  %1224 = phi float [ %736, %677 ], [ %927, %1213 ]
  %1225 = phi float [ %737, %677 ], [ %928, %1213 ]
  %1226 = phi float [ %689, %677 ], [ %929, %1213 ]
  %1227 = phi float [ %688, %677 ], [ %930, %1213 ]
  %1228 = phi float [ 0.000000e+00, %677 ], [ %931, %1213 ]
  %1229 = phi float [ %686, %677 ], [ %932, %1213 ]
  %1230 = phi float [ %680, %677 ], [ %933, %1213 ]
  %1231 = phi float [ %681, %677 ], [ %934, %1213 ]
  %1232 = phi float [ %682, %677 ], [ %935, %1213 ]
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1223, float %1224, float %1225, float %1223, float %1224, float %1225)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = call float @dx.op.unary.f32(i32 25, float %1233)  ; Rsqrt(value)
  %1235 = fmul fast float %1234, %1223
  %1236 = fmul fast float %1234, %1224
  %1237 = fmul fast float %1234, %1225
  %1238 = fadd fast float %1228, %687
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float %1235, float %1236, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = call float @dx.op.unary.f32(i32 25, float %1240)  ; Rsqrt(value)
  %1242 = fmul fast float %1241, %1235
  %1243 = fmul fast float %1241, %1236
  %1244 = fmul fast float %1241, %1237
  %1245 = fadd fast float %1229, 0xBFB99999A0000000
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fmul fast float %1246, 0x3FF1C71C80000000
  %1248 = call float @dx.op.binary.f32(i32 36, float %1229, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1249 = fsub fast float 1.000000e+00, %1247
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %1250, %1230
  %1252 = fmul fast float %1250, %1231
  %1253 = fmul fast float %1250, %1232
  %1254 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1255 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1256 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1257 = fmul fast float %1247, %1230
  %1258 = fmul fast float %1247, %1231
  %1259 = fmul fast float %1247, %1232
  %1260 = fadd fast float %1257, %1248
  %1261 = fadd fast float %1258, %1248
  %1262 = fadd fast float %1259, %1248
  %1263 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1264 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1265 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1266 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.i32 %1267, 3
  %1269 = and i32 %1268, 8
  %1270 = icmp ne i32 %1269, 0
  %1271 = call float @dx.op.binary.f32(i32 35, float %1254, float %1230)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float %1255, float %1230)  ; FMax(a,b)
  %1273 = call float @dx.op.binary.f32(i32 35, float %1256, float %1230)  ; FMax(a,b)
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1254, float %1255, float %1256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = select i1 %176, float %1230, float %1254
  %1276 = select i1 %176, float %1274, float %1255
  %1277 = select i1 %176, float 1.000000e+00, float %1256
  %1278 = select i1 %1270, float %1271, float %1275
  %1279 = select i1 %1270, float %1272, float %1276
  %1280 = select i1 %1270, float %1273, float %1277
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1285 = fadd fast float %1282, %105
  %1286 = fadd fast float %1283, %106
  %1287 = fadd fast float %1284, %107
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = fsub fast float %1285, %1289
  %1292 = fsub fast float %1286, %1290
  %1293 = fmul fast float %1291, %1291
  %1294 = fmul fast float %1292, %1292
  %1295 = fadd fast float %1293, %1294
  %1296 = call float @dx.op.unary.f32(i32 24, float %1295)  ; Sqrt(value)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1298 = fcmp fast olt float %1296, %1297
  br i1 %1298, label %1299, label %1366

; <label>:1299                                    ; preds = %1214
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1307 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1308 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1310 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1311 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1312 = fadd fast float %1309, %1285
  %1313 = fadd fast float %1310, %1286
  %1314 = fadd fast float %1311, %1287
  %1315 = fmul fast float %1312, %1301
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1303, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1305, float %1316)  ; FMad(a,b,c)
  %1318 = fmul fast float %1312, %1306
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1307, float %1318)  ; FMad(a,b,c)
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1308, float %1319)  ; FMad(a,b,c)
  %1321 = fsub fast float %1317, %1309
  %1322 = fsub fast float %1320, %1310
  %1323 = fsub fast float %1321, %1289
  %1324 = fadd fast float %1323, %1297
  %1325 = fsub fast float %1322, %1290
  %1326 = fadd fast float %1325, %1297
  %1327 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1328 = fmul fast float %1324, %1327
  %1329 = fmul fast float %1326, %1327
  %1330 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1331 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1332 = fsub fast float 1.000000e+00, %1330
  %1333 = fsub fast float 1.000000e+00, %1331
  %1334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1332, float %1333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = fcmp fast ugt float %1335, 0.000000e+00
  br i1 %1336, label %1337, label %1640

; <label>:1337                                    ; preds = %1299
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1340 = fmul fast float %1339, %1335
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 3
  %1342 = fadd fast float %1341, %1340
  %1343 = extractvalue %dx.types.CBufRet.f32 %1304, 2
  %1344 = fadd fast float %1342, %1311
  %1345 = fmul fast float %1317, %1305
  %1346 = call float @dx.op.tertiary.f32(i32 46, float %1320, float %1308, float %1345)  ; FMad(a,b,c)
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1344, float %1343, float %1346)  ; FMad(a,b,c)
  %1348 = fsub fast float %1347, %1311
  %1349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.f32 %1349, 2
  %1351 = fsub fast float %1348, %1350
  %1352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1332, float %1333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1332, float %1333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = fadd fast float %1357, %1353
  %1361 = fmul fast float %1360, 0x3F847AE140000000
  %1362 = fadd fast float %1358, %1354
  %1363 = fmul fast float %1362, 0x3F847AE140000000
  %1364 = fadd fast float %1359, %1355
  %1365 = fmul fast float %1364, 0x3F847AE140000000
  br label %1640

; <label>:1366                                    ; preds = %1214
  %1367 = and i32 %152, 1
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1640, label %1369

; <label>:1369                                    ; preds = %1366
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1377 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1378 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1379 = extractvalue %dx.types.CBufRet.f32 %1370, 3
  %1380 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1381 = extractvalue %dx.types.CBufRet.f32 %1374, 3
  %1382 = fadd fast float %1379, %1285
  %1383 = fadd fast float %1380, %1286
  %1384 = fadd fast float %1381, %1287
  %1385 = fmul fast float %1382, %1371
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1383, float %1373, float %1385)  ; FMad(a,b,c)
  %1387 = call float @dx.op.tertiary.f32(i32 46, float %1384, float %1375, float %1386)  ; FMad(a,b,c)
  %1388 = fmul fast float %1382, %1376
  %1389 = call float @dx.op.tertiary.f32(i32 46, float %1383, float %1377, float %1388)  ; FMad(a,b,c)
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1384, float %1378, float %1389)  ; FMad(a,b,c)
  %1391 = fsub fast float %1387, %1379
  %1392 = fsub fast float %1390, %1380
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 3
  %1400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.i32 %1400, 0
  %1402 = extractvalue %dx.types.CBufRet.i32 %1400, 1
  %1403 = udiv i32 %1402, %1401
  %1404 = fsub fast float %1391, %1394
  %1405 = fsub fast float %1392, %1395
  %1406 = call float @dx.op.binary.f32(i32 35, float %1404, float 0.000000e+00)  ; FMax(a,b)
  %1407 = call float @dx.op.binary.f32(i32 35, float %1405, float 0.000000e+00)  ; FMax(a,b)
  %1408 = call float @dx.op.binary.f32(i32 36, float %1406, float %1396)  ; FMin(a,b)
  %1409 = call float @dx.op.binary.f32(i32 36, float %1407, float %1397)  ; FMin(a,b)
  %1410 = add i32 %1401, -1
  %1411 = add i32 %1403, -1
  %1412 = fmul fast float %1408, %1399
  %1413 = fmul fast float %1409, %1399
  %1414 = fptoui float %1412 to i32
  %1415 = fptoui float %1413 to i32
  %1416 = call i32 @dx.op.binary.i32(i32 40, i32 %1414, i32 %1410)  ; UMin(a,b)
  %1417 = call i32 @dx.op.binary.i32(i32 40, i32 %1415, i32 %1411)  ; UMin(a,b)
  %1418 = mul i32 %1417, %1401
  %1419 = add i32 %1418, %1416
  %1420 = shl i32 %1419, 2
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = icmp eq i32 %1422, -1
  br i1 %1423, label %1640, label %1424

; <label>:1424                                    ; preds = %1369
  %1425 = mul i32 %1422, 148
  %1426 = add i32 %1425, 4
  %1427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = add i32 %1425, 8
  %1430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = add i32 %1425, 36
  %1433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = add i32 %1425, 60
  %1436 = add i32 %1425, 92
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %1425, 116
  %1440 = fsub fast float %1391, %1428
  %1441 = fsub fast float %1392, %1431
  %1442 = fmul fast float %1399, %1440
  %1443 = fmul fast float %1399, %1441
  %1444 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1445 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1446 = fsub fast float 1.000000e+00, %1445
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 2
  %1449 = call float @dx.op.unary.f32(i32 83, float %1444)  ; DerivCoarseX(value)
  %1450 = call float @dx.op.unary.f32(i32 83, float %1446)  ; DerivCoarseX(value)
  %1451 = call float @dx.op.unary.f32(i32 84, float %1444)  ; DerivCoarseY(value)
  %1452 = call float @dx.op.unary.f32(i32 84, float %1446)  ; DerivCoarseY(value)
  %1453 = fmul fast float %1449, %1448
  %1454 = fmul fast float %1450, %1448
  %1455 = fmul fast float %1451, %1448
  %1456 = fmul fast float %1452, %1448
  %1457 = call float @dx.op.dot2.f32(i32 54, float %1455, float %1456, float %1455, float %1456)  ; Dot2(ax,ay,bx,by)
  %1458 = call float @dx.op.dot2.f32(i32 54, float %1453, float %1454, float %1453, float %1454)  ; Dot2(ax,ay,bx,by)
  %1459 = call float @dx.op.binary.f32(i32 35, float %1458, float %1457)  ; FMax(a,b)
  %1460 = call float @dx.op.unary.f32(i32 23, float %1459)  ; Log(value)
  %1461 = fmul fast float %1460, 5.000000e-01
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1464 = fadd fast float %1463, %1461
  %1465 = call float @dx.op.binary.f32(i32 35, float %1464, float 0.000000e+00)  ; FMax(a,b)
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1468 = fadd fast float %1467, %1465
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 3
  %1471 = fadd fast float %1468, %1470
  %1472 = add i32 %1438, 0
  %1473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1472, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1474 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1473, i32 0)  ; GetDimensions(handle,mipLevel)
  %1475 = extractvalue %dx.types.Dimensions %1474, 0
  %1476 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1475)  ; FirstbitLo(value)
  %1477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.i32 %1477, 1
  %1479 = sub nsw i32 %1478, %1476
  %1480 = sitofp i32 %1479 to float
  %1481 = fsub fast float %1471, %1480
  %1482 = call float @dx.op.binary.f32(i32 35, float %1481, float 0.000000e+00)  ; FMax(a,b)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1473, %dx.types.Handle %33, float %1444, float %1446, float %1434, float undef, i32 0, i32 0, i32 undef, float %1482)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = fcmp ule float %1484, 0x3FE0101020000000
  %1486 = extractvalue %dx.types.CBufRet.i32 %1477, 0
  %1487 = and i32 %1486, 128
  %1488 = icmp ne i32 %1487, 0
  %1489 = and i1 %1485, %1488
  br i1 %1489, label %1640, label %1490

; <label>:1490                                    ; preds = %1424
  %1491 = add i32 %1425, 20
  %1492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = add i32 %1425, 24
  %1495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = add i32 %1425, 40
  %1498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = add i32 %1425, 96
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 2
  %1505 = fmul fast float %1504, %1444
  %1506 = fmul fast float %1504, %1446
  %1507 = extractvalue %dx.types.CBufRet.f32 %1503, 3
  %1508 = fadd fast float %1505, %1507
  %1509 = fadd fast float %1506, %1507
  %1510 = add i32 %1502, 0
  %1511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1510, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1512 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1511, i32 0)  ; GetDimensions(handle,mipLevel)
  %1513 = extractvalue %dx.types.Dimensions %1512, 0
  %1514 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1513)  ; FirstbitLo(value)
  %1515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.i32 %1515, 1
  %1517 = sub nsw i32 %1516, %1514
  %1518 = sitofp i32 %1517 to float
  %1519 = fsub fast float %1468, %1518
  %1520 = call float @dx.op.binary.f32(i32 35, float %1519, float 0.000000e+00)  ; FMax(a,b)
  %1521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1511, %dx.types.Handle %33, float %1508, float %1509, float %1499, float undef, i32 0, i32 0, i32 undef, float %1520)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = fmul fast float %1522, %1493
  %1524 = fadd fast float %1523, %1496
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 3
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 3
  %1533 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1534 = fadd fast float %1530, %1391
  %1535 = fadd fast float %1532, %1392
  %1536 = fadd fast float %1524, %1533
  %1537 = fmul fast float %1534, %1526
  %1538 = call float @dx.op.tertiary.f32(i32 46, float %1535, float %1527, float %1537)  ; FMad(a,b,c)
  %1539 = call float @dx.op.tertiary.f32(i32 46, float %1536, float %1528, float %1538)  ; FMad(a,b,c)
  %1540 = fsub fast float %1539, %1533
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 2
  %1543 = fsub fast float %1540, %1542
  %1544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.i32 %1544, 0
  %1546 = call i32 @dx.op.binary.i32(i32 40, i32 %1422, i32 %1545)  ; UMin(a,b)
  %1547 = mul i32 %1546, 36
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = add i32 %1547, 4
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 0
  %1553 = fmul fast float %1552, %1444
  %1554 = fmul fast float %1552, %1446
  %1555 = extractvalue %dx.types.CBufRet.f32 %1551, 1
  %1556 = fadd fast float %1553, %1555
  %1557 = fadd fast float %1554, %1555
  %1558 = icmp eq i32 %1549, 0
  br i1 %1558, label %1627, label %1559

; <label>:1559                                    ; preds = %1490
  br label %1560

; <label>:1560                                    ; preds = %1617, %1559
  %1561 = phi float [ %1618, %1617 ], [ 0.000000e+00, %1559 ]
  %1562 = phi float [ %1619, %1617 ], [ 0.000000e+00, %1559 ]
  %1563 = phi float [ %1620, %1617 ], [ 0.000000e+00, %1559 ]
  %1564 = phi float [ %1621, %1617 ], [ 0.000000e+00, %1559 ]
  %1565 = phi float [ %1622, %1617 ], [ 0.000000e+00, %1559 ]
  %1566 = phi float [ %1623, %1617 ], [ 0.000000e+00, %1559 ]
  %1567 = phi i32 [ %1624, %1617 ], [ 0, %1559 ]
  %1568 = shl i32 %1567, 2
  %1569 = add i32 %1435, %1568
  %1570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = add i32 %1439, %1568
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %1574, 0
  %1576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1575, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1577 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1576, i32 0)  ; GetDimensions(handle,mipLevel)
  %1578 = extractvalue %dx.types.Dimensions %1577, 0
  %1579 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1578)  ; FirstbitLo(value)
  %1580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.i32 %1580, 1
  %1582 = sub nsw i32 %1581, %1579
  %1583 = sitofp i32 %1582 to float
  %1584 = fsub fast float %1468, %1583
  %1585 = call float @dx.op.binary.f32(i32 35, float %1584, float 0.000000e+00)  ; FMax(a,b)
  %1586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1576, %dx.types.Handle %33, float %1556, float %1557, float %1571, float undef, i32 0, i32 0, i32 undef, float %1585)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = fcmp fast ogt float %1587, 0.000000e+00
  br i1 %1588, label %1589, label %1617

; <label>:1589                                    ; preds = %1560
  %1590 = add i32 %1550, %1568
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 32767
  %1594 = mul nuw nsw i32 %1593, 928
  %1595 = add nuw nsw i32 %1594, 48
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = add nuw nsw i32 %1594, 60
  %1601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = fmul fast float %1597, %1587
  %1606 = fmul fast float %1598, %1587
  %1607 = fmul fast float %1599, %1587
  %1608 = fadd fast float %1605, %1561
  %1609 = fadd fast float %1606, %1562
  %1610 = fadd fast float %1607, %1563
  %1611 = fmul fast float %1602, %1587
  %1612 = fmul fast float %1603, %1587
  %1613 = fmul fast float %1604, %1587
  %1614 = fadd fast float %1611, %1564
  %1615 = fadd fast float %1612, %1565
  %1616 = fadd fast float %1613, %1566
  br label %1617

; <label>:1617                                    ; preds = %1589, %1560
  %1618 = phi float [ %1608, %1589 ], [ %1561, %1560 ]
  %1619 = phi float [ %1609, %1589 ], [ %1562, %1560 ]
  %1620 = phi float [ %1610, %1589 ], [ %1563, %1560 ]
  %1621 = phi float [ %1614, %1589 ], [ %1564, %1560 ]
  %1622 = phi float [ %1615, %1589 ], [ %1565, %1560 ]
  %1623 = phi float [ %1616, %1589 ], [ %1566, %1560 ]
  %1624 = add nuw i32 %1567, 1
  %1625 = icmp eq i32 %1624, %1549
  br i1 %1625, label %1626, label %1560

; <label>:1626                                    ; preds = %1617
  br label %1627

; <label>:1627                                    ; preds = %1626, %1490
  %1628 = phi float [ 0.000000e+00, %1490 ], [ %1618, %1626 ]
  %1629 = phi float [ 0.000000e+00, %1490 ], [ %1619, %1626 ]
  %1630 = phi float [ 0.000000e+00, %1490 ], [ %1620, %1626 ]
  %1631 = phi float [ 0.000000e+00, %1490 ], [ %1621, %1626 ]
  %1632 = phi float [ 0.000000e+00, %1490 ], [ %1622, %1626 ]
  %1633 = phi float [ 0.000000e+00, %1490 ], [ %1623, %1626 ]
  %1634 = fadd fast float %1631, %1628
  %1635 = fmul fast float %1634, 0x3F847AE140000000
  %1636 = fadd fast float %1632, %1629
  %1637 = fmul fast float %1636, 0x3F847AE140000000
  %1638 = fadd fast float %1633, %1630
  %1639 = fmul fast float %1638, 0x3F847AE140000000
  br label %1640

; <label>:1640                                    ; preds = %1627, %1424, %1369, %1366, %1337, %1299
  %1641 = phi float [ %1351, %1337 ], [ -1.310720e+05, %1299 ], [ %1543, %1627 ], [ -1.310720e+05, %1369 ], [ -1.310720e+05, %1424 ], [ -1.310720e+05, %1366 ]
  %1642 = phi float [ %1361, %1337 ], [ 0.000000e+00, %1299 ], [ %1635, %1627 ], [ 0.000000e+00, %1369 ], [ 0.000000e+00, %1424 ], [ 0.000000e+00, %1366 ]
  %1643 = phi float [ %1363, %1337 ], [ 0.000000e+00, %1299 ], [ %1637, %1627 ], [ 0.000000e+00, %1369 ], [ 0.000000e+00, %1424 ], [ 0.000000e+00, %1366 ]
  %1644 = phi float [ %1365, %1337 ], [ 0.000000e+00, %1299 ], [ %1639, %1627 ], [ 0.000000e+00, %1369 ], [ 0.000000e+00, %1424 ], [ 0.000000e+00, %1366 ]
  %1645 = phi i1 [ true, %1337 ], [ false, %1299 ], [ true, %1627 ], [ false, %1369 ], [ false, %1424 ], [ false, %1366 ]
  %1646 = and i32 %152, 3
  %1647 = icmp eq i32 %1646, 1
  %1648 = select i1 %1647, float 1.000000e+00, float 0.000000e+00
  %1649 = fsub fast float %1641, %107
  %1650 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1651 = select i1 %1645, float %1650, float 1.000000e+00
  %1652 = fmul fast float %1651, %1648
  %1653 = icmp eq i32 %1646, 3
  %1654 = select i1 %1653, float 1.000000e+00, float %1652
  %1655 = call float @dx.op.binary.f32(i32 35, float %1215, float %1654)  ; FMax(a,b)
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = fcmp fast une float %1656, 0.000000e+00
  %1658 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1659 = call float @dx.op.unary.f32(i32 25, float %1658)  ; Rsqrt(value)
  br i1 %1657, label %1667, label %1660

; <label>:1660                                    ; preds = %1640
  %1661 = fmul fast float %1659, %105
  %1662 = fmul fast float %1659, %106
  %1663 = fmul fast float %1659, %107
  %1664 = fsub fast float -0.000000e+00, %1661
  %1665 = fsub fast float -0.000000e+00, %1662
  %1666 = fsub fast float -0.000000e+00, %1663
  br label %1835

; <label>:1667                                    ; preds = %1640
  %1668 = fmul fast float %105, %1659
  %1669 = fsub fast float -0.000000e+00, %1668
  %1670 = fmul fast float %106, %1659
  %1671 = fsub fast float -0.000000e+00, %1670
  %1672 = fmul fast float %107, %1659
  %1673 = fsub fast float -0.000000e+00, %1672
  %1674 = call float @dx.op.dot3.f32(i32 55, float %1669, float %1671, float %1673, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1675 = fmul fast float %1656, 2.500000e+00
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fmul fast float %1656, 0x4013FFFFE0000000
  %1678 = fadd fast float %1677, 0xBFFFFFFFE0000000
  %1679 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1680 = fmul fast float %1656, 0x4004000020000000
  %1681 = fadd fast float %1680, 0xBFF8000040000000
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1683 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1684 = fmul fast float %1245, 1.000000e+01
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1686 = fmul fast float %1685, 2.000000e+00
  %1687 = fsub fast float 3.000000e+00, %1686
  %1688 = fmul fast float %1685, %1685
  %1689 = fmul fast float %1688, %1687
  %1690 = fsub fast float 1.000000e+00, %1689
  %1691 = fsub fast float 0x3FE3333340000000, %1266
  %1692 = fmul fast float %1691, 0x400AAAAAA0000000
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fmul fast float %1690, %1693
  %1695 = fmul fast float %1278, 0x3FEA2B8620000000
  %1696 = fmul fast float %1279, 0x3FEA2B8620000000
  %1697 = fmul fast float %1280, 0x3FEA2B8620000000
  %1698 = fadd fast float %1695, 0x3FC81DFBA0000000
  %1699 = fmul fast float %1698, %1278
  %1700 = fadd fast float %1699, 0x3F910E6020000000
  %1701 = fadd fast float %1696, 0x3FC81DFBA0000000
  %1702 = fmul fast float %1701, %1279
  %1703 = fadd fast float %1702, 0x3F910E6020000000
  %1704 = fadd fast float %1697, 0x3FC81DFBA0000000
  %1705 = fmul fast float %1704, %1280
  %1706 = fadd fast float %1705, 0x3F910E6020000000
  %1707 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1708 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1709 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1710 = fsub fast float %1707, %1278
  %1711 = fsub fast float %1708, %1279
  %1712 = fsub fast float %1709, %1280
  %1713 = fmul fast float %1710, %1683
  %1714 = fmul fast float %1713, %1694
  %1715 = fmul fast float %1711, %1683
  %1716 = fmul fast float %1715, %1694
  %1717 = fmul fast float %1712, %1683
  %1718 = fmul fast float %1717, %1694
  %1719 = fadd fast float %1714, %1278
  %1720 = fadd fast float %1716, %1279
  %1721 = fadd fast float %1718, %1280
  %1722 = fmul fast float %1226, %1226
  %1723 = fmul fast float %1722, %1722
  %1724 = fadd fast float %1679, 1.000000e+00
  %1725 = fsub fast float %1724, %1694
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1727 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fsub fast float 1.000000e+00, %1723
  %1730 = call float @dx.op.binary.f32(i32 36, float %1726, float %1729)  ; FMin(a,b)
  %1731 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1732 = call float @dx.op.binary.f32(i32 35, float %1730, float %1731)  ; FMax(a,b)
  %1733 = fadd fast float %1728, 0xBFE4CCCCC0000000
  %1734 = fmul fast float %1733, 0x4006DB6DA0000000
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1736 = fmul fast float %1735, 2.000000e+00
  %1737 = fsub fast float 3.000000e+00, %1736
  %1738 = bitcast float %1263 to i32
  %1739 = ashr i32 %1738, 1
  %1740 = add nsw i32 %1739, 532487669
  %1741 = bitcast i32 %1740 to float
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = bitcast float %1742 to i32
  %1744 = sub nsw i32 2129859010, %1743
  %1745 = bitcast i32 %1744 to float
  %1746 = fmul fast float %1745, 2.000000e+00
  %1747 = bitcast float %1264 to i32
  %1748 = ashr i32 %1747, 1
  %1749 = add nsw i32 %1748, 532487669
  %1750 = bitcast i32 %1749 to float
  %1751 = fsub fast float 1.000000e+00, %1750
  %1752 = bitcast float %1751 to i32
  %1753 = sub nsw i32 2129859010, %1752
  %1754 = bitcast i32 %1753 to float
  %1755 = fmul fast float %1754, 2.000000e+00
  %1756 = bitcast float %1265 to i32
  %1757 = ashr i32 %1756, 1
  %1758 = add nsw i32 %1757, 532487669
  %1759 = bitcast i32 %1758 to float
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = bitcast float %1760 to i32
  %1762 = sub nsw i32 2129859010, %1761
  %1763 = bitcast i32 %1762 to float
  %1764 = fmul fast float %1763, 2.000000e+00
  %1765 = fsub fast float 0x4002A9FBE0000000, %1746
  %1766 = fadd fast float %1746, 0x3FD54FDF00000000
  %1767 = bitcast float %1766 to i32
  %1768 = sub nsw i32 2129859010, %1767
  %1769 = bitcast i32 %1768 to float
  %1770 = fmul fast float %1769, %1765
  %1771 = fmul fast float %1770, %1770
  %1772 = fsub fast float 0x4002A9FBE0000000, %1755
  %1773 = fadd fast float %1755, 0x3FD54FDF00000000
  %1774 = bitcast float %1773 to i32
  %1775 = sub nsw i32 2129859010, %1774
  %1776 = bitcast i32 %1775 to float
  %1777 = fmul fast float %1776, %1772
  %1778 = fmul fast float %1777, %1777
  %1779 = fsub fast float 0x4002A9FBE0000000, %1764
  %1780 = fadd fast float %1764, 0x3FD54FDF00000000
  %1781 = bitcast float %1780 to i32
  %1782 = sub nsw i32 2129859010, %1781
  %1783 = bitcast i32 %1782 to float
  %1784 = fmul fast float %1783, %1779
  %1785 = fmul fast float %1784, %1784
  %1786 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1771)  ; FMax(a,b)
  %1787 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1778)  ; FMax(a,b)
  %1788 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1785)  ; FMax(a,b)
  %1789 = fsub fast float 1.000000e+00, %1674
  %1790 = fadd fast float %1789, %1690
  %1791 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1792 = fsub fast float 1.000000e+00, %1654
  %1793 = fmul fast float %1732, %1792
  %1794 = fmul fast float %1735, %1735
  %1795 = fmul fast float %1794, %1793
  %1796 = fmul fast float %1795, %1737
  %1797 = fmul fast float %1792, 0xBFE99999A0000000
  %1798 = fmul fast float %1797, %1683
  %1799 = fmul fast float %1798, %1694
  %1800 = fadd fast float %1799, 1.000000e+00
  %1801 = fadd fast float %1266, -1.000000e+00
  %1802 = fmul fast float %1800, %1801
  %1803 = fadd fast float %1802, 1.000000e+00
  %1804 = fsub fast float %1786, %1263
  %1805 = fsub fast float %1787, %1264
  %1806 = fsub fast float %1788, %1265
  %1807 = fmul fast float %1796, %1804
  %1808 = fmul fast float %1796, %1805
  %1809 = fmul fast float %1796, %1806
  %1810 = fadd fast float %1807, %1263
  %1811 = fadd fast float %1808, %1264
  %1812 = fadd fast float %1809, %1265
  %1813 = fsub fast float %43, %1242
  %1814 = fsub fast float %44, %1243
  %1815 = fsub fast float %45, %1244
  %1816 = fmul fast float %1796, %1813
  %1817 = fmul fast float %1796, %1814
  %1818 = fmul fast float %1796, %1815
  %1819 = fadd fast float %1816, %1242
  %1820 = fadd fast float %1817, %1243
  %1821 = fadd fast float %1818, %1244
  %1822 = fmul fast float %1796, %1791
  %1823 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1824 = fsub fast float 1.000000e+00, %1823
  %1825 = fmul fast float %1822, %1824
  %1826 = fadd fast float %1825, %1823
  %1827 = fsub fast float 1.000000e+00, %1226
  %1828 = fmul fast float %1796, %1827
  %1829 = fadd fast float %1828, %1226
  %1830 = call float @dx.op.dot3.f32(i32 55, float %1819, float %1820, float %1821, float %1819, float %1820, float %1821)  ; Dot3(ax,ay,az,bx,by,bz)
  %1831 = call float @dx.op.unary.f32(i32 25, float %1830)  ; Rsqrt(value)
  %1832 = fmul fast float %1819, %1831
  %1833 = fmul fast float %1820, %1831
  %1834 = fmul fast float %1821, %1831
  br label %1835

; <label>:1835                                    ; preds = %1667, %1660
  %1836 = phi float [ %1666, %1660 ], [ %1673, %1667 ]
  %1837 = phi float [ %1665, %1660 ], [ %1671, %1667 ]
  %1838 = phi float [ %1664, %1660 ], [ %1669, %1667 ]
  %1839 = phi float [ %1663, %1660 ], [ %1672, %1667 ]
  %1840 = phi float [ %1662, %1660 ], [ %1670, %1667 ]
  %1841 = phi float [ %1661, %1660 ], [ %1668, %1667 ]
  %1842 = phi float [ %1263, %1660 ], [ %1810, %1667 ]
  %1843 = phi float [ %1264, %1660 ], [ %1811, %1667 ]
  %1844 = phi float [ %1265, %1660 ], [ %1812, %1667 ]
  %1845 = phi float [ %1278, %1660 ], [ %1719, %1667 ]
  %1846 = phi float [ %1279, %1660 ], [ %1720, %1667 ]
  %1847 = phi float [ %1280, %1660 ], [ %1721, %1667 ]
  %1848 = phi float [ %1242, %1660 ], [ %1832, %1667 ]
  %1849 = phi float [ %1243, %1660 ], [ %1833, %1667 ]
  %1850 = phi float [ %1244, %1660 ], [ %1834, %1667 ]
  %1851 = phi float [ %1266, %1660 ], [ %1826, %1667 ]
  %1852 = phi float [ %1226, %1660 ], [ %1829, %1667 ]
  %1853 = select i1 %176, float 0.000000e+00, float %1844
  %1854 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1849, float %1850, float %1838, float %1837, float %1836)  ; Dot3(ax,ay,az,bx,by,bz)
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1856 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1840, float %1839, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1857 = fmul fast float %1856, 2.000000e+00
  %1858 = fmul fast float %1857, %1848
  %1859 = fmul fast float %1857, %1849
  %1860 = fmul fast float %1857, %1850
  %1861 = fsub fast float %1841, %1858
  %1862 = fsub fast float %1840, %1859
  %1863 = fsub fast float %1839, %1860
  %1864 = call float @dx.op.binary.f32(i32 36, float %1852, float 1.000000e+00)  ; FMin(a,b)
  %1865 = fsub fast float 1.000000e+00, %1852
  %1866 = bitcast float %1865 to i32
  %1867 = sub nsw i32 2129859010, %1866
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1871 = fadd fast float %1869, %105
  %1872 = fadd fast float %1870, %106
  %1873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.i32 %1873, 0
  %1875 = icmp eq i32 %1874, 1
  br i1 %1875, label %1876, label %1911

; <label>:1876                                    ; preds = %1835
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.CBufRet.f32 %1877, 1
  %1880 = fsub fast float %1871, %1878
  %1881 = fsub fast float %1872, %1879
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = fmul fast float %1880, %1883
  %1886 = fmul fast float %1881, %1884
  %1887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1885, float %1886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = fcmp fast ogt float %1888, 0.000000e+00
  %1890 = extractvalue %dx.types.CBufRet.i32 %1873, 3
  %1891 = icmp ne i32 %1890, 0
  %1892 = and i1 %1889, %1891
  br i1 %1892, label %1893, label %1911, !dx.controlflow.hints !72

; <label>:1893                                    ; preds = %1876
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1897 = fsub fast float %1871, %1895
  %1898 = fsub fast float %1872, %1896
  %1899 = fmul fast float %1897, %1897
  %1900 = fmul fast float %1898, %1898
  %1901 = fadd fast float %1899, %1900
  %1902 = uitofp i32 %1890 to float
  %1903 = fmul fast float %1902, %1902
  %1904 = fcmp fast ogt float %1901, %1903
  br i1 %1904, label %1911, label %1905

; <label>:1905                                    ; preds = %1893
  %1906 = call float @dx.op.unary.f32(i32 24, float %1901)  ; Sqrt(value)
  %1907 = fsub fast float %1902, %1906
  %1908 = fmul fast float %1907, 0x3F75555560000000
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = call float @dx.op.binary.f32(i32 36, float %1909, float %1888)  ; FMin(a,b)
  br label %1911

; <label>:1911                                    ; preds = %1905, %1893, %1876, %1835
  %1912 = phi float [ 1.000000e+00, %1835 ], [ %1910, %1905 ], [ %1888, %1876 ], [ 0.000000e+00, %1893 ]
  %1913 = fcmp fast ogt float %1912, 0.000000e+00
  br i1 %1913, label %1914, label %2012, !dx.controlflow.hints !73

; <label>:1914                                    ; preds = %1911
  %1915 = fadd fast float %136, 5.000000e-01
  %1916 = call float @dx.op.unary.f32(i32 27, float %1915)  ; Round_ni(value)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1916, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.ResRet.f32 %1917, 1
  %1920 = extractvalue %dx.types.ResRet.f32 %1917, 2
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 3
  %1923 = fmul fast float %1922, %1918
  %1924 = fmul fast float %1922, %1919
  %1925 = fmul fast float %1922, %1920
  %1926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1916, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1927 = extractvalue %dx.types.ResRet.f32 %1926, 0
  %1928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1916, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = extractvalue %dx.types.ResRet.f32 %1928, 1
  %1931 = fmul fast float %1929, 2.000000e+00
  %1932 = fmul fast float %1930, 2.000000e+00
  %1933 = fadd fast float %1931, -1.000000e+00
  %1934 = fadd fast float %1932, -1.000000e+00
  %1935 = fadd fast float %1933, %1934
  %1936 = fmul fast float %1935, 5.000000e-01
  %1937 = fsub fast float %1933, %1934
  %1938 = fmul fast float %1937, 5.000000e-01
  %1939 = call float @dx.op.unary.f32(i32 6, float %1936)  ; FAbs(value)
  %1940 = fsub fast float 1.000000e+00, %1939
  %1941 = call float @dx.op.unary.f32(i32 6, float %1938)  ; FAbs(value)
  %1942 = fsub fast float %1940, %1941
  %1943 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1942)  ; FMax(a,b)
  %1944 = call float @dx.op.dot3.f32(i32 55, float %1936, float %1938, float %1943, float %1936, float %1938, float %1943)  ; Dot3(ax,ay,az,bx,by,bz)
  %1945 = bitcast float %1944 to i32
  %1946 = ashr i32 %1945, 1
  %1947 = sub nsw i32 1597250115, %1946
  %1948 = bitcast i32 %1947 to float
  %1949 = fmul fast float %1948, %1936
  %1950 = fmul fast float %1948, %1938
  %1951 = fmul fast float %1948, %1943
  %1952 = fsub fast float 1.000000e+00, %1927
  %1953 = fdiv fast float %1952, %1951
  %1954 = fmul fast float %1951, %43
  %1955 = fmul fast float %1951, %44
  %1956 = fmul fast float %1951, %45
  %1957 = fmul fast float %1949, %39
  %1958 = fmul fast float %1949, %40
  %1959 = fmul fast float %1949, %41
  %1960 = fadd fast float %1954, %1957
  %1961 = fadd fast float %1955, %1958
  %1962 = fadd fast float %1956, %1959
  %1963 = fmul fast float %1950, %69
  %1964 = fmul fast float %1950, %70
  %1965 = fmul fast float %1950, %71
  %1966 = fadd fast float %1960, %1963
  %1967 = fadd fast float %1961, %1964
  %1968 = fadd fast float %1962, %1965
  %1969 = call float @dx.op.dot3.f32(i32 55, float %1966, float %1967, float %1968, float %1966, float %1967, float %1968)  ; Dot3(ax,ay,az,bx,by,bz)
  %1970 = call float @dx.op.unary.f32(i32 25, float %1969)  ; Rsqrt(value)
  %1971 = fmul fast float %1966, %1970
  %1972 = fmul fast float %1967, %1970
  %1973 = fmul fast float %1968, %1970
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1849, float %1850, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1976 = fmul fast float %1975, 5.000000e-01
  %1977 = fadd fast float %1976, 5.000000e-01
  %1978 = fmul fast float %1977, %1927
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1849, float %1850, float %1971, float %1972, float %1973)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fmul fast float %1980, %1953
  %1982 = fadd fast float %1978, %1981
  %1983 = fsub fast float 5.000000e-01, %1976
  %1984 = fmul fast float %1983, %1845
  %1985 = fmul fast float %1983, %1846
  %1986 = fmul fast float %1983, %1847
  %1987 = fadd fast float %1982, %1984
  %1988 = fmul fast float %1987, %1923
  %1989 = fadd fast float %1982, %1985
  %1990 = fmul fast float %1989, %1924
  %1991 = fadd fast float %1982, %1986
  %1992 = fmul fast float %1991, %1925
  %1993 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fmul fast float %1994, 5.000000e-01
  %1996 = fadd fast float %1995, 5.000000e-01
  %1997 = fmul fast float %1996, %1927
  %1998 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float %1971, float %1972, float %1973)  ; Dot3(ax,ay,az,bx,by,bz)
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fmul fast float %1999, %1953
  %2001 = fadd fast float %1997, %2000
  %2002 = fsub fast float 5.000000e-01, %1995
  %2003 = fmul fast float %2002, %1845
  %2004 = fmul fast float %2002, %1846
  %2005 = fmul fast float %2002, %1847
  %2006 = fadd fast float %2001, %2003
  %2007 = fmul fast float %2006, %1923
  %2008 = fadd fast float %2001, %2004
  %2009 = fmul fast float %2008, %1924
  %2010 = fadd fast float %2001, %2005
  %2011 = fmul fast float %2010, %1925
  br label %2012

; <label>:2012                                    ; preds = %1914, %1911
  %2013 = phi float [ %2007, %1914 ], [ 0.000000e+00, %1911 ]
  %2014 = phi float [ %2009, %1914 ], [ 0.000000e+00, %1911 ]
  %2015 = phi float [ %2011, %1914 ], [ 0.000000e+00, %1911 ]
  %2016 = phi float [ %1988, %1914 ], [ 0.000000e+00, %1911 ]
  %2017 = phi float [ %1990, %1914 ], [ 0.000000e+00, %1911 ]
  %2018 = phi float [ %1992, %1914 ], [ 0.000000e+00, %1911 ]
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = fcmp fast ogt float %2020, 0.000000e+00
  %2022 = and i1 %1913, %2021
  br i1 %2022, label %2023, label %2227, !dx.controlflow.hints !74

; <label>:2023                                    ; preds = %2012
  %2024 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %2025 = fadd fast float %2024, %107
  %2026 = fmul fast float %1848, 3.200000e+01
  %2027 = fmul fast float %1849, 3.200000e+01
  %2028 = fadd fast float %1871, %2026
  %2029 = fadd fast float %1872, %2027
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.CBufRet.f32 %2030, 1
  %2033 = fsub fast float %2028, %2031
  %2034 = fsub fast float %2029, %2032
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = fmul fast float %2033, %2036
  %2039 = fmul fast float %2034, %2037
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2043 = fsub fast float %1871, %2041
  %2044 = fsub fast float %1872, %2042
  %2045 = fmul fast float %2043, %2043
  %2046 = fmul fast float %2044, %2044
  %2047 = fadd fast float %2045, %2046
  %2048 = call float @dx.op.unary.f32(i32 24, float %2047)  ; Sqrt(value)
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2052 = fsub fast float %2048, %2050
  %2053 = fdiv fast float %2052, %2051
  %2054 = call float @dx.op.unary.f32(i32 7, float %2053)  ; Saturate(value)
  %2055 = fmul fast float %2054, 2.000000e+00
  %2056 = fsub fast float 3.000000e+00, %2055
  %2057 = fmul fast float %2054, %2054
  %2058 = fmul fast float %2057, %2056
  %2059 = fcmp fast oge float %2038, 0.000000e+00
  %2060 = fcmp fast ole float %2038, 1.000000e+00
  %2061 = and i1 %2060, %2059
  %2062 = fcmp fast oge float %2039, 0.000000e+00
  %2063 = and i1 %2062, %2061
  %2064 = fcmp fast ole float %2039, 1.000000e+00
  %2065 = and i1 %2064, %2063
  %2066 = fcmp fast ogt float %2058, 0.000000e+00
  %2067 = and i1 %2066, %2065
  br i1 %2067, label %2068, label %2191, !dx.controlflow.hints !75

; <label>:2068                                    ; preds = %2023
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2071 = extractvalue %dx.types.CBufRet.f32 %2069, 3
  %2072 = fmul fast float %2070, %2038
  %2073 = fmul fast float %2071, %2039
  %2074 = call float @dx.op.unary.f32(i32 27, float %2072)  ; Round_ni(value)
  %2075 = call float @dx.op.unary.f32(i32 27, float %2073)  ; Round_ni(value)
  %2076 = fptosi float %2074 to i32
  %2077 = fptosi float %2075 to i32
  %2078 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2076, i32 %2077, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = lshr i32 %2079, 16
  %2081 = icmp eq i32 %2080, 65535
  br i1 %2081, label %2191, label %2082

; <label>:2082                                    ; preds = %2068
  %2083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2084 = extractvalue %dx.types.CBufRet.f32 %2083, 0
  %2085 = fmul fast float %2084, %2038
  %2086 = extractvalue %dx.types.CBufRet.f32 %2083, 1
  %2087 = fadd fast float %2085, %2086
  %2088 = extractvalue %dx.types.CBufRet.f32 %2083, 2
  %2089 = fmul fast float %2088, %2039
  %2090 = extractvalue %dx.types.CBufRet.f32 %2083, 3
  %2091 = fadd fast float %2089, %2090
  %2092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2087, float %2091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2096 = extractvalue %dx.types.CBufRet.f32 %2095, 1
  %2097 = extractvalue %dx.types.CBufRet.f32 %2095, 0
  %2098 = fsub fast float %2096, %2097
  %2099 = fmul fast float %2098, %2093
  %2100 = fadd fast float %2099, %2097
  %2101 = extractvalue %dx.types.CBufRet.f32 %2095, 3
  %2102 = extractvalue %dx.types.CBufRet.f32 %2095, 2
  %2103 = fsub fast float %2101, %2102
  %2104 = fmul fast float %2103, %2094
  %2105 = fadd fast float %2104, %2102
  %2106 = fsub fast float %2025, %2100
  %2107 = fsub fast float %2105, %2100
  %2108 = fdiv fast float %2106, %2107
  %2109 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2111 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2113 = fmul fast float %2111, %2038
  %2114 = fmul fast float %2112, %2039
  %2115 = fmul fast float %2113, 1.250000e-01
  %2116 = fmul fast float %2114, 1.250000e-01
  %2117 = call float @dx.op.unary.f32(i32 27, float %2115)  ; Round_ni(value)
  %2118 = call float @dx.op.unary.f32(i32 27, float %2116)  ; Round_ni(value)
  %2119 = fmul fast float %2117, 8.000000e+00
  %2120 = fmul fast float %2118, 8.000000e+00
  %2121 = fsub fast float %2113, %2119
  %2122 = fsub fast float %2114, %2120
  %2123 = fadd fast float %2121, 5.000000e-01
  %2124 = fadd fast float %2122, 5.000000e-01
  %2125 = and i32 %2080, 255
  %2126 = lshr i32 %2079, 24
  %2127 = mul nuw nsw i32 %2125, 9
  %2128 = uitofp i32 %2127 to float
  %2129 = mul nuw nsw i32 %2126, 9
  %2130 = uitofp i32 %2129 to float
  %2131 = fadd fast float %2123, %2128
  %2132 = fadd fast float %2124, %2130
  %2133 = fdiv fast float %2131, %2020
  %2134 = fdiv fast float %2132, %2110
  %2135 = fmul fast float %2109, 4.375000e-01
  %2136 = fadd fast float %2135, 3.125000e-02
  %2137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2133, float %2134, float %2136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.ResRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.ResRet.f32 %2137, 2
  %2141 = fadd fast float %2135, 5.312500e-01
  %2142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2133, float %2134, float %2141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.ResRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.ResRet.f32 %2142, 2
  %2146 = fmul fast float %2143, 2.000000e+00
  %2147 = fmul fast float %2144, 2.000000e+00
  %2148 = fmul fast float %2145, 2.000000e+00
  %2149 = fadd fast float %2146, -1.000000e+00
  %2150 = fadd fast float %2147, -1.000000e+00
  %2151 = fadd fast float %2148, -1.000000e+00
  %2152 = fmul fast float %2149, %2149
  %2153 = fmul fast float %2150, %2150
  %2154 = fadd fast float %2152, %2153
  %2155 = fmul fast float %2151, %2151
  %2156 = fadd fast float %2154, %2155
  %2157 = call float @dx.op.unary.f32(i32 24, float %2156)  ; Sqrt(value)
  %2158 = fcmp fast ogt float %2157, 0.000000e+00
  br i1 %2158, label %2159, label %2163

; <label>:2159                                    ; preds = %2082
  %2160 = fdiv fast float %2149, %2157
  %2161 = fdiv fast float %2150, %2157
  %2162 = fdiv fast float %2151, %2157
  br label %2163

; <label>:2163                                    ; preds = %2159, %2082
  %2164 = phi float [ %2160, %2159 ], [ 0.000000e+00, %2082 ]
  %2165 = phi float [ %2161, %2159 ], [ 0.000000e+00, %2082 ]
  %2166 = phi float [ %2162, %2159 ], [ 0.000000e+00, %2082 ]
  %2167 = call float @dx.op.dot3.f32(i32 55, float %2164, float %2165, float %2166, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2168 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2167)  ; FMax(a,b)
  %2169 = fmul fast float %2168, 0x400C5BF8A0000000
  %2170 = fmul fast float %2138, %2058
  %2171 = fmul fast float %2170, %2169
  %2172 = fmul fast float %2139, %2058
  %2173 = fmul fast float %2172, %2169
  %2174 = fmul fast float %2140, %2058
  %2175 = fmul fast float %2174, %2169
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2178 = fmul fast float %2171, %2177
  %2179 = fmul fast float %2173, %2177
  %2180 = fmul fast float %2175, %2177
  %2181 = fcmp fast ogt float %2025, %2105
  br i1 %2181, label %2182, label %2191

; <label>:2182                                    ; preds = %2163
  %2183 = fmul fast float %2107, 0x3FC24924A0000000
  %2184 = fsub fast float %2025, %2105
  %2185 = fdiv fast float %2184, %2183
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fsub fast float 1.000000e+00, %2186
  %2188 = fmul fast float %2187, %2178
  %2189 = fmul fast float %2187, %2179
  %2190 = fmul fast float %2187, %2180
  br label %2191

; <label>:2191                                    ; preds = %2182, %2163, %2068, %2023
  %2192 = phi float [ %2190, %2182 ], [ %2180, %2163 ], [ 0.000000e+00, %2068 ], [ 0.000000e+00, %2023 ]
  %2193 = phi float [ %2189, %2182 ], [ %2179, %2163 ], [ 0.000000e+00, %2068 ], [ 0.000000e+00, %2023 ]
  %2194 = phi float [ %2188, %2182 ], [ %2178, %2163 ], [ 0.000000e+00, %2068 ], [ 0.000000e+00, %2023 ]
  %2195 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2194)  ; FMax(a,b)
  %2196 = fmul fast float %2195, 0x3FD20DD760000000
  %2197 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = fmul fast float %2197, 0x3FDF454380000000
  %2199 = fmul fast float %2197, %2197
  %2200 = fmul fast float %2199, 0x3FEE471020000000
  %2201 = fadd fast float %2200, 0xBFD42F6020000000
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2195, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2198, float %2201)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2193)  ; FMax(a,b)
  %2204 = fmul fast float %2203, 0x3FD20DD760000000
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2203, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2198, float %2201)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2192)  ; FMax(a,b)
  %2207 = fmul fast float %2206, 0x3FD20DD760000000
  %2208 = call float @dx.op.dot3.f32(i32 55, float %2206, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2198, float %2201)  ; Dot3(ax,ay,az,bx,by,bz)
  %2209 = call float @dx.op.binary.f32(i32 35, float %2196, float 0.000000e+00)  ; FMax(a,b)
  %2210 = call float @dx.op.binary.f32(i32 35, float %2204, float 0.000000e+00)  ; FMax(a,b)
  %2211 = call float @dx.op.binary.f32(i32 35, float %2207, float 0.000000e+00)  ; FMax(a,b)
  %2212 = call float @dx.op.binary.f32(i32 35, float %2202, float 0.000000e+00)  ; FMax(a,b)
  %2213 = call float @dx.op.binary.f32(i32 35, float %2205, float 0.000000e+00)  ; FMax(a,b)
  %2214 = call float @dx.op.binary.f32(i32 35, float %2208, float 0.000000e+00)  ; FMax(a,b)
  %2215 = fmul fast float %2209, %1912
  %2216 = fmul fast float %2210, %1912
  %2217 = fmul fast float %2211, %1912
  %2218 = fadd fast float %2215, %2016
  %2219 = fadd fast float %2216, %2017
  %2220 = fadd fast float %2217, %2018
  %2221 = fmul fast float %2212, %1912
  %2222 = fmul fast float %2213, %1912
  %2223 = fmul fast float %2214, %1912
  %2224 = fadd fast float %2221, %2013
  %2225 = fadd fast float %2222, %2014
  %2226 = fadd fast float %2223, %2015
  br label %2227

; <label>:2227                                    ; preds = %2191, %2012
  %2228 = phi float [ %2224, %2191 ], [ %2013, %2012 ]
  %2229 = phi float [ %2225, %2191 ], [ %2014, %2012 ]
  %2230 = phi float [ %2226, %2191 ], [ %2015, %2012 ]
  %2231 = phi float [ %2218, %2191 ], [ %2016, %2012 ]
  %2232 = phi float [ %2219, %2191 ], [ %2017, %2012 ]
  %2233 = phi float [ %2220, %2191 ], [ %2018, %2012 ]
  %2234 = fcmp fast olt float %1912, 1.000000e+00
  br i1 %2234, label %2235, label %3053, !dx.controlflow.hints !76

; <label>:2235                                    ; preds = %2227
  %2236 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %2237 = fadd fast float %2236, %107
  %2238 = fmul fast float %1848, 3.200000e+01
  %2239 = fmul fast float %1849, 3.200000e+01
  %2240 = fadd fast float %1871, %2238
  %2241 = fadd fast float %1872, %2239
  %2242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.CBufRet.f32 %2242, 1
  %2245 = fsub fast float %2240, %2243
  %2246 = fsub fast float %2241, %2244
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2250 = fmul fast float %2245, %2248
  %2251 = fmul fast float %2246, %2249
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = fmul fast float %2250, %2253
  %2255 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2256 = fadd fast float %2254, %2255
  %2257 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2258 = fmul fast float %2257, %2251
  %2259 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2260 = fadd fast float %2258, %2259
  %2261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2256, float %2260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2262 = extractvalue %dx.types.ResRet.f32 %2261, 0
  %2263 = extractvalue %dx.types.ResRet.f32 %2261, 1
  %2264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.f32 %2264, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2264, 0
  %2267 = fsub fast float %2265, %2266
  %2268 = fmul fast float %2267, %2262
  %2269 = fadd fast float %2268, %2266
  %2270 = extractvalue %dx.types.CBufRet.f32 %2264, 3
  %2271 = extractvalue %dx.types.CBufRet.f32 %2264, 2
  %2272 = fsub fast float %2270, %2271
  %2273 = fmul fast float %2272, %2263
  %2274 = fadd fast float %2273, %2271
  %2275 = fsub fast float %2237, %2269
  %2276 = fsub fast float %2274, %2269
  %2277 = fdiv fast float %2275, %2276
  %2278 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = fmul fast float %2280, %2278
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2283 = fadd fast float %2281, %2282
  %2284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2256, float %2260, float %2283, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2292 = fmul fast float %2289, %2285
  %2293 = fmul fast float %2290, %2286
  %2294 = fmul fast float %2291, %2287
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2298 = extractvalue %dx.types.CBufRet.f32 %2295, 2
  %2299 = fadd fast float %2292, %2296
  %2300 = fadd fast float %2293, %2297
  %2301 = fadd fast float %2294, %2298
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = fmul fast float %2303, %2250
  %2305 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2306 = fadd fast float %2304, %2305
  %2307 = extractvalue %dx.types.CBufRet.f32 %2302, 2
  %2308 = fmul fast float %2307, %2251
  %2309 = extractvalue %dx.types.CBufRet.f32 %2302, 3
  %2310 = fadd fast float %2308, %2309
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %2315 = extractvalue %dx.types.CBufRet.f32 %2311, 3
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.CBufRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.CBufRet.f32 %2316, 2
  %2320 = extractvalue %dx.types.CBufRet.f32 %2316, 3
  %2321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2306, float %2310, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.ResRet.f32 %2321, 2
  %2325 = extractvalue %dx.types.ResRet.f32 %2321, 3
  %2326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2306, float %2310, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = extractvalue %dx.types.ResRet.f32 %2326, 3
  %2331 = fmul fast float %2322, %2299
  %2332 = fmul fast float %2327, %2299
  %2333 = fmul fast float %2329, %2299
  %2334 = fmul fast float %2325, %2299
  %2335 = fadd fast float %2331, %2312
  %2336 = fadd fast float %2332, %2313
  %2337 = fadd fast float %2333, %2314
  %2338 = fadd fast float %2334, %2315
  %2339 = fmul fast float %2323, %2299
  %2340 = fmul fast float %2328, %2299
  %2341 = fadd fast float %2339, %2317
  %2342 = fadd fast float %2340, %2318
  %2343 = fmul fast float %2324, %2299
  %2344 = fmul fast float %2330, %2299
  %2345 = fadd fast float %2343, %2319
  %2346 = fadd fast float %2344, %2320
  %2347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2306, float %2310, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.ResRet.f32 %2347, 2
  %2351 = extractvalue %dx.types.ResRet.f32 %2347, 3
  %2352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2306, float %2310, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.ResRet.f32 %2352, 2
  %2356 = extractvalue %dx.types.ResRet.f32 %2352, 3
  %2357 = fmul fast float %2348, %2300
  %2358 = fmul fast float %2353, %2300
  %2359 = fmul fast float %2355, %2300
  %2360 = fmul fast float %2351, %2300
  %2361 = fadd fast float %2335, %2357
  %2362 = fadd fast float %2336, %2358
  %2363 = fadd fast float %2337, %2359
  %2364 = fadd fast float %2338, %2360
  %2365 = fmul fast float %2349, %2300
  %2366 = fmul fast float %2354, %2300
  %2367 = fadd fast float %2341, %2365
  %2368 = fadd fast float %2342, %2366
  %2369 = fmul fast float %2350, %2300
  %2370 = fmul fast float %2356, %2300
  %2371 = fadd fast float %2345, %2369
  %2372 = fadd fast float %2346, %2370
  %2373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2306, float %2310, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.ResRet.f32 %2373, 1
  %2376 = extractvalue %dx.types.ResRet.f32 %2373, 2
  %2377 = extractvalue %dx.types.ResRet.f32 %2373, 3
  %2378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2306, float %2310, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = extractvalue %dx.types.ResRet.f32 %2378, 1
  %2381 = extractvalue %dx.types.ResRet.f32 %2378, 2
  %2382 = extractvalue %dx.types.ResRet.f32 %2378, 3
  %2383 = fmul fast float %2374, %2301
  %2384 = fmul fast float %2379, %2301
  %2385 = fmul fast float %2381, %2301
  %2386 = fmul fast float %2377, %2301
  %2387 = fadd fast float %2361, %2383
  %2388 = fadd fast float %2362, %2384
  %2389 = fadd fast float %2363, %2385
  %2390 = fadd fast float %2364, %2386
  %2391 = fmul fast float %2375, %2301
  %2392 = fmul fast float %2380, %2301
  %2393 = fadd fast float %2367, %2391
  %2394 = fadd fast float %2368, %2392
  %2395 = fmul fast float %2376, %2301
  %2396 = fmul fast float %2382, %2301
  %2397 = fadd fast float %2371, %2395
  %2398 = fadd fast float %2372, %2396
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 0
  %2401 = fsub fast float %1871, %2400
  %2402 = fsub fast float %2243, %1871
  %2403 = call float @dx.op.binary.f32(i32 35, float %2402, float %2401)  ; FMax(a,b)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2405 = fsub fast float %1872, %2404
  %2406 = fsub fast float %2244, %1872
  %2407 = call float @dx.op.binary.f32(i32 35, float %2406, float %2405)  ; FMax(a,b)
  %2408 = call float @dx.op.binary.f32(i32 35, float %2403, float %2407)  ; FMax(a,b)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2247, 3
  %2410 = fmul fast float %2409, %2408
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.CBufRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.CBufRet.f32 %2412, 2
  %2416 = extractvalue %dx.types.CBufRet.f32 %2412, 3
  %2417 = fsub fast float %2413, %2387
  %2418 = fsub fast float %2414, %2388
  %2419 = fsub fast float %2415, %2389
  %2420 = fsub fast float %2416, %2390
  %2421 = fmul fast float %2417, %2411
  %2422 = fmul fast float %2418, %2411
  %2423 = fmul fast float %2419, %2411
  %2424 = fmul fast float %2420, %2411
  %2425 = fadd fast float %2421, %2387
  %2426 = fadd fast float %2422, %2388
  %2427 = fadd fast float %2423, %2389
  %2428 = fadd fast float %2424, %2390
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2432 = fsub fast float %2430, %2393
  %2433 = fsub fast float %2431, %2394
  %2434 = fmul fast float %2432, %2411
  %2435 = fmul fast float %2433, %2411
  %2436 = fadd fast float %2434, %2393
  %2437 = fadd fast float %2435, %2394
  %2438 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2439 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2440 = fsub fast float %2438, %2397
  %2441 = fsub fast float %2439, %2398
  %2442 = fmul fast float %2440, %2411
  %2443 = fmul fast float %2441, %2411
  %2444 = fadd fast float %2442, %2397
  %2445 = fadd fast float %2443, %2398
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = fmul fast float %2447, %2425
  %2449 = fmul fast float %2447, %2426
  %2450 = fmul fast float %2447, %2427
  %2451 = fmul fast float %2447, %2428
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 0
  %2454 = fmul fast float %2453, %2436
  %2455 = fmul fast float %2453, %2437
  %2456 = fadd fast float %2454, %2448
  %2457 = fadd fast float %2455, %2450
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 0
  %2460 = fmul fast float %2459, %2444
  %2461 = fmul fast float %2459, %2445
  %2462 = fadd fast float %2456, %2460
  %2463 = fadd fast float %2457, %2461
  %2464 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2465 = fmul fast float %2464, %2425
  %2466 = fmul fast float %2464, %2426
  %2467 = fmul fast float %2464, %2427
  %2468 = fmul fast float %2464, %2428
  %2469 = extractvalue %dx.types.CBufRet.f32 %2452, 1
  %2470 = fmul fast float %2469, %2436
  %2471 = fmul fast float %2469, %2437
  %2472 = fadd fast float %2470, %2465
  %2473 = fadd fast float %2471, %2467
  %2474 = extractvalue %dx.types.CBufRet.f32 %2458, 1
  %2475 = fmul fast float %2474, %2444
  %2476 = fmul fast float %2474, %2445
  %2477 = fadd fast float %2472, %2475
  %2478 = fadd fast float %2473, %2476
  %2479 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2480 = fmul fast float %2479, %2425
  %2481 = fmul fast float %2479, %2426
  %2482 = fmul fast float %2479, %2427
  %2483 = fmul fast float %2479, %2428
  %2484 = extractvalue %dx.types.CBufRet.f32 %2452, 2
  %2485 = fmul fast float %2484, %2436
  %2486 = fmul fast float %2484, %2437
  %2487 = fadd fast float %2485, %2480
  %2488 = fadd fast float %2486, %2482
  %2489 = extractvalue %dx.types.CBufRet.f32 %2458, 2
  %2490 = fmul fast float %2489, %2444
  %2491 = fmul fast float %2489, %2445
  %2492 = fadd fast float %2487, %2490
  %2493 = fadd fast float %2488, %2491
  %2494 = fmul fast float %2481, %2481
  %2495 = fmul fast float %2493, %2493
  %2496 = fmul fast float %2483, %2483
  %2497 = fadd fast float %2496, %2494
  %2498 = fadd fast float %2497, %2495
  %2499 = call float @dx.op.unary.f32(i32 24, float %2498)  ; Sqrt(value)
  %2500 = fcmp fast ugt float %2499, 0.000000e+00
  br i1 %2500, label %2501, label %2516

; <label>:2501                                    ; preds = %2235
  %2502 = fsub fast float -0.000000e+00, %2483
  %2503 = fdiv fast float %2502, %2499
  %2504 = fsub fast float -0.000000e+00, %2481
  %2505 = fdiv fast float %2504, %2499
  %2506 = fdiv fast float %2493, %2499
  %2507 = fmul fast float %2492, 0x3FE279A760000000
  %2508 = fmul fast float %2505, %2481
  %2509 = fmul fast float %2506, %2493
  %2510 = fmul fast float %2503, %2483
  %2511 = fadd fast float %2508, %2510
  %2512 = fsub fast float %2511, %2509
  %2513 = call float @dx.op.unary.f32(i32 6, float %2512)  ; FAbs(value)
  %2514 = fadd fast float %2513, 0x3DDB7CDFE0000000
  %2515 = fdiv fast float %2507, %2514
  br label %2516

; <label>:2516                                    ; preds = %2501, %2235
  %2517 = phi float [ %2515, %2501 ], [ 1.000000e+00, %2235 ]
  %2518 = fmul fast float %2466, %2466
  %2519 = fmul fast float %2478, %2478
  %2520 = fmul fast float %2468, %2468
  %2521 = fadd fast float %2520, %2518
  %2522 = fadd fast float %2521, %2519
  %2523 = call float @dx.op.unary.f32(i32 24, float %2522)  ; Sqrt(value)
  %2524 = fcmp fast ugt float %2523, 0.000000e+00
  br i1 %2524, label %2525, label %2540

; <label>:2525                                    ; preds = %2516
  %2526 = fsub fast float -0.000000e+00, %2468
  %2527 = fdiv fast float %2526, %2523
  %2528 = fsub fast float -0.000000e+00, %2466
  %2529 = fdiv fast float %2528, %2523
  %2530 = fdiv fast float %2478, %2523
  %2531 = fmul fast float %2477, 0x3FE279A760000000
  %2532 = fmul fast float %2529, %2466
  %2533 = fmul fast float %2530, %2478
  %2534 = fmul fast float %2527, %2468
  %2535 = fadd fast float %2532, %2534
  %2536 = fsub fast float %2535, %2533
  %2537 = call float @dx.op.unary.f32(i32 6, float %2536)  ; FAbs(value)
  %2538 = fadd fast float %2537, 0x3DDB7CDFE0000000
  %2539 = fdiv fast float %2531, %2538
  br label %2540

; <label>:2540                                    ; preds = %2525, %2516
  %2541 = phi float [ %2539, %2525 ], [ 1.000000e+00, %2516 ]
  %2542 = call float @dx.op.binary.f32(i32 36, float %2541, float %2517)  ; FMin(a,b)
  %2543 = fmul fast float %2449, %2449
  %2544 = fmul fast float %2463, %2463
  %2545 = fmul fast float %2451, %2451
  %2546 = fadd fast float %2545, %2543
  %2547 = fadd fast float %2546, %2544
  %2548 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2549 = fcmp fast ugt float %2548, 0.000000e+00
  br i1 %2549, label %2550, label %2565

; <label>:2550                                    ; preds = %2540
  %2551 = fsub fast float -0.000000e+00, %2451
  %2552 = fdiv fast float %2551, %2548
  %2553 = fsub fast float -0.000000e+00, %2449
  %2554 = fdiv fast float %2553, %2548
  %2555 = fdiv fast float %2463, %2548
  %2556 = fmul fast float %2462, 0x3FE279A760000000
  %2557 = fmul fast float %2554, %2449
  %2558 = fmul fast float %2555, %2463
  %2559 = fmul fast float %2552, %2451
  %2560 = fadd fast float %2557, %2559
  %2561 = fsub fast float %2560, %2558
  %2562 = call float @dx.op.unary.f32(i32 6, float %2561)  ; FAbs(value)
  %2563 = fadd fast float %2562, 0x3DDB7CDFE0000000
  %2564 = fdiv fast float %2556, %2563
  br label %2565

; <label>:2565                                    ; preds = %2550, %2540
  %2566 = phi float [ %2564, %2550 ], [ 1.000000e+00, %2540 ]
  %2567 = call float @dx.op.binary.f32(i32 36, float %2566, float %2542)  ; FMin(a,b)
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2569 = fcmp fast olt float %2568, 1.000000e+00
  br i1 %2569, label %2570, label %2580

; <label>:2570                                    ; preds = %2565
  %2571 = fmul fast float %2568, %2449
  %2572 = fmul fast float %2568, %2463
  %2573 = fmul fast float %2568, %2451
  %2574 = fmul fast float %2568, %2466
  %2575 = fmul fast float %2568, %2478
  %2576 = fmul fast float %2568, %2468
  %2577 = fmul fast float %2568, %2481
  %2578 = fmul fast float %2568, %2493
  %2579 = fmul fast float %2568, %2483
  br label %2580

; <label>:2580                                    ; preds = %2570, %2565
  %2581 = phi float [ %2577, %2570 ], [ %2481, %2565 ]
  %2582 = phi float [ %2578, %2570 ], [ %2493, %2565 ]
  %2583 = phi float [ %2579, %2570 ], [ %2483, %2565 ]
  %2584 = phi float [ %2574, %2570 ], [ %2466, %2565 ]
  %2585 = phi float [ %2575, %2570 ], [ %2478, %2565 ]
  %2586 = phi float [ %2576, %2570 ], [ %2468, %2565 ]
  %2587 = phi float [ %2571, %2570 ], [ %2449, %2565 ]
  %2588 = phi float [ %2572, %2570 ], [ %2463, %2565 ]
  %2589 = phi float [ %2573, %2570 ], [ %2451, %2565 ]
  %2590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2462)  ; FMax(a,b)
  %2591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2477)  ; FMax(a,b)
  %2592 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2492)  ; FMax(a,b)
  %2593 = fcmp fast oge float %2250, 0.000000e+00
  %2594 = and i1 %2593, %2021
  %2595 = fcmp fast ole float %2250, 1.000000e+00
  %2596 = and i1 %2595, %2594
  %2597 = fcmp fast oge float %2251, 0.000000e+00
  %2598 = and i1 %2597, %2596
  %2599 = fcmp fast ole float %2251, 1.000000e+00
  %2600 = and i1 %2599, %2598
  br i1 %2600, label %2601, label %2746, !dx.controlflow.hints !77

; <label>:2601                                    ; preds = %2580
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 2
  %2604 = extractvalue %dx.types.CBufRet.f32 %2602, 3
  %2605 = fmul fast float %2603, %2250
  %2606 = fmul fast float %2604, %2251
  %2607 = call float @dx.op.unary.f32(i32 27, float %2605)  ; Round_ni(value)
  %2608 = call float @dx.op.unary.f32(i32 27, float %2606)  ; Round_ni(value)
  %2609 = fptosi float %2607 to i32
  %2610 = fptosi float %2608 to i32
  %2611 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2609, i32 %2610, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 65535
  %2614 = lshr i32 %2612, 16
  %2615 = icmp eq i32 %2613, 65535
  br i1 %2615, label %2652, label %2616

; <label>:2616                                    ; preds = %2601
  %2617 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2618 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2620 = fmul fast float %2618, %2250
  %2621 = fmul fast float %2619, %2251
  %2622 = fmul fast float %2620, 1.250000e-01
  %2623 = fmul fast float %2621, 1.250000e-01
  %2624 = call float @dx.op.unary.f32(i32 27, float %2622)  ; Round_ni(value)
  %2625 = call float @dx.op.unary.f32(i32 27, float %2623)  ; Round_ni(value)
  %2626 = fmul fast float %2624, 8.000000e+00
  %2627 = fmul fast float %2625, 8.000000e+00
  %2628 = and i32 %2612, 255
  %2629 = lshr i32 %2612, 8
  %2630 = and i32 %2629, 255
  %2631 = mul nuw nsw i32 %2628, 9
  %2632 = uitofp i32 %2631 to float
  %2633 = mul nuw nsw i32 %2630, 9
  %2634 = uitofp i32 %2633 to float
  %2635 = fadd fast float %2632, 5.000000e-01
  %2636 = fadd fast float %2635, %2620
  %2637 = fsub fast float %2636, %2626
  %2638 = fadd fast float %2634, 5.000000e-01
  %2639 = fadd fast float %2638, %2621
  %2640 = fsub fast float %2639, %2627
  %2641 = fdiv fast float %2637, %2020
  %2642 = fdiv fast float %2640, %2617
  %2643 = fmul fast float %2278, 4.375000e-01
  %2644 = fadd fast float %2643, 3.125000e-02
  %2645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2641, float %2642, float %2644, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = extractvalue %dx.types.ResRet.f32 %2645, 1
  %2648 = extractvalue %dx.types.ResRet.f32 %2645, 2
  %2649 = fadd fast float %2646, %2590
  %2650 = fadd fast float %2647, %2591
  %2651 = fadd fast float %2648, %2592
  br label %2652

; <label>:2652                                    ; preds = %2616, %2601
  %2653 = phi float [ %2651, %2616 ], [ %2592, %2601 ]
  %2654 = phi float [ %2650, %2616 ], [ %2591, %2601 ]
  %2655 = phi float [ %2649, %2616 ], [ %2590, %2601 ]
  %2656 = icmp eq i32 %2614, 65535
  br i1 %2656, label %2746, label %2657

; <label>:2657                                    ; preds = %2652
  %2658 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2659 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2660 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2661 = fmul fast float %2659, %2250
  %2662 = fmul fast float %2660, %2251
  %2663 = fmul fast float %2661, 1.250000e-01
  %2664 = fmul fast float %2662, 1.250000e-01
  %2665 = call float @dx.op.unary.f32(i32 27, float %2663)  ; Round_ni(value)
  %2666 = call float @dx.op.unary.f32(i32 27, float %2664)  ; Round_ni(value)
  %2667 = fmul fast float %2665, 8.000000e+00
  %2668 = fmul fast float %2666, 8.000000e+00
  %2669 = fsub fast float %2661, %2667
  %2670 = fsub fast float %2662, %2668
  %2671 = fadd fast float %2669, 5.000000e-01
  %2672 = fadd fast float %2670, 5.000000e-01
  %2673 = and i32 %2614, 255
  %2674 = lshr i32 %2612, 24
  %2675 = mul nuw nsw i32 %2673, 9
  %2676 = uitofp i32 %2675 to float
  %2677 = mul nuw nsw i32 %2674, 9
  %2678 = uitofp i32 %2677 to float
  %2679 = fadd fast float %2671, %2676
  %2680 = fadd fast float %2672, %2678
  %2681 = fdiv fast float %2679, %2020
  %2682 = fdiv fast float %2680, %2658
  %2683 = fmul fast float %2278, 4.375000e-01
  %2684 = fadd fast float %2683, 3.125000e-02
  %2685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2681, float %2682, float %2684, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2686 = extractvalue %dx.types.ResRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.ResRet.f32 %2685, 1
  %2688 = extractvalue %dx.types.ResRet.f32 %2685, 2
  %2689 = fadd fast float %2683, 5.312500e-01
  %2690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2681, float %2682, float %2689, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.ResRet.f32 %2690, 1
  %2693 = extractvalue %dx.types.ResRet.f32 %2690, 2
  %2694 = fmul fast float %2691, 2.000000e+00
  %2695 = fmul fast float %2692, 2.000000e+00
  %2696 = fmul fast float %2693, 2.000000e+00
  %2697 = fadd fast float %2694, -1.000000e+00
  %2698 = fadd fast float %2695, -1.000000e+00
  %2699 = fadd fast float %2696, -1.000000e+00
  %2700 = fmul fast float %2697, %2697
  %2701 = fmul fast float %2698, %2698
  %2702 = fadd fast float %2700, %2701
  %2703 = fmul fast float %2699, %2699
  %2704 = fadd fast float %2702, %2703
  %2705 = call float @dx.op.unary.f32(i32 24, float %2704)  ; Sqrt(value)
  %2706 = fcmp fast ogt float %2705, 0.000000e+00
  br i1 %2706, label %2707, label %2711

; <label>:2707                                    ; preds = %2657
  %2708 = fdiv fast float %2697, %2705
  %2709 = fdiv fast float %2698, %2705
  %2710 = fdiv fast float %2699, %2705
  br label %2711

; <label>:2711                                    ; preds = %2707, %2657
  %2712 = phi float [ %2708, %2707 ], [ 0.000000e+00, %2657 ]
  %2713 = phi float [ %2709, %2707 ], [ 0.000000e+00, %2657 ]
  %2714 = phi float [ %2710, %2707 ], [ 0.000000e+00, %2657 ]
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = fsub fast float %1871, %2716
  %2719 = fsub fast float %1872, %2717
  %2720 = fmul fast float %2718, %2718
  %2721 = fmul fast float %2719, %2719
  %2722 = fadd fast float %2720, %2721
  %2723 = call float @dx.op.unary.f32(i32 24, float %2722)  ; Sqrt(value)
  %2724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.CBufRet.f32 %2724, 1
  %2727 = fsub fast float %2723, %2725
  %2728 = fdiv fast float %2727, %2726
  %2729 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2730 = fmul fast float %2729, 2.000000e+00
  %2731 = fsub fast float 3.000000e+00, %2730
  %2732 = fmul fast float %2729, %2729
  %2733 = fmul fast float %2732, %2731
  %2734 = call float @dx.op.dot3.f32(i32 55, float %2712, float %2713, float %2714, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2735 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2734)  ; FMax(a,b)
  %2736 = fmul fast float %2735, 0x400C5BF8A0000000
  %2737 = fmul fast float %2733, %2686
  %2738 = fmul fast float %2737, %2736
  %2739 = fadd fast float %2738, %2655
  %2740 = fmul fast float %2733, %2687
  %2741 = fmul fast float %2740, %2736
  %2742 = fadd fast float %2741, %2654
  %2743 = fmul fast float %2733, %2688
  %2744 = fmul fast float %2743, %2736
  %2745 = fadd fast float %2744, %2653
  br label %2746

; <label>:2746                                    ; preds = %2711, %2652, %2580
  %2747 = phi float [ %2745, %2711 ], [ %2653, %2652 ], [ %2592, %2580 ]
  %2748 = phi float [ %2742, %2711 ], [ %2654, %2652 ], [ %2591, %2580 ]
  %2749 = phi float [ %2739, %2711 ], [ %2655, %2652 ], [ %2590, %2580 ]
  %2750 = fcmp fast ogt float %2237, %2274
  %2751 = and i1 %2593, %2750
  %2752 = and i1 %2595, %2751
  %2753 = and i1 %2597, %2752
  %2754 = and i1 %2599, %2753
  br i1 %2754, label %2755, label %2812, !dx.controlflow.hints !78

; <label>:2755                                    ; preds = %2746
  %2756 = fmul fast float %2276, 0x3FC24924A0000000
  %2757 = fsub fast float %2237, %2274
  %2758 = fdiv fast float %2757, %2756
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.CBufRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.CBufRet.f32 %2762, 2
  %2766 = fsub fast float %2761, %2749
  %2767 = fsub fast float %2763, %2587
  %2768 = fsub fast float %2764, %2588
  %2769 = fsub fast float %2765, %2589
  %2770 = fmul fast float %2766, %2759
  %2771 = fmul fast float %2767, %2759
  %2772 = fmul fast float %2768, %2759
  %2773 = fmul fast float %2769, %2759
  %2774 = fadd fast float %2770, %2749
  %2775 = fadd fast float %2771, %2587
  %2776 = fadd fast float %2772, %2588
  %2777 = fadd fast float %2773, %2589
  %2778 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2783 = fsub fast float %2778, %2748
  %2784 = fsub fast float %2780, %2584
  %2785 = fsub fast float %2781, %2585
  %2786 = fsub fast float %2782, %2586
  %2787 = fmul fast float %2783, %2759
  %2788 = fmul fast float %2784, %2759
  %2789 = fmul fast float %2785, %2759
  %2790 = fmul fast float %2786, %2759
  %2791 = fadd fast float %2787, %2748
  %2792 = fadd fast float %2788, %2584
  %2793 = fadd fast float %2789, %2585
  %2794 = fadd fast float %2790, %2586
  %2795 = extractvalue %dx.types.CBufRet.f32 %2760, 2
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.CBufRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  %2800 = fsub fast float %2795, %2747
  %2801 = fsub fast float %2797, %2581
  %2802 = fsub fast float %2798, %2582
  %2803 = fsub fast float %2799, %2583
  %2804 = fmul fast float %2800, %2759
  %2805 = fmul fast float %2801, %2759
  %2806 = fmul fast float %2802, %2759
  %2807 = fmul fast float %2803, %2759
  %2808 = fadd fast float %2804, %2747
  %2809 = fadd fast float %2805, %2581
  %2810 = fadd fast float %2806, %2582
  %2811 = fadd fast float %2807, %2583
  br label %2812

; <label>:2812                                    ; preds = %2755, %2746
  %2813 = phi float [ %2808, %2755 ], [ %2747, %2746 ]
  %2814 = phi float [ %2809, %2755 ], [ %2581, %2746 ]
  %2815 = phi float [ %2810, %2755 ], [ %2582, %2746 ]
  %2816 = phi float [ %2811, %2755 ], [ %2583, %2746 ]
  %2817 = phi float [ %2791, %2755 ], [ %2748, %2746 ]
  %2818 = phi float [ %2792, %2755 ], [ %2584, %2746 ]
  %2819 = phi float [ %2793, %2755 ], [ %2585, %2746 ]
  %2820 = phi float [ %2794, %2755 ], [ %2586, %2746 ]
  %2821 = phi float [ %2774, %2755 ], [ %2749, %2746 ]
  %2822 = phi float [ %2775, %2755 ], [ %2587, %2746 ]
  %2823 = phi float [ %2776, %2755 ], [ %2588, %2746 ]
  %2824 = phi float [ %2777, %2755 ], [ %2589, %2746 ]
  %2825 = extractvalue %dx.types.CBufRet.f32 %2399, 3
  %2826 = fmul fast float %2825, %2821
  %2827 = fmul fast float %2825, %2817
  %2828 = fmul fast float %2825, %2813
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2831 = fmul fast float %2826, %2830
  %2832 = fmul fast float %2827, %2830
  %2833 = fmul fast float %2828, %2830
  %2834 = fmul fast float %2822, 1.500000e+00
  %2835 = fmul fast float %2834, %2825
  %2836 = fmul fast float %2835, %2830
  %2837 = fmul fast float %2823, 1.500000e+00
  %2838 = fmul fast float %2837, %2825
  %2839 = fmul fast float %2838, %2830
  %2840 = fmul fast float %2824, 1.500000e+00
  %2841 = fmul fast float %2840, %2825
  %2842 = fmul fast float %2841, %2830
  %2843 = fmul fast float %2818, 1.500000e+00
  %2844 = fmul fast float %2843, %2825
  %2845 = fmul fast float %2844, %2830
  %2846 = fmul fast float %2819, 1.500000e+00
  %2847 = fmul fast float %2846, %2825
  %2848 = fmul fast float %2847, %2830
  %2849 = fmul fast float %2820, 1.500000e+00
  %2850 = fmul fast float %2849, %2825
  %2851 = fmul fast float %2850, %2830
  %2852 = fmul fast float %2814, 1.500000e+00
  %2853 = fmul fast float %2852, %2825
  %2854 = fmul fast float %2853, %2830
  %2855 = fmul fast float %2815, 1.500000e+00
  %2856 = fmul fast float %2855, %2825
  %2857 = fmul fast float %2856, %2830
  %2858 = fmul fast float %2816, 1.500000e+00
  %2859 = fmul fast float %2858, %2825
  %2860 = fmul fast float %2859, %2830
  %2861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2831)  ; FMax(a,b)
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2836, float %2839, float %2842, float %2836, float %2839, float %2842)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = fcmp fast oeq float %2862, 0.000000e+00
  %2864 = fcmp fast oeq float %2861, 0.000000e+00
  %2865 = or i1 %2864, %2863
  br i1 %2865, label %2895, label %2866

; <label>:2866                                    ; preds = %2812
  %2867 = fsub fast float -0.000000e+00, %2842
  %2868 = fsub fast float -0.000000e+00, %2836
  %2869 = call float @dx.op.unary.f32(i32 24, float %2862)  ; Sqrt(value)
  %2870 = fdiv fast float %2869, %2861
  %2871 = fcmp fast ogt float %2870, 0x3FFB6F8900000000
  %2872 = select i1 %2871, float 0x3FFB6F8900000000, float %2870
  %2873 = fmul fast float %2872, 0x3FE8A23460000000
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2875 = call float @dx.op.binary.f32(i32 35, float %2872, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2876 = fmul fast float %2874, %2861
  %2877 = fmul fast float %2875, 0x3FF279A740000000
  %2878 = fadd fast float %2877, -1.000000e+00
  %2879 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2868, float %2839, float %2867, float %2868, float %2839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2880 = call float @dx.op.unary.f32(i32 25, float %2879)  ; Rsqrt(value)
  %2881 = fmul fast float %2880, %2867
  %2882 = fmul fast float %2880, %2868
  %2883 = fmul fast float %2880, %2839
  %2884 = fmul fast float %2878, %2878
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2875, 0x40005F8BE0000000
  %2887 = fsub fast float 0x400C5BF8A0000000, %2886
  %2888 = fdiv fast float %2876, %2887
  %2889 = fmul fast float %2888, 0x3FEE31C3C0000000
  %2890 = fmul fast float %2889, %2885
  %2891 = fmul fast float %2875, 0x3FDACB7480000000
  %2892 = fadd fast float %2891, 0xBFD7347680000000
  %2893 = fmul fast float %2892, %2888
  %2894 = fmul fast float %2893, %2885
  br label %2895

; <label>:2895                                    ; preds = %2866, %2812
  %2896 = phi float [ %2881, %2866 ], [ 0.000000e+00, %2812 ]
  %2897 = phi float [ %2882, %2866 ], [ 0.000000e+00, %2812 ]
  %2898 = phi float [ %2883, %2866 ], [ 0.000000e+00, %2812 ]
  %2899 = phi float [ %2890, %2866 ], [ 0.000000e+00, %2812 ]
  %2900 = phi float [ %2894, %2866 ], [ 0.000000e+00, %2812 ]
  %2901 = call float @dx.op.dot3.f32(i32 55, float %2896, float %2897, float %2898, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2902 = fmul fast float %2901, %2901
  %2903 = fmul fast float %2902, 0x3FEE471020000000
  %2904 = fadd fast float %2903, 0xBFD42F6020000000
  %2905 = fmul fast float %2861, 0x3FD20DD760000000
  %2906 = fmul fast float %2904, %2900
  %2907 = fmul fast float %2899, 0x3FDF454380000000
  %2908 = fmul fast float %2907, %2901
  %2909 = fadd fast float %2908, %2905
  %2910 = fadd fast float %2909, %2906
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2896, float %2897, float %2898, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = fmul fast float %2911, 0x3FDF454380000000
  %2913 = fmul fast float %2911, %2911
  %2914 = fmul fast float %2913, 0x3FEE471020000000
  %2915 = fadd fast float %2914, 0xBFD42F6020000000
  %2916 = call float @dx.op.dot3.f32(i32 55, float %2861, float %2899, float %2900, float 0x3FD20DD760000000, float %2912, float %2915)  ; Dot3(ax,ay,az,bx,by,bz)
  %2917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2832)  ; FMax(a,b)
  %2918 = call float @dx.op.dot3.f32(i32 55, float %2845, float %2848, float %2851, float %2845, float %2848, float %2851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2919 = fcmp fast oeq float %2918, 0.000000e+00
  %2920 = fcmp fast oeq float %2917, 0.000000e+00
  %2921 = or i1 %2920, %2919
  br i1 %2921, label %2951, label %2922

; <label>:2922                                    ; preds = %2895
  %2923 = fsub fast float -0.000000e+00, %2851
  %2924 = fsub fast float -0.000000e+00, %2845
  %2925 = call float @dx.op.unary.f32(i32 24, float %2918)  ; Sqrt(value)
  %2926 = fdiv fast float %2925, %2917
  %2927 = fcmp fast ogt float %2926, 0x3FFB6F8900000000
  %2928 = select i1 %2927, float 0x3FFB6F8900000000, float %2926
  %2929 = fmul fast float %2928, 0x3FE8A23460000000
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = call float @dx.op.binary.f32(i32 35, float %2928, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2932 = fmul fast float %2930, %2917
  %2933 = fmul fast float %2931, 0x3FF279A740000000
  %2934 = fadd fast float %2933, -1.000000e+00
  %2935 = call float @dx.op.dot3.f32(i32 55, float %2923, float %2924, float %2848, float %2923, float %2924, float %2848)  ; Dot3(ax,ay,az,bx,by,bz)
  %2936 = call float @dx.op.unary.f32(i32 25, float %2935)  ; Rsqrt(value)
  %2937 = fmul fast float %2936, %2923
  %2938 = fmul fast float %2936, %2924
  %2939 = fmul fast float %2936, %2848
  %2940 = fmul fast float %2934, %2934
  %2941 = fsub fast float 1.000000e+00, %2940
  %2942 = fmul fast float %2931, 0x40005F8BE0000000
  %2943 = fsub fast float 0x400C5BF8A0000000, %2942
  %2944 = fdiv fast float %2932, %2943
  %2945 = fmul fast float %2944, 0x3FEE31C3C0000000
  %2946 = fmul fast float %2945, %2941
  %2947 = fmul fast float %2931, 0x3FDACB7480000000
  %2948 = fadd fast float %2947, 0xBFD7347680000000
  %2949 = fmul fast float %2948, %2944
  %2950 = fmul fast float %2949, %2941
  br label %2951

; <label>:2951                                    ; preds = %2922, %2895
  %2952 = phi float [ %2937, %2922 ], [ 0.000000e+00, %2895 ]
  %2953 = phi float [ %2938, %2922 ], [ 0.000000e+00, %2895 ]
  %2954 = phi float [ %2939, %2922 ], [ 0.000000e+00, %2895 ]
  %2955 = phi float [ %2946, %2922 ], [ 0.000000e+00, %2895 ]
  %2956 = phi float [ %2950, %2922 ], [ 0.000000e+00, %2895 ]
  %2957 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2953, float %2954, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2958 = fmul fast float %2957, %2957
  %2959 = fmul fast float %2958, 0x3FEE471020000000
  %2960 = fadd fast float %2959, 0xBFD42F6020000000
  %2961 = fmul fast float %2917, 0x3FD20DD760000000
  %2962 = fmul fast float %2960, %2956
  %2963 = fmul fast float %2955, 0x3FDF454380000000
  %2964 = fmul fast float %2963, %2957
  %2965 = fadd fast float %2964, %2961
  %2966 = fadd fast float %2965, %2962
  %2967 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2953, float %2954, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2968 = fmul fast float %2967, 0x3FDF454380000000
  %2969 = fmul fast float %2967, %2967
  %2970 = fmul fast float %2969, 0x3FEE471020000000
  %2971 = fadd fast float %2970, 0xBFD42F6020000000
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2917, float %2955, float %2956, float 0x3FD20DD760000000, float %2968, float %2971)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2833)  ; FMax(a,b)
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2854, float %2857, float %2860, float %2854, float %2857, float %2860)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = fcmp fast oeq float %2974, 0.000000e+00
  %2976 = fcmp fast oeq float %2973, 0.000000e+00
  %2977 = or i1 %2976, %2975
  br i1 %2977, label %3007, label %2978

; <label>:2978                                    ; preds = %2951
  %2979 = fsub fast float -0.000000e+00, %2860
  %2980 = fsub fast float -0.000000e+00, %2854
  %2981 = call float @dx.op.unary.f32(i32 24, float %2974)  ; Sqrt(value)
  %2982 = fdiv fast float %2981, %2973
  %2983 = fcmp fast ogt float %2982, 0x3FFB6F8900000000
  %2984 = select i1 %2983, float 0x3FFB6F8900000000, float %2982
  %2985 = fmul fast float %2984, 0x3FE8A23460000000
  %2986 = call float @dx.op.unary.f32(i32 7, float %2985)  ; Saturate(value)
  %2987 = call float @dx.op.binary.f32(i32 35, float %2984, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2988 = fmul fast float %2986, %2973
  %2989 = fmul fast float %2987, 0x3FF279A740000000
  %2990 = fadd fast float %2989, -1.000000e+00
  %2991 = call float @dx.op.dot3.f32(i32 55, float %2979, float %2980, float %2857, float %2979, float %2980, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2992 = call float @dx.op.unary.f32(i32 25, float %2991)  ; Rsqrt(value)
  %2993 = fmul fast float %2992, %2979
  %2994 = fmul fast float %2992, %2980
  %2995 = fmul fast float %2992, %2857
  %2996 = fmul fast float %2990, %2990
  %2997 = fsub fast float 1.000000e+00, %2996
  %2998 = fmul fast float %2987, 0x40005F8BE0000000
  %2999 = fsub fast float 0x400C5BF8A0000000, %2998
  %3000 = fdiv fast float %2988, %2999
  %3001 = fmul fast float %3000, 0x3FEE31C3C0000000
  %3002 = fmul fast float %3001, %2997
  %3003 = fmul fast float %2987, 0x3FDACB7480000000
  %3004 = fadd fast float %3003, 0xBFD7347680000000
  %3005 = fmul fast float %3004, %3000
  %3006 = fmul fast float %3005, %2997
  br label %3007

; <label>:3007                                    ; preds = %2978, %2951
  %3008 = phi float [ %2993, %2978 ], [ 0.000000e+00, %2951 ]
  %3009 = phi float [ %2994, %2978 ], [ 0.000000e+00, %2951 ]
  %3010 = phi float [ %2995, %2978 ], [ 0.000000e+00, %2951 ]
  %3011 = phi float [ %3002, %2978 ], [ 0.000000e+00, %2951 ]
  %3012 = phi float [ %3006, %2978 ], [ 0.000000e+00, %2951 ]
  %3013 = call float @dx.op.dot3.f32(i32 55, float %3008, float %3009, float %3010, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3014 = fmul fast float %3013, %3013
  %3015 = fmul fast float %3014, 0x3FEE471020000000
  %3016 = fadd fast float %3015, 0xBFD42F6020000000
  %3017 = fmul fast float %2973, 0x3FD20DD760000000
  %3018 = fmul fast float %3016, %3012
  %3019 = fmul fast float %3011, 0x3FDF454380000000
  %3020 = fmul fast float %3019, %3013
  %3021 = fadd fast float %3020, %3017
  %3022 = fadd fast float %3021, %3018
  %3023 = call float @dx.op.dot3.f32(i32 55, float %3008, float %3009, float %3010, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3024 = fmul fast float %3023, 0x3FDF454380000000
  %3025 = fmul fast float %3023, %3023
  %3026 = fmul fast float %3025, 0x3FEE471020000000
  %3027 = fadd fast float %3026, 0xBFD42F6020000000
  %3028 = call float @dx.op.dot3.f32(i32 55, float %2973, float %3011, float %3012, float 0x3FD20DD760000000, float %3024, float %3027)  ; Dot3(ax,ay,az,bx,by,bz)
  %3029 = call float @dx.op.binary.f32(i32 35, float %2910, float 0.000000e+00)  ; FMax(a,b)
  %3030 = call float @dx.op.binary.f32(i32 35, float %2966, float 0.000000e+00)  ; FMax(a,b)
  %3031 = call float @dx.op.binary.f32(i32 35, float %3022, float 0.000000e+00)  ; FMax(a,b)
  %3032 = call float @dx.op.binary.f32(i32 35, float %2916, float 0.000000e+00)  ; FMax(a,b)
  %3033 = call float @dx.op.binary.f32(i32 35, float %2972, float 0.000000e+00)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float %3028, float 0.000000e+00)  ; FMax(a,b)
  %3035 = fsub fast float %2231, %3029
  %3036 = fsub fast float %2232, %3030
  %3037 = fsub fast float %2233, %3031
  %3038 = fmul fast float %3035, %1912
  %3039 = fmul fast float %3036, %1912
  %3040 = fmul fast float %3037, %1912
  %3041 = fadd fast float %3038, %3029
  %3042 = fadd fast float %3039, %3030
  %3043 = fadd fast float %3040, %3031
  %3044 = fsub fast float %2228, %3032
  %3045 = fsub fast float %2229, %3033
  %3046 = fsub fast float %2230, %3034
  %3047 = fmul fast float %3044, %1912
  %3048 = fmul fast float %3045, %1912
  %3049 = fmul fast float %3046, %1912
  %3050 = fadd fast float %3047, %3032
  %3051 = fadd fast float %3048, %3033
  %3052 = fadd fast float %3049, %3034
  br label %3053

; <label>:3053                                    ; preds = %3007, %2227
  %3054 = phi float [ %3050, %3007 ], [ %2228, %2227 ]
  %3055 = phi float [ %3051, %3007 ], [ %2229, %2227 ]
  %3056 = phi float [ %3052, %3007 ], [ %2230, %2227 ]
  %3057 = phi float [ %3041, %3007 ], [ %2231, %2227 ]
  %3058 = phi float [ %3042, %3007 ], [ %2232, %2227 ]
  %3059 = phi float [ %3043, %3007 ], [ %2233, %2227 ]
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 0
  %3062 = call float @dx.op.binary.f32(i32 36, float %1845, float %3061)  ; FMin(a,b)
  %3063 = fsub fast float 1.000000e+00, %1864
  %3064 = fmul fast float %3062, %3063
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = bitcast float %3065 to i32
  %3067 = sub nsw i32 2129859010, %3066
  %3068 = bitcast i32 %3067 to float
  %3069 = call float @dx.op.binary.f32(i32 36, float %1846, float %3061)  ; FMin(a,b)
  %3070 = fmul fast float %3069, %3063
  %3071 = fsub fast float 1.000000e+00, %3070
  %3072 = bitcast float %3071 to i32
  %3073 = sub nsw i32 2129859010, %3072
  %3074 = bitcast i32 %3073 to float
  %3075 = call float @dx.op.binary.f32(i32 36, float %1847, float %3061)  ; FMin(a,b)
  %3076 = fmul fast float %3075, %3063
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = bitcast float %3077 to i32
  %3079 = sub nsw i32 2129859010, %3078
  %3080 = bitcast i32 %3079 to float
  %3081 = fmul fast float %3057, %1864
  %3082 = fmul fast float %3081, %3068
  %3083 = fmul fast float %3058, %1864
  %3084 = fmul fast float %3083, %3074
  %3085 = fmul fast float %3059, %1864
  %3086 = fmul fast float %3085, %3080
  %3087 = call float @dx.op.binary.f32(i32 36, float %1842, float %3061)  ; FMin(a,b)
  %3088 = fmul fast float %3087, %3063
  %3089 = fsub fast float 1.000000e+00, %3088
  %3090 = bitcast float %3089 to i32
  %3091 = sub nsw i32 2129859010, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = call float @dx.op.binary.f32(i32 36, float %1843, float %3061)  ; FMin(a,b)
  %3094 = fmul fast float %3093, %3063
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = bitcast float %3095 to i32
  %3097 = sub nsw i32 2129859010, %3096
  %3098 = bitcast i32 %3097 to float
  %3099 = call float @dx.op.binary.f32(i32 36, float %1853, float %3061)  ; FMin(a,b)
  %3100 = fmul fast float %3099, %3063
  %3101 = fsub fast float 1.000000e+00, %3100
  %3102 = bitcast float %3101 to i32
  %3103 = sub nsw i32 2129859010, %3102
  %3104 = bitcast i32 %3103 to float
  %3105 = fmul fast float %3054, %1864
  %3106 = fmul fast float %3105, %3092
  %3107 = fmul fast float %3055, %1864
  %3108 = fmul fast float %3107, %3098
  %3109 = fmul fast float %3056, %1864
  %3110 = fmul fast float %3109, %3104
  %3111 = call float @dx.op.dot3.f32(i32 55, float %3082, float %3084, float %3086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3112 = select i1 %176, float 0.000000e+00, float %3082
  %3113 = select i1 %176, float %3111, float %3084
  %3114 = select i1 %176, float 0.000000e+00, float %3086
  %3115 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3108, float %3110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = select i1 %176, float 0.000000e+00, float %3106
  %3117 = select i1 %176, float %3115, float %3108
  %3118 = select i1 %176, float 0.000000e+00, float %3110
  %3119 = fmul fast float %1855, 9.843750e-01
  %3120 = fmul fast float %1851, 9.843750e-01
  %3121 = fadd fast float %3119, 7.812500e-03
  %3122 = fadd fast float %3120, 7.812500e-03
  %3123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3121, float %3122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 3
  %3126 = fmul fast float %3124, %1842
  %3127 = fmul fast float %3124, %1843
  %3128 = fmul fast float %3124, %1853
  %3129 = fadd fast float %3126, %3125
  %3130 = fadd fast float %3127, %3125
  %3131 = fadd fast float %3128, %3125
  %3132 = fcmp fast ogt float %1219, 0.000000e+00
  br i1 %3132, label %3133, label %3159

; <label>:3133                                    ; preds = %3053
  %3134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1219, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  %3136 = extractvalue %dx.types.ResRet.f32 %3134, 1
  %3137 = extractvalue %dx.types.ResRet.f32 %3134, 2
  %3138 = fadd fast float %3135, -5.000000e-01
  %3139 = fadd fast float %3136, -5.000000e-01
  %3140 = fadd fast float %3137, -5.000000e-01
  %3141 = fsub fast float 1.000000e+00, %1842
  %3142 = fsub fast float 1.000000e+00, %1843
  %3143 = fsub fast float 1.000000e+00, %1853
  %3144 = fmul fast float %1842, 4.000000e+00
  %3145 = fmul fast float %3144, %3141
  %3146 = fmul fast float %3145, %3138
  %3147 = fmul fast float %1843, 4.000000e+00
  %3148 = fmul fast float %3147, %3142
  %3149 = fmul fast float %3148, %3139
  %3150 = fmul fast float %1853, 4.000000e+00
  %3151 = fmul fast float %3150, %3143
  %3152 = fmul fast float %3151, %3140
  %3153 = fadd fast float %3146, %3129
  %3154 = fadd fast float %3149, %3130
  %3155 = fadd fast float %3152, %3131
  %3156 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3157 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3158 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br label %3159

; <label>:3159                                    ; preds = %3133, %3053
  %3160 = phi float [ %3156, %3133 ], [ %3129, %3053 ]
  %3161 = phi float [ %3157, %3133 ], [ %3130, %3053 ]
  %3162 = phi float [ %3158, %3133 ], [ %3131, %3053 ]
  %3163 = call float @dx.op.binary.f32(i32 35, float %3161, float %3162)  ; FMax(a,b)
  %3164 = call float @dx.op.binary.f32(i32 35, float %3160, float %3163)  ; FMax(a,b)
  %3165 = fsub fast float 1.000000e+00, %3164
  %3166 = fmul fast float %3165, %3112
  %3167 = fmul fast float %3165, %3113
  %3168 = fmul fast float %3165, %3114
  %3169 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1846, float %1847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3170 = fcmp fast ogt float %3169, 0x3E7FF19E20000000
  %3171 = fdiv fast float 1.000000e+00, %3169
  %3172 = select i1 %3170, float %3171, float 0.000000e+00
  %3173 = fmul fast float %3172, %1845
  %3174 = fmul fast float %3172, %1846
  %3175 = fmul fast float %3172, %1847
  %3176 = fadd fast float %3173, -1.000000e+00
  %3177 = fadd fast float %3174, -1.000000e+00
  %3178 = fadd fast float %3175, -1.000000e+00
  %3179 = fmul fast float %3176, 5.000000e-01
  %3180 = fmul fast float %3177, 5.000000e-01
  %3181 = fmul fast float %3178, 5.000000e-01
  %3182 = fadd fast float %3179, 1.000000e+00
  %3183 = fadd fast float %3180, 1.000000e+00
  %3184 = fadd fast float %3181, 1.000000e+00
  %3185 = fmul fast float %3160, %3116
  %3186 = fmul fast float %3161, %3117
  %3187 = fmul fast float %3162, %3118
  %3188 = fsub fast float 1.000000e+00, %1855
  %3189 = bitcast float %3188 to i32
  %3190 = sitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 5.000000e+00
  %3192 = fadd fast float %3191, 0xC1EFBF8940000000
  %3193 = fptosi float %3192 to i32
  %3194 = bitcast i32 %3193 to float
  %3195 = fmul fast float %3194, %1218
  %3196 = fmul fast float %3112, %3195
  %3197 = fmul fast float %3196, %3165
  %3198 = fmul fast float %3197, %3182
  %3199 = fmul fast float %3113, %3195
  %3200 = fmul fast float %3199, %3165
  %3201 = fmul fast float %3200, %3183
  %3202 = fmul fast float %3114, %3195
  %3203 = fmul fast float %3202, %3165
  %3204 = fmul fast float %3203, %3184
  %3205 = fmul fast float %3166, %1239
  %3206 = fmul fast float %3167, %1239
  %3207 = fmul fast float %3168, %1239
  %3208 = fadd fast float %3185, %1220
  %3209 = fadd fast float %3208, %3198
  %3210 = fmul fast float %3209, %1239
  %3211 = fadd fast float %3186, %1221
  %3212 = fadd fast float %3211, %3201
  %3213 = fmul fast float %3212, %1239
  %3214 = fadd fast float %3187, %1222
  %3215 = fadd fast float %3214, %3204
  %3216 = fmul fast float %3215, %1239
  %3217 = bitcast i32 %1867 to float
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 3
  %3220 = fcmp fast oeq float %3219, 0.000000e+00
  br i1 %3220, label %3448, label %3221

; <label>:3221                                    ; preds = %3159
  %3222 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3223 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3224 = extractvalue %dx.types.CBufRet.f32 %3218, 2
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = extractvalue %dx.types.CBufRet.f32 %3225, 1
  %3228 = extractvalue %dx.types.CBufRet.f32 %3225, 2
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = call float @dx.op.dot3.f32(i32 55, float %3226, float %3227, float %3228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3233 = select i1 %176, float %3230, float %3226
  %3234 = select i1 %176, float %3232, float %3227
  %3235 = select i1 %176, float %3231, float %3228
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 1
  %3238 = fcmp fast une float %3237, 0.000000e+00
  br i1 %3238, label %3239, label %3256

; <label>:3239                                    ; preds = %3221
  %3240 = fptoui float %58 to i32
  %3241 = fptoui float %59 to i32
  %3242 = lshr i32 %3240, 4
  %3243 = lshr i32 %3241, 4
  %3244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3244, 0
  %3246 = fptoui float %3245 to i32
  %3247 = add i32 %3246, 15
  %3248 = lshr i32 %3247, 4
  %3249 = mul i32 %3248, %3243
  %3250 = add i32 %3249, %3242
  %3251 = shl i32 %3250, 3
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = and i32 %3253, -268435456
  %3255 = icmp eq i32 %3254, -1342177280
  br i1 %3255, label %3266, label %3256

; <label>:3256                                    ; preds = %3239, %3221
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 2
  %3259 = extractvalue %dx.types.CBufRet.f32 %3257, 3
  %3260 = fmul fast float %3258, %58
  %3261 = fmul fast float %3259, %59
  %3262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3260, float %3261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  br label %3266

; <label>:3266                                    ; preds = %3256, %3239
  %3267 = phi float [ %3263, %3256 ], [ 0.000000e+00, %3239 ]
  %3268 = phi float [ %3264, %3256 ], [ 0.000000e+00, %3239 ]
  %3269 = phi float [ %3265, %3256 ], [ 0.000000e+00, %3239 ]
  %3270 = call float @dx.op.binary.f32(i32 36, float %3268, float %3269)  ; FMin(a,b)
  %3271 = call float @dx.op.binary.f32(i32 36, float %3267, float %3270)  ; FMin(a,b)
  %3272 = fcmp fast ogt float %3271, 0.000000e+00
  br i1 %3272, label %3273, label %3448, !dx.controlflow.hints !79

; <label>:3273                                    ; preds = %3266
  %3274 = fmul fast float %3267, %3233
  %3275 = fmul fast float %3268, %3234
  %3276 = fmul fast float %3269, %3235
  %3277 = fsub fast float %3222, %1841
  %3278 = fsub fast float %3223, %1840
  %3279 = fsub fast float %3224, %1839
  %3280 = call float @dx.op.dot3.f32(i32 55, float %3277, float %3278, float %3279, float %3277, float %3278, float %3279)  ; Dot3(ax,ay,az,bx,by,bz)
  %3281 = call float @dx.op.unary.f32(i32 25, float %3280)  ; Rsqrt(value)
  %3282 = fmul fast float %3281, %3277
  %3283 = fmul fast float %3281, %3278
  %3284 = fmul fast float %3281, %3279
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3222, float %3223, float %3224, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = call float @dx.op.dot3.f32(i32 55, float %1838, float %1837, float %1836, float %3282, float %3283, float %3284)  ; Dot3(ax,ay,az,bx,by,bz)
  %3287 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3288 = fmul fast float %3287, %3287
  %3289 = fmul fast float %3288, %3217
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3291 = fmul fast float %3290, %3287
  %3292 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1849, float %1850, float %3282, float %3283, float %3284)  ; Dot3(ax,ay,az,bx,by,bz)
  %3293 = fmul fast float %3292, %3292
  %3294 = call float @dx.op.unary.f32(i32 6, float %3285)  ; FAbs(value)
  %3295 = fsub fast float 1.000000e+00, %1851
  %3296 = call float @dx.op.binary.f32(i32 35, float %3295, float 0x3F847AE140000000)  ; FMax(a,b)
  %3297 = fmul fast float %3296, %3296
  %3298 = fmul fast float %3297, %3297
  %3299 = fsub fast float 1.000000e+00, %3298
  %3300 = fmul fast float %1855, %1855
  %3301 = fmul fast float %3300, %3299
  %3302 = fadd fast float %3301, %3298
  %3303 = bitcast float %3302 to i32
  %3304 = ashr i32 %3303, 1
  %3305 = add nsw i32 %3304, 532487669
  %3306 = bitcast i32 %3305 to float
  %3307 = fadd fast float %3306, %1855
  %3308 = fmul fast float %3298, %3293
  %3309 = fsub fast float 1.000000e+00, %3293
  %3310 = fadd fast float %3309, %3308
  %3311 = fmul fast float %3294, %3294
  %3312 = fmul fast float %3311, %3299
  %3313 = fadd fast float %3312, %3298
  %3314 = bitcast float %3313 to i32
  %3315 = ashr i32 %3314, 1
  %3316 = add nsw i32 %3315, 532487669
  %3317 = bitcast i32 %3316 to float
  %3318 = fadd fast float %3317, %3294
  %3319 = fmul fast float %3310, %3310
  %3320 = fmul fast float %3319, %3307
  %3321 = fmul fast float %3320, %3318
  %3322 = fdiv fast float 0x3FF0A00000000000, %3321
  %3323 = fmul fast float %3322, %3298
  %3324 = call float @dx.op.unary.f32(i32 6, float %3286)  ; FAbs(value)
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = bitcast float %3325 to i32
  %3327 = sitofp i32 %3326 to float
  %3328 = fmul fast float %3327, 5.000000e+00
  %3329 = fadd fast float %3328, 0xC1EFBF8940000000
  %3330 = fptosi float %3329 to i32
  %3331 = bitcast i32 %3330 to float
  %3332 = fsub fast float 1.000000e+00, %1842
  %3333 = fsub fast float 1.000000e+00, %1843
  %3334 = fsub fast float 1.000000e+00, %1853
  %3335 = fmul fast float %3331, %3332
  %3336 = fmul fast float %3331, %3333
  %3337 = fmul fast float %3331, %3334
  %3338 = fadd fast float %3335, %1842
  %3339 = fadd fast float %3336, %1843
  %3340 = fadd fast float %3337, %1853
  br i1 %3132, label %3341, label %3364

; <label>:3341                                    ; preds = %3273
  %3342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1219, float %3324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3343 = extractvalue %dx.types.ResRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.ResRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.ResRet.f32 %3342, 2
  %3346 = fadd fast float %3343, -5.000000e-01
  %3347 = fadd fast float %3344, -5.000000e-01
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fmul fast float %1842, 4.000000e+00
  %3350 = fmul fast float %3349, %3332
  %3351 = fmul fast float %3350, %3346
  %3352 = fmul fast float %1843, 4.000000e+00
  %3353 = fmul fast float %3352, %3333
  %3354 = fmul fast float %3353, %3347
  %3355 = fmul fast float %1853, 4.000000e+00
  %3356 = fmul fast float %3355, %3334
  %3357 = fmul fast float %3356, %3348
  %3358 = fadd fast float %3351, %3338
  %3359 = fadd fast float %3354, %3339
  %3360 = fadd fast float %3357, %3340
  %3361 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3362 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3363 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  br label %3364

; <label>:3364                                    ; preds = %3341, %3273
  %3365 = phi float [ %3361, %3341 ], [ %3338, %3273 ]
  %3366 = phi float [ %3362, %3341 ], [ %3339, %3273 ]
  %3367 = phi float [ %3363, %3341 ], [ %3340, %3273 ]
  %3368 = fmul fast float %3285, 9.843750e-01
  %3369 = fadd fast float %3368, 7.812500e-03
  %3370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3369, float %3122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 2
  %3372 = extractvalue %dx.types.ResRet.f32 %3370, 3
  %3373 = fmul fast float %3371, %1842
  %3374 = fmul fast float %3371, %1843
  %3375 = fmul fast float %3371, %1853
  %3376 = fadd fast float %3373, %3372
  %3377 = fadd fast float %3374, %3372
  %3378 = fadd fast float %3375, %3372
  br i1 %3132, label %3379, label %3402

; <label>:3379                                    ; preds = %3364
  %3380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1219, float %3285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = extractvalue %dx.types.ResRet.f32 %3380, 1
  %3383 = extractvalue %dx.types.ResRet.f32 %3380, 2
  %3384 = fadd fast float %3381, -5.000000e-01
  %3385 = fadd fast float %3382, -5.000000e-01
  %3386 = fadd fast float %3383, -5.000000e-01
  %3387 = fmul fast float %1842, 4.000000e+00
  %3388 = fmul fast float %3387, %3332
  %3389 = fmul fast float %3388, %3384
  %3390 = fmul fast float %1843, 4.000000e+00
  %3391 = fmul fast float %3390, %3333
  %3392 = fmul fast float %3391, %3385
  %3393 = fmul fast float %1853, 4.000000e+00
  %3394 = fmul fast float %3393, %3334
  %3395 = fmul fast float %3394, %3386
  %3396 = fadd fast float %3389, %3376
  %3397 = fadd fast float %3392, %3377
  %3398 = fadd fast float %3395, %3378
  %3399 = call float @dx.op.unary.f32(i32 7, float %3396)  ; Saturate(value)
  %3400 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3401 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  br label %3402

; <label>:3402                                    ; preds = %3379, %3364
  %3403 = phi float [ %3399, %3379 ], [ %3376, %3364 ]
  %3404 = phi float [ %3400, %3379 ], [ %3377, %3364 ]
  %3405 = phi float [ %3401, %3379 ], [ %3378, %3364 ]
  %3406 = call float @dx.op.binary.f32(i32 35, float %3404, float %3405)  ; FMax(a,b)
  %3407 = call float @dx.op.binary.f32(i32 35, float %3403, float %3406)  ; FMax(a,b)
  %3408 = fsub fast float 1.000000e+00, %3407
  %3409 = fmul fast float %3365, %3323
  %3410 = fmul fast float %3366, %3323
  %3411 = fmul fast float %3367, %3323
  %3412 = fsub fast float 1.000000e+00, %3286
  %3413 = bitcast float %3412 to i32
  %3414 = sitofp i32 %3413 to float
  %3415 = fmul fast float %3414, 5.000000e+00
  %3416 = fadd fast float %3415, 0xC1EFBF8940000000
  %3417 = fptosi float %3416 to i32
  %3418 = bitcast i32 %3417 to float
  %3419 = fmul fast float %3418, %1218
  %3420 = fmul fast float %3408, %3419
  %3421 = fmul fast float %3420, %3182
  %3422 = fmul fast float %3420, %3183
  %3423 = fmul fast float %3420, %3184
  %3424 = fadd fast float %3421, %3409
  %3425 = fadd fast float %3422, %3410
  %3426 = fadd fast float %3423, %3411
  %3427 = fmul fast float %3291, %3274
  %3428 = fmul fast float %3427, %3408
  %3429 = fmul fast float %3291, %3275
  %3430 = fmul fast float %3429, %3408
  %3431 = fmul fast float %3291, %3276
  %3432 = fmul fast float %3431, %3408
  %3433 = fmul fast float %3427, %3424
  %3434 = fmul fast float %3429, %3425
  %3435 = fmul fast float %3431, %3426
  %3436 = fadd fast float %3428, %3166
  %3437 = fmul fast float %3436, %1239
  %3438 = fadd fast float %3430, %3167
  %3439 = fmul fast float %3438, %1239
  %3440 = fadd fast float %3432, %3168
  %3441 = fmul fast float %3440, %1239
  %3442 = fadd fast float %3433, %3209
  %3443 = fmul fast float %3442, %1239
  %3444 = fadd fast float %3434, %3212
  %3445 = fmul fast float %3444, %1239
  %3446 = fadd fast float %3435, %3215
  %3447 = fmul fast float %3446, %1239
  br label %3448

; <label>:3448                                    ; preds = %3402, %3266, %3159
  %3449 = phi float [ %3210, %3159 ], [ %3210, %3266 ], [ %3443, %3402 ]
  %3450 = phi float [ %3213, %3159 ], [ %3213, %3266 ], [ %3445, %3402 ]
  %3451 = phi float [ %3216, %3159 ], [ %3216, %3266 ], [ %3447, %3402 ]
  %3452 = phi float [ %3205, %3159 ], [ %3205, %3266 ], [ %3437, %3402 ]
  %3453 = phi float [ %3206, %3159 ], [ %3206, %3266 ], [ %3439, %3402 ]
  %3454 = phi float [ %3207, %3159 ], [ %3207, %3266 ], [ %3441, %3402 ]
  %3455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.i32 %3455, 0
  %3457 = icmp eq i32 %3456, 0
  br i1 %3457, label %3892, label %3458

; <label>:3458                                    ; preds = %3448
  %3459 = fptoui float %58 to i32
  %3460 = fptoui float %59 to i32
  %3461 = lshr i32 %3459, 4
  %3462 = lshr i32 %3460, 4
  %3463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.i32 %3463, 0
  %3465 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3462, i32 %3464, i32 %3461)  ; UMad(a,b,c)
  %3466 = add nsw i32 %3456, -1
  %3467 = call i32 @dx.op.binary.i32(i32 37, i32 %3466, i32 0)  ; IMax(a,b)
  %3468 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3469 = fptoui float %3468 to i32
  %3470 = lshr i32 %3469, 5
  %3471 = call i32 @dx.op.binary.i32(i32 40, i32 %3470, i32 8191)  ; UMin(a,b)
  %3472 = shl i32 %3471, 2
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = lshr i32 %3474, 16
  %3476 = and i32 %3474, 65535
  %3477 = lshr i32 %3474, 21
  %3478 = lshr i32 %3476, 5
  %3479 = call i32 @dx.op.binary.i32(i32 40, i32 %3478, i32 %3467)  ; UMin(a,b)
  %3480 = icmp ugt i32 %3477, %3479
  br i1 %3480, label %3892, label %3481

; <label>:3481                                    ; preds = %3458
  br label %3482

; <label>:3482                                    ; preds = %3882, %3481
  %3483 = phi i32 [ %3889, %3882 ], [ %3477, %3481 ]
  %3484 = phi float [ %3883, %3882 ], [ %3449, %3481 ]
  %3485 = phi float [ %3884, %3882 ], [ %3450, %3481 ]
  %3486 = phi float [ %3885, %3882 ], [ %3451, %3481 ]
  %3487 = phi float [ %3886, %3882 ], [ %3452, %3481 ]
  %3488 = phi float [ %3887, %3882 ], [ %3453, %3481 ]
  %3489 = phi float [ %3888, %3882 ], [ %3454, %3481 ]
  %3490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.i32 %3490, 0
  %3492 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3465, i32 %3491, i32 %3483)  ; UMad(a,b,c)
  %3493 = shl i32 %3492, 2
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = shl i32 %3483, 5
  %3497 = sub nsw i32 %3475, %3496
  %3498 = call i32 @dx.op.binary.i32(i32 37, i32 %3497, i32 0)  ; IMax(a,b)
  %3499 = call i32 @dx.op.binary.i32(i32 38, i32 %3498, i32 31)  ; IMin(a,b)
  %3500 = sub nsw i32 1, %3475
  %3501 = add nsw i32 %3500, %3476
  %3502 = call i32 @dx.op.binary.i32(i32 37, i32 %3501, i32 0)  ; IMax(a,b)
  %3503 = call i32 @dx.op.binary.i32(i32 38, i32 %3502, i32 32)  ; IMin(a,b)
  %3504 = and i32 %3503, 31
  %3505 = shl i32 -1, %3504
  %3506 = xor i32 %3505, -1
  %3507 = and i32 %3499, 31
  %3508 = shl i32 %3506, %3507
  %3509 = icmp eq i32 %3503, 32
  %3510 = select i1 %3509, i32 -1, i32 %3508
  %3511 = and i32 %3510, %3495
  %3512 = icmp eq i32 %3511, 0
  br i1 %3512, label %3882, label %3513

; <label>:3513                                    ; preds = %3482
  br label %3514

; <label>:3514                                    ; preds = %3594, %3513
  %3515 = phi i32 [ %3526, %3594 ], [ %3511, %3513 ]
  %3516 = phi float [ %3595, %3594 ], [ %3484, %3513 ]
  %3517 = phi float [ %3596, %3594 ], [ %3485, %3513 ]
  %3518 = phi float [ %3597, %3594 ], [ %3486, %3513 ]
  %3519 = phi float [ %3598, %3594 ], [ %3487, %3513 ]
  %3520 = phi float [ %3599, %3594 ], [ %3488, %3513 ]
  %3521 = phi float [ %3600, %3594 ], [ %3489, %3513 ]
  %3522 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3515)  ; FirstbitLo(value)
  %3523 = add i32 %3522, %3496
  %3524 = and i32 %3522, 31
  %3525 = shl i32 1, %3524
  %3526 = xor i32 %3525, %3515
  %3527 = mul i32 %3523, 112
  %3528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.f32 %3528, 0
  %3530 = extractvalue %dx.types.ResRet.f32 %3528, 1
  %3531 = extractvalue %dx.types.ResRet.f32 %3528, 2
  %3532 = or i32 %3527, 12
  %3533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = add i32 %3527, 44
  %3536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = add i32 %3527, 48
  %3539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = add i32 %3527, 80
  %3544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3529, float %3530, float %3531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = select i1 %176, float %3545, float %3529
  %3549 = select i1 %176, float %3547, float %3530
  %3550 = select i1 %176, float %3546, float %3531
  %3551 = fsub fast float %3540, %105
  %3552 = fsub fast float %3541, %106
  %3553 = fsub fast float %3542, %107
  %3554 = call float @dx.op.dot3.f32(i32 55, float %3551, float %3552, float %3553, float %3551, float %3552, float %3553)  ; Dot3(ax,ay,az,bx,by,bz)
  %3555 = call float @dx.op.unary.f32(i32 24, float %3554)  ; Sqrt(value)
  %3556 = fdiv fast float 1.000000e+00, %3555
  %3557 = fmul fast float %3556, %3551
  %3558 = fmul fast float %3556, %3552
  %3559 = fmul fast float %3556, %3553
  %3560 = fadd fast float %3555, %3534
  %3561 = fdiv fast float 1.000000e+00, %3560
  %3562 = fmul float %3537, %3561
  %3563 = fmul float %3562, %3562
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = and i32 %3525, %3511
  %3566 = icmp eq i32 %3565, 0
  br i1 %3566, label %3589, label %3567, !dx.controlflow.hints !80

; <label>:3567                                    ; preds = %3514
  %3568 = lshr i32 %3459, 5
  %3569 = lshr i32 %3460, 5
  %3570 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3568, i32 %3569, i32 %3523, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 3
  %3573 = icmp eq i32 %3572, 0
  %3574 = select i1 %3573, float 1.000000e+00, float 0.000000e+00
  %3575 = icmp eq i32 %3572, 3
  br i1 %3575, label %3576, label %3589

; <label>:3576                                    ; preds = %3567
  %3577 = lshr i32 %3571, 10
  %3578 = and i32 %3577, 8160
  %3579 = and i32 %3460, 31
  %3580 = or i32 %3578, %3579
  %3581 = lshr i32 %3571, 1
  %3582 = and i32 %3581, 16352
  %3583 = and i32 %3459, 31
  %3584 = or i32 %3582, %3583
  %3585 = lshr i32 %3571, 23
  %3586 = and i32 %3585, 255
  %3587 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3584, i32 %3580, i32 %3586, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  br label %3589

; <label>:3589                                    ; preds = %3576, %3567, %3514
  %3590 = phi float [ %3588, %3576 ], [ %3574, %3567 ], [ 0.000000e+00, %3514 ]
  %3591 = call float @dx.op.binary.f32(i32 36, float %3590, float %3590)  ; FMin(a,b)
  %3592 = call float @dx.op.binary.f32(i32 36, float %3590, float %3591)  ; FMin(a,b)
  %3593 = fcmp fast ogt float %3592, 0.000000e+00
  br i1 %3593, label %3602, label %3594, !dx.controlflow.hints !81

; <label>:3594                                    ; preds = %3838, %3589
  %3595 = phi float [ %3516, %3589 ], [ %3878, %3838 ]
  %3596 = phi float [ %3517, %3589 ], [ %3879, %3838 ]
  %3597 = phi float [ %3518, %3589 ], [ %3880, %3838 ]
  %3598 = phi float [ %3519, %3589 ], [ %3872, %3838 ]
  %3599 = phi float [ %3520, %3589 ], [ %3873, %3838 ]
  %3600 = phi float [ %3521, %3589 ], [ %3874, %3838 ]
  %3601 = icmp eq i32 %3515, %3525
  br i1 %3601, label %3881, label %3514

; <label>:3602                                    ; preds = %3589
  %3603 = fmul fast float %3590, %3548
  %3604 = fmul fast float %3590, %3549
  %3605 = fmul fast float %3590, %3550
  %3606 = fsub fast float %3542, %1641
  %3607 = fcmp fast ogt float %3606, 0.000000e+00
  %3608 = fsub fast float %107, %1641
  %3609 = fcmp fast ogt float %3608, 0.000000e+00
  %3610 = xor i1 %3609, %3607
  %3611 = fsub fast float %1641, %3542
  %3612 = fmul fast float %3611, 2.000000e+00
  %3613 = fadd fast float %3612, %3542
  %3614 = select i1 %3610, float %3542, float %3613
  %3615 = fsub fast float %3614, %107
  %3616 = call float @dx.op.dot3.f32(i32 55, float %3551, float %3552, float %3615, float %3551, float %3552, float %3615)  ; Dot3(ax,ay,az,bx,by,bz)
  %3617 = call float @dx.op.unary.f32(i32 25, float %3616)  ; Rsqrt(value)
  %3618 = fmul fast float %3617, %3551
  %3619 = fmul fast float %3617, %3552
  %3620 = fmul fast float %3617, %3615
  %3621 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1649)  ; Dot3(ax,ay,az,bx,by,bz)
  %3622 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3618, float %3619, float %3620)  ; Dot3(ax,ay,az,bx,by,bz)
  %3623 = fdiv fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3621
  %3625 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3608, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = fcmp fast ogt float %3625, 0.000000e+00
  %3627 = fcmp fast olt float %3625, 0.000000e+00
  %3628 = zext i1 %3626 to i32
  %3629 = zext i1 %3627 to i32
  %3630 = sub nsw i32 %3628, %3629
  %3631 = sitofp i32 %3630 to float
  %3632 = fsub fast float %3614, %1641
  %3633 = call float @dx.op.dot3.f32(i32 55, float %3551, float %3552, float %3632, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3634 = fcmp fast ogt float %3633, 0.000000e+00
  %3635 = fcmp fast olt float %3633, 0.000000e+00
  %3636 = zext i1 %3634 to i32
  %3637 = zext i1 %3635 to i32
  %3638 = sub nsw i32 %3636, %3637
  %3639 = sitofp i32 %3638 to float
  %3640 = fcmp fast une float %3631, %3639
  br i1 %3640, label %3641, label %3651

; <label>:3641                                    ; preds = %3602
  %3642 = fmul fast float %3624, %3620
  %3643 = fmul fast float %3624, %3619
  %3644 = fmul fast float %3624, %3618
  %3645 = fmul fast float %3644, %3644
  %3646 = fmul fast float %3643, %3643
  %3647 = fadd fast float %3645, %3646
  %3648 = fmul fast float %3642, %3642
  %3649 = fadd fast float %3647, %3648
  %3650 = call float @dx.op.unary.f32(i32 24, float %3649)  ; Sqrt(value)
  br label %3663

; <label>:3651                                    ; preds = %3602
  %3652 = icmp slt i32 %3630, 0
  br i1 %3652, label %3653, label %3663

; <label>:3653                                    ; preds = %3651
  %3654 = fsub fast float %105, %3540
  %3655 = fsub fast float %106, %3541
  %3656 = fsub fast float %107, %3614
  %3657 = fmul fast float %3654, %3654
  %3658 = fmul fast float %3655, %3655
  %3659 = fadd fast float %3657, %3658
  %3660 = fmul fast float %3656, %3656
  %3661 = fadd fast float %3659, %3660
  %3662 = call float @dx.op.unary.f32(i32 24, float %3661)  ; Sqrt(value)
  br label %3663

; <label>:3663                                    ; preds = %3653, %3651, %3641
  %3664 = phi float [ %3650, %3641 ], [ %3662, %3653 ], [ 0.000000e+00, %3651 ]
  %3665 = and i1 %3609, %3607
  %3666 = fsub fast float -0.000000e+00, %3664
  %3667 = select i1 %3665, float -0.000000e+00, float %3666
  %3668 = fmul fast float %1642, 0x3FF7154760000000
  %3669 = fmul fast float %3668, %3667
  %3670 = fmul fast float %1643, 0x3FF7154760000000
  %3671 = fmul fast float %3670, %3667
  %3672 = fmul fast float %1644, 0x3FF7154760000000
  %3673 = fmul fast float %3672, %3667
  %3674 = call float @dx.op.unary.f32(i32 21, float %3669)  ; Exp(value)
  %3675 = call float @dx.op.unary.f32(i32 21, float %3671)  ; Exp(value)
  %3676 = call float @dx.op.unary.f32(i32 21, float %3673)  ; Exp(value)
  %3677 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3678 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3679 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3680 = fmul fast float %3603, %3677
  %3681 = fmul fast float %3604, %3678
  %3682 = fmul fast float %3605, %3679
  %3683 = fsub fast float %3557, %1841
  %3684 = fsub fast float %3558, %1840
  %3685 = fsub fast float %3559, %1839
  %3686 = call float @dx.op.dot3.f32(i32 55, float %3683, float %3684, float %3685, float %3683, float %3684, float %3685)  ; Dot3(ax,ay,az,bx,by,bz)
  %3687 = call float @dx.op.unary.f32(i32 25, float %3686)  ; Rsqrt(value)
  %3688 = fmul fast float %3687, %3683
  %3689 = fmul fast float %3687, %3684
  %3690 = fmul fast float %3687, %3685
  %3691 = call float @dx.op.dot3.f32(i32 55, float %3557, float %3558, float %3559, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = call float @dx.op.dot3.f32(i32 55, float %1838, float %1837, float %1836, float %3688, float %3689, float %3690)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3694 = fmul fast float %3693, %3564
  %3695 = fmul fast float %3693, %3693
  %3696 = fmul fast float %3695, %3217
  %3697 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3698 = fmul fast float %3694, %3697
  %3699 = bitcast float %3554 to i32
  %3700 = ashr i32 %3699, 1
  %3701 = sub nsw i32 1597463007, %3700
  %3702 = bitcast i32 %3701 to float
  %3703 = fmul fast float %3702, %3551
  %3704 = fmul fast float %3702, %3552
  %3705 = fmul fast float %3702, %3553
  %3706 = fsub fast float %3703, %1841
  %3707 = fsub fast float %3704, %1840
  %3708 = fsub fast float %3705, %1839
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3706, float %3707, float %3708, float %3706, float %3707, float %3708)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = call float @dx.op.unary.f32(i32 25, float %3709)  ; Rsqrt(value)
  %3711 = fmul fast float %3706, %3710
  %3712 = fmul fast float %3707, %3710
  %3713 = fmul fast float %3708, %3710
  %3714 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1849, float %1850, float %3711, float %3712, float %3713)  ; Dot3(ax,ay,az,bx,by,bz)
  %3715 = fmul fast float %3714, %3714
  %3716 = call float @dx.op.unary.f32(i32 6, float %3691)  ; FAbs(value)
  %3717 = fsub fast float 1.000000e+00, %1851
  %3718 = call float @dx.op.binary.f32(i32 35, float %3717, float 0x3F847AE140000000)  ; FMax(a,b)
  %3719 = fmul fast float %3718, %3718
  %3720 = fmul fast float %3719, %3719
  %3721 = fsub fast float 1.000000e+00, %3720
  %3722 = fmul fast float %1855, %1855
  %3723 = fmul fast float %3722, %3721
  %3724 = fadd fast float %3723, %3720
  %3725 = bitcast float %3724 to i32
  %3726 = ashr i32 %3725, 1
  %3727 = add nsw i32 %3726, 532487669
  %3728 = bitcast i32 %3727 to float
  %3729 = fadd fast float %3728, %1855
  %3730 = fmul fast float %3720, %3715
  %3731 = fsub fast float 1.000000e+00, %3715
  %3732 = fadd fast float %3731, %3730
  %3733 = fmul fast float %3716, %3716
  %3734 = fmul fast float %3733, %3721
  %3735 = fadd fast float %3734, %3720
  %3736 = bitcast float %3735 to i32
  %3737 = ashr i32 %3736, 1
  %3738 = add nsw i32 %3737, 532487669
  %3739 = bitcast i32 %3738 to float
  %3740 = fadd fast float %3739, %3716
  %3741 = fmul fast float %3732, %3732
  %3742 = fmul fast float %3741, %3729
  %3743 = fmul fast float %3742, %3740
  %3744 = fdiv fast float 1.000000e+00, %3743
  %3745 = bitcast float %3720 to i32
  %3746 = sitofp i32 %3745 to float
  %3747 = fmul fast float %3746, 0x3FE7F73180000000
  %3748 = fadd fast float %3747, 0x41AFE27C40000000
  %3749 = fptosi float %3748 to i32
  %3750 = bitcast i32 %3749 to float
  %3751 = fmul fast float %3537, 0x3FD80E9D60000000
  %3752 = fmul fast float %3751, %3702
  %3753 = fadd fast float %3750, %3752
  %3754 = bitcast float %3753 to i32
  %3755 = sub nsw i32 2129859010, %3754
  %3756 = bitcast i32 %3755 to float
  %3757 = fmul fast float %3720, %3744
  %3758 = fmul fast float %3757, %3750
  %3759 = fmul fast float %3758, %3756
  %3760 = call float @dx.op.unary.f32(i32 6, float %3692)  ; FAbs(value)
  %3761 = fsub fast float 1.000000e+00, %3760
  %3762 = bitcast float %3761 to i32
  %3763 = sitofp i32 %3762 to float
  %3764 = fmul fast float %3763, 5.000000e+00
  %3765 = fadd fast float %3764, 0xC1EFBF8940000000
  %3766 = fptosi float %3765 to i32
  %3767 = bitcast i32 %3766 to float
  %3768 = fsub fast float 1.000000e+00, %1842
  %3769 = fsub fast float 1.000000e+00, %1843
  %3770 = fsub fast float 1.000000e+00, %1853
  %3771 = fmul fast float %3767, %3768
  %3772 = fmul fast float %3767, %3769
  %3773 = fmul fast float %3767, %3770
  %3774 = fadd fast float %3771, %1842
  %3775 = fadd fast float %3772, %1843
  %3776 = fadd fast float %3773, %1853
  br i1 %3132, label %3777, label %3800

; <label>:3777                                    ; preds = %3663
  %3778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1219, float %3760, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = extractvalue %dx.types.ResRet.f32 %3778, 1
  %3781 = extractvalue %dx.types.ResRet.f32 %3778, 2
  %3782 = fadd fast float %3779, -5.000000e-01
  %3783 = fadd fast float %3780, -5.000000e-01
  %3784 = fadd fast float %3781, -5.000000e-01
  %3785 = fmul fast float %1842, 4.000000e+00
  %3786 = fmul fast float %3785, %3768
  %3787 = fmul fast float %3786, %3782
  %3788 = fmul fast float %1843, 4.000000e+00
  %3789 = fmul fast float %3788, %3769
  %3790 = fmul fast float %3789, %3783
  %3791 = fmul fast float %1853, 4.000000e+00
  %3792 = fmul fast float %3791, %3770
  %3793 = fmul fast float %3792, %3784
  %3794 = fadd fast float %3787, %3774
  %3795 = fadd fast float %3790, %3775
  %3796 = fadd fast float %3793, %3776
  %3797 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  %3798 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3799 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  br label %3800

; <label>:3800                                    ; preds = %3777, %3663
  %3801 = phi float [ %3797, %3777 ], [ %3774, %3663 ]
  %3802 = phi float [ %3798, %3777 ], [ %3775, %3663 ]
  %3803 = phi float [ %3799, %3777 ], [ %3776, %3663 ]
  %3804 = fmul fast float %3691, 9.843750e-01
  %3805 = fadd fast float %3804, 7.812500e-03
  %3806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3805, float %3122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3807 = extractvalue %dx.types.ResRet.f32 %3806, 2
  %3808 = extractvalue %dx.types.ResRet.f32 %3806, 3
  %3809 = fmul fast float %3807, %1842
  %3810 = fmul fast float %3807, %1843
  %3811 = fmul fast float %3807, %1853
  %3812 = fadd fast float %3809, %3808
  %3813 = fadd fast float %3810, %3808
  %3814 = fadd fast float %3811, %3808
  br i1 %3132, label %3815, label %3838

; <label>:3815                                    ; preds = %3800
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1219, float %3691, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fmul fast float %1842, 4.000000e+00
  %3824 = fmul fast float %3823, %3768
  %3825 = fmul fast float %3824, %3820
  %3826 = fmul fast float %1843, 4.000000e+00
  %3827 = fmul fast float %3826, %3769
  %3828 = fmul fast float %3827, %3821
  %3829 = fmul fast float %1853, 4.000000e+00
  %3830 = fmul fast float %3829, %3770
  %3831 = fmul fast float %3830, %3822
  %3832 = fadd fast float %3825, %3812
  %3833 = fadd fast float %3828, %3813
  %3834 = fadd fast float %3831, %3814
  %3835 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3836 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3837 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  br label %3838

; <label>:3838                                    ; preds = %3815, %3800
  %3839 = phi float [ %3835, %3815 ], [ %3812, %3800 ]
  %3840 = phi float [ %3836, %3815 ], [ %3813, %3800 ]
  %3841 = phi float [ %3837, %3815 ], [ %3814, %3800 ]
  %3842 = call float @dx.op.binary.f32(i32 35, float %3840, float %3841)  ; FMax(a,b)
  %3843 = call float @dx.op.binary.f32(i32 35, float %3839, float %3842)  ; FMax(a,b)
  %3844 = fsub fast float 1.000000e+00, %3843
  %3845 = fmul fast float %3801, %3759
  %3846 = fmul fast float %3802, %3759
  %3847 = fmul fast float %3803, %3759
  %3848 = fsub fast float 1.000000e+00, %3692
  %3849 = bitcast float %3848 to i32
  %3850 = sitofp i32 %3849 to float
  %3851 = fmul fast float %3850, 5.000000e+00
  %3852 = fadd fast float %3851, 0xC1EFBF8940000000
  %3853 = fptosi float %3852 to i32
  %3854 = bitcast i32 %3853 to float
  %3855 = fmul fast float %3854, %1218
  %3856 = fmul fast float %3844, %3855
  %3857 = fmul fast float %3856, %3182
  %3858 = fmul fast float %3856, %3183
  %3859 = fmul fast float %3856, %3184
  %3860 = fadd fast float %3857, %3845
  %3861 = fadd fast float %3858, %3846
  %3862 = fadd fast float %3859, %3847
  %3863 = fmul fast float %3680, %1239
  %3864 = fmul fast float %3863, %3698
  %3865 = fmul fast float %3864, %3844
  %3866 = fmul fast float %3681, %1239
  %3867 = fmul fast float %3866, %3698
  %3868 = fmul fast float %3867, %3844
  %3869 = fmul fast float %3682, %1239
  %3870 = fmul fast float %3869, %3698
  %3871 = fmul fast float %3870, %3844
  %3872 = fadd fast float %3865, %3519
  %3873 = fadd fast float %3868, %3520
  %3874 = fadd fast float %3871, %3521
  %3875 = fmul fast float %3864, %3860
  %3876 = fmul fast float %3867, %3861
  %3877 = fmul fast float %3870, %3862
  %3878 = fadd fast float %3875, %3516
  %3879 = fadd fast float %3876, %3517
  %3880 = fadd fast float %3877, %3518
  br label %3594

; <label>:3881                                    ; preds = %3594
  br label %3882

; <label>:3882                                    ; preds = %3881, %3482
  %3883 = phi float [ %3484, %3482 ], [ %3595, %3881 ]
  %3884 = phi float [ %3485, %3482 ], [ %3596, %3881 ]
  %3885 = phi float [ %3486, %3482 ], [ %3597, %3881 ]
  %3886 = phi float [ %3487, %3482 ], [ %3598, %3881 ]
  %3887 = phi float [ %3488, %3482 ], [ %3599, %3881 ]
  %3888 = phi float [ %3489, %3482 ], [ %3600, %3881 ]
  %3889 = add i32 %3483, 1
  %3890 = icmp ugt i32 %3889, %3479
  br i1 %3890, label %3891, label %3482

; <label>:3891                                    ; preds = %3882
  br label %3892

; <label>:3892                                    ; preds = %3891, %3458, %3448
  %3893 = phi float [ %3449, %3448 ], [ %3449, %3458 ], [ %3883, %3891 ]
  %3894 = phi float [ %3450, %3448 ], [ %3450, %3458 ], [ %3884, %3891 ]
  %3895 = phi float [ %3451, %3448 ], [ %3451, %3458 ], [ %3885, %3891 ]
  %3896 = phi float [ %3452, %3448 ], [ %3452, %3458 ], [ %3886, %3891 ]
  %3897 = phi float [ %3453, %3448 ], [ %3453, %3458 ], [ %3887, %3891 ]
  %3898 = phi float [ %3454, %3448 ], [ %3454, %3458 ], [ %3888, %3891 ]
  %3899 = call float @dx.op.unary.f32(i32 24, float %1845)  ; Sqrt(value)
  %3900 = call float @dx.op.unary.f32(i32 24, float %1846)  ; Sqrt(value)
  %3901 = call float @dx.op.unary.f32(i32 24, float %1847)  ; Sqrt(value)
  %3902 = fmul fast float %3899, %3896
  %3903 = fmul fast float %3900, %3897
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  br i1 %176, label %3906, label %3926

; <label>:3906                                    ; preds = %3892
  %3907 = fadd fast float %3898, %1216
  %3908 = fmul fast float %3907, %1217
  %3909 = fsub fast float 1.000000e+00, %1217
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 3
  %3913 = fmul fast float %3912, %3910
  %3914 = fadd fast float %3913, %3908
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = fmul fast float %3916, %3188
  %3918 = fsub fast float %3914, %3917
  %3919 = fadd fast float %3903, %3902
  %3920 = fmul fast float %3905, %3919
  %3921 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3922 = fsub fast float %3918, %3921
  %3923 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3924 = fmul fast float %3922, %3923
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  br label %3942

; <label>:3926                                    ; preds = %3892
  %3927 = fmul fast float %3901, %3898
  %3928 = fmul fast float %3905, %3902
  %3929 = fmul fast float %3905, %3903
  %3930 = fmul fast float %3927, %3905
  %3931 = add i32 %38, 116
  %3932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.i32 %3932, 0
  %3934 = and i32 %3933, 32
  %3935 = icmp eq i32 %3934, 0
  br i1 %3935, label %3942, label %3936

; <label>:3936                                    ; preds = %3926
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = fmul fast float %3938, 0x3FE99999A0000000
  %3940 = fadd fast float %3938, %3928
  %3941 = fadd fast float %3939, %3930
  br label %3942

; <label>:3942                                    ; preds = %3936, %3926, %3906
  %3943 = phi float [ %3920, %3906 ], [ %3940, %3936 ], [ %3928, %3926 ]
  %3944 = phi float [ %3925, %3906 ], [ %3929, %3936 ], [ %3929, %3926 ]
  %3945 = phi float [ 1.000000e+00, %3906 ], [ %3941, %3936 ], [ %3930, %3926 ]
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = fmul fast float %3947, %3894
  %3949 = fmul fast float %3947, %3895
  %3950 = fadd fast float %3894, %3893
  %3951 = select i1 %176, float %3950, float %3893
  %3952 = fmul float %3951, %3947
  %3953 = select i1 %176, float 0.000000e+00, float %3948
  %3954 = select i1 %176, float 0.000000e+00, float %3949
  %3955 = fmul fast float %3943, %3899
  %3956 = fmul fast float %3944, %3900
  %3957 = fmul fast float %3945, %3901
  %3958 = fadd fast float %3952, %3955
  %3959 = fadd fast float %3953, %3956
  %3960 = fadd fast float %3954, %3957
  %3961 = select i1 %176, float %3944, float %3959
  %3962 = select i1 %176, float %3945, float %3960
  %3963 = call float @dx.op.binary.f32(i32 36, float %3958, float 3.225500e+04)  ; FMin(a,b)
  %3964 = call float @dx.op.binary.f32(i32 36, float %3961, float 3.225500e+04)  ; FMin(a,b)
  %3965 = call float @dx.op.binary.f32(i32 36, float %3962, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3965)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

