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
; shader hash: 7fa51fb5580fa1eda12f41c370d7ac70
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
  %676 = add i32 %38, 144
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
  %709 = phi float [ 0.000000e+00, %175 ], [ %533, %691 ]
  %710 = phi float [ 0.000000e+00, %175 ], [ %534, %691 ]
  %711 = phi float [ 0.000000e+00, %175 ], [ %535, %691 ]
  %712 = phi float [ 0.000000e+00, %175 ], [ %661, %691 ]
  %713 = phi float [ 0.000000e+00, %175 ], [ %662, %691 ]
  %714 = phi float [ 0.000000e+00, %175 ], [ %663, %691 ]
  %715 = phi float [ 0.000000e+00, %175 ], [ %519, %691 ]
  %716 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %691 ]
  %717 = phi float [ 0.000000e+00, %175 ], [ %613, %691 ]
  %718 = phi float [ 0.000000e+00, %175 ], [ %616, %691 ]
  %719 = phi float [ 0.000000e+00, %175 ], [ %692, %691 ]
  %720 = phi float [ 0.000000e+00, %175 ], [ %705, %691 ]
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = call float @dx.op.dot2.f32(i32 54, float %707, float %708, float %707, float %708)  ; Dot2(ax,ay,bx,by)
  %724 = fmul fast float %723, 0x3FE3333340000000
  %725 = fsub fast float 1.000000e+00, %724
  %726 = call float @dx.op.dot3.f32(i32 55, float %707, float %708, float %725, float %707, float %708, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %727, %707
  %729 = fmul fast float %727, %708
  %730 = fmul fast float %725, %727
  %731 = fmul fast float %730, %43
  %732 = fmul fast float %730, %44
  %733 = fmul fast float %730, %45
  %734 = fmul fast float %728, %39
  %735 = fmul fast float %728, %40
  %736 = fmul fast float %728, %41
  %737 = fadd fast float %731, %734
  %738 = fadd fast float %732, %735
  %739 = fadd fast float %733, %736
  %740 = fmul fast float %729, %69
  %741 = fmul fast float %729, %70
  %742 = fmul fast float %729, %71
  %743 = fadd fast float %737, %740
  %744 = fadd fast float %738, %741
  %745 = fadd fast float %739, %742
  %746 = call float @dx.op.dot3.f32(i32 55, float %743, float %744, float %745, float %743, float %744, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = call float @dx.op.unary.f32(i32 25, float %746)  ; Rsqrt(value)
  %748 = fmul fast float %743, %747
  %749 = fmul fast float %744, %747
  %750 = fmul fast float %745, %747
  %751 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %752 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %753 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %754 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %755 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %756 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %757 = fadd fast float %751, %105
  %758 = fadd fast float %752, %106
  %759 = fadd fast float %753, %107
  %760 = fadd fast float %754, %105
  %761 = fadd fast float %755, %106
  %762 = fadd fast float %756, %107
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 3
  %770 = fmul fast float %764, %58
  %771 = fmul fast float %770, %768
  %772 = fmul fast float %765, %59
  %773 = fmul fast float %772, %769
  %774 = fptoui float %771 to i32
  %775 = fptoui float %773 to i32
  %776 = fadd fast float %764, -1.000000e+00
  %777 = fadd fast float %765, -1.000000e+00
  %778 = fptoui float %776 to i32
  %779 = fptoui float %777 to i32
  %780 = call i32 @dx.op.binary.i32(i32 40, i32 %774, i32 %778)  ; UMin(a,b)
  %781 = call i32 @dx.op.binary.i32(i32 40, i32 %775, i32 %779)  ; UMin(a,b)
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %784 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %785 = fmul fast float %783, %53
  %786 = fsub fast float %785, %784
  %787 = fadd fast float %766, -1.000000e+00
  %788 = call float @dx.op.binary.f32(i32 36, float %786, float %787)  ; FMin(a,b)
  %789 = fptoui float %788 to i32
  %790 = fptoui float %764 to i32
  %791 = fptoui float %765 to i32
  %792 = mul i32 %789, %791
  %793 = add i32 %792, %781
  %794 = mul i32 %793, %790
  %795 = add i32 %794, %780
  %796 = shl i32 %795, 2
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 1023
  %800 = lshr i32 %798, 10
  %801 = icmp eq i32 %799, 0
  br i1 %801, label %1227, label %802

; <label>:802                                     ; preds = %706
  %803 = and i32 %798, 1023
  br label %804

; <label>:804                                     ; preds = %930, %802
  %805 = phi float [ %931, %930 ], [ 0.000000e+00, %802 ]
  %806 = phi float [ %932, %930 ], [ %722, %802 ]
  %807 = phi float [ %933, %930 ], [ %720, %802 ]
  %808 = phi float [ %934, %930 ], [ %719, %802 ]
  %809 = phi float [ %935, %930 ], [ 0.000000e+00, %802 ]
  %810 = phi float [ %936, %930 ], [ %712, %802 ]
  %811 = phi float [ %937, %930 ], [ %713, %802 ]
  %812 = phi float [ %938, %930 ], [ %714, %802 ]
  %813 = phi float [ %939, %930 ], [ %748, %802 ]
  %814 = phi float [ %940, %930 ], [ %749, %802 ]
  %815 = phi float [ %941, %930 ], [ %750, %802 ]
  %816 = phi float [ %942, %930 ], [ %718, %802 ]
  %817 = phi float [ %943, %930 ], [ %717, %802 ]
  %818 = phi float [ %944, %930 ], [ 0.000000e+00, %802 ]
  %819 = phi float [ %945, %930 ], [ %715, %802 ]
  %820 = phi float [ %946, %930 ], [ %709, %802 ]
  %821 = phi float [ %947, %930 ], [ %710, %802 ]
  %822 = phi float [ %948, %930 ], [ %711, %802 ]
  %823 = phi i32 [ %880, %930 ], [ 0, %802 ]
  %824 = add nuw nsw i32 %823, %800
  %825 = shl i32 %824, 2
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = shl i32 %827, 8
  %829 = or i32 %828, 48
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = or i32 %828, 64
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = extractvalue %dx.types.ResRet.i32 %836, 1
  %839 = or i32 %828, 80
  %840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 2
  %842 = extractvalue %dx.types.ResRet.f32 %840, 3
  %843 = or i32 %828, 96
  %844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = extractvalue %dx.types.ResRet.f32 %844, 3
  %849 = or i32 %828, 112
  %850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 2
  %852 = or i32 %828, 128
  %853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = extractvalue %dx.types.ResRet.f32 %853, 1
  %856 = extractvalue %dx.types.ResRet.f32 %853, 2
  %857 = extractvalue %dx.types.ResRet.f32 %853, 3
  %858 = or i32 %828, 144
  %859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = extractvalue %dx.types.ResRet.f32 %859, 2
  %863 = extractvalue %dx.types.ResRet.f32 %859, 3
  %864 = or i32 %828, 160
  %865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = extractvalue %dx.types.ResRet.f32 %865, 3
  %870 = or i32 %828, 192
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = or i32 %828, 208
  %874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = or i32 %828, 248
  %877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = extractvalue %dx.types.ResRet.f32 %877, 1
  %880 = add nuw nsw i32 %823, 1
  %881 = bitcast float %834 to i32
  %882 = and i32 %881, 2560
  %883 = icmp eq i32 %882, 0
  %884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  %889 = call float @dx.op.dot4.f32(i32 56, float %885, float %886, float %887, float %888, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %890 = or i32 %828, 16
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = extractvalue %dx.types.ResRet.f32 %891, 3
  %896 = call float @dx.op.dot4.f32(i32 56, float %892, float %893, float %894, float %895, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %897 = or i32 %828, 32
  %898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = extractvalue %dx.types.ResRet.f32 %898, 1
  %901 = extractvalue %dx.types.ResRet.f32 %898, 2
  %902 = extractvalue %dx.types.ResRet.f32 %898, 3
  %903 = call float @dx.op.dot4.f32(i32 56, float %899, float %900, float %901, float %902, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %904 = call float @dx.op.unary.f32(i32 27, float %889)  ; Round_ni(value)
  %905 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %906 = call float @dx.op.unary.f32(i32 27, float %896)  ; Round_ni(value)
  %907 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %908 = call float @dx.op.unary.f32(i32 6, float %903)  ; FAbs(value)
  %909 = call float @dx.op.unary.f32(i32 27, float %908)  ; Round_ni(value)
  %910 = fadd fast float %907, %905
  %911 = fadd fast float %910, %909
  %912 = fcmp fast oeq float %911, 0.000000e+00
  %913 = call float @dx.op.dot4.f32(i32 56, float %885, float %886, float %887, float %888, float %757, float %758, float %759, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %914 = call float @dx.op.dot4.f32(i32 56, float %892, float %893, float %894, float %895, float %757, float %758, float %759, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %915 = call float @dx.op.dot4.f32(i32 56, float %885, float %886, float %887, float %888, float %760, float %761, float %762, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %916 = call float @dx.op.dot4.f32(i32 56, float %892, float %893, float %894, float %895, float %760, float %761, float %762, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %917 = fsub fast float %913, %889
  %918 = fsub fast float %915, %889
  %919 = fsub fast float %914, %896
  %920 = fsub fast float %916, %896
  %921 = call float @dx.op.dot3.f32(i32 55, float %831, float %832, float %833, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %924 = fadd fast float %923, %921
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %927 = fcmp fast ogt float %925, %926
  %928 = and i1 %912, %927
  %929 = and i1 %883, %928
  br i1 %929, label %950, label %930

; <label>:930                                     ; preds = %1213, %1031, %950, %804
  %931 = phi float [ %805, %950 ], [ %1034, %1031 ], [ %1034, %1213 ], [ %805, %804 ]
  %932 = phi float [ %806, %950 ], [ %806, %1031 ], [ %1188, %1213 ], [ %806, %804 ]
  %933 = phi float [ %807, %950 ], [ %807, %1031 ], [ %1186, %1213 ], [ %807, %804 ]
  %934 = phi float [ %808, %950 ], [ %808, %1031 ], [ %1158, %1213 ], [ %808, %804 ]
  %935 = phi float [ %809, %950 ], [ %809, %1031 ], [ %1156, %1213 ], [ %809, %804 ]
  %936 = phi float [ %810, %950 ], [ %810, %1031 ], [ %1223, %1213 ], [ %810, %804 ]
  %937 = phi float [ %811, %950 ], [ %811, %1031 ], [ %1224, %1213 ], [ %811, %804 ]
  %938 = phi float [ %812, %950 ], [ %812, %1031 ], [ %1225, %1213 ], [ %812, %804 ]
  %939 = phi float [ %813, %950 ], [ %813, %1031 ], [ %1137, %1213 ], [ %813, %804 ]
  %940 = phi float [ %814, %950 ], [ %814, %1031 ], [ %1138, %1213 ], [ %814, %804 ]
  %941 = phi float [ %815, %950 ], [ %815, %1031 ], [ %1139, %1213 ], [ %815, %804 ]
  %942 = phi float [ %816, %950 ], [ %816, %1031 ], [ %1166, %1213 ], [ %816, %804 ]
  %943 = phi float [ %817, %950 ], [ %817, %1031 ], [ %1163, %1213 ], [ %817, %804 ]
  %944 = phi float [ %818, %950 ], [ %818, %1031 ], [ %1160, %1213 ], [ %818, %804 ]
  %945 = phi float [ %819, %950 ], [ %819, %1031 ], [ %1154, %1213 ], [ %819, %804 ]
  %946 = phi float [ %820, %950 ], [ %820, %1031 ], [ %1149, %1213 ], [ %820, %804 ]
  %947 = phi float [ %821, %950 ], [ %821, %1031 ], [ %1150, %1213 ], [ %821, %804 ]
  %948 = phi float [ %822, %950 ], [ %822, %1031 ], [ %1151, %1213 ], [ %822, %804 ]
  %949 = icmp eq i32 %880, %803
  br i1 %949, label %1226, label %804

; <label>:950                                     ; preds = %804
  %951 = extractvalue %dx.types.ResRet.f32 %850, 3
  %952 = extractvalue %dx.types.ResRet.f32 %850, 1
  %953 = extractvalue %dx.types.ResRet.f32 %850, 0
  %954 = extractvalue %dx.types.ResRet.f32 %840, 1
  %955 = extractvalue %dx.types.ResRet.f32 %840, 0
  %956 = extractvalue %dx.types.ResRet.i32 %836, 3
  %957 = extractvalue %dx.types.ResRet.i32 %836, 2
  %958 = add i32 %956, 0
  %959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %958, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %961 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %959, %dx.types.Handle %960, float %889, float %896, float undef, float undef, i32 0, i32 0, i32 undef, float %917, float %919, float undef, float %918, float %920, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = fmul fast float %962, %955
  %964 = fadd fast float %963, %954
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  %966 = fmul fast float %889, %845
  %967 = call float @dx.op.tertiary.f32(i32 46, float %846, float %896, float %966)  ; FMad(a,b,c)
  %968 = fadd fast float %967, %953
  %969 = fmul fast float %889, %847
  %970 = call float @dx.op.tertiary.f32(i32 46, float %848, float %896, float %969)  ; FMad(a,b,c)
  %971 = fadd fast float %970, %952
  %972 = fmul fast float %917, %845
  %973 = call float @dx.op.tertiary.f32(i32 46, float %846, float %919, float %972)  ; FMad(a,b,c)
  %974 = fmul fast float %917, %847
  %975 = call float @dx.op.tertiary.f32(i32 46, float %848, float %919, float %974)  ; FMad(a,b,c)
  %976 = fmul fast float %918, %845
  %977 = call float @dx.op.tertiary.f32(i32 46, float %846, float %920, float %976)  ; FMad(a,b,c)
  %978 = fmul fast float %918, %847
  %979 = call float @dx.op.tertiary.f32(i32 46, float %848, float %920, float %978)  ; FMad(a,b,c)
  %980 = add i32 %957, 0
  %981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %981, %dx.types.Handle %960, float %968, float %971, float undef, float undef, i32 0, i32 0, i32 undef, float %973, float %975, float undef, float %977, float %979, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = and i32 %881, 1024
  %985 = icmp ne i32 %984, 0
  %986 = fcmp fast ogt float %983, 0x3FE0101020000000
  %987 = uitofp i1 %986 to float
  %988 = select i1 %985, float %987, float %983
  %989 = and i32 %881, 8192
  %990 = icmp ne i32 %989, 0
  %991 = select i1 %990, float %951, float 1.000000e+00
  %992 = fmul fast float %889, 2.000000e+00
  %993 = fadd fast float %992, -1.000000e+00
  %994 = call float @dx.op.unary.f32(i32 6, float %993)  ; FAbs(value)
  %995 = fmul fast float %994, %878
  %996 = fsub fast float %995, %878
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fmul fast float %896, 2.000000e+00
  %999 = fadd fast float %998, -1.000000e+00
  %1000 = call float @dx.op.unary.f32(i32 6, float %999)  ; FAbs(value)
  %1001 = fmul fast float %1000, %879
  %1002 = fsub fast float %1001, %879
  %1003 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1004 = fmul fast float %908, %841
  %1005 = fsub fast float %1004, %841
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = fmul fast float %965, %991
  %1008 = fmul fast float %1007, %962
  %1009 = fmul fast float %1008, %997
  %1010 = fmul fast float %1009, %988
  %1011 = fmul fast float %1010, %1003
  %1012 = fmul fast float %1011, %1006
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1016 = fsub fast float %925, %1015
  %1017 = fmul fast float %1016, %1014
  %1018 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1019 = fmul fast float %1012, %842
  %1020 = fadd fast float %1012, %842
  %1021 = fmul fast float %1020, %851
  %1022 = fsub fast float %1021, %851
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1024 = and i32 %881, 128
  %1025 = icmp ne i32 %1024, 0
  %1026 = select i1 %1025, float %1023, float %1019
  %1027 = fmul fast float %1026, %1018
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = fcmp fast ugt float %1027, %1029
  br i1 %1030, label %1031, label %930

; <label>:1031                                    ; preds = %950
  %1032 = select i1 %990, float %1027, float 0.000000e+00
  %1033 = fadd fast float %1032, %805
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  br i1 %990, label %930, label %1035

; <label>:1035                                    ; preds = %1031
  %1036 = and i32 %881, 4
  %1037 = and i32 %881, 8
  %1038 = add i32 %837, 0
  %1039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1041 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1039, %dx.types.Handle %1040, float %968, float %971, float undef, float undef, i32 0, i32 0, i32 undef, float %973, float %975, float undef, float %977, float %979, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = extractvalue %dx.types.ResRet.f32 %1041, 3
  %1046 = bitcast float %863 to i32
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = lshr i32 %1046, 8
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = fmul fast float %1045, %1048
  %1053 = fadd fast float %1052, %1051
  %1054 = fmul fast float %1053, 0x3F70101000000000
  %1055 = add i32 %838, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1055, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1056, %dx.types.Handle %1040, float %968, float %971, float undef, float undef, i32 0, i32 0, i32 undef, float %973, float %975, float undef, float %977, float %979, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1062 = bitcast float %857 to i32
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = lshr i32 %1062, 8
  %1066 = and i32 %1065, 255
  %1067 = uitofp i32 %1066 to float
  %1068 = lshr i32 %1062, 16
  %1069 = and i32 %1068, 255
  %1070 = uitofp i32 %1069 to float
  %1071 = fmul fast float %1070, 0x3F70101000000000
  %1072 = fmul fast float %1058, %1064
  %1073 = fadd fast float %1072, %1067
  %1074 = fmul fast float %1073, 0x3F70101000000000
  %1075 = fadd fast float %1059, -5.000000e-01
  %1076 = fadd fast float %1061, -5.000000e-01
  %1077 = fmul fast float %1075, %1071
  %1078 = fmul fast float %1076, %1071
  %1079 = fadd fast float %1077, 5.000000e-01
  %1080 = fadd fast float %1078, 5.000000e-01
  %1081 = fmul fast float %1042, %866
  %1082 = fmul fast float %1043, %867
  %1083 = fmul fast float %1044, %868
  %1084 = fmul fast float %1079, 2.000000e+00
  %1085 = fadd fast float %1084, -1.000000e+00
  %1086 = fmul fast float %1080, 2.000000e+00
  %1087 = fadd fast float %1086, -1.000000e+00
  %1088 = fadd fast float %1085, %1087
  %1089 = fmul fast float %1088, 5.000000e-01
  %1090 = fsub fast float %1085, %1087
  %1091 = fmul fast float %1090, 5.000000e-01
  %1092 = call float @dx.op.unary.f32(i32 6, float %1089)  ; FAbs(value)
  %1093 = fsub fast float 1.000000e+00, %1092
  %1094 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1095 = fsub fast float %1093, %1094
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1091, float %1095, float %1089, float %1091, float %1095)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = call float @dx.op.unary.f32(i32 25, float %1096)  ; Rsqrt(value)
  %1098 = fmul fast float %1089, %1097
  %1099 = fmul fast float %1091, %1097
  %1100 = fmul fast float %1097, %1095
  %1101 = fmul fast float %1100, %831
  %1102 = fmul fast float %1100, %832
  %1103 = fmul fast float %1100, %833
  %1104 = fmul fast float %1098, %854
  %1105 = fmul fast float %1098, %855
  %1106 = fmul fast float %1098, %856
  %1107 = fadd fast float %1104, %1101
  %1108 = fadd fast float %1105, %1102
  %1109 = fadd fast float %1106, %1103
  %1110 = fmul fast float %1099, %860
  %1111 = fmul fast float %1099, %861
  %1112 = fmul fast float %1099, %862
  %1113 = fadd fast float %1107, %1110
  %1114 = fadd fast float %1108, %1111
  %1115 = fadd fast float %1109, %1112
  %1116 = call float @dx.op.dot3.f32(i32 55, float %1113, float %1114, float %1115, float %1113, float %1114, float %1115)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = call float @dx.op.unary.f32(i32 25, float %1116)  ; Rsqrt(value)
  %1118 = fmul fast float %1113, %1117
  %1119 = fmul fast float %1114, %1117
  %1120 = fmul fast float %1115, %1117
  %1121 = icmp ne i32 %1037, 0
  %1122 = select i1 %1121, float 1.000000e+00, float 0.000000e+00
  %1123 = fmul fast float %1027, %1122
  %1124 = and i32 %881, 1
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1126, label %1130

; <label>:1126                                    ; preds = %1035
  %1127 = fsub fast float %1118, %813
  %1128 = fsub fast float %1119, %814
  %1129 = fsub fast float %1120, %815
  br label %1130

; <label>:1130                                    ; preds = %1126, %1035
  %1131 = phi float [ %1127, %1126 ], [ %1118, %1035 ]
  %1132 = phi float [ %1128, %1126 ], [ %1119, %1035 ]
  %1133 = phi float [ %1129, %1126 ], [ %1120, %1035 ]
  %1134 = fmul float %1133, %1123
  %1135 = fmul float %1132, %1123
  %1136 = fmul float %1131, %1123
  %1137 = fadd fast float %1136, %813
  %1138 = fadd fast float %1135, %814
  %1139 = fadd fast float %1134, %815
  %1140 = icmp ne i32 %1036, 0
  %1141 = select i1 %1140, float 1.000000e+00, float 0.000000e+00
  %1142 = fmul fast float %1027, %1141
  %1143 = fsub fast float %1081, %820
  %1144 = fsub fast float %1082, %821
  %1145 = fsub fast float %1083, %822
  %1146 = fmul fast float %1143, %1142
  %1147 = fmul fast float %1144, %1142
  %1148 = fmul fast float %1145, %1142
  %1149 = fadd fast float %1146, %820
  %1150 = fadd fast float %1147, %821
  %1151 = fadd fast float %1148, %822
  %1152 = fsub fast float %1054, %819
  %1153 = fmul fast float %1152, %1142
  %1154 = fadd fast float %1153, %819
  %1155 = fmul fast float %1142, %809
  %1156 = fsub fast float %809, %1155
  %1157 = fmul fast float %1142, %808
  %1158 = fsub fast float %808, %1157
  %1159 = fadd fast float %1027, %818
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = fsub fast float %1074, %817
  %1162 = fmul fast float %1161, %1123
  %1163 = fadd fast float %1162, %817
  %1164 = fsub fast float %1060, %816
  %1165 = fmul fast float %1164, %1123
  %1166 = fadd fast float %1165, %816
  %1167 = call float @dx.op.dot3.f32(i32 55, float %1081, float %1082, float %1083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1171 = fmul fast float %1170, %1167
  %1172 = fadd fast float %1171, %1169
  %1173 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1174 = bitcast float %869 to i32
  %1175 = and i32 %1174, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = lshr i32 %1174, 16
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fcmp fast oge float %1176, 0.000000e+00
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = select i1 %1179, float %1176, float %1181
  %1183 = fadd fast float %1182, %1178
  %1184 = fsub fast float %1173, %807
  %1185 = fmul fast float %1184, %1027
  %1186 = fadd fast float %1185, %807
  %1187 = fmul fast float %1183, %1027
  %1188 = call float @dx.op.binary.f32(i32 35, float %806, float %1187)  ; FMax(a,b)
  %1189 = and i32 %881, 16
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1213, label %1191

; <label>:1191                                    ; preds = %1130
  %1192 = bitcast float %875 to i32
  %1193 = add i32 %872, 0
  %1194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1193, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1194, %dx.types.Handle %1040, float %968, float %971, float undef, float undef, i32 0, i32 0, i32 undef, float %973, float %975, float undef, float %977, float %979, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = and i32 %1192, 65535
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = fmul fast float %1196, %866
  %1202 = fmul fast float %1197, %867
  %1203 = fmul fast float %1198, %868
  %1204 = and i32 %881, 16384
  %1205 = icmp ne i32 %1204, 0
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = select i1 %1205, float %1207, float 1.000000e+00
  %1209 = fmul fast float %1208, %1200
  %1210 = fmul fast float %1201, %1209
  %1211 = fmul fast float %1202, %1209
  %1212 = fmul fast float %1203, %1209
  br label %1213

; <label>:1213                                    ; preds = %1191, %1130
  %1214 = phi float [ %1210, %1191 ], [ 0.000000e+00, %1130 ]
  %1215 = phi float [ %1211, %1191 ], [ 0.000000e+00, %1130 ]
  %1216 = phi float [ %1212, %1191 ], [ 0.000000e+00, %1130 ]
  %1217 = fsub fast float %1214, %810
  %1218 = fsub fast float %1215, %811
  %1219 = fsub fast float %1216, %812
  %1220 = fmul fast float %1217, %1027
  %1221 = fmul fast float %1218, %1027
  %1222 = fmul fast float %1219, %1027
  %1223 = fadd fast float %1220, %810
  %1224 = fadd fast float %1221, %811
  %1225 = fadd fast float %1222, %812
  br label %930

; <label>:1226                                    ; preds = %930
  br label %1227

; <label>:1227                                    ; preds = %1226, %706
  %1228 = phi float [ 0.000000e+00, %706 ], [ %931, %1226 ]
  %1229 = phi float [ %722, %706 ], [ %932, %1226 ]
  %1230 = phi float [ %720, %706 ], [ %933, %1226 ]
  %1231 = phi float [ %719, %706 ], [ %934, %1226 ]
  %1232 = phi float [ 0.000000e+00, %706 ], [ %935, %1226 ]
  %1233 = phi float [ %712, %706 ], [ %936, %1226 ]
  %1234 = phi float [ %713, %706 ], [ %937, %1226 ]
  %1235 = phi float [ %714, %706 ], [ %938, %1226 ]
  %1236 = phi float [ %748, %706 ], [ %939, %1226 ]
  %1237 = phi float [ %749, %706 ], [ %940, %1226 ]
  %1238 = phi float [ %750, %706 ], [ %941, %1226 ]
  %1239 = phi float [ %718, %706 ], [ %942, %1226 ]
  %1240 = phi float [ %717, %706 ], [ %943, %1226 ]
  %1241 = phi float [ 0.000000e+00, %706 ], [ %944, %1226 ]
  %1242 = phi float [ %715, %706 ], [ %945, %1226 ]
  %1243 = phi float [ %709, %706 ], [ %946, %1226 ]
  %1244 = phi float [ %710, %706 ], [ %947, %1226 ]
  %1245 = phi float [ %711, %706 ], [ %948, %1226 ]
  %1246 = call float @dx.op.dot3.f32(i32 55, float %1236, float %1237, float %1238, float %1236, float %1237, float %1238)  ; Dot3(ax,ay,az,bx,by,bz)
  %1247 = call float @dx.op.unary.f32(i32 25, float %1246)  ; Rsqrt(value)
  %1248 = fmul fast float %1247, %1236
  %1249 = fmul fast float %1247, %1237
  %1250 = fmul fast float %1247, %1238
  %1251 = fadd fast float %1241, %716
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = call float @dx.op.dot3.f32(i32 55, float %1248, float %1249, float %1250, float %1248, float %1249, float %1250)  ; Dot3(ax,ay,az,bx,by,bz)
  %1254 = call float @dx.op.unary.f32(i32 25, float %1253)  ; Rsqrt(value)
  %1255 = fmul fast float %1254, %1248
  %1256 = fmul fast float %1254, %1249
  %1257 = fmul fast float %1254, %1250
  %1258 = fadd fast float %1242, 0xBFB99999A0000000
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fmul fast float %1259, 0x3FF1C71C80000000
  %1261 = call float @dx.op.binary.f32(i32 36, float %1242, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1262 = fsub fast float 1.000000e+00, %1260
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = fmul fast float %1263, %1243
  %1265 = fmul fast float %1263, %1244
  %1266 = fmul fast float %1263, %1245
  %1267 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1268 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1270 = fmul fast float %1260, %1243
  %1271 = fmul fast float %1260, %1244
  %1272 = fmul fast float %1260, %1245
  %1273 = fadd fast float %1270, %1261
  %1274 = fadd fast float %1271, %1261
  %1275 = fadd fast float %1272, %1261
  %1276 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1277 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1278 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1279 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.i32 %1280, 3
  %1282 = and i32 %1281, 8
  %1283 = icmp ne i32 %1282, 0
  %1284 = call float @dx.op.binary.f32(i32 35, float %1267, float %1243)  ; FMax(a,b)
  %1285 = call float @dx.op.binary.f32(i32 35, float %1268, float %1243)  ; FMax(a,b)
  %1286 = call float @dx.op.binary.f32(i32 35, float %1269, float %1243)  ; FMax(a,b)
  %1287 = call float @dx.op.dot3.f32(i32 55, float %1267, float %1268, float %1269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1288 = select i1 %176, float %1243, float %1267
  %1289 = select i1 %176, float %1287, float %1268
  %1290 = select i1 %176, float 1.000000e+00, float %1269
  %1291 = select i1 %1283, float %1284, float %1288
  %1292 = select i1 %1283, float %1285, float %1289
  %1293 = select i1 %1283, float %1286, float %1290
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = fadd fast float %1295, %105
  %1299 = fadd fast float %1296, %106
  %1300 = fadd fast float %1297, %107
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = fsub fast float %1298, %1302
  %1305 = fsub fast float %1299, %1303
  %1306 = fmul fast float %1304, %1304
  %1307 = fmul fast float %1305, %1305
  %1308 = fadd fast float %1306, %1307
  %1309 = call float @dx.op.unary.f32(i32 24, float %1308)  ; Sqrt(value)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1311 = fcmp fast olt float %1309, %1310
  br i1 %1311, label %1312, label %1379

; <label>:1312                                    ; preds = %1227
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1320 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1321 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1322 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1323 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1324 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1325 = fadd fast float %1322, %1298
  %1326 = fadd fast float %1323, %1299
  %1327 = fadd fast float %1324, %1300
  %1328 = fmul fast float %1325, %1314
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1326, float %1316, float %1328)  ; FMad(a,b,c)
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1318, float %1329)  ; FMad(a,b,c)
  %1331 = fmul fast float %1325, %1319
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1326, float %1320, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1321, float %1332)  ; FMad(a,b,c)
  %1334 = fsub fast float %1330, %1322
  %1335 = fsub fast float %1333, %1323
  %1336 = fsub fast float %1334, %1302
  %1337 = fadd fast float %1336, %1310
  %1338 = fsub fast float %1335, %1303
  %1339 = fadd fast float %1338, %1310
  %1340 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1341 = fmul fast float %1337, %1340
  %1342 = fmul fast float %1339, %1340
  %1343 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1344 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1345 = fsub fast float 1.000000e+00, %1343
  %1346 = fsub fast float 1.000000e+00, %1344
  %1347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1345, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = fcmp fast ugt float %1348, 0.000000e+00
  br i1 %1349, label %1350, label %1653

; <label>:1350                                    ; preds = %1312
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1353 = fmul fast float %1352, %1348
  %1354 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1355 = fadd fast float %1354, %1353
  %1356 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1357 = fadd fast float %1355, %1324
  %1358 = fmul fast float %1330, %1318
  %1359 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %1321, float %1358)  ; FMad(a,b,c)
  %1360 = call float @dx.op.tertiary.f32(i32 46, float %1357, float %1356, float %1359)  ; FMad(a,b,c)
  %1361 = fsub fast float %1360, %1324
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1364 = fsub fast float %1361, %1363
  %1365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1345, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1365, 2
  %1369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1345, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.ResRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.ResRet.f32 %1369, 2
  %1373 = fadd fast float %1370, %1366
  %1374 = fmul fast float %1373, 0x3F847AE140000000
  %1375 = fadd fast float %1371, %1367
  %1376 = fmul fast float %1375, 0x3F847AE140000000
  %1377 = fadd fast float %1372, %1368
  %1378 = fmul fast float %1377, 0x3F847AE140000000
  br label %1653

; <label>:1379                                    ; preds = %1227
  %1380 = and i32 %152, 1
  %1381 = icmp eq i32 %1380, 0
  br i1 %1381, label %1653, label %1382

; <label>:1382                                    ; preds = %1379
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1385, 1
  %1391 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1392 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1393 = extractvalue %dx.types.CBufRet.f32 %1385, 3
  %1394 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1395 = fadd fast float %1392, %1298
  %1396 = fadd fast float %1393, %1299
  %1397 = fadd fast float %1394, %1300
  %1398 = fmul fast float %1395, %1384
  %1399 = call float @dx.op.tertiary.f32(i32 46, float %1396, float %1386, float %1398)  ; FMad(a,b,c)
  %1400 = call float @dx.op.tertiary.f32(i32 46, float %1397, float %1388, float %1399)  ; FMad(a,b,c)
  %1401 = fmul fast float %1395, %1389
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1396, float %1390, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1397, float %1391, float %1402)  ; FMad(a,b,c)
  %1404 = fsub fast float %1400, %1392
  %1405 = fsub fast float %1403, %1393
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.CBufRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.CBufRet.f32 %1406, 2
  %1410 = extractvalue %dx.types.CBufRet.f32 %1406, 3
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 3
  %1413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.i32 %1413, 0
  %1415 = extractvalue %dx.types.CBufRet.i32 %1413, 1
  %1416 = udiv i32 %1415, %1414
  %1417 = fsub fast float %1404, %1407
  %1418 = fsub fast float %1405, %1408
  %1419 = call float @dx.op.binary.f32(i32 35, float %1417, float 0.000000e+00)  ; FMax(a,b)
  %1420 = call float @dx.op.binary.f32(i32 35, float %1418, float 0.000000e+00)  ; FMax(a,b)
  %1421 = call float @dx.op.binary.f32(i32 36, float %1419, float %1409)  ; FMin(a,b)
  %1422 = call float @dx.op.binary.f32(i32 36, float %1420, float %1410)  ; FMin(a,b)
  %1423 = add i32 %1414, -1
  %1424 = add i32 %1416, -1
  %1425 = fmul fast float %1421, %1412
  %1426 = fmul fast float %1422, %1412
  %1427 = fptoui float %1425 to i32
  %1428 = fptoui float %1426 to i32
  %1429 = call i32 @dx.op.binary.i32(i32 40, i32 %1427, i32 %1423)  ; UMin(a,b)
  %1430 = call i32 @dx.op.binary.i32(i32 40, i32 %1428, i32 %1424)  ; UMin(a,b)
  %1431 = mul i32 %1430, %1414
  %1432 = add i32 %1431, %1429
  %1433 = shl i32 %1432, 2
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = icmp eq i32 %1435, -1
  br i1 %1436, label %1653, label %1437

; <label>:1437                                    ; preds = %1382
  %1438 = mul i32 %1435, 148
  %1439 = add i32 %1438, 4
  %1440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = add i32 %1438, 8
  %1443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = add i32 %1438, 36
  %1446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = add i32 %1438, 60
  %1449 = add i32 %1438, 92
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1438, 116
  %1453 = fsub fast float %1404, %1441
  %1454 = fsub fast float %1405, %1444
  %1455 = fmul fast float %1412, %1453
  %1456 = fmul fast float %1412, %1454
  %1457 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1458 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1459 = fsub fast float 1.000000e+00, %1458
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1462 = call float @dx.op.unary.f32(i32 83, float %1457)  ; DerivCoarseX(value)
  %1463 = call float @dx.op.unary.f32(i32 83, float %1459)  ; DerivCoarseX(value)
  %1464 = call float @dx.op.unary.f32(i32 84, float %1457)  ; DerivCoarseY(value)
  %1465 = call float @dx.op.unary.f32(i32 84, float %1459)  ; DerivCoarseY(value)
  %1466 = fmul fast float %1462, %1461
  %1467 = fmul fast float %1463, %1461
  %1468 = fmul fast float %1464, %1461
  %1469 = fmul fast float %1465, %1461
  %1470 = call float @dx.op.dot2.f32(i32 54, float %1468, float %1469, float %1468, float %1469)  ; Dot2(ax,ay,bx,by)
  %1471 = call float @dx.op.dot2.f32(i32 54, float %1466, float %1467, float %1466, float %1467)  ; Dot2(ax,ay,bx,by)
  %1472 = call float @dx.op.binary.f32(i32 35, float %1471, float %1470)  ; FMax(a,b)
  %1473 = call float @dx.op.unary.f32(i32 23, float %1472)  ; Log(value)
  %1474 = fmul fast float %1473, 5.000000e-01
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 1
  %1477 = fadd fast float %1476, %1474
  %1478 = call float @dx.op.binary.f32(i32 35, float %1477, float 0.000000e+00)  ; FMax(a,b)
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 3
  %1481 = fadd fast float %1480, %1478
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 3
  %1484 = fadd fast float %1481, %1483
  %1485 = add i32 %1451, 0
  %1486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1485, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1487 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1486, i32 0)  ; GetDimensions(handle,mipLevel)
  %1488 = extractvalue %dx.types.Dimensions %1487, 0
  %1489 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1488)  ; FirstbitLo(value)
  %1490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.i32 %1490, 1
  %1492 = sub nsw i32 %1491, %1489
  %1493 = sitofp i32 %1492 to float
  %1494 = fsub fast float %1484, %1493
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0.000000e+00)  ; FMax(a,b)
  %1496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1486, %dx.types.Handle %33, float %1457, float %1459, float %1447, float undef, i32 0, i32 0, i32 undef, float %1495)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = fcmp ule float %1497, 0x3FE0101020000000
  %1499 = extractvalue %dx.types.CBufRet.i32 %1490, 0
  %1500 = and i32 %1499, 128
  %1501 = icmp ne i32 %1500, 0
  %1502 = and i1 %1498, %1501
  br i1 %1502, label %1653, label %1503

; <label>:1503                                    ; preds = %1437
  %1504 = add i32 %1438, 20
  %1505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = add i32 %1438, 24
  %1508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = add i32 %1438, 40
  %1511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = add i32 %1438, 96
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1518 = fmul fast float %1517, %1457
  %1519 = fmul fast float %1517, %1459
  %1520 = extractvalue %dx.types.CBufRet.f32 %1516, 3
  %1521 = fadd fast float %1518, %1520
  %1522 = fadd fast float %1519, %1520
  %1523 = add i32 %1515, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1523, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1524, i32 0)  ; GetDimensions(handle,mipLevel)
  %1526 = extractvalue %dx.types.Dimensions %1525, 0
  %1527 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1526)  ; FirstbitLo(value)
  %1528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.i32 %1528, 1
  %1530 = sub nsw i32 %1529, %1527
  %1531 = sitofp i32 %1530 to float
  %1532 = fsub fast float %1481, %1531
  %1533 = call float @dx.op.binary.f32(i32 35, float %1532, float 0.000000e+00)  ; FMax(a,b)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1524, %dx.types.Handle %33, float %1521, float %1522, float %1512, float undef, i32 0, i32 0, i32 undef, float %1533)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = fmul fast float %1535, %1506
  %1537 = fadd fast float %1536, %1509
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1541 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 3
  %1546 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1547 = fadd fast float %1543, %1404
  %1548 = fadd fast float %1545, %1405
  %1549 = fadd fast float %1537, %1546
  %1550 = fmul fast float %1547, %1539
  %1551 = call float @dx.op.tertiary.f32(i32 46, float %1548, float %1540, float %1550)  ; FMad(a,b,c)
  %1552 = call float @dx.op.tertiary.f32(i32 46, float %1549, float %1541, float %1551)  ; FMad(a,b,c)
  %1553 = fsub fast float %1552, %1546
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 2
  %1556 = fsub fast float %1553, %1555
  %1557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.i32 %1557, 0
  %1559 = call i32 @dx.op.binary.i32(i32 40, i32 %1435, i32 %1558)  ; UMin(a,b)
  %1560 = mul i32 %1559, 36
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1560, 4
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 0
  %1566 = fmul fast float %1565, %1457
  %1567 = fmul fast float %1565, %1459
  %1568 = extractvalue %dx.types.CBufRet.f32 %1564, 1
  %1569 = fadd fast float %1566, %1568
  %1570 = fadd fast float %1567, %1568
  %1571 = icmp eq i32 %1562, 0
  br i1 %1571, label %1640, label %1572

; <label>:1572                                    ; preds = %1503
  br label %1573

; <label>:1573                                    ; preds = %1630, %1572
  %1574 = phi float [ %1631, %1630 ], [ 0.000000e+00, %1572 ]
  %1575 = phi float [ %1632, %1630 ], [ 0.000000e+00, %1572 ]
  %1576 = phi float [ %1633, %1630 ], [ 0.000000e+00, %1572 ]
  %1577 = phi float [ %1634, %1630 ], [ 0.000000e+00, %1572 ]
  %1578 = phi float [ %1635, %1630 ], [ 0.000000e+00, %1572 ]
  %1579 = phi float [ %1636, %1630 ], [ 0.000000e+00, %1572 ]
  %1580 = phi i32 [ %1637, %1630 ], [ 0, %1572 ]
  %1581 = shl i32 %1580, 2
  %1582 = add i32 %1448, %1581
  %1583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = add i32 %1452, %1581
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %1587, 0
  %1589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1588, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1590 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1589, i32 0)  ; GetDimensions(handle,mipLevel)
  %1591 = extractvalue %dx.types.Dimensions %1590, 0
  %1592 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1591)  ; FirstbitLo(value)
  %1593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.i32 %1593, 1
  %1595 = sub nsw i32 %1594, %1592
  %1596 = sitofp i32 %1595 to float
  %1597 = fsub fast float %1481, %1596
  %1598 = call float @dx.op.binary.f32(i32 35, float %1597, float 0.000000e+00)  ; FMax(a,b)
  %1599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1589, %dx.types.Handle %33, float %1569, float %1570, float %1584, float undef, i32 0, i32 0, i32 undef, float %1598)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1601 = fcmp fast ogt float %1600, 0.000000e+00
  br i1 %1601, label %1602, label %1630

; <label>:1602                                    ; preds = %1573
  %1603 = add i32 %1563, %1581
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 32767
  %1607 = mul nuw nsw i32 %1606, 928
  %1608 = add nuw nsw i32 %1607, 48
  %1609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.f32 %1609, 0
  %1611 = extractvalue %dx.types.ResRet.f32 %1609, 1
  %1612 = extractvalue %dx.types.ResRet.f32 %1609, 2
  %1613 = add nuw nsw i32 %1607, 60
  %1614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.ResRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.ResRet.f32 %1614, 2
  %1618 = fmul fast float %1610, %1600
  %1619 = fmul fast float %1611, %1600
  %1620 = fmul fast float %1612, %1600
  %1621 = fadd fast float %1618, %1574
  %1622 = fadd fast float %1619, %1575
  %1623 = fadd fast float %1620, %1576
  %1624 = fmul fast float %1615, %1600
  %1625 = fmul fast float %1616, %1600
  %1626 = fmul fast float %1617, %1600
  %1627 = fadd fast float %1624, %1577
  %1628 = fadd fast float %1625, %1578
  %1629 = fadd fast float %1626, %1579
  br label %1630

; <label>:1630                                    ; preds = %1602, %1573
  %1631 = phi float [ %1621, %1602 ], [ %1574, %1573 ]
  %1632 = phi float [ %1622, %1602 ], [ %1575, %1573 ]
  %1633 = phi float [ %1623, %1602 ], [ %1576, %1573 ]
  %1634 = phi float [ %1627, %1602 ], [ %1577, %1573 ]
  %1635 = phi float [ %1628, %1602 ], [ %1578, %1573 ]
  %1636 = phi float [ %1629, %1602 ], [ %1579, %1573 ]
  %1637 = add nuw i32 %1580, 1
  %1638 = icmp eq i32 %1637, %1562
  br i1 %1638, label %1639, label %1573

; <label>:1639                                    ; preds = %1630
  br label %1640

; <label>:1640                                    ; preds = %1639, %1503
  %1641 = phi float [ 0.000000e+00, %1503 ], [ %1631, %1639 ]
  %1642 = phi float [ 0.000000e+00, %1503 ], [ %1632, %1639 ]
  %1643 = phi float [ 0.000000e+00, %1503 ], [ %1633, %1639 ]
  %1644 = phi float [ 0.000000e+00, %1503 ], [ %1634, %1639 ]
  %1645 = phi float [ 0.000000e+00, %1503 ], [ %1635, %1639 ]
  %1646 = phi float [ 0.000000e+00, %1503 ], [ %1636, %1639 ]
  %1647 = fadd fast float %1644, %1641
  %1648 = fmul fast float %1647, 0x3F847AE140000000
  %1649 = fadd fast float %1645, %1642
  %1650 = fmul fast float %1649, 0x3F847AE140000000
  %1651 = fadd fast float %1646, %1643
  %1652 = fmul fast float %1651, 0x3F847AE140000000
  br label %1653

; <label>:1653                                    ; preds = %1640, %1437, %1382, %1379, %1350, %1312
  %1654 = phi float [ %1364, %1350 ], [ -1.310720e+05, %1312 ], [ %1556, %1640 ], [ -1.310720e+05, %1382 ], [ -1.310720e+05, %1437 ], [ -1.310720e+05, %1379 ]
  %1655 = phi float [ %1374, %1350 ], [ 0.000000e+00, %1312 ], [ %1648, %1640 ], [ 0.000000e+00, %1382 ], [ 0.000000e+00, %1437 ], [ 0.000000e+00, %1379 ]
  %1656 = phi float [ %1376, %1350 ], [ 0.000000e+00, %1312 ], [ %1650, %1640 ], [ 0.000000e+00, %1382 ], [ 0.000000e+00, %1437 ], [ 0.000000e+00, %1379 ]
  %1657 = phi float [ %1378, %1350 ], [ 0.000000e+00, %1312 ], [ %1652, %1640 ], [ 0.000000e+00, %1382 ], [ 0.000000e+00, %1437 ], [ 0.000000e+00, %1379 ]
  %1658 = phi i1 [ true, %1350 ], [ false, %1312 ], [ true, %1640 ], [ false, %1382 ], [ false, %1437 ], [ false, %1379 ]
  %1659 = and i32 %152, 3
  %1660 = icmp eq i32 %1659, 1
  %1661 = select i1 %1660, float 1.000000e+00, float 0.000000e+00
  %1662 = fsub fast float %1654, %107
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = select i1 %1658, float %1663, float 1.000000e+00
  %1665 = fmul fast float %1664, %1661
  %1666 = icmp eq i32 %1659, 3
  %1667 = select i1 %1666, float 1.000000e+00, float %1665
  %1668 = call float @dx.op.binary.f32(i32 35, float %1228, float %1667)  ; FMax(a,b)
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = fcmp fast une float %1669, 0.000000e+00
  %1671 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = call float @dx.op.unary.f32(i32 25, float %1671)  ; Rsqrt(value)
  br i1 %1670, label %1680, label %1673

; <label>:1673                                    ; preds = %1653
  %1674 = fmul fast float %1672, %105
  %1675 = fmul fast float %1672, %106
  %1676 = fmul fast float %1672, %107
  %1677 = fsub fast float -0.000000e+00, %1674
  %1678 = fsub fast float -0.000000e+00, %1675
  %1679 = fsub fast float -0.000000e+00, %1676
  br label %1848

; <label>:1680                                    ; preds = %1653
  %1681 = fmul fast float %105, %1672
  %1682 = fsub fast float -0.000000e+00, %1681
  %1683 = fmul fast float %106, %1672
  %1684 = fsub fast float -0.000000e+00, %1683
  %1685 = fmul fast float %107, %1672
  %1686 = fsub fast float -0.000000e+00, %1685
  %1687 = call float @dx.op.dot3.f32(i32 55, float %1682, float %1684, float %1686, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1688 = fmul fast float %1669, 2.500000e+00
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = fmul fast float %1669, 0x4013FFFFE0000000
  %1691 = fadd fast float %1690, 0xBFFFFFFFE0000000
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1693 = fmul fast float %1669, 0x4004000020000000
  %1694 = fadd fast float %1693, 0xBFF8000040000000
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1697 = fmul fast float %1258, 1.000000e+01
  %1698 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1699 = fmul fast float %1698, 2.000000e+00
  %1700 = fsub fast float 3.000000e+00, %1699
  %1701 = fmul fast float %1698, %1698
  %1702 = fmul fast float %1701, %1700
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fsub fast float 0x3FE3333340000000, %1279
  %1705 = fmul fast float %1704, 0x400AAAAAA0000000
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1707 = fmul fast float %1703, %1706
  %1708 = fmul fast float %1291, 0x3FEA2B8620000000
  %1709 = fmul fast float %1292, 0x3FEA2B8620000000
  %1710 = fmul fast float %1293, 0x3FEA2B8620000000
  %1711 = fadd fast float %1708, 0x3FC81DFBA0000000
  %1712 = fmul fast float %1711, %1291
  %1713 = fadd fast float %1712, 0x3F910E6020000000
  %1714 = fadd fast float %1709, 0x3FC81DFBA0000000
  %1715 = fmul fast float %1714, %1292
  %1716 = fadd fast float %1715, 0x3F910E6020000000
  %1717 = fadd fast float %1710, 0x3FC81DFBA0000000
  %1718 = fmul fast float %1717, %1293
  %1719 = fadd fast float %1718, 0x3F910E6020000000
  %1720 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1721 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1722 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1723 = fsub fast float %1720, %1291
  %1724 = fsub fast float %1721, %1292
  %1725 = fsub fast float %1722, %1293
  %1726 = fmul fast float %1723, %1696
  %1727 = fmul fast float %1726, %1707
  %1728 = fmul fast float %1724, %1696
  %1729 = fmul fast float %1728, %1707
  %1730 = fmul fast float %1725, %1696
  %1731 = fmul fast float %1730, %1707
  %1732 = fadd fast float %1727, %1291
  %1733 = fadd fast float %1729, %1292
  %1734 = fadd fast float %1731, %1293
  %1735 = fmul fast float %1239, %1239
  %1736 = fmul fast float %1735, %1735
  %1737 = fadd fast float %1692, 1.000000e+00
  %1738 = fsub fast float %1737, %1707
  %1739 = call float @dx.op.unary.f32(i32 7, float %1738)  ; Saturate(value)
  %1740 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1742 = fsub fast float 1.000000e+00, %1736
  %1743 = call float @dx.op.binary.f32(i32 36, float %1739, float %1742)  ; FMin(a,b)
  %1744 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1745 = call float @dx.op.binary.f32(i32 35, float %1743, float %1744)  ; FMax(a,b)
  %1746 = fadd fast float %1741, 0xBFE4CCCCC0000000
  %1747 = fmul fast float %1746, 0x4006DB6DA0000000
  %1748 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  %1749 = fmul fast float %1748, 2.000000e+00
  %1750 = fsub fast float 3.000000e+00, %1749
  %1751 = bitcast float %1276 to i32
  %1752 = ashr i32 %1751, 1
  %1753 = add nsw i32 %1752, 532487669
  %1754 = bitcast i32 %1753 to float
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = bitcast float %1755 to i32
  %1757 = sub nsw i32 2129859010, %1756
  %1758 = bitcast i32 %1757 to float
  %1759 = fmul fast float %1758, 2.000000e+00
  %1760 = bitcast float %1277 to i32
  %1761 = ashr i32 %1760, 1
  %1762 = add nsw i32 %1761, 532487669
  %1763 = bitcast i32 %1762 to float
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = bitcast float %1764 to i32
  %1766 = sub nsw i32 2129859010, %1765
  %1767 = bitcast i32 %1766 to float
  %1768 = fmul fast float %1767, 2.000000e+00
  %1769 = bitcast float %1278 to i32
  %1770 = ashr i32 %1769, 1
  %1771 = add nsw i32 %1770, 532487669
  %1772 = bitcast i32 %1771 to float
  %1773 = fsub fast float 1.000000e+00, %1772
  %1774 = bitcast float %1773 to i32
  %1775 = sub nsw i32 2129859010, %1774
  %1776 = bitcast i32 %1775 to float
  %1777 = fmul fast float %1776, 2.000000e+00
  %1778 = fsub fast float 0x4002A9FBE0000000, %1759
  %1779 = fadd fast float %1759, 0x3FD54FDF00000000
  %1780 = bitcast float %1779 to i32
  %1781 = sub nsw i32 2129859010, %1780
  %1782 = bitcast i32 %1781 to float
  %1783 = fmul fast float %1782, %1778
  %1784 = fmul fast float %1783, %1783
  %1785 = fsub fast float 0x4002A9FBE0000000, %1768
  %1786 = fadd fast float %1768, 0x3FD54FDF00000000
  %1787 = bitcast float %1786 to i32
  %1788 = sub nsw i32 2129859010, %1787
  %1789 = bitcast i32 %1788 to float
  %1790 = fmul fast float %1789, %1785
  %1791 = fmul fast float %1790, %1790
  %1792 = fsub fast float 0x4002A9FBE0000000, %1777
  %1793 = fadd fast float %1777, 0x3FD54FDF00000000
  %1794 = bitcast float %1793 to i32
  %1795 = sub nsw i32 2129859010, %1794
  %1796 = bitcast i32 %1795 to float
  %1797 = fmul fast float %1796, %1792
  %1798 = fmul fast float %1797, %1797
  %1799 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1784)  ; FMax(a,b)
  %1800 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1791)  ; FMax(a,b)
  %1801 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1798)  ; FMax(a,b)
  %1802 = fsub fast float 1.000000e+00, %1687
  %1803 = fadd fast float %1802, %1703
  %1804 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1805 = fsub fast float 1.000000e+00, %1667
  %1806 = fmul fast float %1745, %1805
  %1807 = fmul fast float %1748, %1748
  %1808 = fmul fast float %1807, %1806
  %1809 = fmul fast float %1808, %1750
  %1810 = fmul fast float %1805, 0xBFE99999A0000000
  %1811 = fmul fast float %1810, %1696
  %1812 = fmul fast float %1811, %1707
  %1813 = fadd fast float %1812, 1.000000e+00
  %1814 = fadd fast float %1279, -1.000000e+00
  %1815 = fmul fast float %1813, %1814
  %1816 = fadd fast float %1815, 1.000000e+00
  %1817 = fsub fast float %1799, %1276
  %1818 = fsub fast float %1800, %1277
  %1819 = fsub fast float %1801, %1278
  %1820 = fmul fast float %1809, %1817
  %1821 = fmul fast float %1809, %1818
  %1822 = fmul fast float %1809, %1819
  %1823 = fadd fast float %1820, %1276
  %1824 = fadd fast float %1821, %1277
  %1825 = fadd fast float %1822, %1278
  %1826 = fsub fast float %43, %1255
  %1827 = fsub fast float %44, %1256
  %1828 = fsub fast float %45, %1257
  %1829 = fmul fast float %1809, %1826
  %1830 = fmul fast float %1809, %1827
  %1831 = fmul fast float %1809, %1828
  %1832 = fadd fast float %1829, %1255
  %1833 = fadd fast float %1830, %1256
  %1834 = fadd fast float %1831, %1257
  %1835 = fmul fast float %1809, %1804
  %1836 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1837 = fsub fast float 1.000000e+00, %1836
  %1838 = fmul fast float %1835, %1837
  %1839 = fadd fast float %1838, %1836
  %1840 = fsub fast float 1.000000e+00, %1239
  %1841 = fmul fast float %1809, %1840
  %1842 = fadd fast float %1841, %1239
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1832, float %1833, float %1834, float %1832, float %1833, float %1834)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = call float @dx.op.unary.f32(i32 25, float %1843)  ; Rsqrt(value)
  %1845 = fmul fast float %1832, %1844
  %1846 = fmul fast float %1833, %1844
  %1847 = fmul fast float %1834, %1844
  br label %1848

; <label>:1848                                    ; preds = %1680, %1673
  %1849 = phi float [ %1679, %1673 ], [ %1686, %1680 ]
  %1850 = phi float [ %1678, %1673 ], [ %1684, %1680 ]
  %1851 = phi float [ %1677, %1673 ], [ %1682, %1680 ]
  %1852 = phi float [ %1676, %1673 ], [ %1685, %1680 ]
  %1853 = phi float [ %1675, %1673 ], [ %1683, %1680 ]
  %1854 = phi float [ %1674, %1673 ], [ %1681, %1680 ]
  %1855 = phi float [ %1276, %1673 ], [ %1823, %1680 ]
  %1856 = phi float [ %1277, %1673 ], [ %1824, %1680 ]
  %1857 = phi float [ %1278, %1673 ], [ %1825, %1680 ]
  %1858 = phi float [ %1291, %1673 ], [ %1732, %1680 ]
  %1859 = phi float [ %1292, %1673 ], [ %1733, %1680 ]
  %1860 = phi float [ %1293, %1673 ], [ %1734, %1680 ]
  %1861 = phi float [ %1255, %1673 ], [ %1845, %1680 ]
  %1862 = phi float [ %1256, %1673 ], [ %1846, %1680 ]
  %1863 = phi float [ %1257, %1673 ], [ %1847, %1680 ]
  %1864 = phi float [ %1279, %1673 ], [ %1839, %1680 ]
  %1865 = phi float [ %1239, %1673 ], [ %1842, %1680 ]
  %1866 = select i1 %176, float 0.000000e+00, float %1857
  %1867 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float %1851, float %1850, float %1849)  ; Dot3(ax,ay,az,bx,by,bz)
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1869 = call float @dx.op.dot3.f32(i32 55, float %1854, float %1853, float %1852, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = fmul fast float %1869, 2.000000e+00
  %1871 = fmul fast float %1870, %1861
  %1872 = fmul fast float %1870, %1862
  %1873 = fmul fast float %1870, %1863
  %1874 = fsub fast float %1854, %1871
  %1875 = fsub fast float %1853, %1872
  %1876 = fsub fast float %1852, %1873
  %1877 = call float @dx.op.binary.f32(i32 36, float %1865, float 1.000000e+00)  ; FMin(a,b)
  %1878 = fsub fast float 1.000000e+00, %1865
  %1879 = bitcast float %1878 to i32
  %1880 = sub nsw i32 2129859010, %1879
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1884 = fadd fast float %1882, %105
  %1885 = fadd fast float %1883, %106
  %1886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.i32 %1886, 0
  %1888 = icmp eq i32 %1887, 1
  br i1 %1888, label %1889, label %1924

; <label>:1889                                    ; preds = %1848
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = fsub fast float %1884, %1891
  %1894 = fsub fast float %1885, %1892
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 1
  %1898 = fmul fast float %1893, %1896
  %1899 = fmul fast float %1894, %1897
  %1900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1898, float %1899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = fcmp fast ogt float %1901, 0.000000e+00
  %1903 = extractvalue %dx.types.CBufRet.i32 %1886, 3
  %1904 = icmp ne i32 %1903, 0
  %1905 = and i1 %1902, %1904
  br i1 %1905, label %1906, label %1924, !dx.controlflow.hints !72

; <label>:1906                                    ; preds = %1889
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = fsub fast float %1884, %1908
  %1911 = fsub fast float %1885, %1909
  %1912 = fmul fast float %1910, %1910
  %1913 = fmul fast float %1911, %1911
  %1914 = fadd fast float %1912, %1913
  %1915 = uitofp i32 %1903 to float
  %1916 = fmul fast float %1915, %1915
  %1917 = fcmp fast ogt float %1914, %1916
  br i1 %1917, label %1924, label %1918

; <label>:1918                                    ; preds = %1906
  %1919 = call float @dx.op.unary.f32(i32 24, float %1914)  ; Sqrt(value)
  %1920 = fsub fast float %1915, %1919
  %1921 = fmul fast float %1920, 0x3F75555560000000
  %1922 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1923 = call float @dx.op.binary.f32(i32 36, float %1922, float %1901)  ; FMin(a,b)
  br label %1924

; <label>:1924                                    ; preds = %1918, %1906, %1889, %1848
  %1925 = phi float [ 1.000000e+00, %1848 ], [ %1923, %1918 ], [ %1901, %1889 ], [ 0.000000e+00, %1906 ]
  %1926 = fcmp fast ogt float %1925, 0.000000e+00
  br i1 %1926, label %1927, label %2025, !dx.controlflow.hints !73

; <label>:1927                                    ; preds = %1924
  %1928 = fadd fast float %136, 5.000000e-01
  %1929 = call float @dx.op.unary.f32(i32 27, float %1928)  ; Round_ni(value)
  %1930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1929, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1935 = extractvalue %dx.types.CBufRet.f32 %1934, 3
  %1936 = fmul fast float %1935, %1931
  %1937 = fmul fast float %1935, %1932
  %1938 = fmul fast float %1935, %1933
  %1939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1929, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1929, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = extractvalue %dx.types.ResRet.f32 %1941, 1
  %1944 = fmul fast float %1942, 2.000000e+00
  %1945 = fmul fast float %1943, 2.000000e+00
  %1946 = fadd fast float %1944, -1.000000e+00
  %1947 = fadd fast float %1945, -1.000000e+00
  %1948 = fadd fast float %1946, %1947
  %1949 = fmul fast float %1948, 5.000000e-01
  %1950 = fsub fast float %1946, %1947
  %1951 = fmul fast float %1950, 5.000000e-01
  %1952 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %1953 = fsub fast float 1.000000e+00, %1952
  %1954 = call float @dx.op.unary.f32(i32 6, float %1951)  ; FAbs(value)
  %1955 = fsub fast float %1953, %1954
  %1956 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1955)  ; FMax(a,b)
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1949, float %1951, float %1956, float %1949, float %1951, float %1956)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = bitcast float %1957 to i32
  %1959 = ashr i32 %1958, 1
  %1960 = sub nsw i32 1597250115, %1959
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1961, %1949
  %1963 = fmul fast float %1961, %1951
  %1964 = fmul fast float %1961, %1956
  %1965 = fsub fast float 1.000000e+00, %1940
  %1966 = fdiv fast float %1965, %1964
  %1967 = fmul fast float %1964, %43
  %1968 = fmul fast float %1964, %44
  %1969 = fmul fast float %1964, %45
  %1970 = fmul fast float %1962, %39
  %1971 = fmul fast float %1962, %40
  %1972 = fmul fast float %1962, %41
  %1973 = fadd fast float %1967, %1970
  %1974 = fadd fast float %1968, %1971
  %1975 = fadd fast float %1969, %1972
  %1976 = fmul fast float %1963, %69
  %1977 = fmul fast float %1963, %70
  %1978 = fmul fast float %1963, %71
  %1979 = fadd fast float %1973, %1976
  %1980 = fadd fast float %1974, %1977
  %1981 = fadd fast float %1975, %1978
  %1982 = call float @dx.op.dot3.f32(i32 55, float %1979, float %1980, float %1981, float %1979, float %1980, float %1981)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = call float @dx.op.unary.f32(i32 25, float %1982)  ; Rsqrt(value)
  %1984 = fmul fast float %1979, %1983
  %1985 = fmul fast float %1980, %1983
  %1986 = fmul fast float %1981, %1983
  %1987 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1989 = fmul fast float %1988, 5.000000e-01
  %1990 = fadd fast float %1989, 5.000000e-01
  %1991 = fmul fast float %1990, %1940
  %1992 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float %1984, float %1985, float %1986)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fmul fast float %1993, %1966
  %1995 = fadd fast float %1991, %1994
  %1996 = fsub fast float 5.000000e-01, %1989
  %1997 = fmul fast float %1996, %1858
  %1998 = fmul fast float %1996, %1859
  %1999 = fmul fast float %1996, %1860
  %2000 = fadd fast float %1995, %1997
  %2001 = fmul fast float %2000, %1936
  %2002 = fadd fast float %1995, %1998
  %2003 = fmul fast float %2002, %1937
  %2004 = fadd fast float %1995, %1999
  %2005 = fmul fast float %2004, %1938
  %2006 = call float @dx.op.dot3.f32(i32 55, float %1874, float %1875, float %1876, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fmul fast float %2007, 5.000000e-01
  %2009 = fadd fast float %2008, 5.000000e-01
  %2010 = fmul fast float %2009, %1940
  %2011 = call float @dx.op.dot3.f32(i32 55, float %1874, float %1875, float %1876, float %1984, float %1985, float %1986)  ; Dot3(ax,ay,az,bx,by,bz)
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2013 = fmul fast float %2012, %1966
  %2014 = fadd fast float %2010, %2013
  %2015 = fsub fast float 5.000000e-01, %2008
  %2016 = fmul fast float %2015, %1858
  %2017 = fmul fast float %2015, %1859
  %2018 = fmul fast float %2015, %1860
  %2019 = fadd fast float %2014, %2016
  %2020 = fmul fast float %2019, %1936
  %2021 = fadd fast float %2014, %2017
  %2022 = fmul fast float %2021, %1937
  %2023 = fadd fast float %2014, %2018
  %2024 = fmul fast float %2023, %1938
  br label %2025

; <label>:2025                                    ; preds = %1927, %1924
  %2026 = phi float [ %2020, %1927 ], [ 0.000000e+00, %1924 ]
  %2027 = phi float [ %2022, %1927 ], [ 0.000000e+00, %1924 ]
  %2028 = phi float [ %2024, %1927 ], [ 0.000000e+00, %1924 ]
  %2029 = phi float [ %2001, %1927 ], [ 0.000000e+00, %1924 ]
  %2030 = phi float [ %2003, %1927 ], [ 0.000000e+00, %1924 ]
  %2031 = phi float [ %2005, %1927 ], [ 0.000000e+00, %1924 ]
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = fcmp fast ogt float %2033, 0.000000e+00
  %2035 = and i1 %1926, %2034
  br i1 %2035, label %2036, label %2240, !dx.controlflow.hints !74

; <label>:2036                                    ; preds = %2025
  %2037 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %2038 = fadd fast float %2037, %107
  %2039 = fmul fast float %1861, 3.200000e+01
  %2040 = fmul fast float %1862, 3.200000e+01
  %2041 = fadd fast float %1884, %2039
  %2042 = fadd fast float %1885, %2040
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2046 = fsub fast float %2041, %2044
  %2047 = fsub fast float %2042, %2045
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2051 = fmul fast float %2046, %2049
  %2052 = fmul fast float %2047, %2050
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = fsub fast float %1884, %2054
  %2057 = fsub fast float %1885, %2055
  %2058 = fmul fast float %2056, %2056
  %2059 = fmul fast float %2057, %2057
  %2060 = fadd fast float %2058, %2059
  %2061 = call float @dx.op.unary.f32(i32 24, float %2060)  ; Sqrt(value)
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = fsub fast float %2061, %2063
  %2066 = fdiv fast float %2065, %2064
  %2067 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2068 = fmul fast float %2067, 2.000000e+00
  %2069 = fsub fast float 3.000000e+00, %2068
  %2070 = fmul fast float %2067, %2067
  %2071 = fmul fast float %2070, %2069
  %2072 = fcmp fast oge float %2051, 0.000000e+00
  %2073 = fcmp fast ole float %2051, 1.000000e+00
  %2074 = and i1 %2073, %2072
  %2075 = fcmp fast oge float %2052, 0.000000e+00
  %2076 = and i1 %2075, %2074
  %2077 = fcmp fast ole float %2052, 1.000000e+00
  %2078 = and i1 %2077, %2076
  %2079 = fcmp fast ogt float %2071, 0.000000e+00
  %2080 = and i1 %2079, %2078
  br i1 %2080, label %2081, label %2204, !dx.controlflow.hints !75

; <label>:2081                                    ; preds = %2036
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2085 = fmul fast float %2083, %2051
  %2086 = fmul fast float %2084, %2052
  %2087 = call float @dx.op.unary.f32(i32 27, float %2085)  ; Round_ni(value)
  %2088 = call float @dx.op.unary.f32(i32 27, float %2086)  ; Round_ni(value)
  %2089 = fptosi float %2087 to i32
  %2090 = fptosi float %2088 to i32
  %2091 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2089, i32 %2090, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = lshr i32 %2092, 16
  %2094 = icmp eq i32 %2093, 65535
  br i1 %2094, label %2204, label %2095

; <label>:2095                                    ; preds = %2081
  %2096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2096, 0
  %2098 = fmul fast float %2097, %2051
  %2099 = extractvalue %dx.types.CBufRet.f32 %2096, 1
  %2100 = fadd fast float %2098, %2099
  %2101 = extractvalue %dx.types.CBufRet.f32 %2096, 2
  %2102 = fmul fast float %2101, %2052
  %2103 = extractvalue %dx.types.CBufRet.f32 %2096, 3
  %2104 = fadd fast float %2102, %2103
  %2105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2100, float %2104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2106 = extractvalue %dx.types.ResRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.ResRet.f32 %2105, 1
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2111 = fsub fast float %2109, %2110
  %2112 = fmul fast float %2111, %2106
  %2113 = fadd fast float %2112, %2110
  %2114 = extractvalue %dx.types.CBufRet.f32 %2108, 3
  %2115 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2116 = fsub fast float %2114, %2115
  %2117 = fmul fast float %2116, %2107
  %2118 = fadd fast float %2117, %2115
  %2119 = fsub fast float %2038, %2113
  %2120 = fsub fast float %2118, %2113
  %2121 = fdiv fast float %2119, %2120
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2124 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2125 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2126 = fmul fast float %2124, %2051
  %2127 = fmul fast float %2125, %2052
  %2128 = fmul fast float %2126, 1.250000e-01
  %2129 = fmul fast float %2127, 1.250000e-01
  %2130 = call float @dx.op.unary.f32(i32 27, float %2128)  ; Round_ni(value)
  %2131 = call float @dx.op.unary.f32(i32 27, float %2129)  ; Round_ni(value)
  %2132 = fmul fast float %2130, 8.000000e+00
  %2133 = fmul fast float %2131, 8.000000e+00
  %2134 = fsub fast float %2126, %2132
  %2135 = fsub fast float %2127, %2133
  %2136 = fadd fast float %2134, 5.000000e-01
  %2137 = fadd fast float %2135, 5.000000e-01
  %2138 = and i32 %2093, 255
  %2139 = lshr i32 %2092, 24
  %2140 = mul nuw nsw i32 %2138, 9
  %2141 = uitofp i32 %2140 to float
  %2142 = mul nuw nsw i32 %2139, 9
  %2143 = uitofp i32 %2142 to float
  %2144 = fadd fast float %2136, %2141
  %2145 = fadd fast float %2137, %2143
  %2146 = fdiv fast float %2144, %2033
  %2147 = fdiv fast float %2145, %2123
  %2148 = fmul fast float %2122, 4.375000e-01
  %2149 = fadd fast float %2148, 3.125000e-02
  %2150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2146, float %2147, float %2149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2151 = extractvalue %dx.types.ResRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.ResRet.f32 %2150, 1
  %2153 = extractvalue %dx.types.ResRet.f32 %2150, 2
  %2154 = fadd fast float %2148, 5.312500e-01
  %2155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2146, float %2147, float %2154, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.ResRet.f32 %2155, 1
  %2158 = extractvalue %dx.types.ResRet.f32 %2155, 2
  %2159 = fmul fast float %2156, 2.000000e+00
  %2160 = fmul fast float %2157, 2.000000e+00
  %2161 = fmul fast float %2158, 2.000000e+00
  %2162 = fadd fast float %2159, -1.000000e+00
  %2163 = fadd fast float %2160, -1.000000e+00
  %2164 = fadd fast float %2161, -1.000000e+00
  %2165 = fmul fast float %2162, %2162
  %2166 = fmul fast float %2163, %2163
  %2167 = fadd fast float %2165, %2166
  %2168 = fmul fast float %2164, %2164
  %2169 = fadd fast float %2167, %2168
  %2170 = call float @dx.op.unary.f32(i32 24, float %2169)  ; Sqrt(value)
  %2171 = fcmp fast ogt float %2170, 0.000000e+00
  br i1 %2171, label %2172, label %2176

; <label>:2172                                    ; preds = %2095
  %2173 = fdiv fast float %2162, %2170
  %2174 = fdiv fast float %2163, %2170
  %2175 = fdiv fast float %2164, %2170
  br label %2176

; <label>:2176                                    ; preds = %2172, %2095
  %2177 = phi float [ %2173, %2172 ], [ 0.000000e+00, %2095 ]
  %2178 = phi float [ %2174, %2172 ], [ 0.000000e+00, %2095 ]
  %2179 = phi float [ %2175, %2172 ], [ 0.000000e+00, %2095 ]
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2177, float %2178, float %2179, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2180)  ; FMax(a,b)
  %2182 = fmul fast float %2181, 0x400C5BF8A0000000
  %2183 = fmul fast float %2151, %2071
  %2184 = fmul fast float %2183, %2182
  %2185 = fmul fast float %2152, %2071
  %2186 = fmul fast float %2185, %2182
  %2187 = fmul fast float %2153, %2071
  %2188 = fmul fast float %2187, %2182
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2191 = fmul fast float %2184, %2190
  %2192 = fmul fast float %2186, %2190
  %2193 = fmul fast float %2188, %2190
  %2194 = fcmp fast ogt float %2038, %2118
  br i1 %2194, label %2195, label %2204

; <label>:2195                                    ; preds = %2176
  %2196 = fmul fast float %2120, 0x3FC24924A0000000
  %2197 = fsub fast float %2038, %2118
  %2198 = fdiv fast float %2197, %2196
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2200, %2191
  %2202 = fmul fast float %2200, %2192
  %2203 = fmul fast float %2200, %2193
  br label %2204

; <label>:2204                                    ; preds = %2195, %2176, %2081, %2036
  %2205 = phi float [ %2203, %2195 ], [ %2193, %2176 ], [ 0.000000e+00, %2081 ], [ 0.000000e+00, %2036 ]
  %2206 = phi float [ %2202, %2195 ], [ %2192, %2176 ], [ 0.000000e+00, %2081 ], [ 0.000000e+00, %2036 ]
  %2207 = phi float [ %2201, %2195 ], [ %2191, %2176 ], [ 0.000000e+00, %2081 ], [ 0.000000e+00, %2036 ]
  %2208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2207)  ; FMax(a,b)
  %2209 = fmul fast float %2208, 0x3FD20DD760000000
  %2210 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1874, float %1875, float %1876)  ; Dot3(ax,ay,az,bx,by,bz)
  %2211 = fmul fast float %2210, 0x3FDF454380000000
  %2212 = fmul fast float %2210, %2210
  %2213 = fmul fast float %2212, 0x3FEE471020000000
  %2214 = fadd fast float %2213, 0xBFD42F6020000000
  %2215 = call float @dx.op.dot3.f32(i32 55, float %2208, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2211, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2216 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2206)  ; FMax(a,b)
  %2217 = fmul fast float %2216, 0x3FD20DD760000000
  %2218 = call float @dx.op.dot3.f32(i32 55, float %2216, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2211, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2219 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2205)  ; FMax(a,b)
  %2220 = fmul fast float %2219, 0x3FD20DD760000000
  %2221 = call float @dx.op.dot3.f32(i32 55, float %2219, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2211, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2222 = call float @dx.op.binary.f32(i32 35, float %2209, float 0.000000e+00)  ; FMax(a,b)
  %2223 = call float @dx.op.binary.f32(i32 35, float %2217, float 0.000000e+00)  ; FMax(a,b)
  %2224 = call float @dx.op.binary.f32(i32 35, float %2220, float 0.000000e+00)  ; FMax(a,b)
  %2225 = call float @dx.op.binary.f32(i32 35, float %2215, float 0.000000e+00)  ; FMax(a,b)
  %2226 = call float @dx.op.binary.f32(i32 35, float %2218, float 0.000000e+00)  ; FMax(a,b)
  %2227 = call float @dx.op.binary.f32(i32 35, float %2221, float 0.000000e+00)  ; FMax(a,b)
  %2228 = fmul fast float %2222, %1925
  %2229 = fmul fast float %2223, %1925
  %2230 = fmul fast float %2224, %1925
  %2231 = fadd fast float %2228, %2029
  %2232 = fadd fast float %2229, %2030
  %2233 = fadd fast float %2230, %2031
  %2234 = fmul fast float %2225, %1925
  %2235 = fmul fast float %2226, %1925
  %2236 = fmul fast float %2227, %1925
  %2237 = fadd fast float %2234, %2026
  %2238 = fadd fast float %2235, %2027
  %2239 = fadd fast float %2236, %2028
  br label %2240

; <label>:2240                                    ; preds = %2204, %2025
  %2241 = phi float [ %2237, %2204 ], [ %2026, %2025 ]
  %2242 = phi float [ %2238, %2204 ], [ %2027, %2025 ]
  %2243 = phi float [ %2239, %2204 ], [ %2028, %2025 ]
  %2244 = phi float [ %2231, %2204 ], [ %2029, %2025 ]
  %2245 = phi float [ %2232, %2204 ], [ %2030, %2025 ]
  %2246 = phi float [ %2233, %2204 ], [ %2031, %2025 ]
  %2247 = fcmp fast olt float %1925, 1.000000e+00
  br i1 %2247, label %2248, label %3066, !dx.controlflow.hints !76

; <label>:2248                                    ; preds = %2240
  %2249 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %2250 = fadd fast float %2249, %107
  %2251 = fmul fast float %1861, 3.200000e+01
  %2252 = fmul fast float %1862, 3.200000e+01
  %2253 = fadd fast float %1884, %2251
  %2254 = fadd fast float %1885, %2252
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = extractvalue %dx.types.CBufRet.f32 %2255, 1
  %2258 = fsub fast float %2253, %2256
  %2259 = fsub fast float %2254, %2257
  %2260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2260, 0
  %2262 = extractvalue %dx.types.CBufRet.f32 %2260, 1
  %2263 = fmul fast float %2258, %2261
  %2264 = fmul fast float %2259, %2262
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = fmul fast float %2263, %2266
  %2268 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2269 = fadd fast float %2267, %2268
  %2270 = extractvalue %dx.types.CBufRet.f32 %2265, 2
  %2271 = fmul fast float %2270, %2264
  %2272 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  %2273 = fadd fast float %2271, %2272
  %2274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2269, float %2273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.f32 %2274, 1
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2280 = fsub fast float %2278, %2279
  %2281 = fmul fast float %2280, %2275
  %2282 = fadd fast float %2281, %2279
  %2283 = extractvalue %dx.types.CBufRet.f32 %2277, 3
  %2284 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2285 = fsub fast float %2283, %2284
  %2286 = fmul fast float %2285, %2276
  %2287 = fadd fast float %2286, %2284
  %2288 = fsub fast float %2250, %2282
  %2289 = fsub fast float %2287, %2282
  %2290 = fdiv fast float %2288, %2289
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = fmul fast float %2293, %2291
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2296 = fadd fast float %2294, %2295
  %2297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2269, float %2273, float %2296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.ResRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.ResRet.f32 %2297, 2
  %2301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2302 = extractvalue %dx.types.CBufRet.f32 %2301, 0
  %2303 = extractvalue %dx.types.CBufRet.f32 %2301, 1
  %2304 = extractvalue %dx.types.CBufRet.f32 %2301, 2
  %2305 = fmul fast float %2302, %2298
  %2306 = fmul fast float %2303, %2299
  %2307 = fmul fast float %2304, %2300
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = fadd fast float %2305, %2309
  %2313 = fadd fast float %2306, %2310
  %2314 = fadd fast float %2307, %2311
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = fmul fast float %2316, %2263
  %2318 = extractvalue %dx.types.CBufRet.f32 %2315, 1
  %2319 = fadd fast float %2317, %2318
  %2320 = extractvalue %dx.types.CBufRet.f32 %2315, 2
  %2321 = fmul fast float %2320, %2264
  %2322 = extractvalue %dx.types.CBufRet.f32 %2315, 3
  %2323 = fadd fast float %2321, %2322
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.CBufRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.CBufRet.f32 %2324, 2
  %2328 = extractvalue %dx.types.CBufRet.f32 %2324, 3
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.CBufRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.CBufRet.f32 %2329, 2
  %2333 = extractvalue %dx.types.CBufRet.f32 %2329, 3
  %2334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2319, float %2323, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.ResRet.f32 %2334, 1
  %2337 = extractvalue %dx.types.ResRet.f32 %2334, 2
  %2338 = extractvalue %dx.types.ResRet.f32 %2334, 3
  %2339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2319, float %2323, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.ResRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.ResRet.f32 %2339, 2
  %2343 = extractvalue %dx.types.ResRet.f32 %2339, 3
  %2344 = fmul fast float %2335, %2312
  %2345 = fmul fast float %2340, %2312
  %2346 = fmul fast float %2342, %2312
  %2347 = fmul fast float %2338, %2312
  %2348 = fadd fast float %2344, %2325
  %2349 = fadd fast float %2345, %2326
  %2350 = fadd fast float %2346, %2327
  %2351 = fadd fast float %2347, %2328
  %2352 = fmul fast float %2336, %2312
  %2353 = fmul fast float %2341, %2312
  %2354 = fadd fast float %2352, %2330
  %2355 = fadd fast float %2353, %2331
  %2356 = fmul fast float %2337, %2312
  %2357 = fmul fast float %2343, %2312
  %2358 = fadd fast float %2356, %2332
  %2359 = fadd fast float %2357, %2333
  %2360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2319, float %2323, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = extractvalue %dx.types.ResRet.f32 %2360, 3
  %2365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2319, float %2323, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.ResRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.ResRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.ResRet.f32 %2365, 3
  %2370 = fmul fast float %2361, %2313
  %2371 = fmul fast float %2366, %2313
  %2372 = fmul fast float %2368, %2313
  %2373 = fmul fast float %2364, %2313
  %2374 = fadd fast float %2348, %2370
  %2375 = fadd fast float %2349, %2371
  %2376 = fadd fast float %2350, %2372
  %2377 = fadd fast float %2351, %2373
  %2378 = fmul fast float %2362, %2313
  %2379 = fmul fast float %2367, %2313
  %2380 = fadd fast float %2354, %2378
  %2381 = fadd fast float %2355, %2379
  %2382 = fmul fast float %2363, %2313
  %2383 = fmul fast float %2369, %2313
  %2384 = fadd fast float %2358, %2382
  %2385 = fadd fast float %2359, %2383
  %2386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2319, float %2323, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.ResRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.ResRet.f32 %2386, 2
  %2390 = extractvalue %dx.types.ResRet.f32 %2386, 3
  %2391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2319, float %2323, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2392 = extractvalue %dx.types.ResRet.f32 %2391, 0
  %2393 = extractvalue %dx.types.ResRet.f32 %2391, 1
  %2394 = extractvalue %dx.types.ResRet.f32 %2391, 2
  %2395 = extractvalue %dx.types.ResRet.f32 %2391, 3
  %2396 = fmul fast float %2387, %2314
  %2397 = fmul fast float %2392, %2314
  %2398 = fmul fast float %2394, %2314
  %2399 = fmul fast float %2390, %2314
  %2400 = fadd fast float %2374, %2396
  %2401 = fadd fast float %2375, %2397
  %2402 = fadd fast float %2376, %2398
  %2403 = fadd fast float %2377, %2399
  %2404 = fmul fast float %2388, %2314
  %2405 = fmul fast float %2393, %2314
  %2406 = fadd fast float %2380, %2404
  %2407 = fadd fast float %2381, %2405
  %2408 = fmul fast float %2389, %2314
  %2409 = fmul fast float %2395, %2314
  %2410 = fadd fast float %2384, %2408
  %2411 = fadd fast float %2385, %2409
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 0
  %2414 = fsub fast float %1884, %2413
  %2415 = fsub fast float %2256, %1884
  %2416 = call float @dx.op.binary.f32(i32 35, float %2415, float %2414)  ; FMax(a,b)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2412, 1
  %2418 = fsub fast float %1885, %2417
  %2419 = fsub fast float %2257, %1885
  %2420 = call float @dx.op.binary.f32(i32 35, float %2419, float %2418)  ; FMax(a,b)
  %2421 = call float @dx.op.binary.f32(i32 35, float %2416, float %2420)  ; FMax(a,b)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2260, 3
  %2423 = fmul fast float %2422, %2421
  %2424 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2429 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2430 = fsub fast float %2426, %2400
  %2431 = fsub fast float %2427, %2401
  %2432 = fsub fast float %2428, %2402
  %2433 = fsub fast float %2429, %2403
  %2434 = fmul fast float %2430, %2424
  %2435 = fmul fast float %2431, %2424
  %2436 = fmul fast float %2432, %2424
  %2437 = fmul fast float %2433, %2424
  %2438 = fadd fast float %2434, %2400
  %2439 = fadd fast float %2435, %2401
  %2440 = fadd fast float %2436, %2402
  %2441 = fadd fast float %2437, %2403
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.CBufRet.f32 %2442, 1
  %2445 = fsub fast float %2443, %2406
  %2446 = fsub fast float %2444, %2407
  %2447 = fmul fast float %2445, %2424
  %2448 = fmul fast float %2446, %2424
  %2449 = fadd fast float %2447, %2406
  %2450 = fadd fast float %2448, %2407
  %2451 = extractvalue %dx.types.CBufRet.f32 %2442, 2
  %2452 = extractvalue %dx.types.CBufRet.f32 %2442, 3
  %2453 = fsub fast float %2451, %2410
  %2454 = fsub fast float %2452, %2411
  %2455 = fmul fast float %2453, %2424
  %2456 = fmul fast float %2454, %2424
  %2457 = fadd fast float %2455, %2410
  %2458 = fadd fast float %2456, %2411
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = fmul fast float %2460, %2438
  %2462 = fmul fast float %2460, %2439
  %2463 = fmul fast float %2460, %2440
  %2464 = fmul fast float %2460, %2441
  %2465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.f32 %2465, 0
  %2467 = fmul fast float %2466, %2449
  %2468 = fmul fast float %2466, %2450
  %2469 = fadd fast float %2467, %2461
  %2470 = fadd fast float %2468, %2463
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 0
  %2473 = fmul fast float %2472, %2457
  %2474 = fmul fast float %2472, %2458
  %2475 = fadd fast float %2469, %2473
  %2476 = fadd fast float %2470, %2474
  %2477 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2478 = fmul fast float %2477, %2438
  %2479 = fmul fast float %2477, %2439
  %2480 = fmul fast float %2477, %2440
  %2481 = fmul fast float %2477, %2441
  %2482 = extractvalue %dx.types.CBufRet.f32 %2465, 1
  %2483 = fmul fast float %2482, %2449
  %2484 = fmul fast float %2482, %2450
  %2485 = fadd fast float %2483, %2478
  %2486 = fadd fast float %2484, %2480
  %2487 = extractvalue %dx.types.CBufRet.f32 %2471, 1
  %2488 = fmul fast float %2487, %2457
  %2489 = fmul fast float %2487, %2458
  %2490 = fadd fast float %2485, %2488
  %2491 = fadd fast float %2486, %2489
  %2492 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2493 = fmul fast float %2492, %2438
  %2494 = fmul fast float %2492, %2439
  %2495 = fmul fast float %2492, %2440
  %2496 = fmul fast float %2492, %2441
  %2497 = extractvalue %dx.types.CBufRet.f32 %2465, 2
  %2498 = fmul fast float %2497, %2449
  %2499 = fmul fast float %2497, %2450
  %2500 = fadd fast float %2498, %2493
  %2501 = fadd fast float %2499, %2495
  %2502 = extractvalue %dx.types.CBufRet.f32 %2471, 2
  %2503 = fmul fast float %2502, %2457
  %2504 = fmul fast float %2502, %2458
  %2505 = fadd fast float %2500, %2503
  %2506 = fadd fast float %2501, %2504
  %2507 = fmul fast float %2494, %2494
  %2508 = fmul fast float %2506, %2506
  %2509 = fmul fast float %2496, %2496
  %2510 = fadd fast float %2509, %2507
  %2511 = fadd fast float %2510, %2508
  %2512 = call float @dx.op.unary.f32(i32 24, float %2511)  ; Sqrt(value)
  %2513 = fcmp fast ugt float %2512, 0.000000e+00
  br i1 %2513, label %2514, label %2529

; <label>:2514                                    ; preds = %2248
  %2515 = fsub fast float -0.000000e+00, %2496
  %2516 = fdiv fast float %2515, %2512
  %2517 = fsub fast float -0.000000e+00, %2494
  %2518 = fdiv fast float %2517, %2512
  %2519 = fdiv fast float %2506, %2512
  %2520 = fmul fast float %2505, 0x3FE279A760000000
  %2521 = fmul fast float %2518, %2494
  %2522 = fmul fast float %2519, %2506
  %2523 = fmul fast float %2516, %2496
  %2524 = fadd fast float %2521, %2523
  %2525 = fsub fast float %2524, %2522
  %2526 = call float @dx.op.unary.f32(i32 6, float %2525)  ; FAbs(value)
  %2527 = fadd fast float %2526, 0x3DDB7CDFE0000000
  %2528 = fdiv fast float %2520, %2527
  br label %2529

; <label>:2529                                    ; preds = %2514, %2248
  %2530 = phi float [ %2528, %2514 ], [ 1.000000e+00, %2248 ]
  %2531 = fmul fast float %2479, %2479
  %2532 = fmul fast float %2491, %2491
  %2533 = fmul fast float %2481, %2481
  %2534 = fadd fast float %2533, %2531
  %2535 = fadd fast float %2534, %2532
  %2536 = call float @dx.op.unary.f32(i32 24, float %2535)  ; Sqrt(value)
  %2537 = fcmp fast ugt float %2536, 0.000000e+00
  br i1 %2537, label %2538, label %2553

; <label>:2538                                    ; preds = %2529
  %2539 = fsub fast float -0.000000e+00, %2481
  %2540 = fdiv fast float %2539, %2536
  %2541 = fsub fast float -0.000000e+00, %2479
  %2542 = fdiv fast float %2541, %2536
  %2543 = fdiv fast float %2491, %2536
  %2544 = fmul fast float %2490, 0x3FE279A760000000
  %2545 = fmul fast float %2542, %2479
  %2546 = fmul fast float %2543, %2491
  %2547 = fmul fast float %2540, %2481
  %2548 = fadd fast float %2545, %2547
  %2549 = fsub fast float %2548, %2546
  %2550 = call float @dx.op.unary.f32(i32 6, float %2549)  ; FAbs(value)
  %2551 = fadd fast float %2550, 0x3DDB7CDFE0000000
  %2552 = fdiv fast float %2544, %2551
  br label %2553

; <label>:2553                                    ; preds = %2538, %2529
  %2554 = phi float [ %2552, %2538 ], [ 1.000000e+00, %2529 ]
  %2555 = call float @dx.op.binary.f32(i32 36, float %2554, float %2530)  ; FMin(a,b)
  %2556 = fmul fast float %2462, %2462
  %2557 = fmul fast float %2476, %2476
  %2558 = fmul fast float %2464, %2464
  %2559 = fadd fast float %2558, %2556
  %2560 = fadd fast float %2559, %2557
  %2561 = call float @dx.op.unary.f32(i32 24, float %2560)  ; Sqrt(value)
  %2562 = fcmp fast ugt float %2561, 0.000000e+00
  br i1 %2562, label %2563, label %2578

; <label>:2563                                    ; preds = %2553
  %2564 = fsub fast float -0.000000e+00, %2464
  %2565 = fdiv fast float %2564, %2561
  %2566 = fsub fast float -0.000000e+00, %2462
  %2567 = fdiv fast float %2566, %2561
  %2568 = fdiv fast float %2476, %2561
  %2569 = fmul fast float %2475, 0x3FE279A760000000
  %2570 = fmul fast float %2567, %2462
  %2571 = fmul fast float %2568, %2476
  %2572 = fmul fast float %2565, %2464
  %2573 = fadd fast float %2570, %2572
  %2574 = fsub fast float %2573, %2571
  %2575 = call float @dx.op.unary.f32(i32 6, float %2574)  ; FAbs(value)
  %2576 = fadd fast float %2575, 0x3DDB7CDFE0000000
  %2577 = fdiv fast float %2569, %2576
  br label %2578

; <label>:2578                                    ; preds = %2563, %2553
  %2579 = phi float [ %2577, %2563 ], [ 1.000000e+00, %2553 ]
  %2580 = call float @dx.op.binary.f32(i32 36, float %2579, float %2555)  ; FMin(a,b)
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2582 = fcmp fast olt float %2581, 1.000000e+00
  br i1 %2582, label %2583, label %2593

; <label>:2583                                    ; preds = %2578
  %2584 = fmul fast float %2581, %2462
  %2585 = fmul fast float %2581, %2476
  %2586 = fmul fast float %2581, %2464
  %2587 = fmul fast float %2581, %2479
  %2588 = fmul fast float %2581, %2491
  %2589 = fmul fast float %2581, %2481
  %2590 = fmul fast float %2581, %2494
  %2591 = fmul fast float %2581, %2506
  %2592 = fmul fast float %2581, %2496
  br label %2593

; <label>:2593                                    ; preds = %2583, %2578
  %2594 = phi float [ %2590, %2583 ], [ %2494, %2578 ]
  %2595 = phi float [ %2591, %2583 ], [ %2506, %2578 ]
  %2596 = phi float [ %2592, %2583 ], [ %2496, %2578 ]
  %2597 = phi float [ %2587, %2583 ], [ %2479, %2578 ]
  %2598 = phi float [ %2588, %2583 ], [ %2491, %2578 ]
  %2599 = phi float [ %2589, %2583 ], [ %2481, %2578 ]
  %2600 = phi float [ %2584, %2583 ], [ %2462, %2578 ]
  %2601 = phi float [ %2585, %2583 ], [ %2476, %2578 ]
  %2602 = phi float [ %2586, %2583 ], [ %2464, %2578 ]
  %2603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2475)  ; FMax(a,b)
  %2604 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2490)  ; FMax(a,b)
  %2605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2505)  ; FMax(a,b)
  %2606 = fcmp fast oge float %2263, 0.000000e+00
  %2607 = and i1 %2606, %2034
  %2608 = fcmp fast ole float %2263, 1.000000e+00
  %2609 = and i1 %2608, %2607
  %2610 = fcmp fast oge float %2264, 0.000000e+00
  %2611 = and i1 %2610, %2609
  %2612 = fcmp fast ole float %2264, 1.000000e+00
  %2613 = and i1 %2612, %2611
  br i1 %2613, label %2614, label %2759, !dx.controlflow.hints !77

; <label>:2614                                    ; preds = %2593
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 3
  %2618 = fmul fast float %2616, %2263
  %2619 = fmul fast float %2617, %2264
  %2620 = call float @dx.op.unary.f32(i32 27, float %2618)  ; Round_ni(value)
  %2621 = call float @dx.op.unary.f32(i32 27, float %2619)  ; Round_ni(value)
  %2622 = fptosi float %2620 to i32
  %2623 = fptosi float %2621 to i32
  %2624 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2622, i32 %2623, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 65535
  %2627 = lshr i32 %2625, 16
  %2628 = icmp eq i32 %2626, 65535
  br i1 %2628, label %2665, label %2629

; <label>:2629                                    ; preds = %2614
  %2630 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2631 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2632 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2633 = fmul fast float %2631, %2263
  %2634 = fmul fast float %2632, %2264
  %2635 = fmul fast float %2633, 1.250000e-01
  %2636 = fmul fast float %2634, 1.250000e-01
  %2637 = call float @dx.op.unary.f32(i32 27, float %2635)  ; Round_ni(value)
  %2638 = call float @dx.op.unary.f32(i32 27, float %2636)  ; Round_ni(value)
  %2639 = fmul fast float %2637, 8.000000e+00
  %2640 = fmul fast float %2638, 8.000000e+00
  %2641 = and i32 %2625, 255
  %2642 = lshr i32 %2625, 8
  %2643 = and i32 %2642, 255
  %2644 = mul nuw nsw i32 %2641, 9
  %2645 = uitofp i32 %2644 to float
  %2646 = mul nuw nsw i32 %2643, 9
  %2647 = uitofp i32 %2646 to float
  %2648 = fadd fast float %2645, 5.000000e-01
  %2649 = fadd fast float %2648, %2633
  %2650 = fsub fast float %2649, %2639
  %2651 = fadd fast float %2647, 5.000000e-01
  %2652 = fadd fast float %2651, %2634
  %2653 = fsub fast float %2652, %2640
  %2654 = fdiv fast float %2650, %2033
  %2655 = fdiv fast float %2653, %2630
  %2656 = fmul fast float %2291, 4.375000e-01
  %2657 = fadd fast float %2656, 3.125000e-02
  %2658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2654, float %2655, float %2657, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.ResRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.ResRet.f32 %2658, 2
  %2662 = fadd fast float %2659, %2603
  %2663 = fadd fast float %2660, %2604
  %2664 = fadd fast float %2661, %2605
  br label %2665

; <label>:2665                                    ; preds = %2629, %2614
  %2666 = phi float [ %2664, %2629 ], [ %2605, %2614 ]
  %2667 = phi float [ %2663, %2629 ], [ %2604, %2614 ]
  %2668 = phi float [ %2662, %2629 ], [ %2603, %2614 ]
  %2669 = icmp eq i32 %2627, 65535
  br i1 %2669, label %2759, label %2670

; <label>:2670                                    ; preds = %2665
  %2671 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2672 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2673 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2674 = fmul fast float %2672, %2263
  %2675 = fmul fast float %2673, %2264
  %2676 = fmul fast float %2674, 1.250000e-01
  %2677 = fmul fast float %2675, 1.250000e-01
  %2678 = call float @dx.op.unary.f32(i32 27, float %2676)  ; Round_ni(value)
  %2679 = call float @dx.op.unary.f32(i32 27, float %2677)  ; Round_ni(value)
  %2680 = fmul fast float %2678, 8.000000e+00
  %2681 = fmul fast float %2679, 8.000000e+00
  %2682 = fsub fast float %2674, %2680
  %2683 = fsub fast float %2675, %2681
  %2684 = fadd fast float %2682, 5.000000e-01
  %2685 = fadd fast float %2683, 5.000000e-01
  %2686 = and i32 %2627, 255
  %2687 = lshr i32 %2625, 24
  %2688 = mul nuw nsw i32 %2686, 9
  %2689 = uitofp i32 %2688 to float
  %2690 = mul nuw nsw i32 %2687, 9
  %2691 = uitofp i32 %2690 to float
  %2692 = fadd fast float %2684, %2689
  %2693 = fadd fast float %2685, %2691
  %2694 = fdiv fast float %2692, %2033
  %2695 = fdiv fast float %2693, %2671
  %2696 = fmul fast float %2291, 4.375000e-01
  %2697 = fadd fast float %2696, 3.125000e-02
  %2698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2694, float %2695, float %2697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = fadd fast float %2696, 5.312500e-01
  %2703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2694, float %2695, float %2702, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.ResRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.ResRet.f32 %2703, 2
  %2707 = fmul fast float %2704, 2.000000e+00
  %2708 = fmul fast float %2705, 2.000000e+00
  %2709 = fmul fast float %2706, 2.000000e+00
  %2710 = fadd fast float %2707, -1.000000e+00
  %2711 = fadd fast float %2708, -1.000000e+00
  %2712 = fadd fast float %2709, -1.000000e+00
  %2713 = fmul fast float %2710, %2710
  %2714 = fmul fast float %2711, %2711
  %2715 = fadd fast float %2713, %2714
  %2716 = fmul fast float %2712, %2712
  %2717 = fadd fast float %2715, %2716
  %2718 = call float @dx.op.unary.f32(i32 24, float %2717)  ; Sqrt(value)
  %2719 = fcmp fast ogt float %2718, 0.000000e+00
  br i1 %2719, label %2720, label %2724

; <label>:2720                                    ; preds = %2670
  %2721 = fdiv fast float %2710, %2718
  %2722 = fdiv fast float %2711, %2718
  %2723 = fdiv fast float %2712, %2718
  br label %2724

; <label>:2724                                    ; preds = %2720, %2670
  %2725 = phi float [ %2721, %2720 ], [ 0.000000e+00, %2670 ]
  %2726 = phi float [ %2722, %2720 ], [ 0.000000e+00, %2670 ]
  %2727 = phi float [ %2723, %2720 ], [ 0.000000e+00, %2670 ]
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2731 = fsub fast float %1884, %2729
  %2732 = fsub fast float %1885, %2730
  %2733 = fmul fast float %2731, %2731
  %2734 = fmul fast float %2732, %2732
  %2735 = fadd fast float %2733, %2734
  %2736 = call float @dx.op.unary.f32(i32 24, float %2735)  ; Sqrt(value)
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2740 = fsub fast float %2736, %2738
  %2741 = fdiv fast float %2740, %2739
  %2742 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2743 = fmul fast float %2742, 2.000000e+00
  %2744 = fsub fast float 3.000000e+00, %2743
  %2745 = fmul fast float %2742, %2742
  %2746 = fmul fast float %2745, %2744
  %2747 = call float @dx.op.dot3.f32(i32 55, float %2725, float %2726, float %2727, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2747)  ; FMax(a,b)
  %2749 = fmul fast float %2748, 0x400C5BF8A0000000
  %2750 = fmul fast float %2746, %2699
  %2751 = fmul fast float %2750, %2749
  %2752 = fadd fast float %2751, %2668
  %2753 = fmul fast float %2746, %2700
  %2754 = fmul fast float %2753, %2749
  %2755 = fadd fast float %2754, %2667
  %2756 = fmul fast float %2746, %2701
  %2757 = fmul fast float %2756, %2749
  %2758 = fadd fast float %2757, %2666
  br label %2759

; <label>:2759                                    ; preds = %2724, %2665, %2593
  %2760 = phi float [ %2758, %2724 ], [ %2666, %2665 ], [ %2605, %2593 ]
  %2761 = phi float [ %2755, %2724 ], [ %2667, %2665 ], [ %2604, %2593 ]
  %2762 = phi float [ %2752, %2724 ], [ %2668, %2665 ], [ %2603, %2593 ]
  %2763 = fcmp fast ogt float %2250, %2287
  %2764 = and i1 %2606, %2763
  %2765 = and i1 %2608, %2764
  %2766 = and i1 %2610, %2765
  %2767 = and i1 %2612, %2766
  br i1 %2767, label %2768, label %2825, !dx.controlflow.hints !78

; <label>:2768                                    ; preds = %2759
  %2769 = fmul fast float %2289, 0x3FC24924A0000000
  %2770 = fsub fast float %2250, %2287
  %2771 = fdiv fast float %2770, %2769
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2779 = fsub fast float %2774, %2762
  %2780 = fsub fast float %2776, %2600
  %2781 = fsub fast float %2777, %2601
  %2782 = fsub fast float %2778, %2602
  %2783 = fmul fast float %2779, %2772
  %2784 = fmul fast float %2780, %2772
  %2785 = fmul fast float %2781, %2772
  %2786 = fmul fast float %2782, %2772
  %2787 = fadd fast float %2783, %2762
  %2788 = fadd fast float %2784, %2600
  %2789 = fadd fast float %2785, %2601
  %2790 = fadd fast float %2786, %2602
  %2791 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = fsub fast float %2791, %2761
  %2797 = fsub fast float %2793, %2597
  %2798 = fsub fast float %2794, %2598
  %2799 = fsub fast float %2795, %2599
  %2800 = fmul fast float %2796, %2772
  %2801 = fmul fast float %2797, %2772
  %2802 = fmul fast float %2798, %2772
  %2803 = fmul fast float %2799, %2772
  %2804 = fadd fast float %2800, %2761
  %2805 = fadd fast float %2801, %2597
  %2806 = fadd fast float %2802, %2598
  %2807 = fadd fast float %2803, %2599
  %2808 = extractvalue %dx.types.CBufRet.f32 %2773, 2
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2813 = fsub fast float %2808, %2760
  %2814 = fsub fast float %2810, %2594
  %2815 = fsub fast float %2811, %2595
  %2816 = fsub fast float %2812, %2596
  %2817 = fmul fast float %2813, %2772
  %2818 = fmul fast float %2814, %2772
  %2819 = fmul fast float %2815, %2772
  %2820 = fmul fast float %2816, %2772
  %2821 = fadd fast float %2817, %2760
  %2822 = fadd fast float %2818, %2594
  %2823 = fadd fast float %2819, %2595
  %2824 = fadd fast float %2820, %2596
  br label %2825

; <label>:2825                                    ; preds = %2768, %2759
  %2826 = phi float [ %2821, %2768 ], [ %2760, %2759 ]
  %2827 = phi float [ %2822, %2768 ], [ %2594, %2759 ]
  %2828 = phi float [ %2823, %2768 ], [ %2595, %2759 ]
  %2829 = phi float [ %2824, %2768 ], [ %2596, %2759 ]
  %2830 = phi float [ %2804, %2768 ], [ %2761, %2759 ]
  %2831 = phi float [ %2805, %2768 ], [ %2597, %2759 ]
  %2832 = phi float [ %2806, %2768 ], [ %2598, %2759 ]
  %2833 = phi float [ %2807, %2768 ], [ %2599, %2759 ]
  %2834 = phi float [ %2787, %2768 ], [ %2762, %2759 ]
  %2835 = phi float [ %2788, %2768 ], [ %2600, %2759 ]
  %2836 = phi float [ %2789, %2768 ], [ %2601, %2759 ]
  %2837 = phi float [ %2790, %2768 ], [ %2602, %2759 ]
  %2838 = extractvalue %dx.types.CBufRet.f32 %2412, 3
  %2839 = fmul fast float %2838, %2834
  %2840 = fmul fast float %2838, %2830
  %2841 = fmul fast float %2838, %2826
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 3
  %2844 = fmul fast float %2839, %2843
  %2845 = fmul fast float %2840, %2843
  %2846 = fmul fast float %2841, %2843
  %2847 = fmul fast float %2835, 1.500000e+00
  %2848 = fmul fast float %2847, %2838
  %2849 = fmul fast float %2848, %2843
  %2850 = fmul fast float %2836, 1.500000e+00
  %2851 = fmul fast float %2850, %2838
  %2852 = fmul fast float %2851, %2843
  %2853 = fmul fast float %2837, 1.500000e+00
  %2854 = fmul fast float %2853, %2838
  %2855 = fmul fast float %2854, %2843
  %2856 = fmul fast float %2831, 1.500000e+00
  %2857 = fmul fast float %2856, %2838
  %2858 = fmul fast float %2857, %2843
  %2859 = fmul fast float %2832, 1.500000e+00
  %2860 = fmul fast float %2859, %2838
  %2861 = fmul fast float %2860, %2843
  %2862 = fmul fast float %2833, 1.500000e+00
  %2863 = fmul fast float %2862, %2838
  %2864 = fmul fast float %2863, %2843
  %2865 = fmul fast float %2827, 1.500000e+00
  %2866 = fmul fast float %2865, %2838
  %2867 = fmul fast float %2866, %2843
  %2868 = fmul fast float %2828, 1.500000e+00
  %2869 = fmul fast float %2868, %2838
  %2870 = fmul fast float %2869, %2843
  %2871 = fmul fast float %2829, 1.500000e+00
  %2872 = fmul fast float %2871, %2838
  %2873 = fmul fast float %2872, %2843
  %2874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2844)  ; FMax(a,b)
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2852, float %2855, float %2849, float %2852, float %2855)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = fcmp fast oeq float %2875, 0.000000e+00
  %2877 = fcmp fast oeq float %2874, 0.000000e+00
  %2878 = or i1 %2877, %2876
  br i1 %2878, label %2908, label %2879

; <label>:2879                                    ; preds = %2825
  %2880 = fsub fast float -0.000000e+00, %2855
  %2881 = fsub fast float -0.000000e+00, %2849
  %2882 = call float @dx.op.unary.f32(i32 24, float %2875)  ; Sqrt(value)
  %2883 = fdiv fast float %2882, %2874
  %2884 = fcmp fast ogt float %2883, 0x3FFB6F8900000000
  %2885 = select i1 %2884, float 0x3FFB6F8900000000, float %2883
  %2886 = fmul fast float %2885, 0x3FE8A23460000000
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2888 = call float @dx.op.binary.f32(i32 35, float %2885, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2889 = fmul fast float %2887, %2874
  %2890 = fmul fast float %2888, 0x3FF279A740000000
  %2891 = fadd fast float %2890, -1.000000e+00
  %2892 = call float @dx.op.dot3.f32(i32 55, float %2880, float %2881, float %2852, float %2880, float %2881, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2893 = call float @dx.op.unary.f32(i32 25, float %2892)  ; Rsqrt(value)
  %2894 = fmul fast float %2893, %2880
  %2895 = fmul fast float %2893, %2881
  %2896 = fmul fast float %2893, %2852
  %2897 = fmul fast float %2891, %2891
  %2898 = fsub fast float 1.000000e+00, %2897
  %2899 = fmul fast float %2888, 0x40005F8BE0000000
  %2900 = fsub fast float 0x400C5BF8A0000000, %2899
  %2901 = fdiv fast float %2889, %2900
  %2902 = fmul fast float %2901, 0x3FEE31C3C0000000
  %2903 = fmul fast float %2902, %2898
  %2904 = fmul fast float %2888, 0x3FDACB7480000000
  %2905 = fadd fast float %2904, 0xBFD7347680000000
  %2906 = fmul fast float %2905, %2901
  %2907 = fmul fast float %2906, %2898
  br label %2908

; <label>:2908                                    ; preds = %2879, %2825
  %2909 = phi float [ %2894, %2879 ], [ 0.000000e+00, %2825 ]
  %2910 = phi float [ %2895, %2879 ], [ 0.000000e+00, %2825 ]
  %2911 = phi float [ %2896, %2879 ], [ 0.000000e+00, %2825 ]
  %2912 = phi float [ %2903, %2879 ], [ 0.000000e+00, %2825 ]
  %2913 = phi float [ %2907, %2879 ], [ 0.000000e+00, %2825 ]
  %2914 = call float @dx.op.dot3.f32(i32 55, float %2909, float %2910, float %2911, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2915 = fmul fast float %2914, %2914
  %2916 = fmul fast float %2915, 0x3FEE471020000000
  %2917 = fadd fast float %2916, 0xBFD42F6020000000
  %2918 = fmul fast float %2874, 0x3FD20DD760000000
  %2919 = fmul fast float %2917, %2913
  %2920 = fmul fast float %2912, 0x3FDF454380000000
  %2921 = fmul fast float %2920, %2914
  %2922 = fadd fast float %2921, %2918
  %2923 = fadd fast float %2922, %2919
  %2924 = call float @dx.op.dot3.f32(i32 55, float %2909, float %2910, float %2911, float %1874, float %1875, float %1876)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = fmul fast float %2924, 0x3FDF454380000000
  %2926 = fmul fast float %2924, %2924
  %2927 = fmul fast float %2926, 0x3FEE471020000000
  %2928 = fadd fast float %2927, 0xBFD42F6020000000
  %2929 = call float @dx.op.dot3.f32(i32 55, float %2874, float %2912, float %2913, float 0x3FD20DD760000000, float %2925, float %2928)  ; Dot3(ax,ay,az,bx,by,bz)
  %2930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2845)  ; FMax(a,b)
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2858, float %2861, float %2864, float %2858, float %2861, float %2864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = fcmp fast oeq float %2931, 0.000000e+00
  %2933 = fcmp fast oeq float %2930, 0.000000e+00
  %2934 = or i1 %2933, %2932
  br i1 %2934, label %2964, label %2935

; <label>:2935                                    ; preds = %2908
  %2936 = fsub fast float -0.000000e+00, %2864
  %2937 = fsub fast float -0.000000e+00, %2858
  %2938 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %2939 = fdiv fast float %2938, %2930
  %2940 = fcmp fast ogt float %2939, 0x3FFB6F8900000000
  %2941 = select i1 %2940, float 0x3FFB6F8900000000, float %2939
  %2942 = fmul fast float %2941, 0x3FE8A23460000000
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  %2944 = call float @dx.op.binary.f32(i32 35, float %2941, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2945 = fmul fast float %2943, %2930
  %2946 = fmul fast float %2944, 0x3FF279A740000000
  %2947 = fadd fast float %2946, -1.000000e+00
  %2948 = call float @dx.op.dot3.f32(i32 55, float %2936, float %2937, float %2861, float %2936, float %2937, float %2861)  ; Dot3(ax,ay,az,bx,by,bz)
  %2949 = call float @dx.op.unary.f32(i32 25, float %2948)  ; Rsqrt(value)
  %2950 = fmul fast float %2949, %2936
  %2951 = fmul fast float %2949, %2937
  %2952 = fmul fast float %2949, %2861
  %2953 = fmul fast float %2947, %2947
  %2954 = fsub fast float 1.000000e+00, %2953
  %2955 = fmul fast float %2944, 0x40005F8BE0000000
  %2956 = fsub fast float 0x400C5BF8A0000000, %2955
  %2957 = fdiv fast float %2945, %2956
  %2958 = fmul fast float %2957, 0x3FEE31C3C0000000
  %2959 = fmul fast float %2958, %2954
  %2960 = fmul fast float %2944, 0x3FDACB7480000000
  %2961 = fadd fast float %2960, 0xBFD7347680000000
  %2962 = fmul fast float %2961, %2957
  %2963 = fmul fast float %2962, %2954
  br label %2964

; <label>:2964                                    ; preds = %2935, %2908
  %2965 = phi float [ %2950, %2935 ], [ 0.000000e+00, %2908 ]
  %2966 = phi float [ %2951, %2935 ], [ 0.000000e+00, %2908 ]
  %2967 = phi float [ %2952, %2935 ], [ 0.000000e+00, %2908 ]
  %2968 = phi float [ %2959, %2935 ], [ 0.000000e+00, %2908 ]
  %2969 = phi float [ %2963, %2935 ], [ 0.000000e+00, %2908 ]
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2965, float %2966, float %2967, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = fmul fast float %2970, %2970
  %2972 = fmul fast float %2971, 0x3FEE471020000000
  %2973 = fadd fast float %2972, 0xBFD42F6020000000
  %2974 = fmul fast float %2930, 0x3FD20DD760000000
  %2975 = fmul fast float %2973, %2969
  %2976 = fmul fast float %2968, 0x3FDF454380000000
  %2977 = fmul fast float %2976, %2970
  %2978 = fadd fast float %2977, %2974
  %2979 = fadd fast float %2978, %2975
  %2980 = call float @dx.op.dot3.f32(i32 55, float %2965, float %2966, float %2967, float %1874, float %1875, float %1876)  ; Dot3(ax,ay,az,bx,by,bz)
  %2981 = fmul fast float %2980, 0x3FDF454380000000
  %2982 = fmul fast float %2980, %2980
  %2983 = fmul fast float %2982, 0x3FEE471020000000
  %2984 = fadd fast float %2983, 0xBFD42F6020000000
  %2985 = call float @dx.op.dot3.f32(i32 55, float %2930, float %2968, float %2969, float 0x3FD20DD760000000, float %2981, float %2984)  ; Dot3(ax,ay,az,bx,by,bz)
  %2986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2846)  ; FMax(a,b)
  %2987 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2870, float %2873, float %2867, float %2870, float %2873)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = fcmp fast oeq float %2987, 0.000000e+00
  %2989 = fcmp fast oeq float %2986, 0.000000e+00
  %2990 = or i1 %2989, %2988
  br i1 %2990, label %3020, label %2991

; <label>:2991                                    ; preds = %2964
  %2992 = fsub fast float -0.000000e+00, %2873
  %2993 = fsub fast float -0.000000e+00, %2867
  %2994 = call float @dx.op.unary.f32(i32 24, float %2987)  ; Sqrt(value)
  %2995 = fdiv fast float %2994, %2986
  %2996 = fcmp fast ogt float %2995, 0x3FFB6F8900000000
  %2997 = select i1 %2996, float 0x3FFB6F8900000000, float %2995
  %2998 = fmul fast float %2997, 0x3FE8A23460000000
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  %3000 = call float @dx.op.binary.f32(i32 35, float %2997, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3001 = fmul fast float %2999, %2986
  %3002 = fmul fast float %3000, 0x3FF279A740000000
  %3003 = fadd fast float %3002, -1.000000e+00
  %3004 = call float @dx.op.dot3.f32(i32 55, float %2992, float %2993, float %2870, float %2992, float %2993, float %2870)  ; Dot3(ax,ay,az,bx,by,bz)
  %3005 = call float @dx.op.unary.f32(i32 25, float %3004)  ; Rsqrt(value)
  %3006 = fmul fast float %3005, %2992
  %3007 = fmul fast float %3005, %2993
  %3008 = fmul fast float %3005, %2870
  %3009 = fmul fast float %3003, %3003
  %3010 = fsub fast float 1.000000e+00, %3009
  %3011 = fmul fast float %3000, 0x40005F8BE0000000
  %3012 = fsub fast float 0x400C5BF8A0000000, %3011
  %3013 = fdiv fast float %3001, %3012
  %3014 = fmul fast float %3013, 0x3FEE31C3C0000000
  %3015 = fmul fast float %3014, %3010
  %3016 = fmul fast float %3000, 0x3FDACB7480000000
  %3017 = fadd fast float %3016, 0xBFD7347680000000
  %3018 = fmul fast float %3017, %3013
  %3019 = fmul fast float %3018, %3010
  br label %3020

; <label>:3020                                    ; preds = %2991, %2964
  %3021 = phi float [ %3006, %2991 ], [ 0.000000e+00, %2964 ]
  %3022 = phi float [ %3007, %2991 ], [ 0.000000e+00, %2964 ]
  %3023 = phi float [ %3008, %2991 ], [ 0.000000e+00, %2964 ]
  %3024 = phi float [ %3015, %2991 ], [ 0.000000e+00, %2964 ]
  %3025 = phi float [ %3019, %2991 ], [ 0.000000e+00, %2964 ]
  %3026 = call float @dx.op.dot3.f32(i32 55, float %3021, float %3022, float %3023, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = fmul fast float %3026, %3026
  %3028 = fmul fast float %3027, 0x3FEE471020000000
  %3029 = fadd fast float %3028, 0xBFD42F6020000000
  %3030 = fmul fast float %2986, 0x3FD20DD760000000
  %3031 = fmul fast float %3029, %3025
  %3032 = fmul fast float %3024, 0x3FDF454380000000
  %3033 = fmul fast float %3032, %3026
  %3034 = fadd fast float %3033, %3030
  %3035 = fadd fast float %3034, %3031
  %3036 = call float @dx.op.dot3.f32(i32 55, float %3021, float %3022, float %3023, float %1874, float %1875, float %1876)  ; Dot3(ax,ay,az,bx,by,bz)
  %3037 = fmul fast float %3036, 0x3FDF454380000000
  %3038 = fmul fast float %3036, %3036
  %3039 = fmul fast float %3038, 0x3FEE471020000000
  %3040 = fadd fast float %3039, 0xBFD42F6020000000
  %3041 = call float @dx.op.dot3.f32(i32 55, float %2986, float %3024, float %3025, float 0x3FD20DD760000000, float %3037, float %3040)  ; Dot3(ax,ay,az,bx,by,bz)
  %3042 = call float @dx.op.binary.f32(i32 35, float %2923, float 0.000000e+00)  ; FMax(a,b)
  %3043 = call float @dx.op.binary.f32(i32 35, float %2979, float 0.000000e+00)  ; FMax(a,b)
  %3044 = call float @dx.op.binary.f32(i32 35, float %3035, float 0.000000e+00)  ; FMax(a,b)
  %3045 = call float @dx.op.binary.f32(i32 35, float %2929, float 0.000000e+00)  ; FMax(a,b)
  %3046 = call float @dx.op.binary.f32(i32 35, float %2985, float 0.000000e+00)  ; FMax(a,b)
  %3047 = call float @dx.op.binary.f32(i32 35, float %3041, float 0.000000e+00)  ; FMax(a,b)
  %3048 = fsub fast float %2244, %3042
  %3049 = fsub fast float %2245, %3043
  %3050 = fsub fast float %2246, %3044
  %3051 = fmul fast float %3048, %1925
  %3052 = fmul fast float %3049, %1925
  %3053 = fmul fast float %3050, %1925
  %3054 = fadd fast float %3051, %3042
  %3055 = fadd fast float %3052, %3043
  %3056 = fadd fast float %3053, %3044
  %3057 = fsub fast float %2241, %3045
  %3058 = fsub fast float %2242, %3046
  %3059 = fsub fast float %2243, %3047
  %3060 = fmul fast float %3057, %1925
  %3061 = fmul fast float %3058, %1925
  %3062 = fmul fast float %3059, %1925
  %3063 = fadd fast float %3060, %3045
  %3064 = fadd fast float %3061, %3046
  %3065 = fadd fast float %3062, %3047
  br label %3066

; <label>:3066                                    ; preds = %3020, %2240
  %3067 = phi float [ %3063, %3020 ], [ %2241, %2240 ]
  %3068 = phi float [ %3064, %3020 ], [ %2242, %2240 ]
  %3069 = phi float [ %3065, %3020 ], [ %2243, %2240 ]
  %3070 = phi float [ %3054, %3020 ], [ %2244, %2240 ]
  %3071 = phi float [ %3055, %3020 ], [ %2245, %2240 ]
  %3072 = phi float [ %3056, %3020 ], [ %2246, %2240 ]
  %3073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3074 = extractvalue %dx.types.CBufRet.f32 %3073, 0
  %3075 = call float @dx.op.binary.f32(i32 36, float %1858, float %3074)  ; FMin(a,b)
  %3076 = fsub fast float 1.000000e+00, %1877
  %3077 = fmul fast float %3075, %3076
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = bitcast float %3078 to i32
  %3080 = sub nsw i32 2129859010, %3079
  %3081 = bitcast i32 %3080 to float
  %3082 = call float @dx.op.binary.f32(i32 36, float %1859, float %3074)  ; FMin(a,b)
  %3083 = fmul fast float %3082, %3076
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = bitcast float %3084 to i32
  %3086 = sub nsw i32 2129859010, %3085
  %3087 = bitcast i32 %3086 to float
  %3088 = call float @dx.op.binary.f32(i32 36, float %1860, float %3074)  ; FMin(a,b)
  %3089 = fmul fast float %3088, %3076
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = bitcast float %3090 to i32
  %3092 = sub nsw i32 2129859010, %3091
  %3093 = bitcast i32 %3092 to float
  %3094 = fmul fast float %3070, %1877
  %3095 = fmul fast float %3094, %3081
  %3096 = fmul fast float %3071, %1877
  %3097 = fmul fast float %3096, %3087
  %3098 = fmul fast float %3072, %1877
  %3099 = fmul fast float %3098, %3093
  %3100 = call float @dx.op.binary.f32(i32 36, float %1855, float %3074)  ; FMin(a,b)
  %3101 = fmul fast float %3100, %3076
  %3102 = fsub fast float 1.000000e+00, %3101
  %3103 = bitcast float %3102 to i32
  %3104 = sub nsw i32 2129859010, %3103
  %3105 = bitcast i32 %3104 to float
  %3106 = call float @dx.op.binary.f32(i32 36, float %1856, float %3074)  ; FMin(a,b)
  %3107 = fmul fast float %3106, %3076
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = bitcast float %3108 to i32
  %3110 = sub nsw i32 2129859010, %3109
  %3111 = bitcast i32 %3110 to float
  %3112 = call float @dx.op.binary.f32(i32 36, float %1866, float %3074)  ; FMin(a,b)
  %3113 = fmul fast float %3112, %3076
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = bitcast float %3114 to i32
  %3116 = sub nsw i32 2129859010, %3115
  %3117 = bitcast i32 %3116 to float
  %3118 = fmul fast float %3067, %1877
  %3119 = fmul fast float %3118, %3105
  %3120 = fmul fast float %3068, %1877
  %3121 = fmul fast float %3120, %3111
  %3122 = fmul fast float %3069, %1877
  %3123 = fmul fast float %3122, %3117
  %3124 = call float @dx.op.dot3.f32(i32 55, float %3095, float %3097, float %3099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3125 = select i1 %176, float 0.000000e+00, float %3095
  %3126 = select i1 %176, float %3124, float %3097
  %3127 = select i1 %176, float 0.000000e+00, float %3099
  %3128 = call float @dx.op.dot3.f32(i32 55, float %3119, float %3121, float %3123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3129 = select i1 %176, float 0.000000e+00, float %3119
  %3130 = select i1 %176, float %3128, float %3121
  %3131 = select i1 %176, float 0.000000e+00, float %3123
  %3132 = fmul fast float %1868, 9.843750e-01
  %3133 = fmul fast float %1864, 9.843750e-01
  %3134 = fadd fast float %3132, 7.812500e-03
  %3135 = fadd fast float %3133, 7.812500e-03
  %3136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3134, float %3135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3137 = extractvalue %dx.types.ResRet.f32 %3136, 2
  %3138 = extractvalue %dx.types.ResRet.f32 %3136, 3
  %3139 = fmul fast float %3137, %1855
  %3140 = fmul fast float %3137, %1856
  %3141 = fmul fast float %3137, %1866
  %3142 = fadd fast float %3139, %3138
  %3143 = fadd fast float %3140, %3138
  %3144 = fadd fast float %3141, %3138
  %3145 = fcmp fast ogt float %1232, 0.000000e+00
  br i1 %3145, label %3146, label %3172

; <label>:3146                                    ; preds = %3066
  %3147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1232, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3148 = extractvalue %dx.types.ResRet.f32 %3147, 0
  %3149 = extractvalue %dx.types.ResRet.f32 %3147, 1
  %3150 = extractvalue %dx.types.ResRet.f32 %3147, 2
  %3151 = fadd fast float %3148, -5.000000e-01
  %3152 = fadd fast float %3149, -5.000000e-01
  %3153 = fadd fast float %3150, -5.000000e-01
  %3154 = fsub fast float 1.000000e+00, %1855
  %3155 = fsub fast float 1.000000e+00, %1856
  %3156 = fsub fast float 1.000000e+00, %1866
  %3157 = fmul fast float %1855, 4.000000e+00
  %3158 = fmul fast float %3157, %3154
  %3159 = fmul fast float %3158, %3151
  %3160 = fmul fast float %1856, 4.000000e+00
  %3161 = fmul fast float %3160, %3155
  %3162 = fmul fast float %3161, %3152
  %3163 = fmul fast float %1866, 4.000000e+00
  %3164 = fmul fast float %3163, %3156
  %3165 = fmul fast float %3164, %3153
  %3166 = fadd fast float %3159, %3142
  %3167 = fadd fast float %3162, %3143
  %3168 = fadd fast float %3165, %3144
  %3169 = call float @dx.op.unary.f32(i32 7, float %3166)  ; Saturate(value)
  %3170 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  %3171 = call float @dx.op.unary.f32(i32 7, float %3168)  ; Saturate(value)
  br label %3172

; <label>:3172                                    ; preds = %3146, %3066
  %3173 = phi float [ %3169, %3146 ], [ %3142, %3066 ]
  %3174 = phi float [ %3170, %3146 ], [ %3143, %3066 ]
  %3175 = phi float [ %3171, %3146 ], [ %3144, %3066 ]
  %3176 = call float @dx.op.binary.f32(i32 35, float %3174, float %3175)  ; FMax(a,b)
  %3177 = call float @dx.op.binary.f32(i32 35, float %3173, float %3176)  ; FMax(a,b)
  %3178 = fsub fast float 1.000000e+00, %3177
  %3179 = fmul fast float %3178, %3125
  %3180 = fmul fast float %3178, %3126
  %3181 = fmul fast float %3178, %3127
  %3182 = call float @dx.op.dot3.f32(i32 55, float %1858, float %1859, float %1860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = fcmp fast ogt float %3182, 0x3E7FF19E20000000
  %3184 = fdiv fast float 1.000000e+00, %3182
  %3185 = select i1 %3183, float %3184, float 0.000000e+00
  %3186 = fmul fast float %3185, %1858
  %3187 = fmul fast float %3185, %1859
  %3188 = fmul fast float %3185, %1860
  %3189 = fadd fast float %3186, -1.000000e+00
  %3190 = fadd fast float %3187, -1.000000e+00
  %3191 = fadd fast float %3188, -1.000000e+00
  %3192 = fmul fast float %3189, 5.000000e-01
  %3193 = fmul fast float %3190, 5.000000e-01
  %3194 = fmul fast float %3191, 5.000000e-01
  %3195 = fadd fast float %3192, 1.000000e+00
  %3196 = fadd fast float %3193, 1.000000e+00
  %3197 = fadd fast float %3194, 1.000000e+00
  %3198 = fmul fast float %3173, %3129
  %3199 = fmul fast float %3174, %3130
  %3200 = fmul fast float %3175, %3131
  %3201 = fsub fast float 1.000000e+00, %1868
  %3202 = bitcast float %3201 to i32
  %3203 = sitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 5.000000e+00
  %3205 = fadd fast float %3204, 0xC1EFBF8940000000
  %3206 = fptosi float %3205 to i32
  %3207 = bitcast i32 %3206 to float
  %3208 = fmul fast float %3207, %1231
  %3209 = fmul fast float %3125, %3208
  %3210 = fmul fast float %3209, %3178
  %3211 = fmul fast float %3210, %3195
  %3212 = fmul fast float %3126, %3208
  %3213 = fmul fast float %3212, %3178
  %3214 = fmul fast float %3213, %3196
  %3215 = fmul fast float %3127, %3208
  %3216 = fmul fast float %3215, %3178
  %3217 = fmul fast float %3216, %3197
  %3218 = fmul fast float %3179, %1252
  %3219 = fmul fast float %3180, %1252
  %3220 = fmul fast float %3181, %1252
  %3221 = fadd fast float %3198, %1233
  %3222 = fadd fast float %3221, %3211
  %3223 = fmul fast float %3222, %1252
  %3224 = fadd fast float %3199, %1234
  %3225 = fadd fast float %3224, %3214
  %3226 = fmul fast float %3225, %1252
  %3227 = fadd fast float %3200, %1235
  %3228 = fadd fast float %3227, %3217
  %3229 = fmul fast float %3228, %1252
  %3230 = bitcast i32 %1880 to float
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 3
  %3233 = fcmp fast oeq float %3232, 0.000000e+00
  br i1 %3233, label %3461, label %3234

; <label>:3234                                    ; preds = %3172
  %3235 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3236 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3237 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3241 = extractvalue %dx.types.CBufRet.f32 %3238, 2
  %3242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3243 = extractvalue %dx.types.CBufRet.f32 %3242, 0
  %3244 = extractvalue %dx.types.CBufRet.f32 %3242, 1
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3239, float %3240, float %3241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = select i1 %176, float %3243, float %3239
  %3247 = select i1 %176, float %3245, float %3240
  %3248 = select i1 %176, float %3244, float %3241
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 1
  %3251 = fcmp fast une float %3250, 0.000000e+00
  br i1 %3251, label %3252, label %3269

; <label>:3252                                    ; preds = %3234
  %3253 = fptoui float %58 to i32
  %3254 = fptoui float %59 to i32
  %3255 = lshr i32 %3253, 4
  %3256 = lshr i32 %3254, 4
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 0
  %3259 = fptoui float %3258 to i32
  %3260 = add i32 %3259, 15
  %3261 = lshr i32 %3260, 4
  %3262 = mul i32 %3261, %3256
  %3263 = add i32 %3262, %3255
  %3264 = shl i32 %3263, 3
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, -268435456
  %3268 = icmp eq i32 %3267, -1342177280
  br i1 %3268, label %3279, label %3269

; <label>:3269                                    ; preds = %3252, %3234
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 2
  %3272 = extractvalue %dx.types.CBufRet.f32 %3270, 3
  %3273 = fmul fast float %3271, %58
  %3274 = fmul fast float %3272, %59
  %3275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3273, float %3274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.ResRet.f32 %3275, 1
  %3278 = extractvalue %dx.types.ResRet.f32 %3275, 2
  br label %3279

; <label>:3279                                    ; preds = %3269, %3252
  %3280 = phi float [ %3276, %3269 ], [ 0.000000e+00, %3252 ]
  %3281 = phi float [ %3277, %3269 ], [ 0.000000e+00, %3252 ]
  %3282 = phi float [ %3278, %3269 ], [ 0.000000e+00, %3252 ]
  %3283 = call float @dx.op.binary.f32(i32 36, float %3281, float %3282)  ; FMin(a,b)
  %3284 = call float @dx.op.binary.f32(i32 36, float %3280, float %3283)  ; FMin(a,b)
  %3285 = fcmp fast ogt float %3284, 0.000000e+00
  br i1 %3285, label %3286, label %3461, !dx.controlflow.hints !79

; <label>:3286                                    ; preds = %3279
  %3287 = fmul fast float %3280, %3246
  %3288 = fmul fast float %3281, %3247
  %3289 = fmul fast float %3282, %3248
  %3290 = fsub fast float %3235, %1854
  %3291 = fsub fast float %3236, %1853
  %3292 = fsub fast float %3237, %1852
  %3293 = call float @dx.op.dot3.f32(i32 55, float %3290, float %3291, float %3292, float %3290, float %3291, float %3292)  ; Dot3(ax,ay,az,bx,by,bz)
  %3294 = call float @dx.op.unary.f32(i32 25, float %3293)  ; Rsqrt(value)
  %3295 = fmul fast float %3294, %3290
  %3296 = fmul fast float %3294, %3291
  %3297 = fmul fast float %3294, %3292
  %3298 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3236, float %3237, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3299 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1850, float %1849, float %3295, float %3296, float %3297)  ; Dot3(ax,ay,az,bx,by,bz)
  %3300 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3301 = fmul fast float %3300, %3300
  %3302 = fmul fast float %3301, %3230
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3304 = fmul fast float %3303, %3300
  %3305 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float %3295, float %3296, float %3297)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fmul fast float %3305, %3305
  %3307 = call float @dx.op.unary.f32(i32 6, float %3298)  ; FAbs(value)
  %3308 = fsub fast float 1.000000e+00, %1864
  %3309 = call float @dx.op.binary.f32(i32 35, float %3308, float 0x3F847AE140000000)  ; FMax(a,b)
  %3310 = fmul fast float %3309, %3309
  %3311 = fmul fast float %3310, %3310
  %3312 = fsub fast float 1.000000e+00, %3311
  %3313 = fmul fast float %1868, %1868
  %3314 = fmul fast float %3313, %3312
  %3315 = fadd fast float %3314, %3311
  %3316 = bitcast float %3315 to i32
  %3317 = ashr i32 %3316, 1
  %3318 = add nsw i32 %3317, 532487669
  %3319 = bitcast i32 %3318 to float
  %3320 = fadd fast float %3319, %1868
  %3321 = fmul fast float %3311, %3306
  %3322 = fsub fast float 1.000000e+00, %3306
  %3323 = fadd fast float %3322, %3321
  %3324 = fmul fast float %3307, %3307
  %3325 = fmul fast float %3324, %3312
  %3326 = fadd fast float %3325, %3311
  %3327 = bitcast float %3326 to i32
  %3328 = ashr i32 %3327, 1
  %3329 = add nsw i32 %3328, 532487669
  %3330 = bitcast i32 %3329 to float
  %3331 = fadd fast float %3330, %3307
  %3332 = fmul fast float %3323, %3323
  %3333 = fmul fast float %3332, %3320
  %3334 = fmul fast float %3333, %3331
  %3335 = fdiv fast float 0x3FF0A00000000000, %3334
  %3336 = fmul fast float %3335, %3311
  %3337 = call float @dx.op.unary.f32(i32 6, float %3299)  ; FAbs(value)
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = bitcast float %3338 to i32
  %3340 = sitofp i32 %3339 to float
  %3341 = fmul fast float %3340, 5.000000e+00
  %3342 = fadd fast float %3341, 0xC1EFBF8940000000
  %3343 = fptosi float %3342 to i32
  %3344 = bitcast i32 %3343 to float
  %3345 = fsub fast float 1.000000e+00, %1855
  %3346 = fsub fast float 1.000000e+00, %1856
  %3347 = fsub fast float 1.000000e+00, %1866
  %3348 = fmul fast float %3344, %3345
  %3349 = fmul fast float %3344, %3346
  %3350 = fmul fast float %3344, %3347
  %3351 = fadd fast float %3348, %1855
  %3352 = fadd fast float %3349, %1856
  %3353 = fadd fast float %3350, %1866
  br i1 %3145, label %3354, label %3377

; <label>:3354                                    ; preds = %3286
  %3355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1232, float %3337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3358 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3359 = fadd fast float %3356, -5.000000e-01
  %3360 = fadd fast float %3357, -5.000000e-01
  %3361 = fadd fast float %3358, -5.000000e-01
  %3362 = fmul fast float %1855, 4.000000e+00
  %3363 = fmul fast float %3362, %3345
  %3364 = fmul fast float %3363, %3359
  %3365 = fmul fast float %1856, 4.000000e+00
  %3366 = fmul fast float %3365, %3346
  %3367 = fmul fast float %3366, %3360
  %3368 = fmul fast float %1866, 4.000000e+00
  %3369 = fmul fast float %3368, %3347
  %3370 = fmul fast float %3369, %3361
  %3371 = fadd fast float %3364, %3351
  %3372 = fadd fast float %3367, %3352
  %3373 = fadd fast float %3370, %3353
  %3374 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3375 = call float @dx.op.unary.f32(i32 7, float %3372)  ; Saturate(value)
  %3376 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  br label %3377

; <label>:3377                                    ; preds = %3354, %3286
  %3378 = phi float [ %3374, %3354 ], [ %3351, %3286 ]
  %3379 = phi float [ %3375, %3354 ], [ %3352, %3286 ]
  %3380 = phi float [ %3376, %3354 ], [ %3353, %3286 ]
  %3381 = fmul fast float %3298, 9.843750e-01
  %3382 = fadd fast float %3381, 7.812500e-03
  %3383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3382, float %3135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 3
  %3386 = fmul fast float %3384, %1855
  %3387 = fmul fast float %3384, %1856
  %3388 = fmul fast float %3384, %1866
  %3389 = fadd fast float %3386, %3385
  %3390 = fadd fast float %3387, %3385
  %3391 = fadd fast float %3388, %3385
  br i1 %3145, label %3392, label %3415

; <label>:3392                                    ; preds = %3377
  %3393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1232, float %3298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = fadd fast float %3394, -5.000000e-01
  %3398 = fadd fast float %3395, -5.000000e-01
  %3399 = fadd fast float %3396, -5.000000e-01
  %3400 = fmul fast float %1855, 4.000000e+00
  %3401 = fmul fast float %3400, %3345
  %3402 = fmul fast float %3401, %3397
  %3403 = fmul fast float %1856, 4.000000e+00
  %3404 = fmul fast float %3403, %3346
  %3405 = fmul fast float %3404, %3398
  %3406 = fmul fast float %1866, 4.000000e+00
  %3407 = fmul fast float %3406, %3347
  %3408 = fmul fast float %3407, %3399
  %3409 = fadd fast float %3402, %3389
  %3410 = fadd fast float %3405, %3390
  %3411 = fadd fast float %3408, %3391
  %3412 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3413 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3414 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  br label %3415

; <label>:3415                                    ; preds = %3392, %3377
  %3416 = phi float [ %3412, %3392 ], [ %3389, %3377 ]
  %3417 = phi float [ %3413, %3392 ], [ %3390, %3377 ]
  %3418 = phi float [ %3414, %3392 ], [ %3391, %3377 ]
  %3419 = call float @dx.op.binary.f32(i32 35, float %3417, float %3418)  ; FMax(a,b)
  %3420 = call float @dx.op.binary.f32(i32 35, float %3416, float %3419)  ; FMax(a,b)
  %3421 = fsub fast float 1.000000e+00, %3420
  %3422 = fmul fast float %3378, %3336
  %3423 = fmul fast float %3379, %3336
  %3424 = fmul fast float %3380, %3336
  %3425 = fsub fast float 1.000000e+00, %3299
  %3426 = bitcast float %3425 to i32
  %3427 = sitofp i32 %3426 to float
  %3428 = fmul fast float %3427, 5.000000e+00
  %3429 = fadd fast float %3428, 0xC1EFBF8940000000
  %3430 = fptosi float %3429 to i32
  %3431 = bitcast i32 %3430 to float
  %3432 = fmul fast float %3431, %1231
  %3433 = fmul fast float %3421, %3432
  %3434 = fmul fast float %3433, %3195
  %3435 = fmul fast float %3433, %3196
  %3436 = fmul fast float %3433, %3197
  %3437 = fadd fast float %3434, %3422
  %3438 = fadd fast float %3435, %3423
  %3439 = fadd fast float %3436, %3424
  %3440 = fmul fast float %3304, %3287
  %3441 = fmul fast float %3440, %3421
  %3442 = fmul fast float %3304, %3288
  %3443 = fmul fast float %3442, %3421
  %3444 = fmul fast float %3304, %3289
  %3445 = fmul fast float %3444, %3421
  %3446 = fmul fast float %3440, %3437
  %3447 = fmul fast float %3442, %3438
  %3448 = fmul fast float %3444, %3439
  %3449 = fadd fast float %3441, %3179
  %3450 = fmul fast float %3449, %1252
  %3451 = fadd fast float %3443, %3180
  %3452 = fmul fast float %3451, %1252
  %3453 = fadd fast float %3445, %3181
  %3454 = fmul fast float %3453, %1252
  %3455 = fadd fast float %3446, %3222
  %3456 = fmul fast float %3455, %1252
  %3457 = fadd fast float %3447, %3225
  %3458 = fmul fast float %3457, %1252
  %3459 = fadd fast float %3448, %3228
  %3460 = fmul fast float %3459, %1252
  br label %3461

; <label>:3461                                    ; preds = %3415, %3279, %3172
  %3462 = phi float [ %3223, %3172 ], [ %3223, %3279 ], [ %3456, %3415 ]
  %3463 = phi float [ %3226, %3172 ], [ %3226, %3279 ], [ %3458, %3415 ]
  %3464 = phi float [ %3229, %3172 ], [ %3229, %3279 ], [ %3460, %3415 ]
  %3465 = phi float [ %3218, %3172 ], [ %3218, %3279 ], [ %3450, %3415 ]
  %3466 = phi float [ %3219, %3172 ], [ %3219, %3279 ], [ %3452, %3415 ]
  %3467 = phi float [ %3220, %3172 ], [ %3220, %3279 ], [ %3454, %3415 ]
  %3468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3469 = extractvalue %dx.types.CBufRet.i32 %3468, 0
  %3470 = icmp eq i32 %3469, 0
  br i1 %3470, label %3905, label %3471

; <label>:3471                                    ; preds = %3461
  %3472 = fptoui float %58 to i32
  %3473 = fptoui float %59 to i32
  %3474 = lshr i32 %3472, 4
  %3475 = lshr i32 %3473, 4
  %3476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.i32 %3476, 0
  %3478 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3475, i32 %3477, i32 %3474)  ; UMad(a,b,c)
  %3479 = add nsw i32 %3469, -1
  %3480 = call i32 @dx.op.binary.i32(i32 37, i32 %3479, i32 0)  ; IMax(a,b)
  %3481 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3482 = fptoui float %3481 to i32
  %3483 = lshr i32 %3482, 5
  %3484 = call i32 @dx.op.binary.i32(i32 40, i32 %3483, i32 8191)  ; UMin(a,b)
  %3485 = shl i32 %3484, 2
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = lshr i32 %3487, 16
  %3489 = and i32 %3487, 65535
  %3490 = lshr i32 %3487, 21
  %3491 = lshr i32 %3489, 5
  %3492 = call i32 @dx.op.binary.i32(i32 40, i32 %3491, i32 %3480)  ; UMin(a,b)
  %3493 = icmp ugt i32 %3490, %3492
  br i1 %3493, label %3905, label %3494

; <label>:3494                                    ; preds = %3471
  br label %3495

; <label>:3495                                    ; preds = %3895, %3494
  %3496 = phi i32 [ %3902, %3895 ], [ %3490, %3494 ]
  %3497 = phi float [ %3896, %3895 ], [ %3462, %3494 ]
  %3498 = phi float [ %3897, %3895 ], [ %3463, %3494 ]
  %3499 = phi float [ %3898, %3895 ], [ %3464, %3494 ]
  %3500 = phi float [ %3899, %3895 ], [ %3465, %3494 ]
  %3501 = phi float [ %3900, %3895 ], [ %3466, %3494 ]
  %3502 = phi float [ %3901, %3895 ], [ %3467, %3494 ]
  %3503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.i32 %3503, 0
  %3505 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3478, i32 %3504, i32 %3496)  ; UMad(a,b,c)
  %3506 = shl i32 %3505, 2
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = shl i32 %3496, 5
  %3510 = sub nsw i32 %3488, %3509
  %3511 = call i32 @dx.op.binary.i32(i32 37, i32 %3510, i32 0)  ; IMax(a,b)
  %3512 = call i32 @dx.op.binary.i32(i32 38, i32 %3511, i32 31)  ; IMin(a,b)
  %3513 = sub nsw i32 1, %3488
  %3514 = add nsw i32 %3513, %3489
  %3515 = call i32 @dx.op.binary.i32(i32 37, i32 %3514, i32 0)  ; IMax(a,b)
  %3516 = call i32 @dx.op.binary.i32(i32 38, i32 %3515, i32 32)  ; IMin(a,b)
  %3517 = and i32 %3516, 31
  %3518 = shl i32 -1, %3517
  %3519 = xor i32 %3518, -1
  %3520 = and i32 %3512, 31
  %3521 = shl i32 %3519, %3520
  %3522 = icmp eq i32 %3516, 32
  %3523 = select i1 %3522, i32 -1, i32 %3521
  %3524 = and i32 %3523, %3508
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3895, label %3526

; <label>:3526                                    ; preds = %3495
  br label %3527

; <label>:3527                                    ; preds = %3607, %3526
  %3528 = phi i32 [ %3539, %3607 ], [ %3524, %3526 ]
  %3529 = phi float [ %3608, %3607 ], [ %3497, %3526 ]
  %3530 = phi float [ %3609, %3607 ], [ %3498, %3526 ]
  %3531 = phi float [ %3610, %3607 ], [ %3499, %3526 ]
  %3532 = phi float [ %3611, %3607 ], [ %3500, %3526 ]
  %3533 = phi float [ %3612, %3607 ], [ %3501, %3526 ]
  %3534 = phi float [ %3613, %3607 ], [ %3502, %3526 ]
  %3535 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3528)  ; FirstbitLo(value)
  %3536 = add i32 %3535, %3509
  %3537 = and i32 %3535, 31
  %3538 = shl i32 1, %3537
  %3539 = xor i32 %3538, %3528
  %3540 = mul i32 %3536, 112
  %3541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.ResRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.ResRet.f32 %3541, 2
  %3545 = or i32 %3540, 12
  %3546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = add i32 %3540, 44
  %3549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = add i32 %3540, 48
  %3552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = add i32 %3540, 80
  %3557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3557, 2
  %3560 = call float @dx.op.dot3.f32(i32 55, float %3542, float %3543, float %3544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3561 = select i1 %176, float %3558, float %3542
  %3562 = select i1 %176, float %3560, float %3543
  %3563 = select i1 %176, float %3559, float %3544
  %3564 = fsub fast float %3553, %105
  %3565 = fsub fast float %3554, %106
  %3566 = fsub fast float %3555, %107
  %3567 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3566, float %3564, float %3565, float %3566)  ; Dot3(ax,ay,az,bx,by,bz)
  %3568 = call float @dx.op.unary.f32(i32 24, float %3567)  ; Sqrt(value)
  %3569 = fdiv fast float 1.000000e+00, %3568
  %3570 = fmul fast float %3569, %3564
  %3571 = fmul fast float %3569, %3565
  %3572 = fmul fast float %3569, %3566
  %3573 = fadd fast float %3568, %3547
  %3574 = fdiv fast float 1.000000e+00, %3573
  %3575 = fmul float %3550, %3574
  %3576 = fmul float %3575, %3575
  %3577 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3578 = and i32 %3538, %3524
  %3579 = icmp eq i32 %3578, 0
  br i1 %3579, label %3602, label %3580, !dx.controlflow.hints !80

; <label>:3580                                    ; preds = %3527
  %3581 = lshr i32 %3472, 5
  %3582 = lshr i32 %3473, 5
  %3583 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3581, i32 %3582, i32 %3536, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, 3
  %3586 = icmp eq i32 %3585, 0
  %3587 = select i1 %3586, float 1.000000e+00, float 0.000000e+00
  %3588 = icmp eq i32 %3585, 3
  br i1 %3588, label %3589, label %3602

; <label>:3589                                    ; preds = %3580
  %3590 = lshr i32 %3584, 10
  %3591 = and i32 %3590, 8160
  %3592 = and i32 %3473, 31
  %3593 = or i32 %3591, %3592
  %3594 = lshr i32 %3584, 1
  %3595 = and i32 %3594, 16352
  %3596 = and i32 %3472, 31
  %3597 = or i32 %3595, %3596
  %3598 = lshr i32 %3584, 23
  %3599 = and i32 %3598, 255
  %3600 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3597, i32 %3593, i32 %3599, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  br label %3602

; <label>:3602                                    ; preds = %3589, %3580, %3527
  %3603 = phi float [ %3601, %3589 ], [ %3587, %3580 ], [ 0.000000e+00, %3527 ]
  %3604 = call float @dx.op.binary.f32(i32 36, float %3603, float %3603)  ; FMin(a,b)
  %3605 = call float @dx.op.binary.f32(i32 36, float %3603, float %3604)  ; FMin(a,b)
  %3606 = fcmp fast ogt float %3605, 0.000000e+00
  br i1 %3606, label %3615, label %3607, !dx.controlflow.hints !81

; <label>:3607                                    ; preds = %3851, %3602
  %3608 = phi float [ %3529, %3602 ], [ %3891, %3851 ]
  %3609 = phi float [ %3530, %3602 ], [ %3892, %3851 ]
  %3610 = phi float [ %3531, %3602 ], [ %3893, %3851 ]
  %3611 = phi float [ %3532, %3602 ], [ %3885, %3851 ]
  %3612 = phi float [ %3533, %3602 ], [ %3886, %3851 ]
  %3613 = phi float [ %3534, %3602 ], [ %3887, %3851 ]
  %3614 = icmp eq i32 %3528, %3538
  br i1 %3614, label %3894, label %3527

; <label>:3615                                    ; preds = %3602
  %3616 = fmul fast float %3603, %3561
  %3617 = fmul fast float %3603, %3562
  %3618 = fmul fast float %3603, %3563
  %3619 = fsub fast float %3555, %1654
  %3620 = fcmp fast ogt float %3619, 0.000000e+00
  %3621 = fsub fast float %107, %1654
  %3622 = fcmp fast ogt float %3621, 0.000000e+00
  %3623 = xor i1 %3622, %3620
  %3624 = fsub fast float %1654, %3555
  %3625 = fmul fast float %3624, 2.000000e+00
  %3626 = fadd fast float %3625, %3555
  %3627 = select i1 %3623, float %3555, float %3626
  %3628 = fsub fast float %3627, %107
  %3629 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3628, float %3564, float %3565, float %3628)  ; Dot3(ax,ay,az,bx,by,bz)
  %3630 = call float @dx.op.unary.f32(i32 25, float %3629)  ; Rsqrt(value)
  %3631 = fmul fast float %3630, %3564
  %3632 = fmul fast float %3630, %3565
  %3633 = fmul fast float %3630, %3628
  %3634 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1662)  ; Dot3(ax,ay,az,bx,by,bz)
  %3635 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %3636 = fdiv fast float 1.000000e+00, %3635
  %3637 = fmul fast float %3636, %3634
  %3638 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3621, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3639 = fcmp fast ogt float %3638, 0.000000e+00
  %3640 = fcmp fast olt float %3638, 0.000000e+00
  %3641 = zext i1 %3639 to i32
  %3642 = zext i1 %3640 to i32
  %3643 = sub nsw i32 %3641, %3642
  %3644 = sitofp i32 %3643 to float
  %3645 = fsub fast float %3627, %1654
  %3646 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3645, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3647 = fcmp fast ogt float %3646, 0.000000e+00
  %3648 = fcmp fast olt float %3646, 0.000000e+00
  %3649 = zext i1 %3647 to i32
  %3650 = zext i1 %3648 to i32
  %3651 = sub nsw i32 %3649, %3650
  %3652 = sitofp i32 %3651 to float
  %3653 = fcmp fast une float %3644, %3652
  br i1 %3653, label %3654, label %3664

; <label>:3654                                    ; preds = %3615
  %3655 = fmul fast float %3637, %3633
  %3656 = fmul fast float %3637, %3632
  %3657 = fmul fast float %3637, %3631
  %3658 = fmul fast float %3657, %3657
  %3659 = fmul fast float %3656, %3656
  %3660 = fadd fast float %3658, %3659
  %3661 = fmul fast float %3655, %3655
  %3662 = fadd fast float %3660, %3661
  %3663 = call float @dx.op.unary.f32(i32 24, float %3662)  ; Sqrt(value)
  br label %3676

; <label>:3664                                    ; preds = %3615
  %3665 = icmp slt i32 %3643, 0
  br i1 %3665, label %3666, label %3676

; <label>:3666                                    ; preds = %3664
  %3667 = fsub fast float %105, %3553
  %3668 = fsub fast float %106, %3554
  %3669 = fsub fast float %107, %3627
  %3670 = fmul fast float %3667, %3667
  %3671 = fmul fast float %3668, %3668
  %3672 = fadd fast float %3670, %3671
  %3673 = fmul fast float %3669, %3669
  %3674 = fadd fast float %3672, %3673
  %3675 = call float @dx.op.unary.f32(i32 24, float %3674)  ; Sqrt(value)
  br label %3676

; <label>:3676                                    ; preds = %3666, %3664, %3654
  %3677 = phi float [ %3663, %3654 ], [ %3675, %3666 ], [ 0.000000e+00, %3664 ]
  %3678 = and i1 %3622, %3620
  %3679 = fsub fast float -0.000000e+00, %3677
  %3680 = select i1 %3678, float -0.000000e+00, float %3679
  %3681 = fmul fast float %1655, 0x3FF7154760000000
  %3682 = fmul fast float %3681, %3680
  %3683 = fmul fast float %1656, 0x3FF7154760000000
  %3684 = fmul fast float %3683, %3680
  %3685 = fmul fast float %1657, 0x3FF7154760000000
  %3686 = fmul fast float %3685, %3680
  %3687 = call float @dx.op.unary.f32(i32 21, float %3682)  ; Exp(value)
  %3688 = call float @dx.op.unary.f32(i32 21, float %3684)  ; Exp(value)
  %3689 = call float @dx.op.unary.f32(i32 21, float %3686)  ; Exp(value)
  %3690 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3691 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3692 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3693 = fmul fast float %3616, %3690
  %3694 = fmul fast float %3617, %3691
  %3695 = fmul fast float %3618, %3692
  %3696 = fsub fast float %3570, %1854
  %3697 = fsub fast float %3571, %1853
  %3698 = fsub fast float %3572, %1852
  %3699 = call float @dx.op.dot3.f32(i32 55, float %3696, float %3697, float %3698, float %3696, float %3697, float %3698)  ; Dot3(ax,ay,az,bx,by,bz)
  %3700 = call float @dx.op.unary.f32(i32 25, float %3699)  ; Rsqrt(value)
  %3701 = fmul fast float %3700, %3696
  %3702 = fmul fast float %3700, %3697
  %3703 = fmul fast float %3700, %3698
  %3704 = call float @dx.op.dot3.f32(i32 55, float %3570, float %3571, float %3572, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3705 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1850, float %1849, float %3701, float %3702, float %3703)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3707 = fmul fast float %3706, %3577
  %3708 = fmul fast float %3706, %3706
  %3709 = fmul fast float %3708, %3230
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3711 = fmul fast float %3707, %3710
  %3712 = bitcast float %3567 to i32
  %3713 = ashr i32 %3712, 1
  %3714 = sub nsw i32 1597463007, %3713
  %3715 = bitcast i32 %3714 to float
  %3716 = fmul fast float %3715, %3564
  %3717 = fmul fast float %3715, %3565
  %3718 = fmul fast float %3715, %3566
  %3719 = fsub fast float %3716, %1854
  %3720 = fsub fast float %3717, %1853
  %3721 = fsub fast float %3718, %1852
  %3722 = call float @dx.op.dot3.f32(i32 55, float %3719, float %3720, float %3721, float %3719, float %3720, float %3721)  ; Dot3(ax,ay,az,bx,by,bz)
  %3723 = call float @dx.op.unary.f32(i32 25, float %3722)  ; Rsqrt(value)
  %3724 = fmul fast float %3719, %3723
  %3725 = fmul fast float %3720, %3723
  %3726 = fmul fast float %3721, %3723
  %3727 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float %3724, float %3725, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = fmul fast float %3727, %3727
  %3729 = call float @dx.op.unary.f32(i32 6, float %3704)  ; FAbs(value)
  %3730 = fsub fast float 1.000000e+00, %1864
  %3731 = call float @dx.op.binary.f32(i32 35, float %3730, float 0x3F847AE140000000)  ; FMax(a,b)
  %3732 = fmul fast float %3731, %3731
  %3733 = fmul fast float %3732, %3732
  %3734 = fsub fast float 1.000000e+00, %3733
  %3735 = fmul fast float %1868, %1868
  %3736 = fmul fast float %3735, %3734
  %3737 = fadd fast float %3736, %3733
  %3738 = bitcast float %3737 to i32
  %3739 = ashr i32 %3738, 1
  %3740 = add nsw i32 %3739, 532487669
  %3741 = bitcast i32 %3740 to float
  %3742 = fadd fast float %3741, %1868
  %3743 = fmul fast float %3733, %3728
  %3744 = fsub fast float 1.000000e+00, %3728
  %3745 = fadd fast float %3744, %3743
  %3746 = fmul fast float %3729, %3729
  %3747 = fmul fast float %3746, %3734
  %3748 = fadd fast float %3747, %3733
  %3749 = bitcast float %3748 to i32
  %3750 = ashr i32 %3749, 1
  %3751 = add nsw i32 %3750, 532487669
  %3752 = bitcast i32 %3751 to float
  %3753 = fadd fast float %3752, %3729
  %3754 = fmul fast float %3745, %3745
  %3755 = fmul fast float %3754, %3742
  %3756 = fmul fast float %3755, %3753
  %3757 = fdiv fast float 1.000000e+00, %3756
  %3758 = bitcast float %3733 to i32
  %3759 = sitofp i32 %3758 to float
  %3760 = fmul fast float %3759, 0x3FE7F73180000000
  %3761 = fadd fast float %3760, 0x41AFE27C40000000
  %3762 = fptosi float %3761 to i32
  %3763 = bitcast i32 %3762 to float
  %3764 = fmul fast float %3550, 0x3FD80E9D60000000
  %3765 = fmul fast float %3764, %3715
  %3766 = fadd fast float %3763, %3765
  %3767 = bitcast float %3766 to i32
  %3768 = sub nsw i32 2129859010, %3767
  %3769 = bitcast i32 %3768 to float
  %3770 = fmul fast float %3733, %3757
  %3771 = fmul fast float %3770, %3763
  %3772 = fmul fast float %3771, %3769
  %3773 = call float @dx.op.unary.f32(i32 6, float %3705)  ; FAbs(value)
  %3774 = fsub fast float 1.000000e+00, %3773
  %3775 = bitcast float %3774 to i32
  %3776 = sitofp i32 %3775 to float
  %3777 = fmul fast float %3776, 5.000000e+00
  %3778 = fadd fast float %3777, 0xC1EFBF8940000000
  %3779 = fptosi float %3778 to i32
  %3780 = bitcast i32 %3779 to float
  %3781 = fsub fast float 1.000000e+00, %1855
  %3782 = fsub fast float 1.000000e+00, %1856
  %3783 = fsub fast float 1.000000e+00, %1866
  %3784 = fmul fast float %3780, %3781
  %3785 = fmul fast float %3780, %3782
  %3786 = fmul fast float %3780, %3783
  %3787 = fadd fast float %3784, %1855
  %3788 = fadd fast float %3785, %1856
  %3789 = fadd fast float %3786, %1866
  br i1 %3145, label %3790, label %3813

; <label>:3790                                    ; preds = %3676
  %3791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1232, float %3773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3792 = extractvalue %dx.types.ResRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.ResRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.ResRet.f32 %3791, 2
  %3795 = fadd fast float %3792, -5.000000e-01
  %3796 = fadd fast float %3793, -5.000000e-01
  %3797 = fadd fast float %3794, -5.000000e-01
  %3798 = fmul fast float %1855, 4.000000e+00
  %3799 = fmul fast float %3798, %3781
  %3800 = fmul fast float %3799, %3795
  %3801 = fmul fast float %1856, 4.000000e+00
  %3802 = fmul fast float %3801, %3782
  %3803 = fmul fast float %3802, %3796
  %3804 = fmul fast float %1866, 4.000000e+00
  %3805 = fmul fast float %3804, %3783
  %3806 = fmul fast float %3805, %3797
  %3807 = fadd fast float %3800, %3787
  %3808 = fadd fast float %3803, %3788
  %3809 = fadd fast float %3806, %3789
  %3810 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3811 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3812 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  br label %3813

; <label>:3813                                    ; preds = %3790, %3676
  %3814 = phi float [ %3810, %3790 ], [ %3787, %3676 ]
  %3815 = phi float [ %3811, %3790 ], [ %3788, %3676 ]
  %3816 = phi float [ %3812, %3790 ], [ %3789, %3676 ]
  %3817 = fmul fast float %3704, 9.843750e-01
  %3818 = fadd fast float %3817, 7.812500e-03
  %3819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3818, float %3135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3822 = fmul fast float %3820, %1855
  %3823 = fmul fast float %3820, %1856
  %3824 = fmul fast float %3820, %1866
  %3825 = fadd fast float %3822, %3821
  %3826 = fadd fast float %3823, %3821
  %3827 = fadd fast float %3824, %3821
  br i1 %3145, label %3828, label %3851

; <label>:3828                                    ; preds = %3813
  %3829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1232, float %3704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3833 = fadd fast float %3830, -5.000000e-01
  %3834 = fadd fast float %3831, -5.000000e-01
  %3835 = fadd fast float %3832, -5.000000e-01
  %3836 = fmul fast float %1855, 4.000000e+00
  %3837 = fmul fast float %3836, %3781
  %3838 = fmul fast float %3837, %3833
  %3839 = fmul fast float %1856, 4.000000e+00
  %3840 = fmul fast float %3839, %3782
  %3841 = fmul fast float %3840, %3834
  %3842 = fmul fast float %1866, 4.000000e+00
  %3843 = fmul fast float %3842, %3783
  %3844 = fmul fast float %3843, %3835
  %3845 = fadd fast float %3838, %3825
  %3846 = fadd fast float %3841, %3826
  %3847 = fadd fast float %3844, %3827
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3850 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  br label %3851

; <label>:3851                                    ; preds = %3828, %3813
  %3852 = phi float [ %3848, %3828 ], [ %3825, %3813 ]
  %3853 = phi float [ %3849, %3828 ], [ %3826, %3813 ]
  %3854 = phi float [ %3850, %3828 ], [ %3827, %3813 ]
  %3855 = call float @dx.op.binary.f32(i32 35, float %3853, float %3854)  ; FMax(a,b)
  %3856 = call float @dx.op.binary.f32(i32 35, float %3852, float %3855)  ; FMax(a,b)
  %3857 = fsub fast float 1.000000e+00, %3856
  %3858 = fmul fast float %3814, %3772
  %3859 = fmul fast float %3815, %3772
  %3860 = fmul fast float %3816, %3772
  %3861 = fsub fast float 1.000000e+00, %3705
  %3862 = bitcast float %3861 to i32
  %3863 = sitofp i32 %3862 to float
  %3864 = fmul fast float %3863, 5.000000e+00
  %3865 = fadd fast float %3864, 0xC1EFBF8940000000
  %3866 = fptosi float %3865 to i32
  %3867 = bitcast i32 %3866 to float
  %3868 = fmul fast float %3867, %1231
  %3869 = fmul fast float %3857, %3868
  %3870 = fmul fast float %3869, %3195
  %3871 = fmul fast float %3869, %3196
  %3872 = fmul fast float %3869, %3197
  %3873 = fadd fast float %3870, %3858
  %3874 = fadd fast float %3871, %3859
  %3875 = fadd fast float %3872, %3860
  %3876 = fmul fast float %3693, %1252
  %3877 = fmul fast float %3876, %3711
  %3878 = fmul fast float %3877, %3857
  %3879 = fmul fast float %3694, %1252
  %3880 = fmul fast float %3879, %3711
  %3881 = fmul fast float %3880, %3857
  %3882 = fmul fast float %3695, %1252
  %3883 = fmul fast float %3882, %3711
  %3884 = fmul fast float %3883, %3857
  %3885 = fadd fast float %3878, %3532
  %3886 = fadd fast float %3881, %3533
  %3887 = fadd fast float %3884, %3534
  %3888 = fmul fast float %3877, %3873
  %3889 = fmul fast float %3880, %3874
  %3890 = fmul fast float %3883, %3875
  %3891 = fadd fast float %3888, %3529
  %3892 = fadd fast float %3889, %3530
  %3893 = fadd fast float %3890, %3531
  br label %3607

; <label>:3894                                    ; preds = %3607
  br label %3895

; <label>:3895                                    ; preds = %3894, %3495
  %3896 = phi float [ %3497, %3495 ], [ %3608, %3894 ]
  %3897 = phi float [ %3498, %3495 ], [ %3609, %3894 ]
  %3898 = phi float [ %3499, %3495 ], [ %3610, %3894 ]
  %3899 = phi float [ %3500, %3495 ], [ %3611, %3894 ]
  %3900 = phi float [ %3501, %3495 ], [ %3612, %3894 ]
  %3901 = phi float [ %3502, %3495 ], [ %3613, %3894 ]
  %3902 = add i32 %3496, 1
  %3903 = icmp ugt i32 %3902, %3492
  br i1 %3903, label %3904, label %3495

; <label>:3904                                    ; preds = %3895
  br label %3905

; <label>:3905                                    ; preds = %3904, %3471, %3461
  %3906 = phi float [ %3462, %3461 ], [ %3462, %3471 ], [ %3896, %3904 ]
  %3907 = phi float [ %3463, %3461 ], [ %3463, %3471 ], [ %3897, %3904 ]
  %3908 = phi float [ %3464, %3461 ], [ %3464, %3471 ], [ %3898, %3904 ]
  %3909 = phi float [ %3465, %3461 ], [ %3465, %3471 ], [ %3899, %3904 ]
  %3910 = phi float [ %3466, %3461 ], [ %3466, %3471 ], [ %3900, %3904 ]
  %3911 = phi float [ %3467, %3461 ], [ %3467, %3471 ], [ %3901, %3904 ]
  %3912 = call float @dx.op.unary.f32(i32 24, float %1858)  ; Sqrt(value)
  %3913 = call float @dx.op.unary.f32(i32 24, float %1859)  ; Sqrt(value)
  %3914 = call float @dx.op.unary.f32(i32 24, float %1860)  ; Sqrt(value)
  %3915 = fmul fast float %3912, %3909
  %3916 = fmul fast float %3913, %3910
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  br i1 %176, label %3919, label %3939

; <label>:3919                                    ; preds = %3905
  %3920 = fadd fast float %3911, %1229
  %3921 = fmul fast float %3920, %1230
  %3922 = fsub fast float 1.000000e+00, %1230
  %3923 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3926 = fmul fast float %3925, %3923
  %3927 = fadd fast float %3926, %3921
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = fmul fast float %3929, %3201
  %3931 = fsub fast float %3927, %3930
  %3932 = fadd fast float %3916, %3915
  %3933 = fmul fast float %3918, %3932
  %3934 = extractvalue %dx.types.CBufRet.f32 %3924, 1
  %3935 = fsub fast float %3931, %3934
  %3936 = extractvalue %dx.types.CBufRet.f32 %3924, 2
  %3937 = fmul fast float %3935, %3936
  %3938 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  br label %3955

; <label>:3939                                    ; preds = %3905
  %3940 = fmul fast float %3914, %3911
  %3941 = fmul fast float %3918, %3915
  %3942 = fmul fast float %3918, %3916
  %3943 = fmul fast float %3940, %3918
  %3944 = add i32 %38, 116
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = and i32 %3946, 32
  %3948 = icmp eq i32 %3947, 0
  br i1 %3948, label %3955, label %3949

; <label>:3949                                    ; preds = %3939
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = fmul fast float %3951, 0x3FE99999A0000000
  %3953 = fadd fast float %3951, %3941
  %3954 = fadd fast float %3952, %3943
  br label %3955

; <label>:3955                                    ; preds = %3949, %3939, %3919
  %3956 = phi float [ %3933, %3919 ], [ %3953, %3949 ], [ %3941, %3939 ]
  %3957 = phi float [ %3938, %3919 ], [ %3942, %3949 ], [ %3942, %3939 ]
  %3958 = phi float [ 1.000000e+00, %3919 ], [ %3954, %3949 ], [ %3943, %3939 ]
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = fmul fast float %3960, %3907
  %3962 = fmul fast float %3960, %3908
  %3963 = fadd fast float %3907, %3906
  %3964 = select i1 %176, float %3963, float %3906
  %3965 = fmul float %3964, %3960
  %3966 = select i1 %176, float 0.000000e+00, float %3961
  %3967 = select i1 %176, float 0.000000e+00, float %3962
  %3968 = fmul fast float %3956, %3912
  %3969 = fmul fast float %3957, %3913
  %3970 = fmul fast float %3958, %3914
  %3971 = fadd fast float %3965, %3968
  %3972 = fadd fast float %3966, %3969
  %3973 = fadd fast float %3967, %3970
  %3974 = select i1 %176, float %3957, float %3972
  %3975 = select i1 %176, float %3958, float %3973
  %3976 = call float @dx.op.binary.f32(i32 36, float %3971, float 3.225500e+04)  ; FMin(a,b)
  %3977 = call float @dx.op.binary.f32(i32 36, float %3974, float 3.225500e+04)  ; FMin(a,b)
  %3978 = call float @dx.op.binary.f32(i32 36, float %3975, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3976)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3977)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3978)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

