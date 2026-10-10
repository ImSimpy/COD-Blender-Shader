;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         4     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        5     NONE   float   xyzw
; SV_IsFrontFace           0   x           6    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 547a4dae178cea4d00cab10be02eb019
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
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     u32     2darray      T5     t11,space2     1
;                                   texture     f32     2darray      T6     t10,space2     1
;                                   texture     f32          2d      T7     t69,space2     1
;                                   texture    byte         r/o      T8     t16,space1     1
;                                   texture    byte         r/o      T9     t17,space1     1
;                                   texture    byte         r/o     T10      t3,space1     1
;                                   texture    byte         r/o     T11      t4,space1     1
;                                   texture    byte         r/o     T12      t5,space1     1
;                                   texture    byte         r/o     T13      t6,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15             t1     1
;                                   texture     f32     2darray     T16     t49,space2     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     f32     2darray     T26     t35,space2     1
;                                   texture     f32          2d     T27     t34,space2     1
;                                   texture     f32          3d     T28     t31,space2     1
;                                   texture    byte         r/o     T29     t10,space1     1
;                                   texture    byte         r/o     T30     t68,space1     1
;                                   texture     f32          2d     T31      t0,space2     1
;                                   texture    byte         r/o     T32     t11,space1     1
;                                   texture    byte         r/o     T33     t13,space1     1
;                                   texture     f32          2d     T34     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 25, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
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
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = icmp ne i32 %38, 0
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = fmul fast float %62, %56
  %64 = fmul fast float %62, %57
  %65 = select i1 %39, float 1.000000e+00, float -1.000000e+00
  %66 = fmul fast float %51, %65
  %67 = fmul fast float %52, %65
  %68 = fmul fast float %53, %65
  %69 = fmul fast float %52, %49
  %70 = fmul fast float %53, %48
  %71 = fsub fast float %69, %70
  %72 = fmul fast float %53, %47
  %73 = fmul fast float %51, %49
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %51, %48
  %76 = fmul fast float %52, %47
  %77 = fsub fast float %75, %76
  %78 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = bitcast float %78 to i32
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 1597250115, %80
  %82 = bitcast i32 %81 to float
  %83 = fmul fast float %82, %40
  %84 = fmul fast float %82, %41
  %85 = fmul fast float %82, %42
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 3
  %89 = fmul fast float %63, 2.000000e+00
  %90 = fmul fast float %89, %87
  %91 = fmul fast float %64, 2.000000e+00
  %92 = fmul fast float %91, %88
  %93 = fsub fast float 1.000000e+00, %90
  %94 = fsub fast float 1.000000e+00, %92
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fmul fast float %93, %96
  %100 = fmul fast float %93, %97
  %101 = fmul fast float %93, %98
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = fmul fast float %94, %103
  %107 = fmul fast float %94, %104
  %108 = fmul fast float %94, %105
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fadd fast float %106, %110
  %114 = fadd fast float %113, %99
  %115 = fadd fast float %107, %111
  %116 = fadd fast float %115, %100
  %117 = fadd fast float %108, %112
  %118 = fadd fast float %117, %101
  %119 = fmul fast float %114, %58
  %120 = fmul fast float %116, %58
  %121 = fmul fast float %118, %58
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %123, %63
  %126 = fmul fast float %124, %64
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %128, 114688
  %130 = icmp ne i32 %129, 0
  %131 = select i1 %130, float %125, float 0.000000e+00
  %132 = select i1 %130, float %126, float 0.000000e+00
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %35, float %131, float %132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fmul fast float %134, 2.550000e+02
  %136 = fptoui float %135 to i32
  %137 = select i1 %130, i32 %136, i32 0
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.i32 %139, 3
  %141 = and i32 %140, 3
  %142 = icmp ne i32 %141, 0
  %143 = and i32 %140, 4
  %144 = icmp ne i32 %143, 0
  %145 = and i1 %142, %144
  br i1 %145, label %146, label %157

; <label>:146                                     ; preds = %0
  %147 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %148 = fmul fast float %147, %64
  %149 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %150 = fmul fast float %149, %63
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %150, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fsub fast float 1.000000e+00, %152
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = fcmp fast olt float %153, %155
  br label %160

; <label>:157                                     ; preds = %0
  %158 = icmp eq i32 %143, 0
  %159 = and i1 %142, %158
  br label %160

; <label>:160                                     ; preds = %157, %146
  %161 = phi i1 [ %156, %146 ], [ %159, %157 ]
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %164 = fmul fast float %163, 0x3FE3C6EF40000000
  %165 = frem fast float %63, 2.560000e+02
  %166 = frem fast float %64, 2.560000e+02
  %167 = fptoui float %165 to i32
  %168 = fptoui float %166 to i32
  %169 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %167, i32 %168, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 1
  %172 = fadd fast float %170, %164
  %173 = fadd fast float %171, %164
  %174 = call float @dx.op.unary.f32(i32 22, float %172)  ; Frc(value)
  %175 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = shl i32 %177, 4
  %179 = and i32 %178, 32752
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = lshr i32 %177, 7
  %182 = and i32 %181, 32752
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %177, 22
  %185 = shl nuw nsw i32 %184, 5
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F70101020000000
  %192 = lshr i32 %188, 8
  %193 = and i32 %192, 255
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F70101020000000
  %196 = lshr i32 %188, 16
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F70101020000000
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = or i32 %207, %205
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %653, label %210

; <label>:210                                     ; preds = %160
  %211 = lshr i32 %203, 16
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = fmul fast float %212, 0x3F50624DE0000000
  %214 = and i32 %203, 65535
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = fmul fast float %215, 0x3F50624DE0000000
  %217 = lshr i32 %201, 16
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = and i32 %201, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = lshr i32 %222, 16
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = fmul fast float %224, 0x3F50624DE0000000
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 16
  %229 = and i32 %228, 255
  %230 = lshr i32 %227, 24
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 65535
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %232, 16
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = lshr i32 %238, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = shl i32 %238, 4
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %238, 7
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %250 = fmul fast float %249, 1.000000e+03
  %251 = fmul fast float %216, %250
  %252 = call float @dx.op.unary.f32(i32 22, float %251)  ; Frc(value)
  %253 = fadd fast float %252, %220
  %254 = fmul fast float %213, %250
  %255 = call float @dx.op.unary.f32(i32 22, float %254)  ; Frc(value)
  %256 = fadd fast float %255, %218
  %257 = fmul fast float %225, %250
  %258 = call float @dx.op.unary.f32(i32 22, float %257)  ; Frc(value)
  %259 = fmul fast float %258, 0x401921FB60000000
  %260 = fadd fast float %259, %241
  %261 = call float @dx.op.unary.f32(i32 13, float %260)  ; Sin(value)
  %262 = call float @dx.op.unary.f32(i32 12, float %260)  ; Cos(value)
  %263 = fsub fast float -0.000000e+00, %261
  %264 = fadd fast float %54, -5.000000e-01
  %265 = fadd fast float %55, -5.000000e-01
  %266 = fmul fast float %234, %264
  %267 = fmul fast float %236, %265
  %268 = fadd fast float %266, 5.000000e-01
  %269 = fadd fast float %267, 5.000000e-01
  %270 = fmul fast float %244, %268
  %271 = fmul fast float %247, %269
  %272 = fmul fast float %262, %270
  %273 = call float @dx.op.tertiary.f32(i32 46, float %263, float %271, float %272)  ; FMad(a,b,c)
  %274 = fmul fast float %261, %270
  %275 = call float @dx.op.tertiary.f32(i32 46, float %262, float %271, float %274)  ; FMad(a,b,c)
  %276 = fadd fast float %253, %273
  %277 = fadd fast float %256, %275
  %278 = icmp ugt i32 %229, 1
  %279 = icmp ugt i32 %227, 33554431
  %280 = or i1 %279, %278
  br i1 %280, label %281, label %305

; <label>:281                                     ; preds = %210
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = lshr i32 %283, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = fmul fast float %249, %285
  %287 = call float @dx.op.unary.f32(i32 22, float %286)  ; Frc(value)
  %288 = mul nuw nsw i32 %229, %230
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %287, %289
  %291 = call float @dx.op.unary.f32(i32 27, float %290)  ; Round_ni(value)
  %292 = fptoui float %291 to i32
  %293 = urem i32 %292, %229
  %294 = udiv i32 %292, %230
  %295 = call float @dx.op.unary.f32(i32 22, float %276)  ; Frc(value)
  %296 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %297 = uitofp i32 %293 to float
  %298 = uitofp i32 %294 to float
  %299 = fadd fast float %295, %297
  %300 = fadd fast float %296, %298
  %301 = uitofp i32 %229 to float
  %302 = uitofp i32 %230 to float
  %303 = fdiv fast float %299, %301
  %304 = fdiv fast float %300, %302
  br label %305

; <label>:305                                     ; preds = %281, %210
  %306 = phi float [ %303, %281 ], [ %276, %210 ]
  %307 = phi float [ %304, %281 ], [ %277, %210 ]
  %308 = and i32 %205, 16
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %501, label %310

; <label>:310                                     ; preds = %305
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %312, 0
  %314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %314, %dx.types.Handle %59, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = and i32 %227, 255
  %321 = uitofp i32 %320 to float
  %322 = lshr i32 %227, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %319, %321
  %326 = fadd fast float %325, %324
  %327 = fmul fast float %326, 0x3F70101000000000
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 512
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %339, label %332

; <label>:332                                     ; preds = %310
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = add i32 %334, 0
  %336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %336, %dx.types.Handle %60, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  br label %339

; <label>:339                                     ; preds = %332, %310
  %340 = phi float [ %338, %332 ], [ 1.000000e+00, %310 ]
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 33554432
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %448, label %345

; <label>:345                                     ; preds = %339
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = lshr i32 %357, 24
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = and i32 %357, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %357, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %357, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %388 = bitcast float %316 to i32
  %389 = ashr i32 %388, 1
  %390 = sub nsw i32 1597463174, %389
  %391 = bitcast i32 %390 to float
  %392 = fmul fast float %316, 5.000000e-01
  %393 = fmul fast float %391, %391
  %394 = fmul fast float %393, %392
  %395 = fsub fast float 1.500000e+00, %394
  %396 = fmul fast float %391, %316
  %397 = fmul fast float %396, %395
  %398 = bitcast float %317 to i32
  %399 = ashr i32 %398, 1
  %400 = sub nsw i32 1597463174, %399
  %401 = bitcast i32 %400 to float
  %402 = fmul fast float %317, 5.000000e-01
  %403 = fmul fast float %401, %401
  %404 = fmul fast float %403, %402
  %405 = fsub fast float 1.500000e+00, %404
  %406 = fmul fast float %401, %317
  %407 = fmul fast float %406, %405
  %408 = bitcast float %318 to i32
  %409 = ashr i32 %408, 1
  %410 = sub nsw i32 1597463174, %409
  %411 = bitcast i32 %410 to float
  %412 = fmul fast float %318, 5.000000e-01
  %413 = fmul fast float %411, %411
  %414 = fmul fast float %413, %412
  %415 = fsub fast float 1.500000e+00, %414
  %416 = fmul fast float %411, %318
  %417 = fmul fast float %416, %415
  %418 = fsub fast float %397, %379
  %419 = fsub fast float %407, %383
  %420 = fsub fast float %417, %387
  %421 = fmul fast float %418, %349
  %422 = fmul fast float %419, %351
  %423 = fmul fast float %420, %355
  %424 = fadd fast float %421, %363
  %425 = fadd fast float %422, %367
  %426 = fadd fast float %423, %371
  %427 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %428 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %429 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %430 = fmul fast float %427, %427
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %429, %429
  %433 = fsub fast float %430, %316
  %434 = fsub fast float %431, %317
  %435 = fsub fast float %432, %318
  %436 = fmul fast float %433, %340
  %437 = fmul fast float %434, %340
  %438 = fmul fast float %435, %340
  %439 = fadd fast float %436, %316
  %440 = fadd fast float %437, %317
  %441 = fadd fast float %438, %318
  %442 = fadd fast float %360, %327
  %443 = fsub fast float %442, %376
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fsub fast float %444, %327
  %446 = fmul fast float %445, %340
  %447 = fadd fast float %446, %327
  br label %501

; <label>:448                                     ; preds = %339
  %449 = and i32 %342, 134217728
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %485, label %451

; <label>:451                                     ; preds = %448
  %452 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %453 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %454 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %455 = fadd fast float %452, -5.000000e-01
  %456 = fadd fast float %453, -5.000000e-01
  %457 = fadd fast float %454, -5.000000e-01
  %458 = fmul fast float %455, %340
  %459 = fmul fast float %456, %340
  %460 = fmul fast float %457, %340
  %461 = fadd fast float %458, 5.000000e-01
  %462 = fadd fast float %459, 5.000000e-01
  %463 = fadd fast float %460, 5.000000e-01
  %464 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %465 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %466 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %467 = fmul fast float %461, 2.000000e+00
  %468 = fsub fast float 1.000000e+00, %467
  %469 = fmul fast float %468, %464
  %470 = fadd fast float %469, %467
  %471 = fmul fast float %470, %464
  %472 = fmul fast float %462, 2.000000e+00
  %473 = fsub fast float 1.000000e+00, %472
  %474 = fmul fast float %473, %465
  %475 = fadd fast float %474, %472
  %476 = fmul fast float %475, %465
  %477 = fmul fast float %463, 2.000000e+00
  %478 = fsub fast float 1.000000e+00, %477
  %479 = fmul fast float %478, %466
  %480 = fadd fast float %479, %477
  %481 = fmul fast float %480, %466
  %482 = fmul fast float %471, %471
  %483 = fmul fast float %476, %476
  %484 = fmul fast float %481, %481
  br label %501

; <label>:485                                     ; preds = %448
  %486 = fmul fast float %191, %191
  %487 = fmul fast float %195, %195
  %488 = fmul fast float %199, %199
  %489 = fadd fast float %486, -1.000000e+00
  %490 = fadd fast float %487, -1.000000e+00
  %491 = fadd fast float %488, -1.000000e+00
  %492 = fmul fast float %340, %489
  %493 = fmul fast float %340, %490
  %494 = fmul fast float %340, %491
  %495 = fadd fast float %492, 1.000000e+00
  %496 = fadd fast float %493, 1.000000e+00
  %497 = fadd fast float %494, 1.000000e+00
  %498 = fmul fast float %495, %316
  %499 = fmul fast float %496, %317
  %500 = fmul fast float %497, %318
  br label %501

; <label>:501                                     ; preds = %485, %451, %345, %305
  %502 = phi float [ %447, %345 ], [ %327, %451 ], [ %327, %485 ], [ 0x3FA23C0BE0000000, %305 ]
  %503 = phi float [ %439, %345 ], [ %482, %451 ], [ %498, %485 ], [ 1.000000e+00, %305 ]
  %504 = phi float [ %440, %345 ], [ %483, %451 ], [ %499, %485 ], [ 1.000000e+00, %305 ]
  %505 = phi float [ %441, %345 ], [ %484, %451 ], [ %500, %485 ], [ 1.000000e+00, %305 ]
  %506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.i32 %506, 1
  %508 = and i32 %507, 1
  %509 = icmp ne i32 %508, 0
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 32
  %513 = icmp ne i32 %512, 0
  %514 = and i1 %509, %513
  %515 = select i1 %514, float 1.000000e+00, float %503
  %516 = select i1 %514, float 0x3FD3333340000000, float %504
  %517 = select i1 %514, float 0x3FD3333340000000, float %505
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 32
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %591, label %522

; <label>:522                                     ; preds = %501
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = add i32 %526, 0
  %528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %528, %dx.types.Handle %59, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = extractvalue %dx.types.ResRet.f32 %529, 3
  %534 = and i32 %524, 255
  %535 = uitofp i32 %534 to float
  %536 = lshr i32 %524, 8
  %537 = and i32 %536, 255
  %538 = uitofp i32 %537 to float
  %539 = lshr i32 %524, 16
  %540 = and i32 %539, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101000000000
  %543 = fmul fast float %530, %535
  %544 = fadd fast float %543, %538
  %545 = fmul fast float %544, 0x3F70101000000000
  %546 = fadd fast float %531, -5.000000e-01
  %547 = fadd fast float %533, -5.000000e-01
  %548 = fmul fast float %546, %542
  %549 = fmul fast float %547, %542
  %550 = fadd fast float %548, 5.000000e-01
  %551 = fadd fast float %549, 5.000000e-01
  %552 = fmul fast float %550, 2.000000e+00
  %553 = fadd fast float %552, -1.000000e+00
  %554 = fmul fast float %551, 2.000000e+00
  %555 = fadd fast float %554, -1.000000e+00
  %556 = fadd fast float %553, %555
  %557 = fmul fast float %556, 5.000000e-01
  %558 = fsub fast float %553, %555
  %559 = fmul fast float %558, 5.000000e-01
  %560 = call float @dx.op.unary.f32(i32 6, float %557)  ; FAbs(value)
  %561 = fsub fast float 1.000000e+00, %560
  %562 = call float @dx.op.unary.f32(i32 6, float %559)  ; FAbs(value)
  %563 = fsub fast float %561, %562
  %564 = call float @dx.op.dot3.f32(i32 55, float %557, float %559, float %563, float %557, float %559, float %563)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.unary.f32(i32 25, float %564)  ; Rsqrt(value)
  %566 = fmul fast float %557, %565
  %567 = fmul fast float %559, %565
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 67108864
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %587, label %572

; <label>:572                                     ; preds = %522
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 65535
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %574, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = fsub fast float %545, %582
  %584 = fmul fast float %583, %576
  %585 = fadd fast float %584, %580
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  br label %587

; <label>:587                                     ; preds = %572, %522
  %588 = phi float [ %586, %572 ], [ %545, %522 ]
  %589 = call float @dx.op.dot2.f32(i32 54, float %566, float %567, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %590 = call float @dx.op.dot2.f32(i32 54, float %566, float %567, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %591

; <label>:591                                     ; preds = %587, %501
  %592 = phi float [ %588, %587 ], [ 0x3FD6666660000000, %501 ]
  %593 = phi float [ %589, %587 ], [ 0.000000e+00, %501 ]
  %594 = phi float [ %590, %587 ], [ 0.000000e+00, %501 ]
  %595 = phi float [ %532, %587 ], [ 1.000000e+00, %501 ]
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = lshr i32 %597, 22
  %599 = shl nuw nsw i32 %598, 5
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 64
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %637, label %605

; <label>:605                                     ; preds = %591
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 131072
  %613 = icmp eq i32 %612, 0
  %614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %59, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = fmul fast float %615, %180
  %619 = fmul fast float %616, %183
  %620 = fmul fast float %617, %186
  br i1 %613, label %627, label %621

; <label>:621                                     ; preds = %605
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = fmul fast float %623, %618
  %625 = fmul fast float %623, %619
  %626 = fmul fast float %623, %620
  br label %627

; <label>:627                                     ; preds = %621, %605
  %628 = phi float [ %624, %621 ], [ %618, %605 ]
  %629 = phi float [ %625, %621 ], [ %619, %605 ]
  %630 = phi float [ %626, %621 ], [ %620, %605 ]
  %631 = fmul fast float %628, %600
  %632 = select i1 %161, float %631, float %628
  %633 = call float @dx.op.dot3.f32(i32 55, float %632, float %629, float %630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = select i1 %161, float 0.000000e+00, float %628
  %635 = select i1 %161, float %633, float %629
  %636 = select i1 %161, float 0.000000e+00, float %630
  br label %637

; <label>:637                                     ; preds = %627, %591
  %638 = phi float [ %634, %627 ], [ 0.000000e+00, %591 ]
  %639 = phi float [ %635, %627 ], [ 0.000000e+00, %591 ]
  %640 = phi float [ %636, %627 ], [ 0.000000e+00, %591 ]
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = lshr i32 %642, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = call float @dx.op.dot3.f32(i32 55, float %515, float %516, float %517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %649 = fmul fast float %647, %648
  %650 = fadd fast float %649, %644
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  br label %653

; <label>:653                                     ; preds = %637, %160
  %654 = phi float [ 0.000000e+00, %160 ], [ %593, %637 ]
  %655 = phi float [ 0.000000e+00, %160 ], [ %594, %637 ]
  %656 = phi float [ 0.000000e+00, %160 ], [ %515, %637 ]
  %657 = phi float [ 0.000000e+00, %160 ], [ %516, %637 ]
  %658 = phi float [ 0.000000e+00, %160 ], [ %517, %637 ]
  %659 = phi float [ 0.000000e+00, %160 ], [ %638, %637 ]
  %660 = phi float [ 0.000000e+00, %160 ], [ %639, %637 ]
  %661 = phi float [ 0.000000e+00, %160 ], [ %640, %637 ]
  %662 = phi float [ 0.000000e+00, %160 ], [ %502, %637 ]
  %663 = phi float [ 0.000000e+00, %160 ], [ 1.000000e+00, %637 ]
  %664 = phi float [ 0.000000e+00, %160 ], [ %592, %637 ]
  %665 = phi float [ 0.000000e+00, %160 ], [ %595, %637 ]
  %666 = phi float [ 0.000000e+00, %160 ], [ %652, %637 ]
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = call float @dx.op.dot2.f32(i32 54, float %654, float %655, float %654, float %655)  ; Dot2(ax,ay,bx,by)
  %670 = fmul fast float %669, 0x3FE3333340000000
  %671 = fsub fast float 1.000000e+00, %670
  %672 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %671, float %654, float %655, float %671)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = call float @dx.op.unary.f32(i32 25, float %672)  ; Rsqrt(value)
  %674 = fmul fast float %673, %654
  %675 = fmul fast float %673, %655
  %676 = fmul fast float %671, %673
  %677 = fmul fast float %676, %66
  %678 = fmul fast float %676, %67
  %679 = fmul fast float %676, %68
  %680 = fmul fast float %674, %47
  %681 = fmul fast float %674, %48
  %682 = fmul fast float %674, %49
  %683 = fmul fast float %71, %50
  %684 = fmul fast float %683, %675
  %685 = fmul fast float %74, %50
  %686 = fmul fast float %685, %675
  %687 = fmul fast float %77, %50
  %688 = fmul fast float %687, %675
  %689 = fadd fast float %684, %680
  %690 = fmul fast float %689, %65
  %691 = fadd fast float %690, %677
  %692 = fadd fast float %686, %681
  %693 = fmul fast float %692, %65
  %694 = fadd fast float %693, %678
  %695 = fadd fast float %688, %682
  %696 = fmul fast float %695, %65
  %697 = fadd fast float %696, %679
  %698 = call float @dx.op.dot3.f32(i32 55, float %691, float %694, float %697, float %691, float %694, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = call float @dx.op.unary.f32(i32 25, float %698)  ; Rsqrt(value)
  %700 = fmul fast float %691, %699
  %701 = fmul fast float %694, %699
  %702 = fmul fast float %697, %699
  %703 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %704 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %705 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %706 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %707 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %708 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %709 = fadd fast float %703, %119
  %710 = fadd fast float %704, %120
  %711 = fadd fast float %705, %121
  %712 = fadd fast float %706, %119
  %713 = fadd fast float %707, %120
  %714 = fadd fast float %708, %121
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %718 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 3
  %722 = fmul fast float %716, %63
  %723 = fmul fast float %722, %720
  %724 = fmul fast float %717, %64
  %725 = fmul fast float %724, %721
  %726 = fptoui float %723 to i32
  %727 = fptoui float %725 to i32
  %728 = fadd fast float %716, -1.000000e+00
  %729 = fadd fast float %717, -1.000000e+00
  %730 = fptoui float %728 to i32
  %731 = fptoui float %729 to i32
  %732 = call i32 @dx.op.binary.i32(i32 40, i32 %726, i32 %730)  ; UMin(a,b)
  %733 = call i32 @dx.op.binary.i32(i32 40, i32 %727, i32 %731)  ; UMin(a,b)
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 3
  %737 = fmul fast float %735, %58
  %738 = fsub fast float %737, %736
  %739 = fadd fast float %718, -1.000000e+00
  %740 = call float @dx.op.binary.f32(i32 36, float %738, float %739)  ; FMin(a,b)
  %741 = fptoui float %740 to i32
  %742 = fptoui float %716 to i32
  %743 = fptoui float %717 to i32
  %744 = mul i32 %741, %743
  %745 = add i32 %744, %733
  %746 = mul i32 %745, %742
  %747 = add i32 %746, %732
  %748 = shl i32 %747, 2
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 1023
  %752 = lshr i32 %750, 10
  %753 = icmp eq i32 %751, 0
  br i1 %753, label %1179, label %754

; <label>:754                                     ; preds = %653
  %755 = and i32 %750, 1023
  br label %756

; <label>:756                                     ; preds = %882, %754
  %757 = phi float [ %883, %882 ], [ 0.000000e+00, %754 ]
  %758 = phi float [ %884, %882 ], [ %668, %754 ]
  %759 = phi float [ %885, %882 ], [ %666, %754 ]
  %760 = phi float [ %886, %882 ], [ 0.000000e+00, %754 ]
  %761 = phi float [ %887, %882 ], [ 0.000000e+00, %754 ]
  %762 = phi float [ %888, %882 ], [ %659, %754 ]
  %763 = phi float [ %889, %882 ], [ %660, %754 ]
  %764 = phi float [ %890, %882 ], [ %661, %754 ]
  %765 = phi float [ %891, %882 ], [ %700, %754 ]
  %766 = phi float [ %892, %882 ], [ %701, %754 ]
  %767 = phi float [ %893, %882 ], [ %702, %754 ]
  %768 = phi float [ %894, %882 ], [ %665, %754 ]
  %769 = phi float [ %895, %882 ], [ %664, %754 ]
  %770 = phi float [ %896, %882 ], [ 0.000000e+00, %754 ]
  %771 = phi float [ %897, %882 ], [ %662, %754 ]
  %772 = phi float [ %898, %882 ], [ %656, %754 ]
  %773 = phi float [ %899, %882 ], [ %657, %754 ]
  %774 = phi float [ %900, %882 ], [ %658, %754 ]
  %775 = phi i32 [ %832, %882 ], [ 0, %754 ]
  %776 = add nuw nsw i32 %775, %752
  %777 = shl i32 %776, 2
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = shl i32 %779, 8
  %781 = or i32 %780, 48
  %782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = or i32 %780, 64
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = extractvalue %dx.types.ResRet.i32 %788, 1
  %791 = or i32 %780, 80
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 2
  %794 = extractvalue %dx.types.ResRet.f32 %792, 3
  %795 = or i32 %780, 96
  %796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = extractvalue %dx.types.ResRet.f32 %796, 3
  %801 = or i32 %780, 112
  %802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 2
  %804 = or i32 %780, 128
  %805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = or i32 %780, 144
  %811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = extractvalue %dx.types.ResRet.f32 %811, 3
  %816 = or i32 %780, 160
  %817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = extractvalue %dx.types.ResRet.f32 %817, 3
  %822 = or i32 %780, 192
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = or i32 %780, 208
  %826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = or i32 %780, 248
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = add nuw nsw i32 %775, 1
  %833 = bitcast float %786 to i32
  %834 = and i32 %833, 512
  %835 = icmp eq i32 %834, 0
  %836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  %841 = call float @dx.op.dot4.f32(i32 56, float %837, float %838, float %839, float %840, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %842 = or i32 %780, 16
  %843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = extractvalue %dx.types.ResRet.f32 %843, 3
  %848 = call float @dx.op.dot4.f32(i32 56, float %844, float %845, float %846, float %847, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %849 = or i32 %780, 32
  %850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = extractvalue %dx.types.ResRet.f32 %850, 3
  %855 = call float @dx.op.dot4.f32(i32 56, float %851, float %852, float %853, float %854, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %856 = call float @dx.op.unary.f32(i32 27, float %841)  ; Round_ni(value)
  %857 = call float @dx.op.unary.f32(i32 6, float %856)  ; FAbs(value)
  %858 = call float @dx.op.unary.f32(i32 27, float %848)  ; Round_ni(value)
  %859 = call float @dx.op.unary.f32(i32 6, float %858)  ; FAbs(value)
  %860 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %861 = call float @dx.op.unary.f32(i32 27, float %860)  ; Round_ni(value)
  %862 = fadd fast float %859, %857
  %863 = fadd fast float %862, %861
  %864 = fcmp fast oeq float %863, 0.000000e+00
  %865 = call float @dx.op.dot4.f32(i32 56, float %837, float %838, float %839, float %840, float %709, float %710, float %711, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %866 = call float @dx.op.dot4.f32(i32 56, float %844, float %845, float %846, float %847, float %709, float %710, float %711, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %867 = call float @dx.op.dot4.f32(i32 56, float %837, float %838, float %839, float %840, float %712, float %713, float %714, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %868 = call float @dx.op.dot4.f32(i32 56, float %844, float %845, float %846, float %847, float %712, float %713, float %714, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %869 = fsub fast float %865, %841
  %870 = fsub fast float %867, %841
  %871 = fsub fast float %866, %848
  %872 = fsub fast float %868, %848
  %873 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %876 = fadd fast float %875, %873
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %879 = fcmp fast ogt float %877, %878
  %880 = and i1 %864, %879
  %881 = and i1 %835, %880
  br i1 %881, label %902, label %882

; <label>:882                                     ; preds = %1165, %983, %902, %756
  %883 = phi float [ %757, %902 ], [ %986, %983 ], [ %986, %1165 ], [ %757, %756 ]
  %884 = phi float [ %758, %902 ], [ %758, %983 ], [ %1140, %1165 ], [ %758, %756 ]
  %885 = phi float [ %759, %902 ], [ %759, %983 ], [ %1138, %1165 ], [ %759, %756 ]
  %886 = phi float [ %760, %902 ], [ %760, %983 ], [ %1110, %1165 ], [ %760, %756 ]
  %887 = phi float [ %761, %902 ], [ %761, %983 ], [ %1108, %1165 ], [ %761, %756 ]
  %888 = phi float [ %762, %902 ], [ %762, %983 ], [ %1175, %1165 ], [ %762, %756 ]
  %889 = phi float [ %763, %902 ], [ %763, %983 ], [ %1176, %1165 ], [ %763, %756 ]
  %890 = phi float [ %764, %902 ], [ %764, %983 ], [ %1177, %1165 ], [ %764, %756 ]
  %891 = phi float [ %765, %902 ], [ %765, %983 ], [ %1089, %1165 ], [ %765, %756 ]
  %892 = phi float [ %766, %902 ], [ %766, %983 ], [ %1090, %1165 ], [ %766, %756 ]
  %893 = phi float [ %767, %902 ], [ %767, %983 ], [ %1091, %1165 ], [ %767, %756 ]
  %894 = phi float [ %768, %902 ], [ %768, %983 ], [ %1118, %1165 ], [ %768, %756 ]
  %895 = phi float [ %769, %902 ], [ %769, %983 ], [ %1115, %1165 ], [ %769, %756 ]
  %896 = phi float [ %770, %902 ], [ %770, %983 ], [ %1112, %1165 ], [ %770, %756 ]
  %897 = phi float [ %771, %902 ], [ %771, %983 ], [ %1106, %1165 ], [ %771, %756 ]
  %898 = phi float [ %772, %902 ], [ %772, %983 ], [ %1101, %1165 ], [ %772, %756 ]
  %899 = phi float [ %773, %902 ], [ %773, %983 ], [ %1102, %1165 ], [ %773, %756 ]
  %900 = phi float [ %774, %902 ], [ %774, %983 ], [ %1103, %1165 ], [ %774, %756 ]
  %901 = icmp eq i32 %832, %755
  br i1 %901, label %1178, label %756

; <label>:902                                     ; preds = %756
  %903 = extractvalue %dx.types.ResRet.f32 %802, 3
  %904 = extractvalue %dx.types.ResRet.f32 %802, 1
  %905 = extractvalue %dx.types.ResRet.f32 %802, 0
  %906 = extractvalue %dx.types.ResRet.f32 %792, 1
  %907 = extractvalue %dx.types.ResRet.f32 %792, 0
  %908 = extractvalue %dx.types.ResRet.i32 %788, 3
  %909 = extractvalue %dx.types.ResRet.i32 %788, 2
  %910 = add i32 %908, 0
  %911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %910, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %913 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %911, %dx.types.Handle %912, float %841, float %848, float undef, float undef, i32 0, i32 0, i32 undef, float %869, float %871, float undef, float %870, float %872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = fmul fast float %914, %907
  %916 = fadd fast float %915, %906
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %918 = fmul fast float %841, %797
  %919 = call float @dx.op.tertiary.f32(i32 46, float %798, float %848, float %918)  ; FMad(a,b,c)
  %920 = fadd fast float %919, %905
  %921 = fmul fast float %841, %799
  %922 = call float @dx.op.tertiary.f32(i32 46, float %800, float %848, float %921)  ; FMad(a,b,c)
  %923 = fadd fast float %922, %904
  %924 = fmul fast float %869, %797
  %925 = call float @dx.op.tertiary.f32(i32 46, float %798, float %871, float %924)  ; FMad(a,b,c)
  %926 = fmul fast float %869, %799
  %927 = call float @dx.op.tertiary.f32(i32 46, float %800, float %871, float %926)  ; FMad(a,b,c)
  %928 = fmul fast float %870, %797
  %929 = call float @dx.op.tertiary.f32(i32 46, float %798, float %872, float %928)  ; FMad(a,b,c)
  %930 = fmul fast float %870, %799
  %931 = call float @dx.op.tertiary.f32(i32 46, float %800, float %872, float %930)  ; FMad(a,b,c)
  %932 = add i32 %909, 0
  %933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %933, %dx.types.Handle %912, float %920, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float %925, float %927, float undef, float %929, float %931, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = and i32 %833, 1024
  %937 = icmp ne i32 %936, 0
  %938 = fcmp fast ogt float %935, 0x3FE0101020000000
  %939 = uitofp i1 %938 to float
  %940 = select i1 %937, float %939, float %935
  %941 = and i32 %833, 8192
  %942 = icmp ne i32 %941, 0
  %943 = select i1 %942, float %903, float 1.000000e+00
  %944 = fmul fast float %841, 2.000000e+00
  %945 = fadd fast float %944, -1.000000e+00
  %946 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %947 = fmul fast float %946, %830
  %948 = fsub fast float %947, %830
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fmul fast float %848, 2.000000e+00
  %951 = fadd fast float %950, -1.000000e+00
  %952 = call float @dx.op.unary.f32(i32 6, float %951)  ; FAbs(value)
  %953 = fmul fast float %952, %831
  %954 = fsub fast float %953, %831
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %956 = fmul fast float %860, %793
  %957 = fsub fast float %956, %793
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = fmul fast float %917, %943
  %960 = fmul fast float %959, %914
  %961 = fmul fast float %960, %949
  %962 = fmul fast float %961, %940
  %963 = fmul fast float %962, %955
  %964 = fmul fast float %963, %958
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %968 = fsub fast float %877, %967
  %969 = fmul fast float %968, %966
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %971 = fmul fast float %964, %794
  %972 = fadd fast float %964, %794
  %973 = fmul fast float %972, %803
  %974 = fsub fast float %973, %803
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = and i32 %833, 128
  %977 = icmp ne i32 %976, 0
  %978 = select i1 %977, float %975, float %971
  %979 = fmul fast float %978, %970
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %982 = fcmp fast ugt float %979, %981
  br i1 %982, label %983, label %882

; <label>:983                                     ; preds = %902
  %984 = select i1 %942, float %979, float 0.000000e+00
  %985 = fadd fast float %984, %757
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  br i1 %942, label %882, label %987

; <label>:987                                     ; preds = %983
  %988 = and i32 %833, 4
  %989 = and i32 %833, 8
  %990 = add i32 %789, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %990, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %993 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %991, %dx.types.Handle %992, float %920, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float %925, float %927, float undef, float %929, float %931, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = extractvalue %dx.types.ResRet.f32 %993, 3
  %998 = bitcast float %815 to i32
  %999 = and i32 %998, 255
  %1000 = uitofp i32 %999 to float
  %1001 = lshr i32 %998, 8
  %1002 = and i32 %1001, 255
  %1003 = uitofp i32 %1002 to float
  %1004 = fmul fast float %997, %1000
  %1005 = fadd fast float %1004, %1003
  %1006 = fmul fast float %1005, 0x3F70101000000000
  %1007 = add i32 %790, 0
  %1008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1007, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1009 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1008, %dx.types.Handle %992, float %920, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float %925, float %927, float undef, float %929, float %931, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = extractvalue %dx.types.ResRet.f32 %1009, 3
  %1014 = bitcast float %809 to i32
  %1015 = and i32 %1014, 255
  %1016 = uitofp i32 %1015 to float
  %1017 = lshr i32 %1014, 8
  %1018 = and i32 %1017, 255
  %1019 = uitofp i32 %1018 to float
  %1020 = lshr i32 %1014, 16
  %1021 = and i32 %1020, 255
  %1022 = uitofp i32 %1021 to float
  %1023 = fmul fast float %1022, 0x3F70101000000000
  %1024 = fmul fast float %1010, %1016
  %1025 = fadd fast float %1024, %1019
  %1026 = fmul fast float %1025, 0x3F70101000000000
  %1027 = fadd fast float %1011, -5.000000e-01
  %1028 = fadd fast float %1013, -5.000000e-01
  %1029 = fmul fast float %1027, %1023
  %1030 = fmul fast float %1028, %1023
  %1031 = fadd fast float %1029, 5.000000e-01
  %1032 = fadd fast float %1030, 5.000000e-01
  %1033 = fmul fast float %994, %818
  %1034 = fmul fast float %995, %819
  %1035 = fmul fast float %996, %820
  %1036 = fmul fast float %1031, 2.000000e+00
  %1037 = fadd fast float %1036, -1.000000e+00
  %1038 = fmul fast float %1032, 2.000000e+00
  %1039 = fadd fast float %1038, -1.000000e+00
  %1040 = fadd fast float %1037, %1039
  %1041 = fmul fast float %1040, 5.000000e-01
  %1042 = fsub fast float %1037, %1039
  %1043 = fmul fast float %1042, 5.000000e-01
  %1044 = call float @dx.op.unary.f32(i32 6, float %1041)  ; FAbs(value)
  %1045 = fsub fast float 1.000000e+00, %1044
  %1046 = call float @dx.op.unary.f32(i32 6, float %1043)  ; FAbs(value)
  %1047 = fsub fast float %1045, %1046
  %1048 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1043, float %1047, float %1041, float %1043, float %1047)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = call float @dx.op.unary.f32(i32 25, float %1048)  ; Rsqrt(value)
  %1050 = fmul fast float %1041, %1049
  %1051 = fmul fast float %1043, %1049
  %1052 = fmul fast float %1049, %1047
  %1053 = fmul fast float %1052, %783
  %1054 = fmul fast float %1052, %784
  %1055 = fmul fast float %1052, %785
  %1056 = fmul fast float %1050, %806
  %1057 = fmul fast float %1050, %807
  %1058 = fmul fast float %1050, %808
  %1059 = fadd fast float %1056, %1053
  %1060 = fadd fast float %1057, %1054
  %1061 = fadd fast float %1058, %1055
  %1062 = fmul fast float %1051, %812
  %1063 = fmul fast float %1051, %813
  %1064 = fmul fast float %1051, %814
  %1065 = fadd fast float %1059, %1062
  %1066 = fadd fast float %1060, %1063
  %1067 = fadd fast float %1061, %1064
  %1068 = call float @dx.op.dot3.f32(i32 55, float %1065, float %1066, float %1067, float %1065, float %1066, float %1067)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = call float @dx.op.unary.f32(i32 25, float %1068)  ; Rsqrt(value)
  %1070 = fmul fast float %1065, %1069
  %1071 = fmul fast float %1066, %1069
  %1072 = fmul fast float %1067, %1069
  %1073 = icmp ne i32 %989, 0
  %1074 = select i1 %1073, float 1.000000e+00, float 0.000000e+00
  %1075 = fmul fast float %979, %1074
  %1076 = and i32 %833, 1
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1078, label %1082

; <label>:1078                                    ; preds = %987
  %1079 = fsub fast float %1070, %765
  %1080 = fsub fast float %1071, %766
  %1081 = fsub fast float %1072, %767
  br label %1082

; <label>:1082                                    ; preds = %1078, %987
  %1083 = phi float [ %1079, %1078 ], [ %1070, %987 ]
  %1084 = phi float [ %1080, %1078 ], [ %1071, %987 ]
  %1085 = phi float [ %1081, %1078 ], [ %1072, %987 ]
  %1086 = fmul float %1085, %1075
  %1087 = fmul float %1084, %1075
  %1088 = fmul float %1083, %1075
  %1089 = fadd fast float %1088, %765
  %1090 = fadd fast float %1087, %766
  %1091 = fadd fast float %1086, %767
  %1092 = icmp ne i32 %988, 0
  %1093 = select i1 %1092, float 1.000000e+00, float 0.000000e+00
  %1094 = fmul fast float %979, %1093
  %1095 = fsub fast float %1033, %772
  %1096 = fsub fast float %1034, %773
  %1097 = fsub fast float %1035, %774
  %1098 = fmul fast float %1095, %1094
  %1099 = fmul fast float %1096, %1094
  %1100 = fmul fast float %1097, %1094
  %1101 = fadd fast float %1098, %772
  %1102 = fadd fast float %1099, %773
  %1103 = fadd fast float %1100, %774
  %1104 = fsub fast float %1006, %771
  %1105 = fmul fast float %1104, %1094
  %1106 = fadd fast float %1105, %771
  %1107 = fmul fast float %1094, %761
  %1108 = fsub fast float %761, %1107
  %1109 = fmul fast float %1094, %760
  %1110 = fsub fast float %760, %1109
  %1111 = fadd fast float %979, %770
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = fsub fast float %1026, %769
  %1114 = fmul fast float %1113, %1075
  %1115 = fadd fast float %1114, %769
  %1116 = fsub fast float %1012, %768
  %1117 = fmul fast float %1116, %1075
  %1118 = fadd fast float %1117, %768
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = fmul fast float %1122, %1119
  %1124 = fadd fast float %1123, %1121
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = bitcast float %821 to i32
  %1127 = and i32 %1126, 65535
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = lshr i32 %1126, 16
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = fcmp fast oge float %1128, 0.000000e+00
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = select i1 %1131, float %1128, float %1133
  %1135 = fadd fast float %1134, %1130
  %1136 = fsub fast float %1125, %759
  %1137 = fmul fast float %1136, %979
  %1138 = fadd fast float %1137, %759
  %1139 = fmul fast float %1135, %979
  %1140 = call float @dx.op.binary.f32(i32 35, float %758, float %1139)  ; FMax(a,b)
  %1141 = and i32 %833, 16
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1165, label %1143

; <label>:1143                                    ; preds = %1082
  %1144 = bitcast float %827 to i32
  %1145 = add i32 %824, 0
  %1146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1145, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1147 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1146, %dx.types.Handle %992, float %920, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float %925, float %927, float undef, float %929, float %931, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1147, 2
  %1151 = and i32 %1144, 65535
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fmul fast float %1148, %818
  %1154 = fmul fast float %1149, %819
  %1155 = fmul fast float %1150, %820
  %1156 = and i32 %833, 16384
  %1157 = icmp ne i32 %1156, 0
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = select i1 %1157, float %1159, float 1.000000e+00
  %1161 = fmul fast float %1160, %1152
  %1162 = fmul fast float %1153, %1161
  %1163 = fmul fast float %1154, %1161
  %1164 = fmul fast float %1155, %1161
  br label %1165

; <label>:1165                                    ; preds = %1143, %1082
  %1166 = phi float [ %1162, %1143 ], [ 0.000000e+00, %1082 ]
  %1167 = phi float [ %1163, %1143 ], [ 0.000000e+00, %1082 ]
  %1168 = phi float [ %1164, %1143 ], [ 0.000000e+00, %1082 ]
  %1169 = fsub fast float %1166, %762
  %1170 = fsub fast float %1167, %763
  %1171 = fsub fast float %1168, %764
  %1172 = fmul fast float %1169, %979
  %1173 = fmul fast float %1170, %979
  %1174 = fmul fast float %1171, %979
  %1175 = fadd fast float %1172, %762
  %1176 = fadd fast float %1173, %763
  %1177 = fadd fast float %1174, %764
  br label %882

; <label>:1178                                    ; preds = %882
  br label %1179

; <label>:1179                                    ; preds = %1178, %653
  %1180 = phi float [ 0.000000e+00, %653 ], [ %883, %1178 ]
  %1181 = phi float [ %668, %653 ], [ %884, %1178 ]
  %1182 = phi float [ %666, %653 ], [ %885, %1178 ]
  %1183 = phi float [ 0.000000e+00, %653 ], [ %886, %1178 ]
  %1184 = phi float [ 0.000000e+00, %653 ], [ %887, %1178 ]
  %1185 = phi float [ %659, %653 ], [ %888, %1178 ]
  %1186 = phi float [ %660, %653 ], [ %889, %1178 ]
  %1187 = phi float [ %661, %653 ], [ %890, %1178 ]
  %1188 = phi float [ %700, %653 ], [ %891, %1178 ]
  %1189 = phi float [ %701, %653 ], [ %892, %1178 ]
  %1190 = phi float [ %702, %653 ], [ %893, %1178 ]
  %1191 = phi float [ %665, %653 ], [ %894, %1178 ]
  %1192 = phi float [ %664, %653 ], [ %895, %1178 ]
  %1193 = phi float [ 0.000000e+00, %653 ], [ %896, %1178 ]
  %1194 = phi float [ %662, %653 ], [ %897, %1178 ]
  %1195 = phi float [ %656, %653 ], [ %898, %1178 ]
  %1196 = phi float [ %657, %653 ], [ %899, %1178 ]
  %1197 = phi float [ %658, %653 ], [ %900, %1178 ]
  %1198 = call float @dx.op.dot3.f32(i32 55, float %1188, float %1189, float %1190, float %1188, float %1189, float %1190)  ; Dot3(ax,ay,az,bx,by,bz)
  %1199 = call float @dx.op.unary.f32(i32 25, float %1198)  ; Rsqrt(value)
  %1200 = fmul fast float %1199, %1188
  %1201 = fmul fast float %1199, %1189
  %1202 = fmul fast float %1199, %1190
  %1203 = fadd fast float %1193, %663
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = call float @dx.op.dot3.f32(i32 55, float %1200, float %1201, float %1202, float %1200, float %1201, float %1202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1206 = call float @dx.op.unary.f32(i32 25, float %1205)  ; Rsqrt(value)
  %1207 = fmul fast float %1206, %1200
  %1208 = fmul fast float %1206, %1201
  %1209 = fmul fast float %1206, %1202
  %1210 = fadd fast float %1194, 0xBFB99999A0000000
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = fmul fast float %1211, 0x3FF1C71C80000000
  %1213 = call float @dx.op.binary.f32(i32 36, float %1194, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1214 = fsub fast float 1.000000e+00, %1212
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fmul fast float %1215, %1195
  %1217 = fmul fast float %1215, %1196
  %1218 = fmul fast float %1215, %1197
  %1219 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1220 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1221 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1222 = fmul fast float %1212, %1195
  %1223 = fmul fast float %1212, %1196
  %1224 = fmul fast float %1212, %1197
  %1225 = fadd fast float %1222, %1213
  %1226 = fadd fast float %1223, %1213
  %1227 = fadd fast float %1224, %1213
  %1228 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1229 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1230 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1231 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.i32 %1232, 3
  %1234 = and i32 %1233, 8
  %1235 = icmp ne i32 %1234, 0
  %1236 = call float @dx.op.binary.f32(i32 35, float %1219, float %1195)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 35, float %1220, float %1195)  ; FMax(a,b)
  %1238 = call float @dx.op.binary.f32(i32 35, float %1221, float %1195)  ; FMax(a,b)
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1219, float %1220, float %1221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = select i1 %161, float %1195, float %1219
  %1241 = select i1 %161, float %1239, float %1220
  %1242 = select i1 %161, float 1.000000e+00, float %1221
  %1243 = select i1 %1235, float %1236, float %1240
  %1244 = select i1 %1235, float %1237, float %1241
  %1245 = select i1 %1235, float %1238, float %1242
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.CBufRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1250 = fadd fast float %1247, %119
  %1251 = fadd fast float %1248, %120
  %1252 = fadd fast float %1249, %121
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1256 = fsub fast float %1250, %1254
  %1257 = fsub fast float %1251, %1255
  %1258 = fmul fast float %1256, %1256
  %1259 = fmul fast float %1257, %1257
  %1260 = fadd fast float %1258, %1259
  %1261 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1253, 2
  %1263 = fcmp fast olt float %1261, %1262
  br i1 %1263, label %1264, label %1331

; <label>:1264                                    ; preds = %1179
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1272 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1275 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1276 = extractvalue %dx.types.CBufRet.f32 %1269, 3
  %1277 = fadd fast float %1274, %1250
  %1278 = fadd fast float %1275, %1251
  %1279 = fadd fast float %1276, %1252
  %1280 = fmul fast float %1277, %1266
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1268, float %1280)  ; FMad(a,b,c)
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1270, float %1281)  ; FMad(a,b,c)
  %1283 = fmul fast float %1277, %1271
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1272, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1273, float %1284)  ; FMad(a,b,c)
  %1286 = fsub fast float %1282, %1274
  %1287 = fsub fast float %1285, %1275
  %1288 = fsub fast float %1286, %1254
  %1289 = fadd fast float %1288, %1262
  %1290 = fsub fast float %1287, %1255
  %1291 = fadd fast float %1290, %1262
  %1292 = extractvalue %dx.types.CBufRet.f32 %1253, 3
  %1293 = fmul fast float %1289, %1292
  %1294 = fmul fast float %1291, %1292
  %1295 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1296 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1297 = fsub fast float 1.000000e+00, %1295
  %1298 = fsub fast float 1.000000e+00, %1296
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = fcmp fast ugt float %1300, 0.000000e+00
  br i1 %1301, label %1302, label %1605

; <label>:1302                                    ; preds = %1264
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1305 = fmul fast float %1304, %1300
  %1306 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1307 = fadd fast float %1306, %1305
  %1308 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1309 = fadd fast float %1307, %1276
  %1310 = fmul fast float %1282, %1270
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1273, float %1310)  ; FMad(a,b,c)
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1309, float %1308, float %1311)  ; FMad(a,b,c)
  %1313 = fsub fast float %1312, %1276
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1316 = fsub fast float %1313, %1315
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %34, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.ResRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.ResRet.f32 %1317, 2
  %1321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1321, 2
  %1325 = fadd fast float %1322, %1318
  %1326 = fmul fast float %1325, 0x3F847AE140000000
  %1327 = fadd fast float %1323, %1319
  %1328 = fmul fast float %1327, 0x3F847AE140000000
  %1329 = fadd fast float %1324, %1320
  %1330 = fmul fast float %1329, 0x3F847AE140000000
  br label %1605

; <label>:1331                                    ; preds = %1179
  %1332 = and i32 %137, 1
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1605, label %1334

; <label>:1334                                    ; preds = %1331
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1344 = extractvalue %dx.types.CBufRet.f32 %1335, 3
  %1345 = extractvalue %dx.types.CBufRet.f32 %1337, 3
  %1346 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1347 = fadd fast float %1344, %1250
  %1348 = fadd fast float %1345, %1251
  %1349 = fadd fast float %1346, %1252
  %1350 = fmul fast float %1347, %1336
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1348, float %1338, float %1350)  ; FMad(a,b,c)
  %1352 = call float @dx.op.tertiary.f32(i32 46, float %1349, float %1340, float %1351)  ; FMad(a,b,c)
  %1353 = fmul fast float %1347, %1341
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1348, float %1342, float %1353)  ; FMad(a,b,c)
  %1355 = call float @dx.op.tertiary.f32(i32 46, float %1349, float %1343, float %1354)  ; FMad(a,b,c)
  %1356 = fsub fast float %1352, %1344
  %1357 = fsub fast float %1355, %1345
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.CBufRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.CBufRet.f32 %1358, 2
  %1362 = extractvalue %dx.types.CBufRet.f32 %1358, 3
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.i32 %1365, 0
  %1367 = extractvalue %dx.types.CBufRet.i32 %1365, 1
  %1368 = udiv i32 %1367, %1366
  %1369 = fsub fast float %1356, %1359
  %1370 = fsub fast float %1357, %1360
  %1371 = call float @dx.op.binary.f32(i32 35, float %1369, float 0.000000e+00)  ; FMax(a,b)
  %1372 = call float @dx.op.binary.f32(i32 35, float %1370, float 0.000000e+00)  ; FMax(a,b)
  %1373 = call float @dx.op.binary.f32(i32 36, float %1371, float %1361)  ; FMin(a,b)
  %1374 = call float @dx.op.binary.f32(i32 36, float %1372, float %1362)  ; FMin(a,b)
  %1375 = add i32 %1366, -1
  %1376 = add i32 %1368, -1
  %1377 = fmul fast float %1373, %1364
  %1378 = fmul fast float %1374, %1364
  %1379 = fptoui float %1377 to i32
  %1380 = fptoui float %1378 to i32
  %1381 = call i32 @dx.op.binary.i32(i32 40, i32 %1379, i32 %1375)  ; UMin(a,b)
  %1382 = call i32 @dx.op.binary.i32(i32 40, i32 %1380, i32 %1376)  ; UMin(a,b)
  %1383 = mul i32 %1382, %1366
  %1384 = add i32 %1383, %1381
  %1385 = shl i32 %1384, 2
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = icmp eq i32 %1387, -1
  br i1 %1388, label %1605, label %1389

; <label>:1389                                    ; preds = %1334
  %1390 = mul i32 %1387, 148
  %1391 = add i32 %1390, 4
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = add i32 %1390, 8
  %1395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = add i32 %1390, 36
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = add i32 %1390, 60
  %1401 = add i32 %1390, 92
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1390, 116
  %1405 = fsub fast float %1356, %1393
  %1406 = fsub fast float %1357, %1396
  %1407 = fmul fast float %1364, %1405
  %1408 = fmul fast float %1364, %1406
  %1409 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1411 = fsub fast float 1.000000e+00, %1410
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1414 = call float @dx.op.unary.f32(i32 83, float %1409)  ; DerivCoarseX(value)
  %1415 = call float @dx.op.unary.f32(i32 83, float %1411)  ; DerivCoarseX(value)
  %1416 = call float @dx.op.unary.f32(i32 84, float %1409)  ; DerivCoarseY(value)
  %1417 = call float @dx.op.unary.f32(i32 84, float %1411)  ; DerivCoarseY(value)
  %1418 = fmul fast float %1414, %1413
  %1419 = fmul fast float %1415, %1413
  %1420 = fmul fast float %1416, %1413
  %1421 = fmul fast float %1417, %1413
  %1422 = call float @dx.op.dot2.f32(i32 54, float %1420, float %1421, float %1420, float %1421)  ; Dot2(ax,ay,bx,by)
  %1423 = call float @dx.op.dot2.f32(i32 54, float %1418, float %1419, float %1418, float %1419)  ; Dot2(ax,ay,bx,by)
  %1424 = call float @dx.op.binary.f32(i32 35, float %1423, float %1422)  ; FMax(a,b)
  %1425 = call float @dx.op.unary.f32(i32 23, float %1424)  ; Log(value)
  %1426 = fmul fast float %1425, 5.000000e-01
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1429 = fadd fast float %1428, %1426
  %1430 = call float @dx.op.binary.f32(i32 35, float %1429, float 0.000000e+00)  ; FMax(a,b)
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 3
  %1433 = fadd fast float %1432, %1430
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 3
  %1436 = fadd fast float %1433, %1435
  %1437 = add i32 %1403, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1437, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1438, i32 0)  ; GetDimensions(handle,mipLevel)
  %1440 = extractvalue %dx.types.Dimensions %1439, 0
  %1441 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1440)  ; FirstbitLo(value)
  %1442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.i32 %1442, 1
  %1444 = sub nsw i32 %1443, %1441
  %1445 = sitofp i32 %1444 to float
  %1446 = fsub fast float %1436, %1445
  %1447 = call float @dx.op.binary.f32(i32 35, float %1446, float 0.000000e+00)  ; FMax(a,b)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1438, %dx.types.Handle %33, float %1409, float %1411, float %1399, float undef, i32 0, i32 0, i32 undef, float %1447)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = fcmp ule float %1449, 0x3FE0101020000000
  %1451 = extractvalue %dx.types.CBufRet.i32 %1442, 0
  %1452 = and i32 %1451, 128
  %1453 = icmp ne i32 %1452, 0
  %1454 = and i1 %1450, %1453
  br i1 %1454, label %1605, label %1455

; <label>:1455                                    ; preds = %1389
  %1456 = add i32 %1390, 20
  %1457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = add i32 %1390, 24
  %1460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = add i32 %1390, 40
  %1463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = add i32 %1390, 96
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 2
  %1470 = fmul fast float %1469, %1409
  %1471 = fmul fast float %1469, %1411
  %1472 = extractvalue %dx.types.CBufRet.f32 %1468, 3
  %1473 = fadd fast float %1470, %1472
  %1474 = fadd fast float %1471, %1472
  %1475 = add i32 %1467, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1475, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1476, i32 0)  ; GetDimensions(handle,mipLevel)
  %1478 = extractvalue %dx.types.Dimensions %1477, 0
  %1479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1478)  ; FirstbitLo(value)
  %1480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.i32 %1480, 1
  %1482 = sub nsw i32 %1481, %1479
  %1483 = sitofp i32 %1482 to float
  %1484 = fsub fast float %1433, %1483
  %1485 = call float @dx.op.binary.f32(i32 35, float %1484, float 0.000000e+00)  ; FMax(a,b)
  %1486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1476, %dx.types.Handle %33, float %1473, float %1474, float %1464, float undef, i32 0, i32 0, i32 undef, float %1485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  %1488 = fmul fast float %1487, %1458
  %1489 = fadd fast float %1488, %1461
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1498 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1499 = fadd fast float %1495, %1356
  %1500 = fadd fast float %1497, %1357
  %1501 = fadd fast float %1489, %1498
  %1502 = fmul fast float %1499, %1491
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1492, float %1502)  ; FMad(a,b,c)
  %1504 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1493, float %1503)  ; FMad(a,b,c)
  %1505 = fsub fast float %1504, %1498
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1508 = fsub fast float %1505, %1507
  %1509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.i32 %1509, 0
  %1511 = call i32 @dx.op.binary.i32(i32 40, i32 %1387, i32 %1510)  ; UMin(a,b)
  %1512 = mul i32 %1511, 36
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = add i32 %1512, 4
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = fmul fast float %1517, %1409
  %1519 = fmul fast float %1517, %1411
  %1520 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1521 = fadd fast float %1518, %1520
  %1522 = fadd fast float %1519, %1520
  %1523 = icmp eq i32 %1514, 0
  br i1 %1523, label %1592, label %1524

; <label>:1524                                    ; preds = %1455
  br label %1525

; <label>:1525                                    ; preds = %1582, %1524
  %1526 = phi float [ %1583, %1582 ], [ 0.000000e+00, %1524 ]
  %1527 = phi float [ %1584, %1582 ], [ 0.000000e+00, %1524 ]
  %1528 = phi float [ %1585, %1582 ], [ 0.000000e+00, %1524 ]
  %1529 = phi float [ %1586, %1582 ], [ 0.000000e+00, %1524 ]
  %1530 = phi float [ %1587, %1582 ], [ 0.000000e+00, %1524 ]
  %1531 = phi float [ %1588, %1582 ], [ 0.000000e+00, %1524 ]
  %1532 = phi i32 [ %1589, %1582 ], [ 0, %1524 ]
  %1533 = shl i32 %1532, 2
  %1534 = add i32 %1400, %1533
  %1535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = add i32 %1404, %1533
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = add i32 %1539, 0
  %1541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1542 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1541, i32 0)  ; GetDimensions(handle,mipLevel)
  %1543 = extractvalue %dx.types.Dimensions %1542, 0
  %1544 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1543)  ; FirstbitLo(value)
  %1545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.i32 %1545, 1
  %1547 = sub nsw i32 %1546, %1544
  %1548 = sitofp i32 %1547 to float
  %1549 = fsub fast float %1433, %1548
  %1550 = call float @dx.op.binary.f32(i32 35, float %1549, float 0.000000e+00)  ; FMax(a,b)
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1541, %dx.types.Handle %33, float %1521, float %1522, float %1536, float undef, i32 0, i32 0, i32 undef, float %1550)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = fcmp fast ogt float %1552, 0.000000e+00
  br i1 %1553, label %1554, label %1582

; <label>:1554                                    ; preds = %1525
  %1555 = add i32 %1515, %1533
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 32767
  %1559 = mul nuw nsw i32 %1558, 928
  %1560 = add nuw nsw i32 %1559, 48
  %1561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = add nuw nsw i32 %1559, 60
  %1566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = fmul fast float %1562, %1552
  %1571 = fmul fast float %1563, %1552
  %1572 = fmul fast float %1564, %1552
  %1573 = fadd fast float %1570, %1526
  %1574 = fadd fast float %1571, %1527
  %1575 = fadd fast float %1572, %1528
  %1576 = fmul fast float %1567, %1552
  %1577 = fmul fast float %1568, %1552
  %1578 = fmul fast float %1569, %1552
  %1579 = fadd fast float %1576, %1529
  %1580 = fadd fast float %1577, %1530
  %1581 = fadd fast float %1578, %1531
  br label %1582

; <label>:1582                                    ; preds = %1554, %1525
  %1583 = phi float [ %1573, %1554 ], [ %1526, %1525 ]
  %1584 = phi float [ %1574, %1554 ], [ %1527, %1525 ]
  %1585 = phi float [ %1575, %1554 ], [ %1528, %1525 ]
  %1586 = phi float [ %1579, %1554 ], [ %1529, %1525 ]
  %1587 = phi float [ %1580, %1554 ], [ %1530, %1525 ]
  %1588 = phi float [ %1581, %1554 ], [ %1531, %1525 ]
  %1589 = add nuw i32 %1532, 1
  %1590 = icmp eq i32 %1589, %1514
  br i1 %1590, label %1591, label %1525

; <label>:1591                                    ; preds = %1582
  br label %1592

; <label>:1592                                    ; preds = %1591, %1455
  %1593 = phi float [ 0.000000e+00, %1455 ], [ %1583, %1591 ]
  %1594 = phi float [ 0.000000e+00, %1455 ], [ %1584, %1591 ]
  %1595 = phi float [ 0.000000e+00, %1455 ], [ %1585, %1591 ]
  %1596 = phi float [ 0.000000e+00, %1455 ], [ %1586, %1591 ]
  %1597 = phi float [ 0.000000e+00, %1455 ], [ %1587, %1591 ]
  %1598 = phi float [ 0.000000e+00, %1455 ], [ %1588, %1591 ]
  %1599 = fadd fast float %1596, %1593
  %1600 = fmul fast float %1599, 0x3F847AE140000000
  %1601 = fadd fast float %1597, %1594
  %1602 = fmul fast float %1601, 0x3F847AE140000000
  %1603 = fadd fast float %1598, %1595
  %1604 = fmul fast float %1603, 0x3F847AE140000000
  br label %1605

; <label>:1605                                    ; preds = %1592, %1389, %1334, %1331, %1302, %1264
  %1606 = phi float [ %1316, %1302 ], [ -1.310720e+05, %1264 ], [ %1508, %1592 ], [ -1.310720e+05, %1334 ], [ -1.310720e+05, %1389 ], [ -1.310720e+05, %1331 ]
  %1607 = phi float [ %1326, %1302 ], [ 0.000000e+00, %1264 ], [ %1600, %1592 ], [ 0.000000e+00, %1334 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1331 ]
  %1608 = phi float [ %1328, %1302 ], [ 0.000000e+00, %1264 ], [ %1602, %1592 ], [ 0.000000e+00, %1334 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1331 ]
  %1609 = phi float [ %1330, %1302 ], [ 0.000000e+00, %1264 ], [ %1604, %1592 ], [ 0.000000e+00, %1334 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1331 ]
  %1610 = phi i1 [ true, %1302 ], [ false, %1264 ], [ true, %1592 ], [ false, %1334 ], [ false, %1389 ], [ false, %1331 ]
  %1611 = and i32 %137, 3
  %1612 = icmp eq i32 %1611, 1
  %1613 = select i1 %1612, float 1.000000e+00, float 0.000000e+00
  %1614 = fsub fast float %1606, %121
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = select i1 %1610, float %1615, float 1.000000e+00
  %1617 = fmul fast float %1616, %1613
  %1618 = icmp eq i32 %1611, 3
  %1619 = select i1 %1618, float 1.000000e+00, float %1617
  %1620 = call float @dx.op.binary.f32(i32 35, float %1180, float %1619)  ; FMax(a,b)
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fcmp fast une float %1621, 0.000000e+00
  %1623 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = call float @dx.op.unary.f32(i32 25, float %1623)  ; Rsqrt(value)
  br i1 %1622, label %1632, label %1625

; <label>:1625                                    ; preds = %1605
  %1626 = fmul fast float %1624, %119
  %1627 = fmul fast float %1624, %120
  %1628 = fmul fast float %1624, %121
  %1629 = fsub fast float -0.000000e+00, %1626
  %1630 = fsub fast float -0.000000e+00, %1627
  %1631 = fsub fast float -0.000000e+00, %1628
  br label %1800

; <label>:1632                                    ; preds = %1605
  %1633 = fmul fast float %119, %1624
  %1634 = fsub fast float -0.000000e+00, %1633
  %1635 = fmul fast float %120, %1624
  %1636 = fsub fast float -0.000000e+00, %1635
  %1637 = fmul fast float %121, %1624
  %1638 = fsub fast float -0.000000e+00, %1637
  %1639 = call float @dx.op.dot3.f32(i32 55, float %1634, float %1636, float %1638, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %1640 = fmul fast float %1621, 2.500000e+00
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = fmul fast float %1621, 0x4013FFFFE0000000
  %1643 = fadd fast float %1642, 0xBFFFFFFFE0000000
  %1644 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1645 = fmul fast float %1621, 0x4004000020000000
  %1646 = fadd fast float %1645, 0xBFF8000040000000
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1649 = fmul fast float %1210, 1.000000e+01
  %1650 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1651 = fmul fast float %1650, 2.000000e+00
  %1652 = fsub fast float 3.000000e+00, %1651
  %1653 = fmul fast float %1650, %1650
  %1654 = fmul fast float %1653, %1652
  %1655 = fsub fast float 1.000000e+00, %1654
  %1656 = fsub fast float 0x3FE3333340000000, %1231
  %1657 = fmul fast float %1656, 0x400AAAAAA0000000
  %1658 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1659 = fmul fast float %1655, %1658
  %1660 = fmul fast float %1243, 0x3FEA2B8620000000
  %1661 = fmul fast float %1244, 0x3FEA2B8620000000
  %1662 = fmul fast float %1245, 0x3FEA2B8620000000
  %1663 = fadd fast float %1660, 0x3FC81DFBA0000000
  %1664 = fmul fast float %1663, %1243
  %1665 = fadd fast float %1664, 0x3F910E6020000000
  %1666 = fadd fast float %1661, 0x3FC81DFBA0000000
  %1667 = fmul fast float %1666, %1244
  %1668 = fadd fast float %1667, 0x3F910E6020000000
  %1669 = fadd fast float %1662, 0x3FC81DFBA0000000
  %1670 = fmul fast float %1669, %1245
  %1671 = fadd fast float %1670, 0x3F910E6020000000
  %1672 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1673 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1674 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1675 = fsub fast float %1672, %1243
  %1676 = fsub fast float %1673, %1244
  %1677 = fsub fast float %1674, %1245
  %1678 = fmul fast float %1675, %1648
  %1679 = fmul fast float %1678, %1659
  %1680 = fmul fast float %1676, %1648
  %1681 = fmul fast float %1680, %1659
  %1682 = fmul fast float %1677, %1648
  %1683 = fmul fast float %1682, %1659
  %1684 = fadd fast float %1679, %1243
  %1685 = fadd fast float %1681, %1244
  %1686 = fadd fast float %1683, %1245
  %1687 = fmul fast float %1191, %1191
  %1688 = fmul fast float %1687, %1687
  %1689 = fadd fast float %1644, 1.000000e+00
  %1690 = fsub fast float %1689, %1659
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fsub fast float 1.000000e+00, %1688
  %1695 = call float @dx.op.binary.f32(i32 36, float %1691, float %1694)  ; FMin(a,b)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1697 = call float @dx.op.binary.f32(i32 35, float %1695, float %1696)  ; FMax(a,b)
  %1698 = fadd fast float %1693, 0xBFE4CCCCC0000000
  %1699 = fmul fast float %1698, 0x4006DB6DA0000000
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = fmul fast float %1700, 2.000000e+00
  %1702 = fsub fast float 3.000000e+00, %1701
  %1703 = bitcast float %1228 to i32
  %1704 = ashr i32 %1703, 1
  %1705 = add nsw i32 %1704, 532487669
  %1706 = bitcast i32 %1705 to float
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = bitcast float %1707 to i32
  %1709 = sub nsw i32 2129859010, %1708
  %1710 = bitcast i32 %1709 to float
  %1711 = fmul fast float %1710, 2.000000e+00
  %1712 = bitcast float %1229 to i32
  %1713 = ashr i32 %1712, 1
  %1714 = add nsw i32 %1713, 532487669
  %1715 = bitcast i32 %1714 to float
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = bitcast float %1716 to i32
  %1718 = sub nsw i32 2129859010, %1717
  %1719 = bitcast i32 %1718 to float
  %1720 = fmul fast float %1719, 2.000000e+00
  %1721 = bitcast float %1230 to i32
  %1722 = ashr i32 %1721, 1
  %1723 = add nsw i32 %1722, 532487669
  %1724 = bitcast i32 %1723 to float
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = bitcast float %1725 to i32
  %1727 = sub nsw i32 2129859010, %1726
  %1728 = bitcast i32 %1727 to float
  %1729 = fmul fast float %1728, 2.000000e+00
  %1730 = fsub fast float 0x4002A9FBE0000000, %1711
  %1731 = fadd fast float %1711, 0x3FD54FDF00000000
  %1732 = bitcast float %1731 to i32
  %1733 = sub nsw i32 2129859010, %1732
  %1734 = bitcast i32 %1733 to float
  %1735 = fmul fast float %1734, %1730
  %1736 = fmul fast float %1735, %1735
  %1737 = fsub fast float 0x4002A9FBE0000000, %1720
  %1738 = fadd fast float %1720, 0x3FD54FDF00000000
  %1739 = bitcast float %1738 to i32
  %1740 = sub nsw i32 2129859010, %1739
  %1741 = bitcast i32 %1740 to float
  %1742 = fmul fast float %1741, %1737
  %1743 = fmul fast float %1742, %1742
  %1744 = fsub fast float 0x4002A9FBE0000000, %1729
  %1745 = fadd fast float %1729, 0x3FD54FDF00000000
  %1746 = bitcast float %1745 to i32
  %1747 = sub nsw i32 2129859010, %1746
  %1748 = bitcast i32 %1747 to float
  %1749 = fmul fast float %1748, %1744
  %1750 = fmul fast float %1749, %1749
  %1751 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1736)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1743)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1750)  ; FMax(a,b)
  %1754 = fsub fast float 1.000000e+00, %1639
  %1755 = fadd fast float %1754, %1655
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1757 = fsub fast float 1.000000e+00, %1619
  %1758 = fmul fast float %1697, %1757
  %1759 = fmul fast float %1700, %1700
  %1760 = fmul fast float %1759, %1758
  %1761 = fmul fast float %1760, %1702
  %1762 = fmul fast float %1757, 0xBFE99999A0000000
  %1763 = fmul fast float %1762, %1648
  %1764 = fmul fast float %1763, %1659
  %1765 = fadd fast float %1764, 1.000000e+00
  %1766 = fadd fast float %1231, -1.000000e+00
  %1767 = fmul fast float %1765, %1766
  %1768 = fadd fast float %1767, 1.000000e+00
  %1769 = fsub fast float %1751, %1228
  %1770 = fsub fast float %1752, %1229
  %1771 = fsub fast float %1753, %1230
  %1772 = fmul fast float %1761, %1769
  %1773 = fmul fast float %1761, %1770
  %1774 = fmul fast float %1761, %1771
  %1775 = fadd fast float %1772, %1228
  %1776 = fadd fast float %1773, %1229
  %1777 = fadd fast float %1774, %1230
  %1778 = fsub fast float %66, %1207
  %1779 = fsub fast float %67, %1208
  %1780 = fsub fast float %68, %1209
  %1781 = fmul fast float %1761, %1778
  %1782 = fmul fast float %1761, %1779
  %1783 = fmul fast float %1761, %1780
  %1784 = fadd fast float %1781, %1207
  %1785 = fadd fast float %1782, %1208
  %1786 = fadd fast float %1783, %1209
  %1787 = fmul fast float %1761, %1756
  %1788 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  %1789 = fsub fast float 1.000000e+00, %1788
  %1790 = fmul fast float %1787, %1789
  %1791 = fadd fast float %1790, %1788
  %1792 = fsub fast float 1.000000e+00, %1191
  %1793 = fmul fast float %1761, %1792
  %1794 = fadd fast float %1793, %1191
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1785, float %1786, float %1784, float %1785, float %1786)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.unary.f32(i32 25, float %1795)  ; Rsqrt(value)
  %1797 = fmul fast float %1784, %1796
  %1798 = fmul fast float %1785, %1796
  %1799 = fmul fast float %1786, %1796
  br label %1800

; <label>:1800                                    ; preds = %1632, %1625
  %1801 = phi float [ %1631, %1625 ], [ %1638, %1632 ]
  %1802 = phi float [ %1630, %1625 ], [ %1636, %1632 ]
  %1803 = phi float [ %1629, %1625 ], [ %1634, %1632 ]
  %1804 = phi float [ %1628, %1625 ], [ %1637, %1632 ]
  %1805 = phi float [ %1627, %1625 ], [ %1635, %1632 ]
  %1806 = phi float [ %1626, %1625 ], [ %1633, %1632 ]
  %1807 = phi float [ %1243, %1625 ], [ %1684, %1632 ]
  %1808 = phi float [ %1244, %1625 ], [ %1685, %1632 ]
  %1809 = phi float [ %1245, %1625 ], [ %1686, %1632 ]
  %1810 = phi float [ %1228, %1625 ], [ %1775, %1632 ]
  %1811 = phi float [ %1229, %1625 ], [ %1776, %1632 ]
  %1812 = phi float [ %1230, %1625 ], [ %1777, %1632 ]
  %1813 = phi float [ %1207, %1625 ], [ %1797, %1632 ]
  %1814 = phi float [ %1208, %1625 ], [ %1798, %1632 ]
  %1815 = phi float [ %1209, %1625 ], [ %1799, %1632 ]
  %1816 = phi float [ %1231, %1625 ], [ %1791, %1632 ]
  %1817 = phi float [ %1191, %1625 ], [ %1794, %1632 ]
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1820 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1821 = fmul fast float %1819, %63
  %1822 = fmul fast float %1820, %64
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %34, float %1821, float %1822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = fmul fast float %1827, %1825
  %1829 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1830 = fadd fast float %1829, -1.000000e+00
  %1831 = fmul fast float %1830, %1824
  %1832 = fadd fast float %1831, 1.000000e+00
  %1833 = select i1 %161, float 0.000000e+00, float %1812
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %1803, float %1802, float %1801)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1805, float %1804, float %1813, float %1814, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = fmul fast float %1836, 2.000000e+00
  %1838 = fmul fast float %1837, %1813
  %1839 = fmul fast float %1837, %1814
  %1840 = fmul fast float %1837, %1815
  %1841 = fsub fast float %1806, %1838
  %1842 = fsub fast float %1805, %1839
  %1843 = fsub fast float %1804, %1840
  %1844 = call float @dx.op.binary.f32(i32 36, float %1817, float %1832)  ; FMin(a,b)
  %1845 = fsub fast float 1.000000e+00, %1844
  %1846 = bitcast float %1845 to i32
  %1847 = ashr i32 %1846, 1
  %1848 = add nsw i32 %1847, 532487669
  %1849 = bitcast i32 %1848 to float
  %1850 = fsub fast float 1.000000e+00, %1816
  %1851 = call float @dx.op.binary.f32(i32 35, float %1850, float 0x3F847AE140000000)  ; FMax(a,b)
  %1852 = fmul fast float %1851, %1851
  %1853 = fmul fast float %1852, %1852
  %1854 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %34, float %1849, float %1853, float %1854, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1856 = extractvalue %dx.types.ResRet.f32 %1855, 0
  %1857 = fsub fast float 1.000000e+00, %1817
  %1858 = bitcast float %1857 to i32
  %1859 = sub nsw i32 2129859010, %1858
  %1860 = bitcast i32 %1859 to float
  %1861 = fsub fast float 1.000000e+00, %43
  %1862 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %1863 = call float @dx.op.binary.f32(i32 35, float %1862, float 0x3FA99999A0000000)  ; FMax(a,b)
  %1864 = fdiv fast float %1861, %1863
  %1865 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fmul fast float %1866, 5.000000e-01
  %1868 = fadd fast float %1867, 5.000000e-01
  %1869 = fmul fast float %1868, %43
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = fmul fast float %1871, %1864
  %1873 = fadd fast float %1869, %1872
  %1874 = fsub fast float 5.000000e-01, %1867
  %1875 = fmul fast float %1874, %1807
  %1876 = fmul fast float %1874, %1808
  %1877 = fmul fast float %1874, %1809
  %1878 = fadd fast float %1873, %1875
  %1879 = fadd fast float %1873, %1876
  %1880 = fadd fast float %1873, %1877
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = fmul fast float %1882, 5.000000e-01
  %1884 = fadd fast float %1883, 5.000000e-01
  %1885 = fmul fast float %1884, %43
  %1886 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %1887 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1888 = fmul fast float %1887, %1864
  %1889 = fadd fast float %1885, %1888
  %1890 = fsub fast float 5.000000e-01, %1883
  %1891 = fmul fast float %1890, %1807
  %1892 = fmul fast float %1890, %1808
  %1893 = fmul fast float %1890, %1809
  %1894 = fadd fast float %1889, %1891
  %1895 = fadd fast float %1889, %1892
  %1896 = fadd fast float %1889, %1893
  %1897 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 0
  %1900 = call float @dx.op.binary.f32(i32 36, float %1807, float %1899)  ; FMin(a,b)
  %1901 = fmul fast float %1900, %1845
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = bitcast float %1902 to i32
  %1904 = sub nsw i32 2129859010, %1903
  %1905 = bitcast i32 %1904 to float
  %1906 = call float @dx.op.binary.f32(i32 36, float %1808, float %1899)  ; FMin(a,b)
  %1907 = fmul fast float %1906, %1845
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = bitcast float %1908 to i32
  %1910 = sub nsw i32 2129859010, %1909
  %1911 = bitcast i32 %1910 to float
  %1912 = call float @dx.op.binary.f32(i32 36, float %1809, float %1899)  ; FMin(a,b)
  %1913 = fmul fast float %1912, %1845
  %1914 = fsub fast float 1.000000e+00, %1913
  %1915 = bitcast float %1914 to i32
  %1916 = sub nsw i32 2129859010, %1915
  %1917 = bitcast i32 %1916 to float
  %1918 = fmul fast float %1844, %44
  %1919 = fmul fast float %1918, %1878
  %1920 = fmul fast float %1919, %1905
  %1921 = fmul fast float %1844, %45
  %1922 = fmul fast float %1921, %1879
  %1923 = fmul fast float %1922, %1911
  %1924 = fmul fast float %1844, %46
  %1925 = fmul fast float %1924, %1880
  %1926 = fmul fast float %1925, %1917
  %1927 = call float @dx.op.binary.f32(i32 36, float %1810, float %1899)  ; FMin(a,b)
  %1928 = fmul fast float %1927, %1845
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = bitcast float %1929 to i32
  %1931 = sub nsw i32 2129859010, %1930
  %1932 = bitcast i32 %1931 to float
  %1933 = call float @dx.op.binary.f32(i32 36, float %1811, float %1899)  ; FMin(a,b)
  %1934 = fmul fast float %1933, %1845
  %1935 = fsub fast float 1.000000e+00, %1934
  %1936 = bitcast float %1935 to i32
  %1937 = sub nsw i32 2129859010, %1936
  %1938 = bitcast i32 %1937 to float
  %1939 = call float @dx.op.binary.f32(i32 36, float %1833, float %1899)  ; FMin(a,b)
  %1940 = fmul fast float %1939, %1845
  %1941 = fsub fast float 1.000000e+00, %1940
  %1942 = bitcast float %1941 to i32
  %1943 = sub nsw i32 2129859010, %1942
  %1944 = bitcast i32 %1943 to float
  %1945 = fmul fast float %1918, %1894
  %1946 = fmul fast float %1945, %1932
  %1947 = fmul fast float %1921, %1895
  %1948 = fmul fast float %1947, %1938
  %1949 = fmul fast float %1924, %1896
  %1950 = fmul fast float %1949, %1944
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1920, float %1923, float %1926, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = select i1 %161, float 0.000000e+00, float %1920
  %1953 = select i1 %161, float %1951, float %1923
  %1954 = select i1 %161, float 0.000000e+00, float %1926
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1946, float %1948, float %1950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = select i1 %161, float 0.000000e+00, float %1946
  %1957 = select i1 %161, float %1955, float %1948
  %1958 = select i1 %161, float 0.000000e+00, float %1950
  %1959 = fmul fast float %1835, 9.843750e-01
  %1960 = fmul fast float %1816, 9.843750e-01
  %1961 = fadd fast float %1959, 7.812500e-03
  %1962 = fadd fast float %1960, 7.812500e-03
  %1963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 2
  %1965 = extractvalue %dx.types.ResRet.f32 %1963, 3
  %1966 = fmul fast float %1964, %1810
  %1967 = fmul fast float %1964, %1811
  %1968 = fmul fast float %1964, %1833
  %1969 = fadd fast float %1966, %1965
  %1970 = fadd fast float %1967, %1965
  %1971 = fadd fast float %1968, %1965
  %1972 = fcmp fast ogt float %1184, 0.000000e+00
  br i1 %1972, label %1973, label %1999

; <label>:1973                                    ; preds = %1800
  %1974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1184, float %1835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = extractvalue %dx.types.ResRet.f32 %1974, 1
  %1977 = extractvalue %dx.types.ResRet.f32 %1974, 2
  %1978 = fadd fast float %1975, -5.000000e-01
  %1979 = fadd fast float %1976, -5.000000e-01
  %1980 = fadd fast float %1977, -5.000000e-01
  %1981 = fsub fast float 1.000000e+00, %1810
  %1982 = fsub fast float 1.000000e+00, %1811
  %1983 = fsub fast float 1.000000e+00, %1833
  %1984 = fmul fast float %1810, 4.000000e+00
  %1985 = fmul fast float %1984, %1981
  %1986 = fmul fast float %1985, %1978
  %1987 = fmul fast float %1811, 4.000000e+00
  %1988 = fmul fast float %1987, %1982
  %1989 = fmul fast float %1988, %1979
  %1990 = fmul fast float %1833, 4.000000e+00
  %1991 = fmul fast float %1990, %1983
  %1992 = fmul fast float %1991, %1980
  %1993 = fadd fast float %1986, %1969
  %1994 = fadd fast float %1989, %1970
  %1995 = fadd fast float %1992, %1971
  %1996 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  br label %1999

; <label>:1999                                    ; preds = %1973, %1800
  %2000 = phi float [ %1996, %1973 ], [ %1969, %1800 ]
  %2001 = phi float [ %1997, %1973 ], [ %1970, %1800 ]
  %2002 = phi float [ %1998, %1973 ], [ %1971, %1800 ]
  %2003 = call float @dx.op.binary.f32(i32 35, float %2001, float %2002)  ; FMax(a,b)
  %2004 = call float @dx.op.binary.f32(i32 35, float %2000, float %2003)  ; FMax(a,b)
  %2005 = fsub fast float 1.000000e+00, %2004
  %2006 = fmul fast float %2004, %1816
  %2007 = fadd fast float %2006, %1816
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2011 = extractvalue %dx.types.CBufRet.f32 %2008, 2
  %2012 = extractvalue %dx.types.CBufRet.f32 %2008, 3
  %2013 = fmul fast float %2007, %2009
  %2014 = fadd fast float %2013, %2010
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = fmul fast float %2011, %2007
  %2017 = fadd fast float %2016, %2012
  %2018 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2019 = fsub fast float 1.000000e+00, %1856
  %2020 = fadd fast float %2019, %2018
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2022 = fcmp fast olt float %2021, 1.000000e+00
  br i1 %2022, label %2023, label %2878

; <label>:2023                                    ; preds = %1999
  %2024 = fcmp fast olt float %2015, 1.000000e+00
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2027 = fcmp fast ogt float %2026, 0.000000e+00
  %2028 = or i1 %2024, %2027
  %2029 = or i1 %2024, %2027
  %2030 = xor i1 %2029, true
  %2031 = zext i1 %2030 to i32
  br i1 %2028, label %2032, label %2275

; <label>:2032                                    ; preds = %2023
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.CBufRet.f32 %2033, 2
  %2037 = extractvalue %dx.types.CBufRet.f32 %2033, 3
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.CBufRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.CBufRet.f32 %2038, 2
  %2042 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2046 = extractvalue %dx.types.CBufRet.f32 %2043, 2
  %2047 = extractvalue %dx.types.CBufRet.f32 %2043, 3
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2052 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2057 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.CBufRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.CBufRet.f32 %2058, 2
  %2062 = extractvalue %dx.types.CBufRet.f32 %2058, 3
  %2063 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2064 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2065 = call float @dx.op.unary.f32(i32 6, float %2064)  ; FAbs(value)
  %2066 = fmul fast float %2065, 8.000000e+00
  %2067 = fadd fast float %2066, -6.000000e+00
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fmul fast float %2063, 8.000000e+00
  %2070 = fmul fast float %2069, %2026
  %2071 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2072 = fcmp fast ogt float %2071, 0.000000e+00
  br i1 %2072, label %2073, label %2250, !dx.controlflow.hints !72

; <label>:2073                                    ; preds = %2032
  %2074 = extractvalue %dx.types.CBufRet.f32 %2025, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2076 = fsub fast float %2074, %2075
  %2077 = fmul fast float %2076, %1816
  %2078 = fadd fast float %2077, %2075
  %2079 = fmul fast float %174, 2.000000e+00
  %2080 = fmul fast float %175, 2.000000e+00
  %2081 = fadd fast float %2079, -1.000000e+00
  %2082 = fadd fast float %2080, -1.000000e+00
  %2083 = fmul fast float %2078, %2081
  %2084 = fmul fast float %2078, %2082
  %2085 = fadd fast float %2083, %63
  %2086 = fadd fast float %2084, %64
  %2087 = fmul fast float %2085, %1819
  %2088 = fmul fast float %2086, %1820
  %2089 = fadd fast float %1816, 0xBFE3333340000000
  %2090 = fmul fast float %2089, 0x4004000020000000
  %2091 = fsub fast float 1.000000e+00, %2090
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = fmul fast float %2092, 3.000000e+00
  %2094 = fadd fast float %2093, %174
  %2095 = call float @dx.op.unary.f32(i32 27, float %2094)  ; Round_ni(value)
  %2096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %2087, float %2088, float %2095, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = fcmp fast une float %2097, 0xFFF0000000000000
  %2099 = fcmp fast une float %2097, 0x7FF0000000000000
  %2100 = and i1 %2098, %2099
  %2101 = fcmp fast olt float %2097, 0.000000e+00
  %2102 = call float @dx.op.unary.f32(i32 6, float %2097)  ; FAbs(value)
  %2103 = fsub fast float 1.000000e+00, %2102
  %2104 = select i1 %2100, float 1.000000e+00, float 0.000000e+00
  %2105 = fmul fast float %2104, %2071
  %2106 = fcmp fast ogt float %2105, 0.000000e+00
  br i1 %2106, label %2107, label %2250, !dx.controlflow.hints !73

; <label>:2107                                    ; preds = %2073
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2112 = select i1 %2101, float 0.000000e+00, float %2109
  %2113 = select i1 %2101, float 0.000000e+00, float %2110
  %2114 = select i1 %2101, float 0.000000e+00, float %2111
  %2115 = select i1 %2101, float %2034, float %2049
  %2116 = select i1 %2101, float %2039, float %2054
  %2117 = select i1 %2101, float %2044, float %2059
  %2118 = select i1 %2101, float %2035, float %2050
  %2119 = select i1 %2101, float %2040, float %2055
  %2120 = select i1 %2101, float %2045, float %2060
  %2121 = select i1 %2101, float %2036, float %2051
  %2122 = select i1 %2101, float %2041, float %2056
  %2123 = select i1 %2101, float %2046, float %2061
  %2124 = select i1 %2101, float %2037, float %2052
  %2125 = select i1 %2101, float %2042, float %2057
  %2126 = select i1 %2101, float %2047, float %2062
  %2127 = fadd fast float %2112, %119
  %2128 = fadd fast float %2113, %120
  %2129 = fadd fast float %2114, %121
  %2130 = fmul fast float %2127, %2115
  %2131 = call float @dx.op.tertiary.f32(i32 46, float %2128, float %2118, float %2130)  ; FMad(a,b,c)
  %2132 = call float @dx.op.tertiary.f32(i32 46, float %2129, float %2121, float %2131)  ; FMad(a,b,c)
  %2133 = fadd fast float %2132, %2124
  %2134 = fmul fast float %2127, %2116
  %2135 = call float @dx.op.tertiary.f32(i32 46, float %2128, float %2119, float %2134)  ; FMad(a,b,c)
  %2136 = call float @dx.op.tertiary.f32(i32 46, float %2129, float %2122, float %2135)  ; FMad(a,b,c)
  %2137 = fadd fast float %2136, %2125
  %2138 = fmul fast float %2127, %2117
  %2139 = call float @dx.op.tertiary.f32(i32 46, float %2128, float %2120, float %2138)  ; FMad(a,b,c)
  %2140 = call float @dx.op.tertiary.f32(i32 46, float %2129, float %2123, float %2139)  ; FMad(a,b,c)
  %2141 = fadd fast float %2140, %2126
  %2142 = fdiv fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2133
  %2144 = fmul fast float %2142, %2137
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = fmul fast float %2143, %2146
  %2149 = fmul fast float %2144, %2147
  %2150 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2151 = extractvalue %dx.types.CBufRet.f32 %2145, 3
  %2152 = fadd fast float %2148, %2150
  %2153 = fadd fast float %2149, %2151
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 3
  %2156 = fmul fast float %2155, %1841
  %2157 = fmul fast float %2155, %1842
  %2158 = fmul fast float %2155, %1843
  %2159 = fadd fast float %2156, %2127
  %2160 = fadd fast float %2157, %2128
  %2161 = fadd fast float %2158, %2129
  %2162 = fmul fast float %2159, %2115
  %2163 = call float @dx.op.tertiary.f32(i32 46, float %2160, float %2118, float %2162)  ; FMad(a,b,c)
  %2164 = call float @dx.op.tertiary.f32(i32 46, float %2161, float %2121, float %2163)  ; FMad(a,b,c)
  %2165 = fadd fast float %2164, %2124
  %2166 = fmul fast float %2159, %2116
  %2167 = call float @dx.op.tertiary.f32(i32 46, float %2160, float %2119, float %2166)  ; FMad(a,b,c)
  %2168 = call float @dx.op.tertiary.f32(i32 46, float %2161, float %2122, float %2167)  ; FMad(a,b,c)
  %2169 = fadd fast float %2168, %2125
  %2170 = fmul fast float %2159, %2117
  %2171 = call float @dx.op.tertiary.f32(i32 46, float %2160, float %2120, float %2170)  ; FMad(a,b,c)
  %2172 = call float @dx.op.tertiary.f32(i32 46, float %2161, float %2123, float %2171)  ; FMad(a,b,c)
  %2173 = fadd fast float %2172, %2126
  %2174 = fdiv fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, %2165
  %2176 = fmul fast float %2174, %2169
  %2177 = fmul fast float %2152, 2.000000e+00
  %2178 = fadd fast float %2177, -1.000000e+00
  %2179 = call float @dx.op.unary.f32(i32 6, float %2178)  ; FAbs(value)
  %2180 = fmul fast float %2179, 5.000000e+00
  %2181 = fadd fast float %2180, -4.000000e+00
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fmul fast float %2182, %2068
  %2184 = fsub fast float %2143, %2175
  %2185 = fmul fast float %2146, %2184
  %2186 = fmul fast float %2183, %2185
  %2187 = fsub fast float %2175, %2143
  %2188 = fmul fast float %2146, %2187
  %2189 = fadd fast float %2188, %2186
  %2190 = fsub fast float %2176, %2144
  %2191 = fmul fast float %2147, %2190
  %2192 = fmul fast float %2189, %2103
  %2193 = fmul fast float %2191, %2103
  %2194 = fadd fast float %2192, %2152
  %2195 = fadd fast float %2193, %2153
  %2196 = fsub fast float %2174, %2142
  %2197 = fmul fast float %2196, %2103
  %2198 = fadd fast float %2197, %2142
  %2199 = fdiv fast float 1.000000e+00, %2198
  %2200 = fadd fast float %1816, -1.000000e+00
  %2201 = fsub fast float %2199, %2141
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 2
  %2204 = fmul fast float %2203, %2199
  %2205 = fdiv fast float 1.600000e+02, %2204
  %2206 = fmul fast float %2200, %2200
  %2207 = fmul fast float %2206, 0xBFB5B17960000000
  %2208 = fmul fast float %2207, %2201
  %2209 = fmul fast float %2208, %2205
  %2210 = call float @dx.op.unary.f32(i32 21, float %2209)  ; Exp(value)
  %2211 = fmul fast float %2210, 0x3FF04B2960000000
  %2212 = fsub fast float 0x3FF04B2960000000, %2211
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fmul fast float %2213, 4.000000e+00
  %2215 = fadd fast float %174, -5.000000e-01
  %2216 = fadd fast float %175, -5.000000e-01
  %2217 = fmul fast float %2213, 0x3FBEB851E0000000
  %2218 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2219 = fmul fast float %2218, %2215
  %2220 = fmul fast float %2218, %2216
  %2221 = fadd fast float %2194, %2219
  %2222 = fadd fast float %2195, %2220
  %2223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %33, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float %2214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2224 = extractvalue %dx.types.ResRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.ResRet.f32 %2223, 1
  %2226 = extractvalue %dx.types.ResRet.f32 %2223, 2
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2229 = fmul fast float %2228, %2224
  %2230 = fmul fast float %2228, %2225
  %2231 = fmul fast float %2228, %2226
  %2232 = select i1 %161, float 0.000000e+00, float %2230
  %2233 = select i1 %161, float 0.000000e+00, float %2231
  %2234 = fmul fast float %2221, 2.000000e+00
  %2235 = fmul fast float %2222, 2.000000e+00
  %2236 = fadd fast float %2234, -1.000000e+00
  %2237 = fadd fast float %2235, -1.000000e+00
  %2238 = fmul fast float %2236, %2236
  %2239 = fsub fast float 1.000000e+00, %2238
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = fmul fast float %2241, %2068
  %2243 = fadd fast float %2242, %2240
  %2244 = fmul fast float %2237, %2237
  %2245 = fsub fast float 1.000000e+00, %2244
  %2246 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2247 = fmul fast float %2243, %2246
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2249 = fmul fast float %2248, %2105
  br label %2250

; <label>:2250                                    ; preds = %2107, %2073, %2032
  %2251 = phi float [ %2229, %2107 ], [ 0.000000e+00, %2073 ], [ 0.000000e+00, %2032 ]
  %2252 = phi float [ %2232, %2107 ], [ 0.000000e+00, %2073 ], [ 0.000000e+00, %2032 ]
  %2253 = phi float [ %2233, %2107 ], [ 0.000000e+00, %2073 ], [ 0.000000e+00, %2032 ]
  %2254 = phi float [ %2249, %2107 ], [ 0.000000e+00, %2073 ], [ 0.000000e+00, %2032 ]
  %2255 = fcmp fast olt float %2254, 1.000000e+00
  %2256 = or i1 %2255, %2030
  %2257 = zext i1 %2256 to i32
  %2258 = fmul fast float %2254, %2015
  %2259 = fsub fast float %2254, %2258
  %2260 = fsub fast float 1.000000e+00, %2021
  %2261 = fmul fast float %2259, %2260
  %2262 = fadd fast float %2261, %2021
  %2263 = fsub fast float %2262, %2259
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2265 = fmul fast float %2264, %1956
  %2266 = fmul fast float %2264, %1957
  %2267 = fmul fast float %2264, %1958
  %2268 = fsub fast float -0.000000e+00, %2262
  %2269 = fmul fast float %2259, %2251
  %2270 = fmul fast float %2259, %2252
  %2271 = fmul fast float %2259, %2253
  %2272 = fadd fast float %2269, %2265
  %2273 = fadd fast float %2270, %2266
  %2274 = fadd fast float %2271, %2267
  br label %2275

; <label>:2275                                    ; preds = %2250, %2023
  %2276 = phi float [ %2021, %2023 ], [ %2268, %2250 ]
  %2277 = phi float [ %1956, %2023 ], [ %2272, %2250 ]
  %2278 = phi float [ %1957, %2023 ], [ %2273, %2250 ]
  %2279 = phi float [ %1958, %2023 ], [ %2274, %2250 ]
  %2280 = phi i32 [ %2031, %2023 ], [ %2257, %2250 ]
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2878, label %2282

; <label>:2282                                    ; preds = %2275
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 3
  %2286 = fmul fast float %2284, %63
  %2287 = fmul fast float %2285, %64
  %2288 = fptoui float %2286 to i32
  %2289 = fptoui float %2287 to i32
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.CBufRet.f32 %2290, 2
  %2293 = extractvalue %dx.types.CBufRet.f32 %2290, 3
  %2294 = fadd fast float %58, -4.000000e+00
  %2295 = call float @dx.op.binary.f32(i32 35, float %2294, float 0.000000e+00)  ; FMax(a,b)
  %2296 = fadd fast float %2295, %2291
  %2297 = fmul fast float %2296, %2292
  %2298 = call float @dx.op.unary.f32(i32 23, float %2297)  ; Log(value)
  %2299 = fmul fast float %2298, %2293
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2302 = fmul fast float %2299, %2301
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.i32 %2304, 1
  %2306 = add i32 %2305, -1
  %2307 = uitofp i32 %2305 to float
  %2308 = fmul fast float %2307, %2303
  %2309 = fptoui float %2308 to i32
  %2310 = call i32 @dx.op.binary.i32(i32 40, i32 %2309, i32 %2306)  ; UMin(a,b)
  %2311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.i32 %2311, 2
  %2313 = extractvalue %dx.types.CBufRet.i32 %2311, 3
  %2314 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2289, i32 %2312, i32 %2288)  ; UMad(a,b,c)
  %2315 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2310, i32 %2313, i32 %2314)  ; UMad(a,b,c)
  %2316 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %2317 = fptoui float %2316 to i32
  %2318 = lshr i32 %2317, 5
  %2319 = call i32 @dx.op.binary.i32(i32 40, i32 %2318, i32 8191)  ; UMin(a,b)
  %2320 = fcmp fast ogt float %1615, 0.000000e+00
  %2321 = fcmp fast ogt float %1843, 0.000000e+00
  %2322 = and i1 %2321, %2320
  br i1 %2322, label %2323, label %2352

; <label>:2323                                    ; preds = %2282
  %2324 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %1843, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2325 = call float @dx.op.binary.f32(i32 35, float %2324, float -1.000000e+00)  ; FMax(a,b)
  %2326 = call float @dx.op.binary.f32(i32 36, float %2325, float 1.000000e+00)  ; FMin(a,b)
  %2327 = fmul fast float %2326, %2326
  %2328 = fsub fast float 1.000000e+00, %2327
  %2329 = fmul fast float %2328, 0x3FFC6E2300000000
  %2330 = fsub fast float 1.000000e+00, %2329
  %2331 = fcmp fast ogt float %2330, 0.000000e+00
  %2332 = call float @dx.op.unary.f32(i32 24, float %2330)  ; Sqrt(value)
  %2333 = fsub fast float 1.000000e+00, %2332
  %2334 = call float @dx.op.unary.f32(i32 23, float %2333)  ; Log(value)
  %2335 = fmul fast float %2334, 5.000000e+00
  %2336 = call float @dx.op.unary.f32(i32 21, float %2335)  ; Exp(value)
  %2337 = fmul fast float %2336, 0x3FEF591A60000000
  %2338 = fadd fast float %2337, 0x3F94DCB540000000
  %2339 = select i1 %2331, float %2338, float 1.000000e+00
  %2340 = fcmp fast oge float %2339, 1.000000e+00
  %2341 = fmul fast float %2324, 2.000000e+00
  %2342 = fadd fast float %2341, %1843
  %2343 = select i1 %2340, float %2342, float %1843
  %2344 = fsub fast float %2343, %1843
  %2345 = fmul fast float %2344, %1615
  %2346 = fadd fast float %2345, %1843
  %2347 = call float @dx.op.dot3.f32(i32 55, float %1841, float %1842, float %2346, float %1841, float %1842, float %2346)  ; Dot3(ax,ay,az,bx,by,bz)
  %2348 = call float @dx.op.unary.f32(i32 25, float %2347)  ; Rsqrt(value)
  %2349 = fmul fast float %2348, %1841
  %2350 = fmul fast float %2348, %1842
  %2351 = fmul fast float %2346, %2348
  br label %2352

; <label>:2352                                    ; preds = %2323, %2282
  %2353 = phi float [ %2349, %2323 ], [ %1841, %2282 ]
  %2354 = phi float [ %2350, %2323 ], [ %1842, %2282 ]
  %2355 = phi float [ %2351, %2323 ], [ %1843, %2282 ]
  %2356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.i32 %2356, 2
  %2358 = add nsw i32 %2357, -1
  %2359 = call i32 @dx.op.binary.i32(i32 37, i32 %2358, i32 0)  ; IMax(a,b)
  %2360 = shl i32 %2319, 2
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = lshr i32 %2362, 16
  %2364 = and i32 %2362, 65535
  %2365 = lshr i32 %2362, 21
  %2366 = lshr i32 %2364, 5
  %2367 = call i32 @dx.op.binary.i32(i32 40, i32 %2366, i32 %2359)  ; UMin(a,b)
  %2368 = icmp ugt i32 %2365, %2367
  br i1 %2368, label %2750, label %2369

; <label>:2369                                    ; preds = %2352
  br label %2370

; <label>:2370                                    ; preds = %2739, %2369
  %2371 = phi float [ %2740, %2739 ], [ 0.000000e+00, %2369 ]
  %2372 = phi float [ %2741, %2739 ], [ 0.000000e+00, %2369 ]
  %2373 = phi float [ %2742, %2739 ], [ 0.000000e+00, %2369 ]
  %2374 = phi float [ %2743, %2739 ], [ 1.000000e+00, %2369 ]
  %2375 = phi i32 [ %2747, %2739 ], [ %2365, %2369 ]
  %2376 = phi float [ %2744, %2739 ], [ 0.000000e+00, %2369 ]
  %2377 = phi float [ %2745, %2739 ], [ 0.000000e+00, %2369 ]
  %2378 = phi float [ %2746, %2739 ], [ 0.000000e+00, %2369 ]
  %2379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.i32 %2379, 2
  %2381 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2315, i32 %2380, i32 %2375)  ; UMad(a,b,c)
  %2382 = shl i32 %2381, 2
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = shl i32 %2375, 5
  %2386 = sub nsw i32 %2363, %2385
  %2387 = call i32 @dx.op.binary.i32(i32 37, i32 %2386, i32 0)  ; IMax(a,b)
  %2388 = call i32 @dx.op.binary.i32(i32 38, i32 %2387, i32 31)  ; IMin(a,b)
  %2389 = sub nsw i32 1, %2363
  %2390 = add nsw i32 %2389, %2364
  %2391 = call i32 @dx.op.binary.i32(i32 37, i32 %2390, i32 0)  ; IMax(a,b)
  %2392 = call i32 @dx.op.binary.i32(i32 38, i32 %2391, i32 32)  ; IMin(a,b)
  %2393 = and i32 %2392, 31
  %2394 = shl i32 -1, %2393
  %2395 = xor i32 %2394, -1
  %2396 = and i32 %2388, 31
  %2397 = shl i32 %2395, %2396
  %2398 = icmp eq i32 %2392, 32
  %2399 = select i1 %2398, i32 -1, i32 %2397
  %2400 = and i32 %2399, %2384
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %2739, label %2402

; <label>:2402                                    ; preds = %2370
  br label %2403

; <label>:2403                                    ; preds = %2513, %2402
  %2404 = phi float [ %2514, %2513 ], [ %2371, %2402 ]
  %2405 = phi float [ %2515, %2513 ], [ %2372, %2402 ]
  %2406 = phi float [ %2516, %2513 ], [ %2373, %2402 ]
  %2407 = phi float [ %2517, %2513 ], [ %2374, %2402 ]
  %2408 = phi i32 [ %2416, %2513 ], [ %2400, %2402 ]
  %2409 = phi float [ %2518, %2513 ], [ %2376, %2402 ]
  %2410 = phi float [ %2519, %2513 ], [ %2377, %2402 ]
  %2411 = phi float [ %2520, %2513 ], [ %2378, %2402 ]
  %2412 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2408)  ; FirstbitLo(value)
  %2413 = add i32 %2412, %2385
  %2414 = and i32 %2412, 31
  %2415 = shl i32 1, %2414
  %2416 = xor i32 %2415, %2408
  %2417 = mul i32 %2413, 72
  %2418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.ResRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.ResRet.f32 %2418, 2
  %2422 = add i32 %2417, 12
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = add i32 %2417, 16
  %2426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.ResRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.ResRet.f32 %2426, 2
  %2430 = add i32 %2417, 28
  %2431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  %2433 = add i32 %2417, 32
  %2434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.ResRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.ResRet.f32 %2434, 2
  %2438 = extractvalue %dx.types.ResRet.f32 %2434, 3
  %2439 = add i32 %2417, 48
  %2440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.f32 %2440, 1
  %2443 = add i32 %2417, 56
  %2444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = add i32 %2417, 64
  %2448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.ResRet.f32 %2448, 1
  %2451 = mul i32 %2413, 60
  %2452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.f32 %2452, 0
  %2454 = extractvalue %dx.types.ResRet.f32 %2452, 1
  %2455 = extractvalue %dx.types.ResRet.f32 %2452, 2
  %2456 = add i32 %2451, 12
  %2457 = add i32 %2451, 48
  %2458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2458, 2
  %2462 = and i32 %2424, 32767
  %2463 = bitcast float %2419 to i32
  %2464 = icmp eq i32 %2463, -1
  %2465 = bitcast float %2420 to i32
  %2466 = and i32 %2424, 32768
  %2467 = icmp ne i32 %2466, 0
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 0
  %2470 = extractvalue %dx.types.CBufRet.f32 %2468, 1
  %2471 = extractvalue %dx.types.CBufRet.f32 %2468, 2
  %2472 = fsub fast float %2453, %2469
  %2473 = fsub fast float %2454, %2470
  %2474 = fsub fast float %2455, %2471
  %2475 = fsub fast float %119, %2472
  %2476 = fsub fast float %120, %2473
  %2477 = fsub fast float %121, %2474
  %2478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.ResRet.f32 %2478, 1
  %2481 = extractvalue %dx.types.ResRet.f32 %2478, 2
  %2482 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float %2479, float %2480, float %2481)  ; Dot3(ax,ay,az,bx,by,bz)
  %2483 = add i32 %2451, 24
  %2484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.ResRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.ResRet.f32 %2484, 2
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float %2485, float %2486, float %2487)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = add i32 %2451, 36
  %2490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float %2491, float %2492, float %2493)  ; Dot3(ax,ay,az,bx,by,bz)
  %2495 = call float @dx.op.unary.f32(i32 6, float %2482)  ; FAbs(value)
  %2496 = call float @dx.op.unary.f32(i32 6, float %2488)  ; FAbs(value)
  %2497 = call float @dx.op.unary.f32(i32 6, float %2494)  ; FAbs(value)
  %2498 = fsub fast float %2459, %2495
  %2499 = fsub fast float %2460, %2496
  %2500 = fsub fast float %2461, %2497
  %2501 = fmul fast float %2498, %2427
  %2502 = fmul fast float %2499, %2428
  %2503 = fmul fast float %2500, %2429
  %2504 = call float @dx.op.binary.f32(i32 36, float %2502, float %2503)  ; FMin(a,b)
  %2505 = call float @dx.op.binary.f32(i32 36, float %2501, float %2504)  ; FMin(a,b)
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2507 = call float @dx.op.binary.f32(i32 36, float %2407, float %2506)  ; FMin(a,b)
  %2508 = uitofp i1 %2467 to float
  %2509 = fadd fast float %1615, 1.000000e+00
  %2510 = fsub fast float %2509, %2508
  %2511 = fmul fast float %2507, %2510
  %2512 = fcmp fast ogt float %2511, 0.000000e+00
  br i1 %2512, label %2522, label %2513

; <label>:2513                                    ; preds = %2664, %2403
  %2514 = phi float [ %2728, %2664 ], [ %2404, %2403 ]
  %2515 = phi float [ %2729, %2664 ], [ %2405, %2403 ]
  %2516 = phi float [ %2730, %2664 ], [ %2406, %2403 ]
  %2517 = phi float [ %2737, %2664 ], [ %2407, %2403 ]
  %2518 = phi float [ %2734, %2664 ], [ %2409, %2403 ]
  %2519 = phi float [ %2735, %2664 ], [ %2410, %2403 ]
  %2520 = phi float [ %2736, %2664 ], [ %2411, %2403 ]
  %2521 = icmp eq i32 %2408, %2415
  br i1 %2521, label %2738, label %2403

; <label>:2522                                    ; preds = %2403
  br i1 %2464, label %2580, label %2523

; <label>:2523                                    ; preds = %2522
  %2524 = fsub fast float -0.000000e+00, %2479
  %2525 = fsub fast float -0.000000e+00, %2480
  %2526 = fsub fast float -0.000000e+00, %2481
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2353, float %2354, float %2355, float %2524, float %2525, float %2526)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = fsub fast float -0.000000e+00, %2527
  %2529 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float %2524, float %2525, float %2526)  ; Dot3(ax,ay,az,bx,by,bz)
  %2530 = fadd fast float %2529, %2442
  %2531 = fadd fast float %2441, %2529
  %2532 = fsub fast float -0.000000e+00, %2531
  %2533 = fcmp ogt float %2527, -0.000000e+00
  %2534 = select i1 %2533, float %2532, float %2530
  %2535 = call float @dx.op.unary.f32(i32 6, float %2528)  ; FAbs(value)
  %2536 = fdiv fast float 1.000000e+00, %2535
  %2537 = fmul fast float %2534, %2536
  %2538 = call float @dx.op.binary.f32(i32 35, float %2537, float 0.000000e+00)  ; FMax(a,b)
  %2539 = fsub fast float -0.000000e+00, %2485
  %2540 = fsub fast float -0.000000e+00, %2486
  %2541 = fsub fast float -0.000000e+00, %2487
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2353, float %2354, float %2355, float %2539, float %2540, float %2541)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = fsub fast float -0.000000e+00, %2542
  %2544 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float %2539, float %2540, float %2541)  ; Dot3(ax,ay,az,bx,by,bz)
  %2545 = fadd fast float %2544, %2446
  %2546 = fadd fast float %2445, %2544
  %2547 = fsub fast float -0.000000e+00, %2546
  %2548 = fcmp ogt float %2542, -0.000000e+00
  %2549 = select i1 %2548, float %2547, float %2545
  %2550 = call float @dx.op.unary.f32(i32 6, float %2543)  ; FAbs(value)
  %2551 = fdiv fast float 1.000000e+00, %2550
  %2552 = fmul fast float %2549, %2551
  %2553 = call float @dx.op.binary.f32(i32 35, float %2552, float 0.000000e+00)  ; FMax(a,b)
  %2554 = fsub fast float -0.000000e+00, %2491
  %2555 = fsub fast float -0.000000e+00, %2492
  %2556 = fsub fast float -0.000000e+00, %2493
  %2557 = call float @dx.op.dot3.f32(i32 55, float %2353, float %2354, float %2355, float %2554, float %2555, float %2556)  ; Dot3(ax,ay,az,bx,by,bz)
  %2558 = fsub fast float -0.000000e+00, %2557
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float %2554, float %2555, float %2556)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = fadd fast float %2559, %2450
  %2561 = fadd fast float %2449, %2559
  %2562 = fsub fast float -0.000000e+00, %2561
  %2563 = fcmp ogt float %2557, -0.000000e+00
  %2564 = select i1 %2563, float %2562, float %2560
  %2565 = call float @dx.op.unary.f32(i32 6, float %2558)  ; FAbs(value)
  %2566 = fdiv fast float 1.000000e+00, %2565
  %2567 = fmul fast float %2564, %2566
  %2568 = call float @dx.op.binary.f32(i32 35, float %2567, float 0.000000e+00)  ; FMax(a,b)
  %2569 = call float @dx.op.binary.f32(i32 36, float %2553, float %2568)  ; FMin(a,b)
  %2570 = call float @dx.op.binary.f32(i32 36, float %2538, float %2569)  ; FMin(a,b)
  %2571 = fmul fast float %2570, %2353
  %2572 = fmul fast float %2570, %2354
  %2573 = fmul fast float %2570, %2355
  %2574 = fadd fast float %2571, %119
  %2575 = fadd fast float %2572, %120
  %2576 = fadd fast float %2573, %121
  %2577 = fsub fast float %2574, %2419
  %2578 = fsub fast float %2575, %2420
  %2579 = fsub fast float %2576, %2421
  br label %2587

; <label>:2580                                    ; preds = %2522
  %2581 = fmul fast float %2353, 8.096000e+03
  %2582 = fmul fast float %2354, 8.096000e+03
  %2583 = fmul fast float %2355, 8.096000e+03
  %2584 = fadd fast float %2581, %119
  %2585 = fadd fast float %2582, %120
  %2586 = fadd fast float %2583, %121
  br label %2587

; <label>:2587                                    ; preds = %2580, %2523
  %2588 = phi float [ %2353, %2580 ], [ %2577, %2523 ]
  %2589 = phi float [ %2354, %2580 ], [ %2578, %2523 ]
  %2590 = phi float [ %2355, %2580 ], [ %2579, %2523 ]
  %2591 = phi float [ %2584, %2580 ], [ %2574, %2523 ]
  %2592 = phi float [ %2585, %2580 ], [ %2575, %2523 ]
  %2593 = phi float [ %2586, %2580 ], [ %2576, %2523 ]
  %2594 = fcmp fast olt float %2438, 1.000000e+00
  br i1 %2594, label %2595, label %2626, !dx.controlflow.hints !74

; <label>:2595                                    ; preds = %2587
  %2596 = fmul fast float %2590, %2436
  %2597 = fmul fast float %2589, %2437
  %2598 = fsub fast float %2596, %2597
  %2599 = fmul fast float %2588, %2437
  %2600 = fmul fast float %2590, %2435
  %2601 = fsub fast float %2599, %2600
  %2602 = fmul fast float %2589, %2435
  %2603 = fmul fast float %2588, %2436
  %2604 = fsub fast float %2602, %2603
  %2605 = fmul fast float %2598, 2.000000e+00
  %2606 = fmul fast float %2601, 2.000000e+00
  %2607 = fmul fast float %2604, 2.000000e+00
  %2608 = fmul fast float %2605, %2438
  %2609 = fmul fast float %2606, %2438
  %2610 = fmul fast float %2607, %2438
  %2611 = fmul fast float %2607, %2436
  %2612 = fmul fast float %2606, %2437
  %2613 = fmul fast float %2605, %2437
  %2614 = fmul fast float %2607, %2435
  %2615 = fmul fast float %2606, %2435
  %2616 = fmul fast float %2605, %2436
  %2617 = fadd fast float %2611, %2588
  %2618 = fadd fast float %2617, %2608
  %2619 = fsub fast float %2618, %2612
  %2620 = fsub fast float %2589, %2614
  %2621 = fadd fast float %2620, %2609
  %2622 = fadd fast float %2621, %2613
  %2623 = fadd fast float %2610, %2590
  %2624 = fsub fast float %2623, %2616
  %2625 = fadd fast float %2624, %2615
  br label %2626

; <label>:2626                                    ; preds = %2595, %2587
  %2627 = phi float [ %2619, %2595 ], [ %2588, %2587 ]
  %2628 = phi float [ %2622, %2595 ], [ %2589, %2587 ]
  %2629 = phi float [ %2625, %2595 ], [ %2590, %2587 ]
  br i1 %2464, label %2661, label %2630

; <label>:2630                                    ; preds = %2626
  %2631 = fmul fast float %1816, 0x400187C840000000
  %2632 = fadd fast float %2631, 0xC00EFC2120000000
  %2633 = fmul fast float %2632, %1816
  %2634 = fadd fast float %2633, 0x3FE5D16340000000
  %2635 = fmul fast float %2634, %1816
  %2636 = fadd fast float %2635, 1.000000e+00
  %2637 = call float @dx.op.unary.f32(i32 7, float %2636)  ; Saturate(value)
  %2638 = fsub fast float %2591, %119
  %2639 = fsub fast float %2592, %120
  %2640 = fsub fast float %2593, %121
  %2641 = fsub fast float %2591, %2419
  %2642 = fsub fast float %2592, %2420
  %2643 = fsub fast float %2593, %2421
  %2644 = call float @dx.op.dot3.f32(i32 55, float %2638, float %2639, float %2640, float %2638, float %2639, float %2640)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = call float @dx.op.dot3.f32(i32 55, float %2641, float %2642, float %2643, float %2641, float %2642, float %2643)  ; Dot3(ax,ay,az,bx,by,bz)
  %2646 = fadd fast float %2645, 0x3EE4F8B580000000
  %2647 = fdiv fast float %2644, %2646
  %2648 = bitcast float %2647 to i32
  %2649 = ashr i32 %2648, 1
  %2650 = add nsw i32 %2649, 532487669
  %2651 = bitcast i32 %2650 to float
  %2652 = fmul fast float %2651, %2637
  %2653 = call float @dx.op.unary.f32(i32 7, float %2652)  ; Saturate(value)
  %2654 = fmul fast float %2653, 0x4009981AE0000000
  %2655 = fsub fast float 0x40111BBD80000000, %2654
  %2656 = fmul fast float %2655, %2653
  %2657 = fadd fast float %2656, 0xC0009F6020000000
  %2658 = fmul fast float %2657, %2653
  %2659 = fadd fast float %2658, 1.000000e+00
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  br label %2664

; <label>:2661                                    ; preds = %2626
  %2662 = icmp ne i32 %2465, -1
  %2663 = zext i1 %2662 to i32
  br label %2664

; <label>:2664                                    ; preds = %2661, %2630
  %2665 = phi float [ %1816, %2661 ], [ %2660, %2630 ]
  %2666 = phi i32 [ %2663, %2661 ], [ 0, %2630 ]
  %2667 = fmul float %2665, 5.000000e+00
  %2668 = fsub float 5.000000e+00, %2667
  %2669 = icmp ne i32 %2666, 0
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 3
  %2672 = fadd fast float %2671, %2668
  %2673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2672)  ; FMax(a,b)
  %2674 = call float @dx.op.unary.f32(i32 6, float %2627)  ; FAbs(value)
  %2675 = call float @dx.op.unary.f32(i32 6, float %2628)  ; FAbs(value)
  %2676 = fadd fast float %2675, %2674
  %2677 = call float @dx.op.unary.f32(i32 6, float %2629)  ; FAbs(value)
  %2678 = fadd fast float %2676, %2677
  %2679 = fcmp fast oeq float %2678, 0.000000e+00
  %2680 = fdiv fast float 1.000000e+00, %2678
  %2681 = select i1 %2679, float 1.000000e+00, float %2680
  %2682 = fmul fast float %2681, %2627
  %2683 = fmul fast float %2681, %2628
  %2684 = call float @dx.op.unary.f32(i32 6, float %2683)  ; FAbs(value)
  %2685 = call float @dx.op.unary.f32(i32 6, float %2682)  ; FAbs(value)
  %2686 = fsub fast float 1.000000e+00, %2684
  %2687 = fsub fast float 1.000000e+00, %2685
  %2688 = fcmp fast oge float %2682, 0.000000e+00
  %2689 = fcmp fast oge float %2683, 0.000000e+00
  %2690 = select i1 %2688, float 1.000000e+00, float -1.000000e+00
  %2691 = select i1 %2689, float 1.000000e+00, float -1.000000e+00
  %2692 = fcmp fast ole float %2629, 0.000000e+00
  %2693 = fmul fast float %2690, %2686
  %2694 = fmul fast float %2691, %2687
  %2695 = select i1 %2692, float %2693, float %2682
  %2696 = select i1 %2692, float %2694, float %2683
  %2697 = fmul fast float %2695, 5.000000e-01
  %2698 = fmul fast float %2696, 5.000000e-01
  %2699 = fadd fast float %2697, 5.000000e-01
  %2700 = fadd fast float %2698, 5.000000e-01
  %2701 = uitofp i32 %2462 to float
  %2702 = call float @dx.op.binary.f32(i32 36, float %2673, float 3.000000e+00)  ; FMin(a,b)
  %2703 = fadd fast float %2702, 2.000000e+00
  %2704 = call float @dx.op.unary.f32(i32 21, float %2703)  ; Exp(value)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2670, 1
  %2706 = fmul fast float %2705, %2704
  %2707 = fmul fast float %2706, 2.000000e+00
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul fast float %2699, %2708
  %2710 = fmul fast float %2700, %2708
  %2711 = fadd fast float %2709, %2706
  %2712 = fadd fast float %2710, %2706
  %2713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %33, float %2711, float %2712, float %2701, float undef, i32 0, i32 0, i32 undef, float %2673)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.ResRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.ResRet.f32 %2713, 2
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 3
  %2719 = fmul fast float %2718, %2432
  %2720 = call float @dx.op.binary.f32(i32 36, float %1897, float %2719)  ; FMin(a,b)
  %2721 = select i1 %2669, float %2720, float %2719
  %2722 = fmul fast float %2714, %2511
  %2723 = fmul fast float %2722, %2721
  %2724 = fmul fast float %2715, %2511
  %2725 = fmul fast float %2724, %2721
  %2726 = fmul fast float %2716, %2511
  %2727 = fmul fast float %2726, %2721
  %2728 = fadd fast float %2723, %2404
  %2729 = fadd fast float %2725, %2405
  %2730 = fadd fast float %2727, %2406
  %2731 = fmul fast float %2591, %2511
  %2732 = fmul fast float %2592, %2511
  %2733 = fmul fast float %2593, %2511
  %2734 = fadd fast float %2731, %2409
  %2735 = fadd fast float %2732, %2410
  %2736 = fadd fast float %2733, %2411
  %2737 = fsub fast float %2407, %2511
  br label %2513

; <label>:2738                                    ; preds = %2513
  br label %2739

; <label>:2739                                    ; preds = %2738, %2370
  %2740 = phi float [ %2371, %2370 ], [ %2514, %2738 ]
  %2741 = phi float [ %2372, %2370 ], [ %2515, %2738 ]
  %2742 = phi float [ %2373, %2370 ], [ %2516, %2738 ]
  %2743 = phi float [ %2374, %2370 ], [ %2517, %2738 ]
  %2744 = phi float [ %2376, %2370 ], [ %2518, %2738 ]
  %2745 = phi float [ %2377, %2370 ], [ %2519, %2738 ]
  %2746 = phi float [ %2378, %2370 ], [ %2520, %2738 ]
  %2747 = add i32 %2375, 1
  %2748 = icmp ugt i32 %2747, %2367
  br i1 %2748, label %2749, label %2370, !llvm.loop !75

; <label>:2749                                    ; preds = %2739
  br label %2750

; <label>:2750                                    ; preds = %2749, %2352
  %2751 = phi float [ 0.000000e+00, %2352 ], [ %2740, %2749 ]
  %2752 = phi float [ 0.000000e+00, %2352 ], [ %2741, %2749 ]
  %2753 = phi float [ 0.000000e+00, %2352 ], [ %2742, %2749 ]
  %2754 = phi float [ 0.000000e+00, %2352 ], [ %2744, %2749 ]
  %2755 = phi float [ 0.000000e+00, %2352 ], [ %2745, %2749 ]
  %2756 = phi float [ 0.000000e+00, %2352 ], [ %2746, %2749 ]
  %2757 = call float @dx.op.dot3.f32(i32 55, float %2751, float %2752, float %2753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2758 = select i1 %161, float 0.000000e+00, float %2751
  %2759 = select i1 %161, float %2757, float %2752
  %2760 = select i1 %161, float 0.000000e+00, float %2753
  %2761 = fcmp fast olt float %2276, 0.000000e+00
  %2762 = call float @dx.op.unary.f32(i32 6, float %2276)  ; FAbs(value)
  %2763 = fmul fast float %2762, %2277
  %2764 = fmul fast float %2762, %2278
  %2765 = fmul fast float %2762, %2279
  %2766 = select i1 %2761, float %2277, float %2763
  %2767 = select i1 %2761, float %2278, float %2764
  %2768 = select i1 %2761, float %2279, float %2765
  %2769 = fsub fast float 1.000000e+00, %2762
  %2770 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  %2771 = fmul fast float %2770, %2758
  %2772 = fmul fast float %2770, %2759
  %2773 = fmul fast float %2770, %2760
  %2774 = fadd fast float %2766, %2771
  %2775 = fadd fast float %2767, %2772
  %2776 = fadd fast float %2768, %2773
  %2777 = fcmp fast une float %2026, 0.000000e+00
  br i1 %2777, label %2878, label %2778

; <label>:2778                                    ; preds = %2750
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2783 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.CBufRet.f32 %2784, 2
  %2788 = extractvalue %dx.types.CBufRet.f32 %2784, 3
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2793 = extractvalue %dx.types.CBufRet.f32 %2789, 3
  %2794 = call float @dx.op.dot3.f32(i32 55, float %2790, float %2791, float %2792, float %1841, float %1842, float %1843)  ; Dot3(ax,ay,az,bx,by,bz)
  %2795 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %2790, float %2791, float %2792)  ; Dot3(ax,ay,az,bx,by,bz)
  %2796 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %2790, float %2791, float %2792)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = fadd fast float %1816, -1.000000e+00
  %2798 = fsub fast float %2795, %2796
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2801 = fmul fast float %2800, %2795
  %2802 = fdiv fast float 1.600000e+02, %2801
  %2803 = fmul fast float %2797, %2797
  %2804 = fmul fast float %2803, 0xBFB5B17960000000
  %2805 = fmul fast float %2804, %2798
  %2806 = fmul fast float %2805, %2802
  %2807 = call float @dx.op.unary.f32(i32 21, float %2806)  ; Exp(value)
  %2808 = fmul fast float %2807, 0x3FF04B2960000000
  %2809 = fsub fast float 0x3FF04B2960000000, %2808
  %2810 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2811 = fmul fast float %2810, 4.000000e+00
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 0
  %2814 = extractvalue %dx.types.CBufRet.f32 %2812, 1
  %2815 = extractvalue %dx.types.CBufRet.f32 %2812, 2
  %2816 = fadd fast float %2813, %2754
  %2817 = fadd fast float %2814, %2755
  %2818 = fadd fast float %2815, %2756
  %2819 = fmul fast float %2816, %2780
  %2820 = call float @dx.op.tertiary.f32(i32 46, float %2817, float %2781, float %2819)  ; FMad(a,b,c)
  %2821 = call float @dx.op.tertiary.f32(i32 46, float %2818, float %2782, float %2820)  ; FMad(a,b,c)
  %2822 = fadd fast float %2821, %2783
  %2823 = fmul fast float %2816, %2785
  %2824 = call float @dx.op.tertiary.f32(i32 46, float %2817, float %2786, float %2823)  ; FMad(a,b,c)
  %2825 = call float @dx.op.tertiary.f32(i32 46, float %2818, float %2787, float %2824)  ; FMad(a,b,c)
  %2826 = fadd fast float %2825, %2788
  %2827 = fmul fast float %2816, %2790
  %2828 = call float @dx.op.tertiary.f32(i32 46, float %2817, float %2791, float %2827)  ; FMad(a,b,c)
  %2829 = call float @dx.op.tertiary.f32(i32 46, float %2818, float %2792, float %2828)  ; FMad(a,b,c)
  %2830 = fadd fast float %2829, %2793
  %2831 = fdiv fast float %2822, %2830
  %2832 = fdiv fast float %2826, %2830
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.CBufRet.f32 %2833, 1
  %2836 = fmul fast float %2834, %2831
  %2837 = fmul fast float %2835, %2832
  %2838 = extractvalue %dx.types.CBufRet.f32 %2833, 2
  %2839 = extractvalue %dx.types.CBufRet.f32 %2833, 3
  %2840 = fadd fast float %2836, %2838
  %2841 = fadd fast float %2837, %2839
  %2842 = fmul fast float %2794, 8.000000e+00
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = fmul fast float %2840, 2.000000e+00
  %2845 = fmul fast float %2841, 2.000000e+00
  %2846 = fadd fast float %2844, -1.000000e+00
  %2847 = fadd fast float %2845, -1.000000e+00
  %2848 = fmul fast float %2846, %2846
  %2849 = fsub fast float 1.000000e+00, %2848
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = fmul fast float %2847, %2847
  %2852 = fsub fast float 1.000000e+00, %2851
  %2853 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2854 = fmul fast float %2026, %2850
  %2855 = fmul fast float %2854, %2853
  %2856 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2857 = fmul fast float %2856, %2843
  %2858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %33, float %2840, float %2841, float undef, float undef, i32 0, i32 0, i32 undef, float %2811)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2859 = extractvalue %dx.types.ResRet.f32 %2858, 0
  %2860 = extractvalue %dx.types.ResRet.f32 %2858, 1
  %2861 = extractvalue %dx.types.ResRet.f32 %2858, 2
  %2862 = select i1 %161, float 0.000000e+00, float %2860
  %2863 = select i1 %161, float 0.000000e+00, float %2861
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2866 = fmul fast float %2865, %2859
  %2867 = fmul fast float %2862, %2865
  %2868 = fmul fast float %2863, %2865
  %2869 = fsub fast float %2866, %2758
  %2870 = fsub fast float %2867, %2759
  %2871 = fsub fast float %2868, %2760
  %2872 = fmul fast float %2869, %2857
  %2873 = fmul fast float %2870, %2857
  %2874 = fmul fast float %2871, %2857
  %2875 = fadd fast float %2872, %2758
  %2876 = fadd fast float %2873, %2759
  %2877 = fadd fast float %2874, %2760
  br label %2878

; <label>:2878                                    ; preds = %2778, %2750, %2275, %1999
  %2879 = phi float [ %2277, %2275 ], [ %2774, %2750 ], [ %1956, %1999 ], [ %2875, %2778 ]
  %2880 = phi float [ %2278, %2275 ], [ %2775, %2750 ], [ %1957, %1999 ], [ %2876, %2778 ]
  %2881 = phi float [ %2279, %2275 ], [ %2776, %2750 ], [ %1958, %1999 ], [ %2877, %2778 ]
  %2882 = fmul fast float %2005, %1952
  %2883 = fmul fast float %2005, %1953
  %2884 = fmul fast float %2005, %1954
  %2885 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2886 = fcmp fast ogt float %2885, 0x3E7FF19E20000000
  %2887 = fdiv fast float 1.000000e+00, %2885
  %2888 = select i1 %2886, float %2887, float 0.000000e+00
  %2889 = fmul fast float %2888, %1807
  %2890 = fmul fast float %2888, %1808
  %2891 = fmul fast float %2888, %1809
  %2892 = fadd fast float %2889, -1.000000e+00
  %2893 = fadd fast float %2890, -1.000000e+00
  %2894 = fadd fast float %2891, -1.000000e+00
  %2895 = fmul fast float %2892, 5.000000e-01
  %2896 = fmul fast float %2893, 5.000000e-01
  %2897 = fmul fast float %2894, 5.000000e-01
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fadd fast float %2896, 1.000000e+00
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fmul fast float %2879, %2000
  %2902 = fmul fast float %2880, %2001
  %2903 = fmul fast float %2881, %2002
  %2904 = fsub fast float 1.000000e+00, %1835
  %2905 = bitcast float %2904 to i32
  %2906 = sitofp i32 %2905 to float
  %2907 = fmul fast float %2906, 5.000000e+00
  %2908 = fadd fast float %2907, 0xC1EFBF8940000000
  %2909 = fptosi float %2908 to i32
  %2910 = bitcast i32 %2909 to float
  %2911 = fmul fast float %2910, %1183
  %2912 = fmul fast float %1952, %2911
  %2913 = fmul fast float %2912, %2005
  %2914 = fmul fast float %2913, %2898
  %2915 = fmul fast float %1953, %2911
  %2916 = fmul fast float %2915, %2005
  %2917 = fmul fast float %2916, %2899
  %2918 = fmul fast float %1954, %2911
  %2919 = fmul fast float %2918, %2005
  %2920 = fmul fast float %2919, %2900
  %2921 = fmul fast float %2882, %1204
  %2922 = fmul fast float %2883, %1204
  %2923 = fmul fast float %2884, %1204
  %2924 = fadd fast float %2901, %1185
  %2925 = fadd fast float %2924, %2914
  %2926 = fmul fast float %2925, %1204
  %2927 = fadd fast float %2902, %1186
  %2928 = fadd fast float %2927, %2917
  %2929 = fmul fast float %2928, %1204
  %2930 = fadd fast float %2903, %1187
  %2931 = fadd fast float %2930, %2920
  %2932 = fmul fast float %2931, %1204
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 3
  %2935 = fcmp fast oeq float %2934, 0.000000e+00
  br i1 %2935, label %3154, label %2936

; <label>:2936                                    ; preds = %2878
  %2937 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2938 = extractvalue %dx.types.CBufRet.f32 %2933, 1
  %2939 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.CBufRet.f32 %2944, 1
  %2947 = call float @dx.op.dot3.f32(i32 55, float %2941, float %2942, float %2943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2948 = select i1 %161, float %2945, float %2941
  %2949 = select i1 %161, float %2947, float %2942
  %2950 = select i1 %161, float %2946, float %2943
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 1
  %2953 = fcmp fast une float %2952, 0.000000e+00
  br i1 %2953, label %2954, label %2971

; <label>:2954                                    ; preds = %2936
  %2955 = fptoui float %63 to i32
  %2956 = fptoui float %64 to i32
  %2957 = lshr i32 %2955, 4
  %2958 = lshr i32 %2956, 4
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = fptoui float %2960 to i32
  %2962 = add i32 %2961, 15
  %2963 = lshr i32 %2962, 4
  %2964 = mul i32 %2963, %2958
  %2965 = add i32 %2964, %2957
  %2966 = shl i32 %2965, 3
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, -268435456
  %2970 = icmp eq i32 %2969, -1342177280
  br i1 %2970, label %2976, label %2971

; <label>:2971                                    ; preds = %2954, %2936
  %2972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %1821, float %1822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  br label %2976

; <label>:2976                                    ; preds = %2971, %2954
  %2977 = phi float [ %2973, %2971 ], [ 0.000000e+00, %2954 ]
  %2978 = phi float [ %2974, %2971 ], [ 0.000000e+00, %2954 ]
  %2979 = phi float [ %2975, %2971 ], [ 0.000000e+00, %2954 ]
  %2980 = call float @dx.op.binary.f32(i32 36, float %2978, float %2979)  ; FMin(a,b)
  %2981 = call float @dx.op.binary.f32(i32 36, float %2977, float %2980)  ; FMin(a,b)
  %2982 = fcmp fast ogt float %2981, 0.000000e+00
  br i1 %2982, label %2983, label %3154, !dx.controlflow.hints !77

; <label>:2983                                    ; preds = %2976
  %2984 = fmul fast float %2977, %2948
  %2985 = fmul fast float %2978, %2949
  %2986 = fmul fast float %2979, %2950
  %2987 = fsub fast float %2937, %1806
  %2988 = fsub fast float %2938, %1805
  %2989 = fsub fast float %2939, %1804
  %2990 = call float @dx.op.dot3.f32(i32 55, float %2987, float %2988, float %2989, float %2987, float %2988, float %2989)  ; Dot3(ax,ay,az,bx,by,bz)
  %2991 = call float @dx.op.unary.f32(i32 25, float %2990)  ; Rsqrt(value)
  %2992 = fmul fast float %2991, %2987
  %2993 = fmul fast float %2991, %2988
  %2994 = fmul fast float %2991, %2989
  %2995 = call float @dx.op.dot3.f32(i32 55, float %2937, float %2938, float %2939, float %1813, float %1814, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %2996 = call float @dx.op.dot3.f32(i32 55, float %1803, float %1802, float %1801, float %2992, float %2993, float %2994)  ; Dot3(ax,ay,az,bx,by,bz)
  %2997 = call float @dx.op.unary.f32(i32 7, float %2995)  ; Saturate(value)
  %2998 = fmul fast float %2997, %2997
  %2999 = fmul fast float %2998, %1860
  %3000 = call float @dx.op.unary.f32(i32 7, float %2999)  ; Saturate(value)
  %3001 = fmul fast float %3000, %2997
  %3002 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %2992, float %2993, float %2994)  ; Dot3(ax,ay,az,bx,by,bz)
  %3003 = fmul fast float %3002, %3002
  %3004 = call float @dx.op.unary.f32(i32 6, float %2995)  ; FAbs(value)
  %3005 = fsub fast float 1.000000e+00, %1853
  %3006 = fmul fast float %1835, %1835
  %3007 = fmul fast float %3006, %3005
  %3008 = fadd fast float %3007, %1853
  %3009 = bitcast float %3008 to i32
  %3010 = ashr i32 %3009, 1
  %3011 = add nsw i32 %3010, 532487669
  %3012 = bitcast i32 %3011 to float
  %3013 = fadd fast float %3012, %1835
  %3014 = fmul fast float %1853, %3003
  %3015 = fsub fast float 1.000000e+00, %3003
  %3016 = fadd fast float %3015, %3014
  %3017 = fmul fast float %3004, %3004
  %3018 = fmul fast float %3017, %3005
  %3019 = fadd fast float %3018, %1853
  %3020 = bitcast float %3019 to i32
  %3021 = ashr i32 %3020, 1
  %3022 = add nsw i32 %3021, 532487669
  %3023 = bitcast i32 %3022 to float
  %3024 = fadd fast float %3023, %3004
  %3025 = fmul fast float %3016, %3016
  %3026 = fmul fast float %3025, %3013
  %3027 = fmul fast float %3026, %3024
  %3028 = fdiv fast float 0x3FF0A00000000000, %3027
  %3029 = fmul fast float %3028, %1853
  %3030 = call float @dx.op.unary.f32(i32 6, float %2996)  ; FAbs(value)
  %3031 = fsub fast float 1.000000e+00, %3030
  %3032 = bitcast float %3031 to i32
  %3033 = sitofp i32 %3032 to float
  %3034 = fmul fast float %3033, 5.000000e+00
  %3035 = fadd fast float %3034, 0xC1EFBF8940000000
  %3036 = fptosi float %3035 to i32
  %3037 = bitcast i32 %3036 to float
  %3038 = fsub fast float 1.000000e+00, %1810
  %3039 = fsub fast float 1.000000e+00, %1811
  %3040 = fsub fast float 1.000000e+00, %1833
  %3041 = fmul fast float %3037, %3038
  %3042 = fmul fast float %3037, %3039
  %3043 = fmul fast float %3037, %3040
  %3044 = fadd fast float %3041, %1810
  %3045 = fadd fast float %3042, %1811
  %3046 = fadd fast float %3043, %1833
  br i1 %1972, label %3047, label %3070

; <label>:3047                                    ; preds = %2983
  %3048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1184, float %3030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = fadd fast float %3049, -5.000000e-01
  %3053 = fadd fast float %3050, -5.000000e-01
  %3054 = fadd fast float %3051, -5.000000e-01
  %3055 = fmul fast float %1810, 4.000000e+00
  %3056 = fmul fast float %3055, %3038
  %3057 = fmul fast float %3056, %3052
  %3058 = fmul fast float %1811, 4.000000e+00
  %3059 = fmul fast float %3058, %3039
  %3060 = fmul fast float %3059, %3053
  %3061 = fmul fast float %1833, 4.000000e+00
  %3062 = fmul fast float %3061, %3040
  %3063 = fmul fast float %3062, %3054
  %3064 = fadd fast float %3057, %3044
  %3065 = fadd fast float %3060, %3045
  %3066 = fadd fast float %3063, %3046
  %3067 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3068 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3069 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  br label %3070

; <label>:3070                                    ; preds = %3047, %2983
  %3071 = phi float [ %3067, %3047 ], [ %3044, %2983 ]
  %3072 = phi float [ %3068, %3047 ], [ %3045, %2983 ]
  %3073 = phi float [ %3069, %3047 ], [ %3046, %2983 ]
  %3074 = fmul fast float %2995, 9.843750e-01
  %3075 = fadd fast float %3074, 7.812500e-03
  %3076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3075, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 2
  %3078 = extractvalue %dx.types.ResRet.f32 %3076, 3
  %3079 = fmul fast float %3077, %1810
  %3080 = fmul fast float %3077, %1811
  %3081 = fmul fast float %3077, %1833
  %3082 = fadd fast float %3079, %3078
  %3083 = fadd fast float %3080, %3078
  %3084 = fadd fast float %3081, %3078
  br i1 %1972, label %3085, label %3108

; <label>:3085                                    ; preds = %3070
  %3086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1184, float %2995, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3087 = extractvalue %dx.types.ResRet.f32 %3086, 0
  %3088 = extractvalue %dx.types.ResRet.f32 %3086, 1
  %3089 = extractvalue %dx.types.ResRet.f32 %3086, 2
  %3090 = fadd fast float %3087, -5.000000e-01
  %3091 = fadd fast float %3088, -5.000000e-01
  %3092 = fadd fast float %3089, -5.000000e-01
  %3093 = fmul fast float %1810, 4.000000e+00
  %3094 = fmul fast float %3093, %3038
  %3095 = fmul fast float %3094, %3090
  %3096 = fmul fast float %1811, 4.000000e+00
  %3097 = fmul fast float %3096, %3039
  %3098 = fmul fast float %3097, %3091
  %3099 = fmul fast float %1833, 4.000000e+00
  %3100 = fmul fast float %3099, %3040
  %3101 = fmul fast float %3100, %3092
  %3102 = fadd fast float %3095, %3082
  %3103 = fadd fast float %3098, %3083
  %3104 = fadd fast float %3101, %3084
  %3105 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3106 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3107 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  br label %3108

; <label>:3108                                    ; preds = %3085, %3070
  %3109 = phi float [ %3105, %3085 ], [ %3082, %3070 ]
  %3110 = phi float [ %3106, %3085 ], [ %3083, %3070 ]
  %3111 = phi float [ %3107, %3085 ], [ %3084, %3070 ]
  %3112 = call float @dx.op.binary.f32(i32 35, float %3110, float %3111)  ; FMax(a,b)
  %3113 = call float @dx.op.binary.f32(i32 35, float %3109, float %3112)  ; FMax(a,b)
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = fmul fast float %3071, %3029
  %3116 = fmul fast float %3072, %3029
  %3117 = fmul fast float %3073, %3029
  %3118 = fsub fast float 1.000000e+00, %2996
  %3119 = bitcast float %3118 to i32
  %3120 = sitofp i32 %3119 to float
  %3121 = fmul fast float %3120, 5.000000e+00
  %3122 = fadd fast float %3121, 0xC1EFBF8940000000
  %3123 = fptosi float %3122 to i32
  %3124 = bitcast i32 %3123 to float
  %3125 = fmul fast float %3124, %1183
  %3126 = fmul fast float %3114, %3125
  %3127 = fmul fast float %3126, %2898
  %3128 = fmul fast float %3126, %2899
  %3129 = fmul fast float %3126, %2900
  %3130 = fadd fast float %3127, %3115
  %3131 = fadd fast float %3128, %3116
  %3132 = fadd fast float %3129, %3117
  %3133 = fmul fast float %3001, %2984
  %3134 = fmul fast float %3133, %3114
  %3135 = fmul fast float %3001, %2985
  %3136 = fmul fast float %3135, %3114
  %3137 = fmul fast float %3001, %2986
  %3138 = fmul fast float %3137, %3114
  %3139 = fmul fast float %3133, %3130
  %3140 = fmul fast float %3135, %3131
  %3141 = fmul fast float %3137, %3132
  %3142 = fadd fast float %3134, %2882
  %3143 = fmul fast float %3142, %1204
  %3144 = fadd fast float %3136, %2883
  %3145 = fmul fast float %3144, %1204
  %3146 = fadd fast float %3138, %2884
  %3147 = fmul fast float %3146, %1204
  %3148 = fadd fast float %3139, %2925
  %3149 = fmul fast float %3148, %1204
  %3150 = fadd fast float %3140, %2928
  %3151 = fmul fast float %3150, %1204
  %3152 = fadd fast float %3141, %2931
  %3153 = fmul fast float %3152, %1204
  br label %3154

; <label>:3154                                    ; preds = %3108, %2976, %2878
  %3155 = phi float [ %2926, %2878 ], [ %2926, %2976 ], [ %3149, %3108 ]
  %3156 = phi float [ %2929, %2878 ], [ %2929, %2976 ], [ %3151, %3108 ]
  %3157 = phi float [ %2932, %2878 ], [ %2932, %2976 ], [ %3153, %3108 ]
  %3158 = phi float [ %2921, %2878 ], [ %2921, %2976 ], [ %3143, %3108 ]
  %3159 = phi float [ %2922, %2878 ], [ %2922, %2976 ], [ %3145, %3108 ]
  %3160 = phi float [ %2923, %2878 ], [ %2923, %2976 ], [ %3147, %3108 ]
  %3161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.i32 %3161, 0
  %3163 = icmp eq i32 %3162, 0
  br i1 %3163, label %3594, label %3164

; <label>:3164                                    ; preds = %3154
  %3165 = fptoui float %63 to i32
  %3166 = fptoui float %64 to i32
  %3167 = lshr i32 %3165, 4
  %3168 = lshr i32 %3166, 4
  %3169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.i32 %3169, 0
  %3171 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3168, i32 %3170, i32 %3167)  ; UMad(a,b,c)
  %3172 = add nsw i32 %3162, -1
  %3173 = call i32 @dx.op.binary.i32(i32 37, i32 %3172, i32 0)  ; IMax(a,b)
  %3174 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %3175 = fptoui float %3174 to i32
  %3176 = lshr i32 %3175, 5
  %3177 = call i32 @dx.op.binary.i32(i32 40, i32 %3176, i32 8191)  ; UMin(a,b)
  %3178 = shl i32 %3177, 2
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = lshr i32 %3180, 16
  %3182 = and i32 %3180, 65535
  %3183 = lshr i32 %3180, 21
  %3184 = lshr i32 %3182, 5
  %3185 = call i32 @dx.op.binary.i32(i32 40, i32 %3184, i32 %3173)  ; UMin(a,b)
  %3186 = icmp ugt i32 %3183, %3185
  br i1 %3186, label %3594, label %3187

; <label>:3187                                    ; preds = %3164
  br label %3188

; <label>:3188                                    ; preds = %3584, %3187
  %3189 = phi i32 [ %3591, %3584 ], [ %3183, %3187 ]
  %3190 = phi float [ %3585, %3584 ], [ %3155, %3187 ]
  %3191 = phi float [ %3586, %3584 ], [ %3156, %3187 ]
  %3192 = phi float [ %3587, %3584 ], [ %3157, %3187 ]
  %3193 = phi float [ %3588, %3584 ], [ %3158, %3187 ]
  %3194 = phi float [ %3589, %3584 ], [ %3159, %3187 ]
  %3195 = phi float [ %3590, %3584 ], [ %3160, %3187 ]
  %3196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.i32 %3196, 0
  %3198 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3171, i32 %3197, i32 %3189)  ; UMad(a,b,c)
  %3199 = shl i32 %3198, 2
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = shl i32 %3189, 5
  %3203 = sub nsw i32 %3181, %3202
  %3204 = call i32 @dx.op.binary.i32(i32 37, i32 %3203, i32 0)  ; IMax(a,b)
  %3205 = call i32 @dx.op.binary.i32(i32 38, i32 %3204, i32 31)  ; IMin(a,b)
  %3206 = sub nsw i32 1, %3181
  %3207 = add nsw i32 %3206, %3182
  %3208 = call i32 @dx.op.binary.i32(i32 37, i32 %3207, i32 0)  ; IMax(a,b)
  %3209 = call i32 @dx.op.binary.i32(i32 38, i32 %3208, i32 32)  ; IMin(a,b)
  %3210 = and i32 %3209, 31
  %3211 = shl i32 -1, %3210
  %3212 = xor i32 %3211, -1
  %3213 = and i32 %3205, 31
  %3214 = shl i32 %3212, %3213
  %3215 = icmp eq i32 %3209, 32
  %3216 = select i1 %3215, i32 -1, i32 %3214
  %3217 = and i32 %3216, %3201
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3584, label %3219

; <label>:3219                                    ; preds = %3188
  br label %3220

; <label>:3220                                    ; preds = %3300, %3219
  %3221 = phi i32 [ %3232, %3300 ], [ %3217, %3219 ]
  %3222 = phi float [ %3301, %3300 ], [ %3190, %3219 ]
  %3223 = phi float [ %3302, %3300 ], [ %3191, %3219 ]
  %3224 = phi float [ %3303, %3300 ], [ %3192, %3219 ]
  %3225 = phi float [ %3304, %3300 ], [ %3193, %3219 ]
  %3226 = phi float [ %3305, %3300 ], [ %3194, %3219 ]
  %3227 = phi float [ %3306, %3300 ], [ %3195, %3219 ]
  %3228 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3221)  ; FirstbitLo(value)
  %3229 = add i32 %3228, %3202
  %3230 = and i32 %3228, 31
  %3231 = shl i32 1, %3230
  %3232 = xor i32 %3231, %3221
  %3233 = mul i32 %3229, 112
  %3234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.ResRet.f32 %3234, 1
  %3237 = extractvalue %dx.types.ResRet.f32 %3234, 2
  %3238 = or i32 %3233, 12
  %3239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = add i32 %3233, 44
  %3242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.f32 %3242, 0
  %3244 = add i32 %3233, 48
  %3245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.ResRet.f32 %3245, 1
  %3248 = extractvalue %dx.types.ResRet.f32 %3245, 2
  %3249 = add i32 %3233, 80
  %3250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 1
  %3252 = extractvalue %dx.types.ResRet.f32 %3250, 2
  %3253 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3236, float %3237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3254 = select i1 %161, float %3251, float %3235
  %3255 = select i1 %161, float %3253, float %3236
  %3256 = select i1 %161, float %3252, float %3237
  %3257 = fsub fast float %3246, %119
  %3258 = fsub fast float %3247, %120
  %3259 = fsub fast float %3248, %121
  %3260 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3258, float %3259, float %3257, float %3258, float %3259)  ; Dot3(ax,ay,az,bx,by,bz)
  %3261 = call float @dx.op.unary.f32(i32 24, float %3260)  ; Sqrt(value)
  %3262 = fdiv fast float 1.000000e+00, %3261
  %3263 = fmul fast float %3262, %3257
  %3264 = fmul fast float %3262, %3258
  %3265 = fmul fast float %3262, %3259
  %3266 = fadd fast float %3261, %3240
  %3267 = fdiv fast float 1.000000e+00, %3266
  %3268 = fmul float %3243, %3267
  %3269 = fmul float %3268, %3268
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3271 = and i32 %3231, %3217
  %3272 = icmp eq i32 %3271, 0
  br i1 %3272, label %3295, label %3273, !dx.controlflow.hints !78

; <label>:3273                                    ; preds = %3220
  %3274 = lshr i32 %3165, 5
  %3275 = lshr i32 %3166, 5
  %3276 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3274, i32 %3275, i32 %3229, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = and i32 %3277, 3
  %3279 = icmp eq i32 %3278, 0
  %3280 = select i1 %3279, float 1.000000e+00, float 0.000000e+00
  %3281 = icmp eq i32 %3278, 3
  br i1 %3281, label %3282, label %3295

; <label>:3282                                    ; preds = %3273
  %3283 = lshr i32 %3277, 10
  %3284 = and i32 %3283, 8160
  %3285 = and i32 %3166, 31
  %3286 = or i32 %3284, %3285
  %3287 = lshr i32 %3277, 1
  %3288 = and i32 %3287, 16352
  %3289 = and i32 %3165, 31
  %3290 = or i32 %3288, %3289
  %3291 = lshr i32 %3277, 23
  %3292 = and i32 %3291, 255
  %3293 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %3290, i32 %3286, i32 %3292, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3294 = extractvalue %dx.types.ResRet.f32 %3293, 0
  br label %3295

; <label>:3295                                    ; preds = %3282, %3273, %3220
  %3296 = phi float [ %3294, %3282 ], [ %3280, %3273 ], [ 0.000000e+00, %3220 ]
  %3297 = call float @dx.op.binary.f32(i32 36, float %3296, float %3296)  ; FMin(a,b)
  %3298 = call float @dx.op.binary.f32(i32 36, float %3296, float %3297)  ; FMin(a,b)
  %3299 = fcmp fast ogt float %3298, 0.000000e+00
  br i1 %3299, label %3308, label %3300, !dx.controlflow.hints !79

; <label>:3300                                    ; preds = %3540, %3295
  %3301 = phi float [ %3222, %3295 ], [ %3580, %3540 ]
  %3302 = phi float [ %3223, %3295 ], [ %3581, %3540 ]
  %3303 = phi float [ %3224, %3295 ], [ %3582, %3540 ]
  %3304 = phi float [ %3225, %3295 ], [ %3574, %3540 ]
  %3305 = phi float [ %3226, %3295 ], [ %3575, %3540 ]
  %3306 = phi float [ %3227, %3295 ], [ %3576, %3540 ]
  %3307 = icmp eq i32 %3221, %3231
  br i1 %3307, label %3583, label %3220

; <label>:3308                                    ; preds = %3295
  %3309 = fmul fast float %3296, %3254
  %3310 = fmul fast float %3296, %3255
  %3311 = fmul fast float %3296, %3256
  %3312 = fsub fast float %3248, %1606
  %3313 = fcmp fast ogt float %3312, 0.000000e+00
  %3314 = fsub fast float %121, %1606
  %3315 = fcmp fast ogt float %3314, 0.000000e+00
  %3316 = xor i1 %3315, %3313
  %3317 = fsub fast float %1606, %3248
  %3318 = fmul fast float %3317, 2.000000e+00
  %3319 = fadd fast float %3318, %3248
  %3320 = select i1 %3316, float %3248, float %3319
  %3321 = fsub fast float %3320, %121
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3258, float %3321, float %3257, float %3258, float %3321)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = call float @dx.op.unary.f32(i32 25, float %3322)  ; Rsqrt(value)
  %3324 = fmul fast float %3323, %3257
  %3325 = fmul fast float %3323, %3258
  %3326 = fmul fast float %3323, %3321
  %3327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1614)  ; Dot3(ax,ay,az,bx,by,bz)
  %3328 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3324, float %3325, float %3326)  ; Dot3(ax,ay,az,bx,by,bz)
  %3329 = fdiv fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3327
  %3331 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3314, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3332 = fcmp fast ogt float %3331, 0.000000e+00
  %3333 = fcmp fast olt float %3331, 0.000000e+00
  %3334 = zext i1 %3332 to i32
  %3335 = zext i1 %3333 to i32
  %3336 = sub nsw i32 %3334, %3335
  %3337 = sitofp i32 %3336 to float
  %3338 = fsub fast float %3320, %1606
  %3339 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3258, float %3338, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3340 = fcmp fast ogt float %3339, 0.000000e+00
  %3341 = fcmp fast olt float %3339, 0.000000e+00
  %3342 = zext i1 %3340 to i32
  %3343 = zext i1 %3341 to i32
  %3344 = sub nsw i32 %3342, %3343
  %3345 = sitofp i32 %3344 to float
  %3346 = fcmp fast une float %3337, %3345
  br i1 %3346, label %3347, label %3357

; <label>:3347                                    ; preds = %3308
  %3348 = fmul fast float %3330, %3326
  %3349 = fmul fast float %3330, %3325
  %3350 = fmul fast float %3330, %3324
  %3351 = fmul fast float %3350, %3350
  %3352 = fmul fast float %3349, %3349
  %3353 = fadd fast float %3351, %3352
  %3354 = fmul fast float %3348, %3348
  %3355 = fadd fast float %3353, %3354
  %3356 = call float @dx.op.unary.f32(i32 24, float %3355)  ; Sqrt(value)
  br label %3369

; <label>:3357                                    ; preds = %3308
  %3358 = icmp slt i32 %3336, 0
  br i1 %3358, label %3359, label %3369

; <label>:3359                                    ; preds = %3357
  %3360 = fsub fast float %119, %3246
  %3361 = fsub fast float %120, %3247
  %3362 = fsub fast float %121, %3320
  %3363 = fmul fast float %3360, %3360
  %3364 = fmul fast float %3361, %3361
  %3365 = fadd fast float %3363, %3364
  %3366 = fmul fast float %3362, %3362
  %3367 = fadd fast float %3365, %3366
  %3368 = call float @dx.op.unary.f32(i32 24, float %3367)  ; Sqrt(value)
  br label %3369

; <label>:3369                                    ; preds = %3359, %3357, %3347
  %3370 = phi float [ %3356, %3347 ], [ %3368, %3359 ], [ 0.000000e+00, %3357 ]
  %3371 = and i1 %3315, %3313
  %3372 = fsub fast float -0.000000e+00, %3370
  %3373 = select i1 %3371, float -0.000000e+00, float %3372
  %3374 = fmul fast float %1607, 0x3FF7154760000000
  %3375 = fmul fast float %3374, %3373
  %3376 = fmul fast float %1608, 0x3FF7154760000000
  %3377 = fmul fast float %3376, %3373
  %3378 = fmul fast float %1609, 0x3FF7154760000000
  %3379 = fmul fast float %3378, %3373
  %3380 = call float @dx.op.unary.f32(i32 21, float %3375)  ; Exp(value)
  %3381 = call float @dx.op.unary.f32(i32 21, float %3377)  ; Exp(value)
  %3382 = call float @dx.op.unary.f32(i32 21, float %3379)  ; Exp(value)
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3386 = fmul fast float %3309, %3383
  %3387 = fmul fast float %3310, %3384
  %3388 = fmul fast float %3311, %3385
  %3389 = fsub fast float %3263, %1806
  %3390 = fsub fast float %3264, %1805
  %3391 = fsub fast float %3265, %1804
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3389, float %3390, float %3391, float %3389, float %3390, float %3391)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = call float @dx.op.unary.f32(i32 25, float %3392)  ; Rsqrt(value)
  %3394 = fmul fast float %3393, %3389
  %3395 = fmul fast float %3393, %3390
  %3396 = fmul fast float %3393, %3391
  %3397 = call float @dx.op.dot3.f32(i32 55, float %3263, float %3264, float %3265, float %1813, float %1814, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = call float @dx.op.dot3.f32(i32 55, float %1803, float %1802, float %1801, float %3394, float %3395, float %3396)  ; Dot3(ax,ay,az,bx,by,bz)
  %3399 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3400 = fmul fast float %3399, %3270
  %3401 = fmul fast float %3399, %3399
  %3402 = fmul fast float %3401, %1860
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3404 = fmul fast float %3400, %3403
  %3405 = bitcast float %3260 to i32
  %3406 = ashr i32 %3405, 1
  %3407 = sub nsw i32 1597463007, %3406
  %3408 = bitcast i32 %3407 to float
  %3409 = fmul fast float %3408, %3257
  %3410 = fmul fast float %3408, %3258
  %3411 = fmul fast float %3408, %3259
  %3412 = fsub fast float %3409, %1806
  %3413 = fsub fast float %3410, %1805
  %3414 = fsub fast float %3411, %1804
  %3415 = call float @dx.op.dot3.f32(i32 55, float %3412, float %3413, float %3414, float %3412, float %3413, float %3414)  ; Dot3(ax,ay,az,bx,by,bz)
  %3416 = call float @dx.op.unary.f32(i32 25, float %3415)  ; Rsqrt(value)
  %3417 = fmul fast float %3412, %3416
  %3418 = fmul fast float %3413, %3416
  %3419 = fmul fast float %3414, %3416
  %3420 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %3417, float %3418, float %3419)  ; Dot3(ax,ay,az,bx,by,bz)
  %3421 = fmul fast float %3420, %3420
  %3422 = call float @dx.op.unary.f32(i32 6, float %3397)  ; FAbs(value)
  %3423 = fsub fast float 1.000000e+00, %1853
  %3424 = fmul fast float %1835, %1835
  %3425 = fmul fast float %3424, %3423
  %3426 = fadd fast float %3425, %1853
  %3427 = bitcast float %3426 to i32
  %3428 = ashr i32 %3427, 1
  %3429 = add nsw i32 %3428, 532487669
  %3430 = bitcast i32 %3429 to float
  %3431 = fadd fast float %3430, %1835
  %3432 = fmul fast float %1853, %3421
  %3433 = fsub fast float 1.000000e+00, %3421
  %3434 = fadd fast float %3433, %3432
  %3435 = fmul fast float %3422, %3422
  %3436 = fmul fast float %3435, %3423
  %3437 = fadd fast float %3436, %1853
  %3438 = bitcast float %3437 to i32
  %3439 = ashr i32 %3438, 1
  %3440 = add nsw i32 %3439, 532487669
  %3441 = bitcast i32 %3440 to float
  %3442 = fadd fast float %3441, %3422
  %3443 = fmul fast float %3434, %3434
  %3444 = fmul fast float %3443, %3431
  %3445 = fmul fast float %3444, %3442
  %3446 = fdiv fast float 1.000000e+00, %3445
  %3447 = bitcast float %1853 to i32
  %3448 = sitofp i32 %3447 to float
  %3449 = fmul fast float %3448, 0x3FE7F73180000000
  %3450 = fadd fast float %3449, 0x41AFE27C40000000
  %3451 = fptosi float %3450 to i32
  %3452 = bitcast i32 %3451 to float
  %3453 = fmul fast float %3243, 0x3FD80E9D60000000
  %3454 = fmul fast float %3453, %3408
  %3455 = fadd fast float %3452, %3454
  %3456 = bitcast float %3455 to i32
  %3457 = sub nsw i32 2129859010, %3456
  %3458 = bitcast i32 %3457 to float
  %3459 = fmul fast float %1853, %3446
  %3460 = fmul fast float %3459, %3452
  %3461 = fmul fast float %3460, %3458
  %3462 = call float @dx.op.unary.f32(i32 6, float %3398)  ; FAbs(value)
  %3463 = fsub fast float 1.000000e+00, %3462
  %3464 = bitcast float %3463 to i32
  %3465 = sitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 5.000000e+00
  %3467 = fadd fast float %3466, 0xC1EFBF8940000000
  %3468 = fptosi float %3467 to i32
  %3469 = bitcast i32 %3468 to float
  %3470 = fsub fast float 1.000000e+00, %1810
  %3471 = fsub fast float 1.000000e+00, %1811
  %3472 = fsub fast float 1.000000e+00, %1833
  %3473 = fmul fast float %3469, %3470
  %3474 = fmul fast float %3469, %3471
  %3475 = fmul fast float %3469, %3472
  %3476 = fadd fast float %3473, %1810
  %3477 = fadd fast float %3474, %1811
  %3478 = fadd fast float %3475, %1833
  br i1 %1972, label %3479, label %3502

; <label>:3479                                    ; preds = %3369
  %3480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1184, float %3462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3484 = fadd fast float %3481, -5.000000e-01
  %3485 = fadd fast float %3482, -5.000000e-01
  %3486 = fadd fast float %3483, -5.000000e-01
  %3487 = fmul fast float %1810, 4.000000e+00
  %3488 = fmul fast float %3487, %3470
  %3489 = fmul fast float %3488, %3484
  %3490 = fmul fast float %1811, 4.000000e+00
  %3491 = fmul fast float %3490, %3471
  %3492 = fmul fast float %3491, %3485
  %3493 = fmul fast float %1833, 4.000000e+00
  %3494 = fmul fast float %3493, %3472
  %3495 = fmul fast float %3494, %3486
  %3496 = fadd fast float %3489, %3476
  %3497 = fadd fast float %3492, %3477
  %3498 = fadd fast float %3495, %3478
  %3499 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3500 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3501 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  br label %3502

; <label>:3502                                    ; preds = %3479, %3369
  %3503 = phi float [ %3499, %3479 ], [ %3476, %3369 ]
  %3504 = phi float [ %3500, %3479 ], [ %3477, %3369 ]
  %3505 = phi float [ %3501, %3479 ], [ %3478, %3369 ]
  %3506 = fmul fast float %3397, 9.843750e-01
  %3507 = fadd fast float %3506, 7.812500e-03
  %3508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3507, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 3
  %3511 = fmul fast float %3509, %1810
  %3512 = fmul fast float %3509, %1811
  %3513 = fmul fast float %3509, %1833
  %3514 = fadd fast float %3511, %3510
  %3515 = fadd fast float %3512, %3510
  %3516 = fadd fast float %3513, %3510
  br i1 %1972, label %3517, label %3540

; <label>:3517                                    ; preds = %3502
  %3518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1184, float %3397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3522 = fadd fast float %3519, -5.000000e-01
  %3523 = fadd fast float %3520, -5.000000e-01
  %3524 = fadd fast float %3521, -5.000000e-01
  %3525 = fmul fast float %1810, 4.000000e+00
  %3526 = fmul fast float %3525, %3470
  %3527 = fmul fast float %3526, %3522
  %3528 = fmul fast float %1811, 4.000000e+00
  %3529 = fmul fast float %3528, %3471
  %3530 = fmul fast float %3529, %3523
  %3531 = fmul fast float %1833, 4.000000e+00
  %3532 = fmul fast float %3531, %3472
  %3533 = fmul fast float %3532, %3524
  %3534 = fadd fast float %3527, %3514
  %3535 = fadd fast float %3530, %3515
  %3536 = fadd fast float %3533, %3516
  %3537 = call float @dx.op.unary.f32(i32 7, float %3534)  ; Saturate(value)
  %3538 = call float @dx.op.unary.f32(i32 7, float %3535)  ; Saturate(value)
  %3539 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  br label %3540

; <label>:3540                                    ; preds = %3517, %3502
  %3541 = phi float [ %3537, %3517 ], [ %3514, %3502 ]
  %3542 = phi float [ %3538, %3517 ], [ %3515, %3502 ]
  %3543 = phi float [ %3539, %3517 ], [ %3516, %3502 ]
  %3544 = call float @dx.op.binary.f32(i32 35, float %3542, float %3543)  ; FMax(a,b)
  %3545 = call float @dx.op.binary.f32(i32 35, float %3541, float %3544)  ; FMax(a,b)
  %3546 = fsub fast float 1.000000e+00, %3545
  %3547 = fmul fast float %3503, %3461
  %3548 = fmul fast float %3504, %3461
  %3549 = fmul fast float %3505, %3461
  %3550 = fsub fast float 1.000000e+00, %3398
  %3551 = bitcast float %3550 to i32
  %3552 = sitofp i32 %3551 to float
  %3553 = fmul fast float %3552, 5.000000e+00
  %3554 = fadd fast float %3553, 0xC1EFBF8940000000
  %3555 = fptosi float %3554 to i32
  %3556 = bitcast i32 %3555 to float
  %3557 = fmul fast float %3556, %1183
  %3558 = fmul fast float %3546, %3557
  %3559 = fmul fast float %3558, %2898
  %3560 = fmul fast float %3558, %2899
  %3561 = fmul fast float %3558, %2900
  %3562 = fadd fast float %3559, %3547
  %3563 = fadd fast float %3560, %3548
  %3564 = fadd fast float %3561, %3549
  %3565 = fmul fast float %3386, %1204
  %3566 = fmul fast float %3565, %3404
  %3567 = fmul fast float %3566, %3546
  %3568 = fmul fast float %3387, %1204
  %3569 = fmul fast float %3568, %3404
  %3570 = fmul fast float %3569, %3546
  %3571 = fmul fast float %3388, %1204
  %3572 = fmul fast float %3571, %3404
  %3573 = fmul fast float %3572, %3546
  %3574 = fadd fast float %3567, %3225
  %3575 = fadd fast float %3570, %3226
  %3576 = fadd fast float %3573, %3227
  %3577 = fmul fast float %3566, %3562
  %3578 = fmul fast float %3569, %3563
  %3579 = fmul fast float %3572, %3564
  %3580 = fadd fast float %3577, %3222
  %3581 = fadd fast float %3578, %3223
  %3582 = fadd fast float %3579, %3224
  br label %3300

; <label>:3583                                    ; preds = %3300
  br label %3584

; <label>:3584                                    ; preds = %3583, %3188
  %3585 = phi float [ %3190, %3188 ], [ %3301, %3583 ]
  %3586 = phi float [ %3191, %3188 ], [ %3302, %3583 ]
  %3587 = phi float [ %3192, %3188 ], [ %3303, %3583 ]
  %3588 = phi float [ %3193, %3188 ], [ %3304, %3583 ]
  %3589 = phi float [ %3194, %3188 ], [ %3305, %3583 ]
  %3590 = phi float [ %3195, %3188 ], [ %3306, %3583 ]
  %3591 = add i32 %3189, 1
  %3592 = icmp ugt i32 %3591, %3185
  br i1 %3592, label %3593, label %3188

; <label>:3593                                    ; preds = %3584
  br label %3594

; <label>:3594                                    ; preds = %3593, %3164, %3154
  %3595 = phi float [ %3155, %3154 ], [ %3155, %3164 ], [ %3585, %3593 ]
  %3596 = phi float [ %3156, %3154 ], [ %3156, %3164 ], [ %3586, %3593 ]
  %3597 = phi float [ %3157, %3154 ], [ %3157, %3164 ], [ %3587, %3593 ]
  %3598 = phi float [ %3158, %3154 ], [ %3158, %3164 ], [ %3588, %3593 ]
  %3599 = phi float [ %3159, %3154 ], [ %3159, %3164 ], [ %3589, %3593 ]
  %3600 = phi float [ %3160, %3154 ], [ %3160, %3164 ], [ %3590, %3593 ]
  %3601 = call float @dx.op.unary.f32(i32 24, float %1807)  ; Sqrt(value)
  %3602 = call float @dx.op.unary.f32(i32 24, float %1808)  ; Sqrt(value)
  %3603 = call float @dx.op.unary.f32(i32 24, float %1809)  ; Sqrt(value)
  %3604 = fmul fast float %3601, %3598
  %3605 = fmul fast float %3602, %3599
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  br i1 %161, label %3608, label %3631

; <label>:3608                                    ; preds = %3594
  %3609 = fadd fast float %3600, %1181
  %3610 = fmul fast float %3609, %1182
  %3611 = fsub fast float 1.000000e+00, %1182
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 3
  %3615 = fmul fast float %3614, %3612
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = fmul fast float %3617, %2904
  %3619 = extractvalue %dx.types.CBufRet.f32 %3616, 2
  %3620 = fmul fast float %3619, %1831
  %3621 = fadd fast float %3605, %3604
  %3622 = fmul fast float %3607, %3621
  %3623 = extractvalue %dx.types.CBufRet.f32 %3613, 1
  %3624 = fadd fast float %3615, %3610
  %3625 = fsub fast float %3624, %3618
  %3626 = fadd fast float %3625, %3620
  %3627 = fsub fast float %3626, %3623
  %3628 = extractvalue %dx.types.CBufRet.f32 %3613, 2
  %3629 = fmul fast float %3627, %3628
  %3630 = call float @dx.op.unary.f32(i32 7, float %3629)  ; Saturate(value)
  br label %3646

; <label>:3631                                    ; preds = %3594
  %3632 = fmul fast float %3603, %3600
  %3633 = fmul fast float %3607, %3604
  %3634 = fmul fast float %3607, %3605
  %3635 = fmul fast float %3632, %3607
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = and i32 %3637, 32
  %3639 = icmp eq i32 %3638, 0
  br i1 %3639, label %3646, label %3640

; <label>:3640                                    ; preds = %3631
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3643 = fmul fast float %3642, 0x3FE99999A0000000
  %3644 = fadd fast float %3642, %3633
  %3645 = fadd fast float %3643, %3635
  br label %3646

; <label>:3646                                    ; preds = %3640, %3631, %3608
  %3647 = phi float [ %3622, %3608 ], [ %3644, %3640 ], [ %3633, %3631 ]
  %3648 = phi float [ %3630, %3608 ], [ %3634, %3640 ], [ %3634, %3631 ]
  %3649 = phi float [ 1.000000e+00, %3608 ], [ %3645, %3640 ], [ %3635, %3631 ]
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 0
  %3652 = fmul fast float %3651, %3596
  %3653 = fmul fast float %3651, %3597
  %3654 = fadd fast float %3596, %3595
  %3655 = select i1 %161, float %3654, float %3595
  %3656 = fmul float %3655, %3651
  %3657 = select i1 %161, float 0.000000e+00, float %3652
  %3658 = select i1 %161, float 0.000000e+00, float %3653
  %3659 = fmul fast float %3647, %3601
  %3660 = fmul fast float %3648, %3602
  %3661 = fmul fast float %3649, %3603
  %3662 = fadd fast float %3656, %3659
  %3663 = fadd fast float %3657, %3660
  %3664 = fadd fast float %3658, %3661
  %3665 = select i1 %161, float %3648, float %3663
  %3666 = select i1 %161, float %3649, float %3664
  %3667 = call float @dx.op.binary.f32(i32 36, float %3662, float 3.225500e+04)  ; FMin(a,b)
  %3668 = call float @dx.op.binary.f32(i32 36, float %3665, float 3.225500e+04)  ; FMin(a,b)
  %3669 = call float @dx.op.binary.f32(i32 36, float %3666, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3667)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3668)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3669)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !13}
!13 = !{i32 0, i32 5}
!14 = !{i32 6, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!43 = !{!44, !45}
!44 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!46 = !{!47, !48, !49, !50}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!51 = !{[27 x i32] [i32 25, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !71}
!53 = !{!54, !69, null}
!54 = !{!55, !58, !60, !62, !64, !65, !66, !68}
!55 = !{i32 0, !"SV_Position", i8 9, i8 3, !56, i8 4, i32 1, i8 4, i32 0, i8 0, !57}
!56 = !{i32 0}
!57 = !{i32 3, i32 11}
!58 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 2, i32 1, i8 0, !59}
!59 = !{i32 3, i32 3}
!60 = !{i32 2, !"NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 2, i8 0, !61}
!61 = !{i32 3, i32 7}
!62 = !{i32 3, !"TANGENT", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 3, i8 0, !63}
!63 = !{i32 3, i32 15}
!64 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 4, i8 0, !61}
!65 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 5, i8 0, !63}
!66 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !56, i8 1, i32 1, i8 1, i32 6, i8 0, !67}
!67 = !{i32 3, i32 1}
!68 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !63}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

