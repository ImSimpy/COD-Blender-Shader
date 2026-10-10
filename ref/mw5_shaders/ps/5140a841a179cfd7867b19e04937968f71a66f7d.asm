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
; shader hash: 1ec4eb0669c314a4d3f7bf543f6c4f08
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
  %273 = add i32 %44, 280
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
  %402 = add i32 %44, 216
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
  %425 = add i32 %44, 256
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
  %623 = add i32 %44, 224
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
  %707 = add i32 %44, 232
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
  br i1 %778, label %1713, label %779

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
  %990 = add i32 %44, 252
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
  %1042 = add i32 %44, 244
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
  br i1 %1059, label %1713, label %1060

; <label>:1060                                    ; preds = %1057
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 16
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1263, label %1065

; <label>:1065                                    ; preds = %1060
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = add i32 %44, 220
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
  %1091 = add i32 %44, 260
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
  %1289 = add i32 %44, 228
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
  %1373 = add i32 %44, 236
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
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 1024
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1443, label %1413

; <label>:1413                                    ; preds = %1405
  %1414 = add i32 %44, 104
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101020000000
  %1420 = lshr i32 %1416, 8
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1422, 0x3F70101020000000
  %1424 = lshr i32 %1416, 16
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = fmul fast float %1419, %1419
  %1429 = fmul fast float %1423, %1423
  %1430 = fmul fast float %1427, %1427
  %1431 = add i32 %44, 268
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %1433, 0
  %1435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1435, %dx.types.Handle %61, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.ResRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.ResRet.f32 %1436, 2
  %1440 = fmul fast float %1428, %1437
  %1441 = fmul fast float %1429, %1438
  %1442 = fmul fast float %1430, %1439
  br label %1443

; <label>:1443                                    ; preds = %1413, %1405
  %1444 = phi float [ %1440, %1413 ], [ 0.000000e+00, %1405 ]
  %1445 = phi float [ %1441, %1413 ], [ 0.000000e+00, %1405 ]
  %1446 = phi float [ %1442, %1413 ], [ 0.000000e+00, %1405 ]
  %1447 = fcmp fast ogt float %1444, 0.000000e+00
  %1448 = fcmp fast ogt float %1445, 0.000000e+00
  %1449 = fcmp fast ogt float %1446, 0.000000e+00
  %1450 = call float @dx.op.unary.f32(i32 23, float %1444)  ; Log(value)
  %1451 = call float @dx.op.unary.f32(i32 23, float %1445)  ; Log(value)
  %1452 = call float @dx.op.unary.f32(i32 23, float %1446)  ; Log(value)
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = lshr i32 %1454, 7
  %1456 = and i32 %1455, 32752
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = fmul fast float %1450, 0xBFE62E4300000000
  %1459 = fmul fast float %1458, %1457
  %1460 = fmul fast float %1451, 0xBFE62E4300000000
  %1461 = fmul fast float %1460, %1457
  %1462 = fmul fast float %1452, 0xBFE62E4300000000
  %1463 = fmul fast float %1462, %1457
  %1464 = select i1 %1447, float %1459, float 1.270000e+02
  %1465 = select i1 %1448, float %1461, float 1.270000e+02
  %1466 = select i1 %1449, float %1463, float 1.270000e+02
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 10240
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1491, label %1471

; <label>:1471                                    ; preds = %1443
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 2048
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1491, label %1476

; <label>:1476                                    ; preds = %1471
  %1477 = add i32 %44, 276
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %61, float %870, float %871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 3
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = shl i32 %1485, 4
  %1487 = and i32 %1486, 32752
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = fmul fast float %1488, %1483
  %1490 = call float @dx.op.binary.f32(i32 35, float %1489, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1491

; <label>:1491                                    ; preds = %1476, %1471, %1443
  %1492 = phi float [ %1490, %1476 ], [ 0x3F70101020000000, %1471 ], [ 0x3F70101020000000, %1443 ]
  %1493 = add i32 %44, 80
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 255
  %1497 = uitofp i32 %1496 to float
  %1498 = lshr i32 %1495, 8
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = fmul fast float %1500, %1501
  %1503 = fadd fast float %1502, %1497
  %1504 = fmul fast float %1503, 0x3F70101020000000
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  br i1 %770, label %1506, label %1541

; <label>:1506                                    ; preds = %1491
  %1507 = fmul fast float %1492, 2.000000e+00
  %1508 = fcmp fast olt float %1464, 1.270000e+02
  %1509 = fcmp fast olt float %1465, 1.270000e+02
  %1510 = fcmp fast olt float %1466, 1.270000e+02
  %1511 = fmul fast float %1464, 0xBFF7154760000000
  %1512 = fmul fast float %1511, %1507
  %1513 = fmul fast float %1465, 0xBFF7154760000000
  %1514 = fmul fast float %1513, %1507
  %1515 = fmul fast float %1466, 0xBFF7154760000000
  %1516 = fmul fast float %1515, %1507
  %1517 = call float @dx.op.unary.f32(i32 21, float %1512)  ; Exp(value)
  %1518 = call float @dx.op.unary.f32(i32 21, float %1514)  ; Exp(value)
  %1519 = call float @dx.op.unary.f32(i32 21, float %1516)  ; Exp(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = fadd fast float %1520, -1.000000e+00
  %1524 = select i1 %1508, float %1523, float -1.000000e+00
  %1525 = fadd fast float %1521, -1.000000e+00
  %1526 = select i1 %1509, float %1525, float -1.000000e+00
  %1527 = fadd fast float %1522, -1.000000e+00
  %1528 = select i1 %1510, float %1527, float -1.000000e+00
  %1529 = fmul fast float %1524, %1058
  %1530 = fmul fast float %1526, %1058
  %1531 = fmul fast float %1528, %1058
  %1532 = fadd fast float %1529, 1.000000e+00
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fadd fast float %1531, 1.000000e+00
  %1535 = fmul fast float %1532, %759
  %1536 = fmul fast float %1533, %760
  %1537 = fmul fast float %1534, %761
  %1538 = fmul fast float %1532, %762
  %1539 = fmul fast float %1533, %763
  %1540 = fmul fast float %1534, %764
  br label %1541

; <label>:1541                                    ; preds = %1506, %1491
  %1542 = phi float [ %1535, %1506 ], [ %759, %1491 ]
  %1543 = phi float [ %1536, %1506 ], [ %760, %1491 ]
  %1544 = phi float [ %1537, %1506 ], [ %761, %1491 ]
  %1545 = phi float [ %1538, %1506 ], [ %762, %1491 ]
  %1546 = phi float [ %1539, %1506 ], [ %763, %1491 ]
  %1547 = phi float [ %1540, %1506 ], [ %764, %1491 ]
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 3
  %1551 = icmp eq i32 %1550, 3
  br i1 %1551, label %1630, label %1552

; <label>:1552                                    ; preds = %1541
  %1553 = and i32 %1549, 16
  %1554 = icmp ne i32 %1553, 0
  %1555 = select i1 %1554, float %1058, float 0.000000e+00
  %1556 = icmp eq i32 %1550, 0
  br i1 %1556, label %1557, label %1585

; <label>:1557                                    ; preds = %1552
  %1558 = and i32 %1549, 64
  %1559 = icmp ne i32 %1558, 0
  %1560 = select i1 %1559, float %1058, float 0.000000e+00
  %1561 = fsub fast float %1278, %1542
  %1562 = fsub fast float %1279, %1543
  %1563 = fsub fast float %1280, %1544
  %1564 = fmul fast float %1555, %1561
  %1565 = fmul fast float %1555, %1562
  %1566 = fmul fast float %1555, %1563
  %1567 = fadd fast float %1564, %1542
  %1568 = fadd fast float %1565, %1543
  %1569 = fadd fast float %1566, %1544
  %1570 = fsub fast float %1264, %765
  %1571 = fmul fast float %1555, %1570
  %1572 = fadd fast float %1571, %765
  %1573 = fsub fast float %1406, %1545
  %1574 = fsub fast float %1407, %1546
  %1575 = fsub fast float %1408, %1547
  %1576 = fmul fast float %1560, %1573
  %1577 = fmul fast float %1560, %1574
  %1578 = fmul fast float %1560, %1575
  %1579 = fadd fast float %1576, %1545
  %1580 = fadd fast float %1577, %1546
  %1581 = fadd fast float %1578, %1547
  %1582 = fsub fast float %1505, %769
  %1583 = fmul fast float %1555, %1582
  %1584 = fadd fast float %1583, %769
  br label %1630

; <label>:1585                                    ; preds = %1552
  %1586 = icmp eq i32 %1550, 1
  br i1 %1586, label %1587, label %1600

; <label>:1587                                    ; preds = %1585
  %1588 = fadd fast float %1278, -1.000000e+00
  %1589 = fadd fast float %1279, -1.000000e+00
  %1590 = fadd fast float %1280, -1.000000e+00
  %1591 = fmul fast float %1555, %1588
  %1592 = fmul fast float %1555, %1589
  %1593 = fmul fast float %1555, %1590
  %1594 = fadd fast float %1591, 1.000000e+00
  %1595 = fadd fast float %1592, 1.000000e+00
  %1596 = fadd fast float %1593, 1.000000e+00
  %1597 = fmul fast float %1594, %1542
  %1598 = fmul fast float %1595, %1543
  %1599 = fmul fast float %1596, %1544
  br label %1630

; <label>:1600                                    ; preds = %1585
  %1601 = icmp eq i32 %1550, 2
  br i1 %1601, label %1602, label %1630

; <label>:1602                                    ; preds = %1600
  %1603 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1604 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1605 = call float @dx.op.unary.f32(i32 24, float %1280)  ; Sqrt(value)
  %1606 = fadd fast float %1603, -5.000000e-01
  %1607 = fadd fast float %1604, -5.000000e-01
  %1608 = fadd fast float %1605, -5.000000e-01
  %1609 = fmul fast float %1606, %1555
  %1610 = fmul fast float %1607, %1555
  %1611 = fmul fast float %1608, %1555
  %1612 = fadd fast float %1609, 5.000000e-01
  %1613 = fadd fast float %1610, 5.000000e-01
  %1614 = fadd fast float %1611, 5.000000e-01
  %1615 = fmul fast float %1612, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1542
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1542
  %1620 = fmul fast float %1613, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1543
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1543
  %1625 = fmul fast float %1614, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1544
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1544
  br label %1630

; <label>:1630                                    ; preds = %1602, %1600, %1587, %1557, %1541
  %1631 = phi float [ %1542, %1541 ], [ %1619, %1602 ], [ %1542, %1600 ], [ %1597, %1587 ], [ %1567, %1557 ]
  %1632 = phi float [ %1543, %1541 ], [ %1624, %1602 ], [ %1543, %1600 ], [ %1598, %1587 ], [ %1568, %1557 ]
  %1633 = phi float [ %1544, %1541 ], [ %1629, %1602 ], [ %1544, %1600 ], [ %1599, %1587 ], [ %1569, %1557 ]
  %1634 = phi float [ %1545, %1541 ], [ %1545, %1602 ], [ %1545, %1600 ], [ %1545, %1587 ], [ %1579, %1557 ]
  %1635 = phi float [ %1546, %1541 ], [ %1546, %1602 ], [ %1546, %1600 ], [ %1546, %1587 ], [ %1580, %1557 ]
  %1636 = phi float [ %1547, %1541 ], [ %1547, %1602 ], [ %1547, %1600 ], [ %1547, %1587 ], [ %1581, %1557 ]
  %1637 = phi float [ %765, %1541 ], [ %765, %1602 ], [ %765, %1600 ], [ %765, %1587 ], [ %1572, %1557 ]
  %1638 = phi float [ %769, %1541 ], [ %769, %1602 ], [ %769, %1600 ], [ %769, %1587 ], [ %1584, %1557 ]
  %1639 = and i32 %1549, 12
  %1640 = icmp eq i32 %1639, 12
  br i1 %1640, label %1713, label %1641

; <label>:1641                                    ; preds = %1630
  %1642 = and i32 %1549, 2097184
  %1643 = icmp eq i32 %1642, 2097184
  %1644 = select i1 %1643, float %1058, float 0.000000e+00
  %1645 = and i32 %1549, 4194336
  %1646 = icmp eq i32 %1645, 4194336
  %1647 = select i1 %1646, float %1058, float 0.000000e+00
  %1648 = and i32 %1549, 8388640
  %1649 = icmp eq i32 %1648, 8388640
  %1650 = select i1 %1649, float %1058, float 0.000000e+00
  %1651 = icmp eq i32 %1639, 0
  br i1 %1651, label %1652, label %1665

; <label>:1652                                    ; preds = %1641
  %1653 = fsub fast float %1359, %757
  %1654 = fsub fast float %1360, %758
  %1655 = fmul fast float %1644, %1653
  %1656 = fmul fast float %1644, %1654
  %1657 = fadd fast float %1655, %757
  %1658 = fadd fast float %1656, %758
  %1659 = fsub fast float %1361, %768
  %1660 = fmul fast float %1647, %1659
  %1661 = fadd fast float %1660, %768
  %1662 = fsub fast float %1358, %767
  %1663 = fmul fast float %1650, %1662
  %1664 = fadd fast float %1663, %767
  br label %1713

; <label>:1665                                    ; preds = %1641
  %1666 = icmp eq i32 %1639, 4
  br i1 %1666, label %1667, label %1699

; <label>:1667                                    ; preds = %1665
  %1668 = fmul fast float %1644, %1359
  %1669 = fmul fast float %1644, %1360
  %1670 = fadd fast float %1668, %757
  %1671 = fadd fast float %1669, %758
  %1672 = call float @dx.op.binary.f32(i32 36, float %768, float %1361)  ; FMin(a,b)
  %1673 = fsub fast float %1672, %768
  %1674 = fmul fast float %1673, %1647
  %1675 = fadd fast float %1674, %768
  %1676 = fadd fast float %1358, %767
  %1677 = fmul fast float %1676, 0x3FF337FAE0000000
  %1678 = fmul fast float %767, %767
  %1679 = fmul fast float %1358, %1358
  %1680 = fadd fast float %1679, %1678
  %1681 = fmul fast float %1680, 0x3FE5152B00000000
  %1682 = fmul fast float %767, 0xBFCC1F85E0000000
  %1683 = fmul fast float %1682, %1358
  %1684 = fadd fast float %1683, 0xBFE1363700000000
  %1685 = fadd fast float %1684, %1677
  %1686 = fsub fast float %1685, %1681
  %1687 = fmul fast float %1676, 0x3FBA6F0D00000000
  %1688 = fmul fast float %1680, 0x3FD0432880000000
  %1689 = fmul fast float %767, 0xBFEF110800000000
  %1690 = fmul fast float %1689, %1358
  %1691 = fadd fast float %1690, 1.000000e+00
  %1692 = fsub fast float %1691, %1687
  %1693 = fadd fast float %1692, %1688
  %1694 = fdiv fast float %1686, %1693
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fsub fast float %1695, %767
  %1697 = fmul fast float %1696, %1650
  %1698 = fadd fast float %1697, %767
  br label %1713

; <label>:1699                                    ; preds = %1665
  %1700 = icmp eq i32 %1639, 8
  br i1 %1700, label %1701, label %1713

; <label>:1701                                    ; preds = %1699
  %1702 = fmul fast float %1644, %1359
  %1703 = fmul fast float %1644, %1360
  %1704 = fadd fast float %1702, %757
  %1705 = fadd fast float %1703, %758
  %1706 = call float @dx.op.binary.f32(i32 36, float %768, float %1361)  ; FMin(a,b)
  %1707 = fsub fast float %1706, %768
  %1708 = fmul fast float %1707, %1647
  %1709 = fadd fast float %1708, %768
  %1710 = fsub fast float %1358, %767
  %1711 = fmul fast float %1650, %1710
  %1712 = fadd fast float %1711, %767
  br label %1713

; <label>:1713                                    ; preds = %1701, %1699, %1667, %1652, %1630, %1057, %756
  %1714 = phi float [ %757, %1630 ], [ %757, %1057 ], [ %757, %756 ], [ %1657, %1652 ], [ %1670, %1667 ], [ %757, %1699 ], [ %1704, %1701 ]
  %1715 = phi float [ %758, %1630 ], [ %758, %1057 ], [ %758, %756 ], [ %1658, %1652 ], [ %1671, %1667 ], [ %758, %1699 ], [ %1705, %1701 ]
  %1716 = phi float [ %1631, %1630 ], [ %759, %1057 ], [ %759, %756 ], [ %1631, %1652 ], [ %1631, %1667 ], [ %1631, %1699 ], [ %1631, %1701 ]
  %1717 = phi float [ %1632, %1630 ], [ %760, %1057 ], [ %760, %756 ], [ %1632, %1652 ], [ %1632, %1667 ], [ %1632, %1699 ], [ %1632, %1701 ]
  %1718 = phi float [ %1633, %1630 ], [ %761, %1057 ], [ %761, %756 ], [ %1633, %1652 ], [ %1633, %1667 ], [ %1633, %1699 ], [ %1633, %1701 ]
  %1719 = phi float [ %1634, %1630 ], [ %762, %1057 ], [ %762, %756 ], [ %1634, %1652 ], [ %1634, %1667 ], [ %1634, %1699 ], [ %1634, %1701 ]
  %1720 = phi float [ %1635, %1630 ], [ %763, %1057 ], [ %763, %756 ], [ %1635, %1652 ], [ %1635, %1667 ], [ %1635, %1699 ], [ %1635, %1701 ]
  %1721 = phi float [ %1636, %1630 ], [ %764, %1057 ], [ %764, %756 ], [ %1636, %1652 ], [ %1636, %1667 ], [ %1636, %1699 ], [ %1636, %1701 ]
  %1722 = phi float [ %1637, %1630 ], [ %765, %1057 ], [ %765, %756 ], [ %1637, %1652 ], [ %1637, %1667 ], [ %1637, %1699 ], [ %1637, %1701 ]
  %1723 = phi float [ %767, %1630 ], [ %767, %1057 ], [ %767, %756 ], [ %1664, %1652 ], [ %1698, %1667 ], [ %767, %1699 ], [ %1712, %1701 ]
  %1724 = phi float [ %768, %1630 ], [ %768, %1057 ], [ %768, %756 ], [ %1661, %1652 ], [ %1675, %1667 ], [ %768, %1699 ], [ %1709, %1701 ]
  %1725 = phi float [ %1638, %1630 ], [ %769, %1057 ], [ %769, %756 ], [ %1638, %1652 ], [ %1638, %1667 ], [ %1638, %1699 ], [ %1638, %1701 ]
  %1726 = add i32 %44, 200
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = bitcast i32 %1728 to float
  %1730 = fcmp fast oge float %1729, 0.000000e+00
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1733 = select i1 %1730, float %1729, float %1732
  %1734 = call float @dx.op.dot2.f32(i32 54, float %1714, float %1715, float %1714, float %1715)  ; Dot2(ax,ay,bx,by)
  %1735 = fmul fast float %1734, 0x3FE3333340000000
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1736, float %1714, float %1715, float %1736)  ; Dot3(ax,ay,az,bx,by,bz)
  %1738 = call float @dx.op.unary.f32(i32 25, float %1737)  ; Rsqrt(value)
  %1739 = fmul fast float %1738, %1714
  %1740 = fmul fast float %1738, %1715
  %1741 = fmul fast float %1736, %1738
  %1742 = fmul fast float %1741, %49
  %1743 = fmul fast float %1741, %50
  %1744 = fmul fast float %1741, %51
  %1745 = fmul fast float %1739, %45
  %1746 = fmul fast float %1739, %46
  %1747 = fmul fast float %1739, %47
  %1748 = fadd fast float %1742, %1745
  %1749 = fadd fast float %1743, %1746
  %1750 = fadd fast float %1744, %1747
  %1751 = fmul fast float %1740, %75
  %1752 = fmul fast float %1740, %76
  %1753 = fmul fast float %1740, %77
  %1754 = fadd fast float %1748, %1751
  %1755 = fadd fast float %1749, %1752
  %1756 = fadd fast float %1750, %1753
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float %1754, float %1755, float %1756)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.unary.f32(i32 25, float %1757)  ; Rsqrt(value)
  %1759 = fmul fast float %1754, %1758
  %1760 = fmul fast float %1755, %1758
  %1761 = fmul fast float %1756, %1758
  %1762 = call float @dx.op.unary.f32(i32 83, float %111)  ; DerivCoarseX(value)
  %1763 = call float @dx.op.unary.f32(i32 83, float %112)  ; DerivCoarseX(value)
  %1764 = call float @dx.op.unary.f32(i32 83, float %113)  ; DerivCoarseX(value)
  %1765 = call float @dx.op.unary.f32(i32 84, float %111)  ; DerivCoarseY(value)
  %1766 = call float @dx.op.unary.f32(i32 84, float %112)  ; DerivCoarseY(value)
  %1767 = call float @dx.op.unary.f32(i32 84, float %113)  ; DerivCoarseY(value)
  %1768 = fadd fast float %1762, %111
  %1769 = fadd fast float %1763, %112
  %1770 = fadd fast float %1764, %113
  %1771 = fadd fast float %1765, %111
  %1772 = fadd fast float %1766, %112
  %1773 = fadd fast float %1767, %113
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.CBufRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.CBufRet.f32 %1774, 2
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1780 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1781 = fmul fast float %1775, %64
  %1782 = fmul fast float %1781, %1779
  %1783 = fmul fast float %1776, %65
  %1784 = fmul fast float %1783, %1780
  %1785 = fptoui float %1782 to i32
  %1786 = fptoui float %1784 to i32
  %1787 = fadd fast float %1775, -1.000000e+00
  %1788 = fadd fast float %1776, -1.000000e+00
  %1789 = fptoui float %1787 to i32
  %1790 = fptoui float %1788 to i32
  %1791 = call i32 @dx.op.binary.i32(i32 40, i32 %1785, i32 %1789)  ; UMin(a,b)
  %1792 = call i32 @dx.op.binary.i32(i32 40, i32 %1786, i32 %1790)  ; UMin(a,b)
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1795 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1796 = fmul fast float %1794, %59
  %1797 = fsub fast float %1796, %1795
  %1798 = fadd fast float %1777, -1.000000e+00
  %1799 = call float @dx.op.binary.f32(i32 36, float %1797, float %1798)  ; FMin(a,b)
  %1800 = fptoui float %1799 to i32
  %1801 = fptoui float %1775 to i32
  %1802 = fptoui float %1776 to i32
  %1803 = mul i32 %1800, %1802
  %1804 = add i32 %1803, %1792
  %1805 = mul i32 %1804, %1801
  %1806 = add i32 %1805, %1791
  %1807 = shl i32 %1806, 2
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 1023
  %1811 = lshr i32 %1809, 10
  %1812 = icmp eq i32 %1810, 0
  br i1 %1812, label %2238, label %1813

; <label>:1813                                    ; preds = %1713
  %1814 = and i32 %1809, 1023
  br label %1815

; <label>:1815                                    ; preds = %1941, %1813
  %1816 = phi float [ %1942, %1941 ], [ 0.000000e+00, %1813 ]
  %1817 = phi float [ %1943, %1941 ], [ %1733, %1813 ]
  %1818 = phi float [ %1944, %1941 ], [ %1725, %1813 ]
  %1819 = phi float [ %1945, %1941 ], [ 0.000000e+00, %1813 ]
  %1820 = phi float [ %1946, %1941 ], [ 0.000000e+00, %1813 ]
  %1821 = phi float [ %1947, %1941 ], [ %1719, %1813 ]
  %1822 = phi float [ %1948, %1941 ], [ %1720, %1813 ]
  %1823 = phi float [ %1949, %1941 ], [ %1721, %1813 ]
  %1824 = phi float [ %1950, %1941 ], [ %1759, %1813 ]
  %1825 = phi float [ %1951, %1941 ], [ %1760, %1813 ]
  %1826 = phi float [ %1952, %1941 ], [ %1761, %1813 ]
  %1827 = phi float [ %1953, %1941 ], [ %1724, %1813 ]
  %1828 = phi float [ %1954, %1941 ], [ %1723, %1813 ]
  %1829 = phi float [ %1955, %1941 ], [ 0.000000e+00, %1813 ]
  %1830 = phi float [ %1956, %1941 ], [ %1722, %1813 ]
  %1831 = phi float [ %1957, %1941 ], [ %1716, %1813 ]
  %1832 = phi float [ %1958, %1941 ], [ %1717, %1813 ]
  %1833 = phi float [ %1959, %1941 ], [ %1718, %1813 ]
  %1834 = phi i32 [ %1891, %1941 ], [ 0, %1813 ]
  %1835 = add nuw nsw i32 %1834, %1811
  %1836 = shl i32 %1835, 2
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = shl i32 %1838, 8
  %1840 = or i32 %1839, 48
  %1841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.ResRet.f32 %1841, 3
  %1846 = or i32 %1839, 64
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = extractvalue %dx.types.ResRet.i32 %1847, 1
  %1850 = or i32 %1839, 80
  %1851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.f32 %1851, 2
  %1853 = extractvalue %dx.types.ResRet.f32 %1851, 3
  %1854 = or i32 %1839, 96
  %1855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.ResRet.f32 %1855, 1
  %1858 = extractvalue %dx.types.ResRet.f32 %1855, 2
  %1859 = extractvalue %dx.types.ResRet.f32 %1855, 3
  %1860 = or i32 %1839, 112
  %1861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1863 = or i32 %1839, 128
  %1864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1868 = extractvalue %dx.types.ResRet.f32 %1864, 3
  %1869 = or i32 %1839, 144
  %1870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.ResRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.ResRet.f32 %1870, 2
  %1874 = extractvalue %dx.types.ResRet.f32 %1870, 3
  %1875 = or i32 %1839, 160
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = extractvalue %dx.types.ResRet.f32 %1876, 3
  %1881 = or i32 %1839, 192
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = or i32 %1839, 208
  %1885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = or i32 %1839, 248
  %1888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = add nuw nsw i32 %1834, 1
  %1892 = bitcast float %1845 to i32
  %1893 = and i32 %1892, 2560
  %1894 = icmp eq i32 %1893, 0
  %1895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = extractvalue %dx.types.ResRet.f32 %1895, 3
  %1900 = call float @dx.op.dot4.f32(i32 56, float %1896, float %1897, float %1898, float %1899, float %111, float %112, float %113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1901 = or i32 %1839, 16
  %1902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = extractvalue %dx.types.ResRet.f32 %1902, 3
  %1907 = call float @dx.op.dot4.f32(i32 56, float %1903, float %1904, float %1905, float %1906, float %111, float %112, float %113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1908 = or i32 %1839, 32
  %1909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.ResRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.ResRet.f32 %1909, 2
  %1913 = extractvalue %dx.types.ResRet.f32 %1909, 3
  %1914 = call float @dx.op.dot4.f32(i32 56, float %1910, float %1911, float %1912, float %1913, float %111, float %112, float %113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1915 = call float @dx.op.unary.f32(i32 27, float %1900)  ; Round_ni(value)
  %1916 = call float @dx.op.unary.f32(i32 6, float %1915)  ; FAbs(value)
  %1917 = call float @dx.op.unary.f32(i32 27, float %1907)  ; Round_ni(value)
  %1918 = call float @dx.op.unary.f32(i32 6, float %1917)  ; FAbs(value)
  %1919 = call float @dx.op.unary.f32(i32 6, float %1914)  ; FAbs(value)
  %1920 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1921 = fadd fast float %1918, %1916
  %1922 = fadd fast float %1921, %1920
  %1923 = fcmp fast oeq float %1922, 0.000000e+00
  %1924 = call float @dx.op.dot4.f32(i32 56, float %1896, float %1897, float %1898, float %1899, float %1768, float %1769, float %1770, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1925 = call float @dx.op.dot4.f32(i32 56, float %1903, float %1904, float %1905, float %1906, float %1768, float %1769, float %1770, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1926 = call float @dx.op.dot4.f32(i32 56, float %1896, float %1897, float %1898, float %1899, float %1771, float %1772, float %1773, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1927 = call float @dx.op.dot4.f32(i32 56, float %1903, float %1904, float %1905, float %1906, float %1771, float %1772, float %1773, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1928 = fsub fast float %1924, %1900
  %1929 = fsub fast float %1926, %1900
  %1930 = fsub fast float %1925, %1907
  %1931 = fsub fast float %1927, %1907
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1843, float %1844, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 2
  %1935 = fadd fast float %1934, %1932
  %1936 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1938 = fcmp fast ogt float %1936, %1937
  %1939 = and i1 %1923, %1938
  %1940 = and i1 %1894, %1939
  br i1 %1940, label %1961, label %1941

; <label>:1941                                    ; preds = %2224, %2042, %1961, %1815
  %1942 = phi float [ %1816, %1961 ], [ %2045, %2042 ], [ %2045, %2224 ], [ %1816, %1815 ]
  %1943 = phi float [ %1817, %1961 ], [ %1817, %2042 ], [ %2199, %2224 ], [ %1817, %1815 ]
  %1944 = phi float [ %1818, %1961 ], [ %1818, %2042 ], [ %2197, %2224 ], [ %1818, %1815 ]
  %1945 = phi float [ %1819, %1961 ], [ %1819, %2042 ], [ %2169, %2224 ], [ %1819, %1815 ]
  %1946 = phi float [ %1820, %1961 ], [ %1820, %2042 ], [ %2167, %2224 ], [ %1820, %1815 ]
  %1947 = phi float [ %1821, %1961 ], [ %1821, %2042 ], [ %2234, %2224 ], [ %1821, %1815 ]
  %1948 = phi float [ %1822, %1961 ], [ %1822, %2042 ], [ %2235, %2224 ], [ %1822, %1815 ]
  %1949 = phi float [ %1823, %1961 ], [ %1823, %2042 ], [ %2236, %2224 ], [ %1823, %1815 ]
  %1950 = phi float [ %1824, %1961 ], [ %1824, %2042 ], [ %2148, %2224 ], [ %1824, %1815 ]
  %1951 = phi float [ %1825, %1961 ], [ %1825, %2042 ], [ %2149, %2224 ], [ %1825, %1815 ]
  %1952 = phi float [ %1826, %1961 ], [ %1826, %2042 ], [ %2150, %2224 ], [ %1826, %1815 ]
  %1953 = phi float [ %1827, %1961 ], [ %1827, %2042 ], [ %2177, %2224 ], [ %1827, %1815 ]
  %1954 = phi float [ %1828, %1961 ], [ %1828, %2042 ], [ %2174, %2224 ], [ %1828, %1815 ]
  %1955 = phi float [ %1829, %1961 ], [ %1829, %2042 ], [ %2171, %2224 ], [ %1829, %1815 ]
  %1956 = phi float [ %1830, %1961 ], [ %1830, %2042 ], [ %2165, %2224 ], [ %1830, %1815 ]
  %1957 = phi float [ %1831, %1961 ], [ %1831, %2042 ], [ %2160, %2224 ], [ %1831, %1815 ]
  %1958 = phi float [ %1832, %1961 ], [ %1832, %2042 ], [ %2161, %2224 ], [ %1832, %1815 ]
  %1959 = phi float [ %1833, %1961 ], [ %1833, %2042 ], [ %2162, %2224 ], [ %1833, %1815 ]
  %1960 = icmp eq i32 %1891, %1814
  br i1 %1960, label %2237, label %1815

; <label>:1961                                    ; preds = %1815
  %1962 = extractvalue %dx.types.ResRet.f32 %1861, 3
  %1963 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1964 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1965 = extractvalue %dx.types.ResRet.f32 %1851, 1
  %1966 = extractvalue %dx.types.ResRet.f32 %1851, 0
  %1967 = extractvalue %dx.types.ResRet.i32 %1847, 3
  %1968 = extractvalue %dx.types.ResRet.i32 %1847, 2
  %1969 = add i32 %1967, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1970, %dx.types.Handle %1971, float %1900, float %1907, float undef, float undef, i32 0, i32 0, i32 undef, float %1928, float %1930, float undef, float %1929, float %1931, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = fmul fast float %1973, %1966
  %1975 = fadd fast float %1974, %1965
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = fmul fast float %1900, %1856
  %1978 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1907, float %1977)  ; FMad(a,b,c)
  %1979 = fadd fast float %1978, %1964
  %1980 = fmul fast float %1900, %1858
  %1981 = call float @dx.op.tertiary.f32(i32 46, float %1859, float %1907, float %1980)  ; FMad(a,b,c)
  %1982 = fadd fast float %1981, %1963
  %1983 = fmul fast float %1928, %1856
  %1984 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1930, float %1983)  ; FMad(a,b,c)
  %1985 = fmul fast float %1928, %1858
  %1986 = call float @dx.op.tertiary.f32(i32 46, float %1859, float %1930, float %1985)  ; FMad(a,b,c)
  %1987 = fmul fast float %1929, %1856
  %1988 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1931, float %1987)  ; FMad(a,b,c)
  %1989 = fmul fast float %1929, %1858
  %1990 = call float @dx.op.tertiary.f32(i32 46, float %1859, float %1931, float %1989)  ; FMad(a,b,c)
  %1991 = add i32 %1968, 0
  %1992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1991, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1993 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1992, %dx.types.Handle %1971, float %1979, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float %1984, float %1986, float undef, float %1988, float %1990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = and i32 %1892, 1024
  %1996 = icmp ne i32 %1995, 0
  %1997 = fcmp fast ogt float %1994, 0x3FE0101020000000
  %1998 = uitofp i1 %1997 to float
  %1999 = select i1 %1996, float %1998, float %1994
  %2000 = and i32 %1892, 8192
  %2001 = icmp ne i32 %2000, 0
  %2002 = select i1 %2001, float %1962, float 1.000000e+00
  %2003 = fmul fast float %1900, 2.000000e+00
  %2004 = fadd fast float %2003, -1.000000e+00
  %2005 = call float @dx.op.unary.f32(i32 6, float %2004)  ; FAbs(value)
  %2006 = fmul fast float %2005, %1889
  %2007 = fsub fast float %2006, %1889
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = fmul fast float %1907, 2.000000e+00
  %2010 = fadd fast float %2009, -1.000000e+00
  %2011 = call float @dx.op.unary.f32(i32 6, float %2010)  ; FAbs(value)
  %2012 = fmul fast float %2011, %1890
  %2013 = fsub fast float %2012, %1890
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = fmul fast float %1919, %1852
  %2016 = fsub fast float %2015, %1852
  %2017 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2018 = fmul fast float %1976, %2002
  %2019 = fmul fast float %2018, %1973
  %2020 = fmul fast float %2019, %2008
  %2021 = fmul fast float %2020, %1999
  %2022 = fmul fast float %2021, %2014
  %2023 = fmul fast float %2022, %2017
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2027 = fsub fast float %1936, %2026
  %2028 = fmul fast float %2027, %2025
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = fmul fast float %2023, %1853
  %2031 = fadd fast float %2023, %1853
  %2032 = fmul fast float %2031, %1862
  %2033 = fsub fast float %2032, %1862
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2035 = and i32 %1892, 128
  %2036 = icmp ne i32 %2035, 0
  %2037 = select i1 %2036, float %2034, float %2030
  %2038 = fmul fast float %2037, %2029
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = fcmp fast ugt float %2038, %2040
  br i1 %2041, label %2042, label %1941

; <label>:2042                                    ; preds = %1961
  %2043 = select i1 %2001, float %2038, float 0.000000e+00
  %2044 = fadd fast float %2043, %1816
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  br i1 %2001, label %1941, label %2046

; <label>:2046                                    ; preds = %2042
  %2047 = and i32 %1892, 4
  %2048 = and i32 %1892, 8
  %2049 = add i32 %1848, 0
  %2050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2049, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2052 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2050, %dx.types.Handle %2051, float %1979, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float %1984, float %1986, float undef, float %1988, float %1990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = extractvalue %dx.types.ResRet.f32 %2052, 3
  %2057 = bitcast float %1874 to i32
  %2058 = and i32 %2057, 255
  %2059 = uitofp i32 %2058 to float
  %2060 = lshr i32 %2057, 8
  %2061 = and i32 %2060, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2056, %2059
  %2064 = fadd fast float %2063, %2062
  %2065 = fmul fast float %2064, 0x3F70101000000000
  %2066 = add i32 %1849, 0
  %2067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2066, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2068 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2067, %dx.types.Handle %2051, float %1979, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float %1984, float %1986, float undef, float %1988, float %1990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.ResRet.f32 %2068, 1
  %2071 = extractvalue %dx.types.ResRet.f32 %2068, 2
  %2072 = extractvalue %dx.types.ResRet.f32 %2068, 3
  %2073 = bitcast float %1868 to i32
  %2074 = and i32 %2073, 255
  %2075 = uitofp i32 %2074 to float
  %2076 = lshr i32 %2073, 8
  %2077 = and i32 %2076, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = lshr i32 %2073, 16
  %2080 = and i32 %2079, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = fmul fast float %2081, 0x3F70101000000000
  %2083 = fmul fast float %2069, %2075
  %2084 = fadd fast float %2083, %2078
  %2085 = fmul fast float %2084, 0x3F70101000000000
  %2086 = fadd fast float %2070, -5.000000e-01
  %2087 = fadd fast float %2072, -5.000000e-01
  %2088 = fmul fast float %2086, %2082
  %2089 = fmul fast float %2087, %2082
  %2090 = fadd fast float %2088, 5.000000e-01
  %2091 = fadd fast float %2089, 5.000000e-01
  %2092 = fmul fast float %2053, %1877
  %2093 = fmul fast float %2054, %1878
  %2094 = fmul fast float %2055, %1879
  %2095 = fmul fast float %2090, 2.000000e+00
  %2096 = fadd fast float %2095, -1.000000e+00
  %2097 = fmul fast float %2091, 2.000000e+00
  %2098 = fadd fast float %2097, -1.000000e+00
  %2099 = fadd fast float %2096, %2098
  %2100 = fmul fast float %2099, 5.000000e-01
  %2101 = fsub fast float %2096, %2098
  %2102 = fmul fast float %2101, 5.000000e-01
  %2103 = call float @dx.op.unary.f32(i32 6, float %2100)  ; FAbs(value)
  %2104 = fsub fast float 1.000000e+00, %2103
  %2105 = call float @dx.op.unary.f32(i32 6, float %2102)  ; FAbs(value)
  %2106 = fsub fast float %2104, %2105
  %2107 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2102, float %2106, float %2100, float %2102, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = call float @dx.op.unary.f32(i32 25, float %2107)  ; Rsqrt(value)
  %2109 = fmul fast float %2100, %2108
  %2110 = fmul fast float %2102, %2108
  %2111 = fmul fast float %2108, %2106
  %2112 = fmul fast float %2111, %1842
  %2113 = fmul fast float %2111, %1843
  %2114 = fmul fast float %2111, %1844
  %2115 = fmul fast float %2109, %1865
  %2116 = fmul fast float %2109, %1866
  %2117 = fmul fast float %2109, %1867
  %2118 = fadd fast float %2115, %2112
  %2119 = fadd fast float %2116, %2113
  %2120 = fadd fast float %2117, %2114
  %2121 = fmul fast float %2110, %1871
  %2122 = fmul fast float %2110, %1872
  %2123 = fmul fast float %2110, %1873
  %2124 = fadd fast float %2118, %2121
  %2125 = fadd fast float %2119, %2122
  %2126 = fadd fast float %2120, %2123
  %2127 = call float @dx.op.dot3.f32(i32 55, float %2124, float %2125, float %2126, float %2124, float %2125, float %2126)  ; Dot3(ax,ay,az,bx,by,bz)
  %2128 = call float @dx.op.unary.f32(i32 25, float %2127)  ; Rsqrt(value)
  %2129 = fmul fast float %2124, %2128
  %2130 = fmul fast float %2125, %2128
  %2131 = fmul fast float %2126, %2128
  %2132 = icmp ne i32 %2048, 0
  %2133 = select i1 %2132, float 1.000000e+00, float 0.000000e+00
  %2134 = fmul fast float %2038, %2133
  %2135 = and i32 %1892, 1
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2137, label %2141

; <label>:2137                                    ; preds = %2046
  %2138 = fsub fast float %2129, %1824
  %2139 = fsub fast float %2130, %1825
  %2140 = fsub fast float %2131, %1826
  br label %2141

; <label>:2141                                    ; preds = %2137, %2046
  %2142 = phi float [ %2138, %2137 ], [ %2129, %2046 ]
  %2143 = phi float [ %2139, %2137 ], [ %2130, %2046 ]
  %2144 = phi float [ %2140, %2137 ], [ %2131, %2046 ]
  %2145 = fmul float %2144, %2134
  %2146 = fmul float %2143, %2134
  %2147 = fmul float %2142, %2134
  %2148 = fadd fast float %2147, %1824
  %2149 = fadd fast float %2146, %1825
  %2150 = fadd fast float %2145, %1826
  %2151 = icmp ne i32 %2047, 0
  %2152 = select i1 %2151, float 1.000000e+00, float 0.000000e+00
  %2153 = fmul fast float %2038, %2152
  %2154 = fsub fast float %2092, %1831
  %2155 = fsub fast float %2093, %1832
  %2156 = fsub fast float %2094, %1833
  %2157 = fmul fast float %2154, %2153
  %2158 = fmul fast float %2155, %2153
  %2159 = fmul fast float %2156, %2153
  %2160 = fadd fast float %2157, %1831
  %2161 = fadd fast float %2158, %1832
  %2162 = fadd fast float %2159, %1833
  %2163 = fsub fast float %2065, %1830
  %2164 = fmul fast float %2163, %2153
  %2165 = fadd fast float %2164, %1830
  %2166 = fmul fast float %2153, %1820
  %2167 = fsub fast float %1820, %2166
  %2168 = fmul fast float %2153, %1819
  %2169 = fsub fast float %1819, %2168
  %2170 = fadd fast float %2038, %1829
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = fsub fast float %2085, %1828
  %2173 = fmul fast float %2172, %2134
  %2174 = fadd fast float %2173, %1828
  %2175 = fsub fast float %2071, %1827
  %2176 = fmul fast float %2175, %2134
  %2177 = fadd fast float %2176, %1827
  %2178 = call float @dx.op.dot3.f32(i32 55, float %2092, float %2093, float %2094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.CBufRet.f32 %2179, 1
  %2182 = fmul fast float %2181, %2178
  %2183 = fadd fast float %2182, %2180
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = bitcast float %1880 to i32
  %2186 = and i32 %2185, 65535
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = lshr i32 %2185, 16
  %2189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2188)  ; LegacyF16ToF32(value)
  %2190 = fcmp fast oge float %2187, 0.000000e+00
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = select i1 %2190, float %2187, float %2192
  %2194 = fadd fast float %2193, %2189
  %2195 = fsub fast float %2184, %1818
  %2196 = fmul fast float %2195, %2038
  %2197 = fadd fast float %2196, %1818
  %2198 = fmul fast float %2194, %2038
  %2199 = call float @dx.op.binary.f32(i32 35, float %1817, float %2198)  ; FMax(a,b)
  %2200 = and i32 %1892, 16
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2224, label %2202

; <label>:2202                                    ; preds = %2141
  %2203 = bitcast float %1886 to i32
  %2204 = add i32 %1883, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2204, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2205, %dx.types.Handle %2051, float %1979, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float %1984, float %1986, float undef, float %1988, float %1990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = and i32 %2203, 65535
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = fmul fast float %2207, %1877
  %2213 = fmul fast float %2208, %1878
  %2214 = fmul fast float %2209, %1879
  %2215 = and i32 %1892, 16384
  %2216 = icmp ne i32 %2215, 0
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = select i1 %2216, float %2218, float 1.000000e+00
  %2220 = fmul fast float %2219, %2211
  %2221 = fmul fast float %2212, %2220
  %2222 = fmul fast float %2213, %2220
  %2223 = fmul fast float %2214, %2220
  br label %2224

; <label>:2224                                    ; preds = %2202, %2141
  %2225 = phi float [ %2221, %2202 ], [ 0.000000e+00, %2141 ]
  %2226 = phi float [ %2222, %2202 ], [ 0.000000e+00, %2141 ]
  %2227 = phi float [ %2223, %2202 ], [ 0.000000e+00, %2141 ]
  %2228 = fsub fast float %2225, %1821
  %2229 = fsub fast float %2226, %1822
  %2230 = fsub fast float %2227, %1823
  %2231 = fmul fast float %2228, %2038
  %2232 = fmul fast float %2229, %2038
  %2233 = fmul fast float %2230, %2038
  %2234 = fadd fast float %2231, %1821
  %2235 = fadd fast float %2232, %1822
  %2236 = fadd fast float %2233, %1823
  br label %1941

; <label>:2237                                    ; preds = %1941
  br label %2238

; <label>:2238                                    ; preds = %2237, %1713
  %2239 = phi float [ 0.000000e+00, %1713 ], [ %1942, %2237 ]
  %2240 = phi float [ %1733, %1713 ], [ %1943, %2237 ]
  %2241 = phi float [ %1725, %1713 ], [ %1944, %2237 ]
  %2242 = phi float [ 0.000000e+00, %1713 ], [ %1945, %2237 ]
  %2243 = phi float [ 0.000000e+00, %1713 ], [ %1946, %2237 ]
  %2244 = phi float [ %1719, %1713 ], [ %1947, %2237 ]
  %2245 = phi float [ %1720, %1713 ], [ %1948, %2237 ]
  %2246 = phi float [ %1721, %1713 ], [ %1949, %2237 ]
  %2247 = phi float [ %1759, %1713 ], [ %1950, %2237 ]
  %2248 = phi float [ %1760, %1713 ], [ %1951, %2237 ]
  %2249 = phi float [ %1761, %1713 ], [ %1952, %2237 ]
  %2250 = phi float [ %1724, %1713 ], [ %1953, %2237 ]
  %2251 = phi float [ %1723, %1713 ], [ %1954, %2237 ]
  %2252 = phi float [ 0.000000e+00, %1713 ], [ %1955, %2237 ]
  %2253 = phi float [ %1722, %1713 ], [ %1956, %2237 ]
  %2254 = phi float [ %1716, %1713 ], [ %1957, %2237 ]
  %2255 = phi float [ %1717, %1713 ], [ %1958, %2237 ]
  %2256 = phi float [ %1718, %1713 ], [ %1959, %2237 ]
  %2257 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %2249, float %2247, float %2248, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2258 = call float @dx.op.unary.f32(i32 25, float %2257)  ; Rsqrt(value)
  %2259 = fmul fast float %2258, %2247
  %2260 = fmul fast float %2258, %2248
  %2261 = fmul fast float %2258, %2249
  %2262 = fadd fast float %2252, %766
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2260, float %2261, float %2259, float %2260, float %2261)  ; Dot3(ax,ay,az,bx,by,bz)
  %2265 = call float @dx.op.unary.f32(i32 25, float %2264)  ; Rsqrt(value)
  %2266 = fmul fast float %2265, %2259
  %2267 = fmul fast float %2265, %2260
  %2268 = fmul fast float %2265, %2261
  %2269 = fadd fast float %2253, 0xBFB99999A0000000
  %2270 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2271 = fmul fast float %2270, 0x3FF1C71C80000000
  %2272 = call float @dx.op.binary.f32(i32 36, float %2253, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2273 = fsub fast float 1.000000e+00, %2271
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2275 = fmul fast float %2274, %2254
  %2276 = fmul fast float %2274, %2255
  %2277 = fmul fast float %2274, %2256
  %2278 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2280 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2281 = fmul fast float %2271, %2254
  %2282 = fmul fast float %2271, %2255
  %2283 = fmul fast float %2271, %2256
  %2284 = fadd fast float %2281, %2272
  %2285 = fadd fast float %2282, %2272
  %2286 = fadd fast float %2283, %2272
  %2287 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2288 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2289 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2290 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.i32 %2291, 3
  %2293 = and i32 %2292, 8
  %2294 = icmp ne i32 %2293, 0
  %2295 = call float @dx.op.binary.f32(i32 35, float %2278, float %2254)  ; FMax(a,b)
  %2296 = call float @dx.op.binary.f32(i32 35, float %2279, float %2254)  ; FMax(a,b)
  %2297 = call float @dx.op.binary.f32(i32 35, float %2280, float %2254)  ; FMax(a,b)
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2278, float %2279, float %2280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = select i1 %182, float %2254, float %2278
  %2300 = select i1 %182, float %2298, float %2279
  %2301 = select i1 %182, float 1.000000e+00, float %2280
  %2302 = select i1 %2294, float %2295, float %2299
  %2303 = select i1 %2294, float %2296, float %2300
  %2304 = select i1 %2294, float %2297, float %2301
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = fadd fast float %2306, %111
  %2310 = fadd fast float %2307, %112
  %2311 = fadd fast float %2308, %113
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.CBufRet.f32 %2312, 1
  %2315 = fsub fast float %2309, %2313
  %2316 = fsub fast float %2310, %2314
  %2317 = fmul fast float %2315, %2315
  %2318 = fmul fast float %2316, %2316
  %2319 = fadd fast float %2317, %2318
  %2320 = call float @dx.op.unary.f32(i32 24, float %2319)  ; Sqrt(value)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2312, 2
  %2322 = fcmp fast olt float %2320, %2321
  br i1 %2322, label %2323, label %2390

; <label>:2323                                    ; preds = %2238
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %2326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2327 = extractvalue %dx.types.CBufRet.f32 %2326, 0
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.CBufRet.f32 %2324, 1
  %2331 = extractvalue %dx.types.CBufRet.f32 %2326, 1
  %2332 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2333 = extractvalue %dx.types.CBufRet.f32 %2324, 3
  %2334 = extractvalue %dx.types.CBufRet.f32 %2326, 3
  %2335 = extractvalue %dx.types.CBufRet.f32 %2328, 3
  %2336 = fadd fast float %2333, %2309
  %2337 = fadd fast float %2334, %2310
  %2338 = fadd fast float %2335, %2311
  %2339 = fmul fast float %2336, %2325
  %2340 = call float @dx.op.tertiary.f32(i32 46, float %2337, float %2327, float %2339)  ; FMad(a,b,c)
  %2341 = call float @dx.op.tertiary.f32(i32 46, float %2338, float %2329, float %2340)  ; FMad(a,b,c)
  %2342 = fmul fast float %2336, %2330
  %2343 = call float @dx.op.tertiary.f32(i32 46, float %2337, float %2331, float %2342)  ; FMad(a,b,c)
  %2344 = call float @dx.op.tertiary.f32(i32 46, float %2338, float %2332, float %2343)  ; FMad(a,b,c)
  %2345 = fsub fast float %2341, %2333
  %2346 = fsub fast float %2344, %2334
  %2347 = fsub fast float %2345, %2313
  %2348 = fadd fast float %2347, %2321
  %2349 = fsub fast float %2346, %2314
  %2350 = fadd fast float %2349, %2321
  %2351 = extractvalue %dx.types.CBufRet.f32 %2312, 3
  %2352 = fmul fast float %2348, %2351
  %2353 = fmul fast float %2350, %2351
  %2354 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2355 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2356 = fsub fast float 1.000000e+00, %2354
  %2357 = fsub fast float 1.000000e+00, %2355
  %2358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2356, float %2357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = fcmp fast ugt float %2359, 0.000000e+00
  br i1 %2360, label %2361, label %2664

; <label>:2361                                    ; preds = %2323
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 2
  %2364 = fmul fast float %2363, %2359
  %2365 = extractvalue %dx.types.CBufRet.f32 %2362, 3
  %2366 = fadd fast float %2365, %2364
  %2367 = extractvalue %dx.types.CBufRet.f32 %2328, 2
  %2368 = fadd fast float %2366, %2335
  %2369 = fmul fast float %2341, %2329
  %2370 = call float @dx.op.tertiary.f32(i32 46, float %2344, float %2332, float %2369)  ; FMad(a,b,c)
  %2371 = call float @dx.op.tertiary.f32(i32 46, float %2368, float %2367, float %2370)  ; FMad(a,b,c)
  %2372 = fsub fast float %2371, %2335
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 2
  %2375 = fsub fast float %2372, %2374
  %2376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2356, float %2357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2377 = extractvalue %dx.types.ResRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.ResRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.ResRet.f32 %2376, 2
  %2380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2356, float %2357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.ResRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2380, 2
  %2384 = fadd fast float %2381, %2377
  %2385 = fmul fast float %2384, 0x3F847AE140000000
  %2386 = fadd fast float %2382, %2378
  %2387 = fmul fast float %2386, 0x3F847AE140000000
  %2388 = fadd fast float %2383, %2379
  %2389 = fmul fast float %2388, 0x3F847AE140000000
  br label %2664

; <label>:2390                                    ; preds = %2238
  %2391 = and i32 %158, 1
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2664, label %2393

; <label>:2393                                    ; preds = %2390
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 0
  %2398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2398, 0
  %2400 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2401 = extractvalue %dx.types.CBufRet.f32 %2396, 1
  %2402 = extractvalue %dx.types.CBufRet.f32 %2398, 1
  %2403 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2404 = extractvalue %dx.types.CBufRet.f32 %2396, 3
  %2405 = extractvalue %dx.types.CBufRet.f32 %2398, 3
  %2406 = fadd fast float %2403, %2309
  %2407 = fadd fast float %2404, %2310
  %2408 = fadd fast float %2405, %2311
  %2409 = fmul fast float %2406, %2395
  %2410 = call float @dx.op.tertiary.f32(i32 46, float %2407, float %2397, float %2409)  ; FMad(a,b,c)
  %2411 = call float @dx.op.tertiary.f32(i32 46, float %2408, float %2399, float %2410)  ; FMad(a,b,c)
  %2412 = fmul fast float %2406, %2400
  %2413 = call float @dx.op.tertiary.f32(i32 46, float %2407, float %2401, float %2412)  ; FMad(a,b,c)
  %2414 = call float @dx.op.tertiary.f32(i32 46, float %2408, float %2402, float %2413)  ; FMad(a,b,c)
  %2415 = fsub fast float %2411, %2403
  %2416 = fsub fast float %2414, %2404
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2420 = extractvalue %dx.types.CBufRet.f32 %2417, 2
  %2421 = extractvalue %dx.types.CBufRet.f32 %2417, 3
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 3
  %2424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.i32 %2424, 0
  %2426 = extractvalue %dx.types.CBufRet.i32 %2424, 1
  %2427 = udiv i32 %2426, %2425
  %2428 = fsub fast float %2415, %2418
  %2429 = fsub fast float %2416, %2419
  %2430 = call float @dx.op.binary.f32(i32 35, float %2428, float 0.000000e+00)  ; FMax(a,b)
  %2431 = call float @dx.op.binary.f32(i32 35, float %2429, float 0.000000e+00)  ; FMax(a,b)
  %2432 = call float @dx.op.binary.f32(i32 36, float %2430, float %2420)  ; FMin(a,b)
  %2433 = call float @dx.op.binary.f32(i32 36, float %2431, float %2421)  ; FMin(a,b)
  %2434 = add i32 %2425, -1
  %2435 = add i32 %2427, -1
  %2436 = fmul fast float %2432, %2423
  %2437 = fmul fast float %2433, %2423
  %2438 = fptoui float %2436 to i32
  %2439 = fptoui float %2437 to i32
  %2440 = call i32 @dx.op.binary.i32(i32 40, i32 %2438, i32 %2434)  ; UMin(a,b)
  %2441 = call i32 @dx.op.binary.i32(i32 40, i32 %2439, i32 %2435)  ; UMin(a,b)
  %2442 = mul i32 %2441, %2425
  %2443 = add i32 %2442, %2440
  %2444 = shl i32 %2443, 2
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = icmp eq i32 %2446, -1
  br i1 %2447, label %2664, label %2448

; <label>:2448                                    ; preds = %2393
  %2449 = mul i32 %2446, 148
  %2450 = add i32 %2449, 4
  %2451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.f32 %2451, 0
  %2453 = add i32 %2449, 8
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = add i32 %2449, 36
  %2457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.f32 %2457, 0
  %2459 = add i32 %2449, 60
  %2460 = add i32 %2449, 92
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = add i32 %2449, 116
  %2464 = fsub fast float %2415, %2452
  %2465 = fsub fast float %2416, %2455
  %2466 = fmul fast float %2423, %2464
  %2467 = fmul fast float %2423, %2465
  %2468 = call float @dx.op.unary.f32(i32 7, float %2466)  ; Saturate(value)
  %2469 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 2
  %2473 = call float @dx.op.unary.f32(i32 83, float %2468)  ; DerivCoarseX(value)
  %2474 = call float @dx.op.unary.f32(i32 83, float %2470)  ; DerivCoarseX(value)
  %2475 = call float @dx.op.unary.f32(i32 84, float %2468)  ; DerivCoarseY(value)
  %2476 = call float @dx.op.unary.f32(i32 84, float %2470)  ; DerivCoarseY(value)
  %2477 = fmul fast float %2473, %2472
  %2478 = fmul fast float %2474, %2472
  %2479 = fmul fast float %2475, %2472
  %2480 = fmul fast float %2476, %2472
  %2481 = call float @dx.op.dot2.f32(i32 54, float %2479, float %2480, float %2479, float %2480)  ; Dot2(ax,ay,bx,by)
  %2482 = call float @dx.op.dot2.f32(i32 54, float %2477, float %2478, float %2477, float %2478)  ; Dot2(ax,ay,bx,by)
  %2483 = call float @dx.op.binary.f32(i32 35, float %2482, float %2481)  ; FMax(a,b)
  %2484 = call float @dx.op.unary.f32(i32 23, float %2483)  ; Log(value)
  %2485 = fmul fast float %2484, 5.000000e-01
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2488 = fadd fast float %2487, %2485
  %2489 = call float @dx.op.binary.f32(i32 35, float %2488, float 0.000000e+00)  ; FMax(a,b)
  %2490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2491 = extractvalue %dx.types.CBufRet.f32 %2490, 3
  %2492 = fadd fast float %2491, %2489
  %2493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2494 = extractvalue %dx.types.CBufRet.f32 %2493, 3
  %2495 = fadd fast float %2492, %2494
  %2496 = add i32 %2462, 0
  %2497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2496, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2498 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2497, i32 0)  ; GetDimensions(handle,mipLevel)
  %2499 = extractvalue %dx.types.Dimensions %2498, 0
  %2500 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2499)  ; FirstbitLo(value)
  %2501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.i32 %2501, 1
  %2503 = sub nsw i32 %2502, %2500
  %2504 = sitofp i32 %2503 to float
  %2505 = fsub fast float %2495, %2504
  %2506 = call float @dx.op.binary.f32(i32 35, float %2505, float 0.000000e+00)  ; FMax(a,b)
  %2507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2497, %dx.types.Handle %37, float %2468, float %2470, float %2458, float undef, i32 0, i32 0, i32 undef, float %2506)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = fcmp ule float %2508, 0x3FE0101020000000
  %2510 = extractvalue %dx.types.CBufRet.i32 %2501, 0
  %2511 = and i32 %2510, 128
  %2512 = icmp ne i32 %2511, 0
  %2513 = and i1 %2509, %2512
  br i1 %2513, label %2664, label %2514

; <label>:2514                                    ; preds = %2448
  %2515 = add i32 %2449, 20
  %2516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.f32 %2516, 0
  %2518 = add i32 %2449, 24
  %2519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.f32 %2519, 0
  %2521 = add i32 %2449, 40
  %2522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.f32 %2522, 0
  %2524 = add i32 %2449, 96
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 2
  %2529 = fmul fast float %2528, %2468
  %2530 = fmul fast float %2528, %2470
  %2531 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2532 = fadd fast float %2529, %2531
  %2533 = fadd fast float %2530, %2531
  %2534 = add i32 %2526, 0
  %2535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2534, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2536 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2535, i32 0)  ; GetDimensions(handle,mipLevel)
  %2537 = extractvalue %dx.types.Dimensions %2536, 0
  %2538 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2537)  ; FirstbitLo(value)
  %2539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.i32 %2539, 1
  %2541 = sub nsw i32 %2540, %2538
  %2542 = sitofp i32 %2541 to float
  %2543 = fsub fast float %2492, %2542
  %2544 = call float @dx.op.binary.f32(i32 35, float %2543, float 0.000000e+00)  ; FMax(a,b)
  %2545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2535, %dx.types.Handle %37, float %2532, float %2533, float %2523, float undef, i32 0, i32 0, i32 undef, float %2544)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2546 = extractvalue %dx.types.ResRet.f32 %2545, 0
  %2547 = fmul fast float %2546, %2517
  %2548 = fadd fast float %2547, %2520
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 3
  %2555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2556 = extractvalue %dx.types.CBufRet.f32 %2555, 3
  %2557 = extractvalue %dx.types.CBufRet.f32 %2549, 3
  %2558 = fadd fast float %2554, %2415
  %2559 = fadd fast float %2556, %2416
  %2560 = fadd fast float %2548, %2557
  %2561 = fmul fast float %2558, %2550
  %2562 = call float @dx.op.tertiary.f32(i32 46, float %2559, float %2551, float %2561)  ; FMad(a,b,c)
  %2563 = call float @dx.op.tertiary.f32(i32 46, float %2560, float %2552, float %2562)  ; FMad(a,b,c)
  %2564 = fsub fast float %2563, %2557
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 2
  %2567 = fsub fast float %2564, %2566
  %2568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.i32 %2568, 0
  %2570 = call i32 @dx.op.binary.i32(i32 40, i32 %2446, i32 %2569)  ; UMin(a,b)
  %2571 = mul i32 %2570, 36
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = add i32 %2571, 4
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = fmul fast float %2576, %2468
  %2578 = fmul fast float %2576, %2470
  %2579 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2580 = fadd fast float %2577, %2579
  %2581 = fadd fast float %2578, %2579
  %2582 = icmp eq i32 %2573, 0
  br i1 %2582, label %2651, label %2583

; <label>:2583                                    ; preds = %2514
  br label %2584

; <label>:2584                                    ; preds = %2641, %2583
  %2585 = phi float [ %2642, %2641 ], [ 0.000000e+00, %2583 ]
  %2586 = phi float [ %2643, %2641 ], [ 0.000000e+00, %2583 ]
  %2587 = phi float [ %2644, %2641 ], [ 0.000000e+00, %2583 ]
  %2588 = phi float [ %2645, %2641 ], [ 0.000000e+00, %2583 ]
  %2589 = phi float [ %2646, %2641 ], [ 0.000000e+00, %2583 ]
  %2590 = phi float [ %2647, %2641 ], [ 0.000000e+00, %2583 ]
  %2591 = phi i32 [ %2648, %2641 ], [ 0, %2583 ]
  %2592 = shl i32 %2591, 2
  %2593 = add i32 %2459, %2592
  %2594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.f32 %2594, 0
  %2596 = add i32 %2463, %2592
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %2598, 0
  %2600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2599, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2601 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2600, i32 0)  ; GetDimensions(handle,mipLevel)
  %2602 = extractvalue %dx.types.Dimensions %2601, 0
  %2603 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2602)  ; FirstbitLo(value)
  %2604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.i32 %2604, 1
  %2606 = sub nsw i32 %2605, %2603
  %2607 = sitofp i32 %2606 to float
  %2608 = fsub fast float %2492, %2607
  %2609 = call float @dx.op.binary.f32(i32 35, float %2608, float 0.000000e+00)  ; FMax(a,b)
  %2610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2600, %dx.types.Handle %37, float %2580, float %2581, float %2595, float undef, i32 0, i32 0, i32 undef, float %2609)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 0
  %2612 = fcmp fast ogt float %2611, 0.000000e+00
  br i1 %2612, label %2613, label %2641

; <label>:2613                                    ; preds = %2584
  %2614 = add i32 %2574, %2592
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 32767
  %2618 = mul nuw nsw i32 %2617, 928
  %2619 = add nuw nsw i32 %2618, 48
  %2620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  %2622 = extractvalue %dx.types.ResRet.f32 %2620, 1
  %2623 = extractvalue %dx.types.ResRet.f32 %2620, 2
  %2624 = add nuw nsw i32 %2618, 60
  %2625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.f32 %2625, 0
  %2627 = extractvalue %dx.types.ResRet.f32 %2625, 1
  %2628 = extractvalue %dx.types.ResRet.f32 %2625, 2
  %2629 = fmul fast float %2621, %2611
  %2630 = fmul fast float %2622, %2611
  %2631 = fmul fast float %2623, %2611
  %2632 = fadd fast float %2629, %2585
  %2633 = fadd fast float %2630, %2586
  %2634 = fadd fast float %2631, %2587
  %2635 = fmul fast float %2626, %2611
  %2636 = fmul fast float %2627, %2611
  %2637 = fmul fast float %2628, %2611
  %2638 = fadd fast float %2635, %2588
  %2639 = fadd fast float %2636, %2589
  %2640 = fadd fast float %2637, %2590
  br label %2641

; <label>:2641                                    ; preds = %2613, %2584
  %2642 = phi float [ %2632, %2613 ], [ %2585, %2584 ]
  %2643 = phi float [ %2633, %2613 ], [ %2586, %2584 ]
  %2644 = phi float [ %2634, %2613 ], [ %2587, %2584 ]
  %2645 = phi float [ %2638, %2613 ], [ %2588, %2584 ]
  %2646 = phi float [ %2639, %2613 ], [ %2589, %2584 ]
  %2647 = phi float [ %2640, %2613 ], [ %2590, %2584 ]
  %2648 = add nuw i32 %2591, 1
  %2649 = icmp eq i32 %2648, %2573
  br i1 %2649, label %2650, label %2584

; <label>:2650                                    ; preds = %2641
  br label %2651

; <label>:2651                                    ; preds = %2650, %2514
  %2652 = phi float [ 0.000000e+00, %2514 ], [ %2642, %2650 ]
  %2653 = phi float [ 0.000000e+00, %2514 ], [ %2643, %2650 ]
  %2654 = phi float [ 0.000000e+00, %2514 ], [ %2644, %2650 ]
  %2655 = phi float [ 0.000000e+00, %2514 ], [ %2645, %2650 ]
  %2656 = phi float [ 0.000000e+00, %2514 ], [ %2646, %2650 ]
  %2657 = phi float [ 0.000000e+00, %2514 ], [ %2647, %2650 ]
  %2658 = fadd fast float %2655, %2652
  %2659 = fmul fast float %2658, 0x3F847AE140000000
  %2660 = fadd fast float %2656, %2653
  %2661 = fmul fast float %2660, 0x3F847AE140000000
  %2662 = fadd fast float %2657, %2654
  %2663 = fmul fast float %2662, 0x3F847AE140000000
  br label %2664

; <label>:2664                                    ; preds = %2651, %2448, %2393, %2390, %2361, %2323
  %2665 = phi float [ %2375, %2361 ], [ -1.310720e+05, %2323 ], [ %2567, %2651 ], [ -1.310720e+05, %2393 ], [ -1.310720e+05, %2448 ], [ -1.310720e+05, %2390 ]
  %2666 = phi float [ %2385, %2361 ], [ 0.000000e+00, %2323 ], [ %2659, %2651 ], [ 0.000000e+00, %2393 ], [ 0.000000e+00, %2448 ], [ 0.000000e+00, %2390 ]
  %2667 = phi float [ %2387, %2361 ], [ 0.000000e+00, %2323 ], [ %2661, %2651 ], [ 0.000000e+00, %2393 ], [ 0.000000e+00, %2448 ], [ 0.000000e+00, %2390 ]
  %2668 = phi float [ %2389, %2361 ], [ 0.000000e+00, %2323 ], [ %2663, %2651 ], [ 0.000000e+00, %2393 ], [ 0.000000e+00, %2448 ], [ 0.000000e+00, %2390 ]
  %2669 = phi i1 [ true, %2361 ], [ false, %2323 ], [ true, %2651 ], [ false, %2393 ], [ false, %2448 ], [ false, %2390 ]
  %2670 = and i32 %158, 3
  %2671 = icmp eq i32 %2670, 1
  %2672 = select i1 %2671, float 1.000000e+00, float 0.000000e+00
  %2673 = fsub fast float %2665, %113
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  %2675 = select i1 %2669, float %2674, float 1.000000e+00
  %2676 = fmul fast float %2675, %2672
  %2677 = icmp eq i32 %2670, 3
  %2678 = select i1 %2677, float 1.000000e+00, float %2676
  %2679 = call float @dx.op.binary.f32(i32 35, float %2239, float %2678)  ; FMax(a,b)
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = fcmp fast une float %2680, 0.000000e+00
  %2682 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %2683 = call float @dx.op.unary.f32(i32 25, float %2682)  ; Rsqrt(value)
  br i1 %2681, label %2691, label %2684

; <label>:2684                                    ; preds = %2664
  %2685 = fmul fast float %2683, %111
  %2686 = fmul fast float %2683, %112
  %2687 = fmul fast float %2683, %113
  %2688 = fsub fast float -0.000000e+00, %2685
  %2689 = fsub fast float -0.000000e+00, %2686
  %2690 = fsub fast float -0.000000e+00, %2687
  br label %2859

; <label>:2691                                    ; preds = %2664
  %2692 = fmul fast float %111, %2683
  %2693 = fsub fast float -0.000000e+00, %2692
  %2694 = fmul fast float %112, %2683
  %2695 = fsub fast float -0.000000e+00, %2694
  %2696 = fmul fast float %113, %2683
  %2697 = fsub fast float -0.000000e+00, %2696
  %2698 = call float @dx.op.dot3.f32(i32 55, float %2693, float %2695, float %2697, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %2699 = fmul fast float %2680, 2.500000e+00
  %2700 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  %2701 = fmul fast float %2680, 0x4013FFFFE0000000
  %2702 = fadd fast float %2701, 0xBFFFFFFFE0000000
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = fmul fast float %2680, 0x4004000020000000
  %2705 = fadd fast float %2704, 0xBFF8000040000000
  %2706 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2707 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  %2708 = fmul fast float %2269, 1.000000e+01
  %2709 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2710 = fmul fast float %2709, 2.000000e+00
  %2711 = fsub fast float 3.000000e+00, %2710
  %2712 = fmul fast float %2709, %2709
  %2713 = fmul fast float %2712, %2711
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = fsub fast float 0x3FE3333340000000, %2290
  %2716 = fmul fast float %2715, 0x400AAAAAA0000000
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = fmul fast float %2714, %2717
  %2719 = fmul fast float %2302, 0x3FEA2B8620000000
  %2720 = fmul fast float %2303, 0x3FEA2B8620000000
  %2721 = fmul fast float %2304, 0x3FEA2B8620000000
  %2722 = fadd fast float %2719, 0x3FC81DFBA0000000
  %2723 = fmul fast float %2722, %2302
  %2724 = fadd fast float %2723, 0x3F910E6020000000
  %2725 = fadd fast float %2720, 0x3FC81DFBA0000000
  %2726 = fmul fast float %2725, %2303
  %2727 = fadd fast float %2726, 0x3F910E6020000000
  %2728 = fadd fast float %2721, 0x3FC81DFBA0000000
  %2729 = fmul fast float %2728, %2304
  %2730 = fadd fast float %2729, 0x3F910E6020000000
  %2731 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2732 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2733 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2734 = fsub fast float %2731, %2302
  %2735 = fsub fast float %2732, %2303
  %2736 = fsub fast float %2733, %2304
  %2737 = fmul fast float %2734, %2707
  %2738 = fmul fast float %2737, %2718
  %2739 = fmul fast float %2735, %2707
  %2740 = fmul fast float %2739, %2718
  %2741 = fmul fast float %2736, %2707
  %2742 = fmul fast float %2741, %2718
  %2743 = fadd fast float %2738, %2302
  %2744 = fadd fast float %2740, %2303
  %2745 = fadd fast float %2742, %2304
  %2746 = fmul fast float %2250, %2250
  %2747 = fmul fast float %2746, %2746
  %2748 = fadd fast float %2703, 1.000000e+00
  %2749 = fsub fast float %2748, %2718
  %2750 = call float @dx.op.unary.f32(i32 7, float %2749)  ; Saturate(value)
  %2751 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fsub fast float 1.000000e+00, %2747
  %2754 = call float @dx.op.binary.f32(i32 36, float %2750, float %2753)  ; FMin(a,b)
  %2755 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2756 = call float @dx.op.binary.f32(i32 35, float %2754, float %2755)  ; FMax(a,b)
  %2757 = fadd fast float %2752, 0xBFE4CCCCC0000000
  %2758 = fmul fast float %2757, 0x4006DB6DA0000000
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = fmul fast float %2759, 2.000000e+00
  %2761 = fsub fast float 3.000000e+00, %2760
  %2762 = bitcast float %2287 to i32
  %2763 = ashr i32 %2762, 1
  %2764 = add nsw i32 %2763, 532487669
  %2765 = bitcast i32 %2764 to float
  %2766 = fsub fast float 1.000000e+00, %2765
  %2767 = bitcast float %2766 to i32
  %2768 = sub nsw i32 2129859010, %2767
  %2769 = bitcast i32 %2768 to float
  %2770 = fmul fast float %2769, 2.000000e+00
  %2771 = bitcast float %2288 to i32
  %2772 = ashr i32 %2771, 1
  %2773 = add nsw i32 %2772, 532487669
  %2774 = bitcast i32 %2773 to float
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = bitcast float %2775 to i32
  %2777 = sub nsw i32 2129859010, %2776
  %2778 = bitcast i32 %2777 to float
  %2779 = fmul fast float %2778, 2.000000e+00
  %2780 = bitcast float %2289 to i32
  %2781 = ashr i32 %2780, 1
  %2782 = add nsw i32 %2781, 532487669
  %2783 = bitcast i32 %2782 to float
  %2784 = fsub fast float 1.000000e+00, %2783
  %2785 = bitcast float %2784 to i32
  %2786 = sub nsw i32 2129859010, %2785
  %2787 = bitcast i32 %2786 to float
  %2788 = fmul fast float %2787, 2.000000e+00
  %2789 = fsub fast float 0x4002A9FBE0000000, %2770
  %2790 = fadd fast float %2770, 0x3FD54FDF00000000
  %2791 = bitcast float %2790 to i32
  %2792 = sub nsw i32 2129859010, %2791
  %2793 = bitcast i32 %2792 to float
  %2794 = fmul fast float %2793, %2789
  %2795 = fmul fast float %2794, %2794
  %2796 = fsub fast float 0x4002A9FBE0000000, %2779
  %2797 = fadd fast float %2779, 0x3FD54FDF00000000
  %2798 = bitcast float %2797 to i32
  %2799 = sub nsw i32 2129859010, %2798
  %2800 = bitcast i32 %2799 to float
  %2801 = fmul fast float %2800, %2796
  %2802 = fmul fast float %2801, %2801
  %2803 = fsub fast float 0x4002A9FBE0000000, %2788
  %2804 = fadd fast float %2788, 0x3FD54FDF00000000
  %2805 = bitcast float %2804 to i32
  %2806 = sub nsw i32 2129859010, %2805
  %2807 = bitcast i32 %2806 to float
  %2808 = fmul fast float %2807, %2803
  %2809 = fmul fast float %2808, %2808
  %2810 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2795)  ; FMax(a,b)
  %2811 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2802)  ; FMax(a,b)
  %2812 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2809)  ; FMax(a,b)
  %2813 = fsub fast float 1.000000e+00, %2698
  %2814 = fadd fast float %2813, %2714
  %2815 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2816 = fsub fast float 1.000000e+00, %2678
  %2817 = fmul fast float %2756, %2816
  %2818 = fmul fast float %2759, %2759
  %2819 = fmul fast float %2818, %2817
  %2820 = fmul fast float %2819, %2761
  %2821 = fmul fast float %2816, 0xBFE99999A0000000
  %2822 = fmul fast float %2821, %2707
  %2823 = fmul fast float %2822, %2718
  %2824 = fadd fast float %2823, 1.000000e+00
  %2825 = fadd fast float %2290, -1.000000e+00
  %2826 = fmul fast float %2824, %2825
  %2827 = fadd fast float %2826, 1.000000e+00
  %2828 = fsub fast float %2810, %2287
  %2829 = fsub fast float %2811, %2288
  %2830 = fsub fast float %2812, %2289
  %2831 = fmul fast float %2820, %2828
  %2832 = fmul fast float %2820, %2829
  %2833 = fmul fast float %2820, %2830
  %2834 = fadd fast float %2831, %2287
  %2835 = fadd fast float %2832, %2288
  %2836 = fadd fast float %2833, %2289
  %2837 = fsub fast float %49, %2266
  %2838 = fsub fast float %50, %2267
  %2839 = fsub fast float %51, %2268
  %2840 = fmul fast float %2820, %2837
  %2841 = fmul fast float %2820, %2838
  %2842 = fmul fast float %2820, %2839
  %2843 = fadd fast float %2840, %2266
  %2844 = fadd fast float %2841, %2267
  %2845 = fadd fast float %2842, %2268
  %2846 = fmul fast float %2820, %2815
  %2847 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2848 = fsub fast float 1.000000e+00, %2847
  %2849 = fmul fast float %2846, %2848
  %2850 = fadd fast float %2849, %2847
  %2851 = fsub fast float 1.000000e+00, %2250
  %2852 = fmul fast float %2820, %2851
  %2853 = fadd fast float %2852, %2250
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2843, float %2844, float %2845, float %2843, float %2844, float %2845)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = call float @dx.op.unary.f32(i32 25, float %2854)  ; Rsqrt(value)
  %2856 = fmul fast float %2843, %2855
  %2857 = fmul fast float %2844, %2855
  %2858 = fmul fast float %2845, %2855
  br label %2859

; <label>:2859                                    ; preds = %2691, %2684
  %2860 = phi float [ %2690, %2684 ], [ %2697, %2691 ]
  %2861 = phi float [ %2689, %2684 ], [ %2695, %2691 ]
  %2862 = phi float [ %2688, %2684 ], [ %2693, %2691 ]
  %2863 = phi float [ %2687, %2684 ], [ %2696, %2691 ]
  %2864 = phi float [ %2686, %2684 ], [ %2694, %2691 ]
  %2865 = phi float [ %2685, %2684 ], [ %2692, %2691 ]
  %2866 = phi float [ %2287, %2684 ], [ %2834, %2691 ]
  %2867 = phi float [ %2288, %2684 ], [ %2835, %2691 ]
  %2868 = phi float [ %2289, %2684 ], [ %2836, %2691 ]
  %2869 = phi float [ %2266, %2684 ], [ %2856, %2691 ]
  %2870 = phi float [ %2267, %2684 ], [ %2857, %2691 ]
  %2871 = phi float [ %2268, %2684 ], [ %2858, %2691 ]
  %2872 = phi float [ %2302, %2684 ], [ %2743, %2691 ]
  %2873 = phi float [ %2303, %2684 ], [ %2744, %2691 ]
  %2874 = phi float [ %2304, %2684 ], [ %2745, %2691 ]
  %2875 = phi float [ %2290, %2684 ], [ %2850, %2691 ]
  %2876 = phi float [ %2250, %2684 ], [ %2853, %2691 ]
  %2877 = select i1 %182, float 0.000000e+00, float %2868
  %2878 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float %2862, float %2861, float %2860)  ; Dot3(ax,ay,az,bx,by,bz)
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = call float @dx.op.dot3.f32(i32 55, float %2865, float %2864, float %2863, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %2881 = fmul fast float %2880, 2.000000e+00
  %2882 = fmul fast float %2881, %2869
  %2883 = fmul fast float %2881, %2870
  %2884 = fmul fast float %2881, %2871
  %2885 = fsub fast float %2865, %2882
  %2886 = fsub fast float %2864, %2883
  %2887 = fsub fast float %2863, %2884
  %2888 = call float @dx.op.binary.f32(i32 36, float %2876, float 1.000000e+00)  ; FMin(a,b)
  %2889 = fsub fast float 1.000000e+00, %2876
  %2890 = bitcast float %2889 to i32
  %2891 = sub nsw i32 2129859010, %2890
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 0
  %2894 = extractvalue %dx.types.CBufRet.f32 %2892, 1
  %2895 = fadd fast float %2893, %111
  %2896 = fadd fast float %2894, %112
  %2897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.i32 %2897, 0
  %2899 = icmp eq i32 %2898, 1
  br i1 %2899, label %2900, label %2935

; <label>:2900                                    ; preds = %2859
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.CBufRet.f32 %2901, 1
  %2904 = fsub fast float %2895, %2902
  %2905 = fsub fast float %2896, %2903
  %2906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2907 = extractvalue %dx.types.CBufRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.CBufRet.f32 %2906, 1
  %2909 = fmul fast float %2904, %2907
  %2910 = fmul fast float %2905, %2908
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2909, float %2910, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = fcmp fast ogt float %2912, 0.000000e+00
  %2914 = extractvalue %dx.types.CBufRet.i32 %2897, 3
  %2915 = icmp ne i32 %2914, 0
  %2916 = and i1 %2913, %2915
  br i1 %2916, label %2917, label %2935, !dx.controlflow.hints !78

; <label>:2917                                    ; preds = %2900
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 0
  %2920 = extractvalue %dx.types.CBufRet.f32 %2918, 1
  %2921 = fsub fast float %2895, %2919
  %2922 = fsub fast float %2896, %2920
  %2923 = fmul fast float %2921, %2921
  %2924 = fmul fast float %2922, %2922
  %2925 = fadd fast float %2923, %2924
  %2926 = uitofp i32 %2914 to float
  %2927 = fmul fast float %2926, %2926
  %2928 = fcmp fast ogt float %2925, %2927
  br i1 %2928, label %2935, label %2929

; <label>:2929                                    ; preds = %2917
  %2930 = call float @dx.op.unary.f32(i32 24, float %2925)  ; Sqrt(value)
  %2931 = fsub fast float %2926, %2930
  %2932 = fmul fast float %2931, 0x3F75555560000000
  %2933 = call float @dx.op.unary.f32(i32 7, float %2932)  ; Saturate(value)
  %2934 = call float @dx.op.binary.f32(i32 36, float %2933, float %2912)  ; FMin(a,b)
  br label %2935

; <label>:2935                                    ; preds = %2929, %2917, %2900, %2859
  %2936 = phi float [ 1.000000e+00, %2859 ], [ %2934, %2929 ], [ %2912, %2900 ], [ 0.000000e+00, %2917 ]
  %2937 = fcmp fast ogt float %2936, 0.000000e+00
  br i1 %2937, label %2938, label %3036, !dx.controlflow.hints !79

; <label>:2938                                    ; preds = %2935
  %2939 = fadd fast float %142, 5.000000e-01
  %2940 = call float @dx.op.unary.f32(i32 27, float %2939)  ; Round_ni(value)
  %2941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %140, float %141, float %2940, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 3
  %2947 = fmul fast float %2946, %2942
  %2948 = fmul fast float %2946, %2943
  %2949 = fmul fast float %2946, %2944
  %2950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %140, float %141, float %2940, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %140, float %141, float %2940, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.ResRet.f32 %2952, 1
  %2955 = fmul fast float %2953, 2.000000e+00
  %2956 = fmul fast float %2954, 2.000000e+00
  %2957 = fadd fast float %2955, -1.000000e+00
  %2958 = fadd fast float %2956, -1.000000e+00
  %2959 = fadd fast float %2957, %2958
  %2960 = fmul fast float %2959, 5.000000e-01
  %2961 = fsub fast float %2957, %2958
  %2962 = fmul fast float %2961, 5.000000e-01
  %2963 = call float @dx.op.unary.f32(i32 6, float %2960)  ; FAbs(value)
  %2964 = fsub fast float 1.000000e+00, %2963
  %2965 = call float @dx.op.unary.f32(i32 6, float %2962)  ; FAbs(value)
  %2966 = fsub fast float %2964, %2965
  %2967 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2966)  ; FMax(a,b)
  %2968 = call float @dx.op.dot3.f32(i32 55, float %2960, float %2962, float %2967, float %2960, float %2962, float %2967)  ; Dot3(ax,ay,az,bx,by,bz)
  %2969 = bitcast float %2968 to i32
  %2970 = ashr i32 %2969, 1
  %2971 = sub nsw i32 1597250115, %2970
  %2972 = bitcast i32 %2971 to float
  %2973 = fmul fast float %2972, %2960
  %2974 = fmul fast float %2972, %2962
  %2975 = fmul fast float %2972, %2967
  %2976 = fsub fast float 1.000000e+00, %2951
  %2977 = fdiv fast float %2976, %2975
  %2978 = fmul fast float %2975, %49
  %2979 = fmul fast float %2975, %50
  %2980 = fmul fast float %2975, %51
  %2981 = fmul fast float %2973, %45
  %2982 = fmul fast float %2973, %46
  %2983 = fmul fast float %2973, %47
  %2984 = fadd fast float %2978, %2981
  %2985 = fadd fast float %2979, %2982
  %2986 = fadd fast float %2980, %2983
  %2987 = fmul fast float %2974, %75
  %2988 = fmul fast float %2974, %76
  %2989 = fmul fast float %2974, %77
  %2990 = fadd fast float %2984, %2987
  %2991 = fadd fast float %2985, %2988
  %2992 = fadd fast float %2986, %2989
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2991, float %2992, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = call float @dx.op.unary.f32(i32 25, float %2993)  ; Rsqrt(value)
  %2995 = fmul fast float %2990, %2994
  %2996 = fmul fast float %2991, %2994
  %2997 = fmul fast float %2992, %2994
  %2998 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  %3000 = fmul fast float %2999, 5.000000e-01
  %3001 = fadd fast float %3000, 5.000000e-01
  %3002 = fmul fast float %3001, %2951
  %3003 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float %2995, float %2996, float %2997)  ; Dot3(ax,ay,az,bx,by,bz)
  %3004 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3005 = fmul fast float %3004, %2977
  %3006 = fadd fast float %3002, %3005
  %3007 = fsub fast float 5.000000e-01, %3000
  %3008 = fmul fast float %3007, %2872
  %3009 = fmul fast float %3007, %2873
  %3010 = fmul fast float %3007, %2874
  %3011 = fadd fast float %3006, %3008
  %3012 = fmul fast float %3011, %2947
  %3013 = fadd fast float %3006, %3009
  %3014 = fmul fast float %3013, %2948
  %3015 = fadd fast float %3006, %3010
  %3016 = fmul fast float %3015, %2949
  %3017 = call float @dx.op.dot3.f32(i32 55, float %2885, float %2886, float %2887, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3018 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3019 = fmul fast float %3018, 5.000000e-01
  %3020 = fadd fast float %3019, 5.000000e-01
  %3021 = fmul fast float %3020, %2951
  %3022 = call float @dx.op.dot3.f32(i32 55, float %2885, float %2886, float %2887, float %2995, float %2996, float %2997)  ; Dot3(ax,ay,az,bx,by,bz)
  %3023 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3024 = fmul fast float %3023, %2977
  %3025 = fadd fast float %3021, %3024
  %3026 = fsub fast float 5.000000e-01, %3019
  %3027 = fmul fast float %3026, %2872
  %3028 = fmul fast float %3026, %2873
  %3029 = fmul fast float %3026, %2874
  %3030 = fadd fast float %3025, %3027
  %3031 = fmul fast float %3030, %2947
  %3032 = fadd fast float %3025, %3028
  %3033 = fmul fast float %3032, %2948
  %3034 = fadd fast float %3025, %3029
  %3035 = fmul fast float %3034, %2949
  br label %3036

; <label>:3036                                    ; preds = %2938, %2935
  %3037 = phi float [ %3031, %2938 ], [ 0.000000e+00, %2935 ]
  %3038 = phi float [ %3033, %2938 ], [ 0.000000e+00, %2935 ]
  %3039 = phi float [ %3035, %2938 ], [ 0.000000e+00, %2935 ]
  %3040 = phi float [ %3012, %2938 ], [ 0.000000e+00, %2935 ]
  %3041 = phi float [ %3014, %2938 ], [ 0.000000e+00, %2935 ]
  %3042 = phi float [ %3016, %2938 ], [ 0.000000e+00, %2935 ]
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = fcmp fast ogt float %3044, 0.000000e+00
  %3046 = and i1 %2937, %3045
  br i1 %3046, label %3047, label %3251, !dx.controlflow.hints !80

; <label>:3047                                    ; preds = %3036
  %3048 = extractvalue %dx.types.CBufRet.f32 %2892, 2
  %3049 = fadd fast float %3048, %113
  %3050 = fmul fast float %2869, 3.200000e+01
  %3051 = fmul fast float %2870, 3.200000e+01
  %3052 = fadd fast float %2895, %3050
  %3053 = fadd fast float %2896, %3051
  %3054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.CBufRet.f32 %3054, 1
  %3057 = fsub fast float %3052, %3055
  %3058 = fsub fast float %3053, %3056
  %3059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3060 = extractvalue %dx.types.CBufRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.CBufRet.f32 %3059, 1
  %3062 = fmul fast float %3057, %3060
  %3063 = fmul fast float %3058, %3061
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.CBufRet.f32 %3064, 1
  %3067 = fsub fast float %2895, %3065
  %3068 = fsub fast float %2896, %3066
  %3069 = fmul fast float %3067, %3067
  %3070 = fmul fast float %3068, %3068
  %3071 = fadd fast float %3069, %3070
  %3072 = call float @dx.op.unary.f32(i32 24, float %3071)  ; Sqrt(value)
  %3073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3074 = extractvalue %dx.types.CBufRet.f32 %3073, 0
  %3075 = extractvalue %dx.types.CBufRet.f32 %3073, 1
  %3076 = fsub fast float %3072, %3074
  %3077 = fdiv fast float %3076, %3075
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3079 = fmul fast float %3078, 2.000000e+00
  %3080 = fsub fast float 3.000000e+00, %3079
  %3081 = fmul fast float %3078, %3078
  %3082 = fmul fast float %3081, %3080
  %3083 = fcmp fast oge float %3062, 0.000000e+00
  %3084 = fcmp fast ole float %3062, 1.000000e+00
  %3085 = and i1 %3084, %3083
  %3086 = fcmp fast oge float %3063, 0.000000e+00
  %3087 = and i1 %3086, %3085
  %3088 = fcmp fast ole float %3063, 1.000000e+00
  %3089 = and i1 %3088, %3087
  %3090 = fcmp fast ogt float %3082, 0.000000e+00
  %3091 = and i1 %3090, %3089
  br i1 %3091, label %3092, label %3215, !dx.controlflow.hints !81

; <label>:3092                                    ; preds = %3047
  %3093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.f32 %3093, 2
  %3095 = extractvalue %dx.types.CBufRet.f32 %3093, 3
  %3096 = fmul fast float %3094, %3062
  %3097 = fmul fast float %3095, %3063
  %3098 = call float @dx.op.unary.f32(i32 27, float %3096)  ; Round_ni(value)
  %3099 = call float @dx.op.unary.f32(i32 27, float %3097)  ; Round_ni(value)
  %3100 = fptosi float %3098 to i32
  %3101 = fptosi float %3099 to i32
  %3102 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3100, i32 %3101, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = lshr i32 %3103, 16
  %3105 = icmp eq i32 %3104, 65535
  br i1 %3105, label %3215, label %3106

; <label>:3106                                    ; preds = %3092
  %3107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3108 = extractvalue %dx.types.CBufRet.f32 %3107, 0
  %3109 = fmul fast float %3108, %3062
  %3110 = extractvalue %dx.types.CBufRet.f32 %3107, 1
  %3111 = fadd fast float %3109, %3110
  %3112 = extractvalue %dx.types.CBufRet.f32 %3107, 2
  %3113 = fmul fast float %3112, %3063
  %3114 = extractvalue %dx.types.CBufRet.f32 %3107, 3
  %3115 = fadd fast float %3113, %3114
  %3116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3111, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3117 = extractvalue %dx.types.ResRet.f32 %3116, 0
  %3118 = extractvalue %dx.types.ResRet.f32 %3116, 1
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 1
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3122 = fsub fast float %3120, %3121
  %3123 = fmul fast float %3122, %3117
  %3124 = fadd fast float %3123, %3121
  %3125 = extractvalue %dx.types.CBufRet.f32 %3119, 3
  %3126 = extractvalue %dx.types.CBufRet.f32 %3119, 2
  %3127 = fsub fast float %3125, %3126
  %3128 = fmul fast float %3127, %3118
  %3129 = fadd fast float %3128, %3126
  %3130 = fsub fast float %3049, %3124
  %3131 = fsub fast float %3129, %3124
  %3132 = fdiv fast float %3130, %3131
  %3133 = call float @dx.op.unary.f32(i32 7, float %3132)  ; Saturate(value)
  %3134 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3135 = extractvalue %dx.types.CBufRet.f32 %3093, 0
  %3136 = extractvalue %dx.types.CBufRet.f32 %3093, 1
  %3137 = fmul fast float %3135, %3062
  %3138 = fmul fast float %3136, %3063
  %3139 = fmul fast float %3137, 1.250000e-01
  %3140 = fmul fast float %3138, 1.250000e-01
  %3141 = call float @dx.op.unary.f32(i32 27, float %3139)  ; Round_ni(value)
  %3142 = call float @dx.op.unary.f32(i32 27, float %3140)  ; Round_ni(value)
  %3143 = fmul fast float %3141, 8.000000e+00
  %3144 = fmul fast float %3142, 8.000000e+00
  %3145 = fsub fast float %3137, %3143
  %3146 = fsub fast float %3138, %3144
  %3147 = fadd fast float %3145, 5.000000e-01
  %3148 = fadd fast float %3146, 5.000000e-01
  %3149 = and i32 %3104, 255
  %3150 = lshr i32 %3103, 24
  %3151 = mul nuw nsw i32 %3149, 9
  %3152 = uitofp i32 %3151 to float
  %3153 = mul nuw nsw i32 %3150, 9
  %3154 = uitofp i32 %3153 to float
  %3155 = fadd fast float %3147, %3152
  %3156 = fadd fast float %3148, %3154
  %3157 = fdiv fast float %3155, %3044
  %3158 = fdiv fast float %3156, %3134
  %3159 = fmul fast float %3133, 4.375000e-01
  %3160 = fadd fast float %3159, 3.125000e-02
  %3161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3157, float %3158, float %3160, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.ResRet.f32 %3161, 1
  %3164 = extractvalue %dx.types.ResRet.f32 %3161, 2
  %3165 = fadd fast float %3159, 5.312500e-01
  %3166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3157, float %3158, float %3165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.ResRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.ResRet.f32 %3166, 2
  %3170 = fmul fast float %3167, 2.000000e+00
  %3171 = fmul fast float %3168, 2.000000e+00
  %3172 = fmul fast float %3169, 2.000000e+00
  %3173 = fadd fast float %3170, -1.000000e+00
  %3174 = fadd fast float %3171, -1.000000e+00
  %3175 = fadd fast float %3172, -1.000000e+00
  %3176 = fmul fast float %3173, %3173
  %3177 = fmul fast float %3174, %3174
  %3178 = fadd fast float %3176, %3177
  %3179 = fmul fast float %3175, %3175
  %3180 = fadd fast float %3178, %3179
  %3181 = call float @dx.op.unary.f32(i32 24, float %3180)  ; Sqrt(value)
  %3182 = fcmp fast ogt float %3181, 0.000000e+00
  br i1 %3182, label %3183, label %3187

; <label>:3183                                    ; preds = %3106
  %3184 = fdiv fast float %3173, %3181
  %3185 = fdiv fast float %3174, %3181
  %3186 = fdiv fast float %3175, %3181
  br label %3187

; <label>:3187                                    ; preds = %3183, %3106
  %3188 = phi float [ %3184, %3183 ], [ 0.000000e+00, %3106 ]
  %3189 = phi float [ %3185, %3183 ], [ 0.000000e+00, %3106 ]
  %3190 = phi float [ %3186, %3183 ], [ 0.000000e+00, %3106 ]
  %3191 = call float @dx.op.dot3.f32(i32 55, float %3188, float %3189, float %3190, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3191)  ; FMax(a,b)
  %3193 = fmul fast float %3192, 0x400C5BF8A0000000
  %3194 = fmul fast float %3162, %3082
  %3195 = fmul fast float %3194, %3193
  %3196 = fmul fast float %3163, %3082
  %3197 = fmul fast float %3196, %3193
  %3198 = fmul fast float %3164, %3082
  %3199 = fmul fast float %3198, %3193
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 3
  %3202 = fmul fast float %3195, %3201
  %3203 = fmul fast float %3197, %3201
  %3204 = fmul fast float %3199, %3201
  %3205 = fcmp fast ogt float %3049, %3129
  br i1 %3205, label %3206, label %3215

; <label>:3206                                    ; preds = %3187
  %3207 = fmul fast float %3131, 0x3FC24924A0000000
  %3208 = fsub fast float %3049, %3129
  %3209 = fdiv fast float %3208, %3207
  %3210 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3211 = fsub fast float 1.000000e+00, %3210
  %3212 = fmul fast float %3211, %3202
  %3213 = fmul fast float %3211, %3203
  %3214 = fmul fast float %3211, %3204
  br label %3215

; <label>:3215                                    ; preds = %3206, %3187, %3092, %3047
  %3216 = phi float [ %3214, %3206 ], [ %3204, %3187 ], [ 0.000000e+00, %3092 ], [ 0.000000e+00, %3047 ]
  %3217 = phi float [ %3213, %3206 ], [ %3203, %3187 ], [ 0.000000e+00, %3092 ], [ 0.000000e+00, %3047 ]
  %3218 = phi float [ %3212, %3206 ], [ %3202, %3187 ], [ 0.000000e+00, %3092 ], [ 0.000000e+00, %3047 ]
  %3219 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3218)  ; FMax(a,b)
  %3220 = fmul fast float %3219, 0x3FD20DD760000000
  %3221 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2885, float %2886, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %3222 = fmul fast float %3221, 0x3FDF454380000000
  %3223 = fmul fast float %3221, %3221
  %3224 = fmul fast float %3223, 0x3FEE471020000000
  %3225 = fadd fast float %3224, 0xBFD42F6020000000
  %3226 = call float @dx.op.dot3.f32(i32 55, float %3219, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3222, float %3225)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3217)  ; FMax(a,b)
  %3228 = fmul fast float %3227, 0x3FD20DD760000000
  %3229 = call float @dx.op.dot3.f32(i32 55, float %3227, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3222, float %3225)  ; Dot3(ax,ay,az,bx,by,bz)
  %3230 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3216)  ; FMax(a,b)
  %3231 = fmul fast float %3230, 0x3FD20DD760000000
  %3232 = call float @dx.op.dot3.f32(i32 55, float %3230, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3222, float %3225)  ; Dot3(ax,ay,az,bx,by,bz)
  %3233 = call float @dx.op.binary.f32(i32 35, float %3220, float 0.000000e+00)  ; FMax(a,b)
  %3234 = call float @dx.op.binary.f32(i32 35, float %3228, float 0.000000e+00)  ; FMax(a,b)
  %3235 = call float @dx.op.binary.f32(i32 35, float %3231, float 0.000000e+00)  ; FMax(a,b)
  %3236 = call float @dx.op.binary.f32(i32 35, float %3226, float 0.000000e+00)  ; FMax(a,b)
  %3237 = call float @dx.op.binary.f32(i32 35, float %3229, float 0.000000e+00)  ; FMax(a,b)
  %3238 = call float @dx.op.binary.f32(i32 35, float %3232, float 0.000000e+00)  ; FMax(a,b)
  %3239 = fmul fast float %3233, %2936
  %3240 = fmul fast float %3234, %2936
  %3241 = fmul fast float %3235, %2936
  %3242 = fadd fast float %3239, %3040
  %3243 = fadd fast float %3240, %3041
  %3244 = fadd fast float %3241, %3042
  %3245 = fmul fast float %3236, %2936
  %3246 = fmul fast float %3237, %2936
  %3247 = fmul fast float %3238, %2936
  %3248 = fadd fast float %3245, %3037
  %3249 = fadd fast float %3246, %3038
  %3250 = fadd fast float %3247, %3039
  br label %3251

; <label>:3251                                    ; preds = %3215, %3036
  %3252 = phi float [ %3248, %3215 ], [ %3037, %3036 ]
  %3253 = phi float [ %3249, %3215 ], [ %3038, %3036 ]
  %3254 = phi float [ %3250, %3215 ], [ %3039, %3036 ]
  %3255 = phi float [ %3242, %3215 ], [ %3040, %3036 ]
  %3256 = phi float [ %3243, %3215 ], [ %3041, %3036 ]
  %3257 = phi float [ %3244, %3215 ], [ %3042, %3036 ]
  %3258 = fcmp fast olt float %2936, 1.000000e+00
  br i1 %3258, label %3259, label %4077, !dx.controlflow.hints !82

; <label>:3259                                    ; preds = %3251
  %3260 = extractvalue %dx.types.CBufRet.f32 %2892, 2
  %3261 = fadd fast float %3260, %113
  %3262 = fmul fast float %2869, 3.200000e+01
  %3263 = fmul fast float %2870, 3.200000e+01
  %3264 = fadd fast float %2895, %3262
  %3265 = fadd fast float %2896, %3263
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.CBufRet.f32 %3266, 1
  %3269 = fsub fast float %3264, %3267
  %3270 = fsub fast float %3265, %3268
  %3271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3272 = extractvalue %dx.types.CBufRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.CBufRet.f32 %3271, 1
  %3274 = fmul fast float %3269, %3272
  %3275 = fmul fast float %3270, %3273
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = fmul fast float %3274, %3277
  %3279 = extractvalue %dx.types.CBufRet.f32 %3276, 1
  %3280 = fadd fast float %3278, %3279
  %3281 = extractvalue %dx.types.CBufRet.f32 %3276, 2
  %3282 = fmul fast float %3281, %3275
  %3283 = extractvalue %dx.types.CBufRet.f32 %3276, 3
  %3284 = fadd fast float %3282, %3283
  %3285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3280, float %3284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3288, 1
  %3290 = extractvalue %dx.types.CBufRet.f32 %3288, 0
  %3291 = fsub fast float %3289, %3290
  %3292 = fmul fast float %3291, %3286
  %3293 = fadd fast float %3292, %3290
  %3294 = extractvalue %dx.types.CBufRet.f32 %3288, 3
  %3295 = extractvalue %dx.types.CBufRet.f32 %3288, 2
  %3296 = fsub fast float %3294, %3295
  %3297 = fmul fast float %3296, %3287
  %3298 = fadd fast float %3297, %3295
  %3299 = fsub fast float %3261, %3293
  %3300 = fsub fast float %3298, %3293
  %3301 = fdiv fast float %3299, %3300
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 0
  %3305 = fmul fast float %3304, %3302
  %3306 = extractvalue %dx.types.CBufRet.f32 %3303, 1
  %3307 = fadd fast float %3305, %3306
  %3308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3280, float %3284, float %3307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.ResRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.ResRet.f32 %3308, 2
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3316 = fmul fast float %3313, %3309
  %3317 = fmul fast float %3314, %3310
  %3318 = fmul fast float %3315, %3311
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.CBufRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.CBufRet.f32 %3319, 2
  %3323 = fadd fast float %3316, %3320
  %3324 = fadd fast float %3317, %3321
  %3325 = fadd fast float %3318, %3322
  %3326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3327 = extractvalue %dx.types.CBufRet.f32 %3326, 0
  %3328 = fmul fast float %3327, %3274
  %3329 = extractvalue %dx.types.CBufRet.f32 %3326, 1
  %3330 = fadd fast float %3328, %3329
  %3331 = extractvalue %dx.types.CBufRet.f32 %3326, 2
  %3332 = fmul fast float %3331, %3275
  %3333 = extractvalue %dx.types.CBufRet.f32 %3326, 3
  %3334 = fadd fast float %3332, %3333
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3338 = extractvalue %dx.types.CBufRet.f32 %3335, 2
  %3339 = extractvalue %dx.types.CBufRet.f32 %3335, 3
  %3340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3341 = extractvalue %dx.types.CBufRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.CBufRet.f32 %3340, 1
  %3343 = extractvalue %dx.types.CBufRet.f32 %3340, 2
  %3344 = extractvalue %dx.types.CBufRet.f32 %3340, 3
  %3345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3330, float %3334, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = extractvalue %dx.types.ResRet.f32 %3345, 3
  %3350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3330, float %3334, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3351 = extractvalue %dx.types.ResRet.f32 %3350, 0
  %3352 = extractvalue %dx.types.ResRet.f32 %3350, 1
  %3353 = extractvalue %dx.types.ResRet.f32 %3350, 2
  %3354 = extractvalue %dx.types.ResRet.f32 %3350, 3
  %3355 = fmul fast float %3346, %3323
  %3356 = fmul fast float %3351, %3323
  %3357 = fmul fast float %3353, %3323
  %3358 = fmul fast float %3349, %3323
  %3359 = fadd fast float %3355, %3336
  %3360 = fadd fast float %3356, %3337
  %3361 = fadd fast float %3357, %3338
  %3362 = fadd fast float %3358, %3339
  %3363 = fmul fast float %3347, %3323
  %3364 = fmul fast float %3352, %3323
  %3365 = fadd fast float %3363, %3341
  %3366 = fadd fast float %3364, %3342
  %3367 = fmul fast float %3348, %3323
  %3368 = fmul fast float %3354, %3323
  %3369 = fadd fast float %3367, %3343
  %3370 = fadd fast float %3368, %3344
  %3371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3330, float %3334, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = extractvalue %dx.types.ResRet.f32 %3371, 3
  %3376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3330, float %3334, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = extractvalue %dx.types.ResRet.f32 %3376, 3
  %3381 = fmul fast float %3372, %3324
  %3382 = fmul fast float %3377, %3324
  %3383 = fmul fast float %3379, %3324
  %3384 = fmul fast float %3375, %3324
  %3385 = fadd fast float %3359, %3381
  %3386 = fadd fast float %3360, %3382
  %3387 = fadd fast float %3361, %3383
  %3388 = fadd fast float %3362, %3384
  %3389 = fmul fast float %3373, %3324
  %3390 = fmul fast float %3378, %3324
  %3391 = fadd fast float %3365, %3389
  %3392 = fadd fast float %3366, %3390
  %3393 = fmul fast float %3374, %3324
  %3394 = fmul fast float %3380, %3324
  %3395 = fadd fast float %3369, %3393
  %3396 = fadd fast float %3370, %3394
  %3397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3330, float %3334, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3400 = extractvalue %dx.types.ResRet.f32 %3397, 2
  %3401 = extractvalue %dx.types.ResRet.f32 %3397, 3
  %3402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3330, float %3334, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 0
  %3404 = extractvalue %dx.types.ResRet.f32 %3402, 1
  %3405 = extractvalue %dx.types.ResRet.f32 %3402, 2
  %3406 = extractvalue %dx.types.ResRet.f32 %3402, 3
  %3407 = fmul fast float %3398, %3325
  %3408 = fmul fast float %3403, %3325
  %3409 = fmul fast float %3405, %3325
  %3410 = fmul fast float %3401, %3325
  %3411 = fadd fast float %3385, %3407
  %3412 = fadd fast float %3386, %3408
  %3413 = fadd fast float %3387, %3409
  %3414 = fadd fast float %3388, %3410
  %3415 = fmul fast float %3399, %3325
  %3416 = fmul fast float %3404, %3325
  %3417 = fadd fast float %3391, %3415
  %3418 = fadd fast float %3392, %3416
  %3419 = fmul fast float %3400, %3325
  %3420 = fmul fast float %3406, %3325
  %3421 = fadd fast float %3395, %3419
  %3422 = fadd fast float %3396, %3420
  %3423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3424 = extractvalue %dx.types.CBufRet.f32 %3423, 0
  %3425 = fsub fast float %2895, %3424
  %3426 = fsub fast float %3267, %2895
  %3427 = call float @dx.op.binary.f32(i32 35, float %3426, float %3425)  ; FMax(a,b)
  %3428 = extractvalue %dx.types.CBufRet.f32 %3423, 1
  %3429 = fsub fast float %2896, %3428
  %3430 = fsub fast float %3268, %2896
  %3431 = call float @dx.op.binary.f32(i32 35, float %3430, float %3429)  ; FMax(a,b)
  %3432 = call float @dx.op.binary.f32(i32 35, float %3427, float %3431)  ; FMax(a,b)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3271, 3
  %3434 = fmul fast float %3433, %3432
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3437 = extractvalue %dx.types.CBufRet.f32 %3436, 0
  %3438 = extractvalue %dx.types.CBufRet.f32 %3436, 1
  %3439 = extractvalue %dx.types.CBufRet.f32 %3436, 2
  %3440 = extractvalue %dx.types.CBufRet.f32 %3436, 3
  %3441 = fsub fast float %3437, %3411
  %3442 = fsub fast float %3438, %3412
  %3443 = fsub fast float %3439, %3413
  %3444 = fsub fast float %3440, %3414
  %3445 = fmul fast float %3441, %3435
  %3446 = fmul fast float %3442, %3435
  %3447 = fmul fast float %3443, %3435
  %3448 = fmul fast float %3444, %3435
  %3449 = fadd fast float %3445, %3411
  %3450 = fadd fast float %3446, %3412
  %3451 = fadd fast float %3447, %3413
  %3452 = fadd fast float %3448, %3414
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.CBufRet.f32 %3453, 1
  %3456 = fsub fast float %3454, %3417
  %3457 = fsub fast float %3455, %3418
  %3458 = fmul fast float %3456, %3435
  %3459 = fmul fast float %3457, %3435
  %3460 = fadd fast float %3458, %3417
  %3461 = fadd fast float %3459, %3418
  %3462 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3463 = extractvalue %dx.types.CBufRet.f32 %3453, 3
  %3464 = fsub fast float %3462, %3421
  %3465 = fsub fast float %3463, %3422
  %3466 = fmul fast float %3464, %3435
  %3467 = fmul fast float %3465, %3435
  %3468 = fadd fast float %3466, %3421
  %3469 = fadd fast float %3467, %3422
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = fmul fast float %3471, %3449
  %3473 = fmul fast float %3471, %3450
  %3474 = fmul fast float %3471, %3451
  %3475 = fmul fast float %3471, %3452
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = fmul fast float %3477, %3460
  %3479 = fmul fast float %3477, %3461
  %3480 = fadd fast float %3478, %3472
  %3481 = fadd fast float %3479, %3474
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = fmul fast float %3483, %3468
  %3485 = fmul fast float %3483, %3469
  %3486 = fadd fast float %3480, %3484
  %3487 = fadd fast float %3481, %3485
  %3488 = extractvalue %dx.types.CBufRet.f32 %3470, 1
  %3489 = fmul fast float %3488, %3449
  %3490 = fmul fast float %3488, %3450
  %3491 = fmul fast float %3488, %3451
  %3492 = fmul fast float %3488, %3452
  %3493 = extractvalue %dx.types.CBufRet.f32 %3476, 1
  %3494 = fmul fast float %3493, %3460
  %3495 = fmul fast float %3493, %3461
  %3496 = fadd fast float %3494, %3489
  %3497 = fadd fast float %3495, %3491
  %3498 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3499 = fmul fast float %3498, %3468
  %3500 = fmul fast float %3498, %3469
  %3501 = fadd fast float %3496, %3499
  %3502 = fadd fast float %3497, %3500
  %3503 = extractvalue %dx.types.CBufRet.f32 %3470, 2
  %3504 = fmul fast float %3503, %3449
  %3505 = fmul fast float %3503, %3450
  %3506 = fmul fast float %3503, %3451
  %3507 = fmul fast float %3503, %3452
  %3508 = extractvalue %dx.types.CBufRet.f32 %3476, 2
  %3509 = fmul fast float %3508, %3460
  %3510 = fmul fast float %3508, %3461
  %3511 = fadd fast float %3509, %3504
  %3512 = fadd fast float %3510, %3506
  %3513 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3514 = fmul fast float %3513, %3468
  %3515 = fmul fast float %3513, %3469
  %3516 = fadd fast float %3511, %3514
  %3517 = fadd fast float %3512, %3515
  %3518 = fmul fast float %3505, %3505
  %3519 = fmul fast float %3517, %3517
  %3520 = fmul fast float %3507, %3507
  %3521 = fadd fast float %3520, %3518
  %3522 = fadd fast float %3521, %3519
  %3523 = call float @dx.op.unary.f32(i32 24, float %3522)  ; Sqrt(value)
  %3524 = fcmp fast ugt float %3523, 0.000000e+00
  br i1 %3524, label %3525, label %3540

; <label>:3525                                    ; preds = %3259
  %3526 = fsub fast float -0.000000e+00, %3507
  %3527 = fdiv fast float %3526, %3523
  %3528 = fsub fast float -0.000000e+00, %3505
  %3529 = fdiv fast float %3528, %3523
  %3530 = fdiv fast float %3517, %3523
  %3531 = fmul fast float %3516, 0x3FE279A760000000
  %3532 = fmul fast float %3529, %3505
  %3533 = fmul fast float %3530, %3517
  %3534 = fmul fast float %3527, %3507
  %3535 = fadd fast float %3532, %3534
  %3536 = fsub fast float %3535, %3533
  %3537 = call float @dx.op.unary.f32(i32 6, float %3536)  ; FAbs(value)
  %3538 = fadd fast float %3537, 0x3DDB7CDFE0000000
  %3539 = fdiv fast float %3531, %3538
  br label %3540

; <label>:3540                                    ; preds = %3525, %3259
  %3541 = phi float [ %3539, %3525 ], [ 1.000000e+00, %3259 ]
  %3542 = fmul fast float %3490, %3490
  %3543 = fmul fast float %3502, %3502
  %3544 = fmul fast float %3492, %3492
  %3545 = fadd fast float %3544, %3542
  %3546 = fadd fast float %3545, %3543
  %3547 = call float @dx.op.unary.f32(i32 24, float %3546)  ; Sqrt(value)
  %3548 = fcmp fast ugt float %3547, 0.000000e+00
  br i1 %3548, label %3549, label %3564

; <label>:3549                                    ; preds = %3540
  %3550 = fsub fast float -0.000000e+00, %3492
  %3551 = fdiv fast float %3550, %3547
  %3552 = fsub fast float -0.000000e+00, %3490
  %3553 = fdiv fast float %3552, %3547
  %3554 = fdiv fast float %3502, %3547
  %3555 = fmul fast float %3501, 0x3FE279A760000000
  %3556 = fmul fast float %3553, %3490
  %3557 = fmul fast float %3554, %3502
  %3558 = fmul fast float %3551, %3492
  %3559 = fadd fast float %3556, %3558
  %3560 = fsub fast float %3559, %3557
  %3561 = call float @dx.op.unary.f32(i32 6, float %3560)  ; FAbs(value)
  %3562 = fadd fast float %3561, 0x3DDB7CDFE0000000
  %3563 = fdiv fast float %3555, %3562
  br label %3564

; <label>:3564                                    ; preds = %3549, %3540
  %3565 = phi float [ %3563, %3549 ], [ 1.000000e+00, %3540 ]
  %3566 = call float @dx.op.binary.f32(i32 36, float %3565, float %3541)  ; FMin(a,b)
  %3567 = fmul fast float %3473, %3473
  %3568 = fmul fast float %3487, %3487
  %3569 = fmul fast float %3475, %3475
  %3570 = fadd fast float %3569, %3567
  %3571 = fadd fast float %3570, %3568
  %3572 = call float @dx.op.unary.f32(i32 24, float %3571)  ; Sqrt(value)
  %3573 = fcmp fast ugt float %3572, 0.000000e+00
  br i1 %3573, label %3574, label %3589

; <label>:3574                                    ; preds = %3564
  %3575 = fsub fast float -0.000000e+00, %3475
  %3576 = fdiv fast float %3575, %3572
  %3577 = fsub fast float -0.000000e+00, %3473
  %3578 = fdiv fast float %3577, %3572
  %3579 = fdiv fast float %3487, %3572
  %3580 = fmul fast float %3486, 0x3FE279A760000000
  %3581 = fmul fast float %3578, %3473
  %3582 = fmul fast float %3579, %3487
  %3583 = fmul fast float %3576, %3475
  %3584 = fadd fast float %3581, %3583
  %3585 = fsub fast float %3584, %3582
  %3586 = call float @dx.op.unary.f32(i32 6, float %3585)  ; FAbs(value)
  %3587 = fadd fast float %3586, 0x3DDB7CDFE0000000
  %3588 = fdiv fast float %3580, %3587
  br label %3589

; <label>:3589                                    ; preds = %3574, %3564
  %3590 = phi float [ %3588, %3574 ], [ 1.000000e+00, %3564 ]
  %3591 = call float @dx.op.binary.f32(i32 36, float %3590, float %3566)  ; FMin(a,b)
  %3592 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3593 = fcmp fast olt float %3592, 1.000000e+00
  br i1 %3593, label %3594, label %3604

; <label>:3594                                    ; preds = %3589
  %3595 = fmul fast float %3592, %3473
  %3596 = fmul fast float %3592, %3487
  %3597 = fmul fast float %3592, %3475
  %3598 = fmul fast float %3592, %3490
  %3599 = fmul fast float %3592, %3502
  %3600 = fmul fast float %3592, %3492
  %3601 = fmul fast float %3592, %3505
  %3602 = fmul fast float %3592, %3517
  %3603 = fmul fast float %3592, %3507
  br label %3604

; <label>:3604                                    ; preds = %3594, %3589
  %3605 = phi float [ %3601, %3594 ], [ %3505, %3589 ]
  %3606 = phi float [ %3602, %3594 ], [ %3517, %3589 ]
  %3607 = phi float [ %3603, %3594 ], [ %3507, %3589 ]
  %3608 = phi float [ %3598, %3594 ], [ %3490, %3589 ]
  %3609 = phi float [ %3599, %3594 ], [ %3502, %3589 ]
  %3610 = phi float [ %3600, %3594 ], [ %3492, %3589 ]
  %3611 = phi float [ %3595, %3594 ], [ %3473, %3589 ]
  %3612 = phi float [ %3596, %3594 ], [ %3487, %3589 ]
  %3613 = phi float [ %3597, %3594 ], [ %3475, %3589 ]
  %3614 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3486)  ; FMax(a,b)
  %3615 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3501)  ; FMax(a,b)
  %3616 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3516)  ; FMax(a,b)
  %3617 = fcmp fast oge float %3274, 0.000000e+00
  %3618 = and i1 %3617, %3045
  %3619 = fcmp fast ole float %3274, 1.000000e+00
  %3620 = and i1 %3619, %3618
  %3621 = fcmp fast oge float %3275, 0.000000e+00
  %3622 = and i1 %3621, %3620
  %3623 = fcmp fast ole float %3275, 1.000000e+00
  %3624 = and i1 %3623, %3622
  br i1 %3624, label %3625, label %3770, !dx.controlflow.hints !83

; <label>:3625                                    ; preds = %3604
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 2
  %3628 = extractvalue %dx.types.CBufRet.f32 %3626, 3
  %3629 = fmul fast float %3627, %3274
  %3630 = fmul fast float %3628, %3275
  %3631 = call float @dx.op.unary.f32(i32 27, float %3629)  ; Round_ni(value)
  %3632 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3633 = fptosi float %3631 to i32
  %3634 = fptosi float %3632 to i32
  %3635 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3633, i32 %3634, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = and i32 %3636, 65535
  %3638 = lshr i32 %3636, 16
  %3639 = icmp eq i32 %3637, 65535
  br i1 %3639, label %3676, label %3640

; <label>:3640                                    ; preds = %3625
  %3641 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3642 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3643 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3644 = fmul fast float %3642, %3274
  %3645 = fmul fast float %3643, %3275
  %3646 = fmul fast float %3644, 1.250000e-01
  %3647 = fmul fast float %3645, 1.250000e-01
  %3648 = call float @dx.op.unary.f32(i32 27, float %3646)  ; Round_ni(value)
  %3649 = call float @dx.op.unary.f32(i32 27, float %3647)  ; Round_ni(value)
  %3650 = fmul fast float %3648, 8.000000e+00
  %3651 = fmul fast float %3649, 8.000000e+00
  %3652 = and i32 %3636, 255
  %3653 = lshr i32 %3636, 8
  %3654 = and i32 %3653, 255
  %3655 = mul nuw nsw i32 %3652, 9
  %3656 = uitofp i32 %3655 to float
  %3657 = mul nuw nsw i32 %3654, 9
  %3658 = uitofp i32 %3657 to float
  %3659 = fadd fast float %3656, 5.000000e-01
  %3660 = fadd fast float %3659, %3644
  %3661 = fsub fast float %3660, %3650
  %3662 = fadd fast float %3658, 5.000000e-01
  %3663 = fadd fast float %3662, %3645
  %3664 = fsub fast float %3663, %3651
  %3665 = fdiv fast float %3661, %3044
  %3666 = fdiv fast float %3664, %3641
  %3667 = fmul fast float %3302, 4.375000e-01
  %3668 = fadd fast float %3667, 3.125000e-02
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3665, float %3666, float %3668, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = fadd fast float %3670, %3614
  %3674 = fadd fast float %3671, %3615
  %3675 = fadd fast float %3672, %3616
  br label %3676

; <label>:3676                                    ; preds = %3640, %3625
  %3677 = phi float [ %3675, %3640 ], [ %3616, %3625 ]
  %3678 = phi float [ %3674, %3640 ], [ %3615, %3625 ]
  %3679 = phi float [ %3673, %3640 ], [ %3614, %3625 ]
  %3680 = icmp eq i32 %3638, 65535
  br i1 %3680, label %3770, label %3681

; <label>:3681                                    ; preds = %3676
  %3682 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3683 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3684 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3685 = fmul fast float %3683, %3274
  %3686 = fmul fast float %3684, %3275
  %3687 = fmul fast float %3685, 1.250000e-01
  %3688 = fmul fast float %3686, 1.250000e-01
  %3689 = call float @dx.op.unary.f32(i32 27, float %3687)  ; Round_ni(value)
  %3690 = call float @dx.op.unary.f32(i32 27, float %3688)  ; Round_ni(value)
  %3691 = fmul fast float %3689, 8.000000e+00
  %3692 = fmul fast float %3690, 8.000000e+00
  %3693 = fsub fast float %3685, %3691
  %3694 = fsub fast float %3686, %3692
  %3695 = fadd fast float %3693, 5.000000e-01
  %3696 = fadd fast float %3694, 5.000000e-01
  %3697 = and i32 %3638, 255
  %3698 = lshr i32 %3636, 24
  %3699 = mul nuw nsw i32 %3697, 9
  %3700 = uitofp i32 %3699 to float
  %3701 = mul nuw nsw i32 %3698, 9
  %3702 = uitofp i32 %3701 to float
  %3703 = fadd fast float %3695, %3700
  %3704 = fadd fast float %3696, %3702
  %3705 = fdiv fast float %3703, %3044
  %3706 = fdiv fast float %3704, %3682
  %3707 = fmul fast float %3302, 4.375000e-01
  %3708 = fadd fast float %3707, 3.125000e-02
  %3709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3705, float %3706, float %3708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = fadd fast float %3707, 5.312500e-01
  %3714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3705, float %3706, float %3713, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = fmul fast float %3715, 2.000000e+00
  %3719 = fmul fast float %3716, 2.000000e+00
  %3720 = fmul fast float %3717, 2.000000e+00
  %3721 = fadd fast float %3718, -1.000000e+00
  %3722 = fadd fast float %3719, -1.000000e+00
  %3723 = fadd fast float %3720, -1.000000e+00
  %3724 = fmul fast float %3721, %3721
  %3725 = fmul fast float %3722, %3722
  %3726 = fadd fast float %3724, %3725
  %3727 = fmul fast float %3723, %3723
  %3728 = fadd fast float %3726, %3727
  %3729 = call float @dx.op.unary.f32(i32 24, float %3728)  ; Sqrt(value)
  %3730 = fcmp fast ogt float %3729, 0.000000e+00
  br i1 %3730, label %3731, label %3735

; <label>:3731                                    ; preds = %3681
  %3732 = fdiv fast float %3721, %3729
  %3733 = fdiv fast float %3722, %3729
  %3734 = fdiv fast float %3723, %3729
  br label %3735

; <label>:3735                                    ; preds = %3731, %3681
  %3736 = phi float [ %3732, %3731 ], [ 0.000000e+00, %3681 ]
  %3737 = phi float [ %3733, %3731 ], [ 0.000000e+00, %3681 ]
  %3738 = phi float [ %3734, %3731 ], [ 0.000000e+00, %3681 ]
  %3739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3740 = extractvalue %dx.types.CBufRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.CBufRet.f32 %3739, 1
  %3742 = fsub fast float %2895, %3740
  %3743 = fsub fast float %2896, %3741
  %3744 = fmul fast float %3742, %3742
  %3745 = fmul fast float %3743, %3743
  %3746 = fadd fast float %3744, %3745
  %3747 = call float @dx.op.unary.f32(i32 24, float %3746)  ; Sqrt(value)
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = fsub fast float %3747, %3749
  %3752 = fdiv fast float %3751, %3750
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = fmul fast float %3753, 2.000000e+00
  %3755 = fsub fast float 3.000000e+00, %3754
  %3756 = fmul fast float %3753, %3753
  %3757 = fmul fast float %3756, %3755
  %3758 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3758)  ; FMax(a,b)
  %3760 = fmul fast float %3759, 0x400C5BF8A0000000
  %3761 = fmul fast float %3757, %3710
  %3762 = fmul fast float %3761, %3760
  %3763 = fadd fast float %3762, %3679
  %3764 = fmul fast float %3757, %3711
  %3765 = fmul fast float %3764, %3760
  %3766 = fadd fast float %3765, %3678
  %3767 = fmul fast float %3757, %3712
  %3768 = fmul fast float %3767, %3760
  %3769 = fadd fast float %3768, %3677
  br label %3770

; <label>:3770                                    ; preds = %3735, %3676, %3604
  %3771 = phi float [ %3769, %3735 ], [ %3677, %3676 ], [ %3616, %3604 ]
  %3772 = phi float [ %3766, %3735 ], [ %3678, %3676 ], [ %3615, %3604 ]
  %3773 = phi float [ %3763, %3735 ], [ %3679, %3676 ], [ %3614, %3604 ]
  %3774 = fcmp fast ogt float %3261, %3298
  %3775 = and i1 %3617, %3774
  %3776 = and i1 %3619, %3775
  %3777 = and i1 %3621, %3776
  %3778 = and i1 %3623, %3777
  br i1 %3778, label %3779, label %3836, !dx.controlflow.hints !84

; <label>:3779                                    ; preds = %3770
  %3780 = fmul fast float %3300, 0x3FC24924A0000000
  %3781 = fsub fast float %3261, %3298
  %3782 = fdiv fast float %3781, %3780
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.CBufRet.f32 %3786, 2
  %3790 = fsub fast float %3785, %3773
  %3791 = fsub fast float %3787, %3611
  %3792 = fsub fast float %3788, %3612
  %3793 = fsub fast float %3789, %3613
  %3794 = fmul fast float %3790, %3783
  %3795 = fmul fast float %3791, %3783
  %3796 = fmul fast float %3792, %3783
  %3797 = fmul fast float %3793, %3783
  %3798 = fadd fast float %3794, %3773
  %3799 = fadd fast float %3795, %3611
  %3800 = fadd fast float %3796, %3612
  %3801 = fadd fast float %3797, %3613
  %3802 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.CBufRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3807 = fsub fast float %3802, %3772
  %3808 = fsub fast float %3804, %3608
  %3809 = fsub fast float %3805, %3609
  %3810 = fsub fast float %3806, %3610
  %3811 = fmul fast float %3807, %3783
  %3812 = fmul fast float %3808, %3783
  %3813 = fmul fast float %3809, %3783
  %3814 = fmul fast float %3810, %3783
  %3815 = fadd fast float %3811, %3772
  %3816 = fadd fast float %3812, %3608
  %3817 = fadd fast float %3813, %3609
  %3818 = fadd fast float %3814, %3610
  %3819 = extractvalue %dx.types.CBufRet.f32 %3784, 2
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.CBufRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3824 = fsub fast float %3819, %3771
  %3825 = fsub fast float %3821, %3605
  %3826 = fsub fast float %3822, %3606
  %3827 = fsub fast float %3823, %3607
  %3828 = fmul fast float %3824, %3783
  %3829 = fmul fast float %3825, %3783
  %3830 = fmul fast float %3826, %3783
  %3831 = fmul fast float %3827, %3783
  %3832 = fadd fast float %3828, %3771
  %3833 = fadd fast float %3829, %3605
  %3834 = fadd fast float %3830, %3606
  %3835 = fadd fast float %3831, %3607
  br label %3836

; <label>:3836                                    ; preds = %3779, %3770
  %3837 = phi float [ %3832, %3779 ], [ %3771, %3770 ]
  %3838 = phi float [ %3833, %3779 ], [ %3605, %3770 ]
  %3839 = phi float [ %3834, %3779 ], [ %3606, %3770 ]
  %3840 = phi float [ %3835, %3779 ], [ %3607, %3770 ]
  %3841 = phi float [ %3815, %3779 ], [ %3772, %3770 ]
  %3842 = phi float [ %3816, %3779 ], [ %3608, %3770 ]
  %3843 = phi float [ %3817, %3779 ], [ %3609, %3770 ]
  %3844 = phi float [ %3818, %3779 ], [ %3610, %3770 ]
  %3845 = phi float [ %3798, %3779 ], [ %3773, %3770 ]
  %3846 = phi float [ %3799, %3779 ], [ %3611, %3770 ]
  %3847 = phi float [ %3800, %3779 ], [ %3612, %3770 ]
  %3848 = phi float [ %3801, %3779 ], [ %3613, %3770 ]
  %3849 = extractvalue %dx.types.CBufRet.f32 %3423, 3
  %3850 = fmul fast float %3849, %3845
  %3851 = fmul fast float %3849, %3841
  %3852 = fmul fast float %3849, %3837
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 3
  %3855 = fmul fast float %3850, %3854
  %3856 = fmul fast float %3851, %3854
  %3857 = fmul fast float %3852, %3854
  %3858 = fmul fast float %3846, 1.500000e+00
  %3859 = fmul fast float %3858, %3849
  %3860 = fmul fast float %3859, %3854
  %3861 = fmul fast float %3847, 1.500000e+00
  %3862 = fmul fast float %3861, %3849
  %3863 = fmul fast float %3862, %3854
  %3864 = fmul fast float %3848, 1.500000e+00
  %3865 = fmul fast float %3864, %3849
  %3866 = fmul fast float %3865, %3854
  %3867 = fmul fast float %3842, 1.500000e+00
  %3868 = fmul fast float %3867, %3849
  %3869 = fmul fast float %3868, %3854
  %3870 = fmul fast float %3843, 1.500000e+00
  %3871 = fmul fast float %3870, %3849
  %3872 = fmul fast float %3871, %3854
  %3873 = fmul fast float %3844, 1.500000e+00
  %3874 = fmul fast float %3873, %3849
  %3875 = fmul fast float %3874, %3854
  %3876 = fmul fast float %3838, 1.500000e+00
  %3877 = fmul fast float %3876, %3849
  %3878 = fmul fast float %3877, %3854
  %3879 = fmul fast float %3839, 1.500000e+00
  %3880 = fmul fast float %3879, %3849
  %3881 = fmul fast float %3880, %3854
  %3882 = fmul fast float %3840, 1.500000e+00
  %3883 = fmul fast float %3882, %3849
  %3884 = fmul fast float %3883, %3854
  %3885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3855)  ; FMax(a,b)
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3860, float %3863, float %3866, float %3860, float %3863, float %3866)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = fcmp fast oeq float %3886, 0.000000e+00
  %3888 = fcmp fast oeq float %3885, 0.000000e+00
  %3889 = or i1 %3888, %3887
  br i1 %3889, label %3919, label %3890

; <label>:3890                                    ; preds = %3836
  %3891 = fsub fast float -0.000000e+00, %3866
  %3892 = fsub fast float -0.000000e+00, %3860
  %3893 = call float @dx.op.unary.f32(i32 24, float %3886)  ; Sqrt(value)
  %3894 = fdiv fast float %3893, %3885
  %3895 = fcmp fast ogt float %3894, 0x3FFB6F8900000000
  %3896 = select i1 %3895, float 0x3FFB6F8900000000, float %3894
  %3897 = fmul fast float %3896, 0x3FE8A23460000000
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = call float @dx.op.binary.f32(i32 35, float %3896, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3900 = fmul fast float %3898, %3885
  %3901 = fmul fast float %3899, 0x3FF279A740000000
  %3902 = fadd fast float %3901, -1.000000e+00
  %3903 = call float @dx.op.dot3.f32(i32 55, float %3891, float %3892, float %3863, float %3891, float %3892, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3904 = call float @dx.op.unary.f32(i32 25, float %3903)  ; Rsqrt(value)
  %3905 = fmul fast float %3904, %3891
  %3906 = fmul fast float %3904, %3892
  %3907 = fmul fast float %3904, %3863
  %3908 = fmul fast float %3902, %3902
  %3909 = fsub fast float 1.000000e+00, %3908
  %3910 = fmul fast float %3899, 0x40005F8BE0000000
  %3911 = fsub fast float 0x400C5BF8A0000000, %3910
  %3912 = fdiv fast float %3900, %3911
  %3913 = fmul fast float %3912, 0x3FEE31C3C0000000
  %3914 = fmul fast float %3913, %3909
  %3915 = fmul fast float %3899, 0x3FDACB7480000000
  %3916 = fadd fast float %3915, 0xBFD7347680000000
  %3917 = fmul fast float %3916, %3912
  %3918 = fmul fast float %3917, %3909
  br label %3919

; <label>:3919                                    ; preds = %3890, %3836
  %3920 = phi float [ %3905, %3890 ], [ 0.000000e+00, %3836 ]
  %3921 = phi float [ %3906, %3890 ], [ 0.000000e+00, %3836 ]
  %3922 = phi float [ %3907, %3890 ], [ 0.000000e+00, %3836 ]
  %3923 = phi float [ %3914, %3890 ], [ 0.000000e+00, %3836 ]
  %3924 = phi float [ %3918, %3890 ], [ 0.000000e+00, %3836 ]
  %3925 = call float @dx.op.dot3.f32(i32 55, float %3920, float %3921, float %3922, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3926 = fmul fast float %3925, %3925
  %3927 = fmul fast float %3926, 0x3FEE471020000000
  %3928 = fadd fast float %3927, 0xBFD42F6020000000
  %3929 = fmul fast float %3885, 0x3FD20DD760000000
  %3930 = fmul fast float %3928, %3924
  %3931 = fmul fast float %3923, 0x3FDF454380000000
  %3932 = fmul fast float %3931, %3925
  %3933 = fadd fast float %3932, %3929
  %3934 = fadd fast float %3933, %3930
  %3935 = call float @dx.op.dot3.f32(i32 55, float %3920, float %3921, float %3922, float %2885, float %2886, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %3936 = fmul fast float %3935, 0x3FDF454380000000
  %3937 = fmul fast float %3935, %3935
  %3938 = fmul fast float %3937, 0x3FEE471020000000
  %3939 = fadd fast float %3938, 0xBFD42F6020000000
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3885, float %3923, float %3924, float 0x3FD20DD760000000, float %3936, float %3939)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3856)  ; FMax(a,b)
  %3942 = call float @dx.op.dot3.f32(i32 55, float %3869, float %3872, float %3875, float %3869, float %3872, float %3875)  ; Dot3(ax,ay,az,bx,by,bz)
  %3943 = fcmp fast oeq float %3942, 0.000000e+00
  %3944 = fcmp fast oeq float %3941, 0.000000e+00
  %3945 = or i1 %3944, %3943
  br i1 %3945, label %3975, label %3946

; <label>:3946                                    ; preds = %3919
  %3947 = fsub fast float -0.000000e+00, %3875
  %3948 = fsub fast float -0.000000e+00, %3869
  %3949 = call float @dx.op.unary.f32(i32 24, float %3942)  ; Sqrt(value)
  %3950 = fdiv fast float %3949, %3941
  %3951 = fcmp fast ogt float %3950, 0x3FFB6F8900000000
  %3952 = select i1 %3951, float 0x3FFB6F8900000000, float %3950
  %3953 = fmul fast float %3952, 0x3FE8A23460000000
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3955 = call float @dx.op.binary.f32(i32 35, float %3952, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3956 = fmul fast float %3954, %3941
  %3957 = fmul fast float %3955, 0x3FF279A740000000
  %3958 = fadd fast float %3957, -1.000000e+00
  %3959 = call float @dx.op.dot3.f32(i32 55, float %3947, float %3948, float %3872, float %3947, float %3948, float %3872)  ; Dot3(ax,ay,az,bx,by,bz)
  %3960 = call float @dx.op.unary.f32(i32 25, float %3959)  ; Rsqrt(value)
  %3961 = fmul fast float %3960, %3947
  %3962 = fmul fast float %3960, %3948
  %3963 = fmul fast float %3960, %3872
  %3964 = fmul fast float %3958, %3958
  %3965 = fsub fast float 1.000000e+00, %3964
  %3966 = fmul fast float %3955, 0x40005F8BE0000000
  %3967 = fsub fast float 0x400C5BF8A0000000, %3966
  %3968 = fdiv fast float %3956, %3967
  %3969 = fmul fast float %3968, 0x3FEE31C3C0000000
  %3970 = fmul fast float %3969, %3965
  %3971 = fmul fast float %3955, 0x3FDACB7480000000
  %3972 = fadd fast float %3971, 0xBFD7347680000000
  %3973 = fmul fast float %3972, %3968
  %3974 = fmul fast float %3973, %3965
  br label %3975

; <label>:3975                                    ; preds = %3946, %3919
  %3976 = phi float [ %3961, %3946 ], [ 0.000000e+00, %3919 ]
  %3977 = phi float [ %3962, %3946 ], [ 0.000000e+00, %3919 ]
  %3978 = phi float [ %3963, %3946 ], [ 0.000000e+00, %3919 ]
  %3979 = phi float [ %3970, %3946 ], [ 0.000000e+00, %3919 ]
  %3980 = phi float [ %3974, %3946 ], [ 0.000000e+00, %3919 ]
  %3981 = call float @dx.op.dot3.f32(i32 55, float %3976, float %3977, float %3978, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = fmul fast float %3981, %3981
  %3983 = fmul fast float %3982, 0x3FEE471020000000
  %3984 = fadd fast float %3983, 0xBFD42F6020000000
  %3985 = fmul fast float %3941, 0x3FD20DD760000000
  %3986 = fmul fast float %3984, %3980
  %3987 = fmul fast float %3979, 0x3FDF454380000000
  %3988 = fmul fast float %3987, %3981
  %3989 = fadd fast float %3988, %3985
  %3990 = fadd fast float %3989, %3986
  %3991 = call float @dx.op.dot3.f32(i32 55, float %3976, float %3977, float %3978, float %2885, float %2886, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %3992 = fmul fast float %3991, 0x3FDF454380000000
  %3993 = fmul fast float %3991, %3991
  %3994 = fmul fast float %3993, 0x3FEE471020000000
  %3995 = fadd fast float %3994, 0xBFD42F6020000000
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3941, float %3979, float %3980, float 0x3FD20DD760000000, float %3992, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3857)  ; FMax(a,b)
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3881, float %3884, float %3878, float %3881, float %3884)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = fcmp fast oeq float %3998, 0.000000e+00
  %4000 = fcmp fast oeq float %3997, 0.000000e+00
  %4001 = or i1 %4000, %3999
  br i1 %4001, label %4031, label %4002

; <label>:4002                                    ; preds = %3975
  %4003 = fsub fast float -0.000000e+00, %3884
  %4004 = fsub fast float -0.000000e+00, %3878
  %4005 = call float @dx.op.unary.f32(i32 24, float %3998)  ; Sqrt(value)
  %4006 = fdiv fast float %4005, %3997
  %4007 = fcmp fast ogt float %4006, 0x3FFB6F8900000000
  %4008 = select i1 %4007, float 0x3FFB6F8900000000, float %4006
  %4009 = fmul fast float %4008, 0x3FE8A23460000000
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = call float @dx.op.binary.f32(i32 35, float %4008, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4012 = fmul fast float %4010, %3997
  %4013 = fmul fast float %4011, 0x3FF279A740000000
  %4014 = fadd fast float %4013, -1.000000e+00
  %4015 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %3881, float %4003, float %4004, float %3881)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.unary.f32(i32 25, float %4015)  ; Rsqrt(value)
  %4017 = fmul fast float %4016, %4003
  %4018 = fmul fast float %4016, %4004
  %4019 = fmul fast float %4016, %3881
  %4020 = fmul fast float %4014, %4014
  %4021 = fsub fast float 1.000000e+00, %4020
  %4022 = fmul fast float %4011, 0x40005F8BE0000000
  %4023 = fsub fast float 0x400C5BF8A0000000, %4022
  %4024 = fdiv fast float %4012, %4023
  %4025 = fmul fast float %4024, 0x3FEE31C3C0000000
  %4026 = fmul fast float %4025, %4021
  %4027 = fmul fast float %4011, 0x3FDACB7480000000
  %4028 = fadd fast float %4027, 0xBFD7347680000000
  %4029 = fmul fast float %4028, %4024
  %4030 = fmul fast float %4029, %4021
  br label %4031

; <label>:4031                                    ; preds = %4002, %3975
  %4032 = phi float [ %4017, %4002 ], [ 0.000000e+00, %3975 ]
  %4033 = phi float [ %4018, %4002 ], [ 0.000000e+00, %3975 ]
  %4034 = phi float [ %4019, %4002 ], [ 0.000000e+00, %3975 ]
  %4035 = phi float [ %4026, %4002 ], [ 0.000000e+00, %3975 ]
  %4036 = phi float [ %4030, %4002 ], [ 0.000000e+00, %3975 ]
  %4037 = call float @dx.op.dot3.f32(i32 55, float %4032, float %4033, float %4034, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %4038 = fmul fast float %4037, %4037
  %4039 = fmul fast float %4038, 0x3FEE471020000000
  %4040 = fadd fast float %4039, 0xBFD42F6020000000
  %4041 = fmul fast float %3997, 0x3FD20DD760000000
  %4042 = fmul fast float %4040, %4036
  %4043 = fmul fast float %4035, 0x3FDF454380000000
  %4044 = fmul fast float %4043, %4037
  %4045 = fadd fast float %4044, %4041
  %4046 = fadd fast float %4045, %4042
  %4047 = call float @dx.op.dot3.f32(i32 55, float %4032, float %4033, float %4034, float %2885, float %2886, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = fmul fast float %4047, 0x3FDF454380000000
  %4049 = fmul fast float %4047, %4047
  %4050 = fmul fast float %4049, 0x3FEE471020000000
  %4051 = fadd fast float %4050, 0xBFD42F6020000000
  %4052 = call float @dx.op.dot3.f32(i32 55, float %3997, float %4035, float %4036, float 0x3FD20DD760000000, float %4048, float %4051)  ; Dot3(ax,ay,az,bx,by,bz)
  %4053 = call float @dx.op.binary.f32(i32 35, float %3934, float 0.000000e+00)  ; FMax(a,b)
  %4054 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %4055 = call float @dx.op.binary.f32(i32 35, float %4046, float 0.000000e+00)  ; FMax(a,b)
  %4056 = call float @dx.op.binary.f32(i32 35, float %3940, float 0.000000e+00)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 35, float %3996, float 0.000000e+00)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 35, float %4052, float 0.000000e+00)  ; FMax(a,b)
  %4059 = fsub fast float %3255, %4053
  %4060 = fsub fast float %3256, %4054
  %4061 = fsub fast float %3257, %4055
  %4062 = fmul fast float %4059, %2936
  %4063 = fmul fast float %4060, %2936
  %4064 = fmul fast float %4061, %2936
  %4065 = fadd fast float %4062, %4053
  %4066 = fadd fast float %4063, %4054
  %4067 = fadd fast float %4064, %4055
  %4068 = fsub fast float %3252, %4056
  %4069 = fsub fast float %3253, %4057
  %4070 = fsub fast float %3254, %4058
  %4071 = fmul fast float %4068, %2936
  %4072 = fmul fast float %4069, %2936
  %4073 = fmul fast float %4070, %2936
  %4074 = fadd fast float %4071, %4056
  %4075 = fadd fast float %4072, %4057
  %4076 = fadd fast float %4073, %4058
  br label %4077

; <label>:4077                                    ; preds = %4031, %3251
  %4078 = phi float [ %4074, %4031 ], [ %3252, %3251 ]
  %4079 = phi float [ %4075, %4031 ], [ %3253, %3251 ]
  %4080 = phi float [ %4076, %4031 ], [ %3254, %3251 ]
  %4081 = phi float [ %4065, %4031 ], [ %3255, %3251 ]
  %4082 = phi float [ %4066, %4031 ], [ %3256, %3251 ]
  %4083 = phi float [ %4067, %4031 ], [ %3257, %3251 ]
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = call float @dx.op.binary.f32(i32 36, float %2872, float %4085)  ; FMin(a,b)
  %4087 = fsub fast float 1.000000e+00, %2888
  %4088 = fmul fast float %4086, %4087
  %4089 = fsub fast float 1.000000e+00, %4088
  %4090 = bitcast float %4089 to i32
  %4091 = sub nsw i32 2129859010, %4090
  %4092 = bitcast i32 %4091 to float
  %4093 = call float @dx.op.binary.f32(i32 36, float %2873, float %4085)  ; FMin(a,b)
  %4094 = fmul fast float %4093, %4087
  %4095 = fsub fast float 1.000000e+00, %4094
  %4096 = bitcast float %4095 to i32
  %4097 = sub nsw i32 2129859010, %4096
  %4098 = bitcast i32 %4097 to float
  %4099 = call float @dx.op.binary.f32(i32 36, float %2874, float %4085)  ; FMin(a,b)
  %4100 = fmul fast float %4099, %4087
  %4101 = fsub fast float 1.000000e+00, %4100
  %4102 = bitcast float %4101 to i32
  %4103 = sub nsw i32 2129859010, %4102
  %4104 = bitcast i32 %4103 to float
  %4105 = fmul fast float %4081, %2888
  %4106 = fmul fast float %4105, %4092
  %4107 = fmul fast float %4082, %2888
  %4108 = fmul fast float %4107, %4098
  %4109 = fmul fast float %4083, %2888
  %4110 = fmul fast float %4109, %4104
  %4111 = call float @dx.op.binary.f32(i32 36, float %2866, float %4085)  ; FMin(a,b)
  %4112 = fmul fast float %4111, %4087
  %4113 = fsub fast float 1.000000e+00, %4112
  %4114 = bitcast float %4113 to i32
  %4115 = sub nsw i32 2129859010, %4114
  %4116 = bitcast i32 %4115 to float
  %4117 = call float @dx.op.binary.f32(i32 36, float %2867, float %4085)  ; FMin(a,b)
  %4118 = fmul fast float %4117, %4087
  %4119 = fsub fast float 1.000000e+00, %4118
  %4120 = bitcast float %4119 to i32
  %4121 = sub nsw i32 2129859010, %4120
  %4122 = bitcast i32 %4121 to float
  %4123 = call float @dx.op.binary.f32(i32 36, float %2877, float %4085)  ; FMin(a,b)
  %4124 = fmul fast float %4123, %4087
  %4125 = fsub fast float 1.000000e+00, %4124
  %4126 = bitcast float %4125 to i32
  %4127 = sub nsw i32 2129859010, %4126
  %4128 = bitcast i32 %4127 to float
  %4129 = fmul fast float %4078, %2888
  %4130 = fmul fast float %4129, %4116
  %4131 = fmul fast float %4079, %2888
  %4132 = fmul fast float %4131, %4122
  %4133 = fmul fast float %4080, %2888
  %4134 = fmul fast float %4133, %4128
  %4135 = call float @dx.op.dot3.f32(i32 55, float %4106, float %4108, float %4110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4136 = select i1 %182, float 0.000000e+00, float %4106
  %4137 = select i1 %182, float %4135, float %4108
  %4138 = select i1 %182, float 0.000000e+00, float %4110
  %4139 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4132, float %4134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = select i1 %182, float 0.000000e+00, float %4130
  %4141 = select i1 %182, float %4139, float %4132
  %4142 = select i1 %182, float 0.000000e+00, float %4134
  %4143 = fmul fast float %2879, 9.843750e-01
  %4144 = fmul fast float %2875, 9.843750e-01
  %4145 = fadd fast float %4143, 7.812500e-03
  %4146 = fadd fast float %4144, 7.812500e-03
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4145, float %4146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 3
  %4150 = fmul fast float %4148, %2866
  %4151 = fmul fast float %4148, %2867
  %4152 = fmul fast float %4148, %2877
  %4153 = fadd fast float %4150, %4149
  %4154 = fadd fast float %4151, %4149
  %4155 = fadd fast float %4152, %4149
  %4156 = fcmp fast ogt float %2243, 0.000000e+00
  br i1 %4156, label %4157, label %4183

; <label>:4157                                    ; preds = %4077
  %4158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2243, float %2879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = extractvalue %dx.types.ResRet.f32 %4158, 1
  %4161 = extractvalue %dx.types.ResRet.f32 %4158, 2
  %4162 = fadd fast float %4159, -5.000000e-01
  %4163 = fadd fast float %4160, -5.000000e-01
  %4164 = fadd fast float %4161, -5.000000e-01
  %4165 = fsub fast float 1.000000e+00, %2866
  %4166 = fsub fast float 1.000000e+00, %2867
  %4167 = fsub fast float 1.000000e+00, %2877
  %4168 = fmul fast float %2866, 4.000000e+00
  %4169 = fmul fast float %4168, %4165
  %4170 = fmul fast float %4169, %4162
  %4171 = fmul fast float %2867, 4.000000e+00
  %4172 = fmul fast float %4171, %4166
  %4173 = fmul fast float %4172, %4163
  %4174 = fmul fast float %2877, 4.000000e+00
  %4175 = fmul fast float %4174, %4167
  %4176 = fmul fast float %4175, %4164
  %4177 = fadd fast float %4170, %4153
  %4178 = fadd fast float %4173, %4154
  %4179 = fadd fast float %4176, %4155
  %4180 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4181 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4182 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  br label %4183

; <label>:4183                                    ; preds = %4157, %4077
  %4184 = phi float [ %4180, %4157 ], [ %4153, %4077 ]
  %4185 = phi float [ %4181, %4157 ], [ %4154, %4077 ]
  %4186 = phi float [ %4182, %4157 ], [ %4155, %4077 ]
  %4187 = call float @dx.op.binary.f32(i32 35, float %4185, float %4186)  ; FMax(a,b)
  %4188 = call float @dx.op.binary.f32(i32 35, float %4184, float %4187)  ; FMax(a,b)
  %4189 = fsub fast float 1.000000e+00, %4188
  %4190 = fmul fast float %4189, %4136
  %4191 = fmul fast float %4189, %4137
  %4192 = fmul fast float %4189, %4138
  %4193 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2873, float %2874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4194 = fcmp fast ogt float %4193, 0x3E7FF19E20000000
  %4195 = fdiv fast float 1.000000e+00, %4193
  %4196 = select i1 %4194, float %4195, float 0.000000e+00
  %4197 = fmul fast float %4196, %2872
  %4198 = fmul fast float %4196, %2873
  %4199 = fmul fast float %4196, %2874
  %4200 = fadd fast float %4197, -1.000000e+00
  %4201 = fadd fast float %4198, -1.000000e+00
  %4202 = fadd fast float %4199, -1.000000e+00
  %4203 = fmul fast float %4200, 5.000000e-01
  %4204 = fmul fast float %4201, 5.000000e-01
  %4205 = fmul fast float %4202, 5.000000e-01
  %4206 = fadd fast float %4203, 1.000000e+00
  %4207 = fadd fast float %4204, 1.000000e+00
  %4208 = fadd fast float %4205, 1.000000e+00
  %4209 = fmul fast float %4184, %4140
  %4210 = fmul fast float %4185, %4141
  %4211 = fmul fast float %4186, %4142
  %4212 = fsub fast float 1.000000e+00, %2879
  %4213 = bitcast float %4212 to i32
  %4214 = sitofp i32 %4213 to float
  %4215 = fmul fast float %4214, 5.000000e+00
  %4216 = fadd fast float %4215, 0xC1EFBF8940000000
  %4217 = fptosi float %4216 to i32
  %4218 = bitcast i32 %4217 to float
  %4219 = fmul fast float %4218, %2242
  %4220 = fmul fast float %4136, %4219
  %4221 = fmul fast float %4220, %4189
  %4222 = fmul fast float %4221, %4206
  %4223 = fmul fast float %4137, %4219
  %4224 = fmul fast float %4223, %4189
  %4225 = fmul fast float %4224, %4207
  %4226 = fmul fast float %4138, %4219
  %4227 = fmul fast float %4226, %4189
  %4228 = fmul fast float %4227, %4208
  %4229 = fmul fast float %4190, %2263
  %4230 = fmul fast float %4191, %2263
  %4231 = fmul fast float %4192, %2263
  %4232 = fadd fast float %4209, %2244
  %4233 = fadd fast float %4232, %4222
  %4234 = fmul fast float %4233, %2263
  %4235 = fadd fast float %4210, %2245
  %4236 = fadd fast float %4235, %4225
  %4237 = fmul fast float %4236, %2263
  %4238 = fadd fast float %4211, %2246
  %4239 = fadd fast float %4238, %4228
  %4240 = fmul fast float %4239, %2263
  %4241 = bitcast i32 %2891 to float
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4244 = fcmp fast oeq float %4243, 0.000000e+00
  br i1 %4244, label %4472, label %4245

; <label>:4245                                    ; preds = %4183
  %4246 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4247 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4242, 2
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.CBufRet.f32 %4253, 1
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4250, float %4251, float %4252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = select i1 %182, float %4254, float %4250
  %4258 = select i1 %182, float %4256, float %4251
  %4259 = select i1 %182, float %4255, float %4252
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 1
  %4262 = fcmp fast une float %4261, 0.000000e+00
  br i1 %4262, label %4263, label %4280

; <label>:4263                                    ; preds = %4245
  %4264 = fptoui float %64 to i32
  %4265 = fptoui float %65 to i32
  %4266 = lshr i32 %4264, 4
  %4267 = lshr i32 %4265, 4
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 0
  %4270 = fptoui float %4269 to i32
  %4271 = add i32 %4270, 15
  %4272 = lshr i32 %4271, 4
  %4273 = mul i32 %4272, %4267
  %4274 = add i32 %4273, %4266
  %4275 = shl i32 %4274, 3
  %4276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.i32 %4276, 0
  %4278 = and i32 %4277, -268435456
  %4279 = icmp eq i32 %4278, -1342177280
  br i1 %4279, label %4290, label %4280

; <label>:4280                                    ; preds = %4263, %4245
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4283 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4284 = fmul fast float %4282, %64
  %4285 = fmul fast float %4283, %65
  %4286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4284, float %4285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.ResRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.ResRet.f32 %4286, 2
  br label %4290

; <label>:4290                                    ; preds = %4280, %4263
  %4291 = phi float [ %4287, %4280 ], [ 0.000000e+00, %4263 ]
  %4292 = phi float [ %4288, %4280 ], [ 0.000000e+00, %4263 ]
  %4293 = phi float [ %4289, %4280 ], [ 0.000000e+00, %4263 ]
  %4294 = call float @dx.op.binary.f32(i32 36, float %4292, float %4293)  ; FMin(a,b)
  %4295 = call float @dx.op.binary.f32(i32 36, float %4291, float %4294)  ; FMin(a,b)
  %4296 = fcmp fast ogt float %4295, 0.000000e+00
  br i1 %4296, label %4297, label %4472, !dx.controlflow.hints !85

; <label>:4297                                    ; preds = %4290
  %4298 = fmul fast float %4291, %4257
  %4299 = fmul fast float %4292, %4258
  %4300 = fmul fast float %4293, %4259
  %4301 = fsub fast float %4246, %2865
  %4302 = fsub fast float %4247, %2864
  %4303 = fsub fast float %4248, %2863
  %4304 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float %4301, float %4302, float %4303)  ; Dot3(ax,ay,az,bx,by,bz)
  %4305 = call float @dx.op.unary.f32(i32 25, float %4304)  ; Rsqrt(value)
  %4306 = fmul fast float %4305, %4301
  %4307 = fmul fast float %4305, %4302
  %4308 = fmul fast float %4305, %4303
  %4309 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %4310 = call float @dx.op.dot3.f32(i32 55, float %2862, float %2861, float %2860, float %4306, float %4307, float %4308)  ; Dot3(ax,ay,az,bx,by,bz)
  %4311 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4312 = fmul fast float %4311, %4311
  %4313 = fmul fast float %4312, %4241
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4314, %4311
  %4316 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float %4306, float %4307, float %4308)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = fmul fast float %4316, %4316
  %4318 = call float @dx.op.unary.f32(i32 6, float %4309)  ; FAbs(value)
  %4319 = fsub fast float 1.000000e+00, %2875
  %4320 = call float @dx.op.binary.f32(i32 35, float %4319, float 0x3F847AE140000000)  ; FMax(a,b)
  %4321 = fmul fast float %4320, %4320
  %4322 = fmul fast float %4321, %4321
  %4323 = fsub fast float 1.000000e+00, %4322
  %4324 = fmul fast float %2879, %2879
  %4325 = fmul fast float %4324, %4323
  %4326 = fadd fast float %4325, %4322
  %4327 = bitcast float %4326 to i32
  %4328 = ashr i32 %4327, 1
  %4329 = add nsw i32 %4328, 532487669
  %4330 = bitcast i32 %4329 to float
  %4331 = fadd fast float %4330, %2879
  %4332 = fmul fast float %4322, %4317
  %4333 = fsub fast float 1.000000e+00, %4317
  %4334 = fadd fast float %4333, %4332
  %4335 = fmul fast float %4318, %4318
  %4336 = fmul fast float %4335, %4323
  %4337 = fadd fast float %4336, %4322
  %4338 = bitcast float %4337 to i32
  %4339 = ashr i32 %4338, 1
  %4340 = add nsw i32 %4339, 532487669
  %4341 = bitcast i32 %4340 to float
  %4342 = fadd fast float %4341, %4318
  %4343 = fmul fast float %4334, %4334
  %4344 = fmul fast float %4343, %4331
  %4345 = fmul fast float %4344, %4342
  %4346 = fdiv fast float 0x3FF0A00000000000, %4345
  %4347 = fmul fast float %4346, %4322
  %4348 = call float @dx.op.unary.f32(i32 6, float %4310)  ; FAbs(value)
  %4349 = fsub fast float 1.000000e+00, %4348
  %4350 = bitcast float %4349 to i32
  %4351 = sitofp i32 %4350 to float
  %4352 = fmul fast float %4351, 5.000000e+00
  %4353 = fadd fast float %4352, 0xC1EFBF8940000000
  %4354 = fptosi float %4353 to i32
  %4355 = bitcast i32 %4354 to float
  %4356 = fsub fast float 1.000000e+00, %2866
  %4357 = fsub fast float 1.000000e+00, %2867
  %4358 = fsub fast float 1.000000e+00, %2877
  %4359 = fmul fast float %4355, %4356
  %4360 = fmul fast float %4355, %4357
  %4361 = fmul fast float %4355, %4358
  %4362 = fadd fast float %4359, %2866
  %4363 = fadd fast float %4360, %2867
  %4364 = fadd fast float %4361, %2877
  br i1 %4156, label %4365, label %4388

; <label>:4365                                    ; preds = %4297
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2243, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = fadd fast float %4367, -5.000000e-01
  %4371 = fadd fast float %4368, -5.000000e-01
  %4372 = fadd fast float %4369, -5.000000e-01
  %4373 = fmul fast float %2866, 4.000000e+00
  %4374 = fmul fast float %4373, %4356
  %4375 = fmul fast float %4374, %4370
  %4376 = fmul fast float %2867, 4.000000e+00
  %4377 = fmul fast float %4376, %4357
  %4378 = fmul fast float %4377, %4371
  %4379 = fmul fast float %2877, 4.000000e+00
  %4380 = fmul fast float %4379, %4358
  %4381 = fmul fast float %4380, %4372
  %4382 = fadd fast float %4375, %4362
  %4383 = fadd fast float %4378, %4363
  %4384 = fadd fast float %4381, %4364
  %4385 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4386 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4387 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  br label %4388

; <label>:4388                                    ; preds = %4365, %4297
  %4389 = phi float [ %4385, %4365 ], [ %4362, %4297 ]
  %4390 = phi float [ %4386, %4365 ], [ %4363, %4297 ]
  %4391 = phi float [ %4387, %4365 ], [ %4364, %4297 ]
  %4392 = fmul fast float %4309, 9.843750e-01
  %4393 = fadd fast float %4392, 7.812500e-03
  %4394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4393, float %4146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 2
  %4396 = extractvalue %dx.types.ResRet.f32 %4394, 3
  %4397 = fmul fast float %4395, %2866
  %4398 = fmul fast float %4395, %2867
  %4399 = fmul fast float %4395, %2877
  %4400 = fadd fast float %4397, %4396
  %4401 = fadd fast float %4398, %4396
  %4402 = fadd fast float %4399, %4396
  br i1 %4156, label %4403, label %4426

; <label>:4403                                    ; preds = %4388
  %4404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2243, float %4309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4405 = extractvalue %dx.types.ResRet.f32 %4404, 0
  %4406 = extractvalue %dx.types.ResRet.f32 %4404, 1
  %4407 = extractvalue %dx.types.ResRet.f32 %4404, 2
  %4408 = fadd fast float %4405, -5.000000e-01
  %4409 = fadd fast float %4406, -5.000000e-01
  %4410 = fadd fast float %4407, -5.000000e-01
  %4411 = fmul fast float %2866, 4.000000e+00
  %4412 = fmul fast float %4411, %4356
  %4413 = fmul fast float %4412, %4408
  %4414 = fmul fast float %2867, 4.000000e+00
  %4415 = fmul fast float %4414, %4357
  %4416 = fmul fast float %4415, %4409
  %4417 = fmul fast float %2877, 4.000000e+00
  %4418 = fmul fast float %4417, %4358
  %4419 = fmul fast float %4418, %4410
  %4420 = fadd fast float %4413, %4400
  %4421 = fadd fast float %4416, %4401
  %4422 = fadd fast float %4419, %4402
  %4423 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  br label %4426

; <label>:4426                                    ; preds = %4403, %4388
  %4427 = phi float [ %4423, %4403 ], [ %4400, %4388 ]
  %4428 = phi float [ %4424, %4403 ], [ %4401, %4388 ]
  %4429 = phi float [ %4425, %4403 ], [ %4402, %4388 ]
  %4430 = call float @dx.op.binary.f32(i32 35, float %4428, float %4429)  ; FMax(a,b)
  %4431 = call float @dx.op.binary.f32(i32 35, float %4427, float %4430)  ; FMax(a,b)
  %4432 = fsub fast float 1.000000e+00, %4431
  %4433 = fmul fast float %4389, %4347
  %4434 = fmul fast float %4390, %4347
  %4435 = fmul fast float %4391, %4347
  %4436 = fsub fast float 1.000000e+00, %4310
  %4437 = bitcast float %4436 to i32
  %4438 = sitofp i32 %4437 to float
  %4439 = fmul fast float %4438, 5.000000e+00
  %4440 = fadd fast float %4439, 0xC1EFBF8940000000
  %4441 = fptosi float %4440 to i32
  %4442 = bitcast i32 %4441 to float
  %4443 = fmul fast float %4442, %2242
  %4444 = fmul fast float %4432, %4443
  %4445 = fmul fast float %4444, %4206
  %4446 = fmul fast float %4444, %4207
  %4447 = fmul fast float %4444, %4208
  %4448 = fadd fast float %4445, %4433
  %4449 = fadd fast float %4446, %4434
  %4450 = fadd fast float %4447, %4435
  %4451 = fmul fast float %4315, %4298
  %4452 = fmul fast float %4451, %4432
  %4453 = fmul fast float %4315, %4299
  %4454 = fmul fast float %4453, %4432
  %4455 = fmul fast float %4315, %4300
  %4456 = fmul fast float %4455, %4432
  %4457 = fmul fast float %4451, %4448
  %4458 = fmul fast float %4453, %4449
  %4459 = fmul fast float %4455, %4450
  %4460 = fadd fast float %4452, %4190
  %4461 = fmul fast float %4460, %2263
  %4462 = fadd fast float %4454, %4191
  %4463 = fmul fast float %4462, %2263
  %4464 = fadd fast float %4456, %4192
  %4465 = fmul fast float %4464, %2263
  %4466 = fadd fast float %4457, %4233
  %4467 = fmul fast float %4466, %2263
  %4468 = fadd fast float %4458, %4236
  %4469 = fmul fast float %4468, %2263
  %4470 = fadd fast float %4459, %4239
  %4471 = fmul fast float %4470, %2263
  br label %4472

; <label>:4472                                    ; preds = %4426, %4290, %4183
  %4473 = phi float [ %4234, %4183 ], [ %4234, %4290 ], [ %4467, %4426 ]
  %4474 = phi float [ %4237, %4183 ], [ %4237, %4290 ], [ %4469, %4426 ]
  %4475 = phi float [ %4240, %4183 ], [ %4240, %4290 ], [ %4471, %4426 ]
  %4476 = phi float [ %4229, %4183 ], [ %4229, %4290 ], [ %4461, %4426 ]
  %4477 = phi float [ %4230, %4183 ], [ %4230, %4290 ], [ %4463, %4426 ]
  %4478 = phi float [ %4231, %4183 ], [ %4231, %4290 ], [ %4465, %4426 ]
  %4479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.i32 %4479, 0
  %4481 = icmp eq i32 %4480, 0
  br i1 %4481, label %4916, label %4482

; <label>:4482                                    ; preds = %4472
  %4483 = fptoui float %64 to i32
  %4484 = fptoui float %65 to i32
  %4485 = lshr i32 %4483, 4
  %4486 = lshr i32 %4484, 4
  %4487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.i32 %4487, 0
  %4489 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4486, i32 %4488, i32 %4485)  ; UMad(a,b,c)
  %4490 = add nsw i32 %4480, -1
  %4491 = call i32 @dx.op.binary.i32(i32 37, i32 %4490, i32 0)  ; IMax(a,b)
  %4492 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %4493 = fptoui float %4492 to i32
  %4494 = lshr i32 %4493, 5
  %4495 = call i32 @dx.op.binary.i32(i32 40, i32 %4494, i32 8191)  ; UMin(a,b)
  %4496 = shl i32 %4495, 2
  %4497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4496, i32 undef)  ; BufferLoad(srv,index,wot)
  %4498 = extractvalue %dx.types.ResRet.i32 %4497, 0
  %4499 = lshr i32 %4498, 16
  %4500 = and i32 %4498, 65535
  %4501 = lshr i32 %4498, 21
  %4502 = lshr i32 %4500, 5
  %4503 = call i32 @dx.op.binary.i32(i32 40, i32 %4502, i32 %4491)  ; UMin(a,b)
  %4504 = icmp ugt i32 %4501, %4503
  br i1 %4504, label %4916, label %4505

; <label>:4505                                    ; preds = %4482
  br label %4506

; <label>:4506                                    ; preds = %4906, %4505
  %4507 = phi i32 [ %4913, %4906 ], [ %4501, %4505 ]
  %4508 = phi float [ %4907, %4906 ], [ %4473, %4505 ]
  %4509 = phi float [ %4908, %4906 ], [ %4474, %4505 ]
  %4510 = phi float [ %4909, %4906 ], [ %4475, %4505 ]
  %4511 = phi float [ %4910, %4906 ], [ %4476, %4505 ]
  %4512 = phi float [ %4911, %4906 ], [ %4477, %4505 ]
  %4513 = phi float [ %4912, %4906 ], [ %4478, %4505 ]
  %4514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.i32 %4514, 0
  %4516 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4489, i32 %4515, i32 %4507)  ; UMad(a,b,c)
  %4517 = shl i32 %4516, 2
  %4518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4517, i32 undef)  ; BufferLoad(srv,index,wot)
  %4519 = extractvalue %dx.types.ResRet.i32 %4518, 0
  %4520 = shl i32 %4507, 5
  %4521 = sub nsw i32 %4499, %4520
  %4522 = call i32 @dx.op.binary.i32(i32 37, i32 %4521, i32 0)  ; IMax(a,b)
  %4523 = call i32 @dx.op.binary.i32(i32 38, i32 %4522, i32 31)  ; IMin(a,b)
  %4524 = sub nsw i32 1, %4499
  %4525 = add nsw i32 %4524, %4500
  %4526 = call i32 @dx.op.binary.i32(i32 37, i32 %4525, i32 0)  ; IMax(a,b)
  %4527 = call i32 @dx.op.binary.i32(i32 38, i32 %4526, i32 32)  ; IMin(a,b)
  %4528 = and i32 %4527, 31
  %4529 = shl i32 -1, %4528
  %4530 = xor i32 %4529, -1
  %4531 = and i32 %4523, 31
  %4532 = shl i32 %4530, %4531
  %4533 = icmp eq i32 %4527, 32
  %4534 = select i1 %4533, i32 -1, i32 %4532
  %4535 = and i32 %4534, %4519
  %4536 = icmp eq i32 %4535, 0
  br i1 %4536, label %4906, label %4537

; <label>:4537                                    ; preds = %4506
  br label %4538

; <label>:4538                                    ; preds = %4618, %4537
  %4539 = phi i32 [ %4550, %4618 ], [ %4535, %4537 ]
  %4540 = phi float [ %4619, %4618 ], [ %4508, %4537 ]
  %4541 = phi float [ %4620, %4618 ], [ %4509, %4537 ]
  %4542 = phi float [ %4621, %4618 ], [ %4510, %4537 ]
  %4543 = phi float [ %4622, %4618 ], [ %4511, %4537 ]
  %4544 = phi float [ %4623, %4618 ], [ %4512, %4537 ]
  %4545 = phi float [ %4624, %4618 ], [ %4513, %4537 ]
  %4546 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4539)  ; FirstbitLo(value)
  %4547 = add i32 %4546, %4520
  %4548 = and i32 %4546, 31
  %4549 = shl i32 1, %4548
  %4550 = xor i32 %4549, %4539
  %4551 = mul i32 %4547, 112
  %4552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4551, i32 undef)  ; BufferLoad(srv,index,wot)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.ResRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.ResRet.f32 %4552, 2
  %4556 = or i32 %4551, 12
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = add i32 %4551, 44
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = add i32 %4551, 48
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = add i32 %4551, 80
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4554, float %4555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = select i1 %182, float %4569, float %4553
  %4573 = select i1 %182, float %4571, float %4554
  %4574 = select i1 %182, float %4570, float %4555
  %4575 = fsub fast float %4564, %111
  %4576 = fsub fast float %4565, %112
  %4577 = fsub fast float %4566, %113
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4576, float %4577, float %4575, float %4576, float %4577)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 24, float %4578)  ; Sqrt(value)
  %4580 = fdiv fast float 1.000000e+00, %4579
  %4581 = fmul fast float %4580, %4575
  %4582 = fmul fast float %4580, %4576
  %4583 = fmul fast float %4580, %4577
  %4584 = fadd fast float %4579, %4558
  %4585 = fdiv fast float 1.000000e+00, %4584
  %4586 = fmul float %4561, %4585
  %4587 = fmul float %4586, %4586
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = and i32 %4549, %4535
  %4590 = icmp eq i32 %4589, 0
  br i1 %4590, label %4613, label %4591, !dx.controlflow.hints !86

; <label>:4591                                    ; preds = %4538
  %4592 = lshr i32 %4483, 5
  %4593 = lshr i32 %4484, 5
  %4594 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4592, i32 %4593, i32 %4547, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = and i32 %4595, 3
  %4597 = icmp eq i32 %4596, 0
  %4598 = select i1 %4597, float 1.000000e+00, float 0.000000e+00
  %4599 = icmp eq i32 %4596, 3
  br i1 %4599, label %4600, label %4613

; <label>:4600                                    ; preds = %4591
  %4601 = lshr i32 %4595, 10
  %4602 = and i32 %4601, 8160
  %4603 = and i32 %4484, 31
  %4604 = or i32 %4602, %4603
  %4605 = lshr i32 %4595, 1
  %4606 = and i32 %4605, 16352
  %4607 = and i32 %4483, 31
  %4608 = or i32 %4606, %4607
  %4609 = lshr i32 %4595, 23
  %4610 = and i32 %4609, 255
  %4611 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4608, i32 %4604, i32 %4610, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  br label %4613

; <label>:4613                                    ; preds = %4600, %4591, %4538
  %4614 = phi float [ %4612, %4600 ], [ %4598, %4591 ], [ 0.000000e+00, %4538 ]
  %4615 = call float @dx.op.binary.f32(i32 36, float %4614, float %4614)  ; FMin(a,b)
  %4616 = call float @dx.op.binary.f32(i32 36, float %4614, float %4615)  ; FMin(a,b)
  %4617 = fcmp fast ogt float %4616, 0.000000e+00
  br i1 %4617, label %4626, label %4618, !dx.controlflow.hints !87

; <label>:4618                                    ; preds = %4862, %4613
  %4619 = phi float [ %4540, %4613 ], [ %4902, %4862 ]
  %4620 = phi float [ %4541, %4613 ], [ %4903, %4862 ]
  %4621 = phi float [ %4542, %4613 ], [ %4904, %4862 ]
  %4622 = phi float [ %4543, %4613 ], [ %4896, %4862 ]
  %4623 = phi float [ %4544, %4613 ], [ %4897, %4862 ]
  %4624 = phi float [ %4545, %4613 ], [ %4898, %4862 ]
  %4625 = icmp eq i32 %4539, %4549
  br i1 %4625, label %4905, label %4538

; <label>:4626                                    ; preds = %4613
  %4627 = fmul fast float %4614, %4572
  %4628 = fmul fast float %4614, %4573
  %4629 = fmul fast float %4614, %4574
  %4630 = fsub fast float %4566, %2665
  %4631 = fcmp fast ogt float %4630, 0.000000e+00
  %4632 = fsub fast float %113, %2665
  %4633 = fcmp fast ogt float %4632, 0.000000e+00
  %4634 = xor i1 %4633, %4631
  %4635 = fsub fast float %2665, %4566
  %4636 = fmul fast float %4635, 2.000000e+00
  %4637 = fadd fast float %4636, %4566
  %4638 = select i1 %4634, float %4566, float %4637
  %4639 = fsub fast float %4638, %113
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4576, float %4639, float %4575, float %4576, float %4639)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 25, float %4640)  ; Rsqrt(value)
  %4642 = fmul fast float %4641, %4575
  %4643 = fmul fast float %4641, %4576
  %4644 = fmul fast float %4641, %4639
  %4645 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4642, float %4643, float %4644)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = fdiv fast float 1.000000e+00, %4646
  %4648 = fmul fast float %4647, %4645
  %4649 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4632, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = fcmp fast ogt float %4649, 0.000000e+00
  %4651 = fcmp fast olt float %4649, 0.000000e+00
  %4652 = zext i1 %4650 to i32
  %4653 = zext i1 %4651 to i32
  %4654 = sub nsw i32 %4652, %4653
  %4655 = sitofp i32 %4654 to float
  %4656 = fsub fast float %4638, %2665
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4576, float %4656, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = fcmp fast ogt float %4657, 0.000000e+00
  %4659 = fcmp fast olt float %4657, 0.000000e+00
  %4660 = zext i1 %4658 to i32
  %4661 = zext i1 %4659 to i32
  %4662 = sub nsw i32 %4660, %4661
  %4663 = sitofp i32 %4662 to float
  %4664 = fcmp fast une float %4655, %4663
  br i1 %4664, label %4665, label %4675

; <label>:4665                                    ; preds = %4626
  %4666 = fmul fast float %4648, %4644
  %4667 = fmul fast float %4648, %4643
  %4668 = fmul fast float %4648, %4642
  %4669 = fmul fast float %4668, %4668
  %4670 = fmul fast float %4667, %4667
  %4671 = fadd fast float %4669, %4670
  %4672 = fmul fast float %4666, %4666
  %4673 = fadd fast float %4671, %4672
  %4674 = call float @dx.op.unary.f32(i32 24, float %4673)  ; Sqrt(value)
  br label %4687

; <label>:4675                                    ; preds = %4626
  %4676 = icmp slt i32 %4654, 0
  br i1 %4676, label %4677, label %4687

; <label>:4677                                    ; preds = %4675
  %4678 = fsub fast float %111, %4564
  %4679 = fsub fast float %112, %4565
  %4680 = fsub fast float %113, %4638
  %4681 = fmul fast float %4678, %4678
  %4682 = fmul fast float %4679, %4679
  %4683 = fadd fast float %4681, %4682
  %4684 = fmul fast float %4680, %4680
  %4685 = fadd fast float %4683, %4684
  %4686 = call float @dx.op.unary.f32(i32 24, float %4685)  ; Sqrt(value)
  br label %4687

; <label>:4687                                    ; preds = %4677, %4675, %4665
  %4688 = phi float [ %4674, %4665 ], [ %4686, %4677 ], [ 0.000000e+00, %4675 ]
  %4689 = and i1 %4633, %4631
  %4690 = fsub fast float -0.000000e+00, %4688
  %4691 = select i1 %4689, float -0.000000e+00, float %4690
  %4692 = fmul fast float %2666, 0x3FF7154760000000
  %4693 = fmul fast float %4692, %4691
  %4694 = fmul fast float %2667, 0x3FF7154760000000
  %4695 = fmul fast float %4694, %4691
  %4696 = fmul fast float %2668, 0x3FF7154760000000
  %4697 = fmul fast float %4696, %4691
  %4698 = call float @dx.op.unary.f32(i32 21, float %4693)  ; Exp(value)
  %4699 = call float @dx.op.unary.f32(i32 21, float %4695)  ; Exp(value)
  %4700 = call float @dx.op.unary.f32(i32 21, float %4697)  ; Exp(value)
  %4701 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = fmul fast float %4627, %4701
  %4705 = fmul fast float %4628, %4702
  %4706 = fmul fast float %4629, %4703
  %4707 = fsub fast float %4581, %2865
  %4708 = fsub fast float %4582, %2864
  %4709 = fsub fast float %4583, %2863
  %4710 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4709, float %4707, float %4708, float %4709)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = call float @dx.op.unary.f32(i32 25, float %4710)  ; Rsqrt(value)
  %4712 = fmul fast float %4711, %4707
  %4713 = fmul fast float %4711, %4708
  %4714 = fmul fast float %4711, %4709
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.dot3.f32(i32 55, float %2862, float %2861, float %2860, float %4712, float %4713, float %4714)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4718 = fmul fast float %4717, %4588
  %4719 = fmul fast float %4717, %4717
  %4720 = fmul fast float %4719, %4241
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4718, %4721
  %4723 = bitcast float %4578 to i32
  %4724 = ashr i32 %4723, 1
  %4725 = sub nsw i32 1597463007, %4724
  %4726 = bitcast i32 %4725 to float
  %4727 = fmul fast float %4726, %4575
  %4728 = fmul fast float %4726, %4576
  %4729 = fmul fast float %4726, %4577
  %4730 = fsub fast float %4727, %2865
  %4731 = fsub fast float %4728, %2864
  %4732 = fsub fast float %4729, %2863
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %4730, float %4731, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.unary.f32(i32 25, float %4733)  ; Rsqrt(value)
  %4735 = fmul fast float %4730, %4734
  %4736 = fmul fast float %4731, %4734
  %4737 = fmul fast float %4732, %4734
  %4738 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float %4735, float %4736, float %4737)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = fmul fast float %4738, %4738
  %4740 = call float @dx.op.unary.f32(i32 6, float %4715)  ; FAbs(value)
  %4741 = fsub fast float 1.000000e+00, %2875
  %4742 = call float @dx.op.binary.f32(i32 35, float %4741, float 0x3F847AE140000000)  ; FMax(a,b)
  %4743 = fmul fast float %4742, %4742
  %4744 = fmul fast float %4743, %4743
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = fmul fast float %2879, %2879
  %4747 = fmul fast float %4746, %4745
  %4748 = fadd fast float %4747, %4744
  %4749 = bitcast float %4748 to i32
  %4750 = ashr i32 %4749, 1
  %4751 = add nsw i32 %4750, 532487669
  %4752 = bitcast i32 %4751 to float
  %4753 = fadd fast float %4752, %2879
  %4754 = fmul fast float %4744, %4739
  %4755 = fsub fast float 1.000000e+00, %4739
  %4756 = fadd fast float %4755, %4754
  %4757 = fmul fast float %4740, %4740
  %4758 = fmul fast float %4757, %4745
  %4759 = fadd fast float %4758, %4744
  %4760 = bitcast float %4759 to i32
  %4761 = ashr i32 %4760, 1
  %4762 = add nsw i32 %4761, 532487669
  %4763 = bitcast i32 %4762 to float
  %4764 = fadd fast float %4763, %4740
  %4765 = fmul fast float %4756, %4756
  %4766 = fmul fast float %4765, %4753
  %4767 = fmul fast float %4766, %4764
  %4768 = fdiv fast float 1.000000e+00, %4767
  %4769 = bitcast float %4744 to i32
  %4770 = sitofp i32 %4769 to float
  %4771 = fmul fast float %4770, 0x3FE7F73180000000
  %4772 = fadd fast float %4771, 0x41AFE27C40000000
  %4773 = fptosi float %4772 to i32
  %4774 = bitcast i32 %4773 to float
  %4775 = fmul fast float %4561, 0x3FD80E9D60000000
  %4776 = fmul fast float %4775, %4726
  %4777 = fadd fast float %4774, %4776
  %4778 = bitcast float %4777 to i32
  %4779 = sub nsw i32 2129859010, %4778
  %4780 = bitcast i32 %4779 to float
  %4781 = fmul fast float %4744, %4768
  %4782 = fmul fast float %4781, %4774
  %4783 = fmul fast float %4782, %4780
  %4784 = call float @dx.op.unary.f32(i32 6, float %4716)  ; FAbs(value)
  %4785 = fsub fast float 1.000000e+00, %4784
  %4786 = bitcast float %4785 to i32
  %4787 = sitofp i32 %4786 to float
  %4788 = fmul fast float %4787, 5.000000e+00
  %4789 = fadd fast float %4788, 0xC1EFBF8940000000
  %4790 = fptosi float %4789 to i32
  %4791 = bitcast i32 %4790 to float
  %4792 = fsub fast float 1.000000e+00, %2866
  %4793 = fsub fast float 1.000000e+00, %2867
  %4794 = fsub fast float 1.000000e+00, %2877
  %4795 = fmul fast float %4791, %4792
  %4796 = fmul fast float %4791, %4793
  %4797 = fmul fast float %4791, %4794
  %4798 = fadd fast float %4795, %2866
  %4799 = fadd fast float %4796, %2867
  %4800 = fadd fast float %4797, %2877
  br i1 %4156, label %4801, label %4824

; <label>:4801                                    ; preds = %4687
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2243, float %4784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = fadd fast float %4803, -5.000000e-01
  %4807 = fadd fast float %4804, -5.000000e-01
  %4808 = fadd fast float %4805, -5.000000e-01
  %4809 = fmul fast float %2866, 4.000000e+00
  %4810 = fmul fast float %4809, %4792
  %4811 = fmul fast float %4810, %4806
  %4812 = fmul fast float %2867, 4.000000e+00
  %4813 = fmul fast float %4812, %4793
  %4814 = fmul fast float %4813, %4807
  %4815 = fmul fast float %2877, 4.000000e+00
  %4816 = fmul fast float %4815, %4794
  %4817 = fmul fast float %4816, %4808
  %4818 = fadd fast float %4811, %4798
  %4819 = fadd fast float %4814, %4799
  %4820 = fadd fast float %4817, %4800
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  br label %4824

; <label>:4824                                    ; preds = %4801, %4687
  %4825 = phi float [ %4821, %4801 ], [ %4798, %4687 ]
  %4826 = phi float [ %4822, %4801 ], [ %4799, %4687 ]
  %4827 = phi float [ %4823, %4801 ], [ %4800, %4687 ]
  %4828 = fmul fast float %4715, 9.843750e-01
  %4829 = fadd fast float %4828, 7.812500e-03
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4829, float %4146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 3
  %4833 = fmul fast float %4831, %2866
  %4834 = fmul fast float %4831, %2867
  %4835 = fmul fast float %4831, %2877
  %4836 = fadd fast float %4833, %4832
  %4837 = fadd fast float %4834, %4832
  %4838 = fadd fast float %4835, %4832
  br i1 %4156, label %4839, label %4862

; <label>:4839                                    ; preds = %4824
  %4840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2243, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4841 = extractvalue %dx.types.ResRet.f32 %4840, 0
  %4842 = extractvalue %dx.types.ResRet.f32 %4840, 1
  %4843 = extractvalue %dx.types.ResRet.f32 %4840, 2
  %4844 = fadd fast float %4841, -5.000000e-01
  %4845 = fadd fast float %4842, -5.000000e-01
  %4846 = fadd fast float %4843, -5.000000e-01
  %4847 = fmul fast float %2866, 4.000000e+00
  %4848 = fmul fast float %4847, %4792
  %4849 = fmul fast float %4848, %4844
  %4850 = fmul fast float %2867, 4.000000e+00
  %4851 = fmul fast float %4850, %4793
  %4852 = fmul fast float %4851, %4845
  %4853 = fmul fast float %2877, 4.000000e+00
  %4854 = fmul fast float %4853, %4794
  %4855 = fmul fast float %4854, %4846
  %4856 = fadd fast float %4849, %4836
  %4857 = fadd fast float %4852, %4837
  %4858 = fadd fast float %4855, %4838
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  br label %4862

; <label>:4862                                    ; preds = %4839, %4824
  %4863 = phi float [ %4859, %4839 ], [ %4836, %4824 ]
  %4864 = phi float [ %4860, %4839 ], [ %4837, %4824 ]
  %4865 = phi float [ %4861, %4839 ], [ %4838, %4824 ]
  %4866 = call float @dx.op.binary.f32(i32 35, float %4864, float %4865)  ; FMax(a,b)
  %4867 = call float @dx.op.binary.f32(i32 35, float %4863, float %4866)  ; FMax(a,b)
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = fmul fast float %4825, %4783
  %4870 = fmul fast float %4826, %4783
  %4871 = fmul fast float %4827, %4783
  %4872 = fsub fast float 1.000000e+00, %4716
  %4873 = bitcast float %4872 to i32
  %4874 = sitofp i32 %4873 to float
  %4875 = fmul fast float %4874, 5.000000e+00
  %4876 = fadd fast float %4875, 0xC1EFBF8940000000
  %4877 = fptosi float %4876 to i32
  %4878 = bitcast i32 %4877 to float
  %4879 = fmul fast float %4878, %2242
  %4880 = fmul fast float %4868, %4879
  %4881 = fmul fast float %4880, %4206
  %4882 = fmul fast float %4880, %4207
  %4883 = fmul fast float %4880, %4208
  %4884 = fadd fast float %4881, %4869
  %4885 = fadd fast float %4882, %4870
  %4886 = fadd fast float %4883, %4871
  %4887 = fmul fast float %4704, %2263
  %4888 = fmul fast float %4887, %4722
  %4889 = fmul fast float %4888, %4868
  %4890 = fmul fast float %4705, %2263
  %4891 = fmul fast float %4890, %4722
  %4892 = fmul fast float %4891, %4868
  %4893 = fmul fast float %4706, %2263
  %4894 = fmul fast float %4893, %4722
  %4895 = fmul fast float %4894, %4868
  %4896 = fadd fast float %4889, %4543
  %4897 = fadd fast float %4892, %4544
  %4898 = fadd fast float %4895, %4545
  %4899 = fmul fast float %4888, %4884
  %4900 = fmul fast float %4891, %4885
  %4901 = fmul fast float %4894, %4886
  %4902 = fadd fast float %4899, %4540
  %4903 = fadd fast float %4900, %4541
  %4904 = fadd fast float %4901, %4542
  br label %4618

; <label>:4905                                    ; preds = %4618
  br label %4906

; <label>:4906                                    ; preds = %4905, %4506
  %4907 = phi float [ %4508, %4506 ], [ %4619, %4905 ]
  %4908 = phi float [ %4509, %4506 ], [ %4620, %4905 ]
  %4909 = phi float [ %4510, %4506 ], [ %4621, %4905 ]
  %4910 = phi float [ %4511, %4506 ], [ %4622, %4905 ]
  %4911 = phi float [ %4512, %4506 ], [ %4623, %4905 ]
  %4912 = phi float [ %4513, %4506 ], [ %4624, %4905 ]
  %4913 = add i32 %4507, 1
  %4914 = icmp ugt i32 %4913, %4503
  br i1 %4914, label %4915, label %4506

; <label>:4915                                    ; preds = %4906
  br label %4916

; <label>:4916                                    ; preds = %4915, %4482, %4472
  %4917 = phi float [ %4473, %4472 ], [ %4473, %4482 ], [ %4907, %4915 ]
  %4918 = phi float [ %4474, %4472 ], [ %4474, %4482 ], [ %4908, %4915 ]
  %4919 = phi float [ %4475, %4472 ], [ %4475, %4482 ], [ %4909, %4915 ]
  %4920 = phi float [ %4476, %4472 ], [ %4476, %4482 ], [ %4910, %4915 ]
  %4921 = phi float [ %4477, %4472 ], [ %4477, %4482 ], [ %4911, %4915 ]
  %4922 = phi float [ %4478, %4472 ], [ %4478, %4482 ], [ %4912, %4915 ]
  %4923 = call float @dx.op.unary.f32(i32 24, float %2872)  ; Sqrt(value)
  %4924 = call float @dx.op.unary.f32(i32 24, float %2873)  ; Sqrt(value)
  %4925 = call float @dx.op.unary.f32(i32 24, float %2874)  ; Sqrt(value)
  %4926 = fmul fast float %4923, %4920
  %4927 = fmul fast float %4924, %4921
  %4928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4929 = extractvalue %dx.types.CBufRet.f32 %4928, 0
  br i1 %182, label %4930, label %4950

; <label>:4930                                    ; preds = %4916
  %4931 = fadd fast float %4922, %2240
  %4932 = fmul fast float %4931, %2241
  %4933 = fsub fast float 1.000000e+00, %2241
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %4937 = fmul fast float %4936, %4934
  %4938 = fadd fast float %4937, %4932
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 0
  %4941 = fmul fast float %4940, %4212
  %4942 = fsub fast float %4938, %4941
  %4943 = fadd fast float %4927, %4926
  %4944 = fmul fast float %4929, %4943
  %4945 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4946 = fsub fast float %4942, %4945
  %4947 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4948 = fmul fast float %4946, %4947
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  br label %4966

; <label>:4950                                    ; preds = %4916
  %4951 = fmul fast float %4925, %4922
  %4952 = fmul fast float %4929, %4926
  %4953 = fmul fast float %4929, %4927
  %4954 = fmul fast float %4951, %4929
  %4955 = add i32 %44, 196
  %4956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4955, i32 undef)  ; BufferLoad(srv,index,wot)
  %4957 = extractvalue %dx.types.ResRet.i32 %4956, 0
  %4958 = and i32 %4957, 32
  %4959 = icmp eq i32 %4958, 0
  br i1 %4959, label %4966, label %4960

; <label>:4960                                    ; preds = %4950
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = fmul fast float %4962, 0x3FE99999A0000000
  %4964 = fadd fast float %4962, %4952
  %4965 = fadd fast float %4963, %4954
  br label %4966

; <label>:4966                                    ; preds = %4960, %4950, %4930
  %4967 = phi float [ %4944, %4930 ], [ %4964, %4960 ], [ %4952, %4950 ]
  %4968 = phi float [ %4949, %4930 ], [ %4953, %4960 ], [ %4953, %4950 ]
  %4969 = phi float [ 1.000000e+00, %4930 ], [ %4965, %4960 ], [ %4954, %4950 ]
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 0
  %4972 = fmul fast float %4971, %4918
  %4973 = fmul fast float %4971, %4919
  %4974 = fadd fast float %4918, %4917
  %4975 = select i1 %182, float %4974, float %4917
  %4976 = fmul float %4975, %4971
  %4977 = select i1 %182, float 0.000000e+00, float %4972
  %4978 = select i1 %182, float 0.000000e+00, float %4973
  %4979 = fmul fast float %4967, %4923
  %4980 = fmul fast float %4968, %4924
  %4981 = fmul fast float %4969, %4925
  %4982 = fadd fast float %4976, %4979
  %4983 = fadd fast float %4977, %4980
  %4984 = fadd fast float %4978, %4981
  %4985 = select i1 %182, float %4968, float %4983
  %4986 = select i1 %182, float %4969, float %4984
  %4987 = call float @dx.op.binary.f32(i32 36, float %4982, float 3.225500e+04)  ; FMin(a,b)
  %4988 = call float @dx.op.binary.f32(i32 36, float %4985, float 3.225500e+04)  ; FMin(a,b)
  %4989 = call float @dx.op.binary.f32(i32 36, float %4986, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4987)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4988)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4989)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

