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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: bfca88cda6d7de4df49f1a4074a37b6e
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %57
  %65 = fmul fast float %63, %58
  %66 = fmul fast float %50, %47
  %67 = fmul fast float %51, %46
  %68 = fsub fast float %66, %67
  %69 = fmul fast float %51, %45
  %70 = fmul fast float %49, %47
  %71 = fsub fast float %69, %70
  %72 = fmul fast float %49, %46
  %73 = fmul fast float %50, %45
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %68, %48
  %76 = fmul fast float %71, %48
  %77 = fmul fast float %74, %48
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %81 = fmul fast float %79, 2.000000e+00
  %82 = fmul fast float %81, %64
  %83 = fmul fast float %80, 2.000000e+00
  %84 = fmul fast float %83, %65
  %85 = fsub fast float 1.000000e+00, %82
  %86 = fsub fast float 1.000000e+00, %84
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %85, %88
  %92 = fmul fast float %85, %89
  %93 = fmul fast float %85, %90
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fmul fast float %86, %95
  %99 = fmul fast float %86, %96
  %100 = fmul fast float %86, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fadd fast float %98, %102
  %106 = fadd fast float %105, %91
  %107 = fadd fast float %99, %103
  %108 = fadd fast float %107, %92
  %109 = fadd fast float %100, %104
  %110 = fadd fast float %109, %93
  %111 = fmul fast float %106, %59
  %112 = fmul fast float %108, %59
  %113 = fmul fast float %110, %59
  %114 = fadd fast float %54, 5.000000e-01
  %115 = fptoui float %114 to i32
  %116 = shl i32 %115, 3
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %116, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = or i32 %116, 4
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %118, 8191
  %123 = lshr i32 %118, 13
  %124 = and i32 %123, 8191
  %125 = lshr i32 %118, 26
  %126 = and i32 %121, 65535
  %127 = lshr i32 %121, 16
  %128 = uitofp i32 %126 to float
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %131 = uitofp i32 %127 to float
  %132 = uitofp i32 %122 to float
  %133 = fmul fast float %130, %132
  %134 = uitofp i32 %124 to float
  %135 = fmul fast float %130, %134
  %136 = fmul fast float %130, %52
  %137 = fmul fast float %136, %128
  %138 = fmul fast float %130, %53
  %139 = fmul fast float %138, %131
  %140 = fadd fast float %137, %133
  %141 = fadd fast float %135, %139
  %142 = uitofp i32 %125 to float
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %64
  %147 = fmul fast float %145, %65
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = and i32 %149, 114688
  %151 = icmp ne i32 %150, 0
  %152 = select i1 %151, float %146, float 0.000000e+00
  %153 = select i1 %151, float %147, float 0.000000e+00
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fmul fast float %155, 2.550000e+02
  %157 = fptoui float %156 to i32
  %158 = select i1 %151, i32 %157, i32 0
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 3
  %162 = and i32 %161, 3
  %163 = icmp ne i32 %162, 0
  %164 = and i32 %161, 4
  %165 = icmp ne i32 %164, 0
  %166 = and i1 %163, %165
  br i1 %166, label %167, label %178

; <label>:167                                     ; preds = %0
  %168 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %169 = fmul fast float %168, %65
  %170 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %171 = fmul fast float %170, %64
  %172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %171, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = fsub fast float 1.000000e+00, %173
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = fcmp fast olt float %174, %176
  br label %181

; <label>:178                                     ; preds = %0
  %179 = icmp eq i32 %164, 0
  %180 = and i1 %163, %179
  br label %181

; <label>:181                                     ; preds = %178, %167
  %182 = phi i1 [ %177, %167 ], [ %180, %178 ]
  %183 = add i32 %44, 92
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = shl i32 %185, 4
  %187 = and i32 %186, 32752
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = lshr i32 %185, 7
  %190 = and i32 %189, 32752
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = lshr i32 %185, 22
  %193 = shl nuw nsw i32 %192, 5
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = add i32 %44, 120
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 255
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F70101020000000
  %201 = lshr i32 %197, 8
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %197, 16
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = add i32 %44, 36
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 65535
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %211, 16
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %44, 160
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %218, 16
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = fmul fast float %220, 0x3F50624DE0000000
  %224 = fmul fast float %222, 0x3F50624DE0000000
  %225 = add i32 %44, 108
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = shl i32 %227, 4
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %227, 7
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %227, 22
  %235 = shl nuw nsw i32 %234, 5
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = add i32 %44, 136
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = lshr i32 %239, 8
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %239, 16
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = add i32 %44, 52
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = add i32 %44, 176
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = fmul fast float %262, 0x3F50624DE0000000
  %266 = fmul fast float %264, 0x3F50624DE0000000
  %267 = add i32 %44, 188
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 2
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %280, label %272

; <label>:272                                     ; preds = %181
  %273 = add i32 %44, 256
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = add i32 %275, 0
  %277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %277, %dx.types.Handle %61, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  br label %280

; <label>:280                                     ; preds = %272, %181
  %281 = phi float [ 1.000000e+00, %181 ], [ %279, %272 ]
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 2
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %293, label %286

; <label>:286                                     ; preds = %280
  %287 = add i32 %44, 44
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 1
  %291 = icmp ne i32 %290, 0
  %292 = select i1 %291, float %281, float 1.000000e+00
  br label %293

; <label>:293                                     ; preds = %286, %280
  %294 = phi float [ %281, %280 ], [ %292, %286 ]
  %295 = lshr i32 %283, 20
  %296 = and i32 %295, 3
  %297 = add nuw nsw i32 %296, 1
  %298 = add i32 %44, 24
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = add i32 %44, 28
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = or i32 %303, %300
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %756, label %306

; <label>:306                                     ; preds = %293
  %307 = add i32 %44, 156
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = lshr i32 %309, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %311, 0x3F50624DE0000000
  %313 = add i32 %44, 56
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  %318 = lshr i32 %315, 24
  %319 = add i32 %44, 164
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %44, 32
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = lshr i32 %328, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = shl i32 %328, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %340 = fmul fast float %339, 1.000000e+03
  %341 = fmul fast float %223, %340
  %342 = call float @dx.op.unary.f32(i32 22, float %341)  ; Frc(value)
  %343 = fadd fast float %342, %213
  %344 = fmul fast float %224, %340
  %345 = call float @dx.op.unary.f32(i32 22, float %344)  ; Frc(value)
  %346 = fadd fast float %345, %215
  %347 = fmul fast float %312, %340
  %348 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %349 = fmul fast float %348, 0x401921FB60000000
  %350 = fadd fast float %349, %331
  %351 = call float @dx.op.unary.f32(i32 13, float %350)  ; Sin(value)
  %352 = call float @dx.op.unary.f32(i32 12, float %350)  ; Cos(value)
  %353 = fsub fast float -0.000000e+00, %351
  %354 = fadd fast float %55, -5.000000e-01
  %355 = fadd fast float %56, -5.000000e-01
  %356 = fmul fast float %323, %354
  %357 = fmul fast float %325, %355
  %358 = fadd fast float %356, 5.000000e-01
  %359 = fadd fast float %357, 5.000000e-01
  %360 = fmul fast float %334, %358
  %361 = fmul fast float %337, %359
  %362 = fmul fast float %352, %360
  %363 = call float @dx.op.tertiary.f32(i32 46, float %353, float %361, float %362)  ; FMad(a,b,c)
  %364 = fmul fast float %351, %360
  %365 = call float @dx.op.tertiary.f32(i32 46, float %352, float %361, float %364)  ; FMad(a,b,c)
  %366 = fadd fast float %343, %363
  %367 = fadd fast float %346, %365
  %368 = icmp ugt i32 %317, 1
  %369 = icmp ugt i32 %315, 33554431
  %370 = or i1 %369, %368
  br i1 %370, label %371, label %396

; <label>:371                                     ; preds = %306
  %372 = add i32 %44, 132
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = lshr i32 %374, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = fmul fast float %339, %376
  %378 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %379 = mul nuw nsw i32 %317, %318
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %378, %380
  %382 = call float @dx.op.unary.f32(i32 27, float %381)  ; Round_ni(value)
  %383 = fptoui float %382 to i32
  %384 = urem i32 %383, %317
  %385 = udiv i32 %383, %318
  %386 = call float @dx.op.unary.f32(i32 22, float %366)  ; Frc(value)
  %387 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %388 = uitofp i32 %384 to float
  %389 = uitofp i32 %385 to float
  %390 = fadd fast float %386, %388
  %391 = fadd fast float %387, %389
  %392 = uitofp i32 %317 to float
  %393 = uitofp i32 %318 to float
  %394 = fdiv fast float %390, %392
  %395 = fdiv fast float %391, %393
  br label %396

; <label>:396                                     ; preds = %371, %306
  %397 = phi float [ %394, %371 ], [ %366, %306 ]
  %398 = phi float [ %395, %371 ], [ %367, %306 ]
  %399 = and i32 %300, 16
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %597, label %401

; <label>:401                                     ; preds = %396
  %402 = add i32 %44, 200
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %404, 0
  %406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %406, %dx.types.Handle %60, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = and i32 %315, 255
  %413 = uitofp i32 %412 to float
  %414 = lshr i32 %315, 8
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %411, %413
  %418 = fadd fast float %417, %416
  %419 = fmul fast float %418, 0x3F70101000000000
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 512
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %432, label %424

; <label>:424                                     ; preds = %401
  %425 = add i32 %44, 240
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, 0
  %429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %429, %dx.types.Handle %61, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  br label %432

; <label>:432                                     ; preds = %424, %401
  %433 = phi float [ %431, %424 ], [ 1.000000e+00, %401 ]
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 33554432
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %544, label %438

; <label>:438                                     ; preds = %432
  %439 = add i32 %44, 128
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %441, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = add i32 %44, 132
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 24
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F70101020000000
  %456 = and i32 %452, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %452, 8
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %452, 16
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = add i32 %44, 124
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = lshr i32 %469, 24
  %471 = uitofp i32 %470 to float
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = and i32 %469, 255
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %474, 0x3F70101020000000
  %476 = lshr i32 %469, 8
  %477 = and i32 %476, 255
  %478 = uitofp i32 %477 to float
  %479 = fmul fast float %478, 0x3F70101020000000
  %480 = lshr i32 %469, 16
  %481 = and i32 %480, 255
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %482, 0x3F70101020000000
  %484 = bitcast float %408 to i32
  %485 = ashr i32 %484, 1
  %486 = sub nsw i32 1597463174, %485
  %487 = bitcast i32 %486 to float
  %488 = fmul fast float %408, 5.000000e-01
  %489 = fmul fast float %487, %487
  %490 = fmul fast float %489, %488
  %491 = fsub fast float 1.500000e+00, %490
  %492 = fmul fast float %487, %408
  %493 = fmul fast float %492, %491
  %494 = bitcast float %409 to i32
  %495 = ashr i32 %494, 1
  %496 = sub nsw i32 1597463174, %495
  %497 = bitcast i32 %496 to float
  %498 = fmul fast float %409, 5.000000e-01
  %499 = fmul fast float %497, %497
  %500 = fmul fast float %499, %498
  %501 = fsub fast float 1.500000e+00, %500
  %502 = fmul fast float %497, %409
  %503 = fmul fast float %502, %501
  %504 = bitcast float %410 to i32
  %505 = ashr i32 %504, 1
  %506 = sub nsw i32 1597463174, %505
  %507 = bitcast i32 %506 to float
  %508 = fmul fast float %410, 5.000000e-01
  %509 = fmul fast float %507, %507
  %510 = fmul fast float %509, %508
  %511 = fsub fast float 1.500000e+00, %510
  %512 = fmul fast float %507, %410
  %513 = fmul fast float %512, %511
  %514 = fsub fast float %493, %475
  %515 = fsub fast float %503, %479
  %516 = fsub fast float %513, %483
  %517 = fmul fast float %514, %443
  %518 = fmul fast float %515, %445
  %519 = fmul fast float %516, %450
  %520 = fadd fast float %517, %458
  %521 = fadd fast float %518, %462
  %522 = fadd fast float %519, %466
  %523 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %524 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %525 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %526 = fmul fast float %523, %523
  %527 = fmul fast float %524, %524
  %528 = fmul fast float %525, %525
  %529 = fsub fast float %526, %408
  %530 = fsub fast float %527, %409
  %531 = fsub fast float %528, %410
  %532 = fmul fast float %529, %433
  %533 = fmul fast float %530, %433
  %534 = fmul fast float %531, %433
  %535 = fadd fast float %532, %408
  %536 = fadd fast float %533, %409
  %537 = fadd fast float %534, %410
  %538 = fadd fast float %455, %419
  %539 = fsub fast float %538, %472
  %540 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %541 = fsub fast float %540, %419
  %542 = fmul fast float %541, %433
  %543 = fadd fast float %542, %419
  br label %597

; <label>:544                                     ; preds = %432
  %545 = and i32 %435, 134217728
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %581, label %547

; <label>:547                                     ; preds = %544
  %548 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %549 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %550 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %551 = fadd fast float %548, -5.000000e-01
  %552 = fadd fast float %549, -5.000000e-01
  %553 = fadd fast float %550, -5.000000e-01
  %554 = fmul fast float %551, %433
  %555 = fmul fast float %552, %433
  %556 = fmul fast float %553, %433
  %557 = fadd fast float %554, 5.000000e-01
  %558 = fadd fast float %555, 5.000000e-01
  %559 = fadd fast float %556, 5.000000e-01
  %560 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %561 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %562 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %563 = fmul fast float %557, 2.000000e+00
  %564 = fsub fast float 1.000000e+00, %563
  %565 = fmul fast float %564, %560
  %566 = fadd fast float %565, %563
  %567 = fmul fast float %566, %560
  %568 = fmul fast float %558, 2.000000e+00
  %569 = fsub fast float 1.000000e+00, %568
  %570 = fmul fast float %569, %561
  %571 = fadd fast float %570, %568
  %572 = fmul fast float %571, %561
  %573 = fmul fast float %559, 2.000000e+00
  %574 = fsub fast float 1.000000e+00, %573
  %575 = fmul fast float %574, %562
  %576 = fadd fast float %575, %573
  %577 = fmul fast float %576, %562
  %578 = fmul fast float %567, %567
  %579 = fmul fast float %572, %572
  %580 = fmul fast float %577, %577
  br label %597

; <label>:581                                     ; preds = %544
  %582 = fmul fast float %200, %200
  %583 = fmul fast float %204, %204
  %584 = fmul fast float %208, %208
  %585 = fadd fast float %582, -1.000000e+00
  %586 = fadd fast float %583, -1.000000e+00
  %587 = fadd fast float %584, -1.000000e+00
  %588 = fmul fast float %433, %585
  %589 = fmul fast float %433, %586
  %590 = fmul fast float %433, %587
  %591 = fadd fast float %588, 1.000000e+00
  %592 = fadd fast float %589, 1.000000e+00
  %593 = fadd fast float %590, 1.000000e+00
  %594 = fmul fast float %591, %408
  %595 = fmul fast float %592, %409
  %596 = fmul fast float %593, %410
  br label %597

; <label>:597                                     ; preds = %581, %547, %438, %396
  %598 = phi float [ %543, %438 ], [ %419, %547 ], [ %419, %581 ], [ 0x3FA23C0BE0000000, %396 ]
  %599 = phi float [ %535, %438 ], [ %578, %547 ], [ %594, %581 ], [ 1.000000e+00, %396 ]
  %600 = phi float [ %536, %438 ], [ %579, %547 ], [ %595, %581 ], [ 1.000000e+00, %396 ]
  %601 = phi float [ %537, %438 ], [ %580, %547 ], [ %596, %581 ], [ 1.000000e+00, %396 ]
  %602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.i32 %602, 1
  %604 = and i32 %603, 1
  %605 = icmp ne i32 %604, 0
  %606 = add i32 %44, 196
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 32
  %610 = icmp ne i32 %609, 0
  %611 = and i1 %605, %610
  %612 = select i1 %611, float 1.000000e+00, float %599
  %613 = select i1 %611, float 0x3FD3333340000000, float %600
  %614 = select i1 %611, float 0x3FD3333340000000, float %601
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 32
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %691, label %619

; <label>:619                                     ; preds = %597
  %620 = add i32 %44, 60
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %44, 208
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %60, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = extractvalue %dx.types.ResRet.f32 %628, 3
  %633 = and i32 %622, 255
  %634 = uitofp i32 %633 to float
  %635 = lshr i32 %622, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %622, 16
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101000000000
  %642 = fmul fast float %629, %634
  %643 = fadd fast float %642, %637
  %644 = fmul fast float %643, 0x3F70101000000000
  %645 = fadd fast float %630, -5.000000e-01
  %646 = fadd fast float %632, -5.000000e-01
  %647 = fmul fast float %645, %641
  %648 = fmul fast float %646, %641
  %649 = fadd fast float %647, 5.000000e-01
  %650 = fadd fast float %648, 5.000000e-01
  %651 = fmul fast float %649, 2.000000e+00
  %652 = fadd fast float %651, -1.000000e+00
  %653 = fmul fast float %650, 2.000000e+00
  %654 = fadd fast float %653, -1.000000e+00
  %655 = fadd fast float %652, %654
  %656 = fmul fast float %655, 5.000000e-01
  %657 = fsub fast float %652, %654
  %658 = fmul fast float %657, 5.000000e-01
  %659 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %660 = fsub fast float 1.000000e+00, %659
  %661 = call float @dx.op.unary.f32(i32 6, float %658)  ; FAbs(value)
  %662 = fsub fast float %660, %661
  %663 = call float @dx.op.dot3.f32(i32 55, float %656, float %658, float %662, float %656, float %658, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %656, %664
  %666 = fmul fast float %658, %664
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 67108864
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %687, label %671

; <label>:671                                     ; preds = %619
  %672 = add i32 %44, 152
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 65535
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 65535
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = lshr i32 %674, 16
  %682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %681)  ; LegacyF16ToF32(value)
  %683 = fsub fast float %644, %682
  %684 = fmul fast float %683, %676
  %685 = fadd fast float %684, %680
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  br label %687

; <label>:687                                     ; preds = %671, %619
  %688 = phi float [ %686, %671 ], [ %644, %619 ]
  %689 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %690 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %691

; <label>:691                                     ; preds = %687, %597
  %692 = phi float [ %688, %687 ], [ 0x3FD6666660000000, %597 ]
  %693 = phi float [ %689, %687 ], [ 0.000000e+00, %597 ]
  %694 = phi float [ %690, %687 ], [ 0.000000e+00, %597 ]
  %695 = phi float [ %631, %687 ], [ 1.000000e+00, %597 ]
  %696 = add i32 %44, 96
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = lshr i32 %698, 22
  %700 = shl nuw nsw i32 %699, 5
  %701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %700)  ; LegacyF16ToF32(value)
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 64
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %739, label %706

; <label>:706                                     ; preds = %691
  %707 = add i32 %44, 216
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = add i32 %709, 0
  %711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 131072
  %715 = icmp eq i32 %714, 0
  %716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %711, %dx.types.Handle %60, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = fmul fast float %717, %188
  %721 = fmul fast float %718, %191
  %722 = fmul fast float %719, %194
  br i1 %715, label %729, label %723

; <label>:723                                     ; preds = %706
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = fmul fast float %725, %720
  %727 = fmul fast float %725, %721
  %728 = fmul fast float %725, %722
  br label %729

; <label>:729                                     ; preds = %723, %706
  %730 = phi float [ %726, %723 ], [ %720, %706 ]
  %731 = phi float [ %727, %723 ], [ %721, %706 ]
  %732 = phi float [ %728, %723 ], [ %722, %706 ]
  %733 = fmul fast float %730, %701
  %734 = select i1 %182, float %733, float %730
  %735 = call float @dx.op.dot3.f32(i32 55, float %734, float %731, float %732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %736 = select i1 %182, float 0.000000e+00, float %730
  %737 = select i1 %182, float %735, float %731
  %738 = select i1 %182, float 0.000000e+00, float %732
  br label %739

; <label>:739                                     ; preds = %729, %691
  %740 = phi float [ %736, %729 ], [ 0.000000e+00, %691 ]
  %741 = phi float [ %737, %729 ], [ 0.000000e+00, %691 ]
  %742 = phi float [ %738, %729 ], [ 0.000000e+00, %691 ]
  %743 = add i32 %44, 64
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = lshr i32 %745, 8
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = call float @dx.op.dot3.f32(i32 55, float %612, float %613, float %614, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %752 = fmul fast float %750, %751
  %753 = fadd fast float %752, %747
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  br label %756

; <label>:756                                     ; preds = %739, %293
  %757 = phi float [ %693, %739 ], [ 0.000000e+00, %293 ]
  %758 = phi float [ %694, %739 ], [ 0.000000e+00, %293 ]
  %759 = phi float [ %612, %739 ], [ 0.000000e+00, %293 ]
  %760 = phi float [ %613, %739 ], [ 0.000000e+00, %293 ]
  %761 = phi float [ %614, %739 ], [ 0.000000e+00, %293 ]
  %762 = phi float [ %740, %739 ], [ 0.000000e+00, %293 ]
  %763 = phi float [ %741, %739 ], [ 0.000000e+00, %293 ]
  %764 = phi float [ %742, %739 ], [ 0.000000e+00, %293 ]
  %765 = phi float [ %598, %739 ], [ 0.000000e+00, %293 ]
  %766 = phi float [ 1.000000e+00, %739 ], [ 0.000000e+00, %293 ]
  %767 = phi float [ %692, %739 ], [ 0.000000e+00, %293 ]
  %768 = phi float [ %695, %739 ], [ 0.000000e+00, %293 ]
  %769 = phi float [ %755, %739 ], [ 0.000000e+00, %293 ]
  %770 = icmp ult i32 %297, 2
  %771 = add i32 %44, 40
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %44, 44
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = or i32 %776, %773
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %1602, label %779

; <label>:779                                     ; preds = %756
  %780 = add i32 %44, 172
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = lshr i32 %782, 16
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = fmul fast float %784, 0x3F50624DE0000000
  %786 = add i32 %44, 72
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  %791 = lshr i32 %788, 24
  %792 = add i32 %44, 180
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 65535
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = lshr i32 %794, 16
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = add i32 %44, 48
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = lshr i32 %801, 22
  %803 = shl nuw nsw i32 %802, 5
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = shl i32 %801, 4
  %806 = and i32 %805, 32752
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %801, 7
  %809 = and i32 %808, 32752
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 3
  %813 = fmul fast float %812, 1.000000e+03
  %814 = fmul fast float %265, %813
  %815 = call float @dx.op.unary.f32(i32 22, float %814)  ; Frc(value)
  %816 = fadd fast float %815, %255
  %817 = fmul fast float %266, %813
  %818 = call float @dx.op.unary.f32(i32 22, float %817)  ; Frc(value)
  %819 = fadd fast float %818, %257
  %820 = fmul fast float %785, %813
  %821 = call float @dx.op.unary.f32(i32 22, float %820)  ; Frc(value)
  %822 = fmul fast float %821, 0x401921FB60000000
  %823 = fadd fast float %822, %804
  %824 = call float @dx.op.unary.f32(i32 13, float %823)  ; Sin(value)
  %825 = call float @dx.op.unary.f32(i32 12, float %823)  ; Cos(value)
  %826 = fsub fast float -0.000000e+00, %824
  %827 = fadd fast float %55, -5.000000e-01
  %828 = fadd fast float %56, -5.000000e-01
  %829 = fmul fast float %796, %827
  %830 = fmul fast float %798, %828
  %831 = fadd fast float %829, 5.000000e-01
  %832 = fadd fast float %830, 5.000000e-01
  %833 = fmul fast float %807, %831
  %834 = fmul fast float %810, %832
  %835 = fmul fast float %825, %833
  %836 = call float @dx.op.tertiary.f32(i32 46, float %826, float %834, float %835)  ; FMad(a,b,c)
  %837 = fmul fast float %824, %833
  %838 = call float @dx.op.tertiary.f32(i32 46, float %825, float %834, float %837)  ; FMad(a,b,c)
  %839 = fadd fast float %816, %836
  %840 = fadd fast float %819, %838
  %841 = icmp ugt i32 %790, 1
  %842 = icmp ugt i32 %788, 33554431
  %843 = or i1 %842, %841
  br i1 %843, label %844, label %869

; <label>:844                                     ; preds = %779
  %845 = add i32 %44, 148
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = lshr i32 %847, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fmul fast float %812, %849
  %851 = call float @dx.op.unary.f32(i32 22, float %850)  ; Frc(value)
  %852 = mul nuw nsw i32 %790, %791
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %851, %853
  %855 = call float @dx.op.unary.f32(i32 27, float %854)  ; Round_ni(value)
  %856 = fptoui float %855 to i32
  %857 = urem i32 %856, %790
  %858 = udiv i32 %856, %791
  %859 = call float @dx.op.unary.f32(i32 22, float %839)  ; Frc(value)
  %860 = call float @dx.op.unary.f32(i32 22, float %840)  ; Frc(value)
  %861 = uitofp i32 %857 to float
  %862 = uitofp i32 %858 to float
  %863 = fadd fast float %859, %861
  %864 = fadd fast float %860, %862
  %865 = uitofp i32 %790 to float
  %866 = uitofp i32 %791 to float
  %867 = fdiv fast float %863, %865
  %868 = fdiv fast float %864, %866
  br label %869

; <label>:869                                     ; preds = %844, %779
  %870 = phi float [ %867, %844 ], [ %839, %779 ]
  %871 = phi float [ %868, %844 ], [ %840, %779 ]
  %872 = and i32 %773, 16777216
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %983, label %874

; <label>:874                                     ; preds = %869
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %879 = fadd fast float %876, %111
  %880 = fadd fast float %877, %112
  %881 = fadd fast float %878, %113
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = icmp eq i32 %43, 65535
  br i1 %885, label %980, label %886

; <label>:886                                     ; preds = %874
  %887 = lshr i32 %43, 1
  %888 = shl i32 %887, 2
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %43, 1
  %892 = icmp ne i32 %891, 0
  %893 = lshr i32 %890, 16
  %894 = and i32 %890, 65535
  %895 = select i1 %892, i32 %893, i32 %894
  %896 = icmp eq i32 %895, 65535
  br i1 %896, label %976, label %897

; <label>:897                                     ; preds = %886
  %898 = mul nuw nsw i32 %895, 40
  %899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = extractvalue %dx.types.ResRet.f32 %899, 2
  %903 = add nuw nsw i32 %898, 12
  %904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = extractvalue %dx.types.ResRet.f32 %904, 1
  %907 = extractvalue %dx.types.ResRet.f32 %904, 2
  %908 = add nuw nsw i32 %898, 24
  %909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = add nuw nsw i32 %898, 36
  %914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = fsub fast float %879, %900
  %917 = fsub fast float %880, %901
  %918 = fsub fast float %881, %902
  %919 = fmul fast float %915, %916
  %920 = fmul fast float %915, %917
  %921 = fmul fast float %915, %918
  %922 = call float @dx.op.unary.f32(i32 27, float %919)  ; Round_ni(value)
  %923 = call float @dx.op.unary.f32(i32 27, float %920)  ; Round_ni(value)
  %924 = call float @dx.op.unary.f32(i32 27, float %921)  ; Round_ni(value)
  %925 = fadd fast float %922, 5.000000e-01
  %926 = fadd fast float %923, 5.000000e-01
  %927 = fadd fast float %924, 5.000000e-01
  %928 = fmul fast float %925, %905
  %929 = fmul fast float %926, %906
  %930 = fmul fast float %927, %907
  %931 = shl i32 %43, 2
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %933, 0
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = call float @dx.op.unary.f32(i32 22, float %928)  ; Frc(value)
  %937 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %938 = call float @dx.op.unary.f32(i32 22, float %930)  ; Frc(value)
  %939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %935, %dx.types.Handle %40, float %936, float %937, float %938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 1
  %942 = extractvalue %dx.types.ResRet.f32 %939, 2
  %943 = fmul fast float %940, 1.023000e+03
  %944 = fmul fast float %941, 1.023000e+03
  %945 = fmul fast float %942, 1.023000e+03
  %946 = fadd fast float %943, 5.000000e-01
  %947 = fadd fast float %944, 5.000000e-01
  %948 = fadd fast float %945, 5.000000e-01
  %949 = call float @dx.op.unary.f32(i32 27, float %946)  ; Round_ni(value)
  %950 = call float @dx.op.unary.f32(i32 27, float %947)  ; Round_ni(value)
  %951 = call float @dx.op.unary.f32(i32 27, float %948)  ; Round_ni(value)
  %952 = fsub fast float %919, %922
  %953 = fsub fast float %920, %923
  %954 = fsub fast float %921, %924
  %955 = fmul fast float %952, 7.500000e-01
  %956 = fmul fast float %953, 7.500000e-01
  %957 = fmul fast float %954, 7.500000e-01
  %958 = fadd fast float %922, 1.250000e-01
  %959 = fadd fast float %958, %955
  %960 = fadd fast float %959, %949
  %961 = fadd fast float %923, 1.250000e-01
  %962 = fadd fast float %961, %956
  %963 = fadd fast float %962, %950
  %964 = fadd fast float %924, 1.250000e-01
  %965 = fadd fast float %964, %957
  %966 = fadd fast float %965, %951
  %967 = fmul fast float %960, %910
  %968 = fmul fast float %963, %911
  %969 = fmul fast float %966, %912
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = add i32 %971, 0
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %973, %dx.types.Handle %38, float %967, float %968, float %969, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  br label %976

; <label>:976                                     ; preds = %897, %886
  %977 = phi float [ %975, %897 ], [ -1.000000e+00, %886 ]
  %978 = fadd fast float %977, %884
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  br label %980

; <label>:980                                     ; preds = %976, %874
  %981 = phi float [ %979, %976 ], [ %884, %874 ]
  %982 = fmul fast float %981, %294
  br label %983

; <label>:983                                     ; preds = %980, %869
  %984 = phi float [ %982, %980 ], [ %294, %869 ]
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %986, 256
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1035, label %989

; <label>:989                                     ; preds = %983
  %990 = add i32 %44, 236
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = add i32 %992, 0
  %994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %994, %dx.types.Handle %61, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = add i32 %44, 84
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = shl i32 %999, 4
  %1001 = and i32 %1000, 32752
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = lshr i32 %999, 7
  %1004 = and i32 %1003, 32752
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = fsub fast float 1.000000e+00, %984
  %1007 = call float @dx.op.binary.f32(i32 35, float %1006, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1008 = bitcast float %984 to i32
  %1009 = sitofp i32 %1008 to float
  %1010 = fadd fast float %1009, 0xC1CFBF8940000000
  %1011 = fmul fast float %1005, %1010
  %1012 = fadd fast float %1011, 0x41CFBF8940000000
  %1013 = fptosi float %1012 to i32
  %1014 = bitcast i32 %1013 to float
  %1015 = bitcast float %1007 to i32
  %1016 = sitofp i32 %1015 to float
  %1017 = fadd fast float %1016, 0xC1CFBF8940000000
  %1018 = fmul fast float %1017, %1005
  %1019 = fadd fast float %1018, 0x41CFBF8940000000
  %1020 = fptosi float %1019 to i32
  %1021 = bitcast i32 %1020 to float
  %1022 = fmul fast float %1014, %1002
  %1023 = fmul fast float %1021, %1002
  %1024 = fsub fast float %1007, %1022
  %1025 = fadd fast float %1023, %1007
  %1026 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1027 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1028 = fsub fast float %996, %1026
  %1029 = fsub fast float %1027, %1026
  %1030 = bitcast float %1029 to i32
  %1031 = sub nsw i32 2129859010, %1030
  %1032 = bitcast i32 %1031 to float
  %1033 = fmul fast float %1032, %1028
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  br label %1035

; <label>:1035                                    ; preds = %989, %983
  %1036 = phi float [ %1034, %989 ], [ %984, %983 ]
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 128
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1057, label %1041

; <label>:1041                                    ; preds = %1035
  %1042 = add i32 %44, 228
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = add i32 %1044, 0
  %1046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1046, %dx.types.Handle %61, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 524288
  %1052 = icmp ne i32 %1051, 0
  %1053 = fcmp fast ogt float %1048, 0x3FE0101020000000
  %1054 = select i1 %1053, float 1.000000e+00, float 0.000000e+00
  %1055 = select i1 %1052, float %1054, float %1048
  %1056 = fmul fast float %1055, %1036
  br label %1057

; <label>:1057                                    ; preds = %1041, %1035
  %1058 = phi float [ %1056, %1041 ], [ %1036, %1035 ]
  %1059 = fcmp fast ult float %1058, 0x3F70101020000000
  br i1 %1059, label %1602, label %1060

; <label>:1060                                    ; preds = %1057
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 16
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1263, label %1065

; <label>:1065                                    ; preds = %1060
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = add i32 %44, 204
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %1070, 0
  %1072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1072, %dx.types.Handle %60, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1077 = extractvalue %dx.types.ResRet.f32 %1073, 3
  %1078 = and i32 %1067, 255
  %1079 = uitofp i32 %1078 to float
  %1080 = lshr i32 %1067, 8
  %1081 = and i32 %1080, 255
  %1082 = uitofp i32 %1081 to float
  %1083 = fmul fast float %1077, %1079
  %1084 = fadd fast float %1083, %1082
  %1085 = fmul fast float %1084, 0x3F70101000000000
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 512
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1098, label %1090

; <label>:1090                                    ; preds = %1065
  %1091 = add i32 %44, 244
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = add i32 %1093, 0
  %1095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1095, %dx.types.Handle %61, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  br label %1098

; <label>:1098                                    ; preds = %1090, %1065
  %1099 = phi float [ %1097, %1090 ], [ 1.000000e+00, %1065 ]
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 33554432
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1210, label %1104

; <label>:1104                                    ; preds = %1098
  %1105 = add i32 %44, 144
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 65535
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = lshr i32 %1107, 16
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = add i32 %44, 148
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 65535
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = lshr i32 %1118, 24
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = and i32 %1118, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = lshr i32 %1118, 8
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = lshr i32 %1118, 16
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = add i32 %44, 140
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = lshr i32 %1135, 24
  %1137 = uitofp i32 %1136 to float
  %1138 = fmul fast float %1137, 0x3F70101020000000
  %1139 = and i32 %1135, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = fmul fast float %1140, 0x3F70101020000000
  %1142 = lshr i32 %1135, 8
  %1143 = and i32 %1142, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1144, 0x3F70101020000000
  %1146 = lshr i32 %1135, 16
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F70101020000000
  %1150 = bitcast float %1074 to i32
  %1151 = ashr i32 %1150, 1
  %1152 = sub nsw i32 1597463174, %1151
  %1153 = bitcast i32 %1152 to float
  %1154 = fmul fast float %1074, 5.000000e-01
  %1155 = fmul fast float %1153, %1153
  %1156 = fmul fast float %1155, %1154
  %1157 = fsub fast float 1.500000e+00, %1156
  %1158 = fmul fast float %1153, %1074
  %1159 = fmul fast float %1158, %1157
  %1160 = bitcast float %1075 to i32
  %1161 = ashr i32 %1160, 1
  %1162 = sub nsw i32 1597463174, %1161
  %1163 = bitcast i32 %1162 to float
  %1164 = fmul fast float %1075, 5.000000e-01
  %1165 = fmul fast float %1163, %1163
  %1166 = fmul fast float %1165, %1164
  %1167 = fsub fast float 1.500000e+00, %1166
  %1168 = fmul fast float %1163, %1075
  %1169 = fmul fast float %1168, %1167
  %1170 = bitcast float %1076 to i32
  %1171 = ashr i32 %1170, 1
  %1172 = sub nsw i32 1597463174, %1171
  %1173 = bitcast i32 %1172 to float
  %1174 = fmul fast float %1076, 5.000000e-01
  %1175 = fmul fast float %1173, %1173
  %1176 = fmul fast float %1175, %1174
  %1177 = fsub fast float 1.500000e+00, %1176
  %1178 = fmul fast float %1173, %1076
  %1179 = fmul fast float %1178, %1177
  %1180 = fsub fast float %1159, %1141
  %1181 = fsub fast float %1169, %1145
  %1182 = fsub fast float %1179, %1149
  %1183 = fmul fast float %1180, %1109
  %1184 = fmul fast float %1181, %1111
  %1185 = fmul fast float %1182, %1116
  %1186 = fadd fast float %1183, %1124
  %1187 = fadd fast float %1184, %1128
  %1188 = fadd fast float %1185, %1132
  %1189 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1190 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1191 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1192 = fmul fast float %1189, %1189
  %1193 = fmul fast float %1190, %1190
  %1194 = fmul fast float %1191, %1191
  %1195 = fsub fast float %1192, %1074
  %1196 = fsub fast float %1193, %1075
  %1197 = fsub fast float %1194, %1076
  %1198 = fmul fast float %1195, %1099
  %1199 = fmul fast float %1196, %1099
  %1200 = fmul fast float %1197, %1099
  %1201 = fadd fast float %1198, %1074
  %1202 = fadd fast float %1199, %1075
  %1203 = fadd fast float %1200, %1076
  %1204 = fadd fast float %1121, %1085
  %1205 = fsub fast float %1204, %1138
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fsub fast float %1206, %1085
  %1208 = fmul fast float %1207, %1099
  %1209 = fadd fast float %1208, %1085
  br label %1263

; <label>:1210                                    ; preds = %1098
  %1211 = and i32 %1101, 134217728
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1247, label %1213

; <label>:1213                                    ; preds = %1210
  %1214 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1215 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1216 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %1217 = fadd fast float %1214, -5.000000e-01
  %1218 = fadd fast float %1215, -5.000000e-01
  %1219 = fadd fast float %1216, -5.000000e-01
  %1220 = fmul fast float %1217, %1099
  %1221 = fmul fast float %1218, %1099
  %1222 = fmul fast float %1219, %1099
  %1223 = fadd fast float %1220, 5.000000e-01
  %1224 = fadd fast float %1221, 5.000000e-01
  %1225 = fadd fast float %1222, 5.000000e-01
  %1226 = call float @dx.op.unary.f32(i32 24, float %1074)  ; Sqrt(value)
  %1227 = call float @dx.op.unary.f32(i32 24, float %1075)  ; Sqrt(value)
  %1228 = call float @dx.op.unary.f32(i32 24, float %1076)  ; Sqrt(value)
  %1229 = fmul fast float %1223, 2.000000e+00
  %1230 = fsub fast float 1.000000e+00, %1229
  %1231 = fmul fast float %1230, %1226
  %1232 = fadd fast float %1231, %1229
  %1233 = fmul fast float %1232, %1226
  %1234 = fmul fast float %1224, 2.000000e+00
  %1235 = fsub fast float 1.000000e+00, %1234
  %1236 = fmul fast float %1235, %1227
  %1237 = fadd fast float %1236, %1234
  %1238 = fmul fast float %1237, %1227
  %1239 = fmul fast float %1225, 2.000000e+00
  %1240 = fsub fast float 1.000000e+00, %1239
  %1241 = fmul fast float %1240, %1228
  %1242 = fadd fast float %1241, %1239
  %1243 = fmul fast float %1242, %1228
  %1244 = fmul fast float %1233, %1233
  %1245 = fmul fast float %1238, %1238
  %1246 = fmul fast float %1243, %1243
  br label %1263

; <label>:1247                                    ; preds = %1210
  %1248 = fmul fast float %242, %242
  %1249 = fmul fast float %246, %246
  %1250 = fmul fast float %250, %250
  %1251 = fadd fast float %1248, -1.000000e+00
  %1252 = fadd fast float %1249, -1.000000e+00
  %1253 = fadd fast float %1250, -1.000000e+00
  %1254 = fmul fast float %1099, %1251
  %1255 = fmul fast float %1099, %1252
  %1256 = fmul fast float %1099, %1253
  %1257 = fadd fast float %1254, 1.000000e+00
  %1258 = fadd fast float %1255, 1.000000e+00
  %1259 = fadd fast float %1256, 1.000000e+00
  %1260 = fmul fast float %1257, %1074
  %1261 = fmul fast float %1258, %1075
  %1262 = fmul fast float %1259, %1076
  br label %1263

; <label>:1263                                    ; preds = %1247, %1213, %1104, %1060
  %1264 = phi float [ %1209, %1104 ], [ %1085, %1213 ], [ %1085, %1247 ], [ 0x3FA23C0BE0000000, %1060 ]
  %1265 = phi float [ %1201, %1104 ], [ %1244, %1213 ], [ %1260, %1247 ], [ 1.000000e+00, %1060 ]
  %1266 = phi float [ %1202, %1104 ], [ %1245, %1213 ], [ %1261, %1247 ], [ 1.000000e+00, %1060 ]
  %1267 = phi float [ %1203, %1104 ], [ %1246, %1213 ], [ %1262, %1247 ], [ 1.000000e+00, %1060 ]
  %1268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.i32 %1268, 1
  %1270 = and i32 %1269, 1
  %1271 = icmp ne i32 %1270, 0
  %1272 = add i32 %44, 196
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 32
  %1276 = icmp ne i32 %1275, 0
  %1277 = and i1 %1271, %1276
  %1278 = select i1 %1277, float 1.000000e+00, float %1265
  %1279 = select i1 %1277, float 0x3FD3333340000000, float %1266
  %1280 = select i1 %1277, float 0x3FD3333340000000, float %1267
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 32
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1357, label %1285

; <label>:1285                                    ; preds = %1263
  %1286 = add i32 %44, 76
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = add i32 %44, 212
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = add i32 %1291, 0
  %1293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1293, %dx.types.Handle %60, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.ResRet.f32 %1294, 3
  %1299 = and i32 %1288, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = lshr i32 %1288, 8
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = lshr i32 %1288, 16
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101000000000
  %1308 = fmul fast float %1295, %1300
  %1309 = fadd fast float %1308, %1303
  %1310 = fmul fast float %1309, 0x3F70101000000000
  %1311 = fadd fast float %1296, -5.000000e-01
  %1312 = fadd fast float %1298, -5.000000e-01
  %1313 = fmul fast float %1311, %1307
  %1314 = fmul fast float %1312, %1307
  %1315 = fadd fast float %1313, 5.000000e-01
  %1316 = fadd fast float %1314, 5.000000e-01
  %1317 = fmul fast float %1315, 2.000000e+00
  %1318 = fadd fast float %1317, -1.000000e+00
  %1319 = fmul fast float %1316, 2.000000e+00
  %1320 = fadd fast float %1319, -1.000000e+00
  %1321 = fadd fast float %1318, %1320
  %1322 = fmul fast float %1321, 5.000000e-01
  %1323 = fsub fast float %1318, %1320
  %1324 = fmul fast float %1323, 5.000000e-01
  %1325 = call float @dx.op.unary.f32(i32 6, float %1322)  ; FAbs(value)
  %1326 = fsub fast float 1.000000e+00, %1325
  %1327 = call float @dx.op.unary.f32(i32 6, float %1324)  ; FAbs(value)
  %1328 = fsub fast float %1326, %1327
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1324, float %1328, float %1322, float %1324, float %1328)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = call float @dx.op.unary.f32(i32 25, float %1329)  ; Rsqrt(value)
  %1331 = fmul fast float %1322, %1330
  %1332 = fmul fast float %1324, %1330
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 67108864
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1353, label %1337

; <label>:1337                                    ; preds = %1285
  %1338 = add i32 %44, 168
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = and i32 %1340, 65535
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 65535
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = lshr i32 %1340, 16
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = fsub fast float %1310, %1348
  %1350 = fmul fast float %1349, %1342
  %1351 = fadd fast float %1350, %1346
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  br label %1353

; <label>:1353                                    ; preds = %1337, %1285
  %1354 = phi float [ %1352, %1337 ], [ %1310, %1285 ]
  %1355 = call float @dx.op.dot2.f32(i32 54, float %1331, float %1332, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %1356 = call float @dx.op.dot2.f32(i32 54, float %1331, float %1332, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %1357

; <label>:1357                                    ; preds = %1353, %1263
  %1358 = phi float [ %1354, %1353 ], [ 0x3FD6666660000000, %1263 ]
  %1359 = phi float [ %1355, %1353 ], [ 0.000000e+00, %1263 ]
  %1360 = phi float [ %1356, %1353 ], [ 0.000000e+00, %1263 ]
  %1361 = phi float [ %1297, %1353 ], [ 1.000000e+00, %1263 ]
  %1362 = add i32 %44, 112
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = lshr i32 %1364, 22
  %1366 = shl nuw nsw i32 %1365, 5
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = and i32 %1369, 64
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1405, label %1372

; <label>:1372                                    ; preds = %1357
  %1373 = add i32 %44, 220
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = add i32 %1375, 0
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %1379, 131072
  %1381 = icmp eq i32 %1380, 0
  %1382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1377, %dx.types.Handle %60, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = fmul fast float %1383, %230
  %1387 = fmul fast float %1384, %233
  %1388 = fmul fast float %1385, %236
  br i1 %1381, label %1395, label %1389

; <label>:1389                                    ; preds = %1372
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = fmul fast float %1391, %1386
  %1393 = fmul fast float %1391, %1387
  %1394 = fmul fast float %1391, %1388
  br label %1395

; <label>:1395                                    ; preds = %1389, %1372
  %1396 = phi float [ %1392, %1389 ], [ %1386, %1372 ]
  %1397 = phi float [ %1393, %1389 ], [ %1387, %1372 ]
  %1398 = phi float [ %1394, %1389 ], [ %1388, %1372 ]
  %1399 = fmul fast float %1396, %1367
  %1400 = select i1 %182, float %1399, float %1396
  %1401 = call float @dx.op.dot3.f32(i32 55, float %1400, float %1397, float %1398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1402 = select i1 %182, float 0.000000e+00, float %1396
  %1403 = select i1 %182, float %1401, float %1397
  %1404 = select i1 %182, float 0.000000e+00, float %1398
  br label %1405

; <label>:1405                                    ; preds = %1395, %1357
  %1406 = phi float [ %1402, %1395 ], [ 0.000000e+00, %1357 ]
  %1407 = phi float [ %1403, %1395 ], [ 0.000000e+00, %1357 ]
  %1408 = phi float [ %1404, %1395 ], [ 0.000000e+00, %1357 ]
  %1409 = add i32 %44, 80
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %1411, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = lshr i32 %1411, 8
  %1415 = and i32 %1414, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = fmul fast float %1416, %1417
  %1419 = fadd fast float %1418, %1413
  %1420 = fmul fast float %1419, 0x3F70101020000000
  %1421 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  br i1 %770, label %1422, label %1430

; <label>:1422                                    ; preds = %1405
  %1423 = fsub fast float 1.000000e+00, %1058
  %1424 = fmul fast float %1423, %759
  %1425 = fmul fast float %1423, %760
  %1426 = fmul fast float %1423, %761
  %1427 = fmul fast float %1423, %762
  %1428 = fmul fast float %1423, %763
  %1429 = fmul fast float %1423, %764
  br label %1430

; <label>:1430                                    ; preds = %1422, %1405
  %1431 = phi float [ %1424, %1422 ], [ %759, %1405 ]
  %1432 = phi float [ %1425, %1422 ], [ %760, %1405 ]
  %1433 = phi float [ %1426, %1422 ], [ %761, %1405 ]
  %1434 = phi float [ %1427, %1422 ], [ %762, %1405 ]
  %1435 = phi float [ %1428, %1422 ], [ %763, %1405 ]
  %1436 = phi float [ %1429, %1422 ], [ %764, %1405 ]
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 3
  %1440 = icmp eq i32 %1439, 3
  br i1 %1440, label %1519, label %1441

; <label>:1441                                    ; preds = %1430
  %1442 = and i32 %1438, 16
  %1443 = icmp ne i32 %1442, 0
  %1444 = select i1 %1443, float %1058, float 0.000000e+00
  %1445 = icmp eq i32 %1439, 0
  br i1 %1445, label %1446, label %1474

; <label>:1446                                    ; preds = %1441
  %1447 = and i32 %1438, 64
  %1448 = icmp ne i32 %1447, 0
  %1449 = select i1 %1448, float %1058, float 0.000000e+00
  %1450 = fsub fast float %1278, %1431
  %1451 = fsub fast float %1279, %1432
  %1452 = fsub fast float %1280, %1433
  %1453 = fmul fast float %1444, %1450
  %1454 = fmul fast float %1444, %1451
  %1455 = fmul fast float %1444, %1452
  %1456 = fadd fast float %1453, %1431
  %1457 = fadd fast float %1454, %1432
  %1458 = fadd fast float %1455, %1433
  %1459 = fsub fast float %1264, %765
  %1460 = fmul fast float %1444, %1459
  %1461 = fadd fast float %1460, %765
  %1462 = fsub fast float %1406, %1434
  %1463 = fsub fast float %1407, %1435
  %1464 = fsub fast float %1408, %1436
  %1465 = fmul fast float %1449, %1462
  %1466 = fmul fast float %1449, %1463
  %1467 = fmul fast float %1449, %1464
  %1468 = fadd fast float %1465, %1434
  %1469 = fadd fast float %1466, %1435
  %1470 = fadd fast float %1467, %1436
  %1471 = fsub fast float %1421, %769
  %1472 = fmul fast float %1444, %1471
  %1473 = fadd fast float %1472, %769
  br label %1519

; <label>:1474                                    ; preds = %1441
  %1475 = icmp eq i32 %1439, 1
  br i1 %1475, label %1476, label %1489

; <label>:1476                                    ; preds = %1474
  %1477 = fadd fast float %1278, -1.000000e+00
  %1478 = fadd fast float %1279, -1.000000e+00
  %1479 = fadd fast float %1280, -1.000000e+00
  %1480 = fmul fast float %1444, %1477
  %1481 = fmul fast float %1444, %1478
  %1482 = fmul fast float %1444, %1479
  %1483 = fadd fast float %1480, 1.000000e+00
  %1484 = fadd fast float %1481, 1.000000e+00
  %1485 = fadd fast float %1482, 1.000000e+00
  %1486 = fmul fast float %1483, %1431
  %1487 = fmul fast float %1484, %1432
  %1488 = fmul fast float %1485, %1433
  br label %1519

; <label>:1489                                    ; preds = %1474
  %1490 = icmp eq i32 %1439, 2
  br i1 %1490, label %1491, label %1519

; <label>:1491                                    ; preds = %1489
  %1492 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1493 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1494 = call float @dx.op.unary.f32(i32 24, float %1280)  ; Sqrt(value)
  %1495 = fadd fast float %1492, -5.000000e-01
  %1496 = fadd fast float %1493, -5.000000e-01
  %1497 = fadd fast float %1494, -5.000000e-01
  %1498 = fmul fast float %1495, %1444
  %1499 = fmul fast float %1496, %1444
  %1500 = fmul fast float %1497, %1444
  %1501 = fadd fast float %1498, 5.000000e-01
  %1502 = fadd fast float %1499, 5.000000e-01
  %1503 = fadd fast float %1500, 5.000000e-01
  %1504 = fmul fast float %1501, 2.000000e+00
  %1505 = fsub fast float 1.000000e+00, %1504
  %1506 = fmul fast float %1505, %1431
  %1507 = fadd fast float %1506, %1504
  %1508 = fmul fast float %1507, %1431
  %1509 = fmul fast float %1502, 2.000000e+00
  %1510 = fsub fast float 1.000000e+00, %1509
  %1511 = fmul fast float %1510, %1432
  %1512 = fadd fast float %1511, %1509
  %1513 = fmul fast float %1512, %1432
  %1514 = fmul fast float %1503, 2.000000e+00
  %1515 = fsub fast float 1.000000e+00, %1514
  %1516 = fmul fast float %1515, %1433
  %1517 = fadd fast float %1516, %1514
  %1518 = fmul fast float %1517, %1433
  br label %1519

; <label>:1519                                    ; preds = %1491, %1489, %1476, %1446, %1430
  %1520 = phi float [ %1431, %1430 ], [ %1508, %1491 ], [ %1431, %1489 ], [ %1486, %1476 ], [ %1456, %1446 ]
  %1521 = phi float [ %1432, %1430 ], [ %1513, %1491 ], [ %1432, %1489 ], [ %1487, %1476 ], [ %1457, %1446 ]
  %1522 = phi float [ %1433, %1430 ], [ %1518, %1491 ], [ %1433, %1489 ], [ %1488, %1476 ], [ %1458, %1446 ]
  %1523 = phi float [ %1434, %1430 ], [ %1434, %1491 ], [ %1434, %1489 ], [ %1434, %1476 ], [ %1468, %1446 ]
  %1524 = phi float [ %1435, %1430 ], [ %1435, %1491 ], [ %1435, %1489 ], [ %1435, %1476 ], [ %1469, %1446 ]
  %1525 = phi float [ %1436, %1430 ], [ %1436, %1491 ], [ %1436, %1489 ], [ %1436, %1476 ], [ %1470, %1446 ]
  %1526 = phi float [ %765, %1430 ], [ %765, %1491 ], [ %765, %1489 ], [ %765, %1476 ], [ %1461, %1446 ]
  %1527 = phi float [ %769, %1430 ], [ %769, %1491 ], [ %769, %1489 ], [ %769, %1476 ], [ %1473, %1446 ]
  %1528 = and i32 %1438, 12
  %1529 = icmp eq i32 %1528, 12
  br i1 %1529, label %1602, label %1530

; <label>:1530                                    ; preds = %1519
  %1531 = and i32 %1438, 2097184
  %1532 = icmp eq i32 %1531, 2097184
  %1533 = select i1 %1532, float %1058, float 0.000000e+00
  %1534 = and i32 %1438, 4194336
  %1535 = icmp eq i32 %1534, 4194336
  %1536 = select i1 %1535, float %1058, float 0.000000e+00
  %1537 = and i32 %1438, 8388640
  %1538 = icmp eq i32 %1537, 8388640
  %1539 = select i1 %1538, float %1058, float 0.000000e+00
  %1540 = icmp eq i32 %1528, 0
  br i1 %1540, label %1541, label %1554

; <label>:1541                                    ; preds = %1530
  %1542 = fsub fast float %1359, %757
  %1543 = fsub fast float %1360, %758
  %1544 = fmul fast float %1533, %1542
  %1545 = fmul fast float %1533, %1543
  %1546 = fadd fast float %1544, %757
  %1547 = fadd fast float %1545, %758
  %1548 = fsub fast float %1361, %768
  %1549 = fmul fast float %1536, %1548
  %1550 = fadd fast float %1549, %768
  %1551 = fsub fast float %1358, %767
  %1552 = fmul fast float %1539, %1551
  %1553 = fadd fast float %1552, %767
  br label %1602

; <label>:1554                                    ; preds = %1530
  %1555 = icmp eq i32 %1528, 4
  br i1 %1555, label %1556, label %1588

; <label>:1556                                    ; preds = %1554
  %1557 = fmul fast float %1533, %1359
  %1558 = fmul fast float %1533, %1360
  %1559 = fadd fast float %1557, %757
  %1560 = fadd fast float %1558, %758
  %1561 = call float @dx.op.binary.f32(i32 36, float %768, float %1361)  ; FMin(a,b)
  %1562 = fsub fast float %1561, %768
  %1563 = fmul fast float %1562, %1536
  %1564 = fadd fast float %1563, %768
  %1565 = fadd fast float %1358, %767
  %1566 = fmul fast float %1565, 0x3FF337FAE0000000
  %1567 = fmul fast float %767, %767
  %1568 = fmul fast float %1358, %1358
  %1569 = fadd fast float %1568, %1567
  %1570 = fmul fast float %1569, 0x3FE5152B00000000
  %1571 = fmul fast float %767, 0xBFCC1F85E0000000
  %1572 = fmul fast float %1571, %1358
  %1573 = fadd fast float %1572, 0xBFE1363700000000
  %1574 = fadd fast float %1573, %1566
  %1575 = fsub fast float %1574, %1570
  %1576 = fmul fast float %1565, 0x3FBA6F0D00000000
  %1577 = fmul fast float %1569, 0x3FD0432880000000
  %1578 = fmul fast float %767, 0xBFEF110800000000
  %1579 = fmul fast float %1578, %1358
  %1580 = fadd fast float %1579, 1.000000e+00
  %1581 = fsub fast float %1580, %1576
  %1582 = fadd fast float %1581, %1577
  %1583 = fdiv fast float %1575, %1582
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = fsub fast float %1584, %767
  %1586 = fmul fast float %1585, %1539
  %1587 = fadd fast float %1586, %767
  br label %1602

; <label>:1588                                    ; preds = %1554
  %1589 = icmp eq i32 %1528, 8
  br i1 %1589, label %1590, label %1602

; <label>:1590                                    ; preds = %1588
  %1591 = fmul fast float %1533, %1359
  %1592 = fmul fast float %1533, %1360
  %1593 = fadd fast float %1591, %757
  %1594 = fadd fast float %1592, %758
  %1595 = call float @dx.op.binary.f32(i32 36, float %768, float %1361)  ; FMin(a,b)
  %1596 = fsub fast float %1595, %768
  %1597 = fmul fast float %1596, %1536
  %1598 = fadd fast float %1597, %768
  %1599 = fsub fast float %1358, %767
  %1600 = fmul fast float %1539, %1599
  %1601 = fadd fast float %1600, %767
  br label %1602

; <label>:1602                                    ; preds = %1590, %1588, %1556, %1541, %1519, %1057, %756
  %1603 = phi float [ %757, %1519 ], [ %757, %1057 ], [ %757, %756 ], [ %1546, %1541 ], [ %1559, %1556 ], [ %757, %1588 ], [ %1593, %1590 ]
  %1604 = phi float [ %758, %1519 ], [ %758, %1057 ], [ %758, %756 ], [ %1547, %1541 ], [ %1560, %1556 ], [ %758, %1588 ], [ %1594, %1590 ]
  %1605 = phi float [ %1520, %1519 ], [ %759, %1057 ], [ %759, %756 ], [ %1520, %1541 ], [ %1520, %1556 ], [ %1520, %1588 ], [ %1520, %1590 ]
  %1606 = phi float [ %1521, %1519 ], [ %760, %1057 ], [ %760, %756 ], [ %1521, %1541 ], [ %1521, %1556 ], [ %1521, %1588 ], [ %1521, %1590 ]
  %1607 = phi float [ %1522, %1519 ], [ %761, %1057 ], [ %761, %756 ], [ %1522, %1541 ], [ %1522, %1556 ], [ %1522, %1588 ], [ %1522, %1590 ]
  %1608 = phi float [ %1523, %1519 ], [ %762, %1057 ], [ %762, %756 ], [ %1523, %1541 ], [ %1523, %1556 ], [ %1523, %1588 ], [ %1523, %1590 ]
  %1609 = phi float [ %1524, %1519 ], [ %763, %1057 ], [ %763, %756 ], [ %1524, %1541 ], [ %1524, %1556 ], [ %1524, %1588 ], [ %1524, %1590 ]
  %1610 = phi float [ %1525, %1519 ], [ %764, %1057 ], [ %764, %756 ], [ %1525, %1541 ], [ %1525, %1556 ], [ %1525, %1588 ], [ %1525, %1590 ]
  %1611 = phi float [ %1526, %1519 ], [ %765, %1057 ], [ %765, %756 ], [ %1526, %1541 ], [ %1526, %1556 ], [ %1526, %1588 ], [ %1526, %1590 ]
  %1612 = phi float [ %767, %1519 ], [ %767, %1057 ], [ %767, %756 ], [ %1553, %1541 ], [ %1587, %1556 ], [ %767, %1588 ], [ %1601, %1590 ]
  %1613 = phi float [ %768, %1519 ], [ %768, %1057 ], [ %768, %756 ], [ %1550, %1541 ], [ %1564, %1556 ], [ %768, %1588 ], [ %1598, %1590 ]
  %1614 = phi float [ %1527, %1519 ], [ %769, %1057 ], [ %769, %756 ], [ %1527, %1541 ], [ %1527, %1556 ], [ %1527, %1588 ], [ %1527, %1590 ]
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  %1617 = call float @dx.op.dot2.f32(i32 54, float %1603, float %1604, float %1603, float %1604)  ; Dot2(ax,ay,bx,by)
  %1618 = fmul fast float %1617, 0x3FE3333340000000
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1603, float %1604, float %1619, float %1603, float %1604, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = call float @dx.op.unary.f32(i32 25, float %1620)  ; Rsqrt(value)
  %1622 = fmul fast float %1621, %1603
  %1623 = fmul fast float %1621, %1604
  %1624 = fmul fast float %1619, %1621
  %1625 = fmul fast float %1624, %49
  %1626 = fmul fast float %1624, %50
  %1627 = fmul fast float %1624, %51
  %1628 = fmul fast float %1622, %45
  %1629 = fmul fast float %1622, %46
  %1630 = fmul fast float %1622, %47
  %1631 = fadd fast float %1625, %1628
  %1632 = fadd fast float %1626, %1629
  %1633 = fadd fast float %1627, %1630
  %1634 = fmul fast float %1623, %75
  %1635 = fmul fast float %1623, %76
  %1636 = fmul fast float %1623, %77
  %1637 = fadd fast float %1631, %1634
  %1638 = fadd fast float %1632, %1635
  %1639 = fadd fast float %1633, %1636
  %1640 = call float @dx.op.dot3.f32(i32 55, float %1637, float %1638, float %1639, float %1637, float %1638, float %1639)  ; Dot3(ax,ay,az,bx,by,bz)
  %1641 = call float @dx.op.unary.f32(i32 25, float %1640)  ; Rsqrt(value)
  %1642 = fmul fast float %1637, %1641
  %1643 = fmul fast float %1638, %1641
  %1644 = fmul fast float %1639, %1641
  %1645 = call float @dx.op.unary.f32(i32 83, float %111)  ; DerivCoarseX(value)
  %1646 = call float @dx.op.unary.f32(i32 83, float %112)  ; DerivCoarseX(value)
  %1647 = call float @dx.op.unary.f32(i32 83, float %113)  ; DerivCoarseX(value)
  %1648 = call float @dx.op.unary.f32(i32 84, float %111)  ; DerivCoarseY(value)
  %1649 = call float @dx.op.unary.f32(i32 84, float %112)  ; DerivCoarseY(value)
  %1650 = call float @dx.op.unary.f32(i32 84, float %113)  ; DerivCoarseY(value)
  %1651 = fadd fast float %1645, %111
  %1652 = fadd fast float %1646, %112
  %1653 = fadd fast float %1647, %113
  %1654 = fadd fast float %1648, %111
  %1655 = fadd fast float %1649, %112
  %1656 = fadd fast float %1650, %113
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1664 = fmul fast float %1658, %64
  %1665 = fmul fast float %1664, %1662
  %1666 = fmul fast float %1659, %65
  %1667 = fmul fast float %1666, %1663
  %1668 = fptoui float %1665 to i32
  %1669 = fptoui float %1667 to i32
  %1670 = fadd fast float %1658, -1.000000e+00
  %1671 = fadd fast float %1659, -1.000000e+00
  %1672 = fptoui float %1670 to i32
  %1673 = fptoui float %1671 to i32
  %1674 = call i32 @dx.op.binary.i32(i32 40, i32 %1668, i32 %1672)  ; UMin(a,b)
  %1675 = call i32 @dx.op.binary.i32(i32 40, i32 %1669, i32 %1673)  ; UMin(a,b)
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 3
  %1679 = fmul fast float %1677, %59
  %1680 = fsub fast float %1679, %1678
  %1681 = fadd fast float %1660, -1.000000e+00
  %1682 = call float @dx.op.binary.f32(i32 36, float %1680, float %1681)  ; FMin(a,b)
  %1683 = fptoui float %1682 to i32
  %1684 = fptoui float %1658 to i32
  %1685 = fptoui float %1659 to i32
  %1686 = mul i32 %1683, %1685
  %1687 = add i32 %1686, %1675
  %1688 = mul i32 %1687, %1684
  %1689 = add i32 %1688, %1674
  %1690 = shl i32 %1689, 2
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 1023
  %1694 = lshr i32 %1692, 10
  %1695 = icmp eq i32 %1693, 0
  br i1 %1695, label %2121, label %1696

; <label>:1696                                    ; preds = %1602
  %1697 = and i32 %1692, 1023
  br label %1698

; <label>:1698                                    ; preds = %1824, %1696
  %1699 = phi float [ %1825, %1824 ], [ 0.000000e+00, %1696 ]
  %1700 = phi float [ %1826, %1824 ], [ %1616, %1696 ]
  %1701 = phi float [ %1827, %1824 ], [ %1614, %1696 ]
  %1702 = phi float [ %1828, %1824 ], [ 0.000000e+00, %1696 ]
  %1703 = phi float [ %1829, %1824 ], [ 0.000000e+00, %1696 ]
  %1704 = phi float [ %1830, %1824 ], [ %1608, %1696 ]
  %1705 = phi float [ %1831, %1824 ], [ %1609, %1696 ]
  %1706 = phi float [ %1832, %1824 ], [ %1610, %1696 ]
  %1707 = phi float [ %1833, %1824 ], [ %1642, %1696 ]
  %1708 = phi float [ %1834, %1824 ], [ %1643, %1696 ]
  %1709 = phi float [ %1835, %1824 ], [ %1644, %1696 ]
  %1710 = phi float [ %1836, %1824 ], [ %1613, %1696 ]
  %1711 = phi float [ %1837, %1824 ], [ %1612, %1696 ]
  %1712 = phi float [ %1838, %1824 ], [ 0.000000e+00, %1696 ]
  %1713 = phi float [ %1839, %1824 ], [ %1611, %1696 ]
  %1714 = phi float [ %1840, %1824 ], [ %1605, %1696 ]
  %1715 = phi float [ %1841, %1824 ], [ %1606, %1696 ]
  %1716 = phi float [ %1842, %1824 ], [ %1607, %1696 ]
  %1717 = phi i32 [ %1774, %1824 ], [ 0, %1696 ]
  %1718 = add nuw nsw i32 %1717, %1694
  %1719 = shl i32 %1718, 2
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = shl i32 %1721, 8
  %1723 = or i32 %1722, 48
  %1724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.ResRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.ResRet.f32 %1724, 2
  %1728 = extractvalue %dx.types.ResRet.f32 %1724, 3
  %1729 = or i32 %1722, 64
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.i32 %1730, 1
  %1733 = or i32 %1722, 80
  %1734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 3
  %1737 = or i32 %1722, 96
  %1738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.ResRet.f32 %1738, 1
  %1741 = extractvalue %dx.types.ResRet.f32 %1738, 2
  %1742 = extractvalue %dx.types.ResRet.f32 %1738, 3
  %1743 = or i32 %1722, 112
  %1744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 2
  %1746 = or i32 %1722, 128
  %1747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = extractvalue %dx.types.ResRet.f32 %1747, 1
  %1750 = extractvalue %dx.types.ResRet.f32 %1747, 2
  %1751 = extractvalue %dx.types.ResRet.f32 %1747, 3
  %1752 = or i32 %1722, 144
  %1753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = extractvalue %dx.types.ResRet.f32 %1753, 3
  %1758 = or i32 %1722, 160
  %1759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.ResRet.f32 %1759, 1
  %1762 = extractvalue %dx.types.ResRet.f32 %1759, 2
  %1763 = extractvalue %dx.types.ResRet.f32 %1759, 3
  %1764 = or i32 %1722, 192
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = or i32 %1722, 208
  %1768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = or i32 %1722, 248
  %1771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.f32 %1771, 1
  %1774 = add nuw nsw i32 %1717, 1
  %1775 = bitcast float %1728 to i32
  %1776 = and i32 %1775, 2560
  %1777 = icmp eq i32 %1776, 0
  %1778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.ResRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.ResRet.f32 %1778, 2
  %1782 = extractvalue %dx.types.ResRet.f32 %1778, 3
  %1783 = call float @dx.op.dot4.f32(i32 56, float %1779, float %1780, float %1781, float %1782, float %111, float %112, float %113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1784 = or i32 %1722, 16
  %1785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = extractvalue %dx.types.ResRet.f32 %1785, 3
  %1790 = call float @dx.op.dot4.f32(i32 56, float %1786, float %1787, float %1788, float %1789, float %111, float %112, float %113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1791 = or i32 %1722, 32
  %1792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.ResRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.ResRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.ResRet.f32 %1792, 3
  %1797 = call float @dx.op.dot4.f32(i32 56, float %1793, float %1794, float %1795, float %1796, float %111, float %112, float %113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1798 = call float @dx.op.unary.f32(i32 27, float %1783)  ; Round_ni(value)
  %1799 = call float @dx.op.unary.f32(i32 6, float %1798)  ; FAbs(value)
  %1800 = call float @dx.op.unary.f32(i32 27, float %1790)  ; Round_ni(value)
  %1801 = call float @dx.op.unary.f32(i32 6, float %1800)  ; FAbs(value)
  %1802 = call float @dx.op.unary.f32(i32 6, float %1797)  ; FAbs(value)
  %1803 = call float @dx.op.unary.f32(i32 27, float %1802)  ; Round_ni(value)
  %1804 = fadd fast float %1801, %1799
  %1805 = fadd fast float %1804, %1803
  %1806 = fcmp fast oeq float %1805, 0.000000e+00
  %1807 = call float @dx.op.dot4.f32(i32 56, float %1779, float %1780, float %1781, float %1782, float %1651, float %1652, float %1653, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1808 = call float @dx.op.dot4.f32(i32 56, float %1786, float %1787, float %1788, float %1789, float %1651, float %1652, float %1653, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1809 = call float @dx.op.dot4.f32(i32 56, float %1779, float %1780, float %1781, float %1782, float %1654, float %1655, float %1656, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1810 = call float @dx.op.dot4.f32(i32 56, float %1786, float %1787, float %1788, float %1789, float %1654, float %1655, float %1656, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1811 = fsub fast float %1807, %1783
  %1812 = fsub fast float %1809, %1783
  %1813 = fsub fast float %1808, %1790
  %1814 = fsub fast float %1810, %1790
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1725, float %1726, float %1727, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1818 = fadd fast float %1817, %1815
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1821 = fcmp fast ogt float %1819, %1820
  %1822 = and i1 %1806, %1821
  %1823 = and i1 %1777, %1822
  br i1 %1823, label %1844, label %1824

; <label>:1824                                    ; preds = %2107, %1925, %1844, %1698
  %1825 = phi float [ %1699, %1844 ], [ %1928, %1925 ], [ %1928, %2107 ], [ %1699, %1698 ]
  %1826 = phi float [ %1700, %1844 ], [ %1700, %1925 ], [ %2082, %2107 ], [ %1700, %1698 ]
  %1827 = phi float [ %1701, %1844 ], [ %1701, %1925 ], [ %2080, %2107 ], [ %1701, %1698 ]
  %1828 = phi float [ %1702, %1844 ], [ %1702, %1925 ], [ %2052, %2107 ], [ %1702, %1698 ]
  %1829 = phi float [ %1703, %1844 ], [ %1703, %1925 ], [ %2050, %2107 ], [ %1703, %1698 ]
  %1830 = phi float [ %1704, %1844 ], [ %1704, %1925 ], [ %2117, %2107 ], [ %1704, %1698 ]
  %1831 = phi float [ %1705, %1844 ], [ %1705, %1925 ], [ %2118, %2107 ], [ %1705, %1698 ]
  %1832 = phi float [ %1706, %1844 ], [ %1706, %1925 ], [ %2119, %2107 ], [ %1706, %1698 ]
  %1833 = phi float [ %1707, %1844 ], [ %1707, %1925 ], [ %2031, %2107 ], [ %1707, %1698 ]
  %1834 = phi float [ %1708, %1844 ], [ %1708, %1925 ], [ %2032, %2107 ], [ %1708, %1698 ]
  %1835 = phi float [ %1709, %1844 ], [ %1709, %1925 ], [ %2033, %2107 ], [ %1709, %1698 ]
  %1836 = phi float [ %1710, %1844 ], [ %1710, %1925 ], [ %2060, %2107 ], [ %1710, %1698 ]
  %1837 = phi float [ %1711, %1844 ], [ %1711, %1925 ], [ %2057, %2107 ], [ %1711, %1698 ]
  %1838 = phi float [ %1712, %1844 ], [ %1712, %1925 ], [ %2054, %2107 ], [ %1712, %1698 ]
  %1839 = phi float [ %1713, %1844 ], [ %1713, %1925 ], [ %2048, %2107 ], [ %1713, %1698 ]
  %1840 = phi float [ %1714, %1844 ], [ %1714, %1925 ], [ %2043, %2107 ], [ %1714, %1698 ]
  %1841 = phi float [ %1715, %1844 ], [ %1715, %1925 ], [ %2044, %2107 ], [ %1715, %1698 ]
  %1842 = phi float [ %1716, %1844 ], [ %1716, %1925 ], [ %2045, %2107 ], [ %1716, %1698 ]
  %1843 = icmp eq i32 %1774, %1697
  br i1 %1843, label %2120, label %1698

; <label>:1844                                    ; preds = %1698
  %1845 = extractvalue %dx.types.ResRet.f32 %1744, 3
  %1846 = extractvalue %dx.types.ResRet.f32 %1744, 1
  %1847 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1848 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1849 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1850 = extractvalue %dx.types.ResRet.i32 %1730, 3
  %1851 = extractvalue %dx.types.ResRet.i32 %1730, 2
  %1852 = add i32 %1850, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1852, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1855 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1853, %dx.types.Handle %1854, float %1783, float %1790, float undef, float undef, i32 0, i32 0, i32 undef, float %1811, float %1813, float undef, float %1812, float %1814, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1856 = extractvalue %dx.types.ResRet.f32 %1855, 0
  %1857 = fmul fast float %1856, %1849
  %1858 = fadd fast float %1857, %1848
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = fmul fast float %1783, %1739
  %1861 = call float @dx.op.tertiary.f32(i32 46, float %1740, float %1790, float %1860)  ; FMad(a,b,c)
  %1862 = fadd fast float %1861, %1847
  %1863 = fmul fast float %1783, %1741
  %1864 = call float @dx.op.tertiary.f32(i32 46, float %1742, float %1790, float %1863)  ; FMad(a,b,c)
  %1865 = fadd fast float %1864, %1846
  %1866 = fmul fast float %1811, %1739
  %1867 = call float @dx.op.tertiary.f32(i32 46, float %1740, float %1813, float %1866)  ; FMad(a,b,c)
  %1868 = fmul fast float %1811, %1741
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1742, float %1813, float %1868)  ; FMad(a,b,c)
  %1870 = fmul fast float %1812, %1739
  %1871 = call float @dx.op.tertiary.f32(i32 46, float %1740, float %1814, float %1870)  ; FMad(a,b,c)
  %1872 = fmul fast float %1812, %1741
  %1873 = call float @dx.op.tertiary.f32(i32 46, float %1742, float %1814, float %1872)  ; FMad(a,b,c)
  %1874 = add i32 %1851, 0
  %1875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1874, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1876 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1875, %dx.types.Handle %1854, float %1862, float %1865, float undef, float undef, i32 0, i32 0, i32 undef, float %1867, float %1869, float undef, float %1871, float %1873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = and i32 %1775, 1024
  %1879 = icmp ne i32 %1878, 0
  %1880 = fcmp fast ogt float %1877, 0x3FE0101020000000
  %1881 = uitofp i1 %1880 to float
  %1882 = select i1 %1879, float %1881, float %1877
  %1883 = and i32 %1775, 8192
  %1884 = icmp ne i32 %1883, 0
  %1885 = select i1 %1884, float %1845, float 1.000000e+00
  %1886 = fmul fast float %1783, 2.000000e+00
  %1887 = fadd fast float %1886, -1.000000e+00
  %1888 = call float @dx.op.unary.f32(i32 6, float %1887)  ; FAbs(value)
  %1889 = fmul fast float %1888, %1772
  %1890 = fsub fast float %1889, %1772
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = fmul fast float %1790, 2.000000e+00
  %1893 = fadd fast float %1892, -1.000000e+00
  %1894 = call float @dx.op.unary.f32(i32 6, float %1893)  ; FAbs(value)
  %1895 = fmul fast float %1894, %1773
  %1896 = fsub fast float %1895, %1773
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fmul fast float %1802, %1735
  %1899 = fsub fast float %1898, %1735
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = fmul fast float %1859, %1885
  %1902 = fmul fast float %1901, %1856
  %1903 = fmul fast float %1902, %1891
  %1904 = fmul fast float %1903, %1882
  %1905 = fmul fast float %1904, %1897
  %1906 = fmul fast float %1905, %1900
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1910 = fsub fast float %1819, %1909
  %1911 = fmul fast float %1910, %1908
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = fmul fast float %1906, %1736
  %1914 = fadd fast float %1906, %1736
  %1915 = fmul fast float %1914, %1745
  %1916 = fsub fast float %1915, %1745
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = and i32 %1775, 128
  %1919 = icmp ne i32 %1918, 0
  %1920 = select i1 %1919, float %1917, float %1913
  %1921 = fmul fast float %1920, %1912
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1924 = fcmp fast ugt float %1921, %1923
  br i1 %1924, label %1925, label %1824

; <label>:1925                                    ; preds = %1844
  %1926 = select i1 %1884, float %1921, float 0.000000e+00
  %1927 = fadd fast float %1926, %1699
  %1928 = call float @dx.op.unary.f32(i32 7, float %1927)  ; Saturate(value)
  br i1 %1884, label %1824, label %1929

; <label>:1929                                    ; preds = %1925
  %1930 = and i32 %1775, 4
  %1931 = and i32 %1775, 8
  %1932 = add i32 %1731, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1933, %dx.types.Handle %1934, float %1862, float %1865, float undef, float undef, i32 0, i32 0, i32 undef, float %1867, float %1869, float undef, float %1871, float %1873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.ResRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.ResRet.f32 %1935, 2
  %1939 = extractvalue %dx.types.ResRet.f32 %1935, 3
  %1940 = bitcast float %1757 to i32
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = lshr i32 %1940, 8
  %1944 = and i32 %1943, 255
  %1945 = uitofp i32 %1944 to float
  %1946 = fmul fast float %1939, %1942
  %1947 = fadd fast float %1946, %1945
  %1948 = fmul fast float %1947, 0x3F70101000000000
  %1949 = add i32 %1732, 0
  %1950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1949, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1951 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1950, %dx.types.Handle %1934, float %1862, float %1865, float undef, float undef, i32 0, i32 0, i32 undef, float %1867, float %1869, float undef, float %1871, float %1873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  %1953 = extractvalue %dx.types.ResRet.f32 %1951, 1
  %1954 = extractvalue %dx.types.ResRet.f32 %1951, 2
  %1955 = extractvalue %dx.types.ResRet.f32 %1951, 3
  %1956 = bitcast float %1751 to i32
  %1957 = and i32 %1956, 255
  %1958 = uitofp i32 %1957 to float
  %1959 = lshr i32 %1956, 8
  %1960 = and i32 %1959, 255
  %1961 = uitofp i32 %1960 to float
  %1962 = lshr i32 %1956, 16
  %1963 = and i32 %1962, 255
  %1964 = uitofp i32 %1963 to float
  %1965 = fmul fast float %1964, 0x3F70101000000000
  %1966 = fmul fast float %1952, %1958
  %1967 = fadd fast float %1966, %1961
  %1968 = fmul fast float %1967, 0x3F70101000000000
  %1969 = fadd fast float %1953, -5.000000e-01
  %1970 = fadd fast float %1955, -5.000000e-01
  %1971 = fmul fast float %1969, %1965
  %1972 = fmul fast float %1970, %1965
  %1973 = fadd fast float %1971, 5.000000e-01
  %1974 = fadd fast float %1972, 5.000000e-01
  %1975 = fmul fast float %1936, %1760
  %1976 = fmul fast float %1937, %1761
  %1977 = fmul fast float %1938, %1762
  %1978 = fmul fast float %1973, 2.000000e+00
  %1979 = fadd fast float %1978, -1.000000e+00
  %1980 = fmul fast float %1974, 2.000000e+00
  %1981 = fadd fast float %1980, -1.000000e+00
  %1982 = fadd fast float %1979, %1981
  %1983 = fmul fast float %1982, 5.000000e-01
  %1984 = fsub fast float %1979, %1981
  %1985 = fmul fast float %1984, 5.000000e-01
  %1986 = call float @dx.op.unary.f32(i32 6, float %1983)  ; FAbs(value)
  %1987 = fsub fast float 1.000000e+00, %1986
  %1988 = call float @dx.op.unary.f32(i32 6, float %1985)  ; FAbs(value)
  %1989 = fsub fast float %1987, %1988
  %1990 = call float @dx.op.dot3.f32(i32 55, float %1983, float %1985, float %1989, float %1983, float %1985, float %1989)  ; Dot3(ax,ay,az,bx,by,bz)
  %1991 = call float @dx.op.unary.f32(i32 25, float %1990)  ; Rsqrt(value)
  %1992 = fmul fast float %1983, %1991
  %1993 = fmul fast float %1985, %1991
  %1994 = fmul fast float %1991, %1989
  %1995 = fmul fast float %1994, %1725
  %1996 = fmul fast float %1994, %1726
  %1997 = fmul fast float %1994, %1727
  %1998 = fmul fast float %1992, %1748
  %1999 = fmul fast float %1992, %1749
  %2000 = fmul fast float %1992, %1750
  %2001 = fadd fast float %1998, %1995
  %2002 = fadd fast float %1999, %1996
  %2003 = fadd fast float %2000, %1997
  %2004 = fmul fast float %1993, %1754
  %2005 = fmul fast float %1993, %1755
  %2006 = fmul fast float %1993, %1756
  %2007 = fadd fast float %2001, %2004
  %2008 = fadd fast float %2002, %2005
  %2009 = fadd fast float %2003, %2006
  %2010 = call float @dx.op.dot3.f32(i32 55, float %2007, float %2008, float %2009, float %2007, float %2008, float %2009)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = call float @dx.op.unary.f32(i32 25, float %2010)  ; Rsqrt(value)
  %2012 = fmul fast float %2007, %2011
  %2013 = fmul fast float %2008, %2011
  %2014 = fmul fast float %2009, %2011
  %2015 = icmp ne i32 %1931, 0
  %2016 = select i1 %2015, float 1.000000e+00, float 0.000000e+00
  %2017 = fmul fast float %1921, %2016
  %2018 = and i32 %1775, 1
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2020, label %2024

; <label>:2020                                    ; preds = %1929
  %2021 = fsub fast float %2012, %1707
  %2022 = fsub fast float %2013, %1708
  %2023 = fsub fast float %2014, %1709
  br label %2024

; <label>:2024                                    ; preds = %2020, %1929
  %2025 = phi float [ %2021, %2020 ], [ %2012, %1929 ]
  %2026 = phi float [ %2022, %2020 ], [ %2013, %1929 ]
  %2027 = phi float [ %2023, %2020 ], [ %2014, %1929 ]
  %2028 = fmul float %2027, %2017
  %2029 = fmul float %2026, %2017
  %2030 = fmul float %2025, %2017
  %2031 = fadd fast float %2030, %1707
  %2032 = fadd fast float %2029, %1708
  %2033 = fadd fast float %2028, %1709
  %2034 = icmp ne i32 %1930, 0
  %2035 = select i1 %2034, float 1.000000e+00, float 0.000000e+00
  %2036 = fmul fast float %1921, %2035
  %2037 = fsub fast float %1975, %1714
  %2038 = fsub fast float %1976, %1715
  %2039 = fsub fast float %1977, %1716
  %2040 = fmul fast float %2037, %2036
  %2041 = fmul fast float %2038, %2036
  %2042 = fmul fast float %2039, %2036
  %2043 = fadd fast float %2040, %1714
  %2044 = fadd fast float %2041, %1715
  %2045 = fadd fast float %2042, %1716
  %2046 = fsub fast float %1948, %1713
  %2047 = fmul fast float %2046, %2036
  %2048 = fadd fast float %2047, %1713
  %2049 = fmul fast float %2036, %1703
  %2050 = fsub fast float %1703, %2049
  %2051 = fmul fast float %2036, %1702
  %2052 = fsub fast float %1702, %2051
  %2053 = fadd fast float %1921, %1712
  %2054 = call float @dx.op.unary.f32(i32 7, float %2053)  ; Saturate(value)
  %2055 = fsub fast float %1968, %1711
  %2056 = fmul fast float %2055, %2017
  %2057 = fadd fast float %2056, %1711
  %2058 = fsub fast float %1954, %1710
  %2059 = fmul fast float %2058, %2017
  %2060 = fadd fast float %2059, %1710
  %2061 = call float @dx.op.dot3.f32(i32 55, float %1975, float %1976, float %1977, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = fmul fast float %2064, %2061
  %2066 = fadd fast float %2065, %2063
  %2067 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2068 = bitcast float %1763 to i32
  %2069 = and i32 %2068, 65535
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = lshr i32 %2068, 16
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = fcmp fast oge float %2070, 0.000000e+00
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 0
  %2076 = select i1 %2073, float %2070, float %2075
  %2077 = fadd fast float %2076, %2072
  %2078 = fsub fast float %2067, %1701
  %2079 = fmul fast float %2078, %1921
  %2080 = fadd fast float %2079, %1701
  %2081 = fmul fast float %2077, %1921
  %2082 = call float @dx.op.binary.f32(i32 35, float %1700, float %2081)  ; FMax(a,b)
  %2083 = and i32 %1775, 16
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2107, label %2085

; <label>:2085                                    ; preds = %2024
  %2086 = bitcast float %1769 to i32
  %2087 = add i32 %1766, 0
  %2088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2087, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2089 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2088, %dx.types.Handle %1934, float %1862, float %1865, float undef, float undef, i32 0, i32 0, i32 undef, float %1867, float %1869, float undef, float %1871, float %1873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = and i32 %2086, 65535
  %2094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2093)  ; LegacyF16ToF32(value)
  %2095 = fmul fast float %2090, %1760
  %2096 = fmul fast float %2091, %1761
  %2097 = fmul fast float %2092, %1762
  %2098 = and i32 %1775, 16384
  %2099 = icmp ne i32 %2098, 0
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 0
  %2102 = select i1 %2099, float %2101, float 1.000000e+00
  %2103 = fmul fast float %2102, %2094
  %2104 = fmul fast float %2095, %2103
  %2105 = fmul fast float %2096, %2103
  %2106 = fmul fast float %2097, %2103
  br label %2107

; <label>:2107                                    ; preds = %2085, %2024
  %2108 = phi float [ %2104, %2085 ], [ 0.000000e+00, %2024 ]
  %2109 = phi float [ %2105, %2085 ], [ 0.000000e+00, %2024 ]
  %2110 = phi float [ %2106, %2085 ], [ 0.000000e+00, %2024 ]
  %2111 = fsub fast float %2108, %1704
  %2112 = fsub fast float %2109, %1705
  %2113 = fsub fast float %2110, %1706
  %2114 = fmul fast float %2111, %1921
  %2115 = fmul fast float %2112, %1921
  %2116 = fmul fast float %2113, %1921
  %2117 = fadd fast float %2114, %1704
  %2118 = fadd fast float %2115, %1705
  %2119 = fadd fast float %2116, %1706
  br label %1824

; <label>:2120                                    ; preds = %1824
  br label %2121

; <label>:2121                                    ; preds = %2120, %1602
  %2122 = phi float [ 0.000000e+00, %1602 ], [ %1825, %2120 ]
  %2123 = phi float [ %1616, %1602 ], [ %1826, %2120 ]
  %2124 = phi float [ %1614, %1602 ], [ %1827, %2120 ]
  %2125 = phi float [ 0.000000e+00, %1602 ], [ %1828, %2120 ]
  %2126 = phi float [ 0.000000e+00, %1602 ], [ %1829, %2120 ]
  %2127 = phi float [ %1608, %1602 ], [ %1830, %2120 ]
  %2128 = phi float [ %1609, %1602 ], [ %1831, %2120 ]
  %2129 = phi float [ %1610, %1602 ], [ %1832, %2120 ]
  %2130 = phi float [ %1642, %1602 ], [ %1833, %2120 ]
  %2131 = phi float [ %1643, %1602 ], [ %1834, %2120 ]
  %2132 = phi float [ %1644, %1602 ], [ %1835, %2120 ]
  %2133 = phi float [ %1613, %1602 ], [ %1836, %2120 ]
  %2134 = phi float [ %1612, %1602 ], [ %1837, %2120 ]
  %2135 = phi float [ 0.000000e+00, %1602 ], [ %1838, %2120 ]
  %2136 = phi float [ %1611, %1602 ], [ %1839, %2120 ]
  %2137 = phi float [ %1605, %1602 ], [ %1840, %2120 ]
  %2138 = phi float [ %1606, %1602 ], [ %1841, %2120 ]
  %2139 = phi float [ %1607, %1602 ], [ %1842, %2120 ]
  %2140 = call float @dx.op.dot3.f32(i32 55, float %2130, float %2131, float %2132, float %2130, float %2131, float %2132)  ; Dot3(ax,ay,az,bx,by,bz)
  %2141 = call float @dx.op.unary.f32(i32 25, float %2140)  ; Rsqrt(value)
  %2142 = fmul fast float %2141, %2130
  %2143 = fmul fast float %2141, %2131
  %2144 = fmul fast float %2141, %2132
  %2145 = fadd fast float %2135, %766
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = call float @dx.op.dot3.f32(i32 55, float %2142, float %2143, float %2144, float %2142, float %2143, float %2144)  ; Dot3(ax,ay,az,bx,by,bz)
  %2148 = call float @dx.op.unary.f32(i32 25, float %2147)  ; Rsqrt(value)
  %2149 = fmul fast float %2148, %2142
  %2150 = fmul fast float %2148, %2143
  %2151 = fmul fast float %2148, %2144
  %2152 = fadd fast float %2136, 0xBFB99999A0000000
  %2153 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2154 = fmul fast float %2153, 0x3FF1C71C80000000
  %2155 = call float @dx.op.binary.f32(i32 36, float %2136, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2156 = fsub fast float 1.000000e+00, %2154
  %2157 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2158 = fmul fast float %2157, %2137
  %2159 = fmul fast float %2157, %2138
  %2160 = fmul fast float %2157, %2139
  %2161 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2162 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2163 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2164 = fmul fast float %2154, %2137
  %2165 = fmul fast float %2154, %2138
  %2166 = fmul fast float %2154, %2139
  %2167 = fadd fast float %2164, %2155
  %2168 = fadd fast float %2165, %2155
  %2169 = fadd fast float %2166, %2155
  %2170 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2171 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2172 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2173 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.i32 %2174, 3
  %2176 = and i32 %2175, 8
  %2177 = icmp ne i32 %2176, 0
  %2178 = call float @dx.op.binary.f32(i32 35, float %2161, float %2137)  ; FMax(a,b)
  %2179 = call float @dx.op.binary.f32(i32 35, float %2162, float %2137)  ; FMax(a,b)
  %2180 = call float @dx.op.binary.f32(i32 35, float %2163, float %2137)  ; FMax(a,b)
  %2181 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2182 = select i1 %182, float %2137, float %2161
  %2183 = select i1 %182, float %2181, float %2162
  %2184 = select i1 %182, float 1.000000e+00, float %2163
  %2185 = select i1 %2177, float %2178, float %2182
  %2186 = select i1 %2177, float %2179, float %2183
  %2187 = select i1 %2177, float %2180, float %2184
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2192 = fadd fast float %2189, %111
  %2193 = fadd fast float %2190, %112
  %2194 = fadd fast float %2191, %113
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2198 = fsub fast float %2192, %2196
  %2199 = fsub fast float %2193, %2197
  %2200 = fmul fast float %2198, %2198
  %2201 = fmul fast float %2199, %2199
  %2202 = fadd fast float %2200, %2201
  %2203 = call float @dx.op.unary.f32(i32 24, float %2202)  ; Sqrt(value)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2205 = fcmp fast olt float %2203, %2204
  br i1 %2205, label %2206, label %2273

; <label>:2206                                    ; preds = %2121
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 0
  %2211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2211, 0
  %2213 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2214 = extractvalue %dx.types.CBufRet.f32 %2209, 1
  %2215 = extractvalue %dx.types.CBufRet.f32 %2211, 1
  %2216 = extractvalue %dx.types.CBufRet.f32 %2207, 3
  %2217 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2218 = extractvalue %dx.types.CBufRet.f32 %2211, 3
  %2219 = fadd fast float %2216, %2192
  %2220 = fadd fast float %2217, %2193
  %2221 = fadd fast float %2218, %2194
  %2222 = fmul fast float %2219, %2208
  %2223 = call float @dx.op.tertiary.f32(i32 46, float %2220, float %2210, float %2222)  ; FMad(a,b,c)
  %2224 = call float @dx.op.tertiary.f32(i32 46, float %2221, float %2212, float %2223)  ; FMad(a,b,c)
  %2225 = fmul fast float %2219, %2213
  %2226 = call float @dx.op.tertiary.f32(i32 46, float %2220, float %2214, float %2225)  ; FMad(a,b,c)
  %2227 = call float @dx.op.tertiary.f32(i32 46, float %2221, float %2215, float %2226)  ; FMad(a,b,c)
  %2228 = fsub fast float %2224, %2216
  %2229 = fsub fast float %2227, %2217
  %2230 = fsub fast float %2228, %2196
  %2231 = fadd fast float %2230, %2204
  %2232 = fsub fast float %2229, %2197
  %2233 = fadd fast float %2232, %2204
  %2234 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2235 = fmul fast float %2231, %2234
  %2236 = fmul fast float %2233, %2234
  %2237 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2238 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2239 = fsub fast float 1.000000e+00, %2237
  %2240 = fsub fast float 1.000000e+00, %2238
  %2241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2239, float %2240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = fcmp fast ugt float %2242, 0.000000e+00
  br i1 %2243, label %2244, label %2547

; <label>:2244                                    ; preds = %2206
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2247 = fmul fast float %2246, %2242
  %2248 = extractvalue %dx.types.CBufRet.f32 %2245, 3
  %2249 = fadd fast float %2248, %2247
  %2250 = extractvalue %dx.types.CBufRet.f32 %2211, 2
  %2251 = fadd fast float %2249, %2218
  %2252 = fmul fast float %2224, %2212
  %2253 = call float @dx.op.tertiary.f32(i32 46, float %2227, float %2215, float %2252)  ; FMad(a,b,c)
  %2254 = call float @dx.op.tertiary.f32(i32 46, float %2251, float %2250, float %2253)  ; FMad(a,b,c)
  %2255 = fsub fast float %2254, %2218
  %2256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2256, 2
  %2258 = fsub fast float %2255, %2257
  %2259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2239, float %2240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2260 = extractvalue %dx.types.ResRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.ResRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.ResRet.f32 %2259, 2
  %2263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2239, float %2240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = fadd fast float %2264, %2260
  %2268 = fmul fast float %2267, 0x3F847AE140000000
  %2269 = fadd fast float %2265, %2261
  %2270 = fmul fast float %2269, 0x3F847AE140000000
  %2271 = fadd fast float %2266, %2262
  %2272 = fmul fast float %2271, 0x3F847AE140000000
  br label %2547

; <label>:2273                                    ; preds = %2121
  %2274 = and i32 %158, 1
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2547, label %2276

; <label>:2276                                    ; preds = %2273
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2284 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2286 = extractvalue %dx.types.CBufRet.f32 %2277, 3
  %2287 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2288 = extractvalue %dx.types.CBufRet.f32 %2281, 3
  %2289 = fadd fast float %2286, %2192
  %2290 = fadd fast float %2287, %2193
  %2291 = fadd fast float %2288, %2194
  %2292 = fmul fast float %2289, %2278
  %2293 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2280, float %2292)  ; FMad(a,b,c)
  %2294 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2282, float %2293)  ; FMad(a,b,c)
  %2295 = fmul fast float %2289, %2283
  %2296 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2284, float %2295)  ; FMad(a,b,c)
  %2297 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2285, float %2296)  ; FMad(a,b,c)
  %2298 = fsub fast float %2294, %2286
  %2299 = fsub fast float %2297, %2287
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.i32 %2307, 0
  %2309 = extractvalue %dx.types.CBufRet.i32 %2307, 1
  %2310 = udiv i32 %2309, %2308
  %2311 = fsub fast float %2298, %2301
  %2312 = fsub fast float %2299, %2302
  %2313 = call float @dx.op.binary.f32(i32 35, float %2311, float 0.000000e+00)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 35, float %2312, float 0.000000e+00)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 36, float %2313, float %2303)  ; FMin(a,b)
  %2316 = call float @dx.op.binary.f32(i32 36, float %2314, float %2304)  ; FMin(a,b)
  %2317 = add i32 %2308, -1
  %2318 = add i32 %2310, -1
  %2319 = fmul fast float %2315, %2306
  %2320 = fmul fast float %2316, %2306
  %2321 = fptoui float %2319 to i32
  %2322 = fptoui float %2320 to i32
  %2323 = call i32 @dx.op.binary.i32(i32 40, i32 %2321, i32 %2317)  ; UMin(a,b)
  %2324 = call i32 @dx.op.binary.i32(i32 40, i32 %2322, i32 %2318)  ; UMin(a,b)
  %2325 = mul i32 %2324, %2308
  %2326 = add i32 %2325, %2323
  %2327 = shl i32 %2326, 2
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = icmp eq i32 %2329, -1
  br i1 %2330, label %2547, label %2331

; <label>:2331                                    ; preds = %2276
  %2332 = mul i32 %2329, 148
  %2333 = add i32 %2332, 4
  %2334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = add i32 %2332, 8
  %2337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.f32 %2337, 0
  %2339 = add i32 %2332, 36
  %2340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = add i32 %2332, 60
  %2343 = add i32 %2332, 92
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %2332, 116
  %2347 = fsub fast float %2298, %2335
  %2348 = fsub fast float %2299, %2338
  %2349 = fmul fast float %2306, %2347
  %2350 = fmul fast float %2306, %2348
  %2351 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2352 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.f32 %2354, 2
  %2356 = call float @dx.op.unary.f32(i32 83, float %2351)  ; DerivCoarseX(value)
  %2357 = call float @dx.op.unary.f32(i32 83, float %2353)  ; DerivCoarseX(value)
  %2358 = call float @dx.op.unary.f32(i32 84, float %2351)  ; DerivCoarseY(value)
  %2359 = call float @dx.op.unary.f32(i32 84, float %2353)  ; DerivCoarseY(value)
  %2360 = fmul fast float %2356, %2355
  %2361 = fmul fast float %2357, %2355
  %2362 = fmul fast float %2358, %2355
  %2363 = fmul fast float %2359, %2355
  %2364 = call float @dx.op.dot2.f32(i32 54, float %2362, float %2363, float %2362, float %2363)  ; Dot2(ax,ay,bx,by)
  %2365 = call float @dx.op.dot2.f32(i32 54, float %2360, float %2361, float %2360, float %2361)  ; Dot2(ax,ay,bx,by)
  %2366 = call float @dx.op.binary.f32(i32 35, float %2365, float %2364)  ; FMax(a,b)
  %2367 = call float @dx.op.unary.f32(i32 23, float %2366)  ; Log(value)
  %2368 = fmul fast float %2367, 5.000000e-01
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2371 = fadd fast float %2370, %2368
  %2372 = call float @dx.op.binary.f32(i32 35, float %2371, float 0.000000e+00)  ; FMax(a,b)
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 3
  %2375 = fadd fast float %2374, %2372
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2378 = fadd fast float %2375, %2377
  %2379 = add i32 %2345, 0
  %2380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2379, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2381 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2380, i32 0)  ; GetDimensions(handle,mipLevel)
  %2382 = extractvalue %dx.types.Dimensions %2381, 0
  %2383 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2382)  ; FirstbitLo(value)
  %2384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.i32 %2384, 1
  %2386 = sub nsw i32 %2385, %2383
  %2387 = sitofp i32 %2386 to float
  %2388 = fsub fast float %2378, %2387
  %2389 = call float @dx.op.binary.f32(i32 35, float %2388, float 0.000000e+00)  ; FMax(a,b)
  %2390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2380, %dx.types.Handle %37, float %2351, float %2353, float %2341, float undef, i32 0, i32 0, i32 undef, float %2389)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = fcmp ule float %2391, 0x3FE0101020000000
  %2393 = extractvalue %dx.types.CBufRet.i32 %2384, 0
  %2394 = and i32 %2393, 128
  %2395 = icmp ne i32 %2394, 0
  %2396 = and i1 %2392, %2395
  br i1 %2396, label %2547, label %2397

; <label>:2397                                    ; preds = %2331
  %2398 = add i32 %2332, 20
  %2399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.f32 %2399, 0
  %2401 = add i32 %2332, 24
  %2402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.f32 %2402, 0
  %2404 = add i32 %2332, 40
  %2405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.f32 %2405, 0
  %2407 = add i32 %2332, 96
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 2
  %2412 = fmul fast float %2411, %2351
  %2413 = fmul fast float %2411, %2353
  %2414 = extractvalue %dx.types.CBufRet.f32 %2410, 3
  %2415 = fadd fast float %2412, %2414
  %2416 = fadd fast float %2413, %2414
  %2417 = add i32 %2409, 0
  %2418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2417, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2419 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2418, i32 0)  ; GetDimensions(handle,mipLevel)
  %2420 = extractvalue %dx.types.Dimensions %2419, 0
  %2421 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2420)  ; FirstbitLo(value)
  %2422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.i32 %2422, 1
  %2424 = sub nsw i32 %2423, %2421
  %2425 = sitofp i32 %2424 to float
  %2426 = fsub fast float %2375, %2425
  %2427 = call float @dx.op.binary.f32(i32 35, float %2426, float 0.000000e+00)  ; FMax(a,b)
  %2428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2418, %dx.types.Handle %37, float %2415, float %2416, float %2406, float undef, i32 0, i32 0, i32 undef, float %2427)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2429 = extractvalue %dx.types.ResRet.f32 %2428, 0
  %2430 = fmul fast float %2429, %2400
  %2431 = fadd fast float %2430, %2403
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.CBufRet.f32 %2432, 1
  %2435 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 3
  %2438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2438, 3
  %2440 = extractvalue %dx.types.CBufRet.f32 %2432, 3
  %2441 = fadd fast float %2437, %2298
  %2442 = fadd fast float %2439, %2299
  %2443 = fadd fast float %2431, %2440
  %2444 = fmul fast float %2441, %2433
  %2445 = call float @dx.op.tertiary.f32(i32 46, float %2442, float %2434, float %2444)  ; FMad(a,b,c)
  %2446 = call float @dx.op.tertiary.f32(i32 46, float %2443, float %2435, float %2445)  ; FMad(a,b,c)
  %2447 = fsub fast float %2446, %2440
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2450 = fsub fast float %2447, %2449
  %2451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.i32 %2451, 0
  %2453 = call i32 @dx.op.binary.i32(i32 40, i32 %2329, i32 %2452)  ; UMin(a,b)
  %2454 = mul i32 %2453, 36
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = add i32 %2454, 4
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 0
  %2460 = fmul fast float %2459, %2351
  %2461 = fmul fast float %2459, %2353
  %2462 = extractvalue %dx.types.CBufRet.f32 %2458, 1
  %2463 = fadd fast float %2460, %2462
  %2464 = fadd fast float %2461, %2462
  %2465 = icmp eq i32 %2456, 0
  br i1 %2465, label %2534, label %2466

; <label>:2466                                    ; preds = %2397
  br label %2467

; <label>:2467                                    ; preds = %2524, %2466
  %2468 = phi float [ %2525, %2524 ], [ 0.000000e+00, %2466 ]
  %2469 = phi float [ %2526, %2524 ], [ 0.000000e+00, %2466 ]
  %2470 = phi float [ %2527, %2524 ], [ 0.000000e+00, %2466 ]
  %2471 = phi float [ %2528, %2524 ], [ 0.000000e+00, %2466 ]
  %2472 = phi float [ %2529, %2524 ], [ 0.000000e+00, %2466 ]
  %2473 = phi float [ %2530, %2524 ], [ 0.000000e+00, %2466 ]
  %2474 = phi i32 [ %2531, %2524 ], [ 0, %2466 ]
  %2475 = shl i32 %2474, 2
  %2476 = add i32 %2342, %2475
  %2477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = add i32 %2346, %2475
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = add i32 %2481, 0
  %2483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2482, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2484 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2483, i32 0)  ; GetDimensions(handle,mipLevel)
  %2485 = extractvalue %dx.types.Dimensions %2484, 0
  %2486 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2485)  ; FirstbitLo(value)
  %2487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.i32 %2487, 1
  %2489 = sub nsw i32 %2488, %2486
  %2490 = sitofp i32 %2489 to float
  %2491 = fsub fast float %2375, %2490
  %2492 = call float @dx.op.binary.f32(i32 35, float %2491, float 0.000000e+00)  ; FMax(a,b)
  %2493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2483, %dx.types.Handle %37, float %2463, float %2464, float %2478, float undef, i32 0, i32 0, i32 undef, float %2492)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2494 = extractvalue %dx.types.ResRet.f32 %2493, 0
  %2495 = fcmp fast ogt float %2494, 0.000000e+00
  br i1 %2495, label %2496, label %2524

; <label>:2496                                    ; preds = %2467
  %2497 = add i32 %2457, %2475
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 32767
  %2501 = mul nuw nsw i32 %2500, 928
  %2502 = add nuw nsw i32 %2501, 48
  %2503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.f32 %2503, 1
  %2506 = extractvalue %dx.types.ResRet.f32 %2503, 2
  %2507 = add nuw nsw i32 %2501, 60
  %2508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.f32 %2508, 0
  %2510 = extractvalue %dx.types.ResRet.f32 %2508, 1
  %2511 = extractvalue %dx.types.ResRet.f32 %2508, 2
  %2512 = fmul fast float %2504, %2494
  %2513 = fmul fast float %2505, %2494
  %2514 = fmul fast float %2506, %2494
  %2515 = fadd fast float %2512, %2468
  %2516 = fadd fast float %2513, %2469
  %2517 = fadd fast float %2514, %2470
  %2518 = fmul fast float %2509, %2494
  %2519 = fmul fast float %2510, %2494
  %2520 = fmul fast float %2511, %2494
  %2521 = fadd fast float %2518, %2471
  %2522 = fadd fast float %2519, %2472
  %2523 = fadd fast float %2520, %2473
  br label %2524

; <label>:2524                                    ; preds = %2496, %2467
  %2525 = phi float [ %2515, %2496 ], [ %2468, %2467 ]
  %2526 = phi float [ %2516, %2496 ], [ %2469, %2467 ]
  %2527 = phi float [ %2517, %2496 ], [ %2470, %2467 ]
  %2528 = phi float [ %2521, %2496 ], [ %2471, %2467 ]
  %2529 = phi float [ %2522, %2496 ], [ %2472, %2467 ]
  %2530 = phi float [ %2523, %2496 ], [ %2473, %2467 ]
  %2531 = add nuw i32 %2474, 1
  %2532 = icmp eq i32 %2531, %2456
  br i1 %2532, label %2533, label %2467

; <label>:2533                                    ; preds = %2524
  br label %2534

; <label>:2534                                    ; preds = %2533, %2397
  %2535 = phi float [ 0.000000e+00, %2397 ], [ %2525, %2533 ]
  %2536 = phi float [ 0.000000e+00, %2397 ], [ %2526, %2533 ]
  %2537 = phi float [ 0.000000e+00, %2397 ], [ %2527, %2533 ]
  %2538 = phi float [ 0.000000e+00, %2397 ], [ %2528, %2533 ]
  %2539 = phi float [ 0.000000e+00, %2397 ], [ %2529, %2533 ]
  %2540 = phi float [ 0.000000e+00, %2397 ], [ %2530, %2533 ]
  %2541 = fadd fast float %2538, %2535
  %2542 = fmul fast float %2541, 0x3F847AE140000000
  %2543 = fadd fast float %2539, %2536
  %2544 = fmul fast float %2543, 0x3F847AE140000000
  %2545 = fadd fast float %2540, %2537
  %2546 = fmul fast float %2545, 0x3F847AE140000000
  br label %2547

; <label>:2547                                    ; preds = %2534, %2331, %2276, %2273, %2244, %2206
  %2548 = phi float [ %2258, %2244 ], [ -1.310720e+05, %2206 ], [ %2450, %2534 ], [ -1.310720e+05, %2276 ], [ -1.310720e+05, %2331 ], [ -1.310720e+05, %2273 ]
  %2549 = phi float [ %2268, %2244 ], [ 0.000000e+00, %2206 ], [ %2542, %2534 ], [ 0.000000e+00, %2276 ], [ 0.000000e+00, %2331 ], [ 0.000000e+00, %2273 ]
  %2550 = phi float [ %2270, %2244 ], [ 0.000000e+00, %2206 ], [ %2544, %2534 ], [ 0.000000e+00, %2276 ], [ 0.000000e+00, %2331 ], [ 0.000000e+00, %2273 ]
  %2551 = phi float [ %2272, %2244 ], [ 0.000000e+00, %2206 ], [ %2546, %2534 ], [ 0.000000e+00, %2276 ], [ 0.000000e+00, %2331 ], [ 0.000000e+00, %2273 ]
  %2552 = phi i1 [ true, %2244 ], [ false, %2206 ], [ true, %2534 ], [ false, %2276 ], [ false, %2331 ], [ false, %2273 ]
  %2553 = and i32 %158, 3
  %2554 = icmp eq i32 %2553, 1
  %2555 = select i1 %2554, float 1.000000e+00, float 0.000000e+00
  %2556 = fsub fast float %2548, %113
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = select i1 %2552, float %2557, float 1.000000e+00
  %2559 = fmul fast float %2558, %2555
  %2560 = icmp eq i32 %2553, 3
  %2561 = select i1 %2560, float 1.000000e+00, float %2559
  %2562 = call float @dx.op.binary.f32(i32 35, float %2122, float %2561)  ; FMax(a,b)
  %2563 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2564 = fcmp fast une float %2563, 0.000000e+00
  %2565 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = call float @dx.op.unary.f32(i32 25, float %2565)  ; Rsqrt(value)
  br i1 %2564, label %2574, label %2567

; <label>:2567                                    ; preds = %2547
  %2568 = fmul fast float %2566, %111
  %2569 = fmul fast float %2566, %112
  %2570 = fmul fast float %2566, %113
  %2571 = fsub fast float -0.000000e+00, %2568
  %2572 = fsub fast float -0.000000e+00, %2569
  %2573 = fsub fast float -0.000000e+00, %2570
  br label %2742

; <label>:2574                                    ; preds = %2547
  %2575 = fmul fast float %111, %2566
  %2576 = fsub fast float -0.000000e+00, %2575
  %2577 = fmul fast float %112, %2566
  %2578 = fsub fast float -0.000000e+00, %2577
  %2579 = fmul fast float %113, %2566
  %2580 = fsub fast float -0.000000e+00, %2579
  %2581 = call float @dx.op.dot3.f32(i32 55, float %2576, float %2578, float %2580, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %2582 = fmul fast float %2563, 2.500000e+00
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = fmul fast float %2563, 0x4013FFFFE0000000
  %2585 = fadd fast float %2584, 0xBFFFFFFFE0000000
  %2586 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2587 = fmul fast float %2563, 0x4004000020000000
  %2588 = fadd fast float %2587, 0xBFF8000040000000
  %2589 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2590 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2591 = fmul fast float %2152, 1.000000e+01
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = fmul fast float %2592, 2.000000e+00
  %2594 = fsub fast float 3.000000e+00, %2593
  %2595 = fmul fast float %2592, %2592
  %2596 = fmul fast float %2595, %2594
  %2597 = fsub fast float 1.000000e+00, %2596
  %2598 = fsub fast float 0x3FE3333340000000, %2173
  %2599 = fmul fast float %2598, 0x400AAAAAA0000000
  %2600 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2601 = fmul fast float %2597, %2600
  %2602 = fmul fast float %2185, 0x3FEA2B8620000000
  %2603 = fmul fast float %2186, 0x3FEA2B8620000000
  %2604 = fmul fast float %2187, 0x3FEA2B8620000000
  %2605 = fadd fast float %2602, 0x3FC81DFBA0000000
  %2606 = fmul fast float %2605, %2185
  %2607 = fadd fast float %2606, 0x3F910E6020000000
  %2608 = fadd fast float %2603, 0x3FC81DFBA0000000
  %2609 = fmul fast float %2608, %2186
  %2610 = fadd fast float %2609, 0x3F910E6020000000
  %2611 = fadd fast float %2604, 0x3FC81DFBA0000000
  %2612 = fmul fast float %2611, %2187
  %2613 = fadd fast float %2612, 0x3F910E6020000000
  %2614 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2615 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2616 = call float @dx.op.unary.f32(i32 7, float %2613)  ; Saturate(value)
  %2617 = fsub fast float %2614, %2185
  %2618 = fsub fast float %2615, %2186
  %2619 = fsub fast float %2616, %2187
  %2620 = fmul fast float %2617, %2590
  %2621 = fmul fast float %2620, %2601
  %2622 = fmul fast float %2618, %2590
  %2623 = fmul fast float %2622, %2601
  %2624 = fmul fast float %2619, %2590
  %2625 = fmul fast float %2624, %2601
  %2626 = fadd fast float %2621, %2185
  %2627 = fadd fast float %2623, %2186
  %2628 = fadd fast float %2625, %2187
  %2629 = fmul fast float %2133, %2133
  %2630 = fmul fast float %2629, %2629
  %2631 = fadd fast float %2586, 1.000000e+00
  %2632 = fsub fast float %2631, %2601
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  %2634 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2635 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  %2636 = fsub fast float 1.000000e+00, %2630
  %2637 = call float @dx.op.binary.f32(i32 36, float %2633, float %2636)  ; FMin(a,b)
  %2638 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2639 = call float @dx.op.binary.f32(i32 35, float %2637, float %2638)  ; FMax(a,b)
  %2640 = fadd fast float %2635, 0xBFE4CCCCC0000000
  %2641 = fmul fast float %2640, 0x4006DB6DA0000000
  %2642 = call float @dx.op.unary.f32(i32 7, float %2641)  ; Saturate(value)
  %2643 = fmul fast float %2642, 2.000000e+00
  %2644 = fsub fast float 3.000000e+00, %2643
  %2645 = bitcast float %2170 to i32
  %2646 = ashr i32 %2645, 1
  %2647 = add nsw i32 %2646, 532487669
  %2648 = bitcast i32 %2647 to float
  %2649 = fsub fast float 1.000000e+00, %2648
  %2650 = bitcast float %2649 to i32
  %2651 = sub nsw i32 2129859010, %2650
  %2652 = bitcast i32 %2651 to float
  %2653 = fmul fast float %2652, 2.000000e+00
  %2654 = bitcast float %2171 to i32
  %2655 = ashr i32 %2654, 1
  %2656 = add nsw i32 %2655, 532487669
  %2657 = bitcast i32 %2656 to float
  %2658 = fsub fast float 1.000000e+00, %2657
  %2659 = bitcast float %2658 to i32
  %2660 = sub nsw i32 2129859010, %2659
  %2661 = bitcast i32 %2660 to float
  %2662 = fmul fast float %2661, 2.000000e+00
  %2663 = bitcast float %2172 to i32
  %2664 = ashr i32 %2663, 1
  %2665 = add nsw i32 %2664, 532487669
  %2666 = bitcast i32 %2665 to float
  %2667 = fsub fast float 1.000000e+00, %2666
  %2668 = bitcast float %2667 to i32
  %2669 = sub nsw i32 2129859010, %2668
  %2670 = bitcast i32 %2669 to float
  %2671 = fmul fast float %2670, 2.000000e+00
  %2672 = fsub fast float 0x4002A9FBE0000000, %2653
  %2673 = fadd fast float %2653, 0x3FD54FDF00000000
  %2674 = bitcast float %2673 to i32
  %2675 = sub nsw i32 2129859010, %2674
  %2676 = bitcast i32 %2675 to float
  %2677 = fmul fast float %2676, %2672
  %2678 = fmul fast float %2677, %2677
  %2679 = fsub fast float 0x4002A9FBE0000000, %2662
  %2680 = fadd fast float %2662, 0x3FD54FDF00000000
  %2681 = bitcast float %2680 to i32
  %2682 = sub nsw i32 2129859010, %2681
  %2683 = bitcast i32 %2682 to float
  %2684 = fmul fast float %2683, %2679
  %2685 = fmul fast float %2684, %2684
  %2686 = fsub fast float 0x4002A9FBE0000000, %2671
  %2687 = fadd fast float %2671, 0x3FD54FDF00000000
  %2688 = bitcast float %2687 to i32
  %2689 = sub nsw i32 2129859010, %2688
  %2690 = bitcast i32 %2689 to float
  %2691 = fmul fast float %2690, %2686
  %2692 = fmul fast float %2691, %2691
  %2693 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2678)  ; FMax(a,b)
  %2694 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2685)  ; FMax(a,b)
  %2695 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2692)  ; FMax(a,b)
  %2696 = fsub fast float 1.000000e+00, %2581
  %2697 = fadd fast float %2696, %2597
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = fsub fast float 1.000000e+00, %2561
  %2700 = fmul fast float %2639, %2699
  %2701 = fmul fast float %2642, %2642
  %2702 = fmul fast float %2701, %2700
  %2703 = fmul fast float %2702, %2644
  %2704 = fmul fast float %2699, 0xBFE99999A0000000
  %2705 = fmul fast float %2704, %2590
  %2706 = fmul fast float %2705, %2601
  %2707 = fadd fast float %2706, 1.000000e+00
  %2708 = fadd fast float %2173, -1.000000e+00
  %2709 = fmul fast float %2707, %2708
  %2710 = fadd fast float %2709, 1.000000e+00
  %2711 = fsub fast float %2693, %2170
  %2712 = fsub fast float %2694, %2171
  %2713 = fsub fast float %2695, %2172
  %2714 = fmul fast float %2703, %2711
  %2715 = fmul fast float %2703, %2712
  %2716 = fmul fast float %2703, %2713
  %2717 = fadd fast float %2714, %2170
  %2718 = fadd fast float %2715, %2171
  %2719 = fadd fast float %2716, %2172
  %2720 = fsub fast float %49, %2149
  %2721 = fsub fast float %50, %2150
  %2722 = fsub fast float %51, %2151
  %2723 = fmul fast float %2703, %2720
  %2724 = fmul fast float %2703, %2721
  %2725 = fmul fast float %2703, %2722
  %2726 = fadd fast float %2723, %2149
  %2727 = fadd fast float %2724, %2150
  %2728 = fadd fast float %2725, %2151
  %2729 = fmul fast float %2703, %2698
  %2730 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2731 = fsub fast float 1.000000e+00, %2730
  %2732 = fmul fast float %2729, %2731
  %2733 = fadd fast float %2732, %2730
  %2734 = fsub fast float 1.000000e+00, %2133
  %2735 = fmul fast float %2703, %2734
  %2736 = fadd fast float %2735, %2133
  %2737 = call float @dx.op.dot3.f32(i32 55, float %2726, float %2727, float %2728, float %2726, float %2727, float %2728)  ; Dot3(ax,ay,az,bx,by,bz)
  %2738 = call float @dx.op.unary.f32(i32 25, float %2737)  ; Rsqrt(value)
  %2739 = fmul fast float %2726, %2738
  %2740 = fmul fast float %2727, %2738
  %2741 = fmul fast float %2728, %2738
  br label %2742

; <label>:2742                                    ; preds = %2574, %2567
  %2743 = phi float [ %2573, %2567 ], [ %2580, %2574 ]
  %2744 = phi float [ %2572, %2567 ], [ %2578, %2574 ]
  %2745 = phi float [ %2571, %2567 ], [ %2576, %2574 ]
  %2746 = phi float [ %2570, %2567 ], [ %2579, %2574 ]
  %2747 = phi float [ %2569, %2567 ], [ %2577, %2574 ]
  %2748 = phi float [ %2568, %2567 ], [ %2575, %2574 ]
  %2749 = phi float [ %2170, %2567 ], [ %2717, %2574 ]
  %2750 = phi float [ %2171, %2567 ], [ %2718, %2574 ]
  %2751 = phi float [ %2172, %2567 ], [ %2719, %2574 ]
  %2752 = phi float [ %2185, %2567 ], [ %2626, %2574 ]
  %2753 = phi float [ %2186, %2567 ], [ %2627, %2574 ]
  %2754 = phi float [ %2187, %2567 ], [ %2628, %2574 ]
  %2755 = phi float [ %2149, %2567 ], [ %2739, %2574 ]
  %2756 = phi float [ %2150, %2567 ], [ %2740, %2574 ]
  %2757 = phi float [ %2151, %2567 ], [ %2741, %2574 ]
  %2758 = phi float [ %2173, %2567 ], [ %2733, %2574 ]
  %2759 = phi float [ %2133, %2567 ], [ %2736, %2574 ]
  %2760 = select i1 %182, float 0.000000e+00, float %2751
  %2761 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %2745, float %2744, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %2762 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  %2763 = call float @dx.op.dot3.f32(i32 55, float %2748, float %2747, float %2746, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %2764 = fmul fast float %2763, 2.000000e+00
  %2765 = fmul fast float %2764, %2755
  %2766 = fmul fast float %2764, %2756
  %2767 = fmul fast float %2764, %2757
  %2768 = fsub fast float %2748, %2765
  %2769 = fsub fast float %2747, %2766
  %2770 = fsub fast float %2746, %2767
  %2771 = call float @dx.op.binary.f32(i32 36, float %2759, float 1.000000e+00)  ; FMin(a,b)
  %2772 = fsub fast float 1.000000e+00, %2759
  %2773 = bitcast float %2772 to i32
  %2774 = sub nsw i32 2129859010, %2773
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = fadd fast float %2776, %111
  %2779 = fadd fast float %2777, %112
  %2780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.i32 %2780, 0
  %2782 = icmp eq i32 %2781, 1
  br i1 %2782, label %2783, label %2818

; <label>:2783                                    ; preds = %2742
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = fsub fast float %2778, %2785
  %2788 = fsub fast float %2779, %2786
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = fmul fast float %2787, %2790
  %2793 = fmul fast float %2788, %2791
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2792, float %2793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = fcmp fast ogt float %2795, 0.000000e+00
  %2797 = extractvalue %dx.types.CBufRet.i32 %2780, 3
  %2798 = icmp ne i32 %2797, 0
  %2799 = and i1 %2796, %2798
  br i1 %2799, label %2800, label %2818, !dx.controlflow.hints !78

; <label>:2800                                    ; preds = %2783
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2804 = fsub fast float %2778, %2802
  %2805 = fsub fast float %2779, %2803
  %2806 = fmul fast float %2804, %2804
  %2807 = fmul fast float %2805, %2805
  %2808 = fadd fast float %2806, %2807
  %2809 = uitofp i32 %2797 to float
  %2810 = fmul fast float %2809, %2809
  %2811 = fcmp fast ogt float %2808, %2810
  br i1 %2811, label %2818, label %2812

; <label>:2812                                    ; preds = %2800
  %2813 = call float @dx.op.unary.f32(i32 24, float %2808)  ; Sqrt(value)
  %2814 = fsub fast float %2809, %2813
  %2815 = fmul fast float %2814, 0x3F75555560000000
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  %2817 = call float @dx.op.binary.f32(i32 36, float %2816, float %2795)  ; FMin(a,b)
  br label %2818

; <label>:2818                                    ; preds = %2812, %2800, %2783, %2742
  %2819 = phi float [ 1.000000e+00, %2742 ], [ %2817, %2812 ], [ %2795, %2783 ], [ 0.000000e+00, %2800 ]
  %2820 = fcmp fast ogt float %2819, 0.000000e+00
  br i1 %2820, label %2821, label %2919, !dx.controlflow.hints !79

; <label>:2821                                    ; preds = %2818
  %2822 = fadd fast float %142, 5.000000e-01
  %2823 = call float @dx.op.unary.f32(i32 27, float %2822)  ; Round_ni(value)
  %2824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %140, float %141, float %2823, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.ResRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.ResRet.f32 %2824, 2
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2830 = fmul fast float %2829, %2825
  %2831 = fmul fast float %2829, %2826
  %2832 = fmul fast float %2829, %2827
  %2833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %140, float %141, float %2823, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %140, float %141, float %2823, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = extractvalue %dx.types.ResRet.f32 %2835, 1
  %2838 = fmul fast float %2836, 2.000000e+00
  %2839 = fmul fast float %2837, 2.000000e+00
  %2840 = fadd fast float %2838, -1.000000e+00
  %2841 = fadd fast float %2839, -1.000000e+00
  %2842 = fadd fast float %2840, %2841
  %2843 = fmul fast float %2842, 5.000000e-01
  %2844 = fsub fast float %2840, %2841
  %2845 = fmul fast float %2844, 5.000000e-01
  %2846 = call float @dx.op.unary.f32(i32 6, float %2843)  ; FAbs(value)
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = call float @dx.op.unary.f32(i32 6, float %2845)  ; FAbs(value)
  %2849 = fsub fast float %2847, %2848
  %2850 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2849)  ; FMax(a,b)
  %2851 = call float @dx.op.dot3.f32(i32 55, float %2843, float %2845, float %2850, float %2843, float %2845, float %2850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2852 = bitcast float %2851 to i32
  %2853 = ashr i32 %2852, 1
  %2854 = sub nsw i32 1597250115, %2853
  %2855 = bitcast i32 %2854 to float
  %2856 = fmul fast float %2855, %2843
  %2857 = fmul fast float %2855, %2845
  %2858 = fmul fast float %2855, %2850
  %2859 = fsub fast float 1.000000e+00, %2834
  %2860 = fdiv fast float %2859, %2858
  %2861 = fmul fast float %2858, %49
  %2862 = fmul fast float %2858, %50
  %2863 = fmul fast float %2858, %51
  %2864 = fmul fast float %2856, %45
  %2865 = fmul fast float %2856, %46
  %2866 = fmul fast float %2856, %47
  %2867 = fadd fast float %2861, %2864
  %2868 = fadd fast float %2862, %2865
  %2869 = fadd fast float %2863, %2866
  %2870 = fmul fast float %2857, %75
  %2871 = fmul fast float %2857, %76
  %2872 = fmul fast float %2857, %77
  %2873 = fadd fast float %2867, %2870
  %2874 = fadd fast float %2868, %2871
  %2875 = fadd fast float %2869, %2872
  %2876 = call float @dx.op.dot3.f32(i32 55, float %2873, float %2874, float %2875, float %2873, float %2874, float %2875)  ; Dot3(ax,ay,az,bx,by,bz)
  %2877 = call float @dx.op.unary.f32(i32 25, float %2876)  ; Rsqrt(value)
  %2878 = fmul fast float %2873, %2877
  %2879 = fmul fast float %2874, %2877
  %2880 = fmul fast float %2875, %2877
  %2881 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %2882 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2883 = fmul fast float %2882, 5.000000e-01
  %2884 = fadd fast float %2883, 5.000000e-01
  %2885 = fmul fast float %2884, %2834
  %2886 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %2878, float %2879, float %2880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2888 = fmul fast float %2887, %2860
  %2889 = fadd fast float %2885, %2888
  %2890 = fsub fast float 5.000000e-01, %2883
  %2891 = fmul fast float %2890, %2752
  %2892 = fmul fast float %2890, %2753
  %2893 = fmul fast float %2890, %2754
  %2894 = fadd fast float %2889, %2891
  %2895 = fmul fast float %2894, %2830
  %2896 = fadd fast float %2889, %2892
  %2897 = fmul fast float %2896, %2831
  %2898 = fadd fast float %2889, %2893
  %2899 = fmul fast float %2898, %2832
  %2900 = call float @dx.op.dot3.f32(i32 55, float %2768, float %2769, float %2770, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %2901 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  %2902 = fmul fast float %2901, 5.000000e-01
  %2903 = fadd fast float %2902, 5.000000e-01
  %2904 = fmul fast float %2903, %2834
  %2905 = call float @dx.op.dot3.f32(i32 55, float %2768, float %2769, float %2770, float %2878, float %2879, float %2880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2907 = fmul fast float %2906, %2860
  %2908 = fadd fast float %2904, %2907
  %2909 = fsub fast float 5.000000e-01, %2902
  %2910 = fmul fast float %2909, %2752
  %2911 = fmul fast float %2909, %2753
  %2912 = fmul fast float %2909, %2754
  %2913 = fadd fast float %2908, %2910
  %2914 = fmul fast float %2913, %2830
  %2915 = fadd fast float %2908, %2911
  %2916 = fmul fast float %2915, %2831
  %2917 = fadd fast float %2908, %2912
  %2918 = fmul fast float %2917, %2832
  br label %2919

; <label>:2919                                    ; preds = %2821, %2818
  %2920 = phi float [ %2914, %2821 ], [ 0.000000e+00, %2818 ]
  %2921 = phi float [ %2916, %2821 ], [ 0.000000e+00, %2818 ]
  %2922 = phi float [ %2918, %2821 ], [ 0.000000e+00, %2818 ]
  %2923 = phi float [ %2895, %2821 ], [ 0.000000e+00, %2818 ]
  %2924 = phi float [ %2897, %2821 ], [ 0.000000e+00, %2818 ]
  %2925 = phi float [ %2899, %2821 ], [ 0.000000e+00, %2818 ]
  %2926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2926, 0
  %2928 = fcmp fast ogt float %2927, 0.000000e+00
  %2929 = and i1 %2820, %2928
  br i1 %2929, label %2930, label %3134, !dx.controlflow.hints !80

; <label>:2930                                    ; preds = %2919
  %2931 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2932 = fadd fast float %2931, %113
  %2933 = fmul fast float %2755, 3.200000e+01
  %2934 = fmul fast float %2756, 3.200000e+01
  %2935 = fadd fast float %2778, %2933
  %2936 = fadd fast float %2779, %2934
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 1
  %2940 = fsub fast float %2935, %2938
  %2941 = fsub fast float %2936, %2939
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2945 = fmul fast float %2940, %2943
  %2946 = fmul fast float %2941, %2944
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = fsub fast float %2778, %2948
  %2951 = fsub fast float %2779, %2949
  %2952 = fmul fast float %2950, %2950
  %2953 = fmul fast float %2951, %2951
  %2954 = fadd fast float %2952, %2953
  %2955 = call float @dx.op.unary.f32(i32 24, float %2954)  ; Sqrt(value)
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2959 = fsub fast float %2955, %2957
  %2960 = fdiv fast float %2959, %2958
  %2961 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2962 = fmul fast float %2961, 2.000000e+00
  %2963 = fsub fast float 3.000000e+00, %2962
  %2964 = fmul fast float %2961, %2961
  %2965 = fmul fast float %2964, %2963
  %2966 = fcmp fast oge float %2945, 0.000000e+00
  %2967 = fcmp fast ole float %2945, 1.000000e+00
  %2968 = and i1 %2967, %2966
  %2969 = fcmp fast oge float %2946, 0.000000e+00
  %2970 = and i1 %2969, %2968
  %2971 = fcmp fast ole float %2946, 1.000000e+00
  %2972 = and i1 %2971, %2970
  %2973 = fcmp fast ogt float %2965, 0.000000e+00
  %2974 = and i1 %2973, %2972
  br i1 %2974, label %2975, label %3098, !dx.controlflow.hints !81

; <label>:2975                                    ; preds = %2930
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 2
  %2978 = extractvalue %dx.types.CBufRet.f32 %2976, 3
  %2979 = fmul fast float %2977, %2945
  %2980 = fmul fast float %2978, %2946
  %2981 = call float @dx.op.unary.f32(i32 27, float %2979)  ; Round_ni(value)
  %2982 = call float @dx.op.unary.f32(i32 27, float %2980)  ; Round_ni(value)
  %2983 = fptosi float %2981 to i32
  %2984 = fptosi float %2982 to i32
  %2985 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2983, i32 %2984, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = lshr i32 %2986, 16
  %2988 = icmp eq i32 %2987, 65535
  br i1 %2988, label %3098, label %2989

; <label>:2989                                    ; preds = %2975
  %2990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.f32 %2990, 0
  %2992 = fmul fast float %2991, %2945
  %2993 = extractvalue %dx.types.CBufRet.f32 %2990, 1
  %2994 = fadd fast float %2992, %2993
  %2995 = extractvalue %dx.types.CBufRet.f32 %2990, 2
  %2996 = fmul fast float %2995, %2946
  %2997 = extractvalue %dx.types.CBufRet.f32 %2990, 3
  %2998 = fadd fast float %2996, %2997
  %2999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2994, float %2998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3000 = extractvalue %dx.types.ResRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.ResRet.f32 %2999, 1
  %3002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3003 = extractvalue %dx.types.CBufRet.f32 %3002, 1
  %3004 = extractvalue %dx.types.CBufRet.f32 %3002, 0
  %3005 = fsub fast float %3003, %3004
  %3006 = fmul fast float %3005, %3000
  %3007 = fadd fast float %3006, %3004
  %3008 = extractvalue %dx.types.CBufRet.f32 %3002, 3
  %3009 = extractvalue %dx.types.CBufRet.f32 %3002, 2
  %3010 = fsub fast float %3008, %3009
  %3011 = fmul fast float %3010, %3001
  %3012 = fadd fast float %3011, %3009
  %3013 = fsub fast float %2932, %3007
  %3014 = fsub fast float %3012, %3007
  %3015 = fdiv fast float %3013, %3014
  %3016 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3017 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %3018 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %3019 = extractvalue %dx.types.CBufRet.f32 %2976, 1
  %3020 = fmul fast float %3018, %2945
  %3021 = fmul fast float %3019, %2946
  %3022 = fmul fast float %3020, 1.250000e-01
  %3023 = fmul fast float %3021, 1.250000e-01
  %3024 = call float @dx.op.unary.f32(i32 27, float %3022)  ; Round_ni(value)
  %3025 = call float @dx.op.unary.f32(i32 27, float %3023)  ; Round_ni(value)
  %3026 = fmul fast float %3024, 8.000000e+00
  %3027 = fmul fast float %3025, 8.000000e+00
  %3028 = fsub fast float %3020, %3026
  %3029 = fsub fast float %3021, %3027
  %3030 = fadd fast float %3028, 5.000000e-01
  %3031 = fadd fast float %3029, 5.000000e-01
  %3032 = and i32 %2987, 255
  %3033 = lshr i32 %2986, 24
  %3034 = mul nuw nsw i32 %3032, 9
  %3035 = uitofp i32 %3034 to float
  %3036 = mul nuw nsw i32 %3033, 9
  %3037 = uitofp i32 %3036 to float
  %3038 = fadd fast float %3030, %3035
  %3039 = fadd fast float %3031, %3037
  %3040 = fdiv fast float %3038, %2927
  %3041 = fdiv fast float %3039, %3017
  %3042 = fmul fast float %3016, 4.375000e-01
  %3043 = fadd fast float %3042, 3.125000e-02
  %3044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3040, float %3041, float %3043, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = extractvalue %dx.types.ResRet.f32 %3044, 1
  %3047 = extractvalue %dx.types.ResRet.f32 %3044, 2
  %3048 = fadd fast float %3042, 5.312500e-01
  %3049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3040, float %3041, float %3048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3053 = fmul fast float %3050, 2.000000e+00
  %3054 = fmul fast float %3051, 2.000000e+00
  %3055 = fmul fast float %3052, 2.000000e+00
  %3056 = fadd fast float %3053, -1.000000e+00
  %3057 = fadd fast float %3054, -1.000000e+00
  %3058 = fadd fast float %3055, -1.000000e+00
  %3059 = fmul fast float %3056, %3056
  %3060 = fmul fast float %3057, %3057
  %3061 = fadd fast float %3059, %3060
  %3062 = fmul fast float %3058, %3058
  %3063 = fadd fast float %3061, %3062
  %3064 = call float @dx.op.unary.f32(i32 24, float %3063)  ; Sqrt(value)
  %3065 = fcmp fast ogt float %3064, 0.000000e+00
  br i1 %3065, label %3066, label %3070

; <label>:3066                                    ; preds = %2989
  %3067 = fdiv fast float %3056, %3064
  %3068 = fdiv fast float %3057, %3064
  %3069 = fdiv fast float %3058, %3064
  br label %3070

; <label>:3070                                    ; preds = %3066, %2989
  %3071 = phi float [ %3067, %3066 ], [ 0.000000e+00, %2989 ]
  %3072 = phi float [ %3068, %3066 ], [ 0.000000e+00, %2989 ]
  %3073 = phi float [ %3069, %3066 ], [ 0.000000e+00, %2989 ]
  %3074 = call float @dx.op.dot3.f32(i32 55, float %3071, float %3072, float %3073, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3074)  ; FMax(a,b)
  %3076 = fmul fast float %3075, 0x400C5BF8A0000000
  %3077 = fmul fast float %3045, %2965
  %3078 = fmul fast float %3077, %3076
  %3079 = fmul fast float %3046, %2965
  %3080 = fmul fast float %3079, %3076
  %3081 = fmul fast float %3047, %2965
  %3082 = fmul fast float %3081, %3076
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 3
  %3085 = fmul fast float %3078, %3084
  %3086 = fmul fast float %3080, %3084
  %3087 = fmul fast float %3082, %3084
  %3088 = fcmp fast ogt float %2932, %3012
  br i1 %3088, label %3089, label %3098

; <label>:3089                                    ; preds = %3070
  %3090 = fmul fast float %3014, 0x3FC24924A0000000
  %3091 = fsub fast float %2932, %3012
  %3092 = fdiv fast float %3091, %3090
  %3093 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %3094, %3085
  %3096 = fmul fast float %3094, %3086
  %3097 = fmul fast float %3094, %3087
  br label %3098

; <label>:3098                                    ; preds = %3089, %3070, %2975, %2930
  %3099 = phi float [ %3097, %3089 ], [ %3087, %3070 ], [ 0.000000e+00, %2975 ], [ 0.000000e+00, %2930 ]
  %3100 = phi float [ %3096, %3089 ], [ %3086, %3070 ], [ 0.000000e+00, %2975 ], [ 0.000000e+00, %2930 ]
  %3101 = phi float [ %3095, %3089 ], [ %3085, %3070 ], [ 0.000000e+00, %2975 ], [ 0.000000e+00, %2930 ]
  %3102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3101)  ; FMax(a,b)
  %3103 = fmul fast float %3102, 0x3FD20DD760000000
  %3104 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2768, float %2769, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %3105 = fmul fast float %3104, 0x3FDF454380000000
  %3106 = fmul fast float %3104, %3104
  %3107 = fmul fast float %3106, 0x3FEE471020000000
  %3108 = fadd fast float %3107, 0xBFD42F6020000000
  %3109 = call float @dx.op.dot3.f32(i32 55, float %3102, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3105, float %3108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3110 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3100)  ; FMax(a,b)
  %3111 = fmul fast float %3110, 0x3FD20DD760000000
  %3112 = call float @dx.op.dot3.f32(i32 55, float %3110, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3105, float %3108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3099)  ; FMax(a,b)
  %3114 = fmul fast float %3113, 0x3FD20DD760000000
  %3115 = call float @dx.op.dot3.f32(i32 55, float %3113, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3105, float %3108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = call float @dx.op.binary.f32(i32 35, float %3103, float 0.000000e+00)  ; FMax(a,b)
  %3117 = call float @dx.op.binary.f32(i32 35, float %3111, float 0.000000e+00)  ; FMax(a,b)
  %3118 = call float @dx.op.binary.f32(i32 35, float %3114, float 0.000000e+00)  ; FMax(a,b)
  %3119 = call float @dx.op.binary.f32(i32 35, float %3109, float 0.000000e+00)  ; FMax(a,b)
  %3120 = call float @dx.op.binary.f32(i32 35, float %3112, float 0.000000e+00)  ; FMax(a,b)
  %3121 = call float @dx.op.binary.f32(i32 35, float %3115, float 0.000000e+00)  ; FMax(a,b)
  %3122 = fmul fast float %3116, %2819
  %3123 = fmul fast float %3117, %2819
  %3124 = fmul fast float %3118, %2819
  %3125 = fadd fast float %3122, %2923
  %3126 = fadd fast float %3123, %2924
  %3127 = fadd fast float %3124, %2925
  %3128 = fmul fast float %3119, %2819
  %3129 = fmul fast float %3120, %2819
  %3130 = fmul fast float %3121, %2819
  %3131 = fadd fast float %3128, %2920
  %3132 = fadd fast float %3129, %2921
  %3133 = fadd fast float %3130, %2922
  br label %3134

; <label>:3134                                    ; preds = %3098, %2919
  %3135 = phi float [ %3131, %3098 ], [ %2920, %2919 ]
  %3136 = phi float [ %3132, %3098 ], [ %2921, %2919 ]
  %3137 = phi float [ %3133, %3098 ], [ %2922, %2919 ]
  %3138 = phi float [ %3125, %3098 ], [ %2923, %2919 ]
  %3139 = phi float [ %3126, %3098 ], [ %2924, %2919 ]
  %3140 = phi float [ %3127, %3098 ], [ %2925, %2919 ]
  %3141 = fcmp fast olt float %2819, 1.000000e+00
  br i1 %3141, label %3142, label %3960, !dx.controlflow.hints !82

; <label>:3142                                    ; preds = %3134
  %3143 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %3144 = fadd fast float %3143, %113
  %3145 = fmul fast float %2755, 3.200000e+01
  %3146 = fmul fast float %2756, 3.200000e+01
  %3147 = fadd fast float %2778, %3145
  %3148 = fadd fast float %2779, %3146
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.CBufRet.f32 %3149, 1
  %3152 = fsub fast float %3147, %3150
  %3153 = fsub fast float %3148, %3151
  %3154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3155 = extractvalue %dx.types.CBufRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.CBufRet.f32 %3154, 1
  %3157 = fmul fast float %3152, %3155
  %3158 = fmul fast float %3153, %3156
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = fmul fast float %3157, %3160
  %3162 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3163 = fadd fast float %3161, %3162
  %3164 = extractvalue %dx.types.CBufRet.f32 %3159, 2
  %3165 = fmul fast float %3164, %3158
  %3166 = extractvalue %dx.types.CBufRet.f32 %3159, 3
  %3167 = fadd fast float %3165, %3166
  %3168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3163, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 0
  %3170 = extractvalue %dx.types.ResRet.f32 %3168, 1
  %3171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3172 = extractvalue %dx.types.CBufRet.f32 %3171, 1
  %3173 = extractvalue %dx.types.CBufRet.f32 %3171, 0
  %3174 = fsub fast float %3172, %3173
  %3175 = fmul fast float %3174, %3169
  %3176 = fadd fast float %3175, %3173
  %3177 = extractvalue %dx.types.CBufRet.f32 %3171, 3
  %3178 = extractvalue %dx.types.CBufRet.f32 %3171, 2
  %3179 = fsub fast float %3177, %3178
  %3180 = fmul fast float %3179, %3170
  %3181 = fadd fast float %3180, %3178
  %3182 = fsub fast float %3144, %3176
  %3183 = fsub fast float %3181, %3176
  %3184 = fdiv fast float %3182, %3183
  %3185 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = fmul fast float %3187, %3185
  %3189 = extractvalue %dx.types.CBufRet.f32 %3186, 1
  %3190 = fadd fast float %3188, %3189
  %3191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3163, float %3167, float %3190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  %3193 = extractvalue %dx.types.ResRet.f32 %3191, 1
  %3194 = extractvalue %dx.types.ResRet.f32 %3191, 2
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.CBufRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.CBufRet.f32 %3195, 2
  %3199 = fmul fast float %3196, %3192
  %3200 = fmul fast float %3197, %3193
  %3201 = fmul fast float %3198, %3194
  %3202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.CBufRet.f32 %3202, 1
  %3205 = extractvalue %dx.types.CBufRet.f32 %3202, 2
  %3206 = fadd fast float %3199, %3203
  %3207 = fadd fast float %3200, %3204
  %3208 = fadd fast float %3201, %3205
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 0
  %3211 = fmul fast float %3210, %3157
  %3212 = extractvalue %dx.types.CBufRet.f32 %3209, 1
  %3213 = fadd fast float %3211, %3212
  %3214 = extractvalue %dx.types.CBufRet.f32 %3209, 2
  %3215 = fmul fast float %3214, %3158
  %3216 = extractvalue %dx.types.CBufRet.f32 %3209, 3
  %3217 = fadd fast float %3215, %3216
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3221 = extractvalue %dx.types.CBufRet.f32 %3218, 2
  %3222 = extractvalue %dx.types.CBufRet.f32 %3218, 3
  %3223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3224 = extractvalue %dx.types.CBufRet.f32 %3223, 0
  %3225 = extractvalue %dx.types.CBufRet.f32 %3223, 1
  %3226 = extractvalue %dx.types.CBufRet.f32 %3223, 2
  %3227 = extractvalue %dx.types.CBufRet.f32 %3223, 3
  %3228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3213, float %3217, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3229 = extractvalue %dx.types.ResRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.ResRet.f32 %3228, 1
  %3231 = extractvalue %dx.types.ResRet.f32 %3228, 2
  %3232 = extractvalue %dx.types.ResRet.f32 %3228, 3
  %3233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3213, float %3217, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.ResRet.f32 %3233, 2
  %3237 = extractvalue %dx.types.ResRet.f32 %3233, 3
  %3238 = fmul fast float %3229, %3206
  %3239 = fmul fast float %3234, %3206
  %3240 = fmul fast float %3236, %3206
  %3241 = fmul fast float %3232, %3206
  %3242 = fadd fast float %3238, %3219
  %3243 = fadd fast float %3239, %3220
  %3244 = fadd fast float %3240, %3221
  %3245 = fadd fast float %3241, %3222
  %3246 = fmul fast float %3230, %3206
  %3247 = fmul fast float %3235, %3206
  %3248 = fadd fast float %3246, %3224
  %3249 = fadd fast float %3247, %3225
  %3250 = fmul fast float %3231, %3206
  %3251 = fmul fast float %3237, %3206
  %3252 = fadd fast float %3250, %3226
  %3253 = fadd fast float %3251, %3227
  %3254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3213, float %3217, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = extractvalue %dx.types.ResRet.f32 %3254, 3
  %3259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3213, float %3217, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.ResRet.f32 %3259, 2
  %3263 = extractvalue %dx.types.ResRet.f32 %3259, 3
  %3264 = fmul fast float %3255, %3207
  %3265 = fmul fast float %3260, %3207
  %3266 = fmul fast float %3262, %3207
  %3267 = fmul fast float %3258, %3207
  %3268 = fadd fast float %3242, %3264
  %3269 = fadd fast float %3243, %3265
  %3270 = fadd fast float %3244, %3266
  %3271 = fadd fast float %3245, %3267
  %3272 = fmul fast float %3256, %3207
  %3273 = fmul fast float %3261, %3207
  %3274 = fadd fast float %3248, %3272
  %3275 = fadd fast float %3249, %3273
  %3276 = fmul fast float %3257, %3207
  %3277 = fmul fast float %3263, %3207
  %3278 = fadd fast float %3252, %3276
  %3279 = fadd fast float %3253, %3277
  %3280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3213, float %3217, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = extractvalue %dx.types.ResRet.f32 %3280, 3
  %3285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3213, float %3217, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = extractvalue %dx.types.ResRet.f32 %3285, 3
  %3290 = fmul fast float %3281, %3208
  %3291 = fmul fast float %3286, %3208
  %3292 = fmul fast float %3288, %3208
  %3293 = fmul fast float %3284, %3208
  %3294 = fadd fast float %3268, %3290
  %3295 = fadd fast float %3269, %3291
  %3296 = fadd fast float %3270, %3292
  %3297 = fadd fast float %3271, %3293
  %3298 = fmul fast float %3282, %3208
  %3299 = fmul fast float %3287, %3208
  %3300 = fadd fast float %3274, %3298
  %3301 = fadd fast float %3275, %3299
  %3302 = fmul fast float %3283, %3208
  %3303 = fmul fast float %3289, %3208
  %3304 = fadd fast float %3278, %3302
  %3305 = fadd fast float %3279, %3303
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 0
  %3308 = fsub fast float %2778, %3307
  %3309 = fsub fast float %3150, %2778
  %3310 = call float @dx.op.binary.f32(i32 35, float %3309, float %3308)  ; FMax(a,b)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3306, 1
  %3312 = fsub fast float %2779, %3311
  %3313 = fsub fast float %3151, %2779
  %3314 = call float @dx.op.binary.f32(i32 35, float %3313, float %3312)  ; FMax(a,b)
  %3315 = call float @dx.op.binary.f32(i32 35, float %3310, float %3314)  ; FMax(a,b)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3154, 3
  %3317 = fmul fast float %3316, %3315
  %3318 = call float @dx.op.unary.f32(i32 7, float %3317)  ; Saturate(value)
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.CBufRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.CBufRet.f32 %3319, 2
  %3323 = extractvalue %dx.types.CBufRet.f32 %3319, 3
  %3324 = fsub fast float %3320, %3294
  %3325 = fsub fast float %3321, %3295
  %3326 = fsub fast float %3322, %3296
  %3327 = fsub fast float %3323, %3297
  %3328 = fmul fast float %3324, %3318
  %3329 = fmul fast float %3325, %3318
  %3330 = fmul fast float %3326, %3318
  %3331 = fmul fast float %3327, %3318
  %3332 = fadd fast float %3328, %3294
  %3333 = fadd fast float %3329, %3295
  %3334 = fadd fast float %3330, %3296
  %3335 = fadd fast float %3331, %3297
  %3336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3337 = extractvalue %dx.types.CBufRet.f32 %3336, 0
  %3338 = extractvalue %dx.types.CBufRet.f32 %3336, 1
  %3339 = fsub fast float %3337, %3300
  %3340 = fsub fast float %3338, %3301
  %3341 = fmul fast float %3339, %3318
  %3342 = fmul fast float %3340, %3318
  %3343 = fadd fast float %3341, %3300
  %3344 = fadd fast float %3342, %3301
  %3345 = extractvalue %dx.types.CBufRet.f32 %3336, 2
  %3346 = extractvalue %dx.types.CBufRet.f32 %3336, 3
  %3347 = fsub fast float %3345, %3304
  %3348 = fsub fast float %3346, %3305
  %3349 = fmul fast float %3347, %3318
  %3350 = fmul fast float %3348, %3318
  %3351 = fadd fast float %3349, %3304
  %3352 = fadd fast float %3350, %3305
  %3353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3353, 0
  %3355 = fmul fast float %3354, %3332
  %3356 = fmul fast float %3354, %3333
  %3357 = fmul fast float %3354, %3334
  %3358 = fmul fast float %3354, %3335
  %3359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3359, 0
  %3361 = fmul fast float %3360, %3343
  %3362 = fmul fast float %3360, %3344
  %3363 = fadd fast float %3361, %3355
  %3364 = fadd fast float %3362, %3357
  %3365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3365, 0
  %3367 = fmul fast float %3366, %3351
  %3368 = fmul fast float %3366, %3352
  %3369 = fadd fast float %3363, %3367
  %3370 = fadd fast float %3364, %3368
  %3371 = extractvalue %dx.types.CBufRet.f32 %3353, 1
  %3372 = fmul fast float %3371, %3332
  %3373 = fmul fast float %3371, %3333
  %3374 = fmul fast float %3371, %3334
  %3375 = fmul fast float %3371, %3335
  %3376 = extractvalue %dx.types.CBufRet.f32 %3359, 1
  %3377 = fmul fast float %3376, %3343
  %3378 = fmul fast float %3376, %3344
  %3379 = fadd fast float %3377, %3372
  %3380 = fadd fast float %3378, %3374
  %3381 = extractvalue %dx.types.CBufRet.f32 %3365, 1
  %3382 = fmul fast float %3381, %3351
  %3383 = fmul fast float %3381, %3352
  %3384 = fadd fast float %3379, %3382
  %3385 = fadd fast float %3380, %3383
  %3386 = extractvalue %dx.types.CBufRet.f32 %3353, 2
  %3387 = fmul fast float %3386, %3332
  %3388 = fmul fast float %3386, %3333
  %3389 = fmul fast float %3386, %3334
  %3390 = fmul fast float %3386, %3335
  %3391 = extractvalue %dx.types.CBufRet.f32 %3359, 2
  %3392 = fmul fast float %3391, %3343
  %3393 = fmul fast float %3391, %3344
  %3394 = fadd fast float %3392, %3387
  %3395 = fadd fast float %3393, %3389
  %3396 = extractvalue %dx.types.CBufRet.f32 %3365, 2
  %3397 = fmul fast float %3396, %3351
  %3398 = fmul fast float %3396, %3352
  %3399 = fadd fast float %3394, %3397
  %3400 = fadd fast float %3395, %3398
  %3401 = fmul fast float %3388, %3388
  %3402 = fmul fast float %3400, %3400
  %3403 = fmul fast float %3390, %3390
  %3404 = fadd fast float %3403, %3401
  %3405 = fadd fast float %3404, %3402
  %3406 = call float @dx.op.unary.f32(i32 24, float %3405)  ; Sqrt(value)
  %3407 = fcmp fast ugt float %3406, 0.000000e+00
  br i1 %3407, label %3408, label %3423

; <label>:3408                                    ; preds = %3142
  %3409 = fsub fast float -0.000000e+00, %3390
  %3410 = fdiv fast float %3409, %3406
  %3411 = fsub fast float -0.000000e+00, %3388
  %3412 = fdiv fast float %3411, %3406
  %3413 = fdiv fast float %3400, %3406
  %3414 = fmul fast float %3399, 0x3FE279A760000000
  %3415 = fmul fast float %3412, %3388
  %3416 = fmul fast float %3413, %3400
  %3417 = fmul fast float %3410, %3390
  %3418 = fadd fast float %3415, %3417
  %3419 = fsub fast float %3418, %3416
  %3420 = call float @dx.op.unary.f32(i32 6, float %3419)  ; FAbs(value)
  %3421 = fadd fast float %3420, 0x3DDB7CDFE0000000
  %3422 = fdiv fast float %3414, %3421
  br label %3423

; <label>:3423                                    ; preds = %3408, %3142
  %3424 = phi float [ %3422, %3408 ], [ 1.000000e+00, %3142 ]
  %3425 = fmul fast float %3373, %3373
  %3426 = fmul fast float %3385, %3385
  %3427 = fmul fast float %3375, %3375
  %3428 = fadd fast float %3427, %3425
  %3429 = fadd fast float %3428, %3426
  %3430 = call float @dx.op.unary.f32(i32 24, float %3429)  ; Sqrt(value)
  %3431 = fcmp fast ugt float %3430, 0.000000e+00
  br i1 %3431, label %3432, label %3447

; <label>:3432                                    ; preds = %3423
  %3433 = fsub fast float -0.000000e+00, %3375
  %3434 = fdiv fast float %3433, %3430
  %3435 = fsub fast float -0.000000e+00, %3373
  %3436 = fdiv fast float %3435, %3430
  %3437 = fdiv fast float %3385, %3430
  %3438 = fmul fast float %3384, 0x3FE279A760000000
  %3439 = fmul fast float %3436, %3373
  %3440 = fmul fast float %3437, %3385
  %3441 = fmul fast float %3434, %3375
  %3442 = fadd fast float %3439, %3441
  %3443 = fsub fast float %3442, %3440
  %3444 = call float @dx.op.unary.f32(i32 6, float %3443)  ; FAbs(value)
  %3445 = fadd fast float %3444, 0x3DDB7CDFE0000000
  %3446 = fdiv fast float %3438, %3445
  br label %3447

; <label>:3447                                    ; preds = %3432, %3423
  %3448 = phi float [ %3446, %3432 ], [ 1.000000e+00, %3423 ]
  %3449 = call float @dx.op.binary.f32(i32 36, float %3448, float %3424)  ; FMin(a,b)
  %3450 = fmul fast float %3356, %3356
  %3451 = fmul fast float %3370, %3370
  %3452 = fmul fast float %3358, %3358
  %3453 = fadd fast float %3452, %3450
  %3454 = fadd fast float %3453, %3451
  %3455 = call float @dx.op.unary.f32(i32 24, float %3454)  ; Sqrt(value)
  %3456 = fcmp fast ugt float %3455, 0.000000e+00
  br i1 %3456, label %3457, label %3472

; <label>:3457                                    ; preds = %3447
  %3458 = fsub fast float -0.000000e+00, %3358
  %3459 = fdiv fast float %3458, %3455
  %3460 = fsub fast float -0.000000e+00, %3356
  %3461 = fdiv fast float %3460, %3455
  %3462 = fdiv fast float %3370, %3455
  %3463 = fmul fast float %3369, 0x3FE279A760000000
  %3464 = fmul fast float %3461, %3356
  %3465 = fmul fast float %3462, %3370
  %3466 = fmul fast float %3459, %3358
  %3467 = fadd fast float %3464, %3466
  %3468 = fsub fast float %3467, %3465
  %3469 = call float @dx.op.unary.f32(i32 6, float %3468)  ; FAbs(value)
  %3470 = fadd fast float %3469, 0x3DDB7CDFE0000000
  %3471 = fdiv fast float %3463, %3470
  br label %3472

; <label>:3472                                    ; preds = %3457, %3447
  %3473 = phi float [ %3471, %3457 ], [ 1.000000e+00, %3447 ]
  %3474 = call float @dx.op.binary.f32(i32 36, float %3473, float %3449)  ; FMin(a,b)
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3476 = fcmp fast olt float %3475, 1.000000e+00
  br i1 %3476, label %3477, label %3487

; <label>:3477                                    ; preds = %3472
  %3478 = fmul fast float %3475, %3356
  %3479 = fmul fast float %3475, %3370
  %3480 = fmul fast float %3475, %3358
  %3481 = fmul fast float %3475, %3373
  %3482 = fmul fast float %3475, %3385
  %3483 = fmul fast float %3475, %3375
  %3484 = fmul fast float %3475, %3388
  %3485 = fmul fast float %3475, %3400
  %3486 = fmul fast float %3475, %3390
  br label %3487

; <label>:3487                                    ; preds = %3477, %3472
  %3488 = phi float [ %3484, %3477 ], [ %3388, %3472 ]
  %3489 = phi float [ %3485, %3477 ], [ %3400, %3472 ]
  %3490 = phi float [ %3486, %3477 ], [ %3390, %3472 ]
  %3491 = phi float [ %3481, %3477 ], [ %3373, %3472 ]
  %3492 = phi float [ %3482, %3477 ], [ %3385, %3472 ]
  %3493 = phi float [ %3483, %3477 ], [ %3375, %3472 ]
  %3494 = phi float [ %3478, %3477 ], [ %3356, %3472 ]
  %3495 = phi float [ %3479, %3477 ], [ %3370, %3472 ]
  %3496 = phi float [ %3480, %3477 ], [ %3358, %3472 ]
  %3497 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3369)  ; FMax(a,b)
  %3498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3384)  ; FMax(a,b)
  %3499 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3399)  ; FMax(a,b)
  %3500 = fcmp fast oge float %3157, 0.000000e+00
  %3501 = and i1 %3500, %2928
  %3502 = fcmp fast ole float %3157, 1.000000e+00
  %3503 = and i1 %3502, %3501
  %3504 = fcmp fast oge float %3158, 0.000000e+00
  %3505 = and i1 %3504, %3503
  %3506 = fcmp fast ole float %3158, 1.000000e+00
  %3507 = and i1 %3506, %3505
  br i1 %3507, label %3508, label %3653, !dx.controlflow.hints !83

; <label>:3508                                    ; preds = %3487
  %3509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3509, 2
  %3511 = extractvalue %dx.types.CBufRet.f32 %3509, 3
  %3512 = fmul fast float %3510, %3157
  %3513 = fmul fast float %3511, %3158
  %3514 = call float @dx.op.unary.f32(i32 27, float %3512)  ; Round_ni(value)
  %3515 = call float @dx.op.unary.f32(i32 27, float %3513)  ; Round_ni(value)
  %3516 = fptosi float %3514 to i32
  %3517 = fptosi float %3515 to i32
  %3518 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3516, i32 %3517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 65535
  %3521 = lshr i32 %3519, 16
  %3522 = icmp eq i32 %3520, 65535
  br i1 %3522, label %3559, label %3523

; <label>:3523                                    ; preds = %3508
  %3524 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %3525 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  %3526 = extractvalue %dx.types.CBufRet.f32 %3509, 1
  %3527 = fmul fast float %3525, %3157
  %3528 = fmul fast float %3526, %3158
  %3529 = fmul fast float %3527, 1.250000e-01
  %3530 = fmul fast float %3528, 1.250000e-01
  %3531 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3532 = call float @dx.op.unary.f32(i32 27, float %3530)  ; Round_ni(value)
  %3533 = fmul fast float %3531, 8.000000e+00
  %3534 = fmul fast float %3532, 8.000000e+00
  %3535 = and i32 %3519, 255
  %3536 = lshr i32 %3519, 8
  %3537 = and i32 %3536, 255
  %3538 = mul nuw nsw i32 %3535, 9
  %3539 = uitofp i32 %3538 to float
  %3540 = mul nuw nsw i32 %3537, 9
  %3541 = uitofp i32 %3540 to float
  %3542 = fadd fast float %3539, 5.000000e-01
  %3543 = fadd fast float %3542, %3527
  %3544 = fsub fast float %3543, %3533
  %3545 = fadd fast float %3541, 5.000000e-01
  %3546 = fadd fast float %3545, %3528
  %3547 = fsub fast float %3546, %3534
  %3548 = fdiv fast float %3544, %2927
  %3549 = fdiv fast float %3547, %3524
  %3550 = fmul fast float %3185, 4.375000e-01
  %3551 = fadd fast float %3550, 3.125000e-02
  %3552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3548, float %3549, float %3551, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = fadd fast float %3553, %3497
  %3557 = fadd fast float %3554, %3498
  %3558 = fadd fast float %3555, %3499
  br label %3559

; <label>:3559                                    ; preds = %3523, %3508
  %3560 = phi float [ %3558, %3523 ], [ %3499, %3508 ]
  %3561 = phi float [ %3557, %3523 ], [ %3498, %3508 ]
  %3562 = phi float [ %3556, %3523 ], [ %3497, %3508 ]
  %3563 = icmp eq i32 %3521, 65535
  br i1 %3563, label %3653, label %3564

; <label>:3564                                    ; preds = %3559
  %3565 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %3566 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  %3567 = extractvalue %dx.types.CBufRet.f32 %3509, 1
  %3568 = fmul fast float %3566, %3157
  %3569 = fmul fast float %3567, %3158
  %3570 = fmul fast float %3568, 1.250000e-01
  %3571 = fmul fast float %3569, 1.250000e-01
  %3572 = call float @dx.op.unary.f32(i32 27, float %3570)  ; Round_ni(value)
  %3573 = call float @dx.op.unary.f32(i32 27, float %3571)  ; Round_ni(value)
  %3574 = fmul fast float %3572, 8.000000e+00
  %3575 = fmul fast float %3573, 8.000000e+00
  %3576 = fsub fast float %3568, %3574
  %3577 = fsub fast float %3569, %3575
  %3578 = fadd fast float %3576, 5.000000e-01
  %3579 = fadd fast float %3577, 5.000000e-01
  %3580 = and i32 %3521, 255
  %3581 = lshr i32 %3519, 24
  %3582 = mul nuw nsw i32 %3580, 9
  %3583 = uitofp i32 %3582 to float
  %3584 = mul nuw nsw i32 %3581, 9
  %3585 = uitofp i32 %3584 to float
  %3586 = fadd fast float %3578, %3583
  %3587 = fadd fast float %3579, %3585
  %3588 = fdiv fast float %3586, %2927
  %3589 = fdiv fast float %3587, %3565
  %3590 = fmul fast float %3185, 4.375000e-01
  %3591 = fadd fast float %3590, 3.125000e-02
  %3592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3588, float %3589, float %3591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3596 = fadd fast float %3590, 5.312500e-01
  %3597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3588, float %3589, float %3596, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = fmul fast float %3598, 2.000000e+00
  %3602 = fmul fast float %3599, 2.000000e+00
  %3603 = fmul fast float %3600, 2.000000e+00
  %3604 = fadd fast float %3601, -1.000000e+00
  %3605 = fadd fast float %3602, -1.000000e+00
  %3606 = fadd fast float %3603, -1.000000e+00
  %3607 = fmul fast float %3604, %3604
  %3608 = fmul fast float %3605, %3605
  %3609 = fadd fast float %3607, %3608
  %3610 = fmul fast float %3606, %3606
  %3611 = fadd fast float %3609, %3610
  %3612 = call float @dx.op.unary.f32(i32 24, float %3611)  ; Sqrt(value)
  %3613 = fcmp fast ogt float %3612, 0.000000e+00
  br i1 %3613, label %3614, label %3618

; <label>:3614                                    ; preds = %3564
  %3615 = fdiv fast float %3604, %3612
  %3616 = fdiv fast float %3605, %3612
  %3617 = fdiv fast float %3606, %3612
  br label %3618

; <label>:3618                                    ; preds = %3614, %3564
  %3619 = phi float [ %3615, %3614 ], [ 0.000000e+00, %3564 ]
  %3620 = phi float [ %3616, %3614 ], [ 0.000000e+00, %3564 ]
  %3621 = phi float [ %3617, %3614 ], [ 0.000000e+00, %3564 ]
  %3622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.CBufRet.f32 %3622, 1
  %3625 = fsub fast float %2778, %3623
  %3626 = fsub fast float %2779, %3624
  %3627 = fmul fast float %3625, %3625
  %3628 = fmul fast float %3626, %3626
  %3629 = fadd fast float %3627, %3628
  %3630 = call float @dx.op.unary.f32(i32 24, float %3629)  ; Sqrt(value)
  %3631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3632 = extractvalue %dx.types.CBufRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.CBufRet.f32 %3631, 1
  %3634 = fsub fast float %3630, %3632
  %3635 = fdiv fast float %3634, %3633
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3637 = fmul fast float %3636, 2.000000e+00
  %3638 = fsub fast float 3.000000e+00, %3637
  %3639 = fmul fast float %3636, %3636
  %3640 = fmul fast float %3639, %3638
  %3641 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %3642 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3641)  ; FMax(a,b)
  %3643 = fmul fast float %3642, 0x400C5BF8A0000000
  %3644 = fmul fast float %3640, %3593
  %3645 = fmul fast float %3644, %3643
  %3646 = fadd fast float %3645, %3562
  %3647 = fmul fast float %3640, %3594
  %3648 = fmul fast float %3647, %3643
  %3649 = fadd fast float %3648, %3561
  %3650 = fmul fast float %3640, %3595
  %3651 = fmul fast float %3650, %3643
  %3652 = fadd fast float %3651, %3560
  br label %3653

; <label>:3653                                    ; preds = %3618, %3559, %3487
  %3654 = phi float [ %3652, %3618 ], [ %3560, %3559 ], [ %3499, %3487 ]
  %3655 = phi float [ %3649, %3618 ], [ %3561, %3559 ], [ %3498, %3487 ]
  %3656 = phi float [ %3646, %3618 ], [ %3562, %3559 ], [ %3497, %3487 ]
  %3657 = fcmp fast ogt float %3144, %3181
  %3658 = and i1 %3500, %3657
  %3659 = and i1 %3502, %3658
  %3660 = and i1 %3504, %3659
  %3661 = and i1 %3506, %3660
  br i1 %3661, label %3662, label %3719, !dx.controlflow.hints !84

; <label>:3662                                    ; preds = %3653
  %3663 = fmul fast float %3183, 0x3FC24924A0000000
  %3664 = fsub fast float %3144, %3181
  %3665 = fdiv fast float %3664, %3663
  %3666 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3668 = extractvalue %dx.types.CBufRet.f32 %3667, 0
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3673 = fsub fast float %3668, %3656
  %3674 = fsub fast float %3670, %3494
  %3675 = fsub fast float %3671, %3495
  %3676 = fsub fast float %3672, %3496
  %3677 = fmul fast float %3673, %3666
  %3678 = fmul fast float %3674, %3666
  %3679 = fmul fast float %3675, %3666
  %3680 = fmul fast float %3676, %3666
  %3681 = fadd fast float %3677, %3656
  %3682 = fadd fast float %3678, %3494
  %3683 = fadd fast float %3679, %3495
  %3684 = fadd fast float %3680, %3496
  %3685 = extractvalue %dx.types.CBufRet.f32 %3667, 1
  %3686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3686, 0
  %3688 = extractvalue %dx.types.CBufRet.f32 %3686, 1
  %3689 = extractvalue %dx.types.CBufRet.f32 %3686, 2
  %3690 = fsub fast float %3685, %3655
  %3691 = fsub fast float %3687, %3491
  %3692 = fsub fast float %3688, %3492
  %3693 = fsub fast float %3689, %3493
  %3694 = fmul fast float %3690, %3666
  %3695 = fmul fast float %3691, %3666
  %3696 = fmul fast float %3692, %3666
  %3697 = fmul fast float %3693, %3666
  %3698 = fadd fast float %3694, %3655
  %3699 = fadd fast float %3695, %3491
  %3700 = fadd fast float %3696, %3492
  %3701 = fadd fast float %3697, %3493
  %3702 = extractvalue %dx.types.CBufRet.f32 %3667, 2
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.CBufRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.CBufRet.f32 %3703, 2
  %3707 = fsub fast float %3702, %3654
  %3708 = fsub fast float %3704, %3488
  %3709 = fsub fast float %3705, %3489
  %3710 = fsub fast float %3706, %3490
  %3711 = fmul fast float %3707, %3666
  %3712 = fmul fast float %3708, %3666
  %3713 = fmul fast float %3709, %3666
  %3714 = fmul fast float %3710, %3666
  %3715 = fadd fast float %3711, %3654
  %3716 = fadd fast float %3712, %3488
  %3717 = fadd fast float %3713, %3489
  %3718 = fadd fast float %3714, %3490
  br label %3719

; <label>:3719                                    ; preds = %3662, %3653
  %3720 = phi float [ %3715, %3662 ], [ %3654, %3653 ]
  %3721 = phi float [ %3716, %3662 ], [ %3488, %3653 ]
  %3722 = phi float [ %3717, %3662 ], [ %3489, %3653 ]
  %3723 = phi float [ %3718, %3662 ], [ %3490, %3653 ]
  %3724 = phi float [ %3698, %3662 ], [ %3655, %3653 ]
  %3725 = phi float [ %3699, %3662 ], [ %3491, %3653 ]
  %3726 = phi float [ %3700, %3662 ], [ %3492, %3653 ]
  %3727 = phi float [ %3701, %3662 ], [ %3493, %3653 ]
  %3728 = phi float [ %3681, %3662 ], [ %3656, %3653 ]
  %3729 = phi float [ %3682, %3662 ], [ %3494, %3653 ]
  %3730 = phi float [ %3683, %3662 ], [ %3495, %3653 ]
  %3731 = phi float [ %3684, %3662 ], [ %3496, %3653 ]
  %3732 = extractvalue %dx.types.CBufRet.f32 %3306, 3
  %3733 = fmul fast float %3732, %3728
  %3734 = fmul fast float %3732, %3724
  %3735 = fmul fast float %3732, %3720
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 3
  %3738 = fmul fast float %3733, %3737
  %3739 = fmul fast float %3734, %3737
  %3740 = fmul fast float %3735, %3737
  %3741 = fmul fast float %3729, 1.500000e+00
  %3742 = fmul fast float %3741, %3732
  %3743 = fmul fast float %3742, %3737
  %3744 = fmul fast float %3730, 1.500000e+00
  %3745 = fmul fast float %3744, %3732
  %3746 = fmul fast float %3745, %3737
  %3747 = fmul fast float %3731, 1.500000e+00
  %3748 = fmul fast float %3747, %3732
  %3749 = fmul fast float %3748, %3737
  %3750 = fmul fast float %3725, 1.500000e+00
  %3751 = fmul fast float %3750, %3732
  %3752 = fmul fast float %3751, %3737
  %3753 = fmul fast float %3726, 1.500000e+00
  %3754 = fmul fast float %3753, %3732
  %3755 = fmul fast float %3754, %3737
  %3756 = fmul fast float %3727, 1.500000e+00
  %3757 = fmul fast float %3756, %3732
  %3758 = fmul fast float %3757, %3737
  %3759 = fmul fast float %3721, 1.500000e+00
  %3760 = fmul fast float %3759, %3732
  %3761 = fmul fast float %3760, %3737
  %3762 = fmul fast float %3722, 1.500000e+00
  %3763 = fmul fast float %3762, %3732
  %3764 = fmul fast float %3763, %3737
  %3765 = fmul fast float %3723, 1.500000e+00
  %3766 = fmul fast float %3765, %3732
  %3767 = fmul fast float %3766, %3737
  %3768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3738)  ; FMax(a,b)
  %3769 = call float @dx.op.dot3.f32(i32 55, float %3743, float %3746, float %3749, float %3743, float %3746, float %3749)  ; Dot3(ax,ay,az,bx,by,bz)
  %3770 = fcmp fast oeq float %3769, 0.000000e+00
  %3771 = fcmp fast oeq float %3768, 0.000000e+00
  %3772 = or i1 %3771, %3770
  br i1 %3772, label %3802, label %3773

; <label>:3773                                    ; preds = %3719
  %3774 = fsub fast float -0.000000e+00, %3749
  %3775 = fsub fast float -0.000000e+00, %3743
  %3776 = call float @dx.op.unary.f32(i32 24, float %3769)  ; Sqrt(value)
  %3777 = fdiv fast float %3776, %3768
  %3778 = fcmp fast ogt float %3777, 0x3FFB6F8900000000
  %3779 = select i1 %3778, float 0x3FFB6F8900000000, float %3777
  %3780 = fmul fast float %3779, 0x3FE8A23460000000
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = call float @dx.op.binary.f32(i32 35, float %3779, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3783 = fmul fast float %3781, %3768
  %3784 = fmul fast float %3782, 0x3FF279A740000000
  %3785 = fadd fast float %3784, -1.000000e+00
  %3786 = call float @dx.op.dot3.f32(i32 55, float %3774, float %3775, float %3746, float %3774, float %3775, float %3746)  ; Dot3(ax,ay,az,bx,by,bz)
  %3787 = call float @dx.op.unary.f32(i32 25, float %3786)  ; Rsqrt(value)
  %3788 = fmul fast float %3787, %3774
  %3789 = fmul fast float %3787, %3775
  %3790 = fmul fast float %3787, %3746
  %3791 = fmul fast float %3785, %3785
  %3792 = fsub fast float 1.000000e+00, %3791
  %3793 = fmul fast float %3782, 0x40005F8BE0000000
  %3794 = fsub fast float 0x400C5BF8A0000000, %3793
  %3795 = fdiv fast float %3783, %3794
  %3796 = fmul fast float %3795, 0x3FEE31C3C0000000
  %3797 = fmul fast float %3796, %3792
  %3798 = fmul fast float %3782, 0x3FDACB7480000000
  %3799 = fadd fast float %3798, 0xBFD7347680000000
  %3800 = fmul fast float %3799, %3795
  %3801 = fmul fast float %3800, %3792
  br label %3802

; <label>:3802                                    ; preds = %3773, %3719
  %3803 = phi float [ %3788, %3773 ], [ 0.000000e+00, %3719 ]
  %3804 = phi float [ %3789, %3773 ], [ 0.000000e+00, %3719 ]
  %3805 = phi float [ %3790, %3773 ], [ 0.000000e+00, %3719 ]
  %3806 = phi float [ %3797, %3773 ], [ 0.000000e+00, %3719 ]
  %3807 = phi float [ %3801, %3773 ], [ 0.000000e+00, %3719 ]
  %3808 = call float @dx.op.dot3.f32(i32 55, float %3803, float %3804, float %3805, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %3809 = fmul fast float %3808, %3808
  %3810 = fmul fast float %3809, 0x3FEE471020000000
  %3811 = fadd fast float %3810, 0xBFD42F6020000000
  %3812 = fmul fast float %3768, 0x3FD20DD760000000
  %3813 = fmul fast float %3811, %3807
  %3814 = fmul fast float %3806, 0x3FDF454380000000
  %3815 = fmul fast float %3814, %3808
  %3816 = fadd fast float %3815, %3812
  %3817 = fadd fast float %3816, %3813
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3803, float %3804, float %3805, float %2768, float %2769, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = fmul fast float %3818, 0x3FDF454380000000
  %3820 = fmul fast float %3818, %3818
  %3821 = fmul fast float %3820, 0x3FEE471020000000
  %3822 = fadd fast float %3821, 0xBFD42F6020000000
  %3823 = call float @dx.op.dot3.f32(i32 55, float %3768, float %3806, float %3807, float 0x3FD20DD760000000, float %3819, float %3822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3739)  ; FMax(a,b)
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3755, float %3758, float %3752, float %3755, float %3758)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = fcmp fast oeq float %3825, 0.000000e+00
  %3827 = fcmp fast oeq float %3824, 0.000000e+00
  %3828 = or i1 %3827, %3826
  br i1 %3828, label %3858, label %3829

; <label>:3829                                    ; preds = %3802
  %3830 = fsub fast float -0.000000e+00, %3758
  %3831 = fsub fast float -0.000000e+00, %3752
  %3832 = call float @dx.op.unary.f32(i32 24, float %3825)  ; Sqrt(value)
  %3833 = fdiv fast float %3832, %3824
  %3834 = fcmp fast ogt float %3833, 0x3FFB6F8900000000
  %3835 = select i1 %3834, float 0x3FFB6F8900000000, float %3833
  %3836 = fmul fast float %3835, 0x3FE8A23460000000
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = call float @dx.op.binary.f32(i32 35, float %3835, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3839 = fmul fast float %3837, %3824
  %3840 = fmul fast float %3838, 0x3FF279A740000000
  %3841 = fadd fast float %3840, -1.000000e+00
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3831, float %3755, float %3830, float %3831, float %3755)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = call float @dx.op.unary.f32(i32 25, float %3842)  ; Rsqrt(value)
  %3844 = fmul fast float %3843, %3830
  %3845 = fmul fast float %3843, %3831
  %3846 = fmul fast float %3843, %3755
  %3847 = fmul fast float %3841, %3841
  %3848 = fsub fast float 1.000000e+00, %3847
  %3849 = fmul fast float %3838, 0x40005F8BE0000000
  %3850 = fsub fast float 0x400C5BF8A0000000, %3849
  %3851 = fdiv fast float %3839, %3850
  %3852 = fmul fast float %3851, 0x3FEE31C3C0000000
  %3853 = fmul fast float %3852, %3848
  %3854 = fmul fast float %3838, 0x3FDACB7480000000
  %3855 = fadd fast float %3854, 0xBFD7347680000000
  %3856 = fmul fast float %3855, %3851
  %3857 = fmul fast float %3856, %3848
  br label %3858

; <label>:3858                                    ; preds = %3829, %3802
  %3859 = phi float [ %3844, %3829 ], [ 0.000000e+00, %3802 ]
  %3860 = phi float [ %3845, %3829 ], [ 0.000000e+00, %3802 ]
  %3861 = phi float [ %3846, %3829 ], [ 0.000000e+00, %3802 ]
  %3862 = phi float [ %3853, %3829 ], [ 0.000000e+00, %3802 ]
  %3863 = phi float [ %3857, %3829 ], [ 0.000000e+00, %3802 ]
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3860, float %3861, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = fmul fast float %3864, %3864
  %3866 = fmul fast float %3865, 0x3FEE471020000000
  %3867 = fadd fast float %3866, 0xBFD42F6020000000
  %3868 = fmul fast float %3824, 0x3FD20DD760000000
  %3869 = fmul fast float %3867, %3863
  %3870 = fmul fast float %3862, 0x3FDF454380000000
  %3871 = fmul fast float %3870, %3864
  %3872 = fadd fast float %3871, %3868
  %3873 = fadd fast float %3872, %3869
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3860, float %3861, float %2768, float %2769, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = fmul fast float %3874, 0x3FDF454380000000
  %3876 = fmul fast float %3874, %3874
  %3877 = fmul fast float %3876, 0x3FEE471020000000
  %3878 = fadd fast float %3877, 0xBFD42F6020000000
  %3879 = call float @dx.op.dot3.f32(i32 55, float %3824, float %3862, float %3863, float 0x3FD20DD760000000, float %3875, float %3878)  ; Dot3(ax,ay,az,bx,by,bz)
  %3880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3740)  ; FMax(a,b)
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3761, float %3764, float %3767, float %3761, float %3764, float %3767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = fcmp fast oeq float %3881, 0.000000e+00
  %3883 = fcmp fast oeq float %3880, 0.000000e+00
  %3884 = or i1 %3883, %3882
  br i1 %3884, label %3914, label %3885

; <label>:3885                                    ; preds = %3858
  %3886 = fsub fast float -0.000000e+00, %3767
  %3887 = fsub fast float -0.000000e+00, %3761
  %3888 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %3889 = fdiv fast float %3888, %3880
  %3890 = fcmp fast ogt float %3889, 0x3FFB6F8900000000
  %3891 = select i1 %3890, float 0x3FFB6F8900000000, float %3889
  %3892 = fmul fast float %3891, 0x3FE8A23460000000
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = call float @dx.op.binary.f32(i32 35, float %3891, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3895 = fmul fast float %3893, %3880
  %3896 = fmul fast float %3894, 0x3FF279A740000000
  %3897 = fadd fast float %3896, -1.000000e+00
  %3898 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3764, float %3886, float %3887, float %3764)  ; Dot3(ax,ay,az,bx,by,bz)
  %3899 = call float @dx.op.unary.f32(i32 25, float %3898)  ; Rsqrt(value)
  %3900 = fmul fast float %3899, %3886
  %3901 = fmul fast float %3899, %3887
  %3902 = fmul fast float %3899, %3764
  %3903 = fmul fast float %3897, %3897
  %3904 = fsub fast float 1.000000e+00, %3903
  %3905 = fmul fast float %3894, 0x40005F8BE0000000
  %3906 = fsub fast float 0x400C5BF8A0000000, %3905
  %3907 = fdiv fast float %3895, %3906
  %3908 = fmul fast float %3907, 0x3FEE31C3C0000000
  %3909 = fmul fast float %3908, %3904
  %3910 = fmul fast float %3894, 0x3FDACB7480000000
  %3911 = fadd fast float %3910, 0xBFD7347680000000
  %3912 = fmul fast float %3911, %3907
  %3913 = fmul fast float %3912, %3904
  br label %3914

; <label>:3914                                    ; preds = %3885, %3858
  %3915 = phi float [ %3900, %3885 ], [ 0.000000e+00, %3858 ]
  %3916 = phi float [ %3901, %3885 ], [ 0.000000e+00, %3858 ]
  %3917 = phi float [ %3902, %3885 ], [ 0.000000e+00, %3858 ]
  %3918 = phi float [ %3909, %3885 ], [ 0.000000e+00, %3858 ]
  %3919 = phi float [ %3913, %3885 ], [ 0.000000e+00, %3858 ]
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = fmul fast float %3920, %3920
  %3922 = fmul fast float %3921, 0x3FEE471020000000
  %3923 = fadd fast float %3922, 0xBFD42F6020000000
  %3924 = fmul fast float %3880, 0x3FD20DD760000000
  %3925 = fmul fast float %3923, %3919
  %3926 = fmul fast float %3918, 0x3FDF454380000000
  %3927 = fmul fast float %3926, %3920
  %3928 = fadd fast float %3927, %3924
  %3929 = fadd fast float %3928, %3925
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %2768, float %2769, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = fmul fast float %3930, 0x3FDF454380000000
  %3932 = fmul fast float %3930, %3930
  %3933 = fmul fast float %3932, 0x3FEE471020000000
  %3934 = fadd fast float %3933, 0xBFD42F6020000000
  %3935 = call float @dx.op.dot3.f32(i32 55, float %3880, float %3918, float %3919, float 0x3FD20DD760000000, float %3931, float %3934)  ; Dot3(ax,ay,az,bx,by,bz)
  %3936 = call float @dx.op.binary.f32(i32 35, float %3817, float 0.000000e+00)  ; FMax(a,b)
  %3937 = call float @dx.op.binary.f32(i32 35, float %3873, float 0.000000e+00)  ; FMax(a,b)
  %3938 = call float @dx.op.binary.f32(i32 35, float %3929, float 0.000000e+00)  ; FMax(a,b)
  %3939 = call float @dx.op.binary.f32(i32 35, float %3823, float 0.000000e+00)  ; FMax(a,b)
  %3940 = call float @dx.op.binary.f32(i32 35, float %3879, float 0.000000e+00)  ; FMax(a,b)
  %3941 = call float @dx.op.binary.f32(i32 35, float %3935, float 0.000000e+00)  ; FMax(a,b)
  %3942 = fsub fast float %3138, %3936
  %3943 = fsub fast float %3139, %3937
  %3944 = fsub fast float %3140, %3938
  %3945 = fmul fast float %3942, %2819
  %3946 = fmul fast float %3943, %2819
  %3947 = fmul fast float %3944, %2819
  %3948 = fadd fast float %3945, %3936
  %3949 = fadd fast float %3946, %3937
  %3950 = fadd fast float %3947, %3938
  %3951 = fsub fast float %3135, %3939
  %3952 = fsub fast float %3136, %3940
  %3953 = fsub fast float %3137, %3941
  %3954 = fmul fast float %3951, %2819
  %3955 = fmul fast float %3952, %2819
  %3956 = fmul fast float %3953, %2819
  %3957 = fadd fast float %3954, %3939
  %3958 = fadd fast float %3955, %3940
  %3959 = fadd fast float %3956, %3941
  br label %3960

; <label>:3960                                    ; preds = %3914, %3134
  %3961 = phi float [ %3957, %3914 ], [ %3135, %3134 ]
  %3962 = phi float [ %3958, %3914 ], [ %3136, %3134 ]
  %3963 = phi float [ %3959, %3914 ], [ %3137, %3134 ]
  %3964 = phi float [ %3948, %3914 ], [ %3138, %3134 ]
  %3965 = phi float [ %3949, %3914 ], [ %3139, %3134 ]
  %3966 = phi float [ %3950, %3914 ], [ %3140, %3134 ]
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = call float @dx.op.binary.f32(i32 36, float %2752, float %3968)  ; FMin(a,b)
  %3970 = fsub fast float 1.000000e+00, %2771
  %3971 = fmul fast float %3969, %3970
  %3972 = fsub fast float 1.000000e+00, %3971
  %3973 = bitcast float %3972 to i32
  %3974 = sub nsw i32 2129859010, %3973
  %3975 = bitcast i32 %3974 to float
  %3976 = call float @dx.op.binary.f32(i32 36, float %2753, float %3968)  ; FMin(a,b)
  %3977 = fmul fast float %3976, %3970
  %3978 = fsub fast float 1.000000e+00, %3977
  %3979 = bitcast float %3978 to i32
  %3980 = sub nsw i32 2129859010, %3979
  %3981 = bitcast i32 %3980 to float
  %3982 = call float @dx.op.binary.f32(i32 36, float %2754, float %3968)  ; FMin(a,b)
  %3983 = fmul fast float %3982, %3970
  %3984 = fsub fast float 1.000000e+00, %3983
  %3985 = bitcast float %3984 to i32
  %3986 = sub nsw i32 2129859010, %3985
  %3987 = bitcast i32 %3986 to float
  %3988 = fmul fast float %3964, %2771
  %3989 = fmul fast float %3988, %3975
  %3990 = fmul fast float %3965, %2771
  %3991 = fmul fast float %3990, %3981
  %3992 = fmul fast float %3966, %2771
  %3993 = fmul fast float %3992, %3987
  %3994 = call float @dx.op.binary.f32(i32 36, float %2749, float %3968)  ; FMin(a,b)
  %3995 = fmul fast float %3994, %3970
  %3996 = fsub fast float 1.000000e+00, %3995
  %3997 = bitcast float %3996 to i32
  %3998 = sub nsw i32 2129859010, %3997
  %3999 = bitcast i32 %3998 to float
  %4000 = call float @dx.op.binary.f32(i32 36, float %2750, float %3968)  ; FMin(a,b)
  %4001 = fmul fast float %4000, %3970
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = bitcast float %4002 to i32
  %4004 = sub nsw i32 2129859010, %4003
  %4005 = bitcast i32 %4004 to float
  %4006 = call float @dx.op.binary.f32(i32 36, float %2760, float %3968)  ; FMin(a,b)
  %4007 = fmul fast float %4006, %3970
  %4008 = fsub fast float 1.000000e+00, %4007
  %4009 = bitcast float %4008 to i32
  %4010 = sub nsw i32 2129859010, %4009
  %4011 = bitcast i32 %4010 to float
  %4012 = fmul fast float %3961, %2771
  %4013 = fmul fast float %4012, %3999
  %4014 = fmul fast float %3962, %2771
  %4015 = fmul fast float %4014, %4005
  %4016 = fmul fast float %3963, %2771
  %4017 = fmul fast float %4016, %4011
  %4018 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3991, float %3993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4019 = select i1 %182, float 0.000000e+00, float %3989
  %4020 = select i1 %182, float %4018, float %3991
  %4021 = select i1 %182, float 0.000000e+00, float %3993
  %4022 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4015, float %4017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = select i1 %182, float 0.000000e+00, float %4013
  %4024 = select i1 %182, float %4022, float %4015
  %4025 = select i1 %182, float 0.000000e+00, float %4017
  %4026 = fmul fast float %2762, 9.843750e-01
  %4027 = fmul fast float %2758, 9.843750e-01
  %4028 = fadd fast float %4026, 7.812500e-03
  %4029 = fadd fast float %4027, 7.812500e-03
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4028, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 3
  %4033 = fmul fast float %4031, %2749
  %4034 = fmul fast float %4031, %2750
  %4035 = fmul fast float %4031, %2760
  %4036 = fadd fast float %4033, %4032
  %4037 = fadd fast float %4034, %4032
  %4038 = fadd fast float %4035, %4032
  %4039 = fcmp fast ogt float %2126, 0.000000e+00
  br i1 %4039, label %4040, label %4066

; <label>:4040                                    ; preds = %3960
  %4041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2126, float %2762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = fadd fast float %4042, -5.000000e-01
  %4046 = fadd fast float %4043, -5.000000e-01
  %4047 = fadd fast float %4044, -5.000000e-01
  %4048 = fsub fast float 1.000000e+00, %2749
  %4049 = fsub fast float 1.000000e+00, %2750
  %4050 = fsub fast float 1.000000e+00, %2760
  %4051 = fmul fast float %2749, 4.000000e+00
  %4052 = fmul fast float %4051, %4048
  %4053 = fmul fast float %4052, %4045
  %4054 = fmul fast float %2750, 4.000000e+00
  %4055 = fmul fast float %4054, %4049
  %4056 = fmul fast float %4055, %4046
  %4057 = fmul fast float %2760, 4.000000e+00
  %4058 = fmul fast float %4057, %4050
  %4059 = fmul fast float %4058, %4047
  %4060 = fadd fast float %4053, %4036
  %4061 = fadd fast float %4056, %4037
  %4062 = fadd fast float %4059, %4038
  %4063 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4064 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4065 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  br label %4066

; <label>:4066                                    ; preds = %4040, %3960
  %4067 = phi float [ %4063, %4040 ], [ %4036, %3960 ]
  %4068 = phi float [ %4064, %4040 ], [ %4037, %3960 ]
  %4069 = phi float [ %4065, %4040 ], [ %4038, %3960 ]
  %4070 = call float @dx.op.binary.f32(i32 35, float %4068, float %4069)  ; FMax(a,b)
  %4071 = call float @dx.op.binary.f32(i32 35, float %4067, float %4070)  ; FMax(a,b)
  %4072 = fsub fast float 1.000000e+00, %4071
  %4073 = fmul fast float %4072, %4019
  %4074 = fmul fast float %4072, %4020
  %4075 = fmul fast float %4072, %4021
  %4076 = call float @dx.op.dot3.f32(i32 55, float %2752, float %2753, float %2754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = fcmp fast ogt float %4076, 0x3E7FF19E20000000
  %4078 = fdiv fast float 1.000000e+00, %4076
  %4079 = select i1 %4077, float %4078, float 0.000000e+00
  %4080 = fmul fast float %4079, %2752
  %4081 = fmul fast float %4079, %2753
  %4082 = fmul fast float %4079, %2754
  %4083 = fadd fast float %4080, -1.000000e+00
  %4084 = fadd fast float %4081, -1.000000e+00
  %4085 = fadd fast float %4082, -1.000000e+00
  %4086 = fmul fast float %4083, 5.000000e-01
  %4087 = fmul fast float %4084, 5.000000e-01
  %4088 = fmul fast float %4085, 5.000000e-01
  %4089 = fadd fast float %4086, 1.000000e+00
  %4090 = fadd fast float %4087, 1.000000e+00
  %4091 = fadd fast float %4088, 1.000000e+00
  %4092 = fmul fast float %4067, %4023
  %4093 = fmul fast float %4068, %4024
  %4094 = fmul fast float %4069, %4025
  %4095 = fsub fast float 1.000000e+00, %2762
  %4096 = bitcast float %4095 to i32
  %4097 = sitofp i32 %4096 to float
  %4098 = fmul fast float %4097, 5.000000e+00
  %4099 = fadd fast float %4098, 0xC1EFBF8940000000
  %4100 = fptosi float %4099 to i32
  %4101 = bitcast i32 %4100 to float
  %4102 = fmul fast float %4101, %2125
  %4103 = fmul fast float %4019, %4102
  %4104 = fmul fast float %4103, %4072
  %4105 = fmul fast float %4104, %4089
  %4106 = fmul fast float %4020, %4102
  %4107 = fmul fast float %4106, %4072
  %4108 = fmul fast float %4107, %4090
  %4109 = fmul fast float %4021, %4102
  %4110 = fmul fast float %4109, %4072
  %4111 = fmul fast float %4110, %4091
  %4112 = fmul fast float %4073, %2146
  %4113 = fmul fast float %4074, %2146
  %4114 = fmul fast float %4075, %2146
  %4115 = fadd fast float %4092, %2127
  %4116 = fadd fast float %4115, %4105
  %4117 = fmul fast float %4116, %2146
  %4118 = fadd fast float %4093, %2128
  %4119 = fadd fast float %4118, %4108
  %4120 = fmul fast float %4119, %2146
  %4121 = fadd fast float %4094, %2129
  %4122 = fadd fast float %4121, %4111
  %4123 = fmul fast float %4122, %2146
  %4124 = bitcast i32 %2774 to float
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4127 = fcmp fast oeq float %4126, 0.000000e+00
  br i1 %4127, label %4355, label %4128

; <label>:4128                                    ; preds = %4066
  %4129 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4130 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4131 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.CBufRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4139 = call float @dx.op.dot3.f32(i32 55, float %4133, float %4134, float %4135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = select i1 %182, float %4137, float %4133
  %4141 = select i1 %182, float %4139, float %4134
  %4142 = select i1 %182, float %4138, float %4135
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4145 = fcmp fast une float %4144, 0.000000e+00
  br i1 %4145, label %4146, label %4163

; <label>:4146                                    ; preds = %4128
  %4147 = fptoui float %64 to i32
  %4148 = fptoui float %65 to i32
  %4149 = lshr i32 %4147, 4
  %4150 = lshr i32 %4148, 4
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = fptoui float %4152 to i32
  %4154 = add i32 %4153, 15
  %4155 = lshr i32 %4154, 4
  %4156 = mul i32 %4155, %4150
  %4157 = add i32 %4156, %4149
  %4158 = shl i32 %4157, 3
  %4159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.i32 %4159, 0
  %4161 = and i32 %4160, -268435456
  %4162 = icmp eq i32 %4161, -1342177280
  br i1 %4162, label %4173, label %4163

; <label>:4163                                    ; preds = %4146, %4128
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4166 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4167 = fmul fast float %4165, %64
  %4168 = fmul fast float %4166, %65
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4167, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  br label %4173

; <label>:4173                                    ; preds = %4163, %4146
  %4174 = phi float [ %4170, %4163 ], [ 0.000000e+00, %4146 ]
  %4175 = phi float [ %4171, %4163 ], [ 0.000000e+00, %4146 ]
  %4176 = phi float [ %4172, %4163 ], [ 0.000000e+00, %4146 ]
  %4177 = call float @dx.op.binary.f32(i32 36, float %4175, float %4176)  ; FMin(a,b)
  %4178 = call float @dx.op.binary.f32(i32 36, float %4174, float %4177)  ; FMin(a,b)
  %4179 = fcmp fast ogt float %4178, 0.000000e+00
  br i1 %4179, label %4180, label %4355, !dx.controlflow.hints !85

; <label>:4180                                    ; preds = %4173
  %4181 = fmul fast float %4174, %4140
  %4182 = fmul fast float %4175, %4141
  %4183 = fmul fast float %4176, %4142
  %4184 = fsub fast float %4129, %2748
  %4185 = fsub fast float %4130, %2747
  %4186 = fsub fast float %4131, %2746
  %4187 = call float @dx.op.dot3.f32(i32 55, float %4184, float %4185, float %4186, float %4184, float %4185, float %4186)  ; Dot3(ax,ay,az,bx,by,bz)
  %4188 = call float @dx.op.unary.f32(i32 25, float %4187)  ; Rsqrt(value)
  %4189 = fmul fast float %4188, %4184
  %4190 = fmul fast float %4188, %4185
  %4191 = fmul fast float %4188, %4186
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4129, float %4130, float %4131, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call float @dx.op.dot3.f32(i32 55, float %2745, float %2744, float %2743, float %4189, float %4190, float %4191)  ; Dot3(ax,ay,az,bx,by,bz)
  %4194 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4195 = fmul fast float %4194, %4194
  %4196 = fmul fast float %4195, %4124
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = fmul fast float %4197, %4194
  %4199 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %4189, float %4190, float %4191)  ; Dot3(ax,ay,az,bx,by,bz)
  %4200 = fmul fast float %4199, %4199
  %4201 = call float @dx.op.unary.f32(i32 6, float %4192)  ; FAbs(value)
  %4202 = fsub fast float 1.000000e+00, %2758
  %4203 = call float @dx.op.binary.f32(i32 35, float %4202, float 0x3F847AE140000000)  ; FMax(a,b)
  %4204 = fmul fast float %4203, %4203
  %4205 = fmul fast float %4204, %4204
  %4206 = fsub fast float 1.000000e+00, %4205
  %4207 = fmul fast float %2762, %2762
  %4208 = fmul fast float %4207, %4206
  %4209 = fadd fast float %4208, %4205
  %4210 = bitcast float %4209 to i32
  %4211 = ashr i32 %4210, 1
  %4212 = add nsw i32 %4211, 532487669
  %4213 = bitcast i32 %4212 to float
  %4214 = fadd fast float %4213, %2762
  %4215 = fmul fast float %4205, %4200
  %4216 = fsub fast float 1.000000e+00, %4200
  %4217 = fadd fast float %4216, %4215
  %4218 = fmul fast float %4201, %4201
  %4219 = fmul fast float %4218, %4206
  %4220 = fadd fast float %4219, %4205
  %4221 = bitcast float %4220 to i32
  %4222 = ashr i32 %4221, 1
  %4223 = add nsw i32 %4222, 532487669
  %4224 = bitcast i32 %4223 to float
  %4225 = fadd fast float %4224, %4201
  %4226 = fmul fast float %4217, %4217
  %4227 = fmul fast float %4226, %4214
  %4228 = fmul fast float %4227, %4225
  %4229 = fdiv fast float 0x3FF0A00000000000, %4228
  %4230 = fmul fast float %4229, %4205
  %4231 = call float @dx.op.unary.f32(i32 6, float %4193)  ; FAbs(value)
  %4232 = fsub fast float 1.000000e+00, %4231
  %4233 = bitcast float %4232 to i32
  %4234 = sitofp i32 %4233 to float
  %4235 = fmul fast float %4234, 5.000000e+00
  %4236 = fadd fast float %4235, 0xC1EFBF8940000000
  %4237 = fptosi float %4236 to i32
  %4238 = bitcast i32 %4237 to float
  %4239 = fsub fast float 1.000000e+00, %2749
  %4240 = fsub fast float 1.000000e+00, %2750
  %4241 = fsub fast float 1.000000e+00, %2760
  %4242 = fmul fast float %4238, %4239
  %4243 = fmul fast float %4238, %4240
  %4244 = fmul fast float %4238, %4241
  %4245 = fadd fast float %4242, %2749
  %4246 = fadd fast float %4243, %2750
  %4247 = fadd fast float %4244, %2760
  br i1 %4039, label %4248, label %4271

; <label>:4248                                    ; preds = %4180
  %4249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2126, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.ResRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.ResRet.f32 %4249, 2
  %4253 = fadd fast float %4250, -5.000000e-01
  %4254 = fadd fast float %4251, -5.000000e-01
  %4255 = fadd fast float %4252, -5.000000e-01
  %4256 = fmul fast float %2749, 4.000000e+00
  %4257 = fmul fast float %4256, %4239
  %4258 = fmul fast float %4257, %4253
  %4259 = fmul fast float %2750, 4.000000e+00
  %4260 = fmul fast float %4259, %4240
  %4261 = fmul fast float %4260, %4254
  %4262 = fmul fast float %2760, 4.000000e+00
  %4263 = fmul fast float %4262, %4241
  %4264 = fmul fast float %4263, %4255
  %4265 = fadd fast float %4258, %4245
  %4266 = fadd fast float %4261, %4246
  %4267 = fadd fast float %4264, %4247
  %4268 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  br label %4271

; <label>:4271                                    ; preds = %4248, %4180
  %4272 = phi float [ %4268, %4248 ], [ %4245, %4180 ]
  %4273 = phi float [ %4269, %4248 ], [ %4246, %4180 ]
  %4274 = phi float [ %4270, %4248 ], [ %4247, %4180 ]
  %4275 = fmul fast float %4192, 9.843750e-01
  %4276 = fadd fast float %4275, 7.812500e-03
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4276, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 3
  %4280 = fmul fast float %4278, %2749
  %4281 = fmul fast float %4278, %2750
  %4282 = fmul fast float %4278, %2760
  %4283 = fadd fast float %4280, %4279
  %4284 = fadd fast float %4281, %4279
  %4285 = fadd fast float %4282, %4279
  br i1 %4039, label %4286, label %4309

; <label>:4286                                    ; preds = %4271
  %4287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2126, float %4192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.ResRet.f32 %4287, 1
  %4290 = extractvalue %dx.types.ResRet.f32 %4287, 2
  %4291 = fadd fast float %4288, -5.000000e-01
  %4292 = fadd fast float %4289, -5.000000e-01
  %4293 = fadd fast float %4290, -5.000000e-01
  %4294 = fmul fast float %2749, 4.000000e+00
  %4295 = fmul fast float %4294, %4239
  %4296 = fmul fast float %4295, %4291
  %4297 = fmul fast float %2750, 4.000000e+00
  %4298 = fmul fast float %4297, %4240
  %4299 = fmul fast float %4298, %4292
  %4300 = fmul fast float %2760, 4.000000e+00
  %4301 = fmul fast float %4300, %4241
  %4302 = fmul fast float %4301, %4293
  %4303 = fadd fast float %4296, %4283
  %4304 = fadd fast float %4299, %4284
  %4305 = fadd fast float %4302, %4285
  %4306 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4307 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4308 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  br label %4309

; <label>:4309                                    ; preds = %4286, %4271
  %4310 = phi float [ %4306, %4286 ], [ %4283, %4271 ]
  %4311 = phi float [ %4307, %4286 ], [ %4284, %4271 ]
  %4312 = phi float [ %4308, %4286 ], [ %4285, %4271 ]
  %4313 = call float @dx.op.binary.f32(i32 35, float %4311, float %4312)  ; FMax(a,b)
  %4314 = call float @dx.op.binary.f32(i32 35, float %4310, float %4313)  ; FMax(a,b)
  %4315 = fsub fast float 1.000000e+00, %4314
  %4316 = fmul fast float %4272, %4230
  %4317 = fmul fast float %4273, %4230
  %4318 = fmul fast float %4274, %4230
  %4319 = fsub fast float 1.000000e+00, %4193
  %4320 = bitcast float %4319 to i32
  %4321 = sitofp i32 %4320 to float
  %4322 = fmul fast float %4321, 5.000000e+00
  %4323 = fadd fast float %4322, 0xC1EFBF8940000000
  %4324 = fptosi float %4323 to i32
  %4325 = bitcast i32 %4324 to float
  %4326 = fmul fast float %4325, %2125
  %4327 = fmul fast float %4315, %4326
  %4328 = fmul fast float %4327, %4089
  %4329 = fmul fast float %4327, %4090
  %4330 = fmul fast float %4327, %4091
  %4331 = fadd fast float %4328, %4316
  %4332 = fadd fast float %4329, %4317
  %4333 = fadd fast float %4330, %4318
  %4334 = fmul fast float %4198, %4181
  %4335 = fmul fast float %4334, %4315
  %4336 = fmul fast float %4198, %4182
  %4337 = fmul fast float %4336, %4315
  %4338 = fmul fast float %4198, %4183
  %4339 = fmul fast float %4338, %4315
  %4340 = fmul fast float %4334, %4331
  %4341 = fmul fast float %4336, %4332
  %4342 = fmul fast float %4338, %4333
  %4343 = fadd fast float %4335, %4073
  %4344 = fmul fast float %4343, %2146
  %4345 = fadd fast float %4337, %4074
  %4346 = fmul fast float %4345, %2146
  %4347 = fadd fast float %4339, %4075
  %4348 = fmul fast float %4347, %2146
  %4349 = fadd fast float %4340, %4116
  %4350 = fmul fast float %4349, %2146
  %4351 = fadd fast float %4341, %4119
  %4352 = fmul fast float %4351, %2146
  %4353 = fadd fast float %4342, %4122
  %4354 = fmul fast float %4353, %2146
  br label %4355

; <label>:4355                                    ; preds = %4309, %4173, %4066
  %4356 = phi float [ %4117, %4066 ], [ %4117, %4173 ], [ %4350, %4309 ]
  %4357 = phi float [ %4120, %4066 ], [ %4120, %4173 ], [ %4352, %4309 ]
  %4358 = phi float [ %4123, %4066 ], [ %4123, %4173 ], [ %4354, %4309 ]
  %4359 = phi float [ %4112, %4066 ], [ %4112, %4173 ], [ %4344, %4309 ]
  %4360 = phi float [ %4113, %4066 ], [ %4113, %4173 ], [ %4346, %4309 ]
  %4361 = phi float [ %4114, %4066 ], [ %4114, %4173 ], [ %4348, %4309 ]
  %4362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.i32 %4362, 0
  %4364 = icmp eq i32 %4363, 0
  br i1 %4364, label %4799, label %4365

; <label>:4365                                    ; preds = %4355
  %4366 = fptoui float %64 to i32
  %4367 = fptoui float %65 to i32
  %4368 = lshr i32 %4366, 4
  %4369 = lshr i32 %4367, 4
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 0
  %4372 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4369, i32 %4371, i32 %4368)  ; UMad(a,b,c)
  %4373 = add nsw i32 %4363, -1
  %4374 = call i32 @dx.op.binary.i32(i32 37, i32 %4373, i32 0)  ; IMax(a,b)
  %4375 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %4376 = fptoui float %4375 to i32
  %4377 = lshr i32 %4376, 5
  %4378 = call i32 @dx.op.binary.i32(i32 40, i32 %4377, i32 8191)  ; UMin(a,b)
  %4379 = shl i32 %4378, 2
  %4380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.i32 %4380, 0
  %4382 = lshr i32 %4381, 16
  %4383 = and i32 %4381, 65535
  %4384 = lshr i32 %4381, 21
  %4385 = lshr i32 %4383, 5
  %4386 = call i32 @dx.op.binary.i32(i32 40, i32 %4385, i32 %4374)  ; UMin(a,b)
  %4387 = icmp ugt i32 %4384, %4386
  br i1 %4387, label %4799, label %4388

; <label>:4388                                    ; preds = %4365
  br label %4389

; <label>:4389                                    ; preds = %4789, %4388
  %4390 = phi i32 [ %4796, %4789 ], [ %4384, %4388 ]
  %4391 = phi float [ %4790, %4789 ], [ %4356, %4388 ]
  %4392 = phi float [ %4791, %4789 ], [ %4357, %4388 ]
  %4393 = phi float [ %4792, %4789 ], [ %4358, %4388 ]
  %4394 = phi float [ %4793, %4789 ], [ %4359, %4388 ]
  %4395 = phi float [ %4794, %4789 ], [ %4360, %4388 ]
  %4396 = phi float [ %4795, %4789 ], [ %4361, %4388 ]
  %4397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.i32 %4397, 0
  %4399 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4372, i32 %4398, i32 %4390)  ; UMad(a,b,c)
  %4400 = shl i32 %4399, 2
  %4401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4400, i32 undef)  ; BufferLoad(srv,index,wot)
  %4402 = extractvalue %dx.types.ResRet.i32 %4401, 0
  %4403 = shl i32 %4390, 5
  %4404 = sub nsw i32 %4382, %4403
  %4405 = call i32 @dx.op.binary.i32(i32 37, i32 %4404, i32 0)  ; IMax(a,b)
  %4406 = call i32 @dx.op.binary.i32(i32 38, i32 %4405, i32 31)  ; IMin(a,b)
  %4407 = sub nsw i32 1, %4382
  %4408 = add nsw i32 %4407, %4383
  %4409 = call i32 @dx.op.binary.i32(i32 37, i32 %4408, i32 0)  ; IMax(a,b)
  %4410 = call i32 @dx.op.binary.i32(i32 38, i32 %4409, i32 32)  ; IMin(a,b)
  %4411 = and i32 %4410, 31
  %4412 = shl i32 -1, %4411
  %4413 = xor i32 %4412, -1
  %4414 = and i32 %4406, 31
  %4415 = shl i32 %4413, %4414
  %4416 = icmp eq i32 %4410, 32
  %4417 = select i1 %4416, i32 -1, i32 %4415
  %4418 = and i32 %4417, %4402
  %4419 = icmp eq i32 %4418, 0
  br i1 %4419, label %4789, label %4420

; <label>:4420                                    ; preds = %4389
  br label %4421

; <label>:4421                                    ; preds = %4501, %4420
  %4422 = phi i32 [ %4433, %4501 ], [ %4418, %4420 ]
  %4423 = phi float [ %4502, %4501 ], [ %4391, %4420 ]
  %4424 = phi float [ %4503, %4501 ], [ %4392, %4420 ]
  %4425 = phi float [ %4504, %4501 ], [ %4393, %4420 ]
  %4426 = phi float [ %4505, %4501 ], [ %4394, %4420 ]
  %4427 = phi float [ %4506, %4501 ], [ %4395, %4420 ]
  %4428 = phi float [ %4507, %4501 ], [ %4396, %4420 ]
  %4429 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4422)  ; FirstbitLo(value)
  %4430 = add i32 %4429, %4403
  %4431 = and i32 %4429, 31
  %4432 = shl i32 1, %4431
  %4433 = xor i32 %4432, %4422
  %4434 = mul i32 %4430, 112
  %4435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.ResRet.f32 %4435, 1
  %4438 = extractvalue %dx.types.ResRet.f32 %4435, 2
  %4439 = or i32 %4434, 12
  %4440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = add i32 %4434, 44
  %4443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = add i32 %4434, 48
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = add i32 %4434, 80
  %4451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4450, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4454 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = select i1 %182, float %4452, float %4436
  %4456 = select i1 %182, float %4454, float %4437
  %4457 = select i1 %182, float %4453, float %4438
  %4458 = fsub fast float %4447, %111
  %4459 = fsub fast float %4448, %112
  %4460 = fsub fast float %4449, %113
  %4461 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4458, float %4459, float %4460)  ; Dot3(ax,ay,az,bx,by,bz)
  %4462 = call float @dx.op.unary.f32(i32 24, float %4461)  ; Sqrt(value)
  %4463 = fdiv fast float 1.000000e+00, %4462
  %4464 = fmul fast float %4463, %4458
  %4465 = fmul fast float %4463, %4459
  %4466 = fmul fast float %4463, %4460
  %4467 = fadd fast float %4462, %4441
  %4468 = fdiv fast float 1.000000e+00, %4467
  %4469 = fmul float %4444, %4468
  %4470 = fmul float %4469, %4469
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = and i32 %4432, %4418
  %4473 = icmp eq i32 %4472, 0
  br i1 %4473, label %4496, label %4474, !dx.controlflow.hints !86

; <label>:4474                                    ; preds = %4421
  %4475 = lshr i32 %4366, 5
  %4476 = lshr i32 %4367, 5
  %4477 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4475, i32 %4476, i32 %4430, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4478 = extractvalue %dx.types.ResRet.i32 %4477, 0
  %4479 = and i32 %4478, 3
  %4480 = icmp eq i32 %4479, 0
  %4481 = select i1 %4480, float 1.000000e+00, float 0.000000e+00
  %4482 = icmp eq i32 %4479, 3
  br i1 %4482, label %4483, label %4496

; <label>:4483                                    ; preds = %4474
  %4484 = lshr i32 %4478, 10
  %4485 = and i32 %4484, 8160
  %4486 = and i32 %4367, 31
  %4487 = or i32 %4485, %4486
  %4488 = lshr i32 %4478, 1
  %4489 = and i32 %4488, 16352
  %4490 = and i32 %4366, 31
  %4491 = or i32 %4489, %4490
  %4492 = lshr i32 %4478, 23
  %4493 = and i32 %4492, 255
  %4494 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4491, i32 %4487, i32 %4493, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  br label %4496

; <label>:4496                                    ; preds = %4483, %4474, %4421
  %4497 = phi float [ %4495, %4483 ], [ %4481, %4474 ], [ 0.000000e+00, %4421 ]
  %4498 = call float @dx.op.binary.f32(i32 36, float %4497, float %4497)  ; FMin(a,b)
  %4499 = call float @dx.op.binary.f32(i32 36, float %4497, float %4498)  ; FMin(a,b)
  %4500 = fcmp fast ogt float %4499, 0.000000e+00
  br i1 %4500, label %4509, label %4501, !dx.controlflow.hints !87

; <label>:4501                                    ; preds = %4745, %4496
  %4502 = phi float [ %4423, %4496 ], [ %4785, %4745 ]
  %4503 = phi float [ %4424, %4496 ], [ %4786, %4745 ]
  %4504 = phi float [ %4425, %4496 ], [ %4787, %4745 ]
  %4505 = phi float [ %4426, %4496 ], [ %4779, %4745 ]
  %4506 = phi float [ %4427, %4496 ], [ %4780, %4745 ]
  %4507 = phi float [ %4428, %4496 ], [ %4781, %4745 ]
  %4508 = icmp eq i32 %4422, %4432
  br i1 %4508, label %4788, label %4421

; <label>:4509                                    ; preds = %4496
  %4510 = fmul fast float %4497, %4455
  %4511 = fmul fast float %4497, %4456
  %4512 = fmul fast float %4497, %4457
  %4513 = fsub fast float %4449, %2548
  %4514 = fcmp fast ogt float %4513, 0.000000e+00
  %4515 = fsub fast float %113, %2548
  %4516 = fcmp fast ogt float %4515, 0.000000e+00
  %4517 = xor i1 %4516, %4514
  %4518 = fsub fast float %2548, %4449
  %4519 = fmul fast float %4518, 2.000000e+00
  %4520 = fadd fast float %4519, %4449
  %4521 = select i1 %4517, float %4449, float %4520
  %4522 = fsub fast float %4521, %113
  %4523 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4522, float %4458, float %4459, float %4522)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = call float @dx.op.unary.f32(i32 25, float %4523)  ; Rsqrt(value)
  %4525 = fmul fast float %4524, %4458
  %4526 = fmul fast float %4524, %4459
  %4527 = fmul fast float %4524, %4522
  %4528 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4529 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4525, float %4526, float %4527)  ; Dot3(ax,ay,az,bx,by,bz)
  %4530 = fdiv fast float 1.000000e+00, %4529
  %4531 = fmul fast float %4530, %4528
  %4532 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4515, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = fcmp fast ogt float %4532, 0.000000e+00
  %4534 = fcmp fast olt float %4532, 0.000000e+00
  %4535 = zext i1 %4533 to i32
  %4536 = zext i1 %4534 to i32
  %4537 = sub nsw i32 %4535, %4536
  %4538 = sitofp i32 %4537 to float
  %4539 = fsub fast float %4521, %2548
  %4540 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4539, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = fcmp fast ogt float %4540, 0.000000e+00
  %4542 = fcmp fast olt float %4540, 0.000000e+00
  %4543 = zext i1 %4541 to i32
  %4544 = zext i1 %4542 to i32
  %4545 = sub nsw i32 %4543, %4544
  %4546 = sitofp i32 %4545 to float
  %4547 = fcmp fast une float %4538, %4546
  br i1 %4547, label %4548, label %4558

; <label>:4548                                    ; preds = %4509
  %4549 = fmul fast float %4531, %4527
  %4550 = fmul fast float %4531, %4526
  %4551 = fmul fast float %4531, %4525
  %4552 = fmul fast float %4551, %4551
  %4553 = fmul fast float %4550, %4550
  %4554 = fadd fast float %4552, %4553
  %4555 = fmul fast float %4549, %4549
  %4556 = fadd fast float %4554, %4555
  %4557 = call float @dx.op.unary.f32(i32 24, float %4556)  ; Sqrt(value)
  br label %4570

; <label>:4558                                    ; preds = %4509
  %4559 = icmp slt i32 %4537, 0
  br i1 %4559, label %4560, label %4570

; <label>:4560                                    ; preds = %4558
  %4561 = fsub fast float %111, %4447
  %4562 = fsub fast float %112, %4448
  %4563 = fsub fast float %113, %4521
  %4564 = fmul fast float %4561, %4561
  %4565 = fmul fast float %4562, %4562
  %4566 = fadd fast float %4564, %4565
  %4567 = fmul fast float %4563, %4563
  %4568 = fadd fast float %4566, %4567
  %4569 = call float @dx.op.unary.f32(i32 24, float %4568)  ; Sqrt(value)
  br label %4570

; <label>:4570                                    ; preds = %4560, %4558, %4548
  %4571 = phi float [ %4557, %4548 ], [ %4569, %4560 ], [ 0.000000e+00, %4558 ]
  %4572 = and i1 %4516, %4514
  %4573 = fsub fast float -0.000000e+00, %4571
  %4574 = select i1 %4572, float -0.000000e+00, float %4573
  %4575 = fmul fast float %2549, 0x3FF7154760000000
  %4576 = fmul fast float %4575, %4574
  %4577 = fmul fast float %2550, 0x3FF7154760000000
  %4578 = fmul fast float %4577, %4574
  %4579 = fmul fast float %2551, 0x3FF7154760000000
  %4580 = fmul fast float %4579, %4574
  %4581 = call float @dx.op.unary.f32(i32 21, float %4576)  ; Exp(value)
  %4582 = call float @dx.op.unary.f32(i32 21, float %4578)  ; Exp(value)
  %4583 = call float @dx.op.unary.f32(i32 21, float %4580)  ; Exp(value)
  %4584 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4585 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4586 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4587 = fmul fast float %4510, %4584
  %4588 = fmul fast float %4511, %4585
  %4589 = fmul fast float %4512, %4586
  %4590 = fsub fast float %4464, %2748
  %4591 = fsub fast float %4465, %2747
  %4592 = fsub fast float %4466, %2746
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4590, float %4591, float %4592, float %4590, float %4591, float %4592)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = call float @dx.op.unary.f32(i32 25, float %4593)  ; Rsqrt(value)
  %4595 = fmul fast float %4594, %4590
  %4596 = fmul fast float %4594, %4591
  %4597 = fmul fast float %4594, %4592
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4465, float %4466, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.dot3.f32(i32 55, float %2745, float %2744, float %2743, float %4595, float %4596, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4601 = fmul fast float %4600, %4471
  %4602 = fmul fast float %4600, %4600
  %4603 = fmul fast float %4602, %4124
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fmul fast float %4601, %4604
  %4606 = bitcast float %4461 to i32
  %4607 = ashr i32 %4606, 1
  %4608 = sub nsw i32 1597463007, %4607
  %4609 = bitcast i32 %4608 to float
  %4610 = fmul fast float %4609, %4458
  %4611 = fmul fast float %4609, %4459
  %4612 = fmul fast float %4609, %4460
  %4613 = fsub fast float %4610, %2748
  %4614 = fsub fast float %4611, %2747
  %4615 = fsub fast float %4612, %2746
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4613, float %4614, float %4615, float %4613, float %4614, float %4615)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = call float @dx.op.unary.f32(i32 25, float %4616)  ; Rsqrt(value)
  %4618 = fmul fast float %4613, %4617
  %4619 = fmul fast float %4614, %4617
  %4620 = fmul fast float %4615, %4617
  %4621 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %4618, float %4619, float %4620)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = fmul fast float %4621, %4621
  %4623 = call float @dx.op.unary.f32(i32 6, float %4598)  ; FAbs(value)
  %4624 = fsub fast float 1.000000e+00, %2758
  %4625 = call float @dx.op.binary.f32(i32 35, float %4624, float 0x3F847AE140000000)  ; FMax(a,b)
  %4626 = fmul fast float %4625, %4625
  %4627 = fmul fast float %4626, %4626
  %4628 = fsub fast float 1.000000e+00, %4627
  %4629 = fmul fast float %2762, %2762
  %4630 = fmul fast float %4629, %4628
  %4631 = fadd fast float %4630, %4627
  %4632 = bitcast float %4631 to i32
  %4633 = ashr i32 %4632, 1
  %4634 = add nsw i32 %4633, 532487669
  %4635 = bitcast i32 %4634 to float
  %4636 = fadd fast float %4635, %2762
  %4637 = fmul fast float %4627, %4622
  %4638 = fsub fast float 1.000000e+00, %4622
  %4639 = fadd fast float %4638, %4637
  %4640 = fmul fast float %4623, %4623
  %4641 = fmul fast float %4640, %4628
  %4642 = fadd fast float %4641, %4627
  %4643 = bitcast float %4642 to i32
  %4644 = ashr i32 %4643, 1
  %4645 = add nsw i32 %4644, 532487669
  %4646 = bitcast i32 %4645 to float
  %4647 = fadd fast float %4646, %4623
  %4648 = fmul fast float %4639, %4639
  %4649 = fmul fast float %4648, %4636
  %4650 = fmul fast float %4649, %4647
  %4651 = fdiv fast float 1.000000e+00, %4650
  %4652 = bitcast float %4627 to i32
  %4653 = sitofp i32 %4652 to float
  %4654 = fmul fast float %4653, 0x3FE7F73180000000
  %4655 = fadd fast float %4654, 0x41AFE27C40000000
  %4656 = fptosi float %4655 to i32
  %4657 = bitcast i32 %4656 to float
  %4658 = fmul fast float %4444, 0x3FD80E9D60000000
  %4659 = fmul fast float %4658, %4609
  %4660 = fadd fast float %4657, %4659
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4627, %4651
  %4665 = fmul fast float %4664, %4657
  %4666 = fmul fast float %4665, %4663
  %4667 = call float @dx.op.unary.f32(i32 6, float %4599)  ; FAbs(value)
  %4668 = fsub fast float 1.000000e+00, %4667
  %4669 = bitcast float %4668 to i32
  %4670 = sitofp i32 %4669 to float
  %4671 = fmul fast float %4670, 5.000000e+00
  %4672 = fadd fast float %4671, 0xC1EFBF8940000000
  %4673 = fptosi float %4672 to i32
  %4674 = bitcast i32 %4673 to float
  %4675 = fsub fast float 1.000000e+00, %2749
  %4676 = fsub fast float 1.000000e+00, %2750
  %4677 = fsub fast float 1.000000e+00, %2760
  %4678 = fmul fast float %4674, %4675
  %4679 = fmul fast float %4674, %4676
  %4680 = fmul fast float %4674, %4677
  %4681 = fadd fast float %4678, %2749
  %4682 = fadd fast float %4679, %2750
  %4683 = fadd fast float %4680, %2760
  br i1 %4039, label %4684, label %4707

; <label>:4684                                    ; preds = %4570
  %4685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2126, float %4667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.ResRet.f32 %4685, 1
  %4688 = extractvalue %dx.types.ResRet.f32 %4685, 2
  %4689 = fadd fast float %4686, -5.000000e-01
  %4690 = fadd fast float %4687, -5.000000e-01
  %4691 = fadd fast float %4688, -5.000000e-01
  %4692 = fmul fast float %2749, 4.000000e+00
  %4693 = fmul fast float %4692, %4675
  %4694 = fmul fast float %4693, %4689
  %4695 = fmul fast float %2750, 4.000000e+00
  %4696 = fmul fast float %4695, %4676
  %4697 = fmul fast float %4696, %4690
  %4698 = fmul fast float %2760, 4.000000e+00
  %4699 = fmul fast float %4698, %4677
  %4700 = fmul fast float %4699, %4691
  %4701 = fadd fast float %4694, %4681
  %4702 = fadd fast float %4697, %4682
  %4703 = fadd fast float %4700, %4683
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  br label %4707

; <label>:4707                                    ; preds = %4684, %4570
  %4708 = phi float [ %4704, %4684 ], [ %4681, %4570 ]
  %4709 = phi float [ %4705, %4684 ], [ %4682, %4570 ]
  %4710 = phi float [ %4706, %4684 ], [ %4683, %4570 ]
  %4711 = fmul fast float %4598, 9.843750e-01
  %4712 = fadd fast float %4711, 7.812500e-03
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4712, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 3
  %4716 = fmul fast float %4714, %2749
  %4717 = fmul fast float %4714, %2750
  %4718 = fmul fast float %4714, %2760
  %4719 = fadd fast float %4716, %4715
  %4720 = fadd fast float %4717, %4715
  %4721 = fadd fast float %4718, %4715
  br i1 %4039, label %4722, label %4745

; <label>:4722                                    ; preds = %4707
  %4723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2126, float %4598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4724 = extractvalue %dx.types.ResRet.f32 %4723, 0
  %4725 = extractvalue %dx.types.ResRet.f32 %4723, 1
  %4726 = extractvalue %dx.types.ResRet.f32 %4723, 2
  %4727 = fadd fast float %4724, -5.000000e-01
  %4728 = fadd fast float %4725, -5.000000e-01
  %4729 = fadd fast float %4726, -5.000000e-01
  %4730 = fmul fast float %2749, 4.000000e+00
  %4731 = fmul fast float %4730, %4675
  %4732 = fmul fast float %4731, %4727
  %4733 = fmul fast float %2750, 4.000000e+00
  %4734 = fmul fast float %4733, %4676
  %4735 = fmul fast float %4734, %4728
  %4736 = fmul fast float %2760, 4.000000e+00
  %4737 = fmul fast float %4736, %4677
  %4738 = fmul fast float %4737, %4729
  %4739 = fadd fast float %4732, %4719
  %4740 = fadd fast float %4735, %4720
  %4741 = fadd fast float %4738, %4721
  %4742 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4743 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  br label %4745

; <label>:4745                                    ; preds = %4722, %4707
  %4746 = phi float [ %4742, %4722 ], [ %4719, %4707 ]
  %4747 = phi float [ %4743, %4722 ], [ %4720, %4707 ]
  %4748 = phi float [ %4744, %4722 ], [ %4721, %4707 ]
  %4749 = call float @dx.op.binary.f32(i32 35, float %4747, float %4748)  ; FMax(a,b)
  %4750 = call float @dx.op.binary.f32(i32 35, float %4746, float %4749)  ; FMax(a,b)
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = fmul fast float %4708, %4666
  %4753 = fmul fast float %4709, %4666
  %4754 = fmul fast float %4710, %4666
  %4755 = fsub fast float 1.000000e+00, %4599
  %4756 = bitcast float %4755 to i32
  %4757 = sitofp i32 %4756 to float
  %4758 = fmul fast float %4757, 5.000000e+00
  %4759 = fadd fast float %4758, 0xC1EFBF8940000000
  %4760 = fptosi float %4759 to i32
  %4761 = bitcast i32 %4760 to float
  %4762 = fmul fast float %4761, %2125
  %4763 = fmul fast float %4751, %4762
  %4764 = fmul fast float %4763, %4089
  %4765 = fmul fast float %4763, %4090
  %4766 = fmul fast float %4763, %4091
  %4767 = fadd fast float %4764, %4752
  %4768 = fadd fast float %4765, %4753
  %4769 = fadd fast float %4766, %4754
  %4770 = fmul fast float %4587, %2146
  %4771 = fmul fast float %4770, %4605
  %4772 = fmul fast float %4771, %4751
  %4773 = fmul fast float %4588, %2146
  %4774 = fmul fast float %4773, %4605
  %4775 = fmul fast float %4774, %4751
  %4776 = fmul fast float %4589, %2146
  %4777 = fmul fast float %4776, %4605
  %4778 = fmul fast float %4777, %4751
  %4779 = fadd fast float %4772, %4426
  %4780 = fadd fast float %4775, %4427
  %4781 = fadd fast float %4778, %4428
  %4782 = fmul fast float %4771, %4767
  %4783 = fmul fast float %4774, %4768
  %4784 = fmul fast float %4777, %4769
  %4785 = fadd fast float %4782, %4423
  %4786 = fadd fast float %4783, %4424
  %4787 = fadd fast float %4784, %4425
  br label %4501

; <label>:4788                                    ; preds = %4501
  br label %4789

; <label>:4789                                    ; preds = %4788, %4389
  %4790 = phi float [ %4391, %4389 ], [ %4502, %4788 ]
  %4791 = phi float [ %4392, %4389 ], [ %4503, %4788 ]
  %4792 = phi float [ %4393, %4389 ], [ %4504, %4788 ]
  %4793 = phi float [ %4394, %4389 ], [ %4505, %4788 ]
  %4794 = phi float [ %4395, %4389 ], [ %4506, %4788 ]
  %4795 = phi float [ %4396, %4389 ], [ %4507, %4788 ]
  %4796 = add i32 %4390, 1
  %4797 = icmp ugt i32 %4796, %4386
  br i1 %4797, label %4798, label %4389

; <label>:4798                                    ; preds = %4789
  br label %4799

; <label>:4799                                    ; preds = %4798, %4365, %4355
  %4800 = phi float [ %4356, %4355 ], [ %4356, %4365 ], [ %4790, %4798 ]
  %4801 = phi float [ %4357, %4355 ], [ %4357, %4365 ], [ %4791, %4798 ]
  %4802 = phi float [ %4358, %4355 ], [ %4358, %4365 ], [ %4792, %4798 ]
  %4803 = phi float [ %4359, %4355 ], [ %4359, %4365 ], [ %4793, %4798 ]
  %4804 = phi float [ %4360, %4355 ], [ %4360, %4365 ], [ %4794, %4798 ]
  %4805 = phi float [ %4361, %4355 ], [ %4361, %4365 ], [ %4795, %4798 ]
  %4806 = call float @dx.op.unary.f32(i32 24, float %2752)  ; Sqrt(value)
  %4807 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %4808 = call float @dx.op.unary.f32(i32 24, float %2754)  ; Sqrt(value)
  %4809 = fmul fast float %4806, %4803
  %4810 = fmul fast float %4807, %4804
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  br i1 %182, label %4813, label %4833

; <label>:4813                                    ; preds = %4799
  %4814 = fadd fast float %4805, %2123
  %4815 = fmul fast float %4814, %2124
  %4816 = fsub fast float 1.000000e+00, %2124
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4818, 3
  %4820 = fmul fast float %4819, %4817
  %4821 = fadd fast float %4820, %4815
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = fmul fast float %4823, %4095
  %4825 = fsub fast float %4821, %4824
  %4826 = fadd fast float %4810, %4809
  %4827 = fmul fast float %4812, %4826
  %4828 = extractvalue %dx.types.CBufRet.f32 %4818, 1
  %4829 = fsub fast float %4825, %4828
  %4830 = extractvalue %dx.types.CBufRet.f32 %4818, 2
  %4831 = fmul fast float %4829, %4830
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  br label %4849

; <label>:4833                                    ; preds = %4799
  %4834 = fmul fast float %4808, %4805
  %4835 = fmul fast float %4812, %4809
  %4836 = fmul fast float %4812, %4810
  %4837 = fmul fast float %4834, %4812
  %4838 = add i32 %44, 196
  %4839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4838, i32 undef)  ; BufferLoad(srv,index,wot)
  %4840 = extractvalue %dx.types.ResRet.i32 %4839, 0
  %4841 = and i32 %4840, 32
  %4842 = icmp eq i32 %4841, 0
  br i1 %4842, label %4849, label %4843

; <label>:4843                                    ; preds = %4833
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 0
  %4846 = fmul fast float %4845, 0x3FE99999A0000000
  %4847 = fadd fast float %4845, %4835
  %4848 = fadd fast float %4846, %4837
  br label %4849

; <label>:4849                                    ; preds = %4843, %4833, %4813
  %4850 = phi float [ %4827, %4813 ], [ %4847, %4843 ], [ %4835, %4833 ]
  %4851 = phi float [ %4832, %4813 ], [ %4836, %4843 ], [ %4836, %4833 ]
  %4852 = phi float [ 1.000000e+00, %4813 ], [ %4848, %4843 ], [ %4837, %4833 ]
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4855 = fmul fast float %4854, %4801
  %4856 = fmul fast float %4854, %4802
  %4857 = fadd fast float %4801, %4800
  %4858 = select i1 %182, float %4857, float %4800
  %4859 = fmul float %4858, %4854
  %4860 = select i1 %182, float 0.000000e+00, float %4855
  %4861 = select i1 %182, float 0.000000e+00, float %4856
  %4862 = fmul fast float %4850, %4806
  %4863 = fmul fast float %4851, %4807
  %4864 = fmul fast float %4852, %4808
  %4865 = fadd fast float %4859, %4862
  %4866 = fadd fast float %4860, %4863
  %4867 = fadd fast float %4861, %4864
  %4868 = select i1 %182, float %4851, float %4866
  %4869 = select i1 %182, float %4852, float %4867
  %4870 = call float @dx.op.binary.f32(i32 36, float %4865, float 3.225500e+04)  ; FMin(a,b)
  %4871 = call float @dx.op.binary.f32(i32 36, float %4868, float 3.225500e+04)  ; FMin(a,b)
  %4872 = call float @dx.op.binary.f32(i32 36, float %4869, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4870)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4871)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4872)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !77}
!59 = !{!60, !75, null}
!60 = !{!61, !64, !66, !68, !69, !71, !73, !74}
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
!74 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!77 = !{i32 0, i64 24}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}

