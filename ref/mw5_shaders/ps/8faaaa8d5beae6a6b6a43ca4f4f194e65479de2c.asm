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
; shader hash: e978b722e851f87ca7cc5639714ae4b4
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
  %346 = add i32 %38, 156
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
  %694 = bitcast i32 %693 to float
  %695 = fcmp fast oge float %694, 0.000000e+00
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = select i1 %695, float %694, float %697
  %699 = call float @dx.op.dot2.f32(i32 54, float %678, float %679, float %678, float %679)  ; Dot2(ax,ay,bx,by)
  %700 = fmul fast float %699, 0x3FE3333340000000
  %701 = fsub fast float 1.000000e+00, %700
  %702 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %701, float %678, float %679, float %701)  ; Dot3(ax,ay,az,bx,by,bz)
  %703 = call float @dx.op.unary.f32(i32 25, float %702)  ; Rsqrt(value)
  %704 = fmul fast float %703, %678
  %705 = fmul fast float %703, %679
  %706 = fmul fast float %701, %703
  %707 = fmul fast float %706, %43
  %708 = fmul fast float %706, %44
  %709 = fmul fast float %706, %45
  %710 = fmul fast float %704, %39
  %711 = fmul fast float %704, %40
  %712 = fmul fast float %704, %41
  %713 = fadd fast float %707, %710
  %714 = fadd fast float %708, %711
  %715 = fadd fast float %709, %712
  %716 = fmul fast float %705, %69
  %717 = fmul fast float %705, %70
  %718 = fmul fast float %705, %71
  %719 = fadd fast float %713, %716
  %720 = fadd fast float %714, %717
  %721 = fadd fast float %715, %718
  %722 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %719, float %720, float %721)  ; Dot3(ax,ay,az,bx,by,bz)
  %723 = call float @dx.op.unary.f32(i32 25, float %722)  ; Rsqrt(value)
  %724 = fmul fast float %719, %723
  %725 = fmul fast float %720, %723
  %726 = fmul fast float %721, %723
  %727 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %728 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %729 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %730 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %731 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %732 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %733 = fadd fast float %727, %105
  %734 = fadd fast float %728, %106
  %735 = fadd fast float %729, %107
  %736 = fadd fast float %730, %105
  %737 = fadd fast float %731, %106
  %738 = fadd fast float %732, %107
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %742 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 3
  %746 = fmul fast float %740, %58
  %747 = fmul fast float %746, %744
  %748 = fmul fast float %741, %59
  %749 = fmul fast float %748, %745
  %750 = fptoui float %747 to i32
  %751 = fptoui float %749 to i32
  %752 = fadd fast float %740, -1.000000e+00
  %753 = fadd fast float %741, -1.000000e+00
  %754 = fptoui float %752 to i32
  %755 = fptoui float %753 to i32
  %756 = call i32 @dx.op.binary.i32(i32 40, i32 %750, i32 %754)  ; UMin(a,b)
  %757 = call i32 @dx.op.binary.i32(i32 40, i32 %751, i32 %755)  ; UMin(a,b)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %760 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %761 = fmul fast float %759, %53
  %762 = fsub fast float %761, %760
  %763 = fadd fast float %742, -1.000000e+00
  %764 = call float @dx.op.binary.f32(i32 36, float %762, float %763)  ; FMin(a,b)
  %765 = fptoui float %764 to i32
  %766 = fptoui float %740 to i32
  %767 = fptoui float %741 to i32
  %768 = mul i32 %765, %767
  %769 = add i32 %768, %757
  %770 = mul i32 %769, %766
  %771 = add i32 %770, %756
  %772 = shl i32 %771, 2
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 1023
  %776 = lshr i32 %774, 10
  %777 = icmp eq i32 %775, 0
  br i1 %777, label %1203, label %778

; <label>:778                                     ; preds = %677
  %779 = and i32 %774, 1023
  br label %780

; <label>:780                                     ; preds = %906, %778
  %781 = phi float [ %907, %906 ], [ 0.000000e+00, %778 ]
  %782 = phi float [ %908, %906 ], [ %698, %778 ]
  %783 = phi float [ %909, %906 ], [ %690, %778 ]
  %784 = phi float [ %910, %906 ], [ 0.000000e+00, %778 ]
  %785 = phi float [ %911, %906 ], [ 0.000000e+00, %778 ]
  %786 = phi float [ %912, %906 ], [ %683, %778 ]
  %787 = phi float [ %913, %906 ], [ %684, %778 ]
  %788 = phi float [ %914, %906 ], [ %685, %778 ]
  %789 = phi float [ %915, %906 ], [ %724, %778 ]
  %790 = phi float [ %916, %906 ], [ %725, %778 ]
  %791 = phi float [ %917, %906 ], [ %726, %778 ]
  %792 = phi float [ %918, %906 ], [ %689, %778 ]
  %793 = phi float [ %919, %906 ], [ %688, %778 ]
  %794 = phi float [ %920, %906 ], [ 0.000000e+00, %778 ]
  %795 = phi float [ %921, %906 ], [ %686, %778 ]
  %796 = phi float [ %922, %906 ], [ %680, %778 ]
  %797 = phi float [ %923, %906 ], [ %681, %778 ]
  %798 = phi float [ %924, %906 ], [ %682, %778 ]
  %799 = phi i32 [ %856, %906 ], [ 0, %778 ]
  %800 = add nuw nsw i32 %799, %776
  %801 = shl i32 %800, 2
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = shl i32 %803, 8
  %805 = or i32 %804, 48
  %806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = extractvalue %dx.types.ResRet.f32 %806, 3
  %811 = or i32 %804, 64
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = extractvalue %dx.types.ResRet.i32 %812, 1
  %815 = or i32 %804, 80
  %816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 2
  %818 = extractvalue %dx.types.ResRet.f32 %816, 3
  %819 = or i32 %804, 96
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = or i32 %804, 112
  %826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 2
  %828 = or i32 %804, 128
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = extractvalue %dx.types.ResRet.f32 %829, 3
  %834 = or i32 %804, 144
  %835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = extractvalue %dx.types.ResRet.f32 %835, 3
  %840 = or i32 %804, 160
  %841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 0
  %843 = extractvalue %dx.types.ResRet.f32 %841, 1
  %844 = extractvalue %dx.types.ResRet.f32 %841, 2
  %845 = extractvalue %dx.types.ResRet.f32 %841, 3
  %846 = or i32 %804, 192
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = or i32 %804, 208
  %850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = or i32 %804, 248
  %853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = extractvalue %dx.types.ResRet.f32 %853, 1
  %856 = add nuw nsw i32 %799, 1
  %857 = bitcast float %810 to i32
  %858 = and i32 %857, 2560
  %859 = icmp eq i32 %858, 0
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = extractvalue %dx.types.ResRet.f32 %860, 3
  %865 = call float @dx.op.dot4.f32(i32 56, float %861, float %862, float %863, float %864, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %866 = or i32 %804, 16
  %867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = extractvalue %dx.types.ResRet.f32 %867, 3
  %872 = call float @dx.op.dot4.f32(i32 56, float %868, float %869, float %870, float %871, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %873 = or i32 %804, 32
  %874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = extractvalue %dx.types.ResRet.f32 %874, 3
  %879 = call float @dx.op.dot4.f32(i32 56, float %875, float %876, float %877, float %878, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %880 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %881 = call float @dx.op.unary.f32(i32 6, float %880)  ; FAbs(value)
  %882 = call float @dx.op.unary.f32(i32 27, float %872)  ; Round_ni(value)
  %883 = call float @dx.op.unary.f32(i32 6, float %882)  ; FAbs(value)
  %884 = call float @dx.op.unary.f32(i32 6, float %879)  ; FAbs(value)
  %885 = call float @dx.op.unary.f32(i32 27, float %884)  ; Round_ni(value)
  %886 = fadd fast float %883, %881
  %887 = fadd fast float %886, %885
  %888 = fcmp fast oeq float %887, 0.000000e+00
  %889 = call float @dx.op.dot4.f32(i32 56, float %861, float %862, float %863, float %864, float %733, float %734, float %735, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %890 = call float @dx.op.dot4.f32(i32 56, float %868, float %869, float %870, float %871, float %733, float %734, float %735, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %891 = call float @dx.op.dot4.f32(i32 56, float %861, float %862, float %863, float %864, float %736, float %737, float %738, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %892 = call float @dx.op.dot4.f32(i32 56, float %868, float %869, float %870, float %871, float %736, float %737, float %738, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %893 = fsub fast float %889, %865
  %894 = fsub fast float %891, %865
  %895 = fsub fast float %890, %872
  %896 = fsub fast float %892, %872
  %897 = call float @dx.op.dot3.f32(i32 55, float %807, float %808, float %809, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %900 = fadd fast float %899, %897
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %903 = fcmp fast ogt float %901, %902
  %904 = and i1 %888, %903
  %905 = and i1 %859, %904
  br i1 %905, label %926, label %906

; <label>:906                                     ; preds = %1189, %1007, %926, %780
  %907 = phi float [ %781, %926 ], [ %1010, %1007 ], [ %1010, %1189 ], [ %781, %780 ]
  %908 = phi float [ %782, %926 ], [ %782, %1007 ], [ %1164, %1189 ], [ %782, %780 ]
  %909 = phi float [ %783, %926 ], [ %783, %1007 ], [ %1162, %1189 ], [ %783, %780 ]
  %910 = phi float [ %784, %926 ], [ %784, %1007 ], [ %1134, %1189 ], [ %784, %780 ]
  %911 = phi float [ %785, %926 ], [ %785, %1007 ], [ %1132, %1189 ], [ %785, %780 ]
  %912 = phi float [ %786, %926 ], [ %786, %1007 ], [ %1199, %1189 ], [ %786, %780 ]
  %913 = phi float [ %787, %926 ], [ %787, %1007 ], [ %1200, %1189 ], [ %787, %780 ]
  %914 = phi float [ %788, %926 ], [ %788, %1007 ], [ %1201, %1189 ], [ %788, %780 ]
  %915 = phi float [ %789, %926 ], [ %789, %1007 ], [ %1113, %1189 ], [ %789, %780 ]
  %916 = phi float [ %790, %926 ], [ %790, %1007 ], [ %1114, %1189 ], [ %790, %780 ]
  %917 = phi float [ %791, %926 ], [ %791, %1007 ], [ %1115, %1189 ], [ %791, %780 ]
  %918 = phi float [ %792, %926 ], [ %792, %1007 ], [ %1142, %1189 ], [ %792, %780 ]
  %919 = phi float [ %793, %926 ], [ %793, %1007 ], [ %1139, %1189 ], [ %793, %780 ]
  %920 = phi float [ %794, %926 ], [ %794, %1007 ], [ %1136, %1189 ], [ %794, %780 ]
  %921 = phi float [ %795, %926 ], [ %795, %1007 ], [ %1130, %1189 ], [ %795, %780 ]
  %922 = phi float [ %796, %926 ], [ %796, %1007 ], [ %1125, %1189 ], [ %796, %780 ]
  %923 = phi float [ %797, %926 ], [ %797, %1007 ], [ %1126, %1189 ], [ %797, %780 ]
  %924 = phi float [ %798, %926 ], [ %798, %1007 ], [ %1127, %1189 ], [ %798, %780 ]
  %925 = icmp eq i32 %856, %779
  br i1 %925, label %1202, label %780

; <label>:926                                     ; preds = %780
  %927 = extractvalue %dx.types.ResRet.f32 %826, 3
  %928 = extractvalue %dx.types.ResRet.f32 %826, 1
  %929 = extractvalue %dx.types.ResRet.f32 %826, 0
  %930 = extractvalue %dx.types.ResRet.f32 %816, 1
  %931 = extractvalue %dx.types.ResRet.f32 %816, 0
  %932 = extractvalue %dx.types.ResRet.i32 %812, 3
  %933 = extractvalue %dx.types.ResRet.i32 %812, 2
  %934 = add i32 %932, 0
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %935, %dx.types.Handle %936, float %865, float %872, float undef, float undef, i32 0, i32 0, i32 undef, float %893, float %895, float undef, float %894, float %896, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = fmul fast float %938, %931
  %940 = fadd fast float %939, %930
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %942 = fmul fast float %865, %821
  %943 = call float @dx.op.tertiary.f32(i32 46, float %822, float %872, float %942)  ; FMad(a,b,c)
  %944 = fadd fast float %943, %929
  %945 = fmul fast float %865, %823
  %946 = call float @dx.op.tertiary.f32(i32 46, float %824, float %872, float %945)  ; FMad(a,b,c)
  %947 = fadd fast float %946, %928
  %948 = fmul fast float %893, %821
  %949 = call float @dx.op.tertiary.f32(i32 46, float %822, float %895, float %948)  ; FMad(a,b,c)
  %950 = fmul fast float %893, %823
  %951 = call float @dx.op.tertiary.f32(i32 46, float %824, float %895, float %950)  ; FMad(a,b,c)
  %952 = fmul fast float %894, %821
  %953 = call float @dx.op.tertiary.f32(i32 46, float %822, float %896, float %952)  ; FMad(a,b,c)
  %954 = fmul fast float %894, %823
  %955 = call float @dx.op.tertiary.f32(i32 46, float %824, float %896, float %954)  ; FMad(a,b,c)
  %956 = add i32 %933, 0
  %957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %956, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %957, %dx.types.Handle %936, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float %949, float %951, float undef, float %953, float %955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = and i32 %857, 1024
  %961 = icmp ne i32 %960, 0
  %962 = fcmp fast ogt float %959, 0x3FE0101020000000
  %963 = uitofp i1 %962 to float
  %964 = select i1 %961, float %963, float %959
  %965 = and i32 %857, 8192
  %966 = icmp ne i32 %965, 0
  %967 = select i1 %966, float %927, float 1.000000e+00
  %968 = fmul fast float %865, 2.000000e+00
  %969 = fadd fast float %968, -1.000000e+00
  %970 = call float @dx.op.unary.f32(i32 6, float %969)  ; FAbs(value)
  %971 = fmul fast float %970, %854
  %972 = fsub fast float %971, %854
  %973 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %974 = fmul fast float %872, 2.000000e+00
  %975 = fadd fast float %974, -1.000000e+00
  %976 = call float @dx.op.unary.f32(i32 6, float %975)  ; FAbs(value)
  %977 = fmul fast float %976, %855
  %978 = fsub fast float %977, %855
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %980 = fmul fast float %884, %817
  %981 = fsub fast float %980, %817
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  %983 = fmul fast float %941, %967
  %984 = fmul fast float %983, %938
  %985 = fmul fast float %984, %973
  %986 = fmul fast float %985, %964
  %987 = fmul fast float %986, %979
  %988 = fmul fast float %987, %982
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %991 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %992 = fsub fast float %901, %991
  %993 = fmul fast float %992, %990
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = fmul fast float %988, %818
  %996 = fadd fast float %988, %818
  %997 = fmul fast float %996, %827
  %998 = fsub fast float %997, %827
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = and i32 %857, 128
  %1001 = icmp ne i32 %1000, 0
  %1002 = select i1 %1001, float %999, float %995
  %1003 = fmul fast float %1002, %994
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = fcmp fast ugt float %1003, %1005
  br i1 %1006, label %1007, label %906

; <label>:1007                                    ; preds = %926
  %1008 = select i1 %966, float %1003, float 0.000000e+00
  %1009 = fadd fast float %1008, %781
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  br i1 %966, label %906, label %1011

; <label>:1011                                    ; preds = %1007
  %1012 = and i32 %857, 4
  %1013 = and i32 %857, 8
  %1014 = add i32 %813, 0
  %1015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1014, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1017 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1015, %dx.types.Handle %1016, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float %949, float %951, float undef, float %953, float %955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1022 = bitcast float %839 to i32
  %1023 = and i32 %1022, 255
  %1024 = uitofp i32 %1023 to float
  %1025 = lshr i32 %1022, 8
  %1026 = and i32 %1025, 255
  %1027 = uitofp i32 %1026 to float
  %1028 = fmul fast float %1021, %1024
  %1029 = fadd fast float %1028, %1027
  %1030 = fmul fast float %1029, 0x3F70101000000000
  %1031 = add i32 %814, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1031, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1032, %dx.types.Handle %1016, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float %949, float %951, float undef, float %953, float %955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = bitcast float %833 to i32
  %1039 = and i32 %1038, 255
  %1040 = uitofp i32 %1039 to float
  %1041 = lshr i32 %1038, 8
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = lshr i32 %1038, 16
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3F70101000000000
  %1048 = fmul fast float %1034, %1040
  %1049 = fadd fast float %1048, %1043
  %1050 = fmul fast float %1049, 0x3F70101000000000
  %1051 = fadd fast float %1035, -5.000000e-01
  %1052 = fadd fast float %1037, -5.000000e-01
  %1053 = fmul fast float %1051, %1047
  %1054 = fmul fast float %1052, %1047
  %1055 = fadd fast float %1053, 5.000000e-01
  %1056 = fadd fast float %1054, 5.000000e-01
  %1057 = fmul fast float %1018, %842
  %1058 = fmul fast float %1019, %843
  %1059 = fmul fast float %1020, %844
  %1060 = fmul fast float %1055, 2.000000e+00
  %1061 = fadd fast float %1060, -1.000000e+00
  %1062 = fmul fast float %1056, 2.000000e+00
  %1063 = fadd fast float %1062, -1.000000e+00
  %1064 = fadd fast float %1061, %1063
  %1065 = fmul fast float %1064, 5.000000e-01
  %1066 = fsub fast float %1061, %1063
  %1067 = fmul fast float %1066, 5.000000e-01
  %1068 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1071 = fsub fast float %1069, %1070
  %1072 = call float @dx.op.dot3.f32(i32 55, float %1065, float %1067, float %1071, float %1065, float %1067, float %1071)  ; Dot3(ax,ay,az,bx,by,bz)
  %1073 = call float @dx.op.unary.f32(i32 25, float %1072)  ; Rsqrt(value)
  %1074 = fmul fast float %1065, %1073
  %1075 = fmul fast float %1067, %1073
  %1076 = fmul fast float %1073, %1071
  %1077 = fmul fast float %1076, %807
  %1078 = fmul fast float %1076, %808
  %1079 = fmul fast float %1076, %809
  %1080 = fmul fast float %1074, %830
  %1081 = fmul fast float %1074, %831
  %1082 = fmul fast float %1074, %832
  %1083 = fadd fast float %1080, %1077
  %1084 = fadd fast float %1081, %1078
  %1085 = fadd fast float %1082, %1079
  %1086 = fmul fast float %1075, %836
  %1087 = fmul fast float %1075, %837
  %1088 = fmul fast float %1075, %838
  %1089 = fadd fast float %1083, %1086
  %1090 = fadd fast float %1084, %1087
  %1091 = fadd fast float %1085, %1088
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float %1089, float %1090, float %1091)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.unary.f32(i32 25, float %1092)  ; Rsqrt(value)
  %1094 = fmul fast float %1089, %1093
  %1095 = fmul fast float %1090, %1093
  %1096 = fmul fast float %1091, %1093
  %1097 = icmp ne i32 %1013, 0
  %1098 = select i1 %1097, float 1.000000e+00, float 0.000000e+00
  %1099 = fmul fast float %1003, %1098
  %1100 = and i32 %857, 1
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1102, label %1106

; <label>:1102                                    ; preds = %1011
  %1103 = fsub fast float %1094, %789
  %1104 = fsub fast float %1095, %790
  %1105 = fsub fast float %1096, %791
  br label %1106

; <label>:1106                                    ; preds = %1102, %1011
  %1107 = phi float [ %1103, %1102 ], [ %1094, %1011 ]
  %1108 = phi float [ %1104, %1102 ], [ %1095, %1011 ]
  %1109 = phi float [ %1105, %1102 ], [ %1096, %1011 ]
  %1110 = fmul float %1109, %1099
  %1111 = fmul float %1108, %1099
  %1112 = fmul float %1107, %1099
  %1113 = fadd fast float %1112, %789
  %1114 = fadd fast float %1111, %790
  %1115 = fadd fast float %1110, %791
  %1116 = icmp ne i32 %1012, 0
  %1117 = select i1 %1116, float 1.000000e+00, float 0.000000e+00
  %1118 = fmul fast float %1003, %1117
  %1119 = fsub fast float %1057, %796
  %1120 = fsub fast float %1058, %797
  %1121 = fsub fast float %1059, %798
  %1122 = fmul fast float %1119, %1118
  %1123 = fmul fast float %1120, %1118
  %1124 = fmul fast float %1121, %1118
  %1125 = fadd fast float %1122, %796
  %1126 = fadd fast float %1123, %797
  %1127 = fadd fast float %1124, %798
  %1128 = fsub fast float %1030, %795
  %1129 = fmul fast float %1128, %1118
  %1130 = fadd fast float %1129, %795
  %1131 = fmul fast float %1118, %785
  %1132 = fsub fast float %785, %1131
  %1133 = fmul fast float %1118, %784
  %1134 = fsub fast float %784, %1133
  %1135 = fadd fast float %1003, %794
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1137 = fsub fast float %1050, %793
  %1138 = fmul fast float %1137, %1099
  %1139 = fadd fast float %1138, %793
  %1140 = fsub fast float %1036, %792
  %1141 = fmul fast float %1140, %1099
  %1142 = fadd fast float %1141, %792
  %1143 = call float @dx.op.dot3.f32(i32 55, float %1057, float %1058, float %1059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1147 = fmul fast float %1146, %1143
  %1148 = fadd fast float %1147, %1145
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = bitcast float %845 to i32
  %1151 = and i32 %1150, 65535
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = lshr i32 %1150, 16
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = fcmp fast oge float %1152, 0.000000e+00
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = select i1 %1155, float %1152, float %1157
  %1159 = fadd fast float %1158, %1154
  %1160 = fsub fast float %1149, %783
  %1161 = fmul fast float %1160, %1003
  %1162 = fadd fast float %1161, %783
  %1163 = fmul fast float %1159, %1003
  %1164 = call float @dx.op.binary.f32(i32 35, float %782, float %1163)  ; FMax(a,b)
  %1165 = and i32 %857, 16
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1189, label %1167

; <label>:1167                                    ; preds = %1106
  %1168 = bitcast float %851 to i32
  %1169 = add i32 %848, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1169, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1170, %dx.types.Handle %1016, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float %949, float %951, float undef, float %953, float %955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1175 = and i32 %1168, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = fmul fast float %1172, %842
  %1178 = fmul fast float %1173, %843
  %1179 = fmul fast float %1174, %844
  %1180 = and i32 %857, 16384
  %1181 = icmp ne i32 %1180, 0
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = select i1 %1181, float %1183, float 1.000000e+00
  %1185 = fmul fast float %1184, %1176
  %1186 = fmul fast float %1177, %1185
  %1187 = fmul fast float %1178, %1185
  %1188 = fmul fast float %1179, %1185
  br label %1189

; <label>:1189                                    ; preds = %1167, %1106
  %1190 = phi float [ %1186, %1167 ], [ 0.000000e+00, %1106 ]
  %1191 = phi float [ %1187, %1167 ], [ 0.000000e+00, %1106 ]
  %1192 = phi float [ %1188, %1167 ], [ 0.000000e+00, %1106 ]
  %1193 = fsub fast float %1190, %786
  %1194 = fsub fast float %1191, %787
  %1195 = fsub fast float %1192, %788
  %1196 = fmul fast float %1193, %1003
  %1197 = fmul fast float %1194, %1003
  %1198 = fmul fast float %1195, %1003
  %1199 = fadd fast float %1196, %786
  %1200 = fadd fast float %1197, %787
  %1201 = fadd fast float %1198, %788
  br label %906

; <label>:1202                                    ; preds = %906
  br label %1203

; <label>:1203                                    ; preds = %1202, %677
  %1204 = phi float [ 0.000000e+00, %677 ], [ %907, %1202 ]
  %1205 = phi float [ %698, %677 ], [ %908, %1202 ]
  %1206 = phi float [ %690, %677 ], [ %909, %1202 ]
  %1207 = phi float [ 0.000000e+00, %677 ], [ %910, %1202 ]
  %1208 = phi float [ 0.000000e+00, %677 ], [ %911, %1202 ]
  %1209 = phi float [ %683, %677 ], [ %912, %1202 ]
  %1210 = phi float [ %684, %677 ], [ %913, %1202 ]
  %1211 = phi float [ %685, %677 ], [ %914, %1202 ]
  %1212 = phi float [ %724, %677 ], [ %915, %1202 ]
  %1213 = phi float [ %725, %677 ], [ %916, %1202 ]
  %1214 = phi float [ %726, %677 ], [ %917, %1202 ]
  %1215 = phi float [ %689, %677 ], [ %918, %1202 ]
  %1216 = phi float [ %688, %677 ], [ %919, %1202 ]
  %1217 = phi float [ 0.000000e+00, %677 ], [ %920, %1202 ]
  %1218 = phi float [ %686, %677 ], [ %921, %1202 ]
  %1219 = phi float [ %680, %677 ], [ %922, %1202 ]
  %1220 = phi float [ %681, %677 ], [ %923, %1202 ]
  %1221 = phi float [ %682, %677 ], [ %924, %1202 ]
  %1222 = call float @dx.op.dot3.f32(i32 55, float %1212, float %1213, float %1214, float %1212, float %1213, float %1214)  ; Dot3(ax,ay,az,bx,by,bz)
  %1223 = call float @dx.op.unary.f32(i32 25, float %1222)  ; Rsqrt(value)
  %1224 = fmul fast float %1223, %1212
  %1225 = fmul fast float %1223, %1213
  %1226 = fmul fast float %1223, %1214
  %1227 = fadd fast float %1217, %687
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = call float @dx.op.dot3.f32(i32 55, float %1224, float %1225, float %1226, float %1224, float %1225, float %1226)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = call float @dx.op.unary.f32(i32 25, float %1229)  ; Rsqrt(value)
  %1231 = fmul fast float %1230, %1224
  %1232 = fmul fast float %1230, %1225
  %1233 = fmul fast float %1230, %1226
  %1234 = fadd fast float %1218, 0xBFB99999A0000000
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = fmul fast float %1235, 0x3FF1C71C80000000
  %1237 = call float @dx.op.binary.f32(i32 36, float %1218, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1238 = fsub fast float 1.000000e+00, %1236
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = fmul fast float %1239, %1219
  %1241 = fmul fast float %1239, %1220
  %1242 = fmul fast float %1239, %1221
  %1243 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1244 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  %1245 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1246 = fmul fast float %1236, %1219
  %1247 = fmul fast float %1236, %1220
  %1248 = fmul fast float %1236, %1221
  %1249 = fadd fast float %1246, %1237
  %1250 = fadd fast float %1247, %1237
  %1251 = fadd fast float %1248, %1237
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1254 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1255 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.i32 %1256, 3
  %1258 = and i32 %1257, 8
  %1259 = icmp ne i32 %1258, 0
  %1260 = call float @dx.op.binary.f32(i32 35, float %1243, float %1219)  ; FMax(a,b)
  %1261 = call float @dx.op.binary.f32(i32 35, float %1244, float %1219)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 35, float %1245, float %1219)  ; FMax(a,b)
  %1263 = call float @dx.op.dot3.f32(i32 55, float %1243, float %1244, float %1245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1264 = select i1 %176, float %1219, float %1243
  %1265 = select i1 %176, float %1263, float %1244
  %1266 = select i1 %176, float 1.000000e+00, float %1245
  %1267 = select i1 %1259, float %1260, float %1264
  %1268 = select i1 %1259, float %1261, float %1265
  %1269 = select i1 %1259, float %1262, float %1266
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = fadd fast float %1271, %105
  %1275 = fadd fast float %1272, %106
  %1276 = fadd fast float %1273, %107
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1280 = fsub fast float %1274, %1278
  %1281 = fsub fast float %1275, %1279
  %1282 = fmul fast float %1280, %1280
  %1283 = fmul fast float %1281, %1281
  %1284 = fadd fast float %1282, %1283
  %1285 = call float @dx.op.unary.f32(i32 24, float %1284)  ; Sqrt(value)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1277, 2
  %1287 = fcmp fast olt float %1285, %1286
  br i1 %1287, label %1288, label %1355

; <label>:1288                                    ; preds = %1203
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1298 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1299 = extractvalue %dx.types.CBufRet.f32 %1291, 3
  %1300 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1301 = fadd fast float %1298, %1274
  %1302 = fadd fast float %1299, %1275
  %1303 = fadd fast float %1300, %1276
  %1304 = fmul fast float %1301, %1290
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1292, float %1304)  ; FMad(a,b,c)
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1294, float %1305)  ; FMad(a,b,c)
  %1307 = fmul fast float %1301, %1295
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1296, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1303, float %1297, float %1308)  ; FMad(a,b,c)
  %1310 = fsub fast float %1306, %1298
  %1311 = fsub fast float %1309, %1299
  %1312 = fsub fast float %1310, %1278
  %1313 = fadd fast float %1312, %1286
  %1314 = fsub fast float %1311, %1279
  %1315 = fadd fast float %1314, %1286
  %1316 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1317 = fmul fast float %1313, %1316
  %1318 = fmul fast float %1315, %1316
  %1319 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1321 = fsub fast float 1.000000e+00, %1319
  %1322 = fsub fast float 1.000000e+00, %1320
  %1323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1321, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = fcmp fast ugt float %1324, 0.000000e+00
  br i1 %1325, label %1326, label %1629

; <label>:1326                                    ; preds = %1288
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 2
  %1329 = fmul fast float %1328, %1324
  %1330 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1331 = fadd fast float %1330, %1329
  %1332 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1333 = fadd fast float %1331, %1300
  %1334 = fmul fast float %1306, %1294
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1309, float %1297, float %1334)  ; FMad(a,b,c)
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %1332, float %1335)  ; FMad(a,b,c)
  %1337 = fsub fast float %1336, %1300
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1340 = fsub fast float %1337, %1339
  %1341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1321, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.ResRet.f32 %1341, 1
  %1344 = extractvalue %dx.types.ResRet.f32 %1341, 2
  %1345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1321, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = extractvalue %dx.types.ResRet.f32 %1345, 2
  %1349 = fadd fast float %1346, %1342
  %1350 = fmul fast float %1349, 0x3F847AE140000000
  %1351 = fadd fast float %1347, %1343
  %1352 = fmul fast float %1351, 0x3F847AE140000000
  %1353 = fadd fast float %1348, %1344
  %1354 = fmul fast float %1353, 0x3F847AE140000000
  br label %1629

; <label>:1355                                    ; preds = %1203
  %1356 = and i32 %152, 1
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1629, label %1358

; <label>:1358                                    ; preds = %1355
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.f32 %1359, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1367 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1368 = extractvalue %dx.types.CBufRet.f32 %1359, 3
  %1369 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1370 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1371 = fadd fast float %1368, %1274
  %1372 = fadd fast float %1369, %1275
  %1373 = fadd fast float %1370, %1276
  %1374 = fmul fast float %1371, %1360
  %1375 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %1362, float %1374)  ; FMad(a,b,c)
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1373, float %1364, float %1375)  ; FMad(a,b,c)
  %1377 = fmul fast float %1371, %1365
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %1366, float %1377)  ; FMad(a,b,c)
  %1379 = call float @dx.op.tertiary.f32(i32 46, float %1373, float %1367, float %1378)  ; FMad(a,b,c)
  %1380 = fsub fast float %1376, %1368
  %1381 = fsub fast float %1379, %1369
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.i32 %1389, 0
  %1391 = extractvalue %dx.types.CBufRet.i32 %1389, 1
  %1392 = udiv i32 %1391, %1390
  %1393 = fsub fast float %1380, %1383
  %1394 = fsub fast float %1381, %1384
  %1395 = call float @dx.op.binary.f32(i32 35, float %1393, float 0.000000e+00)  ; FMax(a,b)
  %1396 = call float @dx.op.binary.f32(i32 35, float %1394, float 0.000000e+00)  ; FMax(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1395, float %1385)  ; FMin(a,b)
  %1398 = call float @dx.op.binary.f32(i32 36, float %1396, float %1386)  ; FMin(a,b)
  %1399 = add i32 %1390, -1
  %1400 = add i32 %1392, -1
  %1401 = fmul fast float %1397, %1388
  %1402 = fmul fast float %1398, %1388
  %1403 = fptoui float %1401 to i32
  %1404 = fptoui float %1402 to i32
  %1405 = call i32 @dx.op.binary.i32(i32 40, i32 %1403, i32 %1399)  ; UMin(a,b)
  %1406 = call i32 @dx.op.binary.i32(i32 40, i32 %1404, i32 %1400)  ; UMin(a,b)
  %1407 = mul i32 %1406, %1390
  %1408 = add i32 %1407, %1405
  %1409 = shl i32 %1408, 2
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = icmp eq i32 %1411, -1
  br i1 %1412, label %1629, label %1413

; <label>:1413                                    ; preds = %1358
  %1414 = mul i32 %1411, 148
  %1415 = add i32 %1414, 4
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = add i32 %1414, 8
  %1419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = add i32 %1414, 36
  %1422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = add i32 %1414, 60
  %1425 = add i32 %1414, 92
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1414, 116
  %1429 = fsub fast float %1380, %1417
  %1430 = fsub fast float %1381, %1420
  %1431 = fmul fast float %1388, %1429
  %1432 = fmul fast float %1388, %1430
  %1433 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1434 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1438 = call float @dx.op.unary.f32(i32 83, float %1433)  ; DerivCoarseX(value)
  %1439 = call float @dx.op.unary.f32(i32 83, float %1435)  ; DerivCoarseX(value)
  %1440 = call float @dx.op.unary.f32(i32 84, float %1433)  ; DerivCoarseY(value)
  %1441 = call float @dx.op.unary.f32(i32 84, float %1435)  ; DerivCoarseY(value)
  %1442 = fmul fast float %1438, %1437
  %1443 = fmul fast float %1439, %1437
  %1444 = fmul fast float %1440, %1437
  %1445 = fmul fast float %1441, %1437
  %1446 = call float @dx.op.dot2.f32(i32 54, float %1444, float %1445, float %1444, float %1445)  ; Dot2(ax,ay,bx,by)
  %1447 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %1442, float %1443)  ; Dot2(ax,ay,bx,by)
  %1448 = call float @dx.op.binary.f32(i32 35, float %1447, float %1446)  ; FMax(a,b)
  %1449 = call float @dx.op.unary.f32(i32 23, float %1448)  ; Log(value)
  %1450 = fmul fast float %1449, 5.000000e-01
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1453 = fadd fast float %1452, %1450
  %1454 = call float @dx.op.binary.f32(i32 35, float %1453, float 0.000000e+00)  ; FMax(a,b)
  %1455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.f32 %1455, 3
  %1457 = fadd fast float %1456, %1454
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 3
  %1460 = fadd fast float %1457, %1459
  %1461 = add i32 %1427, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1461, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1462, i32 0)  ; GetDimensions(handle,mipLevel)
  %1464 = extractvalue %dx.types.Dimensions %1463, 0
  %1465 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1464)  ; FirstbitLo(value)
  %1466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.i32 %1466, 1
  %1468 = sub nsw i32 %1467, %1465
  %1469 = sitofp i32 %1468 to float
  %1470 = fsub fast float %1460, %1469
  %1471 = call float @dx.op.binary.f32(i32 35, float %1470, float 0.000000e+00)  ; FMax(a,b)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1462, %dx.types.Handle %33, float %1433, float %1435, float %1423, float undef, i32 0, i32 0, i32 undef, float %1471)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = fcmp ule float %1473, 0x3FE0101020000000
  %1475 = extractvalue %dx.types.CBufRet.i32 %1466, 0
  %1476 = and i32 %1475, 128
  %1477 = icmp ne i32 %1476, 0
  %1478 = and i1 %1474, %1477
  br i1 %1478, label %1629, label %1479

; <label>:1479                                    ; preds = %1413
  %1480 = add i32 %1414, 20
  %1481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = add i32 %1414, 24
  %1484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = add i32 %1414, 40
  %1487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = add i32 %1414, 96
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1494 = fmul fast float %1493, %1433
  %1495 = fmul fast float %1493, %1435
  %1496 = extractvalue %dx.types.CBufRet.f32 %1492, 3
  %1497 = fadd fast float %1494, %1496
  %1498 = fadd fast float %1495, %1496
  %1499 = add i32 %1491, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1500, i32 0)  ; GetDimensions(handle,mipLevel)
  %1502 = extractvalue %dx.types.Dimensions %1501, 0
  %1503 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1502)  ; FirstbitLo(value)
  %1504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.i32 %1504, 1
  %1506 = sub nsw i32 %1505, %1503
  %1507 = sitofp i32 %1506 to float
  %1508 = fsub fast float %1457, %1507
  %1509 = call float @dx.op.binary.f32(i32 35, float %1508, float 0.000000e+00)  ; FMax(a,b)
  %1510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1500, %dx.types.Handle %33, float %1497, float %1498, float %1488, float undef, i32 0, i32 0, i32 undef, float %1509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  %1512 = fmul fast float %1511, %1482
  %1513 = fadd fast float %1512, %1485
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 3
  %1522 = extractvalue %dx.types.CBufRet.f32 %1514, 3
  %1523 = fadd fast float %1519, %1380
  %1524 = fadd fast float %1521, %1381
  %1525 = fadd fast float %1513, %1522
  %1526 = fmul fast float %1523, %1515
  %1527 = call float @dx.op.tertiary.f32(i32 46, float %1524, float %1516, float %1526)  ; FMad(a,b,c)
  %1528 = call float @dx.op.tertiary.f32(i32 46, float %1525, float %1517, float %1527)  ; FMad(a,b,c)
  %1529 = fsub fast float %1528, %1522
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1532 = fsub fast float %1529, %1531
  %1533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.i32 %1533, 0
  %1535 = call i32 @dx.op.binary.i32(i32 40, i32 %1411, i32 %1534)  ; UMin(a,b)
  %1536 = mul i32 %1535, 36
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1536, 4
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 0
  %1542 = fmul fast float %1541, %1433
  %1543 = fmul fast float %1541, %1435
  %1544 = extractvalue %dx.types.CBufRet.f32 %1540, 1
  %1545 = fadd fast float %1542, %1544
  %1546 = fadd fast float %1543, %1544
  %1547 = icmp eq i32 %1538, 0
  br i1 %1547, label %1616, label %1548

; <label>:1548                                    ; preds = %1479
  br label %1549

; <label>:1549                                    ; preds = %1606, %1548
  %1550 = phi float [ %1607, %1606 ], [ 0.000000e+00, %1548 ]
  %1551 = phi float [ %1608, %1606 ], [ 0.000000e+00, %1548 ]
  %1552 = phi float [ %1609, %1606 ], [ 0.000000e+00, %1548 ]
  %1553 = phi float [ %1610, %1606 ], [ 0.000000e+00, %1548 ]
  %1554 = phi float [ %1611, %1606 ], [ 0.000000e+00, %1548 ]
  %1555 = phi float [ %1612, %1606 ], [ 0.000000e+00, %1548 ]
  %1556 = phi i32 [ %1613, %1606 ], [ 0, %1548 ]
  %1557 = shl i32 %1556, 2
  %1558 = add i32 %1424, %1557
  %1559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = add i32 %1428, %1557
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1564, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1565, i32 0)  ; GetDimensions(handle,mipLevel)
  %1567 = extractvalue %dx.types.Dimensions %1566, 0
  %1568 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1567)  ; FirstbitLo(value)
  %1569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.i32 %1569, 1
  %1571 = sub nsw i32 %1570, %1568
  %1572 = sitofp i32 %1571 to float
  %1573 = fsub fast float %1457, %1572
  %1574 = call float @dx.op.binary.f32(i32 35, float %1573, float 0.000000e+00)  ; FMax(a,b)
  %1575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1565, %dx.types.Handle %33, float %1545, float %1546, float %1560, float undef, i32 0, i32 0, i32 undef, float %1574)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = fcmp fast ogt float %1576, 0.000000e+00
  br i1 %1577, label %1578, label %1606

; <label>:1578                                    ; preds = %1549
  %1579 = add i32 %1539, %1557
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 32767
  %1583 = mul nuw nsw i32 %1582, 928
  %1584 = add nuw nsw i32 %1583, 48
  %1585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = add nuw nsw i32 %1583, 60
  %1590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = fmul fast float %1586, %1576
  %1595 = fmul fast float %1587, %1576
  %1596 = fmul fast float %1588, %1576
  %1597 = fadd fast float %1594, %1550
  %1598 = fadd fast float %1595, %1551
  %1599 = fadd fast float %1596, %1552
  %1600 = fmul fast float %1591, %1576
  %1601 = fmul fast float %1592, %1576
  %1602 = fmul fast float %1593, %1576
  %1603 = fadd fast float %1600, %1553
  %1604 = fadd fast float %1601, %1554
  %1605 = fadd fast float %1602, %1555
  br label %1606

; <label>:1606                                    ; preds = %1578, %1549
  %1607 = phi float [ %1597, %1578 ], [ %1550, %1549 ]
  %1608 = phi float [ %1598, %1578 ], [ %1551, %1549 ]
  %1609 = phi float [ %1599, %1578 ], [ %1552, %1549 ]
  %1610 = phi float [ %1603, %1578 ], [ %1553, %1549 ]
  %1611 = phi float [ %1604, %1578 ], [ %1554, %1549 ]
  %1612 = phi float [ %1605, %1578 ], [ %1555, %1549 ]
  %1613 = add nuw i32 %1556, 1
  %1614 = icmp eq i32 %1613, %1538
  br i1 %1614, label %1615, label %1549

; <label>:1615                                    ; preds = %1606
  br label %1616

; <label>:1616                                    ; preds = %1615, %1479
  %1617 = phi float [ 0.000000e+00, %1479 ], [ %1607, %1615 ]
  %1618 = phi float [ 0.000000e+00, %1479 ], [ %1608, %1615 ]
  %1619 = phi float [ 0.000000e+00, %1479 ], [ %1609, %1615 ]
  %1620 = phi float [ 0.000000e+00, %1479 ], [ %1610, %1615 ]
  %1621 = phi float [ 0.000000e+00, %1479 ], [ %1611, %1615 ]
  %1622 = phi float [ 0.000000e+00, %1479 ], [ %1612, %1615 ]
  %1623 = fadd fast float %1620, %1617
  %1624 = fmul fast float %1623, 0x3F847AE140000000
  %1625 = fadd fast float %1621, %1618
  %1626 = fmul fast float %1625, 0x3F847AE140000000
  %1627 = fadd fast float %1622, %1619
  %1628 = fmul fast float %1627, 0x3F847AE140000000
  br label %1629

; <label>:1629                                    ; preds = %1616, %1413, %1358, %1355, %1326, %1288
  %1630 = phi float [ %1340, %1326 ], [ -1.310720e+05, %1288 ], [ %1532, %1616 ], [ -1.310720e+05, %1358 ], [ -1.310720e+05, %1413 ], [ -1.310720e+05, %1355 ]
  %1631 = phi float [ %1350, %1326 ], [ 0.000000e+00, %1288 ], [ %1624, %1616 ], [ 0.000000e+00, %1358 ], [ 0.000000e+00, %1413 ], [ 0.000000e+00, %1355 ]
  %1632 = phi float [ %1352, %1326 ], [ 0.000000e+00, %1288 ], [ %1626, %1616 ], [ 0.000000e+00, %1358 ], [ 0.000000e+00, %1413 ], [ 0.000000e+00, %1355 ]
  %1633 = phi float [ %1354, %1326 ], [ 0.000000e+00, %1288 ], [ %1628, %1616 ], [ 0.000000e+00, %1358 ], [ 0.000000e+00, %1413 ], [ 0.000000e+00, %1355 ]
  %1634 = phi i1 [ true, %1326 ], [ false, %1288 ], [ true, %1616 ], [ false, %1358 ], [ false, %1413 ], [ false, %1355 ]
  %1635 = and i32 %152, 3
  %1636 = icmp eq i32 %1635, 1
  %1637 = select i1 %1636, float 1.000000e+00, float 0.000000e+00
  %1638 = fsub fast float %1630, %107
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = select i1 %1634, float %1639, float 1.000000e+00
  %1641 = fmul fast float %1640, %1637
  %1642 = icmp eq i32 %1635, 3
  %1643 = select i1 %1642, float 1.000000e+00, float %1641
  %1644 = call float @dx.op.binary.f32(i32 35, float %1204, float %1643)  ; FMax(a,b)
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = fcmp fast une float %1645, 0.000000e+00
  %1647 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1648 = call float @dx.op.unary.f32(i32 25, float %1647)  ; Rsqrt(value)
  br i1 %1646, label %1656, label %1649

; <label>:1649                                    ; preds = %1629
  %1650 = fmul fast float %1648, %105
  %1651 = fmul fast float %1648, %106
  %1652 = fmul fast float %1648, %107
  %1653 = fsub fast float -0.000000e+00, %1650
  %1654 = fsub fast float -0.000000e+00, %1651
  %1655 = fsub fast float -0.000000e+00, %1652
  br label %1824

; <label>:1656                                    ; preds = %1629
  %1657 = fmul fast float %105, %1648
  %1658 = fsub fast float -0.000000e+00, %1657
  %1659 = fmul fast float %106, %1648
  %1660 = fsub fast float -0.000000e+00, %1659
  %1661 = fmul fast float %107, %1648
  %1662 = fsub fast float -0.000000e+00, %1661
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1658, float %1660, float %1662, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = fmul fast float %1645, 2.500000e+00
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = fmul fast float %1645, 0x4013FFFFE0000000
  %1667 = fadd fast float %1666, 0xBFFFFFFFE0000000
  %1668 = call float @dx.op.unary.f32(i32 7, float %1667)  ; Saturate(value)
  %1669 = fmul fast float %1645, 0x4004000020000000
  %1670 = fadd fast float %1669, 0xBFF8000040000000
  %1671 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1672 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1673 = fmul fast float %1234, 1.000000e+01
  %1674 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1675 = fmul fast float %1674, 2.000000e+00
  %1676 = fsub fast float 3.000000e+00, %1675
  %1677 = fmul fast float %1674, %1674
  %1678 = fmul fast float %1677, %1676
  %1679 = fsub fast float 1.000000e+00, %1678
  %1680 = fsub fast float 0x3FE3333340000000, %1255
  %1681 = fmul fast float %1680, 0x400AAAAAA0000000
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1683 = fmul fast float %1679, %1682
  %1684 = fmul fast float %1267, 0x3FEA2B8620000000
  %1685 = fmul fast float %1268, 0x3FEA2B8620000000
  %1686 = fmul fast float %1269, 0x3FEA2B8620000000
  %1687 = fadd fast float %1684, 0x3FC81DFBA0000000
  %1688 = fmul fast float %1687, %1267
  %1689 = fadd fast float %1688, 0x3F910E6020000000
  %1690 = fadd fast float %1685, 0x3FC81DFBA0000000
  %1691 = fmul fast float %1690, %1268
  %1692 = fadd fast float %1691, 0x3F910E6020000000
  %1693 = fadd fast float %1686, 0x3FC81DFBA0000000
  %1694 = fmul fast float %1693, %1269
  %1695 = fadd fast float %1694, 0x3F910E6020000000
  %1696 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1698 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1699 = fsub fast float %1696, %1267
  %1700 = fsub fast float %1697, %1268
  %1701 = fsub fast float %1698, %1269
  %1702 = fmul fast float %1699, %1672
  %1703 = fmul fast float %1702, %1683
  %1704 = fmul fast float %1700, %1672
  %1705 = fmul fast float %1704, %1683
  %1706 = fmul fast float %1701, %1672
  %1707 = fmul fast float %1706, %1683
  %1708 = fadd fast float %1703, %1267
  %1709 = fadd fast float %1705, %1268
  %1710 = fadd fast float %1707, %1269
  %1711 = fmul fast float %1215, %1215
  %1712 = fmul fast float %1711, %1711
  %1713 = fadd fast float %1668, 1.000000e+00
  %1714 = fsub fast float %1713, %1683
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1717 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1718 = fsub fast float 1.000000e+00, %1712
  %1719 = call float @dx.op.binary.f32(i32 36, float %1715, float %1718)  ; FMin(a,b)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1721 = call float @dx.op.binary.f32(i32 35, float %1719, float %1720)  ; FMax(a,b)
  %1722 = fadd fast float %1717, 0xBFE4CCCCC0000000
  %1723 = fmul fast float %1722, 0x4006DB6DA0000000
  %1724 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1725 = fmul fast float %1724, 2.000000e+00
  %1726 = fsub fast float 3.000000e+00, %1725
  %1727 = bitcast float %1252 to i32
  %1728 = ashr i32 %1727, 1
  %1729 = add nsw i32 %1728, 532487669
  %1730 = bitcast i32 %1729 to float
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = bitcast float %1731 to i32
  %1733 = sub nsw i32 2129859010, %1732
  %1734 = bitcast i32 %1733 to float
  %1735 = fmul fast float %1734, 2.000000e+00
  %1736 = bitcast float %1253 to i32
  %1737 = ashr i32 %1736, 1
  %1738 = add nsw i32 %1737, 532487669
  %1739 = bitcast i32 %1738 to float
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = bitcast float %1740 to i32
  %1742 = sub nsw i32 2129859010, %1741
  %1743 = bitcast i32 %1742 to float
  %1744 = fmul fast float %1743, 2.000000e+00
  %1745 = bitcast float %1254 to i32
  %1746 = ashr i32 %1745, 1
  %1747 = add nsw i32 %1746, 532487669
  %1748 = bitcast i32 %1747 to float
  %1749 = fsub fast float 1.000000e+00, %1748
  %1750 = bitcast float %1749 to i32
  %1751 = sub nsw i32 2129859010, %1750
  %1752 = bitcast i32 %1751 to float
  %1753 = fmul fast float %1752, 2.000000e+00
  %1754 = fsub fast float 0x4002A9FBE0000000, %1735
  %1755 = fadd fast float %1735, 0x3FD54FDF00000000
  %1756 = bitcast float %1755 to i32
  %1757 = sub nsw i32 2129859010, %1756
  %1758 = bitcast i32 %1757 to float
  %1759 = fmul fast float %1758, %1754
  %1760 = fmul fast float %1759, %1759
  %1761 = fsub fast float 0x4002A9FBE0000000, %1744
  %1762 = fadd fast float %1744, 0x3FD54FDF00000000
  %1763 = bitcast float %1762 to i32
  %1764 = sub nsw i32 2129859010, %1763
  %1765 = bitcast i32 %1764 to float
  %1766 = fmul fast float %1765, %1761
  %1767 = fmul fast float %1766, %1766
  %1768 = fsub fast float 0x4002A9FBE0000000, %1753
  %1769 = fadd fast float %1753, 0x3FD54FDF00000000
  %1770 = bitcast float %1769 to i32
  %1771 = sub nsw i32 2129859010, %1770
  %1772 = bitcast i32 %1771 to float
  %1773 = fmul fast float %1772, %1768
  %1774 = fmul fast float %1773, %1773
  %1775 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1760)  ; FMax(a,b)
  %1776 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1767)  ; FMax(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1774)  ; FMax(a,b)
  %1778 = fsub fast float 1.000000e+00, %1663
  %1779 = fadd fast float %1778, %1679
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1781 = fsub fast float 1.000000e+00, %1643
  %1782 = fmul fast float %1721, %1781
  %1783 = fmul fast float %1724, %1724
  %1784 = fmul fast float %1783, %1782
  %1785 = fmul fast float %1784, %1726
  %1786 = fmul fast float %1781, 0xBFE99999A0000000
  %1787 = fmul fast float %1786, %1672
  %1788 = fmul fast float %1787, %1683
  %1789 = fadd fast float %1788, 1.000000e+00
  %1790 = fadd fast float %1255, -1.000000e+00
  %1791 = fmul fast float %1789, %1790
  %1792 = fadd fast float %1791, 1.000000e+00
  %1793 = fsub fast float %1775, %1252
  %1794 = fsub fast float %1776, %1253
  %1795 = fsub fast float %1777, %1254
  %1796 = fmul fast float %1785, %1793
  %1797 = fmul fast float %1785, %1794
  %1798 = fmul fast float %1785, %1795
  %1799 = fadd fast float %1796, %1252
  %1800 = fadd fast float %1797, %1253
  %1801 = fadd fast float %1798, %1254
  %1802 = fsub fast float %43, %1231
  %1803 = fsub fast float %44, %1232
  %1804 = fsub fast float %45, %1233
  %1805 = fmul fast float %1785, %1802
  %1806 = fmul fast float %1785, %1803
  %1807 = fmul fast float %1785, %1804
  %1808 = fadd fast float %1805, %1231
  %1809 = fadd fast float %1806, %1232
  %1810 = fadd fast float %1807, %1233
  %1811 = fmul fast float %1785, %1780
  %1812 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1813 = fsub fast float 1.000000e+00, %1812
  %1814 = fmul fast float %1811, %1813
  %1815 = fadd fast float %1814, %1812
  %1816 = fsub fast float 1.000000e+00, %1215
  %1817 = fmul fast float %1785, %1816
  %1818 = fadd fast float %1817, %1215
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1808, float %1809, float %1810, float %1808, float %1809, float %1810)  ; Dot3(ax,ay,az,bx,by,bz)
  %1820 = call float @dx.op.unary.f32(i32 25, float %1819)  ; Rsqrt(value)
  %1821 = fmul fast float %1808, %1820
  %1822 = fmul fast float %1809, %1820
  %1823 = fmul fast float %1810, %1820
  br label %1824

; <label>:1824                                    ; preds = %1656, %1649
  %1825 = phi float [ %1655, %1649 ], [ %1662, %1656 ]
  %1826 = phi float [ %1654, %1649 ], [ %1660, %1656 ]
  %1827 = phi float [ %1653, %1649 ], [ %1658, %1656 ]
  %1828 = phi float [ %1652, %1649 ], [ %1661, %1656 ]
  %1829 = phi float [ %1651, %1649 ], [ %1659, %1656 ]
  %1830 = phi float [ %1650, %1649 ], [ %1657, %1656 ]
  %1831 = phi float [ %1252, %1649 ], [ %1799, %1656 ]
  %1832 = phi float [ %1253, %1649 ], [ %1800, %1656 ]
  %1833 = phi float [ %1254, %1649 ], [ %1801, %1656 ]
  %1834 = phi float [ %1267, %1649 ], [ %1708, %1656 ]
  %1835 = phi float [ %1268, %1649 ], [ %1709, %1656 ]
  %1836 = phi float [ %1269, %1649 ], [ %1710, %1656 ]
  %1837 = phi float [ %1231, %1649 ], [ %1821, %1656 ]
  %1838 = phi float [ %1232, %1649 ], [ %1822, %1656 ]
  %1839 = phi float [ %1233, %1649 ], [ %1823, %1656 ]
  %1840 = phi float [ %1255, %1649 ], [ %1815, %1656 ]
  %1841 = phi float [ %1215, %1649 ], [ %1818, %1656 ]
  %1842 = select i1 %176, float 0.000000e+00, float %1833
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1837, float %1838, float %1839, float %1827, float %1826, float %1825)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1829, float %1828, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = fmul fast float %1845, 2.000000e+00
  %1847 = fmul fast float %1846, %1837
  %1848 = fmul fast float %1846, %1838
  %1849 = fmul fast float %1846, %1839
  %1850 = fsub fast float %1830, %1847
  %1851 = fsub fast float %1829, %1848
  %1852 = fsub fast float %1828, %1849
  %1853 = call float @dx.op.binary.f32(i32 36, float %1841, float 1.000000e+00)  ; FMin(a,b)
  %1854 = fsub fast float 1.000000e+00, %1841
  %1855 = bitcast float %1854 to i32
  %1856 = sub nsw i32 2129859010, %1855
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1860 = fadd fast float %1858, %105
  %1861 = fadd fast float %1859, %106
  %1862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.i32 %1862, 0
  %1864 = icmp eq i32 %1863, 1
  br i1 %1864, label %1865, label %1900

; <label>:1865                                    ; preds = %1824
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = fsub fast float %1860, %1867
  %1870 = fsub fast float %1861, %1868
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.CBufRet.f32 %1871, 1
  %1874 = fmul fast float %1869, %1872
  %1875 = fmul fast float %1870, %1873
  %1876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1874, float %1875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = fcmp fast ogt float %1877, 0.000000e+00
  %1879 = extractvalue %dx.types.CBufRet.i32 %1862, 3
  %1880 = icmp ne i32 %1879, 0
  %1881 = and i1 %1878, %1880
  br i1 %1881, label %1882, label %1900, !dx.controlflow.hints !72

; <label>:1882                                    ; preds = %1865
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.CBufRet.f32 %1883, 1
  %1886 = fsub fast float %1860, %1884
  %1887 = fsub fast float %1861, %1885
  %1888 = fmul fast float %1886, %1886
  %1889 = fmul fast float %1887, %1887
  %1890 = fadd fast float %1888, %1889
  %1891 = uitofp i32 %1879 to float
  %1892 = fmul fast float %1891, %1891
  %1893 = fcmp fast ogt float %1890, %1892
  br i1 %1893, label %1900, label %1894

; <label>:1894                                    ; preds = %1882
  %1895 = call float @dx.op.unary.f32(i32 24, float %1890)  ; Sqrt(value)
  %1896 = fsub fast float %1891, %1895
  %1897 = fmul fast float %1896, 0x3F75555560000000
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = call float @dx.op.binary.f32(i32 36, float %1898, float %1877)  ; FMin(a,b)
  br label %1900

; <label>:1900                                    ; preds = %1894, %1882, %1865, %1824
  %1901 = phi float [ 1.000000e+00, %1824 ], [ %1899, %1894 ], [ %1877, %1865 ], [ 0.000000e+00, %1882 ]
  %1902 = fcmp fast ogt float %1901, 0.000000e+00
  br i1 %1902, label %1903, label %2001, !dx.controlflow.hints !73

; <label>:1903                                    ; preds = %1900
  %1904 = fadd fast float %136, 5.000000e-01
  %1905 = call float @dx.op.unary.f32(i32 27, float %1904)  ; Round_ni(value)
  %1906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1905, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1912 = fmul fast float %1911, %1907
  %1913 = fmul fast float %1911, %1908
  %1914 = fmul fast float %1911, %1909
  %1915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1905, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1905, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.ResRet.f32 %1917, 1
  %1920 = fmul fast float %1918, 2.000000e+00
  %1921 = fmul fast float %1919, 2.000000e+00
  %1922 = fadd fast float %1920, -1.000000e+00
  %1923 = fadd fast float %1921, -1.000000e+00
  %1924 = fadd fast float %1922, %1923
  %1925 = fmul fast float %1924, 5.000000e-01
  %1926 = fsub fast float %1922, %1923
  %1927 = fmul fast float %1926, 5.000000e-01
  %1928 = call float @dx.op.unary.f32(i32 6, float %1925)  ; FAbs(value)
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = call float @dx.op.unary.f32(i32 6, float %1927)  ; FAbs(value)
  %1931 = fsub fast float %1929, %1930
  %1932 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1931)  ; FMax(a,b)
  %1933 = call float @dx.op.dot3.f32(i32 55, float %1925, float %1927, float %1932, float %1925, float %1927, float %1932)  ; Dot3(ax,ay,az,bx,by,bz)
  %1934 = bitcast float %1933 to i32
  %1935 = ashr i32 %1934, 1
  %1936 = sub nsw i32 1597250115, %1935
  %1937 = bitcast i32 %1936 to float
  %1938 = fmul fast float %1937, %1925
  %1939 = fmul fast float %1937, %1927
  %1940 = fmul fast float %1937, %1932
  %1941 = fsub fast float 1.000000e+00, %1916
  %1942 = fdiv fast float %1941, %1940
  %1943 = fmul fast float %1940, %43
  %1944 = fmul fast float %1940, %44
  %1945 = fmul fast float %1940, %45
  %1946 = fmul fast float %1938, %39
  %1947 = fmul fast float %1938, %40
  %1948 = fmul fast float %1938, %41
  %1949 = fadd fast float %1943, %1946
  %1950 = fadd fast float %1944, %1947
  %1951 = fadd fast float %1945, %1948
  %1952 = fmul fast float %1939, %69
  %1953 = fmul fast float %1939, %70
  %1954 = fmul fast float %1939, %71
  %1955 = fadd fast float %1949, %1952
  %1956 = fadd fast float %1950, %1953
  %1957 = fadd fast float %1951, %1954
  %1958 = call float @dx.op.dot3.f32(i32 55, float %1955, float %1956, float %1957, float %1955, float %1956, float %1957)  ; Dot3(ax,ay,az,bx,by,bz)
  %1959 = call float @dx.op.unary.f32(i32 25, float %1958)  ; Rsqrt(value)
  %1960 = fmul fast float %1955, %1959
  %1961 = fmul fast float %1956, %1959
  %1962 = fmul fast float %1957, %1959
  %1963 = call float @dx.op.dot3.f32(i32 55, float %1837, float %1838, float %1839, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1965 = fmul fast float %1964, 5.000000e-01
  %1966 = fadd fast float %1965, 5.000000e-01
  %1967 = fmul fast float %1966, %1916
  %1968 = call float @dx.op.dot3.f32(i32 55, float %1837, float %1838, float %1839, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1970 = fmul fast float %1969, %1942
  %1971 = fadd fast float %1967, %1970
  %1972 = fsub fast float 5.000000e-01, %1965
  %1973 = fmul fast float %1972, %1834
  %1974 = fmul fast float %1972, %1835
  %1975 = fmul fast float %1972, %1836
  %1976 = fadd fast float %1971, %1973
  %1977 = fmul fast float %1976, %1912
  %1978 = fadd fast float %1971, %1974
  %1979 = fmul fast float %1978, %1913
  %1980 = fadd fast float %1971, %1975
  %1981 = fmul fast float %1980, %1914
  %1982 = call float @dx.op.dot3.f32(i32 55, float %1850, float %1851, float %1852, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1984 = fmul fast float %1983, 5.000000e-01
  %1985 = fadd fast float %1984, 5.000000e-01
  %1986 = fmul fast float %1985, %1916
  %1987 = call float @dx.op.dot3.f32(i32 55, float %1850, float %1851, float %1852, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1989 = fmul fast float %1988, %1942
  %1990 = fadd fast float %1986, %1989
  %1991 = fsub fast float 5.000000e-01, %1984
  %1992 = fmul fast float %1991, %1834
  %1993 = fmul fast float %1991, %1835
  %1994 = fmul fast float %1991, %1836
  %1995 = fadd fast float %1990, %1992
  %1996 = fmul fast float %1995, %1912
  %1997 = fadd fast float %1990, %1993
  %1998 = fmul fast float %1997, %1913
  %1999 = fadd fast float %1990, %1994
  %2000 = fmul fast float %1999, %1914
  br label %2001

; <label>:2001                                    ; preds = %1903, %1900
  %2002 = phi float [ %1996, %1903 ], [ 0.000000e+00, %1900 ]
  %2003 = phi float [ %1998, %1903 ], [ 0.000000e+00, %1900 ]
  %2004 = phi float [ %2000, %1903 ], [ 0.000000e+00, %1900 ]
  %2005 = phi float [ %1977, %1903 ], [ 0.000000e+00, %1900 ]
  %2006 = phi float [ %1979, %1903 ], [ 0.000000e+00, %1900 ]
  %2007 = phi float [ %1981, %1903 ], [ 0.000000e+00, %1900 ]
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2010 = fcmp fast ogt float %2009, 0.000000e+00
  %2011 = and i1 %1902, %2010
  br i1 %2011, label %2012, label %2216, !dx.controlflow.hints !74

; <label>:2012                                    ; preds = %2001
  %2013 = extractvalue %dx.types.CBufRet.f32 %1857, 2
  %2014 = fadd fast float %2013, %107
  %2015 = fmul fast float %1837, 3.200000e+01
  %2016 = fmul fast float %1838, 3.200000e+01
  %2017 = fadd fast float %1860, %2015
  %2018 = fadd fast float %1861, %2016
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = fsub fast float %2017, %2020
  %2023 = fsub fast float %2018, %2021
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2027 = fmul fast float %2022, %2025
  %2028 = fmul fast float %2023, %2026
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.CBufRet.f32 %2029, 1
  %2032 = fsub fast float %1860, %2030
  %2033 = fsub fast float %1861, %2031
  %2034 = fmul fast float %2032, %2032
  %2035 = fmul fast float %2033, %2033
  %2036 = fadd fast float %2034, %2035
  %2037 = call float @dx.op.unary.f32(i32 24, float %2036)  ; Sqrt(value)
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.CBufRet.f32 %2038, 1
  %2041 = fsub fast float %2037, %2039
  %2042 = fdiv fast float %2041, %2040
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fmul fast float %2043, 2.000000e+00
  %2045 = fsub fast float 3.000000e+00, %2044
  %2046 = fmul fast float %2043, %2043
  %2047 = fmul fast float %2046, %2045
  %2048 = fcmp fast oge float %2027, 0.000000e+00
  %2049 = fcmp fast ole float %2027, 1.000000e+00
  %2050 = and i1 %2049, %2048
  %2051 = fcmp fast oge float %2028, 0.000000e+00
  %2052 = and i1 %2051, %2050
  %2053 = fcmp fast ole float %2028, 1.000000e+00
  %2054 = and i1 %2053, %2052
  %2055 = fcmp fast ogt float %2047, 0.000000e+00
  %2056 = and i1 %2055, %2054
  br i1 %2056, label %2057, label %2180, !dx.controlflow.hints !75

; <label>:2057                                    ; preds = %2012
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 2
  %2060 = extractvalue %dx.types.CBufRet.f32 %2058, 3
  %2061 = fmul fast float %2059, %2027
  %2062 = fmul fast float %2060, %2028
  %2063 = call float @dx.op.unary.f32(i32 27, float %2061)  ; Round_ni(value)
  %2064 = call float @dx.op.unary.f32(i32 27, float %2062)  ; Round_ni(value)
  %2065 = fptosi float %2063 to i32
  %2066 = fptosi float %2064 to i32
  %2067 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2065, i32 %2066, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = lshr i32 %2068, 16
  %2070 = icmp eq i32 %2069, 65535
  br i1 %2070, label %2180, label %2071

; <label>:2071                                    ; preds = %2057
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = fmul fast float %2073, %2027
  %2075 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2076 = fadd fast float %2074, %2075
  %2077 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2078 = fmul fast float %2077, %2028
  %2079 = extractvalue %dx.types.CBufRet.f32 %2072, 3
  %2080 = fadd fast float %2078, %2079
  %2081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2076, float %2080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.ResRet.f32 %2081, 1
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2086 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2087 = fsub fast float %2085, %2086
  %2088 = fmul fast float %2087, %2082
  %2089 = fadd fast float %2088, %2086
  %2090 = extractvalue %dx.types.CBufRet.f32 %2084, 3
  %2091 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2092 = fsub fast float %2090, %2091
  %2093 = fmul fast float %2092, %2083
  %2094 = fadd fast float %2093, %2091
  %2095 = fsub fast float %2014, %2089
  %2096 = fsub fast float %2094, %2089
  %2097 = fdiv fast float %2095, %2096
  %2098 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2100 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2101 = extractvalue %dx.types.CBufRet.f32 %2058, 1
  %2102 = fmul fast float %2100, %2027
  %2103 = fmul fast float %2101, %2028
  %2104 = fmul fast float %2102, 1.250000e-01
  %2105 = fmul fast float %2103, 1.250000e-01
  %2106 = call float @dx.op.unary.f32(i32 27, float %2104)  ; Round_ni(value)
  %2107 = call float @dx.op.unary.f32(i32 27, float %2105)  ; Round_ni(value)
  %2108 = fmul fast float %2106, 8.000000e+00
  %2109 = fmul fast float %2107, 8.000000e+00
  %2110 = fsub fast float %2102, %2108
  %2111 = fsub fast float %2103, %2109
  %2112 = fadd fast float %2110, 5.000000e-01
  %2113 = fadd fast float %2111, 5.000000e-01
  %2114 = and i32 %2069, 255
  %2115 = lshr i32 %2068, 24
  %2116 = mul nuw nsw i32 %2114, 9
  %2117 = uitofp i32 %2116 to float
  %2118 = mul nuw nsw i32 %2115, 9
  %2119 = uitofp i32 %2118 to float
  %2120 = fadd fast float %2112, %2117
  %2121 = fadd fast float %2113, %2119
  %2122 = fdiv fast float %2120, %2009
  %2123 = fdiv fast float %2121, %2099
  %2124 = fmul fast float %2098, 4.375000e-01
  %2125 = fadd fast float %2124, 3.125000e-02
  %2126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2122, float %2123, float %2125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.ResRet.f32 %2126, 1
  %2129 = extractvalue %dx.types.ResRet.f32 %2126, 2
  %2130 = fadd fast float %2124, 5.312500e-01
  %2131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2122, float %2123, float %2130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.f32 %2131, 2
  %2135 = fmul fast float %2132, 2.000000e+00
  %2136 = fmul fast float %2133, 2.000000e+00
  %2137 = fmul fast float %2134, 2.000000e+00
  %2138 = fadd fast float %2135, -1.000000e+00
  %2139 = fadd fast float %2136, -1.000000e+00
  %2140 = fadd fast float %2137, -1.000000e+00
  %2141 = fmul fast float %2138, %2138
  %2142 = fmul fast float %2139, %2139
  %2143 = fadd fast float %2141, %2142
  %2144 = fmul fast float %2140, %2140
  %2145 = fadd fast float %2143, %2144
  %2146 = call float @dx.op.unary.f32(i32 24, float %2145)  ; Sqrt(value)
  %2147 = fcmp fast ogt float %2146, 0.000000e+00
  br i1 %2147, label %2148, label %2152

; <label>:2148                                    ; preds = %2071
  %2149 = fdiv fast float %2138, %2146
  %2150 = fdiv fast float %2139, %2146
  %2151 = fdiv fast float %2140, %2146
  br label %2152

; <label>:2152                                    ; preds = %2148, %2071
  %2153 = phi float [ %2149, %2148 ], [ 0.000000e+00, %2071 ]
  %2154 = phi float [ %2150, %2148 ], [ 0.000000e+00, %2071 ]
  %2155 = phi float [ %2151, %2148 ], [ 0.000000e+00, %2071 ]
  %2156 = call float @dx.op.dot3.f32(i32 55, float %2153, float %2154, float %2155, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2157 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2156)  ; FMax(a,b)
  %2158 = fmul fast float %2157, 0x400C5BF8A0000000
  %2159 = fmul fast float %2127, %2047
  %2160 = fmul fast float %2159, %2158
  %2161 = fmul fast float %2128, %2047
  %2162 = fmul fast float %2161, %2158
  %2163 = fmul fast float %2129, %2047
  %2164 = fmul fast float %2163, %2158
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 3
  %2167 = fmul fast float %2160, %2166
  %2168 = fmul fast float %2162, %2166
  %2169 = fmul fast float %2164, %2166
  %2170 = fcmp fast ogt float %2014, %2094
  br i1 %2170, label %2171, label %2180

; <label>:2171                                    ; preds = %2152
  %2172 = fmul fast float %2096, 0x3FC24924A0000000
  %2173 = fsub fast float %2014, %2094
  %2174 = fdiv fast float %2173, %2172
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fsub fast float 1.000000e+00, %2175
  %2177 = fmul fast float %2176, %2167
  %2178 = fmul fast float %2176, %2168
  %2179 = fmul fast float %2176, %2169
  br label %2180

; <label>:2180                                    ; preds = %2171, %2152, %2057, %2012
  %2181 = phi float [ %2179, %2171 ], [ %2169, %2152 ], [ 0.000000e+00, %2057 ], [ 0.000000e+00, %2012 ]
  %2182 = phi float [ %2178, %2171 ], [ %2168, %2152 ], [ 0.000000e+00, %2057 ], [ 0.000000e+00, %2012 ]
  %2183 = phi float [ %2177, %2171 ], [ %2167, %2152 ], [ 0.000000e+00, %2057 ], [ 0.000000e+00, %2012 ]
  %2184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2183)  ; FMax(a,b)
  %2185 = fmul fast float %2184, 0x3FD20DD760000000
  %2186 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1850, float %1851, float %1852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = fmul fast float %2186, 0x3FDF454380000000
  %2188 = fmul fast float %2186, %2186
  %2189 = fmul fast float %2188, 0x3FEE471020000000
  %2190 = fadd fast float %2189, 0xBFD42F6020000000
  %2191 = call float @dx.op.dot3.f32(i32 55, float %2184, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2187, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2182)  ; FMax(a,b)
  %2193 = fmul fast float %2192, 0x3FD20DD760000000
  %2194 = call float @dx.op.dot3.f32(i32 55, float %2192, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2187, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2195 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2181)  ; FMax(a,b)
  %2196 = fmul fast float %2195, 0x3FD20DD760000000
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2195, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2187, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2185, float 0.000000e+00)  ; FMax(a,b)
  %2199 = call float @dx.op.binary.f32(i32 35, float %2193, float 0.000000e+00)  ; FMax(a,b)
  %2200 = call float @dx.op.binary.f32(i32 35, float %2196, float 0.000000e+00)  ; FMax(a,b)
  %2201 = call float @dx.op.binary.f32(i32 35, float %2191, float 0.000000e+00)  ; FMax(a,b)
  %2202 = call float @dx.op.binary.f32(i32 35, float %2194, float 0.000000e+00)  ; FMax(a,b)
  %2203 = call float @dx.op.binary.f32(i32 35, float %2197, float 0.000000e+00)  ; FMax(a,b)
  %2204 = fmul fast float %2198, %1901
  %2205 = fmul fast float %2199, %1901
  %2206 = fmul fast float %2200, %1901
  %2207 = fadd fast float %2204, %2005
  %2208 = fadd fast float %2205, %2006
  %2209 = fadd fast float %2206, %2007
  %2210 = fmul fast float %2201, %1901
  %2211 = fmul fast float %2202, %1901
  %2212 = fmul fast float %2203, %1901
  %2213 = fadd fast float %2210, %2002
  %2214 = fadd fast float %2211, %2003
  %2215 = fadd fast float %2212, %2004
  br label %2216

; <label>:2216                                    ; preds = %2180, %2001
  %2217 = phi float [ %2213, %2180 ], [ %2002, %2001 ]
  %2218 = phi float [ %2214, %2180 ], [ %2003, %2001 ]
  %2219 = phi float [ %2215, %2180 ], [ %2004, %2001 ]
  %2220 = phi float [ %2207, %2180 ], [ %2005, %2001 ]
  %2221 = phi float [ %2208, %2180 ], [ %2006, %2001 ]
  %2222 = phi float [ %2209, %2180 ], [ %2007, %2001 ]
  %2223 = fcmp fast olt float %1901, 1.000000e+00
  br i1 %2223, label %2224, label %3042, !dx.controlflow.hints !76

; <label>:2224                                    ; preds = %2216
  %2225 = extractvalue %dx.types.CBufRet.f32 %1857, 2
  %2226 = fadd fast float %2225, %107
  %2227 = fmul fast float %1837, 3.200000e+01
  %2228 = fmul fast float %1838, 3.200000e+01
  %2229 = fadd fast float %1860, %2227
  %2230 = fadd fast float %1861, %2228
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.CBufRet.f32 %2231, 1
  %2234 = fsub fast float %2229, %2232
  %2235 = fsub fast float %2230, %2233
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.CBufRet.f32 %2236, 1
  %2239 = fmul fast float %2234, %2237
  %2240 = fmul fast float %2235, %2238
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 0
  %2243 = fmul fast float %2239, %2242
  %2244 = extractvalue %dx.types.CBufRet.f32 %2241, 1
  %2245 = fadd fast float %2243, %2244
  %2246 = extractvalue %dx.types.CBufRet.f32 %2241, 2
  %2247 = fmul fast float %2246, %2240
  %2248 = extractvalue %dx.types.CBufRet.f32 %2241, 3
  %2249 = fadd fast float %2247, %2248
  %2250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2245, float %2249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2251 = extractvalue %dx.types.ResRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.ResRet.f32 %2250, 1
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2255 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2256 = fsub fast float %2254, %2255
  %2257 = fmul fast float %2256, %2251
  %2258 = fadd fast float %2257, %2255
  %2259 = extractvalue %dx.types.CBufRet.f32 %2253, 3
  %2260 = extractvalue %dx.types.CBufRet.f32 %2253, 2
  %2261 = fsub fast float %2259, %2260
  %2262 = fmul fast float %2261, %2252
  %2263 = fadd fast float %2262, %2260
  %2264 = fsub fast float %2226, %2258
  %2265 = fsub fast float %2263, %2258
  %2266 = fdiv fast float %2264, %2265
  %2267 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 0
  %2270 = fmul fast float %2269, %2267
  %2271 = extractvalue %dx.types.CBufRet.f32 %2268, 1
  %2272 = fadd fast float %2270, %2271
  %2273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2245, float %2249, float %2272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.ResRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.ResRet.f32 %2273, 2
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2281 = fmul fast float %2278, %2274
  %2282 = fmul fast float %2279, %2275
  %2283 = fmul fast float %2280, %2276
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2288 = fadd fast float %2281, %2285
  %2289 = fadd fast float %2282, %2286
  %2290 = fadd fast float %2283, %2287
  %2291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.f32 %2291, 0
  %2293 = fmul fast float %2292, %2239
  %2294 = extractvalue %dx.types.CBufRet.f32 %2291, 1
  %2295 = fadd fast float %2293, %2294
  %2296 = extractvalue %dx.types.CBufRet.f32 %2291, 2
  %2297 = fmul fast float %2296, %2240
  %2298 = extractvalue %dx.types.CBufRet.f32 %2291, 3
  %2299 = fadd fast float %2297, %2298
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2295, float %2299, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2311 = extractvalue %dx.types.ResRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.ResRet.f32 %2310, 1
  %2313 = extractvalue %dx.types.ResRet.f32 %2310, 2
  %2314 = extractvalue %dx.types.ResRet.f32 %2310, 3
  %2315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2295, float %2299, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = extractvalue %dx.types.ResRet.f32 %2315, 1
  %2318 = extractvalue %dx.types.ResRet.f32 %2315, 2
  %2319 = extractvalue %dx.types.ResRet.f32 %2315, 3
  %2320 = fmul fast float %2311, %2288
  %2321 = fmul fast float %2316, %2288
  %2322 = fmul fast float %2318, %2288
  %2323 = fmul fast float %2314, %2288
  %2324 = fadd fast float %2320, %2301
  %2325 = fadd fast float %2321, %2302
  %2326 = fadd fast float %2322, %2303
  %2327 = fadd fast float %2323, %2304
  %2328 = fmul fast float %2312, %2288
  %2329 = fmul fast float %2317, %2288
  %2330 = fadd fast float %2328, %2306
  %2331 = fadd fast float %2329, %2307
  %2332 = fmul fast float %2313, %2288
  %2333 = fmul fast float %2319, %2288
  %2334 = fadd fast float %2332, %2308
  %2335 = fadd fast float %2333, %2309
  %2336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2295, float %2299, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = extractvalue %dx.types.ResRet.f32 %2336, 1
  %2339 = extractvalue %dx.types.ResRet.f32 %2336, 2
  %2340 = extractvalue %dx.types.ResRet.f32 %2336, 3
  %2341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2295, float %2299, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.ResRet.f32 %2341, 3
  %2346 = fmul fast float %2337, %2289
  %2347 = fmul fast float %2342, %2289
  %2348 = fmul fast float %2344, %2289
  %2349 = fmul fast float %2340, %2289
  %2350 = fadd fast float %2324, %2346
  %2351 = fadd fast float %2325, %2347
  %2352 = fadd fast float %2326, %2348
  %2353 = fadd fast float %2327, %2349
  %2354 = fmul fast float %2338, %2289
  %2355 = fmul fast float %2343, %2289
  %2356 = fadd fast float %2330, %2354
  %2357 = fadd fast float %2331, %2355
  %2358 = fmul fast float %2339, %2289
  %2359 = fmul fast float %2345, %2289
  %2360 = fadd fast float %2334, %2358
  %2361 = fadd fast float %2335, %2359
  %2362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2295, float %2299, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2363 = extractvalue %dx.types.ResRet.f32 %2362, 0
  %2364 = extractvalue %dx.types.ResRet.f32 %2362, 1
  %2365 = extractvalue %dx.types.ResRet.f32 %2362, 2
  %2366 = extractvalue %dx.types.ResRet.f32 %2362, 3
  %2367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2295, float %2299, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2368 = extractvalue %dx.types.ResRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.ResRet.f32 %2367, 1
  %2370 = extractvalue %dx.types.ResRet.f32 %2367, 2
  %2371 = extractvalue %dx.types.ResRet.f32 %2367, 3
  %2372 = fmul fast float %2363, %2290
  %2373 = fmul fast float %2368, %2290
  %2374 = fmul fast float %2370, %2290
  %2375 = fmul fast float %2366, %2290
  %2376 = fadd fast float %2350, %2372
  %2377 = fadd fast float %2351, %2373
  %2378 = fadd fast float %2352, %2374
  %2379 = fadd fast float %2353, %2375
  %2380 = fmul fast float %2364, %2290
  %2381 = fmul fast float %2369, %2290
  %2382 = fadd fast float %2356, %2380
  %2383 = fadd fast float %2357, %2381
  %2384 = fmul fast float %2365, %2290
  %2385 = fmul fast float %2371, %2290
  %2386 = fadd fast float %2360, %2384
  %2387 = fadd fast float %2361, %2385
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 0
  %2390 = fsub fast float %1860, %2389
  %2391 = fsub fast float %2232, %1860
  %2392 = call float @dx.op.binary.f32(i32 35, float %2391, float %2390)  ; FMax(a,b)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2388, 1
  %2394 = fsub fast float %1861, %2393
  %2395 = fsub fast float %2233, %1861
  %2396 = call float @dx.op.binary.f32(i32 35, float %2395, float %2394)  ; FMax(a,b)
  %2397 = call float @dx.op.binary.f32(i32 35, float %2392, float %2396)  ; FMax(a,b)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2236, 3
  %2399 = fmul fast float %2398, %2397
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.CBufRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.CBufRet.f32 %2401, 2
  %2405 = extractvalue %dx.types.CBufRet.f32 %2401, 3
  %2406 = fsub fast float %2402, %2376
  %2407 = fsub fast float %2403, %2377
  %2408 = fsub fast float %2404, %2378
  %2409 = fsub fast float %2405, %2379
  %2410 = fmul fast float %2406, %2400
  %2411 = fmul fast float %2407, %2400
  %2412 = fmul fast float %2408, %2400
  %2413 = fmul fast float %2409, %2400
  %2414 = fadd fast float %2410, %2376
  %2415 = fadd fast float %2411, %2377
  %2416 = fadd fast float %2412, %2378
  %2417 = fadd fast float %2413, %2379
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = fsub fast float %2419, %2382
  %2422 = fsub fast float %2420, %2383
  %2423 = fmul fast float %2421, %2400
  %2424 = fmul fast float %2422, %2400
  %2425 = fadd fast float %2423, %2382
  %2426 = fadd fast float %2424, %2383
  %2427 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2428 = extractvalue %dx.types.CBufRet.f32 %2418, 3
  %2429 = fsub fast float %2427, %2386
  %2430 = fsub fast float %2428, %2387
  %2431 = fmul fast float %2429, %2400
  %2432 = fmul fast float %2430, %2400
  %2433 = fadd fast float %2431, %2386
  %2434 = fadd fast float %2432, %2387
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2437 = fmul fast float %2436, %2414
  %2438 = fmul fast float %2436, %2415
  %2439 = fmul fast float %2436, %2416
  %2440 = fmul fast float %2436, %2417
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = fmul fast float %2442, %2425
  %2444 = fmul fast float %2442, %2426
  %2445 = fadd fast float %2443, %2437
  %2446 = fadd fast float %2444, %2439
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 0
  %2449 = fmul fast float %2448, %2433
  %2450 = fmul fast float %2448, %2434
  %2451 = fadd fast float %2445, %2449
  %2452 = fadd fast float %2446, %2450
  %2453 = extractvalue %dx.types.CBufRet.f32 %2435, 1
  %2454 = fmul fast float %2453, %2414
  %2455 = fmul fast float %2453, %2415
  %2456 = fmul fast float %2453, %2416
  %2457 = fmul fast float %2453, %2417
  %2458 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2459 = fmul fast float %2458, %2425
  %2460 = fmul fast float %2458, %2426
  %2461 = fadd fast float %2459, %2454
  %2462 = fadd fast float %2460, %2456
  %2463 = extractvalue %dx.types.CBufRet.f32 %2447, 1
  %2464 = fmul fast float %2463, %2433
  %2465 = fmul fast float %2463, %2434
  %2466 = fadd fast float %2461, %2464
  %2467 = fadd fast float %2462, %2465
  %2468 = extractvalue %dx.types.CBufRet.f32 %2435, 2
  %2469 = fmul fast float %2468, %2414
  %2470 = fmul fast float %2468, %2415
  %2471 = fmul fast float %2468, %2416
  %2472 = fmul fast float %2468, %2417
  %2473 = extractvalue %dx.types.CBufRet.f32 %2441, 2
  %2474 = fmul fast float %2473, %2425
  %2475 = fmul fast float %2473, %2426
  %2476 = fadd fast float %2474, %2469
  %2477 = fadd fast float %2475, %2471
  %2478 = extractvalue %dx.types.CBufRet.f32 %2447, 2
  %2479 = fmul fast float %2478, %2433
  %2480 = fmul fast float %2478, %2434
  %2481 = fadd fast float %2476, %2479
  %2482 = fadd fast float %2477, %2480
  %2483 = fmul fast float %2470, %2470
  %2484 = fmul fast float %2482, %2482
  %2485 = fmul fast float %2472, %2472
  %2486 = fadd fast float %2485, %2483
  %2487 = fadd fast float %2486, %2484
  %2488 = call float @dx.op.unary.f32(i32 24, float %2487)  ; Sqrt(value)
  %2489 = fcmp fast ugt float %2488, 0.000000e+00
  br i1 %2489, label %2490, label %2505

; <label>:2490                                    ; preds = %2224
  %2491 = fsub fast float -0.000000e+00, %2472
  %2492 = fdiv fast float %2491, %2488
  %2493 = fsub fast float -0.000000e+00, %2470
  %2494 = fdiv fast float %2493, %2488
  %2495 = fdiv fast float %2482, %2488
  %2496 = fmul fast float %2481, 0x3FE279A760000000
  %2497 = fmul fast float %2494, %2470
  %2498 = fmul fast float %2495, %2482
  %2499 = fmul fast float %2492, %2472
  %2500 = fadd fast float %2497, %2499
  %2501 = fsub fast float %2500, %2498
  %2502 = call float @dx.op.unary.f32(i32 6, float %2501)  ; FAbs(value)
  %2503 = fadd fast float %2502, 0x3DDB7CDFE0000000
  %2504 = fdiv fast float %2496, %2503
  br label %2505

; <label>:2505                                    ; preds = %2490, %2224
  %2506 = phi float [ %2504, %2490 ], [ 1.000000e+00, %2224 ]
  %2507 = fmul fast float %2455, %2455
  %2508 = fmul fast float %2467, %2467
  %2509 = fmul fast float %2457, %2457
  %2510 = fadd fast float %2509, %2507
  %2511 = fadd fast float %2510, %2508
  %2512 = call float @dx.op.unary.f32(i32 24, float %2511)  ; Sqrt(value)
  %2513 = fcmp fast ugt float %2512, 0.000000e+00
  br i1 %2513, label %2514, label %2529

; <label>:2514                                    ; preds = %2505
  %2515 = fsub fast float -0.000000e+00, %2457
  %2516 = fdiv fast float %2515, %2512
  %2517 = fsub fast float -0.000000e+00, %2455
  %2518 = fdiv fast float %2517, %2512
  %2519 = fdiv fast float %2467, %2512
  %2520 = fmul fast float %2466, 0x3FE279A760000000
  %2521 = fmul fast float %2518, %2455
  %2522 = fmul fast float %2519, %2467
  %2523 = fmul fast float %2516, %2457
  %2524 = fadd fast float %2521, %2523
  %2525 = fsub fast float %2524, %2522
  %2526 = call float @dx.op.unary.f32(i32 6, float %2525)  ; FAbs(value)
  %2527 = fadd fast float %2526, 0x3DDB7CDFE0000000
  %2528 = fdiv fast float %2520, %2527
  br label %2529

; <label>:2529                                    ; preds = %2514, %2505
  %2530 = phi float [ %2528, %2514 ], [ 1.000000e+00, %2505 ]
  %2531 = call float @dx.op.binary.f32(i32 36, float %2530, float %2506)  ; FMin(a,b)
  %2532 = fmul fast float %2438, %2438
  %2533 = fmul fast float %2452, %2452
  %2534 = fmul fast float %2440, %2440
  %2535 = fadd fast float %2534, %2532
  %2536 = fadd fast float %2535, %2533
  %2537 = call float @dx.op.unary.f32(i32 24, float %2536)  ; Sqrt(value)
  %2538 = fcmp fast ugt float %2537, 0.000000e+00
  br i1 %2538, label %2539, label %2554

; <label>:2539                                    ; preds = %2529
  %2540 = fsub fast float -0.000000e+00, %2440
  %2541 = fdiv fast float %2540, %2537
  %2542 = fsub fast float -0.000000e+00, %2438
  %2543 = fdiv fast float %2542, %2537
  %2544 = fdiv fast float %2452, %2537
  %2545 = fmul fast float %2451, 0x3FE279A760000000
  %2546 = fmul fast float %2543, %2438
  %2547 = fmul fast float %2544, %2452
  %2548 = fmul fast float %2541, %2440
  %2549 = fadd fast float %2546, %2548
  %2550 = fsub fast float %2549, %2547
  %2551 = call float @dx.op.unary.f32(i32 6, float %2550)  ; FAbs(value)
  %2552 = fadd fast float %2551, 0x3DDB7CDFE0000000
  %2553 = fdiv fast float %2545, %2552
  br label %2554

; <label>:2554                                    ; preds = %2539, %2529
  %2555 = phi float [ %2553, %2539 ], [ 1.000000e+00, %2529 ]
  %2556 = call float @dx.op.binary.f32(i32 36, float %2555, float %2531)  ; FMin(a,b)
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = fcmp fast olt float %2557, 1.000000e+00
  br i1 %2558, label %2559, label %2569

; <label>:2559                                    ; preds = %2554
  %2560 = fmul fast float %2557, %2438
  %2561 = fmul fast float %2557, %2452
  %2562 = fmul fast float %2557, %2440
  %2563 = fmul fast float %2557, %2455
  %2564 = fmul fast float %2557, %2467
  %2565 = fmul fast float %2557, %2457
  %2566 = fmul fast float %2557, %2470
  %2567 = fmul fast float %2557, %2482
  %2568 = fmul fast float %2557, %2472
  br label %2569

; <label>:2569                                    ; preds = %2559, %2554
  %2570 = phi float [ %2566, %2559 ], [ %2470, %2554 ]
  %2571 = phi float [ %2567, %2559 ], [ %2482, %2554 ]
  %2572 = phi float [ %2568, %2559 ], [ %2472, %2554 ]
  %2573 = phi float [ %2563, %2559 ], [ %2455, %2554 ]
  %2574 = phi float [ %2564, %2559 ], [ %2467, %2554 ]
  %2575 = phi float [ %2565, %2559 ], [ %2457, %2554 ]
  %2576 = phi float [ %2560, %2559 ], [ %2438, %2554 ]
  %2577 = phi float [ %2561, %2559 ], [ %2452, %2554 ]
  %2578 = phi float [ %2562, %2559 ], [ %2440, %2554 ]
  %2579 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2451)  ; FMax(a,b)
  %2580 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2466)  ; FMax(a,b)
  %2581 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2481)  ; FMax(a,b)
  %2582 = fcmp fast oge float %2239, 0.000000e+00
  %2583 = and i1 %2582, %2010
  %2584 = fcmp fast ole float %2239, 1.000000e+00
  %2585 = and i1 %2584, %2583
  %2586 = fcmp fast oge float %2240, 0.000000e+00
  %2587 = and i1 %2586, %2585
  %2588 = fcmp fast ole float %2240, 1.000000e+00
  %2589 = and i1 %2588, %2587
  br i1 %2589, label %2590, label %2735, !dx.controlflow.hints !77

; <label>:2590                                    ; preds = %2569
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 3
  %2594 = fmul fast float %2592, %2239
  %2595 = fmul fast float %2593, %2240
  %2596 = call float @dx.op.unary.f32(i32 27, float %2594)  ; Round_ni(value)
  %2597 = call float @dx.op.unary.f32(i32 27, float %2595)  ; Round_ni(value)
  %2598 = fptosi float %2596 to i32
  %2599 = fptosi float %2597 to i32
  %2600 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2598, i32 %2599, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = and i32 %2601, 65535
  %2603 = lshr i32 %2601, 16
  %2604 = icmp eq i32 %2602, 65535
  br i1 %2604, label %2641, label %2605

; <label>:2605                                    ; preds = %2590
  %2606 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2607 = extractvalue %dx.types.CBufRet.f32 %2591, 0
  %2608 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2609 = fmul fast float %2607, %2239
  %2610 = fmul fast float %2608, %2240
  %2611 = fmul fast float %2609, 1.250000e-01
  %2612 = fmul fast float %2610, 1.250000e-01
  %2613 = call float @dx.op.unary.f32(i32 27, float %2611)  ; Round_ni(value)
  %2614 = call float @dx.op.unary.f32(i32 27, float %2612)  ; Round_ni(value)
  %2615 = fmul fast float %2613, 8.000000e+00
  %2616 = fmul fast float %2614, 8.000000e+00
  %2617 = and i32 %2601, 255
  %2618 = lshr i32 %2601, 8
  %2619 = and i32 %2618, 255
  %2620 = mul nuw nsw i32 %2617, 9
  %2621 = uitofp i32 %2620 to float
  %2622 = mul nuw nsw i32 %2619, 9
  %2623 = uitofp i32 %2622 to float
  %2624 = fadd fast float %2621, 5.000000e-01
  %2625 = fadd fast float %2624, %2609
  %2626 = fsub fast float %2625, %2615
  %2627 = fadd fast float %2623, 5.000000e-01
  %2628 = fadd fast float %2627, %2610
  %2629 = fsub fast float %2628, %2616
  %2630 = fdiv fast float %2626, %2009
  %2631 = fdiv fast float %2629, %2606
  %2632 = fmul fast float %2267, 4.375000e-01
  %2633 = fadd fast float %2632, 3.125000e-02
  %2634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2630, float %2631, float %2633, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.ResRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.ResRet.f32 %2634, 2
  %2638 = fadd fast float %2635, %2579
  %2639 = fadd fast float %2636, %2580
  %2640 = fadd fast float %2637, %2581
  br label %2641

; <label>:2641                                    ; preds = %2605, %2590
  %2642 = phi float [ %2640, %2605 ], [ %2581, %2590 ]
  %2643 = phi float [ %2639, %2605 ], [ %2580, %2590 ]
  %2644 = phi float [ %2638, %2605 ], [ %2579, %2590 ]
  %2645 = icmp eq i32 %2603, 65535
  br i1 %2645, label %2735, label %2646

; <label>:2646                                    ; preds = %2641
  %2647 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2648 = extractvalue %dx.types.CBufRet.f32 %2591, 0
  %2649 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2650 = fmul fast float %2648, %2239
  %2651 = fmul fast float %2649, %2240
  %2652 = fmul fast float %2650, 1.250000e-01
  %2653 = fmul fast float %2651, 1.250000e-01
  %2654 = call float @dx.op.unary.f32(i32 27, float %2652)  ; Round_ni(value)
  %2655 = call float @dx.op.unary.f32(i32 27, float %2653)  ; Round_ni(value)
  %2656 = fmul fast float %2654, 8.000000e+00
  %2657 = fmul fast float %2655, 8.000000e+00
  %2658 = fsub fast float %2650, %2656
  %2659 = fsub fast float %2651, %2657
  %2660 = fadd fast float %2658, 5.000000e-01
  %2661 = fadd fast float %2659, 5.000000e-01
  %2662 = and i32 %2603, 255
  %2663 = lshr i32 %2601, 24
  %2664 = mul nuw nsw i32 %2662, 9
  %2665 = uitofp i32 %2664 to float
  %2666 = mul nuw nsw i32 %2663, 9
  %2667 = uitofp i32 %2666 to float
  %2668 = fadd fast float %2660, %2665
  %2669 = fadd fast float %2661, %2667
  %2670 = fdiv fast float %2668, %2009
  %2671 = fdiv fast float %2669, %2647
  %2672 = fmul fast float %2267, 4.375000e-01
  %2673 = fadd fast float %2672, 3.125000e-02
  %2674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2670, float %2671, float %2673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.ResRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.ResRet.f32 %2674, 2
  %2678 = fadd fast float %2672, 5.312500e-01
  %2679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2670, float %2671, float %2678, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2680 = extractvalue %dx.types.ResRet.f32 %2679, 0
  %2681 = extractvalue %dx.types.ResRet.f32 %2679, 1
  %2682 = extractvalue %dx.types.ResRet.f32 %2679, 2
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fmul fast float %2681, 2.000000e+00
  %2685 = fmul fast float %2682, 2.000000e+00
  %2686 = fadd fast float %2683, -1.000000e+00
  %2687 = fadd fast float %2684, -1.000000e+00
  %2688 = fadd fast float %2685, -1.000000e+00
  %2689 = fmul fast float %2686, %2686
  %2690 = fmul fast float %2687, %2687
  %2691 = fadd fast float %2689, %2690
  %2692 = fmul fast float %2688, %2688
  %2693 = fadd fast float %2691, %2692
  %2694 = call float @dx.op.unary.f32(i32 24, float %2693)  ; Sqrt(value)
  %2695 = fcmp fast ogt float %2694, 0.000000e+00
  br i1 %2695, label %2696, label %2700

; <label>:2696                                    ; preds = %2646
  %2697 = fdiv fast float %2686, %2694
  %2698 = fdiv fast float %2687, %2694
  %2699 = fdiv fast float %2688, %2694
  br label %2700

; <label>:2700                                    ; preds = %2696, %2646
  %2701 = phi float [ %2697, %2696 ], [ 0.000000e+00, %2646 ]
  %2702 = phi float [ %2698, %2696 ], [ 0.000000e+00, %2646 ]
  %2703 = phi float [ %2699, %2696 ], [ 0.000000e+00, %2646 ]
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = fsub fast float %1860, %2705
  %2708 = fsub fast float %1861, %2706
  %2709 = fmul fast float %2707, %2707
  %2710 = fmul fast float %2708, %2708
  %2711 = fadd fast float %2709, %2710
  %2712 = call float @dx.op.unary.f32(i32 24, float %2711)  ; Sqrt(value)
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.CBufRet.f32 %2713, 1
  %2716 = fsub fast float %2712, %2714
  %2717 = fdiv fast float %2716, %2715
  %2718 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2719 = fmul fast float %2718, 2.000000e+00
  %2720 = fsub fast float 3.000000e+00, %2719
  %2721 = fmul fast float %2718, %2718
  %2722 = fmul fast float %2721, %2720
  %2723 = call float @dx.op.dot3.f32(i32 55, float %2701, float %2702, float %2703, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2723)  ; FMax(a,b)
  %2725 = fmul fast float %2724, 0x400C5BF8A0000000
  %2726 = fmul fast float %2722, %2675
  %2727 = fmul fast float %2726, %2725
  %2728 = fadd fast float %2727, %2644
  %2729 = fmul fast float %2722, %2676
  %2730 = fmul fast float %2729, %2725
  %2731 = fadd fast float %2730, %2643
  %2732 = fmul fast float %2722, %2677
  %2733 = fmul fast float %2732, %2725
  %2734 = fadd fast float %2733, %2642
  br label %2735

; <label>:2735                                    ; preds = %2700, %2641, %2569
  %2736 = phi float [ %2734, %2700 ], [ %2642, %2641 ], [ %2581, %2569 ]
  %2737 = phi float [ %2731, %2700 ], [ %2643, %2641 ], [ %2580, %2569 ]
  %2738 = phi float [ %2728, %2700 ], [ %2644, %2641 ], [ %2579, %2569 ]
  %2739 = fcmp fast ogt float %2226, %2263
  %2740 = and i1 %2582, %2739
  %2741 = and i1 %2584, %2740
  %2742 = and i1 %2586, %2741
  %2743 = and i1 %2588, %2742
  br i1 %2743, label %2744, label %2801, !dx.controlflow.hints !78

; <label>:2744                                    ; preds = %2735
  %2745 = fmul fast float %2265, 0x3FC24924A0000000
  %2746 = fsub fast float %2226, %2263
  %2747 = fdiv fast float %2746, %2745
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2749, 0
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.CBufRet.f32 %2751, 2
  %2755 = fsub fast float %2750, %2738
  %2756 = fsub fast float %2752, %2576
  %2757 = fsub fast float %2753, %2577
  %2758 = fsub fast float %2754, %2578
  %2759 = fmul fast float %2755, %2748
  %2760 = fmul fast float %2756, %2748
  %2761 = fmul fast float %2757, %2748
  %2762 = fmul fast float %2758, %2748
  %2763 = fadd fast float %2759, %2738
  %2764 = fadd fast float %2760, %2576
  %2765 = fadd fast float %2761, %2577
  %2766 = fadd fast float %2762, %2578
  %2767 = extractvalue %dx.types.CBufRet.f32 %2749, 1
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2772 = fsub fast float %2767, %2737
  %2773 = fsub fast float %2769, %2573
  %2774 = fsub fast float %2770, %2574
  %2775 = fsub fast float %2771, %2575
  %2776 = fmul fast float %2772, %2748
  %2777 = fmul fast float %2773, %2748
  %2778 = fmul fast float %2774, %2748
  %2779 = fmul fast float %2775, %2748
  %2780 = fadd fast float %2776, %2737
  %2781 = fadd fast float %2777, %2573
  %2782 = fadd fast float %2778, %2574
  %2783 = fadd fast float %2779, %2575
  %2784 = extractvalue %dx.types.CBufRet.f32 %2749, 2
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2789 = fsub fast float %2784, %2736
  %2790 = fsub fast float %2786, %2570
  %2791 = fsub fast float %2787, %2571
  %2792 = fsub fast float %2788, %2572
  %2793 = fmul fast float %2789, %2748
  %2794 = fmul fast float %2790, %2748
  %2795 = fmul fast float %2791, %2748
  %2796 = fmul fast float %2792, %2748
  %2797 = fadd fast float %2793, %2736
  %2798 = fadd fast float %2794, %2570
  %2799 = fadd fast float %2795, %2571
  %2800 = fadd fast float %2796, %2572
  br label %2801

; <label>:2801                                    ; preds = %2744, %2735
  %2802 = phi float [ %2797, %2744 ], [ %2736, %2735 ]
  %2803 = phi float [ %2798, %2744 ], [ %2570, %2735 ]
  %2804 = phi float [ %2799, %2744 ], [ %2571, %2735 ]
  %2805 = phi float [ %2800, %2744 ], [ %2572, %2735 ]
  %2806 = phi float [ %2780, %2744 ], [ %2737, %2735 ]
  %2807 = phi float [ %2781, %2744 ], [ %2573, %2735 ]
  %2808 = phi float [ %2782, %2744 ], [ %2574, %2735 ]
  %2809 = phi float [ %2783, %2744 ], [ %2575, %2735 ]
  %2810 = phi float [ %2763, %2744 ], [ %2738, %2735 ]
  %2811 = phi float [ %2764, %2744 ], [ %2576, %2735 ]
  %2812 = phi float [ %2765, %2744 ], [ %2577, %2735 ]
  %2813 = phi float [ %2766, %2744 ], [ %2578, %2735 ]
  %2814 = extractvalue %dx.types.CBufRet.f32 %2388, 3
  %2815 = fmul fast float %2814, %2810
  %2816 = fmul fast float %2814, %2806
  %2817 = fmul fast float %2814, %2802
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 3
  %2820 = fmul fast float %2815, %2819
  %2821 = fmul fast float %2816, %2819
  %2822 = fmul fast float %2817, %2819
  %2823 = fmul fast float %2811, 1.500000e+00
  %2824 = fmul fast float %2823, %2814
  %2825 = fmul fast float %2824, %2819
  %2826 = fmul fast float %2812, 1.500000e+00
  %2827 = fmul fast float %2826, %2814
  %2828 = fmul fast float %2827, %2819
  %2829 = fmul fast float %2813, 1.500000e+00
  %2830 = fmul fast float %2829, %2814
  %2831 = fmul fast float %2830, %2819
  %2832 = fmul fast float %2807, 1.500000e+00
  %2833 = fmul fast float %2832, %2814
  %2834 = fmul fast float %2833, %2819
  %2835 = fmul fast float %2808, 1.500000e+00
  %2836 = fmul fast float %2835, %2814
  %2837 = fmul fast float %2836, %2819
  %2838 = fmul fast float %2809, 1.500000e+00
  %2839 = fmul fast float %2838, %2814
  %2840 = fmul fast float %2839, %2819
  %2841 = fmul fast float %2803, 1.500000e+00
  %2842 = fmul fast float %2841, %2814
  %2843 = fmul fast float %2842, %2819
  %2844 = fmul fast float %2804, 1.500000e+00
  %2845 = fmul fast float %2844, %2814
  %2846 = fmul fast float %2845, %2819
  %2847 = fmul fast float %2805, 1.500000e+00
  %2848 = fmul fast float %2847, %2814
  %2849 = fmul fast float %2848, %2819
  %2850 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2820)  ; FMax(a,b)
  %2851 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2828, float %2831, float %2825, float %2828, float %2831)  ; Dot3(ax,ay,az,bx,by,bz)
  %2852 = fcmp fast oeq float %2851, 0.000000e+00
  %2853 = fcmp fast oeq float %2850, 0.000000e+00
  %2854 = or i1 %2853, %2852
  br i1 %2854, label %2884, label %2855

; <label>:2855                                    ; preds = %2801
  %2856 = fsub fast float -0.000000e+00, %2831
  %2857 = fsub fast float -0.000000e+00, %2825
  %2858 = call float @dx.op.unary.f32(i32 24, float %2851)  ; Sqrt(value)
  %2859 = fdiv fast float %2858, %2850
  %2860 = fcmp fast ogt float %2859, 0x3FFB6F8900000000
  %2861 = select i1 %2860, float 0x3FFB6F8900000000, float %2859
  %2862 = fmul fast float %2861, 0x3FE8A23460000000
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2864 = call float @dx.op.binary.f32(i32 35, float %2861, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2865 = fmul fast float %2863, %2850
  %2866 = fmul fast float %2864, 0x3FF279A740000000
  %2867 = fadd fast float %2866, -1.000000e+00
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2856, float %2857, float %2828, float %2856, float %2857, float %2828)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.unary.f32(i32 25, float %2868)  ; Rsqrt(value)
  %2870 = fmul fast float %2869, %2856
  %2871 = fmul fast float %2869, %2857
  %2872 = fmul fast float %2869, %2828
  %2873 = fmul fast float %2867, %2867
  %2874 = fsub fast float 1.000000e+00, %2873
  %2875 = fmul fast float %2864, 0x40005F8BE0000000
  %2876 = fsub fast float 0x400C5BF8A0000000, %2875
  %2877 = fdiv fast float %2865, %2876
  %2878 = fmul fast float %2877, 0x3FEE31C3C0000000
  %2879 = fmul fast float %2878, %2874
  %2880 = fmul fast float %2864, 0x3FDACB7480000000
  %2881 = fadd fast float %2880, 0xBFD7347680000000
  %2882 = fmul fast float %2881, %2877
  %2883 = fmul fast float %2882, %2874
  br label %2884

; <label>:2884                                    ; preds = %2855, %2801
  %2885 = phi float [ %2870, %2855 ], [ 0.000000e+00, %2801 ]
  %2886 = phi float [ %2871, %2855 ], [ 0.000000e+00, %2801 ]
  %2887 = phi float [ %2872, %2855 ], [ 0.000000e+00, %2801 ]
  %2888 = phi float [ %2879, %2855 ], [ 0.000000e+00, %2801 ]
  %2889 = phi float [ %2883, %2855 ], [ 0.000000e+00, %2801 ]
  %2890 = call float @dx.op.dot3.f32(i32 55, float %2885, float %2886, float %2887, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2891 = fmul fast float %2890, %2890
  %2892 = fmul fast float %2891, 0x3FEE471020000000
  %2893 = fadd fast float %2892, 0xBFD42F6020000000
  %2894 = fmul fast float %2850, 0x3FD20DD760000000
  %2895 = fmul fast float %2893, %2889
  %2896 = fmul fast float %2888, 0x3FDF454380000000
  %2897 = fmul fast float %2896, %2890
  %2898 = fadd fast float %2897, %2894
  %2899 = fadd fast float %2898, %2895
  %2900 = call float @dx.op.dot3.f32(i32 55, float %2885, float %2886, float %2887, float %1850, float %1851, float %1852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2901 = fmul fast float %2900, 0x3FDF454380000000
  %2902 = fmul fast float %2900, %2900
  %2903 = fmul fast float %2902, 0x3FEE471020000000
  %2904 = fadd fast float %2903, 0xBFD42F6020000000
  %2905 = call float @dx.op.dot3.f32(i32 55, float %2850, float %2888, float %2889, float 0x3FD20DD760000000, float %2901, float %2904)  ; Dot3(ax,ay,az,bx,by,bz)
  %2906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2821)  ; FMax(a,b)
  %2907 = call float @dx.op.dot3.f32(i32 55, float %2834, float %2837, float %2840, float %2834, float %2837, float %2840)  ; Dot3(ax,ay,az,bx,by,bz)
  %2908 = fcmp fast oeq float %2907, 0.000000e+00
  %2909 = fcmp fast oeq float %2906, 0.000000e+00
  %2910 = or i1 %2909, %2908
  br i1 %2910, label %2940, label %2911

; <label>:2911                                    ; preds = %2884
  %2912 = fsub fast float -0.000000e+00, %2840
  %2913 = fsub fast float -0.000000e+00, %2834
  %2914 = call float @dx.op.unary.f32(i32 24, float %2907)  ; Sqrt(value)
  %2915 = fdiv fast float %2914, %2906
  %2916 = fcmp fast ogt float %2915, 0x3FFB6F8900000000
  %2917 = select i1 %2916, float 0x3FFB6F8900000000, float %2915
  %2918 = fmul fast float %2917, 0x3FE8A23460000000
  %2919 = call float @dx.op.unary.f32(i32 7, float %2918)  ; Saturate(value)
  %2920 = call float @dx.op.binary.f32(i32 35, float %2917, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2921 = fmul fast float %2919, %2906
  %2922 = fmul fast float %2920, 0x3FF279A740000000
  %2923 = fadd fast float %2922, -1.000000e+00
  %2924 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2837, float %2912, float %2913, float %2837)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = call float @dx.op.unary.f32(i32 25, float %2924)  ; Rsqrt(value)
  %2926 = fmul fast float %2925, %2912
  %2927 = fmul fast float %2925, %2913
  %2928 = fmul fast float %2925, %2837
  %2929 = fmul fast float %2923, %2923
  %2930 = fsub fast float 1.000000e+00, %2929
  %2931 = fmul fast float %2920, 0x40005F8BE0000000
  %2932 = fsub fast float 0x400C5BF8A0000000, %2931
  %2933 = fdiv fast float %2921, %2932
  %2934 = fmul fast float %2933, 0x3FEE31C3C0000000
  %2935 = fmul fast float %2934, %2930
  %2936 = fmul fast float %2920, 0x3FDACB7480000000
  %2937 = fadd fast float %2936, 0xBFD7347680000000
  %2938 = fmul fast float %2937, %2933
  %2939 = fmul fast float %2938, %2930
  br label %2940

; <label>:2940                                    ; preds = %2911, %2884
  %2941 = phi float [ %2926, %2911 ], [ 0.000000e+00, %2884 ]
  %2942 = phi float [ %2927, %2911 ], [ 0.000000e+00, %2884 ]
  %2943 = phi float [ %2928, %2911 ], [ 0.000000e+00, %2884 ]
  %2944 = phi float [ %2935, %2911 ], [ 0.000000e+00, %2884 ]
  %2945 = phi float [ %2939, %2911 ], [ 0.000000e+00, %2884 ]
  %2946 = call float @dx.op.dot3.f32(i32 55, float %2941, float %2942, float %2943, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2947 = fmul fast float %2946, %2946
  %2948 = fmul fast float %2947, 0x3FEE471020000000
  %2949 = fadd fast float %2948, 0xBFD42F6020000000
  %2950 = fmul fast float %2906, 0x3FD20DD760000000
  %2951 = fmul fast float %2949, %2945
  %2952 = fmul fast float %2944, 0x3FDF454380000000
  %2953 = fmul fast float %2952, %2946
  %2954 = fadd fast float %2953, %2950
  %2955 = fadd fast float %2954, %2951
  %2956 = call float @dx.op.dot3.f32(i32 55, float %2941, float %2942, float %2943, float %1850, float %1851, float %1852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = fmul fast float %2956, 0x3FDF454380000000
  %2958 = fmul fast float %2956, %2956
  %2959 = fmul fast float %2958, 0x3FEE471020000000
  %2960 = fadd fast float %2959, 0xBFD42F6020000000
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2906, float %2944, float %2945, float 0x3FD20DD760000000, float %2957, float %2960)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2822)  ; FMax(a,b)
  %2963 = call float @dx.op.dot3.f32(i32 55, float %2843, float %2846, float %2849, float %2843, float %2846, float %2849)  ; Dot3(ax,ay,az,bx,by,bz)
  %2964 = fcmp fast oeq float %2963, 0.000000e+00
  %2965 = fcmp fast oeq float %2962, 0.000000e+00
  %2966 = or i1 %2965, %2964
  br i1 %2966, label %2996, label %2967

; <label>:2967                                    ; preds = %2940
  %2968 = fsub fast float -0.000000e+00, %2849
  %2969 = fsub fast float -0.000000e+00, %2843
  %2970 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
  %2971 = fdiv fast float %2970, %2962
  %2972 = fcmp fast ogt float %2971, 0x3FFB6F8900000000
  %2973 = select i1 %2972, float 0x3FFB6F8900000000, float %2971
  %2974 = fmul fast float %2973, 0x3FE8A23460000000
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2976 = call float @dx.op.binary.f32(i32 35, float %2973, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2977 = fmul fast float %2975, %2962
  %2978 = fmul fast float %2976, 0x3FF279A740000000
  %2979 = fadd fast float %2978, -1.000000e+00
  %2980 = call float @dx.op.dot3.f32(i32 55, float %2968, float %2969, float %2846, float %2968, float %2969, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2981 = call float @dx.op.unary.f32(i32 25, float %2980)  ; Rsqrt(value)
  %2982 = fmul fast float %2981, %2968
  %2983 = fmul fast float %2981, %2969
  %2984 = fmul fast float %2981, %2846
  %2985 = fmul fast float %2979, %2979
  %2986 = fsub fast float 1.000000e+00, %2985
  %2987 = fmul fast float %2976, 0x40005F8BE0000000
  %2988 = fsub fast float 0x400C5BF8A0000000, %2987
  %2989 = fdiv fast float %2977, %2988
  %2990 = fmul fast float %2989, 0x3FEE31C3C0000000
  %2991 = fmul fast float %2990, %2986
  %2992 = fmul fast float %2976, 0x3FDACB7480000000
  %2993 = fadd fast float %2992, 0xBFD7347680000000
  %2994 = fmul fast float %2993, %2989
  %2995 = fmul fast float %2994, %2986
  br label %2996

; <label>:2996                                    ; preds = %2967, %2940
  %2997 = phi float [ %2982, %2967 ], [ 0.000000e+00, %2940 ]
  %2998 = phi float [ %2983, %2967 ], [ 0.000000e+00, %2940 ]
  %2999 = phi float [ %2984, %2967 ], [ 0.000000e+00, %2940 ]
  %3000 = phi float [ %2991, %2967 ], [ 0.000000e+00, %2940 ]
  %3001 = phi float [ %2995, %2967 ], [ 0.000000e+00, %2940 ]
  %3002 = call float @dx.op.dot3.f32(i32 55, float %2997, float %2998, float %2999, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %3003 = fmul fast float %3002, %3002
  %3004 = fmul fast float %3003, 0x3FEE471020000000
  %3005 = fadd fast float %3004, 0xBFD42F6020000000
  %3006 = fmul fast float %2962, 0x3FD20DD760000000
  %3007 = fmul fast float %3005, %3001
  %3008 = fmul fast float %3000, 0x3FDF454380000000
  %3009 = fmul fast float %3008, %3002
  %3010 = fadd fast float %3009, %3006
  %3011 = fadd fast float %3010, %3007
  %3012 = call float @dx.op.dot3.f32(i32 55, float %2997, float %2998, float %2999, float %1850, float %1851, float %1852)  ; Dot3(ax,ay,az,bx,by,bz)
  %3013 = fmul fast float %3012, 0x3FDF454380000000
  %3014 = fmul fast float %3012, %3012
  %3015 = fmul fast float %3014, 0x3FEE471020000000
  %3016 = fadd fast float %3015, 0xBFD42F6020000000
  %3017 = call float @dx.op.dot3.f32(i32 55, float %2962, float %3000, float %3001, float 0x3FD20DD760000000, float %3013, float %3016)  ; Dot3(ax,ay,az,bx,by,bz)
  %3018 = call float @dx.op.binary.f32(i32 35, float %2899, float 0.000000e+00)  ; FMax(a,b)
  %3019 = call float @dx.op.binary.f32(i32 35, float %2955, float 0.000000e+00)  ; FMax(a,b)
  %3020 = call float @dx.op.binary.f32(i32 35, float %3011, float 0.000000e+00)  ; FMax(a,b)
  %3021 = call float @dx.op.binary.f32(i32 35, float %2905, float 0.000000e+00)  ; FMax(a,b)
  %3022 = call float @dx.op.binary.f32(i32 35, float %2961, float 0.000000e+00)  ; FMax(a,b)
  %3023 = call float @dx.op.binary.f32(i32 35, float %3017, float 0.000000e+00)  ; FMax(a,b)
  %3024 = fsub fast float %2220, %3018
  %3025 = fsub fast float %2221, %3019
  %3026 = fsub fast float %2222, %3020
  %3027 = fmul fast float %3024, %1901
  %3028 = fmul fast float %3025, %1901
  %3029 = fmul fast float %3026, %1901
  %3030 = fadd fast float %3027, %3018
  %3031 = fadd fast float %3028, %3019
  %3032 = fadd fast float %3029, %3020
  %3033 = fsub fast float %2217, %3021
  %3034 = fsub fast float %2218, %3022
  %3035 = fsub fast float %2219, %3023
  %3036 = fmul fast float %3033, %1901
  %3037 = fmul fast float %3034, %1901
  %3038 = fmul fast float %3035, %1901
  %3039 = fadd fast float %3036, %3021
  %3040 = fadd fast float %3037, %3022
  %3041 = fadd fast float %3038, %3023
  br label %3042

; <label>:3042                                    ; preds = %2996, %2216
  %3043 = phi float [ %3039, %2996 ], [ %2217, %2216 ]
  %3044 = phi float [ %3040, %2996 ], [ %2218, %2216 ]
  %3045 = phi float [ %3041, %2996 ], [ %2219, %2216 ]
  %3046 = phi float [ %3030, %2996 ], [ %2220, %2216 ]
  %3047 = phi float [ %3031, %2996 ], [ %2221, %2216 ]
  %3048 = phi float [ %3032, %2996 ], [ %2222, %2216 ]
  %3049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3050 = extractvalue %dx.types.CBufRet.f32 %3049, 0
  %3051 = call float @dx.op.binary.f32(i32 36, float %1834, float %3050)  ; FMin(a,b)
  %3052 = fsub fast float 1.000000e+00, %1853
  %3053 = fmul fast float %3051, %3052
  %3054 = fsub fast float 1.000000e+00, %3053
  %3055 = bitcast float %3054 to i32
  %3056 = sub nsw i32 2129859010, %3055
  %3057 = bitcast i32 %3056 to float
  %3058 = call float @dx.op.binary.f32(i32 36, float %1835, float %3050)  ; FMin(a,b)
  %3059 = fmul fast float %3058, %3052
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = bitcast float %3060 to i32
  %3062 = sub nsw i32 2129859010, %3061
  %3063 = bitcast i32 %3062 to float
  %3064 = call float @dx.op.binary.f32(i32 36, float %1836, float %3050)  ; FMin(a,b)
  %3065 = fmul fast float %3064, %3052
  %3066 = fsub fast float 1.000000e+00, %3065
  %3067 = bitcast float %3066 to i32
  %3068 = sub nsw i32 2129859010, %3067
  %3069 = bitcast i32 %3068 to float
  %3070 = fmul fast float %3046, %1853
  %3071 = fmul fast float %3070, %3057
  %3072 = fmul fast float %3047, %1853
  %3073 = fmul fast float %3072, %3063
  %3074 = fmul fast float %3048, %1853
  %3075 = fmul fast float %3074, %3069
  %3076 = call float @dx.op.binary.f32(i32 36, float %1831, float %3050)  ; FMin(a,b)
  %3077 = fmul fast float %3076, %3052
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = bitcast float %3078 to i32
  %3080 = sub nsw i32 2129859010, %3079
  %3081 = bitcast i32 %3080 to float
  %3082 = call float @dx.op.binary.f32(i32 36, float %1832, float %3050)  ; FMin(a,b)
  %3083 = fmul fast float %3082, %3052
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = bitcast float %3084 to i32
  %3086 = sub nsw i32 2129859010, %3085
  %3087 = bitcast i32 %3086 to float
  %3088 = call float @dx.op.binary.f32(i32 36, float %1842, float %3050)  ; FMin(a,b)
  %3089 = fmul fast float %3088, %3052
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = bitcast float %3090 to i32
  %3092 = sub nsw i32 2129859010, %3091
  %3093 = bitcast i32 %3092 to float
  %3094 = fmul fast float %3043, %1853
  %3095 = fmul fast float %3094, %3081
  %3096 = fmul fast float %3044, %1853
  %3097 = fmul fast float %3096, %3087
  %3098 = fmul fast float %3045, %1853
  %3099 = fmul fast float %3098, %3093
  %3100 = call float @dx.op.dot3.f32(i32 55, float %3071, float %3073, float %3075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3101 = select i1 %176, float 0.000000e+00, float %3071
  %3102 = select i1 %176, float %3100, float %3073
  %3103 = select i1 %176, float 0.000000e+00, float %3075
  %3104 = call float @dx.op.dot3.f32(i32 55, float %3095, float %3097, float %3099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3105 = select i1 %176, float 0.000000e+00, float %3095
  %3106 = select i1 %176, float %3104, float %3097
  %3107 = select i1 %176, float 0.000000e+00, float %3099
  %3108 = fmul fast float %1844, 9.843750e-01
  %3109 = fmul fast float %1840, 9.843750e-01
  %3110 = fadd fast float %3108, 7.812500e-03
  %3111 = fadd fast float %3109, 7.812500e-03
  %3112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3110, float %3111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3113 = extractvalue %dx.types.ResRet.f32 %3112, 2
  %3114 = extractvalue %dx.types.ResRet.f32 %3112, 3
  %3115 = fmul fast float %3113, %1831
  %3116 = fmul fast float %3113, %1832
  %3117 = fmul fast float %3113, %1842
  %3118 = fadd fast float %3115, %3114
  %3119 = fadd fast float %3116, %3114
  %3120 = fadd fast float %3117, %3114
  %3121 = fcmp fast ogt float %1208, 0.000000e+00
  br i1 %3121, label %3122, label %3148

; <label>:3122                                    ; preds = %3042
  %3123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1208, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3127 = fadd fast float %3124, -5.000000e-01
  %3128 = fadd fast float %3125, -5.000000e-01
  %3129 = fadd fast float %3126, -5.000000e-01
  %3130 = fsub fast float 1.000000e+00, %1831
  %3131 = fsub fast float 1.000000e+00, %1832
  %3132 = fsub fast float 1.000000e+00, %1842
  %3133 = fmul fast float %1831, 4.000000e+00
  %3134 = fmul fast float %3133, %3130
  %3135 = fmul fast float %3134, %3127
  %3136 = fmul fast float %1832, 4.000000e+00
  %3137 = fmul fast float %3136, %3131
  %3138 = fmul fast float %3137, %3128
  %3139 = fmul fast float %1842, 4.000000e+00
  %3140 = fmul fast float %3139, %3132
  %3141 = fmul fast float %3140, %3129
  %3142 = fadd fast float %3135, %3118
  %3143 = fadd fast float %3138, %3119
  %3144 = fadd fast float %3141, %3120
  %3145 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3146 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  %3147 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  br label %3148

; <label>:3148                                    ; preds = %3122, %3042
  %3149 = phi float [ %3145, %3122 ], [ %3118, %3042 ]
  %3150 = phi float [ %3146, %3122 ], [ %3119, %3042 ]
  %3151 = phi float [ %3147, %3122 ], [ %3120, %3042 ]
  %3152 = call float @dx.op.binary.f32(i32 35, float %3150, float %3151)  ; FMax(a,b)
  %3153 = call float @dx.op.binary.f32(i32 35, float %3149, float %3152)  ; FMax(a,b)
  %3154 = fsub fast float 1.000000e+00, %3153
  %3155 = fmul fast float %3154, %3101
  %3156 = fmul fast float %3154, %3102
  %3157 = fmul fast float %3154, %3103
  %3158 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1835, float %1836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = fcmp fast ogt float %3158, 0x3E7FF19E20000000
  %3160 = fdiv fast float 1.000000e+00, %3158
  %3161 = select i1 %3159, float %3160, float 0.000000e+00
  %3162 = fmul fast float %3161, %1834
  %3163 = fmul fast float %3161, %1835
  %3164 = fmul fast float %3161, %1836
  %3165 = fadd fast float %3162, -1.000000e+00
  %3166 = fadd fast float %3163, -1.000000e+00
  %3167 = fadd fast float %3164, -1.000000e+00
  %3168 = fmul fast float %3165, 5.000000e-01
  %3169 = fmul fast float %3166, 5.000000e-01
  %3170 = fmul fast float %3167, 5.000000e-01
  %3171 = fadd fast float %3168, 1.000000e+00
  %3172 = fadd fast float %3169, 1.000000e+00
  %3173 = fadd fast float %3170, 1.000000e+00
  %3174 = fmul fast float %3149, %3105
  %3175 = fmul fast float %3150, %3106
  %3176 = fmul fast float %3151, %3107
  %3177 = fsub fast float 1.000000e+00, %1844
  %3178 = bitcast float %3177 to i32
  %3179 = sitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 5.000000e+00
  %3181 = fadd fast float %3180, 0xC1EFBF8940000000
  %3182 = fptosi float %3181 to i32
  %3183 = bitcast i32 %3182 to float
  %3184 = fmul fast float %3183, %1207
  %3185 = fmul fast float %3101, %3184
  %3186 = fmul fast float %3185, %3154
  %3187 = fmul fast float %3186, %3171
  %3188 = fmul fast float %3102, %3184
  %3189 = fmul fast float %3188, %3154
  %3190 = fmul fast float %3189, %3172
  %3191 = fmul fast float %3103, %3184
  %3192 = fmul fast float %3191, %3154
  %3193 = fmul fast float %3192, %3173
  %3194 = fmul fast float %3155, %1228
  %3195 = fmul fast float %3156, %1228
  %3196 = fmul fast float %3157, %1228
  %3197 = fadd fast float %3174, %1209
  %3198 = fadd fast float %3197, %3187
  %3199 = fmul fast float %3198, %1228
  %3200 = fadd fast float %3175, %1210
  %3201 = fadd fast float %3200, %3190
  %3202 = fmul fast float %3201, %1228
  %3203 = fadd fast float %3176, %1211
  %3204 = fadd fast float %3203, %3193
  %3205 = fmul fast float %3204, %1228
  %3206 = bitcast i32 %1856 to float
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 3
  %3209 = fcmp fast oeq float %3208, 0.000000e+00
  br i1 %3209, label %3437, label %3210

; <label>:3210                                    ; preds = %3148
  %3211 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3212 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3213 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.CBufRet.f32 %3214, 1
  %3217 = extractvalue %dx.types.CBufRet.f32 %3214, 2
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3221 = call float @dx.op.dot3.f32(i32 55, float %3215, float %3216, float %3217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3222 = select i1 %176, float %3219, float %3215
  %3223 = select i1 %176, float %3221, float %3216
  %3224 = select i1 %176, float %3220, float %3217
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 1
  %3227 = fcmp fast une float %3226, 0.000000e+00
  br i1 %3227, label %3228, label %3245

; <label>:3228                                    ; preds = %3210
  %3229 = fptoui float %58 to i32
  %3230 = fptoui float %59 to i32
  %3231 = lshr i32 %3229, 4
  %3232 = lshr i32 %3230, 4
  %3233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.f32 %3233, 0
  %3235 = fptoui float %3234 to i32
  %3236 = add i32 %3235, 15
  %3237 = lshr i32 %3236, 4
  %3238 = mul i32 %3237, %3232
  %3239 = add i32 %3238, %3231
  %3240 = shl i32 %3239, 3
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, -268435456
  %3244 = icmp eq i32 %3243, -1342177280
  br i1 %3244, label %3255, label %3245

; <label>:3245                                    ; preds = %3228, %3210
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 2
  %3248 = extractvalue %dx.types.CBufRet.f32 %3246, 3
  %3249 = fmul fast float %3247, %58
  %3250 = fmul fast float %3248, %59
  %3251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3249, float %3250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3252 = extractvalue %dx.types.ResRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.ResRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.ResRet.f32 %3251, 2
  br label %3255

; <label>:3255                                    ; preds = %3245, %3228
  %3256 = phi float [ %3252, %3245 ], [ 0.000000e+00, %3228 ]
  %3257 = phi float [ %3253, %3245 ], [ 0.000000e+00, %3228 ]
  %3258 = phi float [ %3254, %3245 ], [ 0.000000e+00, %3228 ]
  %3259 = call float @dx.op.binary.f32(i32 36, float %3257, float %3258)  ; FMin(a,b)
  %3260 = call float @dx.op.binary.f32(i32 36, float %3256, float %3259)  ; FMin(a,b)
  %3261 = fcmp fast ogt float %3260, 0.000000e+00
  br i1 %3261, label %3262, label %3437, !dx.controlflow.hints !79

; <label>:3262                                    ; preds = %3255
  %3263 = fmul fast float %3256, %3222
  %3264 = fmul fast float %3257, %3223
  %3265 = fmul fast float %3258, %3224
  %3266 = fsub fast float %3211, %1830
  %3267 = fsub fast float %3212, %1829
  %3268 = fsub fast float %3213, %1828
  %3269 = call float @dx.op.dot3.f32(i32 55, float %3266, float %3267, float %3268, float %3266, float %3267, float %3268)  ; Dot3(ax,ay,az,bx,by,bz)
  %3270 = call float @dx.op.unary.f32(i32 25, float %3269)  ; Rsqrt(value)
  %3271 = fmul fast float %3270, %3266
  %3272 = fmul fast float %3270, %3267
  %3273 = fmul fast float %3270, %3268
  %3274 = call float @dx.op.dot3.f32(i32 55, float %3211, float %3212, float %3213, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1826, float %1825, float %3271, float %3272, float %3273)  ; Dot3(ax,ay,az,bx,by,bz)
  %3276 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3277 = fmul fast float %3276, %3276
  %3278 = fmul fast float %3277, %3206
  %3279 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3280 = fmul fast float %3279, %3276
  %3281 = call float @dx.op.dot3.f32(i32 55, float %1837, float %1838, float %1839, float %3271, float %3272, float %3273)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = fmul fast float %3281, %3281
  %3283 = call float @dx.op.unary.f32(i32 6, float %3274)  ; FAbs(value)
  %3284 = fsub fast float 1.000000e+00, %1840
  %3285 = call float @dx.op.binary.f32(i32 35, float %3284, float 0x3F847AE140000000)  ; FMax(a,b)
  %3286 = fmul fast float %3285, %3285
  %3287 = fmul fast float %3286, %3286
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = fmul fast float %1844, %1844
  %3290 = fmul fast float %3289, %3288
  %3291 = fadd fast float %3290, %3287
  %3292 = bitcast float %3291 to i32
  %3293 = ashr i32 %3292, 1
  %3294 = add nsw i32 %3293, 532487669
  %3295 = bitcast i32 %3294 to float
  %3296 = fadd fast float %3295, %1844
  %3297 = fmul fast float %3287, %3282
  %3298 = fsub fast float 1.000000e+00, %3282
  %3299 = fadd fast float %3298, %3297
  %3300 = fmul fast float %3283, %3283
  %3301 = fmul fast float %3300, %3288
  %3302 = fadd fast float %3301, %3287
  %3303 = bitcast float %3302 to i32
  %3304 = ashr i32 %3303, 1
  %3305 = add nsw i32 %3304, 532487669
  %3306 = bitcast i32 %3305 to float
  %3307 = fadd fast float %3306, %3283
  %3308 = fmul fast float %3299, %3299
  %3309 = fmul fast float %3308, %3296
  %3310 = fmul fast float %3309, %3307
  %3311 = fdiv fast float 0x3FF0A00000000000, %3310
  %3312 = fmul fast float %3311, %3287
  %3313 = call float @dx.op.unary.f32(i32 6, float %3275)  ; FAbs(value)
  %3314 = fsub fast float 1.000000e+00, %3313
  %3315 = bitcast float %3314 to i32
  %3316 = sitofp i32 %3315 to float
  %3317 = fmul fast float %3316, 5.000000e+00
  %3318 = fadd fast float %3317, 0xC1EFBF8940000000
  %3319 = fptosi float %3318 to i32
  %3320 = bitcast i32 %3319 to float
  %3321 = fsub fast float 1.000000e+00, %1831
  %3322 = fsub fast float 1.000000e+00, %1832
  %3323 = fsub fast float 1.000000e+00, %1842
  %3324 = fmul fast float %3320, %3321
  %3325 = fmul fast float %3320, %3322
  %3326 = fmul fast float %3320, %3323
  %3327 = fadd fast float %3324, %1831
  %3328 = fadd fast float %3325, %1832
  %3329 = fadd fast float %3326, %1842
  br i1 %3121, label %3330, label %3353

; <label>:3330                                    ; preds = %3262
  %3331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1208, float %3313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = fadd fast float %3332, -5.000000e-01
  %3336 = fadd fast float %3333, -5.000000e-01
  %3337 = fadd fast float %3334, -5.000000e-01
  %3338 = fmul fast float %1831, 4.000000e+00
  %3339 = fmul fast float %3338, %3321
  %3340 = fmul fast float %3339, %3335
  %3341 = fmul fast float %1832, 4.000000e+00
  %3342 = fmul fast float %3341, %3322
  %3343 = fmul fast float %3342, %3336
  %3344 = fmul fast float %1842, 4.000000e+00
  %3345 = fmul fast float %3344, %3323
  %3346 = fmul fast float %3345, %3337
  %3347 = fadd fast float %3340, %3327
  %3348 = fadd fast float %3343, %3328
  %3349 = fadd fast float %3346, %3329
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3352 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  br label %3353

; <label>:3353                                    ; preds = %3330, %3262
  %3354 = phi float [ %3350, %3330 ], [ %3327, %3262 ]
  %3355 = phi float [ %3351, %3330 ], [ %3328, %3262 ]
  %3356 = phi float [ %3352, %3330 ], [ %3329, %3262 ]
  %3357 = fmul fast float %3274, 9.843750e-01
  %3358 = fadd fast float %3357, 7.812500e-03
  %3359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3358, float %3111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3360 = extractvalue %dx.types.ResRet.f32 %3359, 2
  %3361 = extractvalue %dx.types.ResRet.f32 %3359, 3
  %3362 = fmul fast float %3360, %1831
  %3363 = fmul fast float %3360, %1832
  %3364 = fmul fast float %3360, %1842
  %3365 = fadd fast float %3362, %3361
  %3366 = fadd fast float %3363, %3361
  %3367 = fadd fast float %3364, %3361
  br i1 %3121, label %3368, label %3391

; <label>:3368                                    ; preds = %3353
  %3369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1208, float %3274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = fadd fast float %3370, -5.000000e-01
  %3374 = fadd fast float %3371, -5.000000e-01
  %3375 = fadd fast float %3372, -5.000000e-01
  %3376 = fmul fast float %1831, 4.000000e+00
  %3377 = fmul fast float %3376, %3321
  %3378 = fmul fast float %3377, %3373
  %3379 = fmul fast float %1832, 4.000000e+00
  %3380 = fmul fast float %3379, %3322
  %3381 = fmul fast float %3380, %3374
  %3382 = fmul fast float %1842, 4.000000e+00
  %3383 = fmul fast float %3382, %3323
  %3384 = fmul fast float %3383, %3375
  %3385 = fadd fast float %3378, %3365
  %3386 = fadd fast float %3381, %3366
  %3387 = fadd fast float %3384, %3367
  %3388 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3389 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3390 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  br label %3391

; <label>:3391                                    ; preds = %3368, %3353
  %3392 = phi float [ %3388, %3368 ], [ %3365, %3353 ]
  %3393 = phi float [ %3389, %3368 ], [ %3366, %3353 ]
  %3394 = phi float [ %3390, %3368 ], [ %3367, %3353 ]
  %3395 = call float @dx.op.binary.f32(i32 35, float %3393, float %3394)  ; FMax(a,b)
  %3396 = call float @dx.op.binary.f32(i32 35, float %3392, float %3395)  ; FMax(a,b)
  %3397 = fsub fast float 1.000000e+00, %3396
  %3398 = fmul fast float %3354, %3312
  %3399 = fmul fast float %3355, %3312
  %3400 = fmul fast float %3356, %3312
  %3401 = fsub fast float 1.000000e+00, %3275
  %3402 = bitcast float %3401 to i32
  %3403 = sitofp i32 %3402 to float
  %3404 = fmul fast float %3403, 5.000000e+00
  %3405 = fadd fast float %3404, 0xC1EFBF8940000000
  %3406 = fptosi float %3405 to i32
  %3407 = bitcast i32 %3406 to float
  %3408 = fmul fast float %3407, %1207
  %3409 = fmul fast float %3397, %3408
  %3410 = fmul fast float %3409, %3171
  %3411 = fmul fast float %3409, %3172
  %3412 = fmul fast float %3409, %3173
  %3413 = fadd fast float %3410, %3398
  %3414 = fadd fast float %3411, %3399
  %3415 = fadd fast float %3412, %3400
  %3416 = fmul fast float %3280, %3263
  %3417 = fmul fast float %3416, %3397
  %3418 = fmul fast float %3280, %3264
  %3419 = fmul fast float %3418, %3397
  %3420 = fmul fast float %3280, %3265
  %3421 = fmul fast float %3420, %3397
  %3422 = fmul fast float %3416, %3413
  %3423 = fmul fast float %3418, %3414
  %3424 = fmul fast float %3420, %3415
  %3425 = fadd fast float %3417, %3155
  %3426 = fmul fast float %3425, %1228
  %3427 = fadd fast float %3419, %3156
  %3428 = fmul fast float %3427, %1228
  %3429 = fadd fast float %3421, %3157
  %3430 = fmul fast float %3429, %1228
  %3431 = fadd fast float %3422, %3198
  %3432 = fmul fast float %3431, %1228
  %3433 = fadd fast float %3423, %3201
  %3434 = fmul fast float %3433, %1228
  %3435 = fadd fast float %3424, %3204
  %3436 = fmul fast float %3435, %1228
  br label %3437

; <label>:3437                                    ; preds = %3391, %3255, %3148
  %3438 = phi float [ %3199, %3148 ], [ %3199, %3255 ], [ %3432, %3391 ]
  %3439 = phi float [ %3202, %3148 ], [ %3202, %3255 ], [ %3434, %3391 ]
  %3440 = phi float [ %3205, %3148 ], [ %3205, %3255 ], [ %3436, %3391 ]
  %3441 = phi float [ %3194, %3148 ], [ %3194, %3255 ], [ %3426, %3391 ]
  %3442 = phi float [ %3195, %3148 ], [ %3195, %3255 ], [ %3428, %3391 ]
  %3443 = phi float [ %3196, %3148 ], [ %3196, %3255 ], [ %3430, %3391 ]
  %3444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3445 = extractvalue %dx.types.CBufRet.i32 %3444, 0
  %3446 = icmp eq i32 %3445, 0
  br i1 %3446, label %3881, label %3447

; <label>:3447                                    ; preds = %3437
  %3448 = fptoui float %58 to i32
  %3449 = fptoui float %59 to i32
  %3450 = lshr i32 %3448, 4
  %3451 = lshr i32 %3449, 4
  %3452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.i32 %3452, 0
  %3454 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3451, i32 %3453, i32 %3450)  ; UMad(a,b,c)
  %3455 = add nsw i32 %3445, -1
  %3456 = call i32 @dx.op.binary.i32(i32 37, i32 %3455, i32 0)  ; IMax(a,b)
  %3457 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3458 = fptoui float %3457 to i32
  %3459 = lshr i32 %3458, 5
  %3460 = call i32 @dx.op.binary.i32(i32 40, i32 %3459, i32 8191)  ; UMin(a,b)
  %3461 = shl i32 %3460, 2
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = lshr i32 %3463, 16
  %3465 = and i32 %3463, 65535
  %3466 = lshr i32 %3463, 21
  %3467 = lshr i32 %3465, 5
  %3468 = call i32 @dx.op.binary.i32(i32 40, i32 %3467, i32 %3456)  ; UMin(a,b)
  %3469 = icmp ugt i32 %3466, %3468
  br i1 %3469, label %3881, label %3470

; <label>:3470                                    ; preds = %3447
  br label %3471

; <label>:3471                                    ; preds = %3871, %3470
  %3472 = phi i32 [ %3878, %3871 ], [ %3466, %3470 ]
  %3473 = phi float [ %3872, %3871 ], [ %3438, %3470 ]
  %3474 = phi float [ %3873, %3871 ], [ %3439, %3470 ]
  %3475 = phi float [ %3874, %3871 ], [ %3440, %3470 ]
  %3476 = phi float [ %3875, %3871 ], [ %3441, %3470 ]
  %3477 = phi float [ %3876, %3871 ], [ %3442, %3470 ]
  %3478 = phi float [ %3877, %3871 ], [ %3443, %3470 ]
  %3479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.i32 %3479, 0
  %3481 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3454, i32 %3480, i32 %3472)  ; UMad(a,b,c)
  %3482 = shl i32 %3481, 2
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = shl i32 %3472, 5
  %3486 = sub nsw i32 %3464, %3485
  %3487 = call i32 @dx.op.binary.i32(i32 37, i32 %3486, i32 0)  ; IMax(a,b)
  %3488 = call i32 @dx.op.binary.i32(i32 38, i32 %3487, i32 31)  ; IMin(a,b)
  %3489 = sub nsw i32 1, %3464
  %3490 = add nsw i32 %3489, %3465
  %3491 = call i32 @dx.op.binary.i32(i32 37, i32 %3490, i32 0)  ; IMax(a,b)
  %3492 = call i32 @dx.op.binary.i32(i32 38, i32 %3491, i32 32)  ; IMin(a,b)
  %3493 = and i32 %3492, 31
  %3494 = shl i32 -1, %3493
  %3495 = xor i32 %3494, -1
  %3496 = and i32 %3488, 31
  %3497 = shl i32 %3495, %3496
  %3498 = icmp eq i32 %3492, 32
  %3499 = select i1 %3498, i32 -1, i32 %3497
  %3500 = and i32 %3499, %3484
  %3501 = icmp eq i32 %3500, 0
  br i1 %3501, label %3871, label %3502

; <label>:3502                                    ; preds = %3471
  br label %3503

; <label>:3503                                    ; preds = %3583, %3502
  %3504 = phi i32 [ %3515, %3583 ], [ %3500, %3502 ]
  %3505 = phi float [ %3584, %3583 ], [ %3473, %3502 ]
  %3506 = phi float [ %3585, %3583 ], [ %3474, %3502 ]
  %3507 = phi float [ %3586, %3583 ], [ %3475, %3502 ]
  %3508 = phi float [ %3587, %3583 ], [ %3476, %3502 ]
  %3509 = phi float [ %3588, %3583 ], [ %3477, %3502 ]
  %3510 = phi float [ %3589, %3583 ], [ %3478, %3502 ]
  %3511 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3504)  ; FirstbitLo(value)
  %3512 = add i32 %3511, %3485
  %3513 = and i32 %3511, 31
  %3514 = shl i32 1, %3513
  %3515 = xor i32 %3514, %3504
  %3516 = mul i32 %3512, 112
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = or i32 %3516, 12
  %3522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = add i32 %3516, 44
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = add i32 %3516, 48
  %3528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.f32 %3528, 0
  %3530 = extractvalue %dx.types.ResRet.f32 %3528, 1
  %3531 = extractvalue %dx.types.ResRet.f32 %3528, 2
  %3532 = add i32 %3516, 80
  %3533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 1
  %3535 = extractvalue %dx.types.ResRet.f32 %3533, 2
  %3536 = call float @dx.op.dot3.f32(i32 55, float %3518, float %3519, float %3520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3537 = select i1 %176, float %3534, float %3518
  %3538 = select i1 %176, float %3536, float %3519
  %3539 = select i1 %176, float %3535, float %3520
  %3540 = fsub fast float %3529, %105
  %3541 = fsub fast float %3530, %106
  %3542 = fsub fast float %3531, %107
  %3543 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3541, float %3542, float %3540, float %3541, float %3542)  ; Dot3(ax,ay,az,bx,by,bz)
  %3544 = call float @dx.op.unary.f32(i32 24, float %3543)  ; Sqrt(value)
  %3545 = fdiv fast float 1.000000e+00, %3544
  %3546 = fmul fast float %3545, %3540
  %3547 = fmul fast float %3545, %3541
  %3548 = fmul fast float %3545, %3542
  %3549 = fadd fast float %3544, %3523
  %3550 = fdiv fast float 1.000000e+00, %3549
  %3551 = fmul float %3526, %3550
  %3552 = fmul float %3551, %3551
  %3553 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3554 = and i32 %3514, %3500
  %3555 = icmp eq i32 %3554, 0
  br i1 %3555, label %3578, label %3556, !dx.controlflow.hints !80

; <label>:3556                                    ; preds = %3503
  %3557 = lshr i32 %3448, 5
  %3558 = lshr i32 %3449, 5
  %3559 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3557, i32 %3558, i32 %3512, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = and i32 %3560, 3
  %3562 = icmp eq i32 %3561, 0
  %3563 = select i1 %3562, float 1.000000e+00, float 0.000000e+00
  %3564 = icmp eq i32 %3561, 3
  br i1 %3564, label %3565, label %3578

; <label>:3565                                    ; preds = %3556
  %3566 = lshr i32 %3560, 10
  %3567 = and i32 %3566, 8160
  %3568 = and i32 %3449, 31
  %3569 = or i32 %3567, %3568
  %3570 = lshr i32 %3560, 1
  %3571 = and i32 %3570, 16352
  %3572 = and i32 %3448, 31
  %3573 = or i32 %3571, %3572
  %3574 = lshr i32 %3560, 23
  %3575 = and i32 %3574, 255
  %3576 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3573, i32 %3569, i32 %3575, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  br label %3578

; <label>:3578                                    ; preds = %3565, %3556, %3503
  %3579 = phi float [ %3577, %3565 ], [ %3563, %3556 ], [ 0.000000e+00, %3503 ]
  %3580 = call float @dx.op.binary.f32(i32 36, float %3579, float %3579)  ; FMin(a,b)
  %3581 = call float @dx.op.binary.f32(i32 36, float %3579, float %3580)  ; FMin(a,b)
  %3582 = fcmp fast ogt float %3581, 0.000000e+00
  br i1 %3582, label %3591, label %3583, !dx.controlflow.hints !81

; <label>:3583                                    ; preds = %3827, %3578
  %3584 = phi float [ %3505, %3578 ], [ %3867, %3827 ]
  %3585 = phi float [ %3506, %3578 ], [ %3868, %3827 ]
  %3586 = phi float [ %3507, %3578 ], [ %3869, %3827 ]
  %3587 = phi float [ %3508, %3578 ], [ %3861, %3827 ]
  %3588 = phi float [ %3509, %3578 ], [ %3862, %3827 ]
  %3589 = phi float [ %3510, %3578 ], [ %3863, %3827 ]
  %3590 = icmp eq i32 %3504, %3514
  br i1 %3590, label %3870, label %3503

; <label>:3591                                    ; preds = %3578
  %3592 = fmul fast float %3579, %3537
  %3593 = fmul fast float %3579, %3538
  %3594 = fmul fast float %3579, %3539
  %3595 = fsub fast float %3531, %1630
  %3596 = fcmp fast ogt float %3595, 0.000000e+00
  %3597 = fsub fast float %107, %1630
  %3598 = fcmp fast ogt float %3597, 0.000000e+00
  %3599 = xor i1 %3598, %3596
  %3600 = fsub fast float %1630, %3531
  %3601 = fmul fast float %3600, 2.000000e+00
  %3602 = fadd fast float %3601, %3531
  %3603 = select i1 %3599, float %3531, float %3602
  %3604 = fsub fast float %3603, %107
  %3605 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3541, float %3604, float %3540, float %3541, float %3604)  ; Dot3(ax,ay,az,bx,by,bz)
  %3606 = call float @dx.op.unary.f32(i32 25, float %3605)  ; Rsqrt(value)
  %3607 = fmul fast float %3606, %3540
  %3608 = fmul fast float %3606, %3541
  %3609 = fmul fast float %3606, %3604
  %3610 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1638)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3607, float %3608, float %3609)  ; Dot3(ax,ay,az,bx,by,bz)
  %3612 = fdiv fast float 1.000000e+00, %3611
  %3613 = fmul fast float %3612, %3610
  %3614 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3597, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = fcmp fast ogt float %3614, 0.000000e+00
  %3616 = fcmp fast olt float %3614, 0.000000e+00
  %3617 = zext i1 %3615 to i32
  %3618 = zext i1 %3616 to i32
  %3619 = sub nsw i32 %3617, %3618
  %3620 = sitofp i32 %3619 to float
  %3621 = fsub fast float %3603, %1630
  %3622 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3541, float %3621, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3623 = fcmp fast ogt float %3622, 0.000000e+00
  %3624 = fcmp fast olt float %3622, 0.000000e+00
  %3625 = zext i1 %3623 to i32
  %3626 = zext i1 %3624 to i32
  %3627 = sub nsw i32 %3625, %3626
  %3628 = sitofp i32 %3627 to float
  %3629 = fcmp fast une float %3620, %3628
  br i1 %3629, label %3630, label %3640

; <label>:3630                                    ; preds = %3591
  %3631 = fmul fast float %3613, %3609
  %3632 = fmul fast float %3613, %3608
  %3633 = fmul fast float %3613, %3607
  %3634 = fmul fast float %3633, %3633
  %3635 = fmul fast float %3632, %3632
  %3636 = fadd fast float %3634, %3635
  %3637 = fmul fast float %3631, %3631
  %3638 = fadd fast float %3636, %3637
  %3639 = call float @dx.op.unary.f32(i32 24, float %3638)  ; Sqrt(value)
  br label %3652

; <label>:3640                                    ; preds = %3591
  %3641 = icmp slt i32 %3619, 0
  br i1 %3641, label %3642, label %3652

; <label>:3642                                    ; preds = %3640
  %3643 = fsub fast float %105, %3529
  %3644 = fsub fast float %106, %3530
  %3645 = fsub fast float %107, %3603
  %3646 = fmul fast float %3643, %3643
  %3647 = fmul fast float %3644, %3644
  %3648 = fadd fast float %3646, %3647
  %3649 = fmul fast float %3645, %3645
  %3650 = fadd fast float %3648, %3649
  %3651 = call float @dx.op.unary.f32(i32 24, float %3650)  ; Sqrt(value)
  br label %3652

; <label>:3652                                    ; preds = %3642, %3640, %3630
  %3653 = phi float [ %3639, %3630 ], [ %3651, %3642 ], [ 0.000000e+00, %3640 ]
  %3654 = and i1 %3598, %3596
  %3655 = fsub fast float -0.000000e+00, %3653
  %3656 = select i1 %3654, float -0.000000e+00, float %3655
  %3657 = fmul fast float %1631, 0x3FF7154760000000
  %3658 = fmul fast float %3657, %3656
  %3659 = fmul fast float %1632, 0x3FF7154760000000
  %3660 = fmul fast float %3659, %3656
  %3661 = fmul fast float %1633, 0x3FF7154760000000
  %3662 = fmul fast float %3661, %3656
  %3663 = call float @dx.op.unary.f32(i32 21, float %3658)  ; Exp(value)
  %3664 = call float @dx.op.unary.f32(i32 21, float %3660)  ; Exp(value)
  %3665 = call float @dx.op.unary.f32(i32 21, float %3662)  ; Exp(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3668 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3669 = fmul fast float %3592, %3666
  %3670 = fmul fast float %3593, %3667
  %3671 = fmul fast float %3594, %3668
  %3672 = fsub fast float %3546, %1830
  %3673 = fsub fast float %3547, %1829
  %3674 = fsub fast float %3548, %1828
  %3675 = call float @dx.op.dot3.f32(i32 55, float %3672, float %3673, float %3674, float %3672, float %3673, float %3674)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = call float @dx.op.unary.f32(i32 25, float %3675)  ; Rsqrt(value)
  %3677 = fmul fast float %3676, %3672
  %3678 = fmul fast float %3676, %3673
  %3679 = fmul fast float %3676, %3674
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %1837, float %1838, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1826, float %1825, float %3677, float %3678, float %3679)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3683 = fmul fast float %3682, %3553
  %3684 = fmul fast float %3682, %3682
  %3685 = fmul fast float %3684, %3206
  %3686 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3687 = fmul fast float %3683, %3686
  %3688 = bitcast float %3543 to i32
  %3689 = ashr i32 %3688, 1
  %3690 = sub nsw i32 1597463007, %3689
  %3691 = bitcast i32 %3690 to float
  %3692 = fmul fast float %3691, %3540
  %3693 = fmul fast float %3691, %3541
  %3694 = fmul fast float %3691, %3542
  %3695 = fsub fast float %3692, %1830
  %3696 = fsub fast float %3693, %1829
  %3697 = fsub fast float %3694, %1828
  %3698 = call float @dx.op.dot3.f32(i32 55, float %3695, float %3696, float %3697, float %3695, float %3696, float %3697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3699 = call float @dx.op.unary.f32(i32 25, float %3698)  ; Rsqrt(value)
  %3700 = fmul fast float %3695, %3699
  %3701 = fmul fast float %3696, %3699
  %3702 = fmul fast float %3697, %3699
  %3703 = call float @dx.op.dot3.f32(i32 55, float %1837, float %1838, float %1839, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = fmul fast float %3703, %3703
  %3705 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3706 = fsub fast float 1.000000e+00, %1840
  %3707 = call float @dx.op.binary.f32(i32 35, float %3706, float 0x3F847AE140000000)  ; FMax(a,b)
  %3708 = fmul fast float %3707, %3707
  %3709 = fmul fast float %3708, %3708
  %3710 = fsub fast float 1.000000e+00, %3709
  %3711 = fmul fast float %1844, %1844
  %3712 = fmul fast float %3711, %3710
  %3713 = fadd fast float %3712, %3709
  %3714 = bitcast float %3713 to i32
  %3715 = ashr i32 %3714, 1
  %3716 = add nsw i32 %3715, 532487669
  %3717 = bitcast i32 %3716 to float
  %3718 = fadd fast float %3717, %1844
  %3719 = fmul fast float %3709, %3704
  %3720 = fsub fast float 1.000000e+00, %3704
  %3721 = fadd fast float %3720, %3719
  %3722 = fmul fast float %3705, %3705
  %3723 = fmul fast float %3722, %3710
  %3724 = fadd fast float %3723, %3709
  %3725 = bitcast float %3724 to i32
  %3726 = ashr i32 %3725, 1
  %3727 = add nsw i32 %3726, 532487669
  %3728 = bitcast i32 %3727 to float
  %3729 = fadd fast float %3728, %3705
  %3730 = fmul fast float %3721, %3721
  %3731 = fmul fast float %3730, %3718
  %3732 = fmul fast float %3731, %3729
  %3733 = fdiv fast float 1.000000e+00, %3732
  %3734 = bitcast float %3709 to i32
  %3735 = sitofp i32 %3734 to float
  %3736 = fmul fast float %3735, 0x3FE7F73180000000
  %3737 = fadd fast float %3736, 0x41AFE27C40000000
  %3738 = fptosi float %3737 to i32
  %3739 = bitcast i32 %3738 to float
  %3740 = fmul fast float %3526, 0x3FD80E9D60000000
  %3741 = fmul fast float %3740, %3691
  %3742 = fadd fast float %3739, %3741
  %3743 = bitcast float %3742 to i32
  %3744 = sub nsw i32 2129859010, %3743
  %3745 = bitcast i32 %3744 to float
  %3746 = fmul fast float %3709, %3733
  %3747 = fmul fast float %3746, %3739
  %3748 = fmul fast float %3747, %3745
  %3749 = call float @dx.op.unary.f32(i32 6, float %3681)  ; FAbs(value)
  %3750 = fsub fast float 1.000000e+00, %3749
  %3751 = bitcast float %3750 to i32
  %3752 = sitofp i32 %3751 to float
  %3753 = fmul fast float %3752, 5.000000e+00
  %3754 = fadd fast float %3753, 0xC1EFBF8940000000
  %3755 = fptosi float %3754 to i32
  %3756 = bitcast i32 %3755 to float
  %3757 = fsub fast float 1.000000e+00, %1831
  %3758 = fsub fast float 1.000000e+00, %1832
  %3759 = fsub fast float 1.000000e+00, %1842
  %3760 = fmul fast float %3756, %3757
  %3761 = fmul fast float %3756, %3758
  %3762 = fmul fast float %3756, %3759
  %3763 = fadd fast float %3760, %1831
  %3764 = fadd fast float %3761, %1832
  %3765 = fadd fast float %3762, %1842
  br i1 %3121, label %3766, label %3789

; <label>:3766                                    ; preds = %3652
  %3767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1208, float %3749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = fadd fast float %3768, -5.000000e-01
  %3772 = fadd fast float %3769, -5.000000e-01
  %3773 = fadd fast float %3770, -5.000000e-01
  %3774 = fmul fast float %1831, 4.000000e+00
  %3775 = fmul fast float %3774, %3757
  %3776 = fmul fast float %3775, %3771
  %3777 = fmul fast float %1832, 4.000000e+00
  %3778 = fmul fast float %3777, %3758
  %3779 = fmul fast float %3778, %3772
  %3780 = fmul fast float %1842, 4.000000e+00
  %3781 = fmul fast float %3780, %3759
  %3782 = fmul fast float %3781, %3773
  %3783 = fadd fast float %3776, %3763
  %3784 = fadd fast float %3779, %3764
  %3785 = fadd fast float %3782, %3765
  %3786 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3787 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3788 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  br label %3789

; <label>:3789                                    ; preds = %3766, %3652
  %3790 = phi float [ %3786, %3766 ], [ %3763, %3652 ]
  %3791 = phi float [ %3787, %3766 ], [ %3764, %3652 ]
  %3792 = phi float [ %3788, %3766 ], [ %3765, %3652 ]
  %3793 = fmul fast float %3680, 9.843750e-01
  %3794 = fadd fast float %3793, 7.812500e-03
  %3795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3794, float %3111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3798 = fmul fast float %3796, %1831
  %3799 = fmul fast float %3796, %1832
  %3800 = fmul fast float %3796, %1842
  %3801 = fadd fast float %3798, %3797
  %3802 = fadd fast float %3799, %3797
  %3803 = fadd fast float %3800, %3797
  br i1 %3121, label %3804, label %3827

; <label>:3804                                    ; preds = %3789
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1208, float %3680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = fadd fast float %3806, -5.000000e-01
  %3810 = fadd fast float %3807, -5.000000e-01
  %3811 = fadd fast float %3808, -5.000000e-01
  %3812 = fmul fast float %1831, 4.000000e+00
  %3813 = fmul fast float %3812, %3757
  %3814 = fmul fast float %3813, %3809
  %3815 = fmul fast float %1832, 4.000000e+00
  %3816 = fmul fast float %3815, %3758
  %3817 = fmul fast float %3816, %3810
  %3818 = fmul fast float %1842, 4.000000e+00
  %3819 = fmul fast float %3818, %3759
  %3820 = fmul fast float %3819, %3811
  %3821 = fadd fast float %3814, %3801
  %3822 = fadd fast float %3817, %3802
  %3823 = fadd fast float %3820, %3803
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3826 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  br label %3827

; <label>:3827                                    ; preds = %3804, %3789
  %3828 = phi float [ %3824, %3804 ], [ %3801, %3789 ]
  %3829 = phi float [ %3825, %3804 ], [ %3802, %3789 ]
  %3830 = phi float [ %3826, %3804 ], [ %3803, %3789 ]
  %3831 = call float @dx.op.binary.f32(i32 35, float %3829, float %3830)  ; FMax(a,b)
  %3832 = call float @dx.op.binary.f32(i32 35, float %3828, float %3831)  ; FMax(a,b)
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3790, %3748
  %3835 = fmul fast float %3791, %3748
  %3836 = fmul fast float %3792, %3748
  %3837 = fsub fast float 1.000000e+00, %3681
  %3838 = bitcast float %3837 to i32
  %3839 = sitofp i32 %3838 to float
  %3840 = fmul fast float %3839, 5.000000e+00
  %3841 = fadd fast float %3840, 0xC1EFBF8940000000
  %3842 = fptosi float %3841 to i32
  %3843 = bitcast i32 %3842 to float
  %3844 = fmul fast float %3843, %1207
  %3845 = fmul fast float %3833, %3844
  %3846 = fmul fast float %3845, %3171
  %3847 = fmul fast float %3845, %3172
  %3848 = fmul fast float %3845, %3173
  %3849 = fadd fast float %3846, %3834
  %3850 = fadd fast float %3847, %3835
  %3851 = fadd fast float %3848, %3836
  %3852 = fmul fast float %3669, %1228
  %3853 = fmul fast float %3852, %3687
  %3854 = fmul fast float %3853, %3833
  %3855 = fmul fast float %3670, %1228
  %3856 = fmul fast float %3855, %3687
  %3857 = fmul fast float %3856, %3833
  %3858 = fmul fast float %3671, %1228
  %3859 = fmul fast float %3858, %3687
  %3860 = fmul fast float %3859, %3833
  %3861 = fadd fast float %3854, %3508
  %3862 = fadd fast float %3857, %3509
  %3863 = fadd fast float %3860, %3510
  %3864 = fmul fast float %3853, %3849
  %3865 = fmul fast float %3856, %3850
  %3866 = fmul fast float %3859, %3851
  %3867 = fadd fast float %3864, %3505
  %3868 = fadd fast float %3865, %3506
  %3869 = fadd fast float %3866, %3507
  br label %3583

; <label>:3870                                    ; preds = %3583
  br label %3871

; <label>:3871                                    ; preds = %3870, %3471
  %3872 = phi float [ %3473, %3471 ], [ %3584, %3870 ]
  %3873 = phi float [ %3474, %3471 ], [ %3585, %3870 ]
  %3874 = phi float [ %3475, %3471 ], [ %3586, %3870 ]
  %3875 = phi float [ %3476, %3471 ], [ %3587, %3870 ]
  %3876 = phi float [ %3477, %3471 ], [ %3588, %3870 ]
  %3877 = phi float [ %3478, %3471 ], [ %3589, %3870 ]
  %3878 = add i32 %3472, 1
  %3879 = icmp ugt i32 %3878, %3468
  br i1 %3879, label %3880, label %3471

; <label>:3880                                    ; preds = %3871
  br label %3881

; <label>:3881                                    ; preds = %3880, %3447, %3437
  %3882 = phi float [ %3438, %3437 ], [ %3438, %3447 ], [ %3872, %3880 ]
  %3883 = phi float [ %3439, %3437 ], [ %3439, %3447 ], [ %3873, %3880 ]
  %3884 = phi float [ %3440, %3437 ], [ %3440, %3447 ], [ %3874, %3880 ]
  %3885 = phi float [ %3441, %3437 ], [ %3441, %3447 ], [ %3875, %3880 ]
  %3886 = phi float [ %3442, %3437 ], [ %3442, %3447 ], [ %3876, %3880 ]
  %3887 = phi float [ %3443, %3437 ], [ %3443, %3447 ], [ %3877, %3880 ]
  %3888 = call float @dx.op.unary.f32(i32 24, float %1834)  ; Sqrt(value)
  %3889 = call float @dx.op.unary.f32(i32 24, float %1835)  ; Sqrt(value)
  %3890 = call float @dx.op.unary.f32(i32 24, float %1836)  ; Sqrt(value)
  %3891 = fmul fast float %3888, %3885
  %3892 = fmul fast float %3889, %3886
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 0
  br i1 %176, label %3895, label %3915

; <label>:3895                                    ; preds = %3881
  %3896 = fadd fast float %3887, %1205
  %3897 = fmul fast float %3896, %1206
  %3898 = fsub fast float 1.000000e+00, %1206
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 3
  %3902 = fmul fast float %3901, %3899
  %3903 = fadd fast float %3902, %3897
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3906 = fmul fast float %3905, %3177
  %3907 = fsub fast float %3903, %3906
  %3908 = fadd fast float %3892, %3891
  %3909 = fmul fast float %3894, %3908
  %3910 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3911 = fsub fast float %3907, %3910
  %3912 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3913 = fmul fast float %3911, %3912
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  br label %3931

; <label>:3915                                    ; preds = %3881
  %3916 = fmul fast float %3890, %3887
  %3917 = fmul fast float %3894, %3891
  %3918 = fmul fast float %3894, %3892
  %3919 = fmul fast float %3916, %3894
  %3920 = add i32 %38, 116
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = and i32 %3922, 32
  %3924 = icmp eq i32 %3923, 0
  br i1 %3924, label %3931, label %3925

; <label>:3925                                    ; preds = %3915
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = fmul fast float %3927, 0x3FE99999A0000000
  %3929 = fadd fast float %3927, %3917
  %3930 = fadd fast float %3928, %3919
  br label %3931

; <label>:3931                                    ; preds = %3925, %3915, %3895
  %3932 = phi float [ %3909, %3895 ], [ %3929, %3925 ], [ %3917, %3915 ]
  %3933 = phi float [ %3914, %3895 ], [ %3918, %3925 ], [ %3918, %3915 ]
  %3934 = phi float [ 1.000000e+00, %3895 ], [ %3930, %3925 ], [ %3919, %3915 ]
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = fmul fast float %3936, %3883
  %3938 = fmul fast float %3936, %3884
  %3939 = fadd fast float %3883, %3882
  %3940 = select i1 %176, float %3939, float %3882
  %3941 = fmul float %3940, %3936
  %3942 = select i1 %176, float 0.000000e+00, float %3937
  %3943 = select i1 %176, float 0.000000e+00, float %3938
  %3944 = fmul fast float %3932, %3888
  %3945 = fmul fast float %3933, %3889
  %3946 = fmul fast float %3934, %3890
  %3947 = fadd fast float %3941, %3944
  %3948 = fadd fast float %3942, %3945
  %3949 = fadd fast float %3943, %3946
  %3950 = select i1 %176, float %3933, float %3948
  %3951 = select i1 %176, float %3934, float %3949
  %3952 = call float @dx.op.binary.f32(i32 36, float %3947, float 3.225500e+04)  ; FMin(a,b)
  %3953 = call float @dx.op.binary.f32(i32 36, float %3950, float 3.225500e+04)  ; FMin(a,b)
  %3954 = call float @dx.op.binary.f32(i32 36, float %3951, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3953)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3954)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

