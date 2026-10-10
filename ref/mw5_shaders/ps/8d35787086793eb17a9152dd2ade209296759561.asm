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
; shader hash: 6493387f29f05e249225eb699d17ac94
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
  br i1 %216, label %695, label %217

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
  %666 = and i32 %665, 65536
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %678, label %668

; <label>:668                                     ; preds = %660
  %669 = add i32 %38, 148
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %673, %dx.types.Handle %55, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = extractvalue %dx.types.ResRet.f32 %674, 1
  %677 = extractvalue %dx.types.ResRet.f32 %674, 2
  br label %678

; <label>:678                                     ; preds = %668, %660
  %679 = phi float [ %675, %668 ], [ 0.000000e+00, %660 ]
  %680 = phi float [ %676, %668 ], [ 0.000000e+00, %660 ]
  %681 = phi float [ %677, %668 ], [ 0.000000e+00, %660 ]
  %682 = add i32 %38, 48
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = lshr i32 %684, 8
  %688 = and i32 %687, 255
  %689 = uitofp i32 %688 to float
  %690 = call float @dx.op.dot3.f32(i32 55, float %533, float %534, float %535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = fmul fast float %689, %690
  %692 = fadd fast float %691, %686
  %693 = fmul fast float %692, 0x3F70101020000000
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  br label %695

; <label>:695                                     ; preds = %678, %175
  %696 = phi float [ 0.000000e+00, %175 ], [ %614, %678 ]
  %697 = phi float [ 0.000000e+00, %175 ], [ %615, %678 ]
  %698 = phi float [ 0.000000e+00, %175 ], [ %533, %678 ]
  %699 = phi float [ 0.000000e+00, %175 ], [ %534, %678 ]
  %700 = phi float [ 0.000000e+00, %175 ], [ %535, %678 ]
  %701 = phi float [ 0.000000e+00, %175 ], [ %679, %678 ]
  %702 = phi float [ 0.000000e+00, %175 ], [ %680, %678 ]
  %703 = phi float [ 0.000000e+00, %175 ], [ %681, %678 ]
  %704 = phi float [ 0.000000e+00, %175 ], [ %661, %678 ]
  %705 = phi float [ 0.000000e+00, %175 ], [ %662, %678 ]
  %706 = phi float [ 0.000000e+00, %175 ], [ %663, %678 ]
  %707 = phi float [ 0.000000e+00, %175 ], [ %519, %678 ]
  %708 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %678 ]
  %709 = phi float [ 0.000000e+00, %175 ], [ %613, %678 ]
  %710 = phi float [ 0.000000e+00, %175 ], [ %616, %678 ]
  %711 = phi float [ 0.000000e+00, %175 ], [ %694, %678 ]
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %714 = call float @dx.op.dot2.f32(i32 54, float %696, float %697, float %696, float %697)  ; Dot2(ax,ay,bx,by)
  %715 = fmul fast float %714, 0x3FE3333340000000
  %716 = fsub fast float 1.000000e+00, %715
  %717 = call float @dx.op.dot3.f32(i32 55, float %696, float %697, float %716, float %696, float %697, float %716)  ; Dot3(ax,ay,az,bx,by,bz)
  %718 = call float @dx.op.unary.f32(i32 25, float %717)  ; Rsqrt(value)
  %719 = fmul fast float %718, %696
  %720 = fmul fast float %718, %697
  %721 = fmul fast float %716, %718
  %722 = fmul fast float %721, %43
  %723 = fmul fast float %721, %44
  %724 = fmul fast float %721, %45
  %725 = fmul fast float %719, %39
  %726 = fmul fast float %719, %40
  %727 = fmul fast float %719, %41
  %728 = fadd fast float %722, %725
  %729 = fadd fast float %723, %726
  %730 = fadd fast float %724, %727
  %731 = fmul fast float %720, %69
  %732 = fmul fast float %720, %70
  %733 = fmul fast float %720, %71
  %734 = fadd fast float %728, %731
  %735 = fadd fast float %729, %732
  %736 = fadd fast float %730, %733
  %737 = call float @dx.op.dot3.f32(i32 55, float %734, float %735, float %736, float %734, float %735, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = call float @dx.op.unary.f32(i32 25, float %737)  ; Rsqrt(value)
  %739 = fmul fast float %734, %738
  %740 = fmul fast float %735, %738
  %741 = fmul fast float %736, %738
  %742 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %743 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %744 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %745 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %746 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %747 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %748 = fadd fast float %742, %105
  %749 = fadd fast float %743, %106
  %750 = fadd fast float %744, %107
  %751 = fadd fast float %745, %105
  %752 = fadd fast float %746, %106
  %753 = fadd fast float %747, %107
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %760 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %761 = fmul fast float %755, %58
  %762 = fmul fast float %761, %759
  %763 = fmul fast float %756, %59
  %764 = fmul fast float %763, %760
  %765 = fptoui float %762 to i32
  %766 = fptoui float %764 to i32
  %767 = fadd fast float %755, -1.000000e+00
  %768 = fadd fast float %756, -1.000000e+00
  %769 = fptoui float %767 to i32
  %770 = fptoui float %768 to i32
  %771 = call i32 @dx.op.binary.i32(i32 40, i32 %765, i32 %769)  ; UMin(a,b)
  %772 = call i32 @dx.op.binary.i32(i32 40, i32 %766, i32 %770)  ; UMin(a,b)
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 3
  %776 = fmul fast float %774, %53
  %777 = fsub fast float %776, %775
  %778 = fadd fast float %757, -1.000000e+00
  %779 = call float @dx.op.binary.f32(i32 36, float %777, float %778)  ; FMin(a,b)
  %780 = fptoui float %779 to i32
  %781 = fptoui float %755 to i32
  %782 = fptoui float %756 to i32
  %783 = mul i32 %780, %782
  %784 = add i32 %783, %772
  %785 = mul i32 %784, %781
  %786 = add i32 %785, %771
  %787 = shl i32 %786, 2
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 1023
  %791 = lshr i32 %789, 10
  %792 = icmp eq i32 %790, 0
  br i1 %792, label %1218, label %793

; <label>:793                                     ; preds = %695
  %794 = and i32 %789, 1023
  br label %795

; <label>:795                                     ; preds = %921, %793
  %796 = phi float [ %922, %921 ], [ 0.000000e+00, %793 ]
  %797 = phi float [ %923, %921 ], [ %713, %793 ]
  %798 = phi float [ %924, %921 ], [ %711, %793 ]
  %799 = phi float [ %925, %921 ], [ 0.000000e+00, %793 ]
  %800 = phi float [ %926, %921 ], [ 0.000000e+00, %793 ]
  %801 = phi float [ %927, %921 ], [ %704, %793 ]
  %802 = phi float [ %928, %921 ], [ %705, %793 ]
  %803 = phi float [ %929, %921 ], [ %706, %793 ]
  %804 = phi float [ %930, %921 ], [ %739, %793 ]
  %805 = phi float [ %931, %921 ], [ %740, %793 ]
  %806 = phi float [ %932, %921 ], [ %741, %793 ]
  %807 = phi float [ %933, %921 ], [ %710, %793 ]
  %808 = phi float [ %934, %921 ], [ %709, %793 ]
  %809 = phi float [ %935, %921 ], [ 0.000000e+00, %793 ]
  %810 = phi float [ %936, %921 ], [ %707, %793 ]
  %811 = phi float [ %937, %921 ], [ %698, %793 ]
  %812 = phi float [ %938, %921 ], [ %699, %793 ]
  %813 = phi float [ %939, %921 ], [ %700, %793 ]
  %814 = phi i32 [ %871, %921 ], [ 0, %793 ]
  %815 = add nuw nsw i32 %814, %791
  %816 = shl i32 %815, 2
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = shl i32 %818, 8
  %820 = or i32 %819, 48
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = extractvalue %dx.types.ResRet.f32 %821, 2
  %825 = extractvalue %dx.types.ResRet.f32 %821, 3
  %826 = or i32 %819, 64
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = extractvalue %dx.types.ResRet.i32 %827, 1
  %830 = or i32 %819, 80
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 2
  %833 = extractvalue %dx.types.ResRet.f32 %831, 3
  %834 = or i32 %819, 96
  %835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = extractvalue %dx.types.ResRet.f32 %835, 3
  %840 = or i32 %819, 112
  %841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 2
  %843 = or i32 %819, 128
  %844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = extractvalue %dx.types.ResRet.f32 %844, 3
  %849 = or i32 %819, 144
  %850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = extractvalue %dx.types.ResRet.f32 %850, 3
  %855 = or i32 %819, 160
  %856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.f32 %856, 0
  %858 = extractvalue %dx.types.ResRet.f32 %856, 1
  %859 = extractvalue %dx.types.ResRet.f32 %856, 2
  %860 = extractvalue %dx.types.ResRet.f32 %856, 3
  %861 = or i32 %819, 192
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = or i32 %819, 208
  %865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = or i32 %819, 248
  %868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = add nuw nsw i32 %814, 1
  %872 = bitcast float %825 to i32
  %873 = and i32 %872, 2560
  %874 = icmp eq i32 %873, 0
  %875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = extractvalue %dx.types.ResRet.f32 %875, 1
  %878 = extractvalue %dx.types.ResRet.f32 %875, 2
  %879 = extractvalue %dx.types.ResRet.f32 %875, 3
  %880 = call float @dx.op.dot4.f32(i32 56, float %876, float %877, float %878, float %879, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %881 = or i32 %819, 16
  %882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = extractvalue %dx.types.ResRet.f32 %882, 3
  %887 = call float @dx.op.dot4.f32(i32 56, float %883, float %884, float %885, float %886, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %888 = or i32 %819, 32
  %889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = extractvalue %dx.types.ResRet.f32 %889, 3
  %894 = call float @dx.op.dot4.f32(i32 56, float %890, float %891, float %892, float %893, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %895 = call float @dx.op.unary.f32(i32 27, float %880)  ; Round_ni(value)
  %896 = call float @dx.op.unary.f32(i32 6, float %895)  ; FAbs(value)
  %897 = call float @dx.op.unary.f32(i32 27, float %887)  ; Round_ni(value)
  %898 = call float @dx.op.unary.f32(i32 6, float %897)  ; FAbs(value)
  %899 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %900 = call float @dx.op.unary.f32(i32 27, float %899)  ; Round_ni(value)
  %901 = fadd fast float %898, %896
  %902 = fadd fast float %901, %900
  %903 = fcmp fast oeq float %902, 0.000000e+00
  %904 = call float @dx.op.dot4.f32(i32 56, float %876, float %877, float %878, float %879, float %748, float %749, float %750, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %905 = call float @dx.op.dot4.f32(i32 56, float %883, float %884, float %885, float %886, float %748, float %749, float %750, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %906 = call float @dx.op.dot4.f32(i32 56, float %876, float %877, float %878, float %879, float %751, float %752, float %753, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %907 = call float @dx.op.dot4.f32(i32 56, float %883, float %884, float %885, float %886, float %751, float %752, float %753, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %908 = fsub fast float %904, %880
  %909 = fsub fast float %906, %880
  %910 = fsub fast float %905, %887
  %911 = fsub fast float %907, %887
  %912 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %915 = fadd fast float %914, %912
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %918 = fcmp fast ogt float %916, %917
  %919 = and i1 %903, %918
  %920 = and i1 %874, %919
  br i1 %920, label %941, label %921

; <label>:921                                     ; preds = %1204, %1022, %941, %795
  %922 = phi float [ %796, %941 ], [ %1025, %1022 ], [ %1025, %1204 ], [ %796, %795 ]
  %923 = phi float [ %797, %941 ], [ %797, %1022 ], [ %1179, %1204 ], [ %797, %795 ]
  %924 = phi float [ %798, %941 ], [ %798, %1022 ], [ %1177, %1204 ], [ %798, %795 ]
  %925 = phi float [ %799, %941 ], [ %799, %1022 ], [ %1149, %1204 ], [ %799, %795 ]
  %926 = phi float [ %800, %941 ], [ %800, %1022 ], [ %1147, %1204 ], [ %800, %795 ]
  %927 = phi float [ %801, %941 ], [ %801, %1022 ], [ %1214, %1204 ], [ %801, %795 ]
  %928 = phi float [ %802, %941 ], [ %802, %1022 ], [ %1215, %1204 ], [ %802, %795 ]
  %929 = phi float [ %803, %941 ], [ %803, %1022 ], [ %1216, %1204 ], [ %803, %795 ]
  %930 = phi float [ %804, %941 ], [ %804, %1022 ], [ %1128, %1204 ], [ %804, %795 ]
  %931 = phi float [ %805, %941 ], [ %805, %1022 ], [ %1129, %1204 ], [ %805, %795 ]
  %932 = phi float [ %806, %941 ], [ %806, %1022 ], [ %1130, %1204 ], [ %806, %795 ]
  %933 = phi float [ %807, %941 ], [ %807, %1022 ], [ %1157, %1204 ], [ %807, %795 ]
  %934 = phi float [ %808, %941 ], [ %808, %1022 ], [ %1154, %1204 ], [ %808, %795 ]
  %935 = phi float [ %809, %941 ], [ %809, %1022 ], [ %1151, %1204 ], [ %809, %795 ]
  %936 = phi float [ %810, %941 ], [ %810, %1022 ], [ %1145, %1204 ], [ %810, %795 ]
  %937 = phi float [ %811, %941 ], [ %811, %1022 ], [ %1140, %1204 ], [ %811, %795 ]
  %938 = phi float [ %812, %941 ], [ %812, %1022 ], [ %1141, %1204 ], [ %812, %795 ]
  %939 = phi float [ %813, %941 ], [ %813, %1022 ], [ %1142, %1204 ], [ %813, %795 ]
  %940 = icmp eq i32 %871, %794
  br i1 %940, label %1217, label %795

; <label>:941                                     ; preds = %795
  %942 = extractvalue %dx.types.ResRet.f32 %841, 3
  %943 = extractvalue %dx.types.ResRet.f32 %841, 1
  %944 = extractvalue %dx.types.ResRet.f32 %841, 0
  %945 = extractvalue %dx.types.ResRet.f32 %831, 1
  %946 = extractvalue %dx.types.ResRet.f32 %831, 0
  %947 = extractvalue %dx.types.ResRet.i32 %827, 3
  %948 = extractvalue %dx.types.ResRet.i32 %827, 2
  %949 = add i32 %947, 0
  %950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %949, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %952 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %950, %dx.types.Handle %951, float %880, float %887, float undef, float undef, i32 0, i32 0, i32 undef, float %908, float %910, float undef, float %909, float %911, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = fmul fast float %953, %946
  %955 = fadd fast float %954, %945
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = fmul fast float %880, %836
  %958 = call float @dx.op.tertiary.f32(i32 46, float %837, float %887, float %957)  ; FMad(a,b,c)
  %959 = fadd fast float %958, %944
  %960 = fmul fast float %880, %838
  %961 = call float @dx.op.tertiary.f32(i32 46, float %839, float %887, float %960)  ; FMad(a,b,c)
  %962 = fadd fast float %961, %943
  %963 = fmul fast float %908, %836
  %964 = call float @dx.op.tertiary.f32(i32 46, float %837, float %910, float %963)  ; FMad(a,b,c)
  %965 = fmul fast float %908, %838
  %966 = call float @dx.op.tertiary.f32(i32 46, float %839, float %910, float %965)  ; FMad(a,b,c)
  %967 = fmul fast float %909, %836
  %968 = call float @dx.op.tertiary.f32(i32 46, float %837, float %911, float %967)  ; FMad(a,b,c)
  %969 = fmul fast float %909, %838
  %970 = call float @dx.op.tertiary.f32(i32 46, float %839, float %911, float %969)  ; FMad(a,b,c)
  %971 = add i32 %948, 0
  %972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %971, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %973 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %972, %dx.types.Handle %951, float %959, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %964, float %966, float undef, float %968, float %970, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = and i32 %872, 1024
  %976 = icmp ne i32 %975, 0
  %977 = fcmp fast ogt float %974, 0x3FE0101020000000
  %978 = uitofp i1 %977 to float
  %979 = select i1 %976, float %978, float %974
  %980 = and i32 %872, 8192
  %981 = icmp ne i32 %980, 0
  %982 = select i1 %981, float %942, float 1.000000e+00
  %983 = fmul fast float %880, 2.000000e+00
  %984 = fadd fast float %983, -1.000000e+00
  %985 = call float @dx.op.unary.f32(i32 6, float %984)  ; FAbs(value)
  %986 = fmul fast float %985, %869
  %987 = fsub fast float %986, %869
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %887, 2.000000e+00
  %990 = fadd fast float %989, -1.000000e+00
  %991 = call float @dx.op.unary.f32(i32 6, float %990)  ; FAbs(value)
  %992 = fmul fast float %991, %870
  %993 = fsub fast float %992, %870
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = fmul fast float %899, %832
  %996 = fsub fast float %995, %832
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fmul fast float %956, %982
  %999 = fmul fast float %998, %953
  %1000 = fmul fast float %999, %988
  %1001 = fmul fast float %1000, %979
  %1002 = fmul fast float %1001, %994
  %1003 = fmul fast float %1002, %997
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1007 = fsub fast float %916, %1006
  %1008 = fmul fast float %1007, %1005
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = fmul fast float %1003, %833
  %1011 = fadd fast float %1003, %833
  %1012 = fmul fast float %1011, %842
  %1013 = fsub fast float %1012, %842
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = and i32 %872, 128
  %1016 = icmp ne i32 %1015, 0
  %1017 = select i1 %1016, float %1014, float %1010
  %1018 = fmul fast float %1017, %1009
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1021 = fcmp fast ugt float %1018, %1020
  br i1 %1021, label %1022, label %921

; <label>:1022                                    ; preds = %941
  %1023 = select i1 %981, float %1018, float 0.000000e+00
  %1024 = fadd fast float %1023, %796
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  br i1 %981, label %921, label %1026

; <label>:1026                                    ; preds = %1022
  %1027 = and i32 %872, 4
  %1028 = and i32 %872, 8
  %1029 = add i32 %828, 0
  %1030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1030, %dx.types.Handle %1031, float %959, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %964, float %966, float undef, float %968, float %970, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1037 = bitcast float %854 to i32
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1037, 8
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = fmul fast float %1036, %1039
  %1044 = fadd fast float %1043, %1042
  %1045 = fmul fast float %1044, 0x3F70101000000000
  %1046 = add i32 %829, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1046, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1047, %dx.types.Handle %1031, float %959, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %964, float %966, float undef, float %968, float %970, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = bitcast float %848 to i32
  %1054 = and i32 %1053, 255
  %1055 = uitofp i32 %1054 to float
  %1056 = lshr i32 %1053, 8
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = lshr i32 %1053, 16
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F70101000000000
  %1063 = fmul fast float %1049, %1055
  %1064 = fadd fast float %1063, %1058
  %1065 = fmul fast float %1064, 0x3F70101000000000
  %1066 = fadd fast float %1050, -5.000000e-01
  %1067 = fadd fast float %1052, -5.000000e-01
  %1068 = fmul fast float %1066, %1062
  %1069 = fmul fast float %1067, %1062
  %1070 = fadd fast float %1068, 5.000000e-01
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = fmul fast float %1033, %857
  %1073 = fmul fast float %1034, %858
  %1074 = fmul fast float %1035, %859
  %1075 = fmul fast float %1070, 2.000000e+00
  %1076 = fadd fast float %1075, -1.000000e+00
  %1077 = fmul fast float %1071, 2.000000e+00
  %1078 = fadd fast float %1077, -1.000000e+00
  %1079 = fadd fast float %1076, %1078
  %1080 = fmul fast float %1079, 5.000000e-01
  %1081 = fsub fast float %1076, %1078
  %1082 = fmul fast float %1081, 5.000000e-01
  %1083 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1084 = fsub fast float 1.000000e+00, %1083
  %1085 = call float @dx.op.unary.f32(i32 6, float %1082)  ; FAbs(value)
  %1086 = fsub fast float %1084, %1085
  %1087 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1082, float %1086, float %1080, float %1082, float %1086)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = call float @dx.op.unary.f32(i32 25, float %1087)  ; Rsqrt(value)
  %1089 = fmul fast float %1080, %1088
  %1090 = fmul fast float %1082, %1088
  %1091 = fmul fast float %1088, %1086
  %1092 = fmul fast float %1091, %822
  %1093 = fmul fast float %1091, %823
  %1094 = fmul fast float %1091, %824
  %1095 = fmul fast float %1089, %845
  %1096 = fmul fast float %1089, %846
  %1097 = fmul fast float %1089, %847
  %1098 = fadd fast float %1095, %1092
  %1099 = fadd fast float %1096, %1093
  %1100 = fadd fast float %1097, %1094
  %1101 = fmul fast float %1090, %851
  %1102 = fmul fast float %1090, %852
  %1103 = fmul fast float %1090, %853
  %1104 = fadd fast float %1098, %1101
  %1105 = fadd fast float %1099, %1102
  %1106 = fadd fast float %1100, %1103
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float %1104, float %1105, float %1106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.unary.f32(i32 25, float %1107)  ; Rsqrt(value)
  %1109 = fmul fast float %1104, %1108
  %1110 = fmul fast float %1105, %1108
  %1111 = fmul fast float %1106, %1108
  %1112 = icmp ne i32 %1028, 0
  %1113 = select i1 %1112, float 1.000000e+00, float 0.000000e+00
  %1114 = fmul fast float %1018, %1113
  %1115 = and i32 %872, 1
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1117, label %1121

; <label>:1117                                    ; preds = %1026
  %1118 = fsub fast float %1109, %804
  %1119 = fsub fast float %1110, %805
  %1120 = fsub fast float %1111, %806
  br label %1121

; <label>:1121                                    ; preds = %1117, %1026
  %1122 = phi float [ %1118, %1117 ], [ %1109, %1026 ]
  %1123 = phi float [ %1119, %1117 ], [ %1110, %1026 ]
  %1124 = phi float [ %1120, %1117 ], [ %1111, %1026 ]
  %1125 = fmul float %1124, %1114
  %1126 = fmul float %1123, %1114
  %1127 = fmul float %1122, %1114
  %1128 = fadd fast float %1127, %804
  %1129 = fadd fast float %1126, %805
  %1130 = fadd fast float %1125, %806
  %1131 = icmp ne i32 %1027, 0
  %1132 = select i1 %1131, float 1.000000e+00, float 0.000000e+00
  %1133 = fmul fast float %1018, %1132
  %1134 = fsub fast float %1072, %811
  %1135 = fsub fast float %1073, %812
  %1136 = fsub fast float %1074, %813
  %1137 = fmul fast float %1134, %1133
  %1138 = fmul fast float %1135, %1133
  %1139 = fmul fast float %1136, %1133
  %1140 = fadd fast float %1137, %811
  %1141 = fadd fast float %1138, %812
  %1142 = fadd fast float %1139, %813
  %1143 = fsub fast float %1045, %810
  %1144 = fmul fast float %1143, %1133
  %1145 = fadd fast float %1144, %810
  %1146 = fmul fast float %1133, %800
  %1147 = fsub fast float %800, %1146
  %1148 = fmul fast float %1133, %799
  %1149 = fsub fast float %799, %1148
  %1150 = fadd fast float %1018, %809
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1152 = fsub fast float %1065, %808
  %1153 = fmul fast float %1152, %1114
  %1154 = fadd fast float %1153, %808
  %1155 = fsub fast float %1051, %807
  %1156 = fmul fast float %1155, %1114
  %1157 = fadd fast float %1156, %807
  %1158 = call float @dx.op.dot3.f32(i32 55, float %1072, float %1073, float %1074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1162 = fmul fast float %1161, %1158
  %1163 = fadd fast float %1162, %1160
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = bitcast float %860 to i32
  %1166 = and i32 %1165, 65535
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = lshr i32 %1165, 16
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = fcmp fast oge float %1167, 0.000000e+00
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = select i1 %1170, float %1167, float %1172
  %1174 = fadd fast float %1173, %1169
  %1175 = fsub fast float %1164, %798
  %1176 = fmul fast float %1175, %1018
  %1177 = fadd fast float %1176, %798
  %1178 = fmul fast float %1174, %1018
  %1179 = call float @dx.op.binary.f32(i32 35, float %797, float %1178)  ; FMax(a,b)
  %1180 = and i32 %872, 16
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1204, label %1182

; <label>:1182                                    ; preds = %1121
  %1183 = bitcast float %866 to i32
  %1184 = add i32 %863, 0
  %1185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1184, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1186 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1185, %dx.types.Handle %1031, float %959, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float %964, float %966, float undef, float %968, float %970, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1190 = and i32 %1183, 65535
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = fmul fast float %1187, %857
  %1193 = fmul fast float %1188, %858
  %1194 = fmul fast float %1189, %859
  %1195 = and i32 %872, 16384
  %1196 = icmp ne i32 %1195, 0
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = select i1 %1196, float %1198, float 1.000000e+00
  %1200 = fmul fast float %1199, %1191
  %1201 = fmul fast float %1192, %1200
  %1202 = fmul fast float %1193, %1200
  %1203 = fmul fast float %1194, %1200
  br label %1204

; <label>:1204                                    ; preds = %1182, %1121
  %1205 = phi float [ %1201, %1182 ], [ 0.000000e+00, %1121 ]
  %1206 = phi float [ %1202, %1182 ], [ 0.000000e+00, %1121 ]
  %1207 = phi float [ %1203, %1182 ], [ 0.000000e+00, %1121 ]
  %1208 = fsub fast float %1205, %801
  %1209 = fsub fast float %1206, %802
  %1210 = fsub fast float %1207, %803
  %1211 = fmul fast float %1208, %1018
  %1212 = fmul fast float %1209, %1018
  %1213 = fmul fast float %1210, %1018
  %1214 = fadd fast float %1211, %801
  %1215 = fadd fast float %1212, %802
  %1216 = fadd fast float %1213, %803
  br label %921

; <label>:1217                                    ; preds = %921
  br label %1218

; <label>:1218                                    ; preds = %1217, %695
  %1219 = phi float [ 0.000000e+00, %695 ], [ %922, %1217 ]
  %1220 = phi float [ %713, %695 ], [ %923, %1217 ]
  %1221 = phi float [ %711, %695 ], [ %924, %1217 ]
  %1222 = phi float [ 0.000000e+00, %695 ], [ %925, %1217 ]
  %1223 = phi float [ 0.000000e+00, %695 ], [ %926, %1217 ]
  %1224 = phi float [ %704, %695 ], [ %927, %1217 ]
  %1225 = phi float [ %705, %695 ], [ %928, %1217 ]
  %1226 = phi float [ %706, %695 ], [ %929, %1217 ]
  %1227 = phi float [ %739, %695 ], [ %930, %1217 ]
  %1228 = phi float [ %740, %695 ], [ %931, %1217 ]
  %1229 = phi float [ %741, %695 ], [ %932, %1217 ]
  %1230 = phi float [ %710, %695 ], [ %933, %1217 ]
  %1231 = phi float [ %709, %695 ], [ %934, %1217 ]
  %1232 = phi float [ 0.000000e+00, %695 ], [ %935, %1217 ]
  %1233 = phi float [ %707, %695 ], [ %936, %1217 ]
  %1234 = phi float [ %698, %695 ], [ %937, %1217 ]
  %1235 = phi float [ %699, %695 ], [ %938, %1217 ]
  %1236 = phi float [ %700, %695 ], [ %939, %1217 ]
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1227, float %1228, float %1229, float %1227, float %1228, float %1229)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = call float @dx.op.unary.f32(i32 25, float %1237)  ; Rsqrt(value)
  %1239 = fmul fast float %1238, %1227
  %1240 = fmul fast float %1238, %1228
  %1241 = fmul fast float %1238, %1229
  %1242 = fadd fast float %1232, %708
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = call float @dx.op.dot3.f32(i32 55, float %1239, float %1240, float %1241, float %1239, float %1240, float %1241)  ; Dot3(ax,ay,az,bx,by,bz)
  %1245 = call float @dx.op.unary.f32(i32 25, float %1244)  ; Rsqrt(value)
  %1246 = fmul fast float %1245, %1239
  %1247 = fmul fast float %1245, %1240
  %1248 = fmul fast float %1245, %1241
  %1249 = fadd fast float %1233, 0xBFB99999A0000000
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %1250, 0x3FF1C71C80000000
  %1252 = call float @dx.op.binary.f32(i32 36, float %1233, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1253 = fsub fast float 1.000000e+00, %1251
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1255 = fmul fast float %1254, %1234
  %1256 = fmul fast float %1254, %1235
  %1257 = fmul fast float %1254, %1236
  %1258 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1260 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1261 = fmul fast float %1251, %1234
  %1262 = fmul fast float %1251, %1235
  %1263 = fmul fast float %1251, %1236
  %1264 = fadd fast float %1261, %1252
  %1265 = fadd fast float %1262, %1252
  %1266 = fadd fast float %1263, %1252
  %1267 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1268 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1270 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.i32 %1271, 3
  %1273 = and i32 %1272, 8
  %1274 = icmp ne i32 %1273, 0
  %1275 = call float @dx.op.binary.f32(i32 35, float %1258, float %1234)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 35, float %1259, float %1234)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 35, float %1260, float %1234)  ; FMax(a,b)
  %1278 = call float @dx.op.dot3.f32(i32 55, float %1258, float %1259, float %1260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1279 = select i1 %176, float %1234, float %1258
  %1280 = select i1 %176, float %1278, float %1259
  %1281 = select i1 %176, float 1.000000e+00, float %1260
  %1282 = select i1 %1274, float %1275, float %1279
  %1283 = select i1 %1274, float %1276, float %1280
  %1284 = select i1 %1274, float %1277, float %1281
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1289 = fadd fast float %1286, %105
  %1290 = fadd fast float %1287, %106
  %1291 = fadd fast float %1288, %107
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = fsub fast float %1289, %1293
  %1296 = fsub fast float %1290, %1294
  %1297 = fmul fast float %1295, %1295
  %1298 = fmul fast float %1296, %1296
  %1299 = fadd fast float %1297, %1298
  %1300 = call float @dx.op.unary.f32(i32 24, float %1299)  ; Sqrt(value)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1302 = fcmp fast olt float %1300, %1301
  br i1 %1302, label %1303, label %1370

; <label>:1303                                    ; preds = %1218
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1311 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1308, 1
  %1313 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1314 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1315 = extractvalue %dx.types.CBufRet.f32 %1308, 3
  %1316 = fadd fast float %1313, %1289
  %1317 = fadd fast float %1314, %1290
  %1318 = fadd fast float %1315, %1291
  %1319 = fmul fast float %1316, %1305
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1307, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1309, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1316, %1310
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1311, float %1322)  ; FMad(a,b,c)
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1312, float %1323)  ; FMad(a,b,c)
  %1325 = fsub fast float %1321, %1313
  %1326 = fsub fast float %1324, %1314
  %1327 = fsub fast float %1325, %1293
  %1328 = fadd fast float %1327, %1301
  %1329 = fsub fast float %1326, %1294
  %1330 = fadd fast float %1329, %1301
  %1331 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1332 = fmul fast float %1328, %1331
  %1333 = fmul fast float %1330, %1331
  %1334 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1336 = fsub fast float 1.000000e+00, %1334
  %1337 = fsub fast float 1.000000e+00, %1335
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1336, float %1337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = fcmp fast ugt float %1339, 0.000000e+00
  br i1 %1340, label %1341, label %1644

; <label>:1341                                    ; preds = %1303
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1344 = fmul fast float %1343, %1339
  %1345 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1346 = fadd fast float %1345, %1344
  %1347 = extractvalue %dx.types.CBufRet.f32 %1308, 2
  %1348 = fadd fast float %1346, %1315
  %1349 = fmul fast float %1321, %1309
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %1312, float %1349)  ; FMad(a,b,c)
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1348, float %1347, float %1350)  ; FMad(a,b,c)
  %1352 = fsub fast float %1351, %1315
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1355 = fsub fast float %1352, %1354
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1336, float %1337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1336, float %1337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = fadd fast float %1361, %1357
  %1365 = fmul fast float %1364, 0x3F847AE140000000
  %1366 = fadd fast float %1362, %1358
  %1367 = fmul fast float %1366, 0x3F847AE140000000
  %1368 = fadd fast float %1363, %1359
  %1369 = fmul fast float %1368, 0x3F847AE140000000
  br label %1644

; <label>:1370                                    ; preds = %1218
  %1371 = and i32 %152, 1
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1644, label %1373

; <label>:1373                                    ; preds = %1370
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1381 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1382 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1383 = extractvalue %dx.types.CBufRet.f32 %1374, 3
  %1384 = extractvalue %dx.types.CBufRet.f32 %1376, 3
  %1385 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1386 = fadd fast float %1383, %1289
  %1387 = fadd fast float %1384, %1290
  %1388 = fadd fast float %1385, %1291
  %1389 = fmul fast float %1386, %1375
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1387, float %1377, float %1389)  ; FMad(a,b,c)
  %1391 = call float @dx.op.tertiary.f32(i32 46, float %1388, float %1379, float %1390)  ; FMad(a,b,c)
  %1392 = fmul fast float %1386, %1380
  %1393 = call float @dx.op.tertiary.f32(i32 46, float %1387, float %1381, float %1392)  ; FMad(a,b,c)
  %1394 = call float @dx.op.tertiary.f32(i32 46, float %1388, float %1382, float %1393)  ; FMad(a,b,c)
  %1395 = fsub fast float %1391, %1383
  %1396 = fsub fast float %1394, %1384
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.CBufRet.f32 %1397, 2
  %1401 = extractvalue %dx.types.CBufRet.f32 %1397, 3
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.i32 %1404, 0
  %1406 = extractvalue %dx.types.CBufRet.i32 %1404, 1
  %1407 = udiv i32 %1406, %1405
  %1408 = fsub fast float %1395, %1398
  %1409 = fsub fast float %1396, %1399
  %1410 = call float @dx.op.binary.f32(i32 35, float %1408, float 0.000000e+00)  ; FMax(a,b)
  %1411 = call float @dx.op.binary.f32(i32 35, float %1409, float 0.000000e+00)  ; FMax(a,b)
  %1412 = call float @dx.op.binary.f32(i32 36, float %1410, float %1400)  ; FMin(a,b)
  %1413 = call float @dx.op.binary.f32(i32 36, float %1411, float %1401)  ; FMin(a,b)
  %1414 = add i32 %1405, -1
  %1415 = add i32 %1407, -1
  %1416 = fmul fast float %1412, %1403
  %1417 = fmul fast float %1413, %1403
  %1418 = fptoui float %1416 to i32
  %1419 = fptoui float %1417 to i32
  %1420 = call i32 @dx.op.binary.i32(i32 40, i32 %1418, i32 %1414)  ; UMin(a,b)
  %1421 = call i32 @dx.op.binary.i32(i32 40, i32 %1419, i32 %1415)  ; UMin(a,b)
  %1422 = mul i32 %1421, %1405
  %1423 = add i32 %1422, %1420
  %1424 = shl i32 %1423, 2
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = icmp eq i32 %1426, -1
  br i1 %1427, label %1644, label %1428

; <label>:1428                                    ; preds = %1373
  %1429 = mul i32 %1426, 148
  %1430 = add i32 %1429, 4
  %1431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = add i32 %1429, 8
  %1434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = add i32 %1429, 36
  %1437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = add i32 %1429, 60
  %1440 = add i32 %1429, 92
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %1429, 116
  %1444 = fsub fast float %1395, %1432
  %1445 = fsub fast float %1396, %1435
  %1446 = fmul fast float %1403, %1444
  %1447 = fmul fast float %1403, %1445
  %1448 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1449 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1453 = call float @dx.op.unary.f32(i32 83, float %1448)  ; DerivCoarseX(value)
  %1454 = call float @dx.op.unary.f32(i32 83, float %1450)  ; DerivCoarseX(value)
  %1455 = call float @dx.op.unary.f32(i32 84, float %1448)  ; DerivCoarseY(value)
  %1456 = call float @dx.op.unary.f32(i32 84, float %1450)  ; DerivCoarseY(value)
  %1457 = fmul fast float %1453, %1452
  %1458 = fmul fast float %1454, %1452
  %1459 = fmul fast float %1455, %1452
  %1460 = fmul fast float %1456, %1452
  %1461 = call float @dx.op.dot2.f32(i32 54, float %1459, float %1460, float %1459, float %1460)  ; Dot2(ax,ay,bx,by)
  %1462 = call float @dx.op.dot2.f32(i32 54, float %1457, float %1458, float %1457, float %1458)  ; Dot2(ax,ay,bx,by)
  %1463 = call float @dx.op.binary.f32(i32 35, float %1462, float %1461)  ; FMax(a,b)
  %1464 = call float @dx.op.unary.f32(i32 23, float %1463)  ; Log(value)
  %1465 = fmul fast float %1464, 5.000000e-01
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1468 = fadd fast float %1467, %1465
  %1469 = call float @dx.op.binary.f32(i32 35, float %1468, float 0.000000e+00)  ; FMax(a,b)
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1472 = fadd fast float %1471, %1469
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 3
  %1475 = fadd fast float %1472, %1474
  %1476 = add i32 %1442, 0
  %1477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1476, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1478 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1477, i32 0)  ; GetDimensions(handle,mipLevel)
  %1479 = extractvalue %dx.types.Dimensions %1478, 0
  %1480 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1479)  ; FirstbitLo(value)
  %1481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.i32 %1481, 1
  %1483 = sub nsw i32 %1482, %1480
  %1484 = sitofp i32 %1483 to float
  %1485 = fsub fast float %1475, %1484
  %1486 = call float @dx.op.binary.f32(i32 35, float %1485, float 0.000000e+00)  ; FMax(a,b)
  %1487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1477, %dx.types.Handle %33, float %1448, float %1450, float %1438, float undef, i32 0, i32 0, i32 undef, float %1486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = fcmp ule float %1488, 0x3FE0101020000000
  %1490 = extractvalue %dx.types.CBufRet.i32 %1481, 0
  %1491 = and i32 %1490, 128
  %1492 = icmp ne i32 %1491, 0
  %1493 = and i1 %1489, %1492
  br i1 %1493, label %1644, label %1494

; <label>:1494                                    ; preds = %1428
  %1495 = add i32 %1429, 20
  %1496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = add i32 %1429, 24
  %1499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = add i32 %1429, 40
  %1502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = add i32 %1429, 96
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1509 = fmul fast float %1508, %1448
  %1510 = fmul fast float %1508, %1450
  %1511 = extractvalue %dx.types.CBufRet.f32 %1507, 3
  %1512 = fadd fast float %1509, %1511
  %1513 = fadd fast float %1510, %1511
  %1514 = add i32 %1506, 0
  %1515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1514, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1516 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1515, i32 0)  ; GetDimensions(handle,mipLevel)
  %1517 = extractvalue %dx.types.Dimensions %1516, 0
  %1518 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1517)  ; FirstbitLo(value)
  %1519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.i32 %1519, 1
  %1521 = sub nsw i32 %1520, %1518
  %1522 = sitofp i32 %1521 to float
  %1523 = fsub fast float %1472, %1522
  %1524 = call float @dx.op.binary.f32(i32 35, float %1523, float 0.000000e+00)  ; FMax(a,b)
  %1525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1515, %dx.types.Handle %33, float %1512, float %1513, float %1503, float undef, i32 0, i32 0, i32 undef, float %1524)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = fmul fast float %1526, %1497
  %1528 = fadd fast float %1527, %1500
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 3
  %1537 = extractvalue %dx.types.CBufRet.f32 %1529, 3
  %1538 = fadd fast float %1534, %1395
  %1539 = fadd fast float %1536, %1396
  %1540 = fadd fast float %1528, %1537
  %1541 = fmul fast float %1538, %1530
  %1542 = call float @dx.op.tertiary.f32(i32 46, float %1539, float %1531, float %1541)  ; FMad(a,b,c)
  %1543 = call float @dx.op.tertiary.f32(i32 46, float %1540, float %1532, float %1542)  ; FMad(a,b,c)
  %1544 = fsub fast float %1543, %1537
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1547 = fsub fast float %1544, %1546
  %1548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.i32 %1548, 0
  %1550 = call i32 @dx.op.binary.i32(i32 40, i32 %1426, i32 %1549)  ; UMin(a,b)
  %1551 = mul i32 %1550, 36
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1551, 4
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = fmul fast float %1556, %1448
  %1558 = fmul fast float %1556, %1450
  %1559 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1560 = fadd fast float %1557, %1559
  %1561 = fadd fast float %1558, %1559
  %1562 = icmp eq i32 %1553, 0
  br i1 %1562, label %1631, label %1563

; <label>:1563                                    ; preds = %1494
  br label %1564

; <label>:1564                                    ; preds = %1621, %1563
  %1565 = phi float [ %1622, %1621 ], [ 0.000000e+00, %1563 ]
  %1566 = phi float [ %1623, %1621 ], [ 0.000000e+00, %1563 ]
  %1567 = phi float [ %1624, %1621 ], [ 0.000000e+00, %1563 ]
  %1568 = phi float [ %1625, %1621 ], [ 0.000000e+00, %1563 ]
  %1569 = phi float [ %1626, %1621 ], [ 0.000000e+00, %1563 ]
  %1570 = phi float [ %1627, %1621 ], [ 0.000000e+00, %1563 ]
  %1571 = phi i32 [ %1628, %1621 ], [ 0, %1563 ]
  %1572 = shl i32 %1571, 2
  %1573 = add i32 %1439, %1572
  %1574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = add i32 %1443, %1572
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = add i32 %1578, 0
  %1580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1579, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1581 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1580, i32 0)  ; GetDimensions(handle,mipLevel)
  %1582 = extractvalue %dx.types.Dimensions %1581, 0
  %1583 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1582)  ; FirstbitLo(value)
  %1584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.i32 %1584, 1
  %1586 = sub nsw i32 %1585, %1583
  %1587 = sitofp i32 %1586 to float
  %1588 = fsub fast float %1472, %1587
  %1589 = call float @dx.op.binary.f32(i32 35, float %1588, float 0.000000e+00)  ; FMax(a,b)
  %1590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1580, %dx.types.Handle %33, float %1560, float %1561, float %1575, float undef, i32 0, i32 0, i32 undef, float %1589)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = fcmp fast ogt float %1591, 0.000000e+00
  br i1 %1592, label %1593, label %1621

; <label>:1593                                    ; preds = %1564
  %1594 = add i32 %1554, %1572
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 32767
  %1598 = mul nuw nsw i32 %1597, 928
  %1599 = add nuw nsw i32 %1598, 48
  %1600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.ResRet.f32 %1600, 1
  %1603 = extractvalue %dx.types.ResRet.f32 %1600, 2
  %1604 = add nuw nsw i32 %1598, 60
  %1605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.ResRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1605, 2
  %1609 = fmul fast float %1601, %1591
  %1610 = fmul fast float %1602, %1591
  %1611 = fmul fast float %1603, %1591
  %1612 = fadd fast float %1609, %1565
  %1613 = fadd fast float %1610, %1566
  %1614 = fadd fast float %1611, %1567
  %1615 = fmul fast float %1606, %1591
  %1616 = fmul fast float %1607, %1591
  %1617 = fmul fast float %1608, %1591
  %1618 = fadd fast float %1615, %1568
  %1619 = fadd fast float %1616, %1569
  %1620 = fadd fast float %1617, %1570
  br label %1621

; <label>:1621                                    ; preds = %1593, %1564
  %1622 = phi float [ %1612, %1593 ], [ %1565, %1564 ]
  %1623 = phi float [ %1613, %1593 ], [ %1566, %1564 ]
  %1624 = phi float [ %1614, %1593 ], [ %1567, %1564 ]
  %1625 = phi float [ %1618, %1593 ], [ %1568, %1564 ]
  %1626 = phi float [ %1619, %1593 ], [ %1569, %1564 ]
  %1627 = phi float [ %1620, %1593 ], [ %1570, %1564 ]
  %1628 = add nuw i32 %1571, 1
  %1629 = icmp eq i32 %1628, %1553
  br i1 %1629, label %1630, label %1564

; <label>:1630                                    ; preds = %1621
  br label %1631

; <label>:1631                                    ; preds = %1630, %1494
  %1632 = phi float [ 0.000000e+00, %1494 ], [ %1622, %1630 ]
  %1633 = phi float [ 0.000000e+00, %1494 ], [ %1623, %1630 ]
  %1634 = phi float [ 0.000000e+00, %1494 ], [ %1624, %1630 ]
  %1635 = phi float [ 0.000000e+00, %1494 ], [ %1625, %1630 ]
  %1636 = phi float [ 0.000000e+00, %1494 ], [ %1626, %1630 ]
  %1637 = phi float [ 0.000000e+00, %1494 ], [ %1627, %1630 ]
  %1638 = fadd fast float %1635, %1632
  %1639 = fmul fast float %1638, 0x3F847AE140000000
  %1640 = fadd fast float %1636, %1633
  %1641 = fmul fast float %1640, 0x3F847AE140000000
  %1642 = fadd fast float %1637, %1634
  %1643 = fmul fast float %1642, 0x3F847AE140000000
  br label %1644

; <label>:1644                                    ; preds = %1631, %1428, %1373, %1370, %1341, %1303
  %1645 = phi float [ %1355, %1341 ], [ -1.310720e+05, %1303 ], [ %1547, %1631 ], [ -1.310720e+05, %1373 ], [ -1.310720e+05, %1428 ], [ -1.310720e+05, %1370 ]
  %1646 = phi float [ %1365, %1341 ], [ 0.000000e+00, %1303 ], [ %1639, %1631 ], [ 0.000000e+00, %1373 ], [ 0.000000e+00, %1428 ], [ 0.000000e+00, %1370 ]
  %1647 = phi float [ %1367, %1341 ], [ 0.000000e+00, %1303 ], [ %1641, %1631 ], [ 0.000000e+00, %1373 ], [ 0.000000e+00, %1428 ], [ 0.000000e+00, %1370 ]
  %1648 = phi float [ %1369, %1341 ], [ 0.000000e+00, %1303 ], [ %1643, %1631 ], [ 0.000000e+00, %1373 ], [ 0.000000e+00, %1428 ], [ 0.000000e+00, %1370 ]
  %1649 = phi i1 [ true, %1341 ], [ false, %1303 ], [ true, %1631 ], [ false, %1373 ], [ false, %1428 ], [ false, %1370 ]
  %1650 = and i32 %152, 3
  %1651 = icmp eq i32 %1650, 1
  %1652 = select i1 %1651, float 1.000000e+00, float 0.000000e+00
  %1653 = fsub fast float %1645, %107
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = select i1 %1649, float %1654, float 1.000000e+00
  %1656 = fmul fast float %1655, %1652
  %1657 = icmp eq i32 %1650, 3
  %1658 = select i1 %1657, float 1.000000e+00, float %1656
  %1659 = call float @dx.op.binary.f32(i32 35, float %1219, float %1658)  ; FMax(a,b)
  %1660 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1661 = fcmp fast une float %1660, 0.000000e+00
  %1662 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = call float @dx.op.unary.f32(i32 25, float %1662)  ; Rsqrt(value)
  br i1 %1661, label %1671, label %1664

; <label>:1664                                    ; preds = %1644
  %1665 = fmul fast float %1663, %105
  %1666 = fmul fast float %1663, %106
  %1667 = fmul fast float %1663, %107
  %1668 = fsub fast float -0.000000e+00, %1665
  %1669 = fsub fast float -0.000000e+00, %1666
  %1670 = fsub fast float -0.000000e+00, %1667
  br label %1839

; <label>:1671                                    ; preds = %1644
  %1672 = fmul fast float %105, %1663
  %1673 = fsub fast float -0.000000e+00, %1672
  %1674 = fmul fast float %106, %1663
  %1675 = fsub fast float -0.000000e+00, %1674
  %1676 = fmul fast float %107, %1663
  %1677 = fsub fast float -0.000000e+00, %1676
  %1678 = call float @dx.op.dot3.f32(i32 55, float %1673, float %1675, float %1677, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1679 = fmul fast float %1660, 2.500000e+00
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = fmul fast float %1660, 0x4013FFFFE0000000
  %1682 = fadd fast float %1681, 0xBFFFFFFFE0000000
  %1683 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1684 = fmul fast float %1660, 0x4004000020000000
  %1685 = fadd fast float %1684, 0xBFF8000040000000
  %1686 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1688 = fmul fast float %1249, 1.000000e+01
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = fmul fast float %1689, 2.000000e+00
  %1691 = fsub fast float 3.000000e+00, %1690
  %1692 = fmul fast float %1689, %1689
  %1693 = fmul fast float %1692, %1691
  %1694 = fsub fast float 1.000000e+00, %1693
  %1695 = fsub fast float 0x3FE3333340000000, %1270
  %1696 = fmul fast float %1695, 0x400AAAAAA0000000
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fmul fast float %1694, %1697
  %1699 = fmul fast float %1282, 0x3FEA2B8620000000
  %1700 = fmul fast float %1283, 0x3FEA2B8620000000
  %1701 = fmul fast float %1284, 0x3FEA2B8620000000
  %1702 = fadd fast float %1699, 0x3FC81DFBA0000000
  %1703 = fmul fast float %1702, %1282
  %1704 = fadd fast float %1703, 0x3F910E6020000000
  %1705 = fadd fast float %1700, 0x3FC81DFBA0000000
  %1706 = fmul fast float %1705, %1283
  %1707 = fadd fast float %1706, 0x3F910E6020000000
  %1708 = fadd fast float %1701, 0x3FC81DFBA0000000
  %1709 = fmul fast float %1708, %1284
  %1710 = fadd fast float %1709, 0x3F910E6020000000
  %1711 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1712 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1713 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1714 = fsub fast float %1711, %1282
  %1715 = fsub fast float %1712, %1283
  %1716 = fsub fast float %1713, %1284
  %1717 = fmul fast float %1714, %1687
  %1718 = fmul fast float %1717, %1698
  %1719 = fmul fast float %1715, %1687
  %1720 = fmul fast float %1719, %1698
  %1721 = fmul fast float %1716, %1687
  %1722 = fmul fast float %1721, %1698
  %1723 = fadd fast float %1718, %1282
  %1724 = fadd fast float %1720, %1283
  %1725 = fadd fast float %1722, %1284
  %1726 = fmul fast float %1230, %1230
  %1727 = fmul fast float %1726, %1726
  %1728 = fadd fast float %1683, 1.000000e+00
  %1729 = fsub fast float %1728, %1698
  %1730 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1731 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fsub fast float 1.000000e+00, %1727
  %1734 = call float @dx.op.binary.f32(i32 36, float %1730, float %1733)  ; FMin(a,b)
  %1735 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1736 = call float @dx.op.binary.f32(i32 35, float %1734, float %1735)  ; FMax(a,b)
  %1737 = fadd fast float %1732, 0xBFE4CCCCC0000000
  %1738 = fmul fast float %1737, 0x4006DB6DA0000000
  %1739 = call float @dx.op.unary.f32(i32 7, float %1738)  ; Saturate(value)
  %1740 = fmul fast float %1739, 2.000000e+00
  %1741 = fsub fast float 3.000000e+00, %1740
  %1742 = bitcast float %1267 to i32
  %1743 = ashr i32 %1742, 1
  %1744 = add nsw i32 %1743, 532487669
  %1745 = bitcast i32 %1744 to float
  %1746 = fsub fast float 1.000000e+00, %1745
  %1747 = bitcast float %1746 to i32
  %1748 = sub nsw i32 2129859010, %1747
  %1749 = bitcast i32 %1748 to float
  %1750 = fmul fast float %1749, 2.000000e+00
  %1751 = bitcast float %1268 to i32
  %1752 = ashr i32 %1751, 1
  %1753 = add nsw i32 %1752, 532487669
  %1754 = bitcast i32 %1753 to float
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = bitcast float %1755 to i32
  %1757 = sub nsw i32 2129859010, %1756
  %1758 = bitcast i32 %1757 to float
  %1759 = fmul fast float %1758, 2.000000e+00
  %1760 = bitcast float %1269 to i32
  %1761 = ashr i32 %1760, 1
  %1762 = add nsw i32 %1761, 532487669
  %1763 = bitcast i32 %1762 to float
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = bitcast float %1764 to i32
  %1766 = sub nsw i32 2129859010, %1765
  %1767 = bitcast i32 %1766 to float
  %1768 = fmul fast float %1767, 2.000000e+00
  %1769 = fsub fast float 0x4002A9FBE0000000, %1750
  %1770 = fadd fast float %1750, 0x3FD54FDF00000000
  %1771 = bitcast float %1770 to i32
  %1772 = sub nsw i32 2129859010, %1771
  %1773 = bitcast i32 %1772 to float
  %1774 = fmul fast float %1773, %1769
  %1775 = fmul fast float %1774, %1774
  %1776 = fsub fast float 0x4002A9FBE0000000, %1759
  %1777 = fadd fast float %1759, 0x3FD54FDF00000000
  %1778 = bitcast float %1777 to i32
  %1779 = sub nsw i32 2129859010, %1778
  %1780 = bitcast i32 %1779 to float
  %1781 = fmul fast float %1780, %1776
  %1782 = fmul fast float %1781, %1781
  %1783 = fsub fast float 0x4002A9FBE0000000, %1768
  %1784 = fadd fast float %1768, 0x3FD54FDF00000000
  %1785 = bitcast float %1784 to i32
  %1786 = sub nsw i32 2129859010, %1785
  %1787 = bitcast i32 %1786 to float
  %1788 = fmul fast float %1787, %1783
  %1789 = fmul fast float %1788, %1788
  %1790 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1775)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1782)  ; FMax(a,b)
  %1792 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1789)  ; FMax(a,b)
  %1793 = fsub fast float 1.000000e+00, %1678
  %1794 = fadd fast float %1793, %1694
  %1795 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1796 = fsub fast float 1.000000e+00, %1658
  %1797 = fmul fast float %1736, %1796
  %1798 = fmul fast float %1739, %1739
  %1799 = fmul fast float %1798, %1797
  %1800 = fmul fast float %1799, %1741
  %1801 = fmul fast float %1796, 0xBFE99999A0000000
  %1802 = fmul fast float %1801, %1687
  %1803 = fmul fast float %1802, %1698
  %1804 = fadd fast float %1803, 1.000000e+00
  %1805 = fadd fast float %1270, -1.000000e+00
  %1806 = fmul fast float %1804, %1805
  %1807 = fadd fast float %1806, 1.000000e+00
  %1808 = fsub fast float %1790, %1267
  %1809 = fsub fast float %1791, %1268
  %1810 = fsub fast float %1792, %1269
  %1811 = fmul fast float %1800, %1808
  %1812 = fmul fast float %1800, %1809
  %1813 = fmul fast float %1800, %1810
  %1814 = fadd fast float %1811, %1267
  %1815 = fadd fast float %1812, %1268
  %1816 = fadd fast float %1813, %1269
  %1817 = fsub fast float %43, %1246
  %1818 = fsub fast float %44, %1247
  %1819 = fsub fast float %45, %1248
  %1820 = fmul fast float %1800, %1817
  %1821 = fmul fast float %1800, %1818
  %1822 = fmul fast float %1800, %1819
  %1823 = fadd fast float %1820, %1246
  %1824 = fadd fast float %1821, %1247
  %1825 = fadd fast float %1822, %1248
  %1826 = fmul fast float %1800, %1795
  %1827 = call float @dx.op.unary.f32(i32 7, float %1807)  ; Saturate(value)
  %1828 = fsub fast float 1.000000e+00, %1827
  %1829 = fmul fast float %1826, %1828
  %1830 = fadd fast float %1829, %1827
  %1831 = fsub fast float 1.000000e+00, %1230
  %1832 = fmul fast float %1800, %1831
  %1833 = fadd fast float %1832, %1230
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1823, float %1824, float %1825, float %1823, float %1824, float %1825)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.unary.f32(i32 25, float %1834)  ; Rsqrt(value)
  %1836 = fmul fast float %1823, %1835
  %1837 = fmul fast float %1824, %1835
  %1838 = fmul fast float %1825, %1835
  br label %1839

; <label>:1839                                    ; preds = %1671, %1664
  %1840 = phi float [ %1670, %1664 ], [ %1677, %1671 ]
  %1841 = phi float [ %1669, %1664 ], [ %1675, %1671 ]
  %1842 = phi float [ %1668, %1664 ], [ %1673, %1671 ]
  %1843 = phi float [ %1667, %1664 ], [ %1676, %1671 ]
  %1844 = phi float [ %1666, %1664 ], [ %1674, %1671 ]
  %1845 = phi float [ %1665, %1664 ], [ %1672, %1671 ]
  %1846 = phi float [ %1282, %1664 ], [ %1723, %1671 ]
  %1847 = phi float [ %1283, %1664 ], [ %1724, %1671 ]
  %1848 = phi float [ %1284, %1664 ], [ %1725, %1671 ]
  %1849 = phi float [ %1267, %1664 ], [ %1814, %1671 ]
  %1850 = phi float [ %1268, %1664 ], [ %1815, %1671 ]
  %1851 = phi float [ %1269, %1664 ], [ %1816, %1671 ]
  %1852 = phi float [ %1246, %1664 ], [ %1836, %1671 ]
  %1853 = phi float [ %1247, %1664 ], [ %1837, %1671 ]
  %1854 = phi float [ %1248, %1664 ], [ %1838, %1671 ]
  %1855 = phi float [ %1270, %1664 ], [ %1830, %1671 ]
  %1856 = phi float [ %1230, %1664 ], [ %1833, %1671 ]
  %1857 = select i1 %176, float 0.000000e+00, float %1851
  %1858 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1853, float %1854, float %1842, float %1841, float %1840)  ; Dot3(ax,ay,az,bx,by,bz)
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1844, float %1843, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = fmul fast float %1860, 2.000000e+00
  %1862 = fmul fast float %1861, %1852
  %1863 = fmul fast float %1861, %1853
  %1864 = fmul fast float %1861, %1854
  %1865 = fsub fast float %1845, %1862
  %1866 = fsub fast float %1844, %1863
  %1867 = fsub fast float %1843, %1864
  %1868 = call float @dx.op.binary.f32(i32 36, float %1856, float 1.000000e+00)  ; FMin(a,b)
  %1869 = fsub fast float 1.000000e+00, %1856
  %1870 = bitcast float %1869 to i32
  %1871 = sub nsw i32 2129859010, %1870
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1875 = fadd fast float %1873, %105
  %1876 = fadd fast float %1874, %106
  %1877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.i32 %1877, 0
  %1879 = icmp eq i32 %1878, 1
  br i1 %1879, label %1880, label %1915

; <label>:1880                                    ; preds = %1839
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1884 = fsub fast float %1875, %1882
  %1885 = fsub fast float %1876, %1883
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = fmul fast float %1884, %1887
  %1890 = fmul fast float %1885, %1888
  %1891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1889, float %1890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = fcmp fast ogt float %1892, 0.000000e+00
  %1894 = extractvalue %dx.types.CBufRet.i32 %1877, 3
  %1895 = icmp ne i32 %1894, 0
  %1896 = and i1 %1893, %1895
  br i1 %1896, label %1897, label %1915, !dx.controlflow.hints !72

; <label>:1897                                    ; preds = %1880
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.CBufRet.f32 %1898, 1
  %1901 = fsub fast float %1875, %1899
  %1902 = fsub fast float %1876, %1900
  %1903 = fmul fast float %1901, %1901
  %1904 = fmul fast float %1902, %1902
  %1905 = fadd fast float %1903, %1904
  %1906 = uitofp i32 %1894 to float
  %1907 = fmul fast float %1906, %1906
  %1908 = fcmp fast ogt float %1905, %1907
  br i1 %1908, label %1915, label %1909

; <label>:1909                                    ; preds = %1897
  %1910 = call float @dx.op.unary.f32(i32 24, float %1905)  ; Sqrt(value)
  %1911 = fsub fast float %1906, %1910
  %1912 = fmul fast float %1911, 0x3F75555560000000
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = call float @dx.op.binary.f32(i32 36, float %1913, float %1892)  ; FMin(a,b)
  br label %1915

; <label>:1915                                    ; preds = %1909, %1897, %1880, %1839
  %1916 = phi float [ 1.000000e+00, %1839 ], [ %1914, %1909 ], [ %1892, %1880 ], [ 0.000000e+00, %1897 ]
  %1917 = fcmp fast ogt float %1916, 0.000000e+00
  br i1 %1917, label %1918, label %2016, !dx.controlflow.hints !73

; <label>:1918                                    ; preds = %1915
  %1919 = fadd fast float %136, 5.000000e-01
  %1920 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.ResRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.ResRet.f32 %1921, 2
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 3
  %1927 = fmul fast float %1926, %1922
  %1928 = fmul fast float %1926, %1923
  %1929 = fmul fast float %1926, %1924
  %1930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = fmul fast float %1933, 2.000000e+00
  %1936 = fmul fast float %1934, 2.000000e+00
  %1937 = fadd fast float %1935, -1.000000e+00
  %1938 = fadd fast float %1936, -1.000000e+00
  %1939 = fadd fast float %1937, %1938
  %1940 = fmul fast float %1939, 5.000000e-01
  %1941 = fsub fast float %1937, %1938
  %1942 = fmul fast float %1941, 5.000000e-01
  %1943 = call float @dx.op.unary.f32(i32 6, float %1940)  ; FAbs(value)
  %1944 = fsub fast float 1.000000e+00, %1943
  %1945 = call float @dx.op.unary.f32(i32 6, float %1942)  ; FAbs(value)
  %1946 = fsub fast float %1944, %1945
  %1947 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1946)  ; FMax(a,b)
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1940, float %1942, float %1947, float %1940, float %1942, float %1947)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = bitcast float %1948 to i32
  %1950 = ashr i32 %1949, 1
  %1951 = sub nsw i32 1597250115, %1950
  %1952 = bitcast i32 %1951 to float
  %1953 = fmul fast float %1952, %1940
  %1954 = fmul fast float %1952, %1942
  %1955 = fmul fast float %1952, %1947
  %1956 = fsub fast float 1.000000e+00, %1931
  %1957 = fdiv fast float %1956, %1955
  %1958 = fmul fast float %1955, %43
  %1959 = fmul fast float %1955, %44
  %1960 = fmul fast float %1955, %45
  %1961 = fmul fast float %1953, %39
  %1962 = fmul fast float %1953, %40
  %1963 = fmul fast float %1953, %41
  %1964 = fadd fast float %1958, %1961
  %1965 = fadd fast float %1959, %1962
  %1966 = fadd fast float %1960, %1963
  %1967 = fmul fast float %1954, %69
  %1968 = fmul fast float %1954, %70
  %1969 = fmul fast float %1954, %71
  %1970 = fadd fast float %1964, %1967
  %1971 = fadd fast float %1965, %1968
  %1972 = fadd fast float %1966, %1969
  %1973 = call float @dx.op.dot3.f32(i32 55, float %1970, float %1971, float %1972, float %1970, float %1971, float %1972)  ; Dot3(ax,ay,az,bx,by,bz)
  %1974 = call float @dx.op.unary.f32(i32 25, float %1973)  ; Rsqrt(value)
  %1975 = fmul fast float %1970, %1974
  %1976 = fmul fast float %1971, %1974
  %1977 = fmul fast float %1972, %1974
  %1978 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1853, float %1854, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1980 = fmul fast float %1979, 5.000000e-01
  %1981 = fadd fast float %1980, 5.000000e-01
  %1982 = fmul fast float %1981, %1931
  %1983 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1853, float %1854, float %1975, float %1976, float %1977)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fmul fast float %1984, %1957
  %1986 = fadd fast float %1982, %1985
  %1987 = fsub fast float 5.000000e-01, %1980
  %1988 = fmul fast float %1987, %1846
  %1989 = fmul fast float %1987, %1847
  %1990 = fmul fast float %1987, %1848
  %1991 = fadd fast float %1986, %1988
  %1992 = fmul fast float %1991, %1927
  %1993 = fadd fast float %1986, %1989
  %1994 = fmul fast float %1993, %1928
  %1995 = fadd fast float %1986, %1990
  %1996 = fmul fast float %1995, %1929
  %1997 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %1999 = fmul fast float %1998, 5.000000e-01
  %2000 = fadd fast float %1999, 5.000000e-01
  %2001 = fmul fast float %2000, %1931
  %2002 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %1975, float %1976, float %1977)  ; Dot3(ax,ay,az,bx,by,bz)
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fmul fast float %2003, %1957
  %2005 = fadd fast float %2001, %2004
  %2006 = fsub fast float 5.000000e-01, %1999
  %2007 = fmul fast float %2006, %1846
  %2008 = fmul fast float %2006, %1847
  %2009 = fmul fast float %2006, %1848
  %2010 = fadd fast float %2005, %2007
  %2011 = fmul fast float %2010, %1927
  %2012 = fadd fast float %2005, %2008
  %2013 = fmul fast float %2012, %1928
  %2014 = fadd fast float %2005, %2009
  %2015 = fmul fast float %2014, %1929
  br label %2016

; <label>:2016                                    ; preds = %1918, %1915
  %2017 = phi float [ %2011, %1918 ], [ 0.000000e+00, %1915 ]
  %2018 = phi float [ %2013, %1918 ], [ 0.000000e+00, %1915 ]
  %2019 = phi float [ %2015, %1918 ], [ 0.000000e+00, %1915 ]
  %2020 = phi float [ %1992, %1918 ], [ 0.000000e+00, %1915 ]
  %2021 = phi float [ %1994, %1918 ], [ 0.000000e+00, %1915 ]
  %2022 = phi float [ %1996, %1918 ], [ 0.000000e+00, %1915 ]
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = fcmp fast ogt float %2024, 0.000000e+00
  %2026 = and i1 %1917, %2025
  br i1 %2026, label %2027, label %2231, !dx.controlflow.hints !74

; <label>:2027                                    ; preds = %2016
  %2028 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %2029 = fadd fast float %2028, %107
  %2030 = fmul fast float %1852, 3.200000e+01
  %2031 = fmul fast float %1853, 3.200000e+01
  %2032 = fadd fast float %1875, %2030
  %2033 = fadd fast float %1876, %2031
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = extractvalue %dx.types.CBufRet.f32 %2034, 1
  %2037 = fsub fast float %2032, %2035
  %2038 = fsub fast float %2033, %2036
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.CBufRet.f32 %2039, 1
  %2042 = fmul fast float %2037, %2040
  %2043 = fmul fast float %2038, %2041
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2047 = fsub fast float %1875, %2045
  %2048 = fsub fast float %1876, %2046
  %2049 = fmul fast float %2047, %2047
  %2050 = fmul fast float %2048, %2048
  %2051 = fadd fast float %2049, %2050
  %2052 = call float @dx.op.unary.f32(i32 24, float %2051)  ; Sqrt(value)
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = fsub fast float %2052, %2054
  %2057 = fdiv fast float %2056, %2055
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fmul fast float %2058, 2.000000e+00
  %2060 = fsub fast float 3.000000e+00, %2059
  %2061 = fmul fast float %2058, %2058
  %2062 = fmul fast float %2061, %2060
  %2063 = fcmp fast oge float %2042, 0.000000e+00
  %2064 = fcmp fast ole float %2042, 1.000000e+00
  %2065 = and i1 %2064, %2063
  %2066 = fcmp fast oge float %2043, 0.000000e+00
  %2067 = and i1 %2066, %2065
  %2068 = fcmp fast ole float %2043, 1.000000e+00
  %2069 = and i1 %2068, %2067
  %2070 = fcmp fast ogt float %2062, 0.000000e+00
  %2071 = and i1 %2070, %2069
  br i1 %2071, label %2072, label %2195, !dx.controlflow.hints !75

; <label>:2072                                    ; preds = %2027
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 2
  %2075 = extractvalue %dx.types.CBufRet.f32 %2073, 3
  %2076 = fmul fast float %2074, %2042
  %2077 = fmul fast float %2075, %2043
  %2078 = call float @dx.op.unary.f32(i32 27, float %2076)  ; Round_ni(value)
  %2079 = call float @dx.op.unary.f32(i32 27, float %2077)  ; Round_ni(value)
  %2080 = fptosi float %2078 to i32
  %2081 = fptosi float %2079 to i32
  %2082 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2080, i32 %2081, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = lshr i32 %2083, 16
  %2085 = icmp eq i32 %2084, 65535
  br i1 %2085, label %2195, label %2086

; <label>:2086                                    ; preds = %2072
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = fmul fast float %2088, %2042
  %2090 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2091 = fadd fast float %2089, %2090
  %2092 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2093 = fmul fast float %2092, %2043
  %2094 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2095 = fadd fast float %2093, %2094
  %2096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2091, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = extractvalue %dx.types.ResRet.f32 %2096, 1
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 1
  %2101 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2102 = fsub fast float %2100, %2101
  %2103 = fmul fast float %2102, %2097
  %2104 = fadd fast float %2103, %2101
  %2105 = extractvalue %dx.types.CBufRet.f32 %2099, 3
  %2106 = extractvalue %dx.types.CBufRet.f32 %2099, 2
  %2107 = fsub fast float %2105, %2106
  %2108 = fmul fast float %2107, %2098
  %2109 = fadd fast float %2108, %2106
  %2110 = fsub fast float %2029, %2104
  %2111 = fsub fast float %2109, %2104
  %2112 = fdiv fast float %2110, %2111
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %2073, 0
  %2116 = extractvalue %dx.types.CBufRet.f32 %2073, 1
  %2117 = fmul fast float %2115, %2042
  %2118 = fmul fast float %2116, %2043
  %2119 = fmul fast float %2117, 1.250000e-01
  %2120 = fmul fast float %2118, 1.250000e-01
  %2121 = call float @dx.op.unary.f32(i32 27, float %2119)  ; Round_ni(value)
  %2122 = call float @dx.op.unary.f32(i32 27, float %2120)  ; Round_ni(value)
  %2123 = fmul fast float %2121, 8.000000e+00
  %2124 = fmul fast float %2122, 8.000000e+00
  %2125 = fsub fast float %2117, %2123
  %2126 = fsub fast float %2118, %2124
  %2127 = fadd fast float %2125, 5.000000e-01
  %2128 = fadd fast float %2126, 5.000000e-01
  %2129 = and i32 %2084, 255
  %2130 = lshr i32 %2083, 24
  %2131 = mul nuw nsw i32 %2129, 9
  %2132 = uitofp i32 %2131 to float
  %2133 = mul nuw nsw i32 %2130, 9
  %2134 = uitofp i32 %2133 to float
  %2135 = fadd fast float %2127, %2132
  %2136 = fadd fast float %2128, %2134
  %2137 = fdiv fast float %2135, %2024
  %2138 = fdiv fast float %2136, %2114
  %2139 = fmul fast float %2113, 4.375000e-01
  %2140 = fadd fast float %2139, 3.125000e-02
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2137, float %2138, float %2140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.ResRet.f32 %2141, 2
  %2145 = fadd fast float %2139, 5.312500e-01
  %2146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2137, float %2138, float %2145, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.ResRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.ResRet.f32 %2146, 2
  %2150 = fmul fast float %2147, 2.000000e+00
  %2151 = fmul fast float %2148, 2.000000e+00
  %2152 = fmul fast float %2149, 2.000000e+00
  %2153 = fadd fast float %2150, -1.000000e+00
  %2154 = fadd fast float %2151, -1.000000e+00
  %2155 = fadd fast float %2152, -1.000000e+00
  %2156 = fmul fast float %2153, %2153
  %2157 = fmul fast float %2154, %2154
  %2158 = fadd fast float %2156, %2157
  %2159 = fmul fast float %2155, %2155
  %2160 = fadd fast float %2158, %2159
  %2161 = call float @dx.op.unary.f32(i32 24, float %2160)  ; Sqrt(value)
  %2162 = fcmp fast ogt float %2161, 0.000000e+00
  br i1 %2162, label %2163, label %2167

; <label>:2163                                    ; preds = %2086
  %2164 = fdiv fast float %2153, %2161
  %2165 = fdiv fast float %2154, %2161
  %2166 = fdiv fast float %2155, %2161
  br label %2167

; <label>:2167                                    ; preds = %2163, %2086
  %2168 = phi float [ %2164, %2163 ], [ 0.000000e+00, %2086 ]
  %2169 = phi float [ %2165, %2163 ], [ 0.000000e+00, %2086 ]
  %2170 = phi float [ %2166, %2163 ], [ 0.000000e+00, %2086 ]
  %2171 = call float @dx.op.dot3.f32(i32 55, float %2168, float %2169, float %2170, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2171)  ; FMax(a,b)
  %2173 = fmul fast float %2172, 0x400C5BF8A0000000
  %2174 = fmul fast float %2142, %2062
  %2175 = fmul fast float %2174, %2173
  %2176 = fmul fast float %2143, %2062
  %2177 = fmul fast float %2176, %2173
  %2178 = fmul fast float %2144, %2062
  %2179 = fmul fast float %2178, %2173
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 3
  %2182 = fmul fast float %2175, %2181
  %2183 = fmul fast float %2177, %2181
  %2184 = fmul fast float %2179, %2181
  %2185 = fcmp fast ogt float %2029, %2109
  br i1 %2185, label %2186, label %2195

; <label>:2186                                    ; preds = %2167
  %2187 = fmul fast float %2111, 0x3FC24924A0000000
  %2188 = fsub fast float %2029, %2109
  %2189 = fdiv fast float %2188, %2187
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fsub fast float 1.000000e+00, %2190
  %2192 = fmul fast float %2191, %2182
  %2193 = fmul fast float %2191, %2183
  %2194 = fmul fast float %2191, %2184
  br label %2195

; <label>:2195                                    ; preds = %2186, %2167, %2072, %2027
  %2196 = phi float [ %2194, %2186 ], [ %2184, %2167 ], [ 0.000000e+00, %2072 ], [ 0.000000e+00, %2027 ]
  %2197 = phi float [ %2193, %2186 ], [ %2183, %2167 ], [ 0.000000e+00, %2072 ], [ 0.000000e+00, %2027 ]
  %2198 = phi float [ %2192, %2186 ], [ %2182, %2167 ], [ 0.000000e+00, %2072 ], [ 0.000000e+00, %2027 ]
  %2199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2198)  ; FMax(a,b)
  %2200 = fmul fast float %2199, 0x3FD20DD760000000
  %2201 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = fmul fast float %2201, 0x3FDF454380000000
  %2203 = fmul fast float %2201, %2201
  %2204 = fmul fast float %2203, 0x3FEE471020000000
  %2205 = fadd fast float %2204, 0xBFD42F6020000000
  %2206 = call float @dx.op.dot3.f32(i32 55, float %2199, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2202, float %2205)  ; Dot3(ax,ay,az,bx,by,bz)
  %2207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2197)  ; FMax(a,b)
  %2208 = fmul fast float %2207, 0x3FD20DD760000000
  %2209 = call float @dx.op.dot3.f32(i32 55, float %2207, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2202, float %2205)  ; Dot3(ax,ay,az,bx,by,bz)
  %2210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2196)  ; FMax(a,b)
  %2211 = fmul fast float %2210, 0x3FD20DD760000000
  %2212 = call float @dx.op.dot3.f32(i32 55, float %2210, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2202, float %2205)  ; Dot3(ax,ay,az,bx,by,bz)
  %2213 = call float @dx.op.binary.f32(i32 35, float %2200, float 0.000000e+00)  ; FMax(a,b)
  %2214 = call float @dx.op.binary.f32(i32 35, float %2208, float 0.000000e+00)  ; FMax(a,b)
  %2215 = call float @dx.op.binary.f32(i32 35, float %2211, float 0.000000e+00)  ; FMax(a,b)
  %2216 = call float @dx.op.binary.f32(i32 35, float %2206, float 0.000000e+00)  ; FMax(a,b)
  %2217 = call float @dx.op.binary.f32(i32 35, float %2209, float 0.000000e+00)  ; FMax(a,b)
  %2218 = call float @dx.op.binary.f32(i32 35, float %2212, float 0.000000e+00)  ; FMax(a,b)
  %2219 = fmul fast float %2213, %1916
  %2220 = fmul fast float %2214, %1916
  %2221 = fmul fast float %2215, %1916
  %2222 = fadd fast float %2219, %2020
  %2223 = fadd fast float %2220, %2021
  %2224 = fadd fast float %2221, %2022
  %2225 = fmul fast float %2216, %1916
  %2226 = fmul fast float %2217, %1916
  %2227 = fmul fast float %2218, %1916
  %2228 = fadd fast float %2225, %2017
  %2229 = fadd fast float %2226, %2018
  %2230 = fadd fast float %2227, %2019
  br label %2231

; <label>:2231                                    ; preds = %2195, %2016
  %2232 = phi float [ %2228, %2195 ], [ %2017, %2016 ]
  %2233 = phi float [ %2229, %2195 ], [ %2018, %2016 ]
  %2234 = phi float [ %2230, %2195 ], [ %2019, %2016 ]
  %2235 = phi float [ %2222, %2195 ], [ %2020, %2016 ]
  %2236 = phi float [ %2223, %2195 ], [ %2021, %2016 ]
  %2237 = phi float [ %2224, %2195 ], [ %2022, %2016 ]
  %2238 = fcmp fast olt float %1916, 1.000000e+00
  br i1 %2238, label %2239, label %3057, !dx.controlflow.hints !76

; <label>:2239                                    ; preds = %2231
  %2240 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %2241 = fadd fast float %2240, %107
  %2242 = fmul fast float %1852, 3.200000e+01
  %2243 = fmul fast float %1853, 3.200000e+01
  %2244 = fadd fast float %1875, %2242
  %2245 = fadd fast float %1876, %2243
  %2246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2246, 0
  %2248 = extractvalue %dx.types.CBufRet.f32 %2246, 1
  %2249 = fsub fast float %2244, %2247
  %2250 = fsub fast float %2245, %2248
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2254 = fmul fast float %2249, %2252
  %2255 = fmul fast float %2250, %2253
  %2256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2256, 0
  %2258 = fmul fast float %2254, %2257
  %2259 = extractvalue %dx.types.CBufRet.f32 %2256, 1
  %2260 = fadd fast float %2258, %2259
  %2261 = extractvalue %dx.types.CBufRet.f32 %2256, 2
  %2262 = fmul fast float %2261, %2255
  %2263 = extractvalue %dx.types.CBufRet.f32 %2256, 3
  %2264 = fadd fast float %2262, %2263
  %2265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2260, float %2264, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  %2267 = extractvalue %dx.types.ResRet.f32 %2265, 1
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 1
  %2270 = extractvalue %dx.types.CBufRet.f32 %2268, 0
  %2271 = fsub fast float %2269, %2270
  %2272 = fmul fast float %2271, %2266
  %2273 = fadd fast float %2272, %2270
  %2274 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2275 = extractvalue %dx.types.CBufRet.f32 %2268, 2
  %2276 = fsub fast float %2274, %2275
  %2277 = fmul fast float %2276, %2267
  %2278 = fadd fast float %2277, %2275
  %2279 = fsub fast float %2241, %2273
  %2280 = fsub fast float %2278, %2273
  %2281 = fdiv fast float %2279, %2280
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = fmul fast float %2284, %2282
  %2286 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2287 = fadd fast float %2285, %2286
  %2288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2260, float %2264, float %2287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.ResRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.ResRet.f32 %2288, 2
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2296 = fmul fast float %2293, %2289
  %2297 = fmul fast float %2294, %2290
  %2298 = fmul fast float %2295, %2291
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2303 = fadd fast float %2296, %2300
  %2304 = fadd fast float %2297, %2301
  %2305 = fadd fast float %2298, %2302
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = fmul fast float %2307, %2254
  %2309 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2310 = fadd fast float %2308, %2309
  %2311 = extractvalue %dx.types.CBufRet.f32 %2306, 2
  %2312 = fmul fast float %2311, %2255
  %2313 = extractvalue %dx.types.CBufRet.f32 %2306, 3
  %2314 = fadd fast float %2312, %2313
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = extractvalue %dx.types.CBufRet.f32 %2315, 1
  %2318 = extractvalue %dx.types.CBufRet.f32 %2315, 2
  %2319 = extractvalue %dx.types.CBufRet.f32 %2315, 3
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2323 = extractvalue %dx.types.CBufRet.f32 %2320, 2
  %2324 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2310, float %2314, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.ResRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.ResRet.f32 %2325, 2
  %2329 = extractvalue %dx.types.ResRet.f32 %2325, 3
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2310, float %2314, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.f32 %2330, 1
  %2333 = extractvalue %dx.types.ResRet.f32 %2330, 2
  %2334 = extractvalue %dx.types.ResRet.f32 %2330, 3
  %2335 = fmul fast float %2326, %2303
  %2336 = fmul fast float %2331, %2303
  %2337 = fmul fast float %2333, %2303
  %2338 = fmul fast float %2329, %2303
  %2339 = fadd fast float %2335, %2316
  %2340 = fadd fast float %2336, %2317
  %2341 = fadd fast float %2337, %2318
  %2342 = fadd fast float %2338, %2319
  %2343 = fmul fast float %2327, %2303
  %2344 = fmul fast float %2332, %2303
  %2345 = fadd fast float %2343, %2321
  %2346 = fadd fast float %2344, %2322
  %2347 = fmul fast float %2328, %2303
  %2348 = fmul fast float %2334, %2303
  %2349 = fadd fast float %2347, %2323
  %2350 = fadd fast float %2348, %2324
  %2351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2310, float %2314, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.ResRet.f32 %2351, 2
  %2355 = extractvalue %dx.types.ResRet.f32 %2351, 3
  %2356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2310, float %2314, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.ResRet.f32 %2356, 3
  %2361 = fmul fast float %2352, %2304
  %2362 = fmul fast float %2357, %2304
  %2363 = fmul fast float %2359, %2304
  %2364 = fmul fast float %2355, %2304
  %2365 = fadd fast float %2339, %2361
  %2366 = fadd fast float %2340, %2362
  %2367 = fadd fast float %2341, %2363
  %2368 = fadd fast float %2342, %2364
  %2369 = fmul fast float %2353, %2304
  %2370 = fmul fast float %2358, %2304
  %2371 = fadd fast float %2345, %2369
  %2372 = fadd fast float %2346, %2370
  %2373 = fmul fast float %2354, %2304
  %2374 = fmul fast float %2360, %2304
  %2375 = fadd fast float %2349, %2373
  %2376 = fadd fast float %2350, %2374
  %2377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2310, float %2314, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  %2379 = extractvalue %dx.types.ResRet.f32 %2377, 1
  %2380 = extractvalue %dx.types.ResRet.f32 %2377, 2
  %2381 = extractvalue %dx.types.ResRet.f32 %2377, 3
  %2382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2310, float %2314, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.ResRet.f32 %2382, 1
  %2385 = extractvalue %dx.types.ResRet.f32 %2382, 2
  %2386 = extractvalue %dx.types.ResRet.f32 %2382, 3
  %2387 = fmul fast float %2378, %2305
  %2388 = fmul fast float %2383, %2305
  %2389 = fmul fast float %2385, %2305
  %2390 = fmul fast float %2381, %2305
  %2391 = fadd fast float %2365, %2387
  %2392 = fadd fast float %2366, %2388
  %2393 = fadd fast float %2367, %2389
  %2394 = fadd fast float %2368, %2390
  %2395 = fmul fast float %2379, %2305
  %2396 = fmul fast float %2384, %2305
  %2397 = fadd fast float %2371, %2395
  %2398 = fadd fast float %2372, %2396
  %2399 = fmul fast float %2380, %2305
  %2400 = fmul fast float %2386, %2305
  %2401 = fadd fast float %2375, %2399
  %2402 = fadd fast float %2376, %2400
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 0
  %2405 = fsub fast float %1875, %2404
  %2406 = fsub fast float %2247, %1875
  %2407 = call float @dx.op.binary.f32(i32 35, float %2406, float %2405)  ; FMax(a,b)
  %2408 = extractvalue %dx.types.CBufRet.f32 %2403, 1
  %2409 = fsub fast float %1876, %2408
  %2410 = fsub fast float %2248, %1876
  %2411 = call float @dx.op.binary.f32(i32 35, float %2410, float %2409)  ; FMax(a,b)
  %2412 = call float @dx.op.binary.f32(i32 35, float %2407, float %2411)  ; FMax(a,b)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2251, 3
  %2414 = fmul fast float %2413, %2412
  %2415 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.CBufRet.f32 %2416, 1
  %2419 = extractvalue %dx.types.CBufRet.f32 %2416, 2
  %2420 = extractvalue %dx.types.CBufRet.f32 %2416, 3
  %2421 = fsub fast float %2417, %2391
  %2422 = fsub fast float %2418, %2392
  %2423 = fsub fast float %2419, %2393
  %2424 = fsub fast float %2420, %2394
  %2425 = fmul fast float %2421, %2415
  %2426 = fmul fast float %2422, %2415
  %2427 = fmul fast float %2423, %2415
  %2428 = fmul fast float %2424, %2415
  %2429 = fadd fast float %2425, %2391
  %2430 = fadd fast float %2426, %2392
  %2431 = fadd fast float %2427, %2393
  %2432 = fadd fast float %2428, %2394
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2436 = fsub fast float %2434, %2397
  %2437 = fsub fast float %2435, %2398
  %2438 = fmul fast float %2436, %2415
  %2439 = fmul fast float %2437, %2415
  %2440 = fadd fast float %2438, %2397
  %2441 = fadd fast float %2439, %2398
  %2442 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2443 = extractvalue %dx.types.CBufRet.f32 %2433, 3
  %2444 = fsub fast float %2442, %2401
  %2445 = fsub fast float %2443, %2402
  %2446 = fmul fast float %2444, %2415
  %2447 = fmul fast float %2445, %2415
  %2448 = fadd fast float %2446, %2401
  %2449 = fadd fast float %2447, %2402
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 0
  %2452 = fmul fast float %2451, %2429
  %2453 = fmul fast float %2451, %2430
  %2454 = fmul fast float %2451, %2431
  %2455 = fmul fast float %2451, %2432
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 0
  %2458 = fmul fast float %2457, %2440
  %2459 = fmul fast float %2457, %2441
  %2460 = fadd fast float %2458, %2452
  %2461 = fadd fast float %2459, %2454
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = fmul fast float %2463, %2448
  %2465 = fmul fast float %2463, %2449
  %2466 = fadd fast float %2460, %2464
  %2467 = fadd fast float %2461, %2465
  %2468 = extractvalue %dx.types.CBufRet.f32 %2450, 1
  %2469 = fmul fast float %2468, %2429
  %2470 = fmul fast float %2468, %2430
  %2471 = fmul fast float %2468, %2431
  %2472 = fmul fast float %2468, %2432
  %2473 = extractvalue %dx.types.CBufRet.f32 %2456, 1
  %2474 = fmul fast float %2473, %2440
  %2475 = fmul fast float %2473, %2441
  %2476 = fadd fast float %2474, %2469
  %2477 = fadd fast float %2475, %2471
  %2478 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2479 = fmul fast float %2478, %2448
  %2480 = fmul fast float %2478, %2449
  %2481 = fadd fast float %2476, %2479
  %2482 = fadd fast float %2477, %2480
  %2483 = extractvalue %dx.types.CBufRet.f32 %2450, 2
  %2484 = fmul fast float %2483, %2429
  %2485 = fmul fast float %2483, %2430
  %2486 = fmul fast float %2483, %2431
  %2487 = fmul fast float %2483, %2432
  %2488 = extractvalue %dx.types.CBufRet.f32 %2456, 2
  %2489 = fmul fast float %2488, %2440
  %2490 = fmul fast float %2488, %2441
  %2491 = fadd fast float %2489, %2484
  %2492 = fadd fast float %2490, %2486
  %2493 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2494 = fmul fast float %2493, %2448
  %2495 = fmul fast float %2493, %2449
  %2496 = fadd fast float %2491, %2494
  %2497 = fadd fast float %2492, %2495
  %2498 = fmul fast float %2485, %2485
  %2499 = fmul fast float %2497, %2497
  %2500 = fmul fast float %2487, %2487
  %2501 = fadd fast float %2500, %2498
  %2502 = fadd fast float %2501, %2499
  %2503 = call float @dx.op.unary.f32(i32 24, float %2502)  ; Sqrt(value)
  %2504 = fcmp fast ugt float %2503, 0.000000e+00
  br i1 %2504, label %2505, label %2520

; <label>:2505                                    ; preds = %2239
  %2506 = fsub fast float -0.000000e+00, %2487
  %2507 = fdiv fast float %2506, %2503
  %2508 = fsub fast float -0.000000e+00, %2485
  %2509 = fdiv fast float %2508, %2503
  %2510 = fdiv fast float %2497, %2503
  %2511 = fmul fast float %2496, 0x3FE279A760000000
  %2512 = fmul fast float %2509, %2485
  %2513 = fmul fast float %2510, %2497
  %2514 = fmul fast float %2507, %2487
  %2515 = fadd fast float %2512, %2514
  %2516 = fsub fast float %2515, %2513
  %2517 = call float @dx.op.unary.f32(i32 6, float %2516)  ; FAbs(value)
  %2518 = fadd fast float %2517, 0x3DDB7CDFE0000000
  %2519 = fdiv fast float %2511, %2518
  br label %2520

; <label>:2520                                    ; preds = %2505, %2239
  %2521 = phi float [ %2519, %2505 ], [ 1.000000e+00, %2239 ]
  %2522 = fmul fast float %2470, %2470
  %2523 = fmul fast float %2482, %2482
  %2524 = fmul fast float %2472, %2472
  %2525 = fadd fast float %2524, %2522
  %2526 = fadd fast float %2525, %2523
  %2527 = call float @dx.op.unary.f32(i32 24, float %2526)  ; Sqrt(value)
  %2528 = fcmp fast ugt float %2527, 0.000000e+00
  br i1 %2528, label %2529, label %2544

; <label>:2529                                    ; preds = %2520
  %2530 = fsub fast float -0.000000e+00, %2472
  %2531 = fdiv fast float %2530, %2527
  %2532 = fsub fast float -0.000000e+00, %2470
  %2533 = fdiv fast float %2532, %2527
  %2534 = fdiv fast float %2482, %2527
  %2535 = fmul fast float %2481, 0x3FE279A760000000
  %2536 = fmul fast float %2533, %2470
  %2537 = fmul fast float %2534, %2482
  %2538 = fmul fast float %2531, %2472
  %2539 = fadd fast float %2536, %2538
  %2540 = fsub fast float %2539, %2537
  %2541 = call float @dx.op.unary.f32(i32 6, float %2540)  ; FAbs(value)
  %2542 = fadd fast float %2541, 0x3DDB7CDFE0000000
  %2543 = fdiv fast float %2535, %2542
  br label %2544

; <label>:2544                                    ; preds = %2529, %2520
  %2545 = phi float [ %2543, %2529 ], [ 1.000000e+00, %2520 ]
  %2546 = call float @dx.op.binary.f32(i32 36, float %2545, float %2521)  ; FMin(a,b)
  %2547 = fmul fast float %2453, %2453
  %2548 = fmul fast float %2467, %2467
  %2549 = fmul fast float %2455, %2455
  %2550 = fadd fast float %2549, %2547
  %2551 = fadd fast float %2550, %2548
  %2552 = call float @dx.op.unary.f32(i32 24, float %2551)  ; Sqrt(value)
  %2553 = fcmp fast ugt float %2552, 0.000000e+00
  br i1 %2553, label %2554, label %2569

; <label>:2554                                    ; preds = %2544
  %2555 = fsub fast float -0.000000e+00, %2455
  %2556 = fdiv fast float %2555, %2552
  %2557 = fsub fast float -0.000000e+00, %2453
  %2558 = fdiv fast float %2557, %2552
  %2559 = fdiv fast float %2467, %2552
  %2560 = fmul fast float %2466, 0x3FE279A760000000
  %2561 = fmul fast float %2558, %2453
  %2562 = fmul fast float %2559, %2467
  %2563 = fmul fast float %2556, %2455
  %2564 = fadd fast float %2561, %2563
  %2565 = fsub fast float %2564, %2562
  %2566 = call float @dx.op.unary.f32(i32 6, float %2565)  ; FAbs(value)
  %2567 = fadd fast float %2566, 0x3DDB7CDFE0000000
  %2568 = fdiv fast float %2560, %2567
  br label %2569

; <label>:2569                                    ; preds = %2554, %2544
  %2570 = phi float [ %2568, %2554 ], [ 1.000000e+00, %2544 ]
  %2571 = call float @dx.op.binary.f32(i32 36, float %2570, float %2546)  ; FMin(a,b)
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2573 = fcmp fast olt float %2572, 1.000000e+00
  br i1 %2573, label %2574, label %2584

; <label>:2574                                    ; preds = %2569
  %2575 = fmul fast float %2572, %2453
  %2576 = fmul fast float %2572, %2467
  %2577 = fmul fast float %2572, %2455
  %2578 = fmul fast float %2572, %2470
  %2579 = fmul fast float %2572, %2482
  %2580 = fmul fast float %2572, %2472
  %2581 = fmul fast float %2572, %2485
  %2582 = fmul fast float %2572, %2497
  %2583 = fmul fast float %2572, %2487
  br label %2584

; <label>:2584                                    ; preds = %2574, %2569
  %2585 = phi float [ %2581, %2574 ], [ %2485, %2569 ]
  %2586 = phi float [ %2582, %2574 ], [ %2497, %2569 ]
  %2587 = phi float [ %2583, %2574 ], [ %2487, %2569 ]
  %2588 = phi float [ %2578, %2574 ], [ %2470, %2569 ]
  %2589 = phi float [ %2579, %2574 ], [ %2482, %2569 ]
  %2590 = phi float [ %2580, %2574 ], [ %2472, %2569 ]
  %2591 = phi float [ %2575, %2574 ], [ %2453, %2569 ]
  %2592 = phi float [ %2576, %2574 ], [ %2467, %2569 ]
  %2593 = phi float [ %2577, %2574 ], [ %2455, %2569 ]
  %2594 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2466)  ; FMax(a,b)
  %2595 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2481)  ; FMax(a,b)
  %2596 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2496)  ; FMax(a,b)
  %2597 = fcmp fast oge float %2254, 0.000000e+00
  %2598 = and i1 %2597, %2025
  %2599 = fcmp fast ole float %2254, 1.000000e+00
  %2600 = and i1 %2599, %2598
  %2601 = fcmp fast oge float %2255, 0.000000e+00
  %2602 = and i1 %2601, %2600
  %2603 = fcmp fast ole float %2255, 1.000000e+00
  %2604 = and i1 %2603, %2602
  br i1 %2604, label %2605, label %2750, !dx.controlflow.hints !77

; <label>:2605                                    ; preds = %2584
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2608 = extractvalue %dx.types.CBufRet.f32 %2606, 3
  %2609 = fmul fast float %2607, %2254
  %2610 = fmul fast float %2608, %2255
  %2611 = call float @dx.op.unary.f32(i32 27, float %2609)  ; Round_ni(value)
  %2612 = call float @dx.op.unary.f32(i32 27, float %2610)  ; Round_ni(value)
  %2613 = fptosi float %2611 to i32
  %2614 = fptosi float %2612 to i32
  %2615 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2613, i32 %2614, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 65535
  %2618 = lshr i32 %2616, 16
  %2619 = icmp eq i32 %2617, 65535
  br i1 %2619, label %2656, label %2620

; <label>:2620                                    ; preds = %2605
  %2621 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2622 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2623 = extractvalue %dx.types.CBufRet.f32 %2606, 1
  %2624 = fmul fast float %2622, %2254
  %2625 = fmul fast float %2623, %2255
  %2626 = fmul fast float %2624, 1.250000e-01
  %2627 = fmul fast float %2625, 1.250000e-01
  %2628 = call float @dx.op.unary.f32(i32 27, float %2626)  ; Round_ni(value)
  %2629 = call float @dx.op.unary.f32(i32 27, float %2627)  ; Round_ni(value)
  %2630 = fmul fast float %2628, 8.000000e+00
  %2631 = fmul fast float %2629, 8.000000e+00
  %2632 = and i32 %2616, 255
  %2633 = lshr i32 %2616, 8
  %2634 = and i32 %2633, 255
  %2635 = mul nuw nsw i32 %2632, 9
  %2636 = uitofp i32 %2635 to float
  %2637 = mul nuw nsw i32 %2634, 9
  %2638 = uitofp i32 %2637 to float
  %2639 = fadd fast float %2636, 5.000000e-01
  %2640 = fadd fast float %2639, %2624
  %2641 = fsub fast float %2640, %2630
  %2642 = fadd fast float %2638, 5.000000e-01
  %2643 = fadd fast float %2642, %2625
  %2644 = fsub fast float %2643, %2631
  %2645 = fdiv fast float %2641, %2024
  %2646 = fdiv fast float %2644, %2621
  %2647 = fmul fast float %2282, 4.375000e-01
  %2648 = fadd fast float %2647, 3.125000e-02
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2645, float %2646, float %2648, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = fadd fast float %2650, %2594
  %2654 = fadd fast float %2651, %2595
  %2655 = fadd fast float %2652, %2596
  br label %2656

; <label>:2656                                    ; preds = %2620, %2605
  %2657 = phi float [ %2655, %2620 ], [ %2596, %2605 ]
  %2658 = phi float [ %2654, %2620 ], [ %2595, %2605 ]
  %2659 = phi float [ %2653, %2620 ], [ %2594, %2605 ]
  %2660 = icmp eq i32 %2618, 65535
  br i1 %2660, label %2750, label %2661

; <label>:2661                                    ; preds = %2656
  %2662 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2663 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2664 = extractvalue %dx.types.CBufRet.f32 %2606, 1
  %2665 = fmul fast float %2663, %2254
  %2666 = fmul fast float %2664, %2255
  %2667 = fmul fast float %2665, 1.250000e-01
  %2668 = fmul fast float %2666, 1.250000e-01
  %2669 = call float @dx.op.unary.f32(i32 27, float %2667)  ; Round_ni(value)
  %2670 = call float @dx.op.unary.f32(i32 27, float %2668)  ; Round_ni(value)
  %2671 = fmul fast float %2669, 8.000000e+00
  %2672 = fmul fast float %2670, 8.000000e+00
  %2673 = fsub fast float %2665, %2671
  %2674 = fsub fast float %2666, %2672
  %2675 = fadd fast float %2673, 5.000000e-01
  %2676 = fadd fast float %2674, 5.000000e-01
  %2677 = and i32 %2618, 255
  %2678 = lshr i32 %2616, 24
  %2679 = mul nuw nsw i32 %2677, 9
  %2680 = uitofp i32 %2679 to float
  %2681 = mul nuw nsw i32 %2678, 9
  %2682 = uitofp i32 %2681 to float
  %2683 = fadd fast float %2675, %2680
  %2684 = fadd fast float %2676, %2682
  %2685 = fdiv fast float %2683, %2024
  %2686 = fdiv fast float %2684, %2662
  %2687 = fmul fast float %2282, 4.375000e-01
  %2688 = fadd fast float %2687, 3.125000e-02
  %2689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2685, float %2686, float %2688, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2690 = extractvalue %dx.types.ResRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.ResRet.f32 %2689, 1
  %2692 = extractvalue %dx.types.ResRet.f32 %2689, 2
  %2693 = fadd fast float %2687, 5.312500e-01
  %2694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2685, float %2686, float %2693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.ResRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.ResRet.f32 %2694, 2
  %2698 = fmul fast float %2695, 2.000000e+00
  %2699 = fmul fast float %2696, 2.000000e+00
  %2700 = fmul fast float %2697, 2.000000e+00
  %2701 = fadd fast float %2698, -1.000000e+00
  %2702 = fadd fast float %2699, -1.000000e+00
  %2703 = fadd fast float %2700, -1.000000e+00
  %2704 = fmul fast float %2701, %2701
  %2705 = fmul fast float %2702, %2702
  %2706 = fadd fast float %2704, %2705
  %2707 = fmul fast float %2703, %2703
  %2708 = fadd fast float %2706, %2707
  %2709 = call float @dx.op.unary.f32(i32 24, float %2708)  ; Sqrt(value)
  %2710 = fcmp fast ogt float %2709, 0.000000e+00
  br i1 %2710, label %2711, label %2715

; <label>:2711                                    ; preds = %2661
  %2712 = fdiv fast float %2701, %2709
  %2713 = fdiv fast float %2702, %2709
  %2714 = fdiv fast float %2703, %2709
  br label %2715

; <label>:2715                                    ; preds = %2711, %2661
  %2716 = phi float [ %2712, %2711 ], [ 0.000000e+00, %2661 ]
  %2717 = phi float [ %2713, %2711 ], [ 0.000000e+00, %2661 ]
  %2718 = phi float [ %2714, %2711 ], [ 0.000000e+00, %2661 ]
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = fsub fast float %1875, %2720
  %2723 = fsub fast float %1876, %2721
  %2724 = fmul fast float %2722, %2722
  %2725 = fmul fast float %2723, %2723
  %2726 = fadd fast float %2724, %2725
  %2727 = call float @dx.op.unary.f32(i32 24, float %2726)  ; Sqrt(value)
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2731 = fsub fast float %2727, %2729
  %2732 = fdiv fast float %2731, %2730
  %2733 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2734 = fmul fast float %2733, 2.000000e+00
  %2735 = fsub fast float 3.000000e+00, %2734
  %2736 = fmul fast float %2733, %2733
  %2737 = fmul fast float %2736, %2735
  %2738 = call float @dx.op.dot3.f32(i32 55, float %2716, float %2717, float %2718, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2738)  ; FMax(a,b)
  %2740 = fmul fast float %2739, 0x400C5BF8A0000000
  %2741 = fmul fast float %2737, %2690
  %2742 = fmul fast float %2741, %2740
  %2743 = fadd fast float %2742, %2659
  %2744 = fmul fast float %2737, %2691
  %2745 = fmul fast float %2744, %2740
  %2746 = fadd fast float %2745, %2658
  %2747 = fmul fast float %2737, %2692
  %2748 = fmul fast float %2747, %2740
  %2749 = fadd fast float %2748, %2657
  br label %2750

; <label>:2750                                    ; preds = %2715, %2656, %2584
  %2751 = phi float [ %2749, %2715 ], [ %2657, %2656 ], [ %2596, %2584 ]
  %2752 = phi float [ %2746, %2715 ], [ %2658, %2656 ], [ %2595, %2584 ]
  %2753 = phi float [ %2743, %2715 ], [ %2659, %2656 ], [ %2594, %2584 ]
  %2754 = fcmp fast ogt float %2241, %2278
  %2755 = and i1 %2597, %2754
  %2756 = and i1 %2599, %2755
  %2757 = and i1 %2601, %2756
  %2758 = and i1 %2603, %2757
  br i1 %2758, label %2759, label %2816, !dx.controlflow.hints !78

; <label>:2759                                    ; preds = %2750
  %2760 = fmul fast float %2280, 0x3FC24924A0000000
  %2761 = fsub fast float %2241, %2278
  %2762 = fdiv fast float %2761, %2760
  %2763 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 0
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.CBufRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.CBufRet.f32 %2766, 2
  %2770 = fsub fast float %2765, %2753
  %2771 = fsub fast float %2767, %2591
  %2772 = fsub fast float %2768, %2592
  %2773 = fsub fast float %2769, %2593
  %2774 = fmul fast float %2770, %2763
  %2775 = fmul fast float %2771, %2763
  %2776 = fmul fast float %2772, %2763
  %2777 = fmul fast float %2773, %2763
  %2778 = fadd fast float %2774, %2753
  %2779 = fadd fast float %2775, %2591
  %2780 = fadd fast float %2776, %2592
  %2781 = fadd fast float %2777, %2593
  %2782 = extractvalue %dx.types.CBufRet.f32 %2764, 1
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.CBufRet.f32 %2783, 2
  %2787 = fsub fast float %2782, %2752
  %2788 = fsub fast float %2784, %2588
  %2789 = fsub fast float %2785, %2589
  %2790 = fsub fast float %2786, %2590
  %2791 = fmul fast float %2787, %2763
  %2792 = fmul fast float %2788, %2763
  %2793 = fmul fast float %2789, %2763
  %2794 = fmul fast float %2790, %2763
  %2795 = fadd fast float %2791, %2752
  %2796 = fadd fast float %2792, %2588
  %2797 = fadd fast float %2793, %2589
  %2798 = fadd fast float %2794, %2590
  %2799 = extractvalue %dx.types.CBufRet.f32 %2764, 2
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.CBufRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.CBufRet.f32 %2800, 2
  %2804 = fsub fast float %2799, %2751
  %2805 = fsub fast float %2801, %2585
  %2806 = fsub fast float %2802, %2586
  %2807 = fsub fast float %2803, %2587
  %2808 = fmul fast float %2804, %2763
  %2809 = fmul fast float %2805, %2763
  %2810 = fmul fast float %2806, %2763
  %2811 = fmul fast float %2807, %2763
  %2812 = fadd fast float %2808, %2751
  %2813 = fadd fast float %2809, %2585
  %2814 = fadd fast float %2810, %2586
  %2815 = fadd fast float %2811, %2587
  br label %2816

; <label>:2816                                    ; preds = %2759, %2750
  %2817 = phi float [ %2812, %2759 ], [ %2751, %2750 ]
  %2818 = phi float [ %2813, %2759 ], [ %2585, %2750 ]
  %2819 = phi float [ %2814, %2759 ], [ %2586, %2750 ]
  %2820 = phi float [ %2815, %2759 ], [ %2587, %2750 ]
  %2821 = phi float [ %2795, %2759 ], [ %2752, %2750 ]
  %2822 = phi float [ %2796, %2759 ], [ %2588, %2750 ]
  %2823 = phi float [ %2797, %2759 ], [ %2589, %2750 ]
  %2824 = phi float [ %2798, %2759 ], [ %2590, %2750 ]
  %2825 = phi float [ %2778, %2759 ], [ %2753, %2750 ]
  %2826 = phi float [ %2779, %2759 ], [ %2591, %2750 ]
  %2827 = phi float [ %2780, %2759 ], [ %2592, %2750 ]
  %2828 = phi float [ %2781, %2759 ], [ %2593, %2750 ]
  %2829 = extractvalue %dx.types.CBufRet.f32 %2403, 3
  %2830 = fmul fast float %2829, %2825
  %2831 = fmul fast float %2829, %2821
  %2832 = fmul fast float %2829, %2817
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 3
  %2835 = fmul fast float %2830, %2834
  %2836 = fmul fast float %2831, %2834
  %2837 = fmul fast float %2832, %2834
  %2838 = fmul fast float %2826, 1.500000e+00
  %2839 = fmul fast float %2838, %2829
  %2840 = fmul fast float %2839, %2834
  %2841 = fmul fast float %2827, 1.500000e+00
  %2842 = fmul fast float %2841, %2829
  %2843 = fmul fast float %2842, %2834
  %2844 = fmul fast float %2828, 1.500000e+00
  %2845 = fmul fast float %2844, %2829
  %2846 = fmul fast float %2845, %2834
  %2847 = fmul fast float %2822, 1.500000e+00
  %2848 = fmul fast float %2847, %2829
  %2849 = fmul fast float %2848, %2834
  %2850 = fmul fast float %2823, 1.500000e+00
  %2851 = fmul fast float %2850, %2829
  %2852 = fmul fast float %2851, %2834
  %2853 = fmul fast float %2824, 1.500000e+00
  %2854 = fmul fast float %2853, %2829
  %2855 = fmul fast float %2854, %2834
  %2856 = fmul fast float %2818, 1.500000e+00
  %2857 = fmul fast float %2856, %2829
  %2858 = fmul fast float %2857, %2834
  %2859 = fmul fast float %2819, 1.500000e+00
  %2860 = fmul fast float %2859, %2829
  %2861 = fmul fast float %2860, %2834
  %2862 = fmul fast float %2820, 1.500000e+00
  %2863 = fmul fast float %2862, %2829
  %2864 = fmul fast float %2863, %2834
  %2865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2835)  ; FMax(a,b)
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2840, float %2843, float %2846, float %2840, float %2843, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = fcmp fast oeq float %2866, 0.000000e+00
  %2868 = fcmp fast oeq float %2865, 0.000000e+00
  %2869 = or i1 %2868, %2867
  br i1 %2869, label %2899, label %2870

; <label>:2870                                    ; preds = %2816
  %2871 = fsub fast float -0.000000e+00, %2846
  %2872 = fsub fast float -0.000000e+00, %2840
  %2873 = call float @dx.op.unary.f32(i32 24, float %2866)  ; Sqrt(value)
  %2874 = fdiv fast float %2873, %2865
  %2875 = fcmp fast ogt float %2874, 0x3FFB6F8900000000
  %2876 = select i1 %2875, float 0x3FFB6F8900000000, float %2874
  %2877 = fmul fast float %2876, 0x3FE8A23460000000
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2879 = call float @dx.op.binary.f32(i32 35, float %2876, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2880 = fmul fast float %2878, %2865
  %2881 = fmul fast float %2879, 0x3FF279A740000000
  %2882 = fadd fast float %2881, -1.000000e+00
  %2883 = call float @dx.op.dot3.f32(i32 55, float %2871, float %2872, float %2843, float %2871, float %2872, float %2843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = call float @dx.op.unary.f32(i32 25, float %2883)  ; Rsqrt(value)
  %2885 = fmul fast float %2884, %2871
  %2886 = fmul fast float %2884, %2872
  %2887 = fmul fast float %2884, %2843
  %2888 = fmul fast float %2882, %2882
  %2889 = fsub fast float 1.000000e+00, %2888
  %2890 = fmul fast float %2879, 0x40005F8BE0000000
  %2891 = fsub fast float 0x400C5BF8A0000000, %2890
  %2892 = fdiv fast float %2880, %2891
  %2893 = fmul fast float %2892, 0x3FEE31C3C0000000
  %2894 = fmul fast float %2893, %2889
  %2895 = fmul fast float %2879, 0x3FDACB7480000000
  %2896 = fadd fast float %2895, 0xBFD7347680000000
  %2897 = fmul fast float %2896, %2892
  %2898 = fmul fast float %2897, %2889
  br label %2899

; <label>:2899                                    ; preds = %2870, %2816
  %2900 = phi float [ %2885, %2870 ], [ 0.000000e+00, %2816 ]
  %2901 = phi float [ %2886, %2870 ], [ 0.000000e+00, %2816 ]
  %2902 = phi float [ %2887, %2870 ], [ 0.000000e+00, %2816 ]
  %2903 = phi float [ %2894, %2870 ], [ 0.000000e+00, %2816 ]
  %2904 = phi float [ %2898, %2870 ], [ 0.000000e+00, %2816 ]
  %2905 = call float @dx.op.dot3.f32(i32 55, float %2900, float %2901, float %2902, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2906 = fmul fast float %2905, %2905
  %2907 = fmul fast float %2906, 0x3FEE471020000000
  %2908 = fadd fast float %2907, 0xBFD42F6020000000
  %2909 = fmul fast float %2865, 0x3FD20DD760000000
  %2910 = fmul fast float %2908, %2904
  %2911 = fmul fast float %2903, 0x3FDF454380000000
  %2912 = fmul fast float %2911, %2905
  %2913 = fadd fast float %2912, %2909
  %2914 = fadd fast float %2913, %2910
  %2915 = call float @dx.op.dot3.f32(i32 55, float %2900, float %2901, float %2902, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2916 = fmul fast float %2915, 0x3FDF454380000000
  %2917 = fmul fast float %2915, %2915
  %2918 = fmul fast float %2917, 0x3FEE471020000000
  %2919 = fadd fast float %2918, 0xBFD42F6020000000
  %2920 = call float @dx.op.dot3.f32(i32 55, float %2865, float %2903, float %2904, float 0x3FD20DD760000000, float %2916, float %2919)  ; Dot3(ax,ay,az,bx,by,bz)
  %2921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2836)  ; FMax(a,b)
  %2922 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2852, float %2855, float %2849, float %2852, float %2855)  ; Dot3(ax,ay,az,bx,by,bz)
  %2923 = fcmp fast oeq float %2922, 0.000000e+00
  %2924 = fcmp fast oeq float %2921, 0.000000e+00
  %2925 = or i1 %2924, %2923
  br i1 %2925, label %2955, label %2926

; <label>:2926                                    ; preds = %2899
  %2927 = fsub fast float -0.000000e+00, %2855
  %2928 = fsub fast float -0.000000e+00, %2849
  %2929 = call float @dx.op.unary.f32(i32 24, float %2922)  ; Sqrt(value)
  %2930 = fdiv fast float %2929, %2921
  %2931 = fcmp fast ogt float %2930, 0x3FFB6F8900000000
  %2932 = select i1 %2931, float 0x3FFB6F8900000000, float %2930
  %2933 = fmul fast float %2932, 0x3FE8A23460000000
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = call float @dx.op.binary.f32(i32 35, float %2932, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2936 = fmul fast float %2934, %2921
  %2937 = fmul fast float %2935, 0x3FF279A740000000
  %2938 = fadd fast float %2937, -1.000000e+00
  %2939 = call float @dx.op.dot3.f32(i32 55, float %2927, float %2928, float %2852, float %2927, float %2928, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2940 = call float @dx.op.unary.f32(i32 25, float %2939)  ; Rsqrt(value)
  %2941 = fmul fast float %2940, %2927
  %2942 = fmul fast float %2940, %2928
  %2943 = fmul fast float %2940, %2852
  %2944 = fmul fast float %2938, %2938
  %2945 = fsub fast float 1.000000e+00, %2944
  %2946 = fmul fast float %2935, 0x40005F8BE0000000
  %2947 = fsub fast float 0x400C5BF8A0000000, %2946
  %2948 = fdiv fast float %2936, %2947
  %2949 = fmul fast float %2948, 0x3FEE31C3C0000000
  %2950 = fmul fast float %2949, %2945
  %2951 = fmul fast float %2935, 0x3FDACB7480000000
  %2952 = fadd fast float %2951, 0xBFD7347680000000
  %2953 = fmul fast float %2952, %2948
  %2954 = fmul fast float %2953, %2945
  br label %2955

; <label>:2955                                    ; preds = %2926, %2899
  %2956 = phi float [ %2941, %2926 ], [ 0.000000e+00, %2899 ]
  %2957 = phi float [ %2942, %2926 ], [ 0.000000e+00, %2899 ]
  %2958 = phi float [ %2943, %2926 ], [ 0.000000e+00, %2899 ]
  %2959 = phi float [ %2950, %2926 ], [ 0.000000e+00, %2899 ]
  %2960 = phi float [ %2954, %2926 ], [ 0.000000e+00, %2899 ]
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = fmul fast float %2961, %2961
  %2963 = fmul fast float %2962, 0x3FEE471020000000
  %2964 = fadd fast float %2963, 0xBFD42F6020000000
  %2965 = fmul fast float %2921, 0x3FD20DD760000000
  %2966 = fmul fast float %2964, %2960
  %2967 = fmul fast float %2959, 0x3FDF454380000000
  %2968 = fmul fast float %2967, %2961
  %2969 = fadd fast float %2968, %2965
  %2970 = fadd fast float %2969, %2966
  %2971 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2972 = fmul fast float %2971, 0x3FDF454380000000
  %2973 = fmul fast float %2971, %2971
  %2974 = fmul fast float %2973, 0x3FEE471020000000
  %2975 = fadd fast float %2974, 0xBFD42F6020000000
  %2976 = call float @dx.op.dot3.f32(i32 55, float %2921, float %2959, float %2960, float 0x3FD20DD760000000, float %2972, float %2975)  ; Dot3(ax,ay,az,bx,by,bz)
  %2977 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2837)  ; FMax(a,b)
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2858, float %2861, float %2864, float %2858, float %2861, float %2864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = fcmp fast oeq float %2978, 0.000000e+00
  %2980 = fcmp fast oeq float %2977, 0.000000e+00
  %2981 = or i1 %2980, %2979
  br i1 %2981, label %3011, label %2982

; <label>:2982                                    ; preds = %2955
  %2983 = fsub fast float -0.000000e+00, %2864
  %2984 = fsub fast float -0.000000e+00, %2858
  %2985 = call float @dx.op.unary.f32(i32 24, float %2978)  ; Sqrt(value)
  %2986 = fdiv fast float %2985, %2977
  %2987 = fcmp fast ogt float %2986, 0x3FFB6F8900000000
  %2988 = select i1 %2987, float 0x3FFB6F8900000000, float %2986
  %2989 = fmul fast float %2988, 0x3FE8A23460000000
  %2990 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2988, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2992 = fmul fast float %2990, %2977
  %2993 = fmul fast float %2991, 0x3FF279A740000000
  %2994 = fadd fast float %2993, -1.000000e+00
  %2995 = call float @dx.op.dot3.f32(i32 55, float %2983, float %2984, float %2861, float %2983, float %2984, float %2861)  ; Dot3(ax,ay,az,bx,by,bz)
  %2996 = call float @dx.op.unary.f32(i32 25, float %2995)  ; Rsqrt(value)
  %2997 = fmul fast float %2996, %2983
  %2998 = fmul fast float %2996, %2984
  %2999 = fmul fast float %2996, %2861
  %3000 = fmul fast float %2994, %2994
  %3001 = fsub fast float 1.000000e+00, %3000
  %3002 = fmul fast float %2991, 0x40005F8BE0000000
  %3003 = fsub fast float 0x400C5BF8A0000000, %3002
  %3004 = fdiv fast float %2992, %3003
  %3005 = fmul fast float %3004, 0x3FEE31C3C0000000
  %3006 = fmul fast float %3005, %3001
  %3007 = fmul fast float %2991, 0x3FDACB7480000000
  %3008 = fadd fast float %3007, 0xBFD7347680000000
  %3009 = fmul fast float %3008, %3004
  %3010 = fmul fast float %3009, %3001
  br label %3011

; <label>:3011                                    ; preds = %2982, %2955
  %3012 = phi float [ %2997, %2982 ], [ 0.000000e+00, %2955 ]
  %3013 = phi float [ %2998, %2982 ], [ 0.000000e+00, %2955 ]
  %3014 = phi float [ %2999, %2982 ], [ 0.000000e+00, %2955 ]
  %3015 = phi float [ %3006, %2982 ], [ 0.000000e+00, %2955 ]
  %3016 = phi float [ %3010, %2982 ], [ 0.000000e+00, %2955 ]
  %3017 = call float @dx.op.dot3.f32(i32 55, float %3012, float %3013, float %3014, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3018 = fmul fast float %3017, %3017
  %3019 = fmul fast float %3018, 0x3FEE471020000000
  %3020 = fadd fast float %3019, 0xBFD42F6020000000
  %3021 = fmul fast float %2977, 0x3FD20DD760000000
  %3022 = fmul fast float %3020, %3016
  %3023 = fmul fast float %3015, 0x3FDF454380000000
  %3024 = fmul fast float %3023, %3017
  %3025 = fadd fast float %3024, %3021
  %3026 = fadd fast float %3025, %3022
  %3027 = call float @dx.op.dot3.f32(i32 55, float %3012, float %3013, float %3014, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = fmul fast float %3027, 0x3FDF454380000000
  %3029 = fmul fast float %3027, %3027
  %3030 = fmul fast float %3029, 0x3FEE471020000000
  %3031 = fadd fast float %3030, 0xBFD42F6020000000
  %3032 = call float @dx.op.dot3.f32(i32 55, float %2977, float %3015, float %3016, float 0x3FD20DD760000000, float %3028, float %3031)  ; Dot3(ax,ay,az,bx,by,bz)
  %3033 = call float @dx.op.binary.f32(i32 35, float %2914, float 0.000000e+00)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float %2970, float 0.000000e+00)  ; FMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float %3026, float 0.000000e+00)  ; FMax(a,b)
  %3036 = call float @dx.op.binary.f32(i32 35, float %2920, float 0.000000e+00)  ; FMax(a,b)
  %3037 = call float @dx.op.binary.f32(i32 35, float %2976, float 0.000000e+00)  ; FMax(a,b)
  %3038 = call float @dx.op.binary.f32(i32 35, float %3032, float 0.000000e+00)  ; FMax(a,b)
  %3039 = fsub fast float %2235, %3033
  %3040 = fsub fast float %2236, %3034
  %3041 = fsub fast float %2237, %3035
  %3042 = fmul fast float %3039, %1916
  %3043 = fmul fast float %3040, %1916
  %3044 = fmul fast float %3041, %1916
  %3045 = fadd fast float %3042, %3033
  %3046 = fadd fast float %3043, %3034
  %3047 = fadd fast float %3044, %3035
  %3048 = fsub fast float %2232, %3036
  %3049 = fsub fast float %2233, %3037
  %3050 = fsub fast float %2234, %3038
  %3051 = fmul fast float %3048, %1916
  %3052 = fmul fast float %3049, %1916
  %3053 = fmul fast float %3050, %1916
  %3054 = fadd fast float %3051, %3036
  %3055 = fadd fast float %3052, %3037
  %3056 = fadd fast float %3053, %3038
  br label %3057

; <label>:3057                                    ; preds = %3011, %2231
  %3058 = phi float [ %3054, %3011 ], [ %2232, %2231 ]
  %3059 = phi float [ %3055, %3011 ], [ %2233, %2231 ]
  %3060 = phi float [ %3056, %3011 ], [ %2234, %2231 ]
  %3061 = phi float [ %3045, %3011 ], [ %2235, %2231 ]
  %3062 = phi float [ %3046, %3011 ], [ %2236, %2231 ]
  %3063 = phi float [ %3047, %3011 ], [ %2237, %2231 ]
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 0
  %3066 = call float @dx.op.binary.f32(i32 36, float %1846, float %3065)  ; FMin(a,b)
  %3067 = fsub fast float 1.000000e+00, %1868
  %3068 = fmul fast float %3066, %3067
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = bitcast float %3069 to i32
  %3071 = sub nsw i32 2129859010, %3070
  %3072 = bitcast i32 %3071 to float
  %3073 = call float @dx.op.binary.f32(i32 36, float %1847, float %3065)  ; FMin(a,b)
  %3074 = fmul fast float %3073, %3067
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = bitcast float %3075 to i32
  %3077 = sub nsw i32 2129859010, %3076
  %3078 = bitcast i32 %3077 to float
  %3079 = call float @dx.op.binary.f32(i32 36, float %1848, float %3065)  ; FMin(a,b)
  %3080 = fmul fast float %3079, %3067
  %3081 = fsub fast float 1.000000e+00, %3080
  %3082 = bitcast float %3081 to i32
  %3083 = sub nsw i32 2129859010, %3082
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %3061, %1868
  %3086 = fmul fast float %3085, %3072
  %3087 = fmul fast float %3062, %1868
  %3088 = fmul fast float %3087, %3078
  %3089 = fmul fast float %3063, %1868
  %3090 = fmul fast float %3089, %3084
  %3091 = call float @dx.op.binary.f32(i32 36, float %1849, float %3065)  ; FMin(a,b)
  %3092 = fmul fast float %3091, %3067
  %3093 = fsub fast float 1.000000e+00, %3092
  %3094 = bitcast float %3093 to i32
  %3095 = sub nsw i32 2129859010, %3094
  %3096 = bitcast i32 %3095 to float
  %3097 = call float @dx.op.binary.f32(i32 36, float %1850, float %3065)  ; FMin(a,b)
  %3098 = fmul fast float %3097, %3067
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = bitcast float %3099 to i32
  %3101 = sub nsw i32 2129859010, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = call float @dx.op.binary.f32(i32 36, float %1857, float %3065)  ; FMin(a,b)
  %3104 = fmul fast float %3103, %3067
  %3105 = fsub fast float 1.000000e+00, %3104
  %3106 = bitcast float %3105 to i32
  %3107 = sub nsw i32 2129859010, %3106
  %3108 = bitcast i32 %3107 to float
  %3109 = fmul fast float %3058, %1868
  %3110 = fmul fast float %3109, %3096
  %3111 = fmul fast float %3059, %1868
  %3112 = fmul fast float %3111, %3102
  %3113 = fmul fast float %3060, %1868
  %3114 = fmul fast float %3113, %3108
  %3115 = call float @dx.op.dot3.f32(i32 55, float %3086, float %3088, float %3090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = select i1 %176, float 0.000000e+00, float %3086
  %3117 = select i1 %176, float %3115, float %3088
  %3118 = select i1 %176, float 0.000000e+00, float %3090
  %3119 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3112, float %3114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = select i1 %176, float 0.000000e+00, float %3110
  %3121 = select i1 %176, float %3119, float %3112
  %3122 = select i1 %176, float 0.000000e+00, float %3114
  %3123 = fmul fast float %1859, 9.843750e-01
  %3124 = fmul fast float %1855, 9.843750e-01
  %3125 = fadd fast float %3123, 7.812500e-03
  %3126 = fadd fast float %3124, 7.812500e-03
  %3127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3125, float %3126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 2
  %3129 = extractvalue %dx.types.ResRet.f32 %3127, 3
  %3130 = fmul fast float %3128, %1849
  %3131 = fmul fast float %3128, %1850
  %3132 = fmul fast float %3128, %1857
  %3133 = fadd fast float %3130, %3129
  %3134 = fadd fast float %3131, %3129
  %3135 = fadd fast float %3132, %3129
  %3136 = fcmp fast ogt float %1223, 0.000000e+00
  br i1 %3136, label %3137, label %3163

; <label>:3137                                    ; preds = %3057
  %3138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1223, float %1859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = fadd fast float %3139, -5.000000e-01
  %3143 = fadd fast float %3140, -5.000000e-01
  %3144 = fadd fast float %3141, -5.000000e-01
  %3145 = fsub fast float 1.000000e+00, %1849
  %3146 = fsub fast float 1.000000e+00, %1850
  %3147 = fsub fast float 1.000000e+00, %1857
  %3148 = fmul fast float %1849, 4.000000e+00
  %3149 = fmul fast float %3148, %3145
  %3150 = fmul fast float %3149, %3142
  %3151 = fmul fast float %1850, 4.000000e+00
  %3152 = fmul fast float %3151, %3146
  %3153 = fmul fast float %3152, %3143
  %3154 = fmul fast float %1857, 4.000000e+00
  %3155 = fmul fast float %3154, %3147
  %3156 = fmul fast float %3155, %3144
  %3157 = fadd fast float %3150, %3133
  %3158 = fadd fast float %3153, %3134
  %3159 = fadd fast float %3156, %3135
  %3160 = call float @dx.op.unary.f32(i32 7, float %3157)  ; Saturate(value)
  %3161 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3162 = call float @dx.op.unary.f32(i32 7, float %3159)  ; Saturate(value)
  br label %3163

; <label>:3163                                    ; preds = %3137, %3057
  %3164 = phi float [ %3160, %3137 ], [ %3133, %3057 ]
  %3165 = phi float [ %3161, %3137 ], [ %3134, %3057 ]
  %3166 = phi float [ %3162, %3137 ], [ %3135, %3057 ]
  %3167 = call float @dx.op.binary.f32(i32 35, float %3165, float %3166)  ; FMax(a,b)
  %3168 = call float @dx.op.binary.f32(i32 35, float %3164, float %3167)  ; FMax(a,b)
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3116
  %3171 = fmul fast float %3169, %3117
  %3172 = fmul fast float %3169, %3118
  %3173 = call float @dx.op.dot3.f32(i32 55, float %1846, float %1847, float %1848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = fcmp fast ogt float %3173, 0x3E7FF19E20000000
  %3175 = fdiv fast float 1.000000e+00, %3173
  %3176 = select i1 %3174, float %3175, float 0.000000e+00
  %3177 = fmul fast float %3176, %1846
  %3178 = fmul fast float %3176, %1847
  %3179 = fmul fast float %3176, %1848
  %3180 = fadd fast float %3177, -1.000000e+00
  %3181 = fadd fast float %3178, -1.000000e+00
  %3182 = fadd fast float %3179, -1.000000e+00
  %3183 = fmul fast float %3180, 5.000000e-01
  %3184 = fmul fast float %3181, 5.000000e-01
  %3185 = fmul fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 1.000000e+00
  %3187 = fadd fast float %3184, 1.000000e+00
  %3188 = fadd fast float %3185, 1.000000e+00
  %3189 = fmul fast float %3164, %3120
  %3190 = fmul fast float %3165, %3121
  %3191 = fmul fast float %3166, %3122
  %3192 = fsub fast float 1.000000e+00, %1859
  %3193 = bitcast float %3192 to i32
  %3194 = sitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 5.000000e+00
  %3196 = fadd fast float %3195, 0xC1EFBF8940000000
  %3197 = fptosi float %3196 to i32
  %3198 = bitcast i32 %3197 to float
  %3199 = fmul fast float %3198, %1222
  %3200 = fmul fast float %3116, %3199
  %3201 = fmul fast float %3200, %3169
  %3202 = fmul fast float %3201, %3186
  %3203 = fmul fast float %3117, %3199
  %3204 = fmul fast float %3203, %3169
  %3205 = fmul fast float %3204, %3187
  %3206 = fmul fast float %3118, %3199
  %3207 = fmul fast float %3206, %3169
  %3208 = fmul fast float %3207, %3188
  %3209 = fmul fast float %3170, %1243
  %3210 = fmul fast float %3171, %1243
  %3211 = fmul fast float %3172, %1243
  %3212 = fadd fast float %3189, %1224
  %3213 = fadd fast float %3212, %3202
  %3214 = fmul fast float %3213, %1243
  %3215 = fadd fast float %3190, %1225
  %3216 = fadd fast float %3215, %3205
  %3217 = fmul fast float %3216, %1243
  %3218 = fadd fast float %3191, %1226
  %3219 = fadd fast float %3218, %3208
  %3220 = fmul fast float %3219, %1243
  %3221 = bitcast i32 %1871 to float
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 3
  %3224 = fcmp fast oeq float %3223, 0.000000e+00
  br i1 %3224, label %3459, label %3225

; <label>:3225                                    ; preds = %3163
  %3226 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3227 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3228 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3232 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3233 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3237 = call float @dx.op.dot3.f32(i32 55, float %3231, float %3232, float %3233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3238 = select i1 %176, float %3235, float %3231
  %3239 = select i1 %176, float %3237, float %3232
  %3240 = select i1 %176, float %3236, float %3233
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3243 = fcmp fast une float %3242, 0.000000e+00
  br i1 %3243, label %3244, label %3261

; <label>:3244                                    ; preds = %3225
  %3245 = fptoui float %58 to i32
  %3246 = fptoui float %59 to i32
  %3247 = lshr i32 %3245, 4
  %3248 = lshr i32 %3246, 4
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = fptoui float %3250 to i32
  %3252 = add i32 %3251, 15
  %3253 = lshr i32 %3252, 4
  %3254 = mul i32 %3253, %3248
  %3255 = add i32 %3254, %3247
  %3256 = shl i32 %3255, 3
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = and i32 %3258, -268435456
  %3260 = icmp eq i32 %3259, -1342177280
  br i1 %3260, label %3271, label %3261

; <label>:3261                                    ; preds = %3244, %3225
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 2
  %3264 = extractvalue %dx.types.CBufRet.f32 %3262, 3
  %3265 = fmul fast float %3263, %58
  %3266 = fmul fast float %3264, %59
  %3267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3265, float %3266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  br label %3271

; <label>:3271                                    ; preds = %3261, %3244
  %3272 = phi float [ %3268, %3261 ], [ 0.000000e+00, %3244 ]
  %3273 = phi float [ %3269, %3261 ], [ 0.000000e+00, %3244 ]
  %3274 = phi float [ %3270, %3261 ], [ 0.000000e+00, %3244 ]
  %3275 = call float @dx.op.binary.f32(i32 36, float %3273, float %3274)  ; FMin(a,b)
  %3276 = call float @dx.op.binary.f32(i32 36, float %3272, float %3275)  ; FMin(a,b)
  %3277 = fcmp fast ogt float %3276, 0.000000e+00
  br i1 %3277, label %3278, label %3459, !dx.controlflow.hints !79

; <label>:3278                                    ; preds = %3271
  %3279 = fmul fast float %3272, %3238
  %3280 = fmul fast float %3273, %3239
  %3281 = fmul fast float %3274, %3240
  %3282 = fsub fast float %3226, %1845
  %3283 = fsub fast float %3227, %1844
  %3284 = fsub fast float %3228, %1843
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3282, float %3283, float %3284, float %3282, float %3283, float %3284)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = call float @dx.op.unary.f32(i32 25, float %3285)  ; Rsqrt(value)
  %3287 = fmul fast float %3286, %3282
  %3288 = fmul fast float %3286, %3283
  %3289 = fmul fast float %3286, %3284
  %3290 = call float @dx.op.dot3.f32(i32 55, float %3226, float %3227, float %3228, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3291 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1841, float %1840, float %3287, float %3288, float %3289)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3293 = fmul fast float %3292, %3292
  %3294 = fmul fast float %3293, %3221
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  %3296 = fmul fast float %3295, %3292
  %3297 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1853, float %1854, float %3287, float %3288, float %3289)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = fmul fast float %3297, %3297
  %3299 = call float @dx.op.unary.f32(i32 6, float %3290)  ; FAbs(value)
  %3300 = fsub fast float 1.000000e+00, %1855
  %3301 = call float @dx.op.binary.f32(i32 35, float %3300, float 0x3F847AE140000000)  ; FMax(a,b)
  %3302 = fmul fast float %3301, %3301
  %3303 = fmul fast float %3302, %3302
  %3304 = fsub fast float 1.000000e+00, %3303
  %3305 = fmul fast float %1859, %1859
  %3306 = fmul fast float %3305, %3304
  %3307 = fadd fast float %3306, %3303
  %3308 = bitcast float %3307 to i32
  %3309 = ashr i32 %3308, 1
  %3310 = add nsw i32 %3309, 532487669
  %3311 = bitcast i32 %3310 to float
  %3312 = fadd fast float %3311, %1859
  %3313 = fmul fast float %3303, %3298
  %3314 = fsub fast float 1.000000e+00, %3298
  %3315 = fadd fast float %3314, %3313
  %3316 = fmul fast float %3299, %3299
  %3317 = fmul fast float %3316, %3304
  %3318 = fadd fast float %3317, %3303
  %3319 = bitcast float %3318 to i32
  %3320 = ashr i32 %3319, 1
  %3321 = add nsw i32 %3320, 532487669
  %3322 = bitcast i32 %3321 to float
  %3323 = fadd fast float %3322, %3299
  %3324 = fmul fast float %3315, %3315
  %3325 = fmul fast float %3324, %3312
  %3326 = fmul fast float %3325, %3323
  %3327 = fdiv fast float 0x3FF0A00000000000, %3326
  %3328 = fmul fast float %3327, %3303
  %3329 = call float @dx.op.unary.f32(i32 6, float %3291)  ; FAbs(value)
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = bitcast float %3330 to i32
  %3332 = sitofp i32 %3331 to float
  %3333 = fmul fast float %3332, 5.000000e+00
  %3334 = fadd fast float %3333, 0xC1EFBF8940000000
  %3335 = fptosi float %3334 to i32
  %3336 = bitcast i32 %3335 to float
  %3337 = fsub fast float 1.000000e+00, %1849
  %3338 = fsub fast float 1.000000e+00, %1850
  %3339 = fsub fast float 1.000000e+00, %1857
  %3340 = fmul fast float %3336, %3337
  %3341 = fmul fast float %3336, %3338
  %3342 = fmul fast float %3336, %3339
  %3343 = fadd fast float %3340, %1849
  %3344 = fadd fast float %3341, %1850
  %3345 = fadd fast float %3342, %1857
  br i1 %3136, label %3346, label %3369

; <label>:3346                                    ; preds = %3278
  %3347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1223, float %3329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.ResRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.ResRet.f32 %3347, 2
  %3351 = fadd fast float %3348, -5.000000e-01
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fadd fast float %3350, -5.000000e-01
  %3354 = fmul fast float %1849, 4.000000e+00
  %3355 = fmul fast float %3354, %3337
  %3356 = fmul fast float %3355, %3351
  %3357 = fmul fast float %1850, 4.000000e+00
  %3358 = fmul fast float %3357, %3338
  %3359 = fmul fast float %3358, %3352
  %3360 = fmul fast float %1857, 4.000000e+00
  %3361 = fmul fast float %3360, %3339
  %3362 = fmul fast float %3361, %3353
  %3363 = fadd fast float %3356, %3343
  %3364 = fadd fast float %3359, %3344
  %3365 = fadd fast float %3362, %3345
  %3366 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3367 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3368 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  br label %3369

; <label>:3369                                    ; preds = %3346, %3278
  %3370 = phi float [ %3366, %3346 ], [ %3343, %3278 ]
  %3371 = phi float [ %3367, %3346 ], [ %3344, %3278 ]
  %3372 = phi float [ %3368, %3346 ], [ %3345, %3278 ]
  %3373 = fmul fast float %3290, 9.843750e-01
  %3374 = fadd fast float %3373, 7.812500e-03
  %3375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3374, float %3126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3378 = fmul fast float %3376, %1849
  %3379 = fmul fast float %3376, %1850
  %3380 = fmul fast float %3376, %1857
  %3381 = fadd fast float %3378, %3377
  %3382 = fadd fast float %3379, %3377
  %3383 = fadd fast float %3380, %3377
  br i1 %3136, label %3384, label %3407

; <label>:3384                                    ; preds = %3369
  %3385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1223, float %3290, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3387 = extractvalue %dx.types.ResRet.f32 %3385, 1
  %3388 = extractvalue %dx.types.ResRet.f32 %3385, 2
  %3389 = fadd fast float %3386, -5.000000e-01
  %3390 = fadd fast float %3387, -5.000000e-01
  %3391 = fadd fast float %3388, -5.000000e-01
  %3392 = fmul fast float %1849, 4.000000e+00
  %3393 = fmul fast float %3392, %3337
  %3394 = fmul fast float %3393, %3389
  %3395 = fmul fast float %1850, 4.000000e+00
  %3396 = fmul fast float %3395, %3338
  %3397 = fmul fast float %3396, %3390
  %3398 = fmul fast float %1857, 4.000000e+00
  %3399 = fmul fast float %3398, %3339
  %3400 = fmul fast float %3399, %3391
  %3401 = fadd fast float %3394, %3381
  %3402 = fadd fast float %3397, %3382
  %3403 = fadd fast float %3400, %3383
  %3404 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3405 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3406 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  br label %3407

; <label>:3407                                    ; preds = %3384, %3369
  %3408 = phi float [ %3404, %3384 ], [ %3381, %3369 ]
  %3409 = phi float [ %3405, %3384 ], [ %3382, %3369 ]
  %3410 = phi float [ %3406, %3384 ], [ %3383, %3369 ]
  %3411 = call float @dx.op.binary.f32(i32 35, float %3409, float %3410)  ; FMax(a,b)
  %3412 = call float @dx.op.binary.f32(i32 35, float %3408, float %3411)  ; FMax(a,b)
  %3413 = fsub fast float 1.000000e+00, %3412
  %3414 = fmul fast float %3370, %3328
  %3415 = fmul fast float %3371, %3328
  %3416 = fmul fast float %3372, %3328
  %3417 = fsub fast float 1.000000e+00, %3291
  %3418 = bitcast float %3417 to i32
  %3419 = sitofp i32 %3418 to float
  %3420 = fmul fast float %3419, 5.000000e+00
  %3421 = fadd fast float %3420, 0xC1EFBF8940000000
  %3422 = fptosi float %3421 to i32
  %3423 = bitcast i32 %3422 to float
  %3424 = fmul fast float %3423, %1222
  %3425 = fmul fast float %3413, %3424
  %3426 = fmul fast float %3425, %3186
  %3427 = fmul fast float %3425, %3187
  %3428 = fmul fast float %3425, %3188
  %3429 = fmul fast float %3230, %701
  %3430 = fmul fast float %3230, %702
  %3431 = fmul fast float %3230, %703
  %3432 = fadd fast float %3414, %3429
  %3433 = fadd fast float %3432, %3426
  %3434 = fadd fast float %3415, %3430
  %3435 = fadd fast float %3434, %3427
  %3436 = fadd fast float %3416, %3431
  %3437 = fadd fast float %3436, %3428
  %3438 = fmul fast float %3296, %3279
  %3439 = fmul fast float %3438, %3413
  %3440 = fmul fast float %3296, %3280
  %3441 = fmul fast float %3440, %3413
  %3442 = fmul fast float %3296, %3281
  %3443 = fmul fast float %3442, %3413
  %3444 = fmul fast float %3438, %3433
  %3445 = fmul fast float %3440, %3435
  %3446 = fmul fast float %3442, %3437
  %3447 = fadd fast float %3439, %3170
  %3448 = fmul fast float %3447, %1243
  %3449 = fadd fast float %3441, %3171
  %3450 = fmul fast float %3449, %1243
  %3451 = fadd fast float %3443, %3172
  %3452 = fmul fast float %3451, %1243
  %3453 = fadd fast float %3444, %3213
  %3454 = fmul fast float %3453, %1243
  %3455 = fadd fast float %3445, %3216
  %3456 = fmul fast float %3455, %1243
  %3457 = fadd fast float %3446, %3219
  %3458 = fmul fast float %3457, %1243
  br label %3459

; <label>:3459                                    ; preds = %3407, %3271, %3163
  %3460 = phi float [ %3214, %3163 ], [ %3214, %3271 ], [ %3454, %3407 ]
  %3461 = phi float [ %3217, %3163 ], [ %3217, %3271 ], [ %3456, %3407 ]
  %3462 = phi float [ %3220, %3163 ], [ %3220, %3271 ], [ %3458, %3407 ]
  %3463 = phi float [ %3209, %3163 ], [ %3209, %3271 ], [ %3448, %3407 ]
  %3464 = phi float [ %3210, %3163 ], [ %3210, %3271 ], [ %3450, %3407 ]
  %3465 = phi float [ %3211, %3163 ], [ %3211, %3271 ], [ %3452, %3407 ]
  %3466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.i32 %3466, 0
  %3468 = icmp eq i32 %3467, 0
  br i1 %3468, label %3910, label %3469

; <label>:3469                                    ; preds = %3459
  %3470 = fptoui float %58 to i32
  %3471 = fptoui float %59 to i32
  %3472 = lshr i32 %3470, 4
  %3473 = lshr i32 %3471, 4
  %3474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.i32 %3474, 0
  %3476 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3473, i32 %3475, i32 %3472)  ; UMad(a,b,c)
  %3477 = add nsw i32 %3467, -1
  %3478 = call i32 @dx.op.binary.i32(i32 37, i32 %3477, i32 0)  ; IMax(a,b)
  %3479 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3480 = fptoui float %3479 to i32
  %3481 = lshr i32 %3480, 5
  %3482 = call i32 @dx.op.binary.i32(i32 40, i32 %3481, i32 8191)  ; UMin(a,b)
  %3483 = shl i32 %3482, 2
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = lshr i32 %3485, 16
  %3487 = and i32 %3485, 65535
  %3488 = lshr i32 %3485, 21
  %3489 = lshr i32 %3487, 5
  %3490 = call i32 @dx.op.binary.i32(i32 40, i32 %3489, i32 %3478)  ; UMin(a,b)
  %3491 = icmp ugt i32 %3488, %3490
  br i1 %3491, label %3910, label %3492

; <label>:3492                                    ; preds = %3469
  br label %3493

; <label>:3493                                    ; preds = %3900, %3492
  %3494 = phi i32 [ %3907, %3900 ], [ %3488, %3492 ]
  %3495 = phi float [ %3901, %3900 ], [ %3460, %3492 ]
  %3496 = phi float [ %3902, %3900 ], [ %3461, %3492 ]
  %3497 = phi float [ %3903, %3900 ], [ %3462, %3492 ]
  %3498 = phi float [ %3904, %3900 ], [ %3463, %3492 ]
  %3499 = phi float [ %3905, %3900 ], [ %3464, %3492 ]
  %3500 = phi float [ %3906, %3900 ], [ %3465, %3492 ]
  %3501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.i32 %3501, 0
  %3503 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3476, i32 %3502, i32 %3494)  ; UMad(a,b,c)
  %3504 = shl i32 %3503, 2
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = shl i32 %3494, 5
  %3508 = sub nsw i32 %3486, %3507
  %3509 = call i32 @dx.op.binary.i32(i32 37, i32 %3508, i32 0)  ; IMax(a,b)
  %3510 = call i32 @dx.op.binary.i32(i32 38, i32 %3509, i32 31)  ; IMin(a,b)
  %3511 = sub nsw i32 1, %3486
  %3512 = add nsw i32 %3511, %3487
  %3513 = call i32 @dx.op.binary.i32(i32 37, i32 %3512, i32 0)  ; IMax(a,b)
  %3514 = call i32 @dx.op.binary.i32(i32 38, i32 %3513, i32 32)  ; IMin(a,b)
  %3515 = and i32 %3514, 31
  %3516 = shl i32 -1, %3515
  %3517 = xor i32 %3516, -1
  %3518 = and i32 %3510, 31
  %3519 = shl i32 %3517, %3518
  %3520 = icmp eq i32 %3514, 32
  %3521 = select i1 %3520, i32 -1, i32 %3519
  %3522 = and i32 %3521, %3506
  %3523 = icmp eq i32 %3522, 0
  br i1 %3523, label %3900, label %3524

; <label>:3524                                    ; preds = %3493
  br label %3525

; <label>:3525                                    ; preds = %3606, %3524
  %3526 = phi i32 [ %3537, %3606 ], [ %3522, %3524 ]
  %3527 = phi float [ %3607, %3606 ], [ %3495, %3524 ]
  %3528 = phi float [ %3608, %3606 ], [ %3496, %3524 ]
  %3529 = phi float [ %3609, %3606 ], [ %3497, %3524 ]
  %3530 = phi float [ %3610, %3606 ], [ %3498, %3524 ]
  %3531 = phi float [ %3611, %3606 ], [ %3499, %3524 ]
  %3532 = phi float [ %3612, %3606 ], [ %3500, %3524 ]
  %3533 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3526)  ; FirstbitLo(value)
  %3534 = add i32 %3533, %3507
  %3535 = and i32 %3533, 31
  %3536 = shl i32 1, %3535
  %3537 = xor i32 %3536, %3526
  %3538 = mul i32 %3534, 112
  %3539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = or i32 %3538, 12
  %3544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = add i32 %3538, 44
  %3547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = add i32 %3538, 48
  %3550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.ResRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.ResRet.f32 %3550, 2
  %3554 = add i32 %3538, 80
  %3555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.ResRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.ResRet.f32 %3555, 2
  %3559 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3541, float %3542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3560 = select i1 %176, float %3557, float %3540
  %3561 = select i1 %176, float %3559, float %3541
  %3562 = select i1 %176, float %3558, float %3542
  %3563 = fsub fast float %3551, %105
  %3564 = fsub fast float %3552, %106
  %3565 = fsub fast float %3553, %107
  %3566 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3564, float %3565, float %3563, float %3564, float %3565)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = call float @dx.op.unary.f32(i32 24, float %3566)  ; Sqrt(value)
  %3568 = fdiv fast float 1.000000e+00, %3567
  %3569 = fmul fast float %3568, %3563
  %3570 = fmul fast float %3568, %3564
  %3571 = fmul fast float %3568, %3565
  %3572 = fadd fast float %3567, %3545
  %3573 = fdiv fast float 1.000000e+00, %3572
  %3574 = fmul float %3548, %3573
  %3575 = fmul float %3574, %3574
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = and i32 %3536, %3522
  %3578 = icmp eq i32 %3577, 0
  br i1 %3578, label %3601, label %3579, !dx.controlflow.hints !80

; <label>:3579                                    ; preds = %3525
  %3580 = lshr i32 %3470, 5
  %3581 = lshr i32 %3471, 5
  %3582 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3580, i32 %3581, i32 %3534, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = and i32 %3583, 3
  %3585 = icmp eq i32 %3584, 0
  %3586 = select i1 %3585, float 1.000000e+00, float 0.000000e+00
  %3587 = icmp eq i32 %3584, 3
  br i1 %3587, label %3588, label %3601

; <label>:3588                                    ; preds = %3579
  %3589 = lshr i32 %3583, 10
  %3590 = and i32 %3589, 8160
  %3591 = and i32 %3471, 31
  %3592 = or i32 %3590, %3591
  %3593 = lshr i32 %3583, 1
  %3594 = and i32 %3593, 16352
  %3595 = and i32 %3470, 31
  %3596 = or i32 %3594, %3595
  %3597 = lshr i32 %3583, 23
  %3598 = and i32 %3597, 255
  %3599 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3596, i32 %3592, i32 %3598, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  br label %3601

; <label>:3601                                    ; preds = %3588, %3579, %3525
  %3602 = phi float [ %3600, %3588 ], [ %3586, %3579 ], [ 0.000000e+00, %3525 ]
  %3603 = call float @dx.op.binary.f32(i32 36, float %3602, float %3602)  ; FMin(a,b)
  %3604 = call float @dx.op.binary.f32(i32 36, float %3602, float %3603)  ; FMin(a,b)
  %3605 = fcmp fast ogt float %3604, 0.000000e+00
  br i1 %3605, label %3614, label %3606, !dx.controlflow.hints !81

; <label>:3606                                    ; preds = %3850, %3601
  %3607 = phi float [ %3527, %3601 ], [ %3896, %3850 ]
  %3608 = phi float [ %3528, %3601 ], [ %3897, %3850 ]
  %3609 = phi float [ %3529, %3601 ], [ %3898, %3850 ]
  %3610 = phi float [ %3530, %3601 ], [ %3890, %3850 ]
  %3611 = phi float [ %3531, %3601 ], [ %3891, %3850 ]
  %3612 = phi float [ %3532, %3601 ], [ %3892, %3850 ]
  %3613 = icmp eq i32 %3526, %3536
  br i1 %3613, label %3899, label %3525

; <label>:3614                                    ; preds = %3601
  %3615 = fmul fast float %3602, %3560
  %3616 = fmul fast float %3602, %3561
  %3617 = fmul fast float %3602, %3562
  %3618 = fsub fast float %3553, %1645
  %3619 = fcmp fast ogt float %3618, 0.000000e+00
  %3620 = fsub fast float %107, %1645
  %3621 = fcmp fast ogt float %3620, 0.000000e+00
  %3622 = xor i1 %3621, %3619
  %3623 = fsub fast float %1645, %3553
  %3624 = fmul fast float %3623, 2.000000e+00
  %3625 = fadd fast float %3624, %3553
  %3626 = select i1 %3622, float %3553, float %3625
  %3627 = fsub fast float %3626, %107
  %3628 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3564, float %3627, float %3563, float %3564, float %3627)  ; Dot3(ax,ay,az,bx,by,bz)
  %3629 = call float @dx.op.unary.f32(i32 25, float %3628)  ; Rsqrt(value)
  %3630 = fmul fast float %3629, %3563
  %3631 = fmul fast float %3629, %3564
  %3632 = fmul fast float %3629, %3627
  %3633 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1653)  ; Dot3(ax,ay,az,bx,by,bz)
  %3634 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3630, float %3631, float %3632)  ; Dot3(ax,ay,az,bx,by,bz)
  %3635 = fdiv fast float 1.000000e+00, %3634
  %3636 = fmul fast float %3635, %3633
  %3637 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3620, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3638 = fcmp fast ogt float %3637, 0.000000e+00
  %3639 = fcmp fast olt float %3637, 0.000000e+00
  %3640 = zext i1 %3638 to i32
  %3641 = zext i1 %3639 to i32
  %3642 = sub nsw i32 %3640, %3641
  %3643 = sitofp i32 %3642 to float
  %3644 = fsub fast float %3626, %1645
  %3645 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3564, float %3644, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3646 = fcmp fast ogt float %3645, 0.000000e+00
  %3647 = fcmp fast olt float %3645, 0.000000e+00
  %3648 = zext i1 %3646 to i32
  %3649 = zext i1 %3647 to i32
  %3650 = sub nsw i32 %3648, %3649
  %3651 = sitofp i32 %3650 to float
  %3652 = fcmp fast une float %3643, %3651
  br i1 %3652, label %3653, label %3663

; <label>:3653                                    ; preds = %3614
  %3654 = fmul fast float %3636, %3632
  %3655 = fmul fast float %3636, %3631
  %3656 = fmul fast float %3636, %3630
  %3657 = fmul fast float %3656, %3656
  %3658 = fmul fast float %3655, %3655
  %3659 = fadd fast float %3657, %3658
  %3660 = fmul fast float %3654, %3654
  %3661 = fadd fast float %3659, %3660
  %3662 = call float @dx.op.unary.f32(i32 24, float %3661)  ; Sqrt(value)
  br label %3675

; <label>:3663                                    ; preds = %3614
  %3664 = icmp slt i32 %3642, 0
  br i1 %3664, label %3665, label %3675

; <label>:3665                                    ; preds = %3663
  %3666 = fsub fast float %105, %3551
  %3667 = fsub fast float %106, %3552
  %3668 = fsub fast float %107, %3626
  %3669 = fmul fast float %3666, %3666
  %3670 = fmul fast float %3667, %3667
  %3671 = fadd fast float %3669, %3670
  %3672 = fmul fast float %3668, %3668
  %3673 = fadd fast float %3671, %3672
  %3674 = call float @dx.op.unary.f32(i32 24, float %3673)  ; Sqrt(value)
  br label %3675

; <label>:3675                                    ; preds = %3665, %3663, %3653
  %3676 = phi float [ %3662, %3653 ], [ %3674, %3665 ], [ 0.000000e+00, %3663 ]
  %3677 = and i1 %3621, %3619
  %3678 = fsub fast float -0.000000e+00, %3676
  %3679 = select i1 %3677, float -0.000000e+00, float %3678
  %3680 = fmul fast float %1646, 0x3FF7154760000000
  %3681 = fmul fast float %3680, %3679
  %3682 = fmul fast float %1647, 0x3FF7154760000000
  %3683 = fmul fast float %3682, %3679
  %3684 = fmul fast float %1648, 0x3FF7154760000000
  %3685 = fmul fast float %3684, %3679
  %3686 = call float @dx.op.unary.f32(i32 21, float %3681)  ; Exp(value)
  %3687 = call float @dx.op.unary.f32(i32 21, float %3683)  ; Exp(value)
  %3688 = call float @dx.op.unary.f32(i32 21, float %3685)  ; Exp(value)
  %3689 = call float @dx.op.unary.f32(i32 7, float %3686)  ; Saturate(value)
  %3690 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3691 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3692 = fmul fast float %3615, %3689
  %3693 = fmul fast float %3616, %3690
  %3694 = fmul fast float %3617, %3691
  %3695 = fsub fast float %3569, %1845
  %3696 = fsub fast float %3570, %1844
  %3697 = fsub fast float %3571, %1843
  %3698 = call float @dx.op.dot3.f32(i32 55, float %3695, float %3696, float %3697, float %3695, float %3696, float %3697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3699 = call float @dx.op.unary.f32(i32 25, float %3698)  ; Rsqrt(value)
  %3700 = fmul fast float %3699, %3695
  %3701 = fmul fast float %3699, %3696
  %3702 = fmul fast float %3699, %3697
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3569, float %3570, float %3571, float %1852, float %1853, float %1854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1841, float %1840, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3705 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3706 = fmul fast float %3705, %3576
  %3707 = fmul fast float %3705, %3705
  %3708 = fmul fast float %3707, %3221
  %3709 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3710 = fmul fast float %3706, %3709
  %3711 = bitcast float %3566 to i32
  %3712 = ashr i32 %3711, 1
  %3713 = sub nsw i32 1597463007, %3712
  %3714 = bitcast i32 %3713 to float
  %3715 = fmul fast float %3714, %3563
  %3716 = fmul fast float %3714, %3564
  %3717 = fmul fast float %3714, %3565
  %3718 = fsub fast float %3715, %1845
  %3719 = fsub fast float %3716, %1844
  %3720 = fsub fast float %3717, %1843
  %3721 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3718, float %3719, float %3720)  ; Dot3(ax,ay,az,bx,by,bz)
  %3722 = call float @dx.op.unary.f32(i32 25, float %3721)  ; Rsqrt(value)
  %3723 = fmul fast float %3718, %3722
  %3724 = fmul fast float %3719, %3722
  %3725 = fmul fast float %3720, %3722
  %3726 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1853, float %1854, float %3723, float %3724, float %3725)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = fmul fast float %3726, %3726
  %3728 = call float @dx.op.unary.f32(i32 6, float %3703)  ; FAbs(value)
  %3729 = fsub fast float 1.000000e+00, %1855
  %3730 = call float @dx.op.binary.f32(i32 35, float %3729, float 0x3F847AE140000000)  ; FMax(a,b)
  %3731 = fmul fast float %3730, %3730
  %3732 = fmul fast float %3731, %3731
  %3733 = fsub fast float 1.000000e+00, %3732
  %3734 = fmul fast float %1859, %1859
  %3735 = fmul fast float %3734, %3733
  %3736 = fadd fast float %3735, %3732
  %3737 = bitcast float %3736 to i32
  %3738 = ashr i32 %3737, 1
  %3739 = add nsw i32 %3738, 532487669
  %3740 = bitcast i32 %3739 to float
  %3741 = fadd fast float %3740, %1859
  %3742 = fmul fast float %3732, %3727
  %3743 = fsub fast float 1.000000e+00, %3727
  %3744 = fadd fast float %3743, %3742
  %3745 = fmul fast float %3728, %3728
  %3746 = fmul fast float %3745, %3733
  %3747 = fadd fast float %3746, %3732
  %3748 = bitcast float %3747 to i32
  %3749 = ashr i32 %3748, 1
  %3750 = add nsw i32 %3749, 532487669
  %3751 = bitcast i32 %3750 to float
  %3752 = fadd fast float %3751, %3728
  %3753 = fmul fast float %3744, %3744
  %3754 = fmul fast float %3753, %3741
  %3755 = fmul fast float %3754, %3752
  %3756 = fdiv fast float 1.000000e+00, %3755
  %3757 = bitcast float %3732 to i32
  %3758 = sitofp i32 %3757 to float
  %3759 = fmul fast float %3758, 0x3FE7F73180000000
  %3760 = fadd fast float %3759, 0x41AFE27C40000000
  %3761 = fptosi float %3760 to i32
  %3762 = bitcast i32 %3761 to float
  %3763 = fmul fast float %3548, 0x3FD80E9D60000000
  %3764 = fmul fast float %3763, %3714
  %3765 = fadd fast float %3762, %3764
  %3766 = bitcast float %3765 to i32
  %3767 = sub nsw i32 2129859010, %3766
  %3768 = bitcast i32 %3767 to float
  %3769 = fmul fast float %3732, %3756
  %3770 = fmul fast float %3769, %3762
  %3771 = fmul fast float %3770, %3768
  %3772 = call float @dx.op.unary.f32(i32 6, float %3704)  ; FAbs(value)
  %3773 = fsub fast float 1.000000e+00, %3772
  %3774 = bitcast float %3773 to i32
  %3775 = sitofp i32 %3774 to float
  %3776 = fmul fast float %3775, 5.000000e+00
  %3777 = fadd fast float %3776, 0xC1EFBF8940000000
  %3778 = fptosi float %3777 to i32
  %3779 = bitcast i32 %3778 to float
  %3780 = fsub fast float 1.000000e+00, %1849
  %3781 = fsub fast float 1.000000e+00, %1850
  %3782 = fsub fast float 1.000000e+00, %1857
  %3783 = fmul fast float %3779, %3780
  %3784 = fmul fast float %3779, %3781
  %3785 = fmul fast float %3779, %3782
  %3786 = fadd fast float %3783, %1849
  %3787 = fadd fast float %3784, %1850
  %3788 = fadd fast float %3785, %1857
  br i1 %3136, label %3789, label %3812

; <label>:3789                                    ; preds = %3675
  %3790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1223, float %3772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = fadd fast float %3791, -5.000000e-01
  %3795 = fadd fast float %3792, -5.000000e-01
  %3796 = fadd fast float %3793, -5.000000e-01
  %3797 = fmul fast float %1849, 4.000000e+00
  %3798 = fmul fast float %3797, %3780
  %3799 = fmul fast float %3798, %3794
  %3800 = fmul fast float %1850, 4.000000e+00
  %3801 = fmul fast float %3800, %3781
  %3802 = fmul fast float %3801, %3795
  %3803 = fmul fast float %1857, 4.000000e+00
  %3804 = fmul fast float %3803, %3782
  %3805 = fmul fast float %3804, %3796
  %3806 = fadd fast float %3799, %3786
  %3807 = fadd fast float %3802, %3787
  %3808 = fadd fast float %3805, %3788
  %3809 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3810 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3811 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  br label %3812

; <label>:3812                                    ; preds = %3789, %3675
  %3813 = phi float [ %3809, %3789 ], [ %3786, %3675 ]
  %3814 = phi float [ %3810, %3789 ], [ %3787, %3675 ]
  %3815 = phi float [ %3811, %3789 ], [ %3788, %3675 ]
  %3816 = fmul fast float %3703, 9.843750e-01
  %3817 = fadd fast float %3816, 7.812500e-03
  %3818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3817, float %3126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3821 = fmul fast float %3819, %1849
  %3822 = fmul fast float %3819, %1850
  %3823 = fmul fast float %3819, %1857
  %3824 = fadd fast float %3821, %3820
  %3825 = fadd fast float %3822, %3820
  %3826 = fadd fast float %3823, %3820
  br i1 %3136, label %3827, label %3850

; <label>:3827                                    ; preds = %3812
  %3828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1223, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3832 = fadd fast float %3829, -5.000000e-01
  %3833 = fadd fast float %3830, -5.000000e-01
  %3834 = fadd fast float %3831, -5.000000e-01
  %3835 = fmul fast float %1849, 4.000000e+00
  %3836 = fmul fast float %3835, %3780
  %3837 = fmul fast float %3836, %3832
  %3838 = fmul fast float %1850, 4.000000e+00
  %3839 = fmul fast float %3838, %3781
  %3840 = fmul fast float %3839, %3833
  %3841 = fmul fast float %1857, 4.000000e+00
  %3842 = fmul fast float %3841, %3782
  %3843 = fmul fast float %3842, %3834
  %3844 = fadd fast float %3837, %3824
  %3845 = fadd fast float %3840, %3825
  %3846 = fadd fast float %3843, %3826
  %3847 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  br label %3850

; <label>:3850                                    ; preds = %3827, %3812
  %3851 = phi float [ %3847, %3827 ], [ %3824, %3812 ]
  %3852 = phi float [ %3848, %3827 ], [ %3825, %3812 ]
  %3853 = phi float [ %3849, %3827 ], [ %3826, %3812 ]
  %3854 = call float @dx.op.binary.f32(i32 35, float %3852, float %3853)  ; FMax(a,b)
  %3855 = call float @dx.op.binary.f32(i32 35, float %3851, float %3854)  ; FMax(a,b)
  %3856 = fsub fast float 1.000000e+00, %3855
  %3857 = fmul fast float %3813, %3771
  %3858 = fmul fast float %3814, %3771
  %3859 = fmul fast float %3815, %3771
  %3860 = fsub fast float 1.000000e+00, %3704
  %3861 = bitcast float %3860 to i32
  %3862 = sitofp i32 %3861 to float
  %3863 = fmul fast float %3862, 5.000000e+00
  %3864 = fadd fast float %3863, 0xC1EFBF8940000000
  %3865 = fptosi float %3864 to i32
  %3866 = bitcast i32 %3865 to float
  %3867 = fmul fast float %3866, %1222
  %3868 = fmul fast float %3856, %3867
  %3869 = fmul fast float %3868, %3186
  %3870 = fmul fast float %3868, %3187
  %3871 = fmul fast float %3868, %3188
  %3872 = fmul fast float %3556, %701
  %3873 = fmul fast float %3556, %702
  %3874 = fmul fast float %3556, %703
  %3875 = fadd fast float %3857, %3872
  %3876 = fadd fast float %3875, %3869
  %3877 = fadd fast float %3858, %3873
  %3878 = fadd fast float %3877, %3870
  %3879 = fadd fast float %3859, %3874
  %3880 = fadd fast float %3879, %3871
  %3881 = fmul fast float %3692, %1243
  %3882 = fmul fast float %3881, %3710
  %3883 = fmul fast float %3882, %3856
  %3884 = fmul fast float %3693, %1243
  %3885 = fmul fast float %3884, %3710
  %3886 = fmul fast float %3885, %3856
  %3887 = fmul fast float %3694, %1243
  %3888 = fmul fast float %3887, %3710
  %3889 = fmul fast float %3888, %3856
  %3890 = fadd fast float %3883, %3530
  %3891 = fadd fast float %3886, %3531
  %3892 = fadd fast float %3889, %3532
  %3893 = fmul fast float %3882, %3876
  %3894 = fmul fast float %3885, %3878
  %3895 = fmul fast float %3888, %3880
  %3896 = fadd fast float %3893, %3527
  %3897 = fadd fast float %3894, %3528
  %3898 = fadd fast float %3895, %3529
  br label %3606

; <label>:3899                                    ; preds = %3606
  br label %3900

; <label>:3900                                    ; preds = %3899, %3493
  %3901 = phi float [ %3495, %3493 ], [ %3607, %3899 ]
  %3902 = phi float [ %3496, %3493 ], [ %3608, %3899 ]
  %3903 = phi float [ %3497, %3493 ], [ %3609, %3899 ]
  %3904 = phi float [ %3498, %3493 ], [ %3610, %3899 ]
  %3905 = phi float [ %3499, %3493 ], [ %3611, %3899 ]
  %3906 = phi float [ %3500, %3493 ], [ %3612, %3899 ]
  %3907 = add i32 %3494, 1
  %3908 = icmp ugt i32 %3907, %3490
  br i1 %3908, label %3909, label %3493

; <label>:3909                                    ; preds = %3900
  br label %3910

; <label>:3910                                    ; preds = %3909, %3469, %3459
  %3911 = phi float [ %3460, %3459 ], [ %3460, %3469 ], [ %3901, %3909 ]
  %3912 = phi float [ %3461, %3459 ], [ %3461, %3469 ], [ %3902, %3909 ]
  %3913 = phi float [ %3462, %3459 ], [ %3462, %3469 ], [ %3903, %3909 ]
  %3914 = phi float [ %3463, %3459 ], [ %3463, %3469 ], [ %3904, %3909 ]
  %3915 = phi float [ %3464, %3459 ], [ %3464, %3469 ], [ %3905, %3909 ]
  %3916 = phi float [ %3465, %3459 ], [ %3465, %3469 ], [ %3906, %3909 ]
  %3917 = call float @dx.op.unary.f32(i32 24, float %1846)  ; Sqrt(value)
  %3918 = call float @dx.op.unary.f32(i32 24, float %1847)  ; Sqrt(value)
  %3919 = call float @dx.op.unary.f32(i32 24, float %1848)  ; Sqrt(value)
  %3920 = fmul fast float %3917, %3914
  %3921 = fmul fast float %3918, %3915
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  br i1 %176, label %3924, label %3944

; <label>:3924                                    ; preds = %3910
  %3925 = fadd fast float %3916, %1220
  %3926 = fmul fast float %3925, %1221
  %3927 = fsub fast float 1.000000e+00, %1221
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3931 = fmul fast float %3930, %3928
  %3932 = fadd fast float %3931, %3926
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3935 = fmul fast float %3934, %3192
  %3936 = fsub fast float %3932, %3935
  %3937 = fadd fast float %3921, %3920
  %3938 = fmul fast float %3923, %3937
  %3939 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3940 = fsub fast float %3936, %3939
  %3941 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3942 = fmul fast float %3940, %3941
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  br label %3960

; <label>:3944                                    ; preds = %3910
  %3945 = fmul fast float %3919, %3916
  %3946 = fmul fast float %3923, %3920
  %3947 = fmul fast float %3923, %3921
  %3948 = fmul fast float %3945, %3923
  %3949 = add i32 %38, 116
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = and i32 %3951, 32
  %3953 = icmp eq i32 %3952, 0
  br i1 %3953, label %3960, label %3954

; <label>:3954                                    ; preds = %3944
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = fmul fast float %3956, 0x3FE99999A0000000
  %3958 = fadd fast float %3956, %3946
  %3959 = fadd fast float %3957, %3948
  br label %3960

; <label>:3960                                    ; preds = %3954, %3944, %3924
  %3961 = phi float [ %3938, %3924 ], [ %3958, %3954 ], [ %3946, %3944 ]
  %3962 = phi float [ %3943, %3924 ], [ %3947, %3954 ], [ %3947, %3944 ]
  %3963 = phi float [ 1.000000e+00, %3924 ], [ %3959, %3954 ], [ %3948, %3944 ]
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = fmul fast float %3965, %3912
  %3967 = fmul fast float %3965, %3913
  %3968 = fadd fast float %3912, %3911
  %3969 = select i1 %176, float %3968, float %3911
  %3970 = fmul float %3969, %3965
  %3971 = select i1 %176, float 0.000000e+00, float %3966
  %3972 = select i1 %176, float 0.000000e+00, float %3967
  %3973 = fmul fast float %3961, %3917
  %3974 = fmul fast float %3962, %3918
  %3975 = fmul fast float %3963, %3919
  %3976 = fadd fast float %3970, %3973
  %3977 = fadd fast float %3971, %3974
  %3978 = fadd fast float %3972, %3975
  %3979 = select i1 %176, float %3962, float %3977
  %3980 = select i1 %176, float %3963, float %3978
  %3981 = call float @dx.op.binary.f32(i32 36, float %3976, float 3.225500e+04)  ; FMin(a,b)
  %3982 = call float @dx.op.binary.f32(i32 36, float %3979, float 3.225500e+04)  ; FMin(a,b)
  %3983 = call float @dx.op.binary.f32(i32 36, float %3980, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3982)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3983)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

