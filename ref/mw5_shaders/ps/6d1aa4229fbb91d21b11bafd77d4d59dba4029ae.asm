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
; shader hash: 437a7170e3a38ffcde79d02f82592fbd
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
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %202 = and i32 %201, 65535
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %201, 16
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 65535
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %207, 16
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = fmul fast float %209, 0x3F50624DE0000000
  %213 = fmul fast float %211, 0x3F50624DE0000000
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = shl i32 %215, 4
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %215, 7
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %215, 22
  %223 = shl nuw nsw i32 %222, 5
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = lshr i32 %226, 8
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = lshr i32 %226, 16
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = fmul fast float %247, 0x3F50624DE0000000
  %251 = fmul fast float %249, 0x3F50624DE0000000
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 32
  %255 = icmp eq i32 %254, 0
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %267, label %260

; <label>:260                                     ; preds = %160
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = add i32 %262, 0
  %264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %264, %dx.types.Handle %60, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  br label %267

; <label>:267                                     ; preds = %260, %160
  %268 = phi float [ 1.000000e+00, %160 ], [ %266, %260 ]
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 2
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %279, label %273

; <label>:273                                     ; preds = %267
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 1
  %277 = icmp ne i32 %276, 0
  %278 = select i1 %277, float %268, float 1.000000e+00
  br label %279

; <label>:279                                     ; preds = %273, %267
  %280 = phi float [ %268, %267 ], [ %278, %273 ]
  %281 = lshr i32 %270, 20
  %282 = and i32 %281, 3
  %283 = add nuw nsw i32 %282, 1
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = or i32 %287, %285
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %723, label %290

; <label>:290                                     ; preds = %279
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = lshr i32 %292, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = fmul fast float %294, 0x3F50624DE0000000
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  %300 = lshr i32 %297, 24
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = lshr i32 %308, 22
  %310 = shl nuw nsw i32 %309, 5
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = shl i32 %308, 4
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %308, 7
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %320 = fmul fast float %319, 1.000000e+03
  %321 = fmul fast float %212, %320
  %322 = call float @dx.op.unary.f32(i32 22, float %321)  ; Frc(value)
  %323 = fadd fast float %322, %203
  %324 = fmul fast float %213, %320
  %325 = call float @dx.op.unary.f32(i32 22, float %324)  ; Frc(value)
  %326 = fadd fast float %325, %205
  %327 = fmul fast float %295, %320
  %328 = call float @dx.op.unary.f32(i32 22, float %327)  ; Frc(value)
  %329 = fmul fast float %328, 0x401921FB60000000
  %330 = fadd fast float %329, %311
  %331 = call float @dx.op.unary.f32(i32 13, float %330)  ; Sin(value)
  %332 = call float @dx.op.unary.f32(i32 12, float %330)  ; Cos(value)
  %333 = fsub fast float -0.000000e+00, %331
  %334 = fadd fast float %54, -5.000000e-01
  %335 = fadd fast float %55, -5.000000e-01
  %336 = fmul fast float %304, %334
  %337 = fmul fast float %306, %335
  %338 = fadd fast float %336, 5.000000e-01
  %339 = fadd fast float %337, 5.000000e-01
  %340 = fmul fast float %314, %338
  %341 = fmul fast float %317, %339
  %342 = fmul fast float %332, %340
  %343 = call float @dx.op.tertiary.f32(i32 46, float %333, float %341, float %342)  ; FMad(a,b,c)
  %344 = fmul fast float %331, %340
  %345 = call float @dx.op.tertiary.f32(i32 46, float %332, float %341, float %344)  ; FMad(a,b,c)
  %346 = fadd fast float %323, %343
  %347 = fadd fast float %326, %345
  %348 = icmp ugt i32 %299, 1
  %349 = icmp ugt i32 %297, 33554431
  %350 = or i1 %349, %348
  br i1 %350, label %351, label %375

; <label>:351                                     ; preds = %290
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = lshr i32 %353, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %319, %355
  %357 = call float @dx.op.unary.f32(i32 22, float %356)  ; Frc(value)
  %358 = mul nuw nsw i32 %299, %300
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %357, %359
  %361 = call float @dx.op.unary.f32(i32 27, float %360)  ; Round_ni(value)
  %362 = fptoui float %361 to i32
  %363 = urem i32 %362, %299
  %364 = udiv i32 %362, %300
  %365 = call float @dx.op.unary.f32(i32 22, float %346)  ; Frc(value)
  %366 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %367 = uitofp i32 %363 to float
  %368 = uitofp i32 %364 to float
  %369 = fadd fast float %365, %367
  %370 = fadd fast float %366, %368
  %371 = uitofp i32 %299 to float
  %372 = uitofp i32 %300 to float
  %373 = fdiv fast float %369, %371
  %374 = fdiv fast float %370, %372
  br label %375

; <label>:375                                     ; preds = %351, %290
  %376 = phi float [ %373, %351 ], [ %346, %290 ]
  %377 = phi float [ %374, %351 ], [ %347, %290 ]
  %378 = and i32 %285, 16
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %571, label %380

; <label>:380                                     ; preds = %375
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = add i32 %382, 0
  %384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %384, %dx.types.Handle %59, float %376, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  %390 = and i32 %297, 255
  %391 = uitofp i32 %390 to float
  %392 = lshr i32 %297, 8
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %389, %391
  %396 = fadd fast float %395, %394
  %397 = fmul fast float %396, 0x3F70101000000000
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 512
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %409, label %402

; <label>:402                                     ; preds = %380
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %404, 0
  %406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %406, %dx.types.Handle %60, float %376, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  br label %409

; <label>:409                                     ; preds = %402, %380
  %410 = phi float [ %408, %402 ], [ 1.000000e+00, %380 ]
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 33554432
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %518, label %415

; <label>:415                                     ; preds = %409
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 65535
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = lshr i32 %417, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = lshr i32 %427, 24
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %429, 0x3F70101020000000
  %431 = and i32 %427, 255
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3F70101020000000
  %434 = lshr i32 %427, 8
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = lshr i32 %427, 16
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = lshr i32 %443, 24
  %445 = uitofp i32 %444 to float
  %446 = fmul fast float %445, 0x3F70101020000000
  %447 = and i32 %443, 255
  %448 = uitofp i32 %447 to float
  %449 = fmul fast float %448, 0x3F70101020000000
  %450 = lshr i32 %443, 8
  %451 = and i32 %450, 255
  %452 = uitofp i32 %451 to float
  %453 = fmul fast float %452, 0x3F70101020000000
  %454 = lshr i32 %443, 16
  %455 = and i32 %454, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = bitcast float %386 to i32
  %459 = ashr i32 %458, 1
  %460 = sub nsw i32 1597463174, %459
  %461 = bitcast i32 %460 to float
  %462 = fmul fast float %386, 5.000000e-01
  %463 = fmul fast float %461, %461
  %464 = fmul fast float %463, %462
  %465 = fsub fast float 1.500000e+00, %464
  %466 = fmul fast float %461, %386
  %467 = fmul fast float %466, %465
  %468 = bitcast float %387 to i32
  %469 = ashr i32 %468, 1
  %470 = sub nsw i32 1597463174, %469
  %471 = bitcast i32 %470 to float
  %472 = fmul fast float %387, 5.000000e-01
  %473 = fmul fast float %471, %471
  %474 = fmul fast float %473, %472
  %475 = fsub fast float 1.500000e+00, %474
  %476 = fmul fast float %471, %387
  %477 = fmul fast float %476, %475
  %478 = bitcast float %388 to i32
  %479 = ashr i32 %478, 1
  %480 = sub nsw i32 1597463174, %479
  %481 = bitcast i32 %480 to float
  %482 = fmul fast float %388, 5.000000e-01
  %483 = fmul fast float %481, %481
  %484 = fmul fast float %483, %482
  %485 = fsub fast float 1.500000e+00, %484
  %486 = fmul fast float %481, %388
  %487 = fmul fast float %486, %485
  %488 = fsub fast float %467, %449
  %489 = fsub fast float %477, %453
  %490 = fsub fast float %487, %457
  %491 = fmul fast float %488, %419
  %492 = fmul fast float %489, %421
  %493 = fmul fast float %490, %425
  %494 = fadd fast float %491, %433
  %495 = fadd fast float %492, %437
  %496 = fadd fast float %493, %441
  %497 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %498 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %499 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %500 = fmul fast float %497, %497
  %501 = fmul fast float %498, %498
  %502 = fmul fast float %499, %499
  %503 = fsub fast float %500, %386
  %504 = fsub fast float %501, %387
  %505 = fsub fast float %502, %388
  %506 = fmul fast float %503, %410
  %507 = fmul fast float %504, %410
  %508 = fmul fast float %505, %410
  %509 = fadd fast float %506, %386
  %510 = fadd fast float %507, %387
  %511 = fadd fast float %508, %388
  %512 = fadd fast float %430, %397
  %513 = fsub fast float %512, %446
  %514 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  %515 = fsub fast float %514, %397
  %516 = fmul fast float %515, %410
  %517 = fadd fast float %516, %397
  br label %571

; <label>:518                                     ; preds = %409
  %519 = and i32 %412, 134217728
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %555, label %521

; <label>:521                                     ; preds = %518
  %522 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %523 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %524 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %525 = fadd fast float %522, -5.000000e-01
  %526 = fadd fast float %523, -5.000000e-01
  %527 = fadd fast float %524, -5.000000e-01
  %528 = fmul fast float %525, %410
  %529 = fmul fast float %526, %410
  %530 = fmul fast float %527, %410
  %531 = fadd fast float %528, 5.000000e-01
  %532 = fadd fast float %529, 5.000000e-01
  %533 = fadd fast float %530, 5.000000e-01
  %534 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %535 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %536 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %537 = fmul fast float %531, 2.000000e+00
  %538 = fsub fast float 1.000000e+00, %537
  %539 = fmul fast float %538, %534
  %540 = fadd fast float %539, %537
  %541 = fmul fast float %540, %534
  %542 = fmul fast float %532, 2.000000e+00
  %543 = fsub fast float 1.000000e+00, %542
  %544 = fmul fast float %543, %535
  %545 = fadd fast float %544, %542
  %546 = fmul fast float %545, %535
  %547 = fmul fast float %533, 2.000000e+00
  %548 = fsub fast float 1.000000e+00, %547
  %549 = fmul fast float %548, %536
  %550 = fadd fast float %549, %547
  %551 = fmul fast float %550, %536
  %552 = fmul fast float %541, %541
  %553 = fmul fast float %546, %546
  %554 = fmul fast float %551, %551
  br label %571

; <label>:555                                     ; preds = %518
  %556 = fmul fast float %191, %191
  %557 = fmul fast float %195, %195
  %558 = fmul fast float %199, %199
  %559 = fadd fast float %556, -1.000000e+00
  %560 = fadd fast float %557, -1.000000e+00
  %561 = fadd fast float %558, -1.000000e+00
  %562 = fmul fast float %410, %559
  %563 = fmul fast float %410, %560
  %564 = fmul fast float %410, %561
  %565 = fadd fast float %562, 1.000000e+00
  %566 = fadd fast float %563, 1.000000e+00
  %567 = fadd fast float %564, 1.000000e+00
  %568 = fmul fast float %565, %386
  %569 = fmul fast float %566, %387
  %570 = fmul fast float %567, %388
  br label %571

; <label>:571                                     ; preds = %555, %521, %415, %375
  %572 = phi float [ %517, %415 ], [ %397, %521 ], [ %397, %555 ], [ 0x3FA23C0BE0000000, %375 ]
  %573 = phi float [ %509, %415 ], [ %552, %521 ], [ %568, %555 ], [ 1.000000e+00, %375 ]
  %574 = phi float [ %510, %415 ], [ %553, %521 ], [ %569, %555 ], [ 1.000000e+00, %375 ]
  %575 = phi float [ %511, %415 ], [ %554, %521 ], [ %570, %555 ], [ 1.000000e+00, %375 ]
  %576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.i32 %576, 1
  %578 = and i32 %577, 1
  %579 = icmp ne i32 %578, 0
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 32
  %583 = icmp ne i32 %582, 0
  %584 = and i1 %579, %583
  %585 = select i1 %584, float 1.000000e+00, float %573
  %586 = select i1 %584, float 0x3FD3333340000000, float %574
  %587 = select i1 %584, float 0x3FD3333340000000, float %575
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 32
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %661, label %592

; <label>:592                                     ; preds = %571
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add i32 %596, 0
  %598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %598, %dx.types.Handle %59, float %376, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = extractvalue %dx.types.ResRet.f32 %599, 3
  %604 = and i32 %594, 255
  %605 = uitofp i32 %604 to float
  %606 = lshr i32 %594, 8
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = lshr i32 %594, 16
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101000000000
  %613 = fmul fast float %600, %605
  %614 = fadd fast float %613, %608
  %615 = fmul fast float %614, 0x3F70101000000000
  %616 = fadd fast float %601, -5.000000e-01
  %617 = fadd fast float %603, -5.000000e-01
  %618 = fmul fast float %616, %612
  %619 = fmul fast float %617, %612
  %620 = fadd fast float %618, 5.000000e-01
  %621 = fadd fast float %619, 5.000000e-01
  %622 = fmul fast float %620, 2.000000e+00
  %623 = fadd fast float %622, -1.000000e+00
  %624 = fmul fast float %621, 2.000000e+00
  %625 = fadd fast float %624, -1.000000e+00
  %626 = fadd fast float %623, %625
  %627 = fmul fast float %626, 5.000000e-01
  %628 = fsub fast float %623, %625
  %629 = fmul fast float %628, 5.000000e-01
  %630 = call float @dx.op.unary.f32(i32 6, float %627)  ; FAbs(value)
  %631 = fsub fast float 1.000000e+00, %630
  %632 = call float @dx.op.unary.f32(i32 6, float %629)  ; FAbs(value)
  %633 = fsub fast float %631, %632
  %634 = call float @dx.op.dot3.f32(i32 55, float %627, float %629, float %633, float %627, float %629, float %633)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.unary.f32(i32 25, float %634)  ; Rsqrt(value)
  %636 = fmul fast float %627, %635
  %637 = fmul fast float %629, %635
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 67108864
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %657, label %642

; <label>:642                                     ; preds = %592
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 65535
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 65535
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = lshr i32 %644, 16
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = fsub fast float %615, %652
  %654 = fmul fast float %653, %646
  %655 = fadd fast float %654, %650
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  br label %657

; <label>:657                                     ; preds = %642, %592
  %658 = phi float [ %656, %642 ], [ %615, %592 ]
  %659 = call float @dx.op.dot2.f32(i32 54, float %636, float %637, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %660 = call float @dx.op.dot2.f32(i32 54, float %636, float %637, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %661

; <label>:661                                     ; preds = %657, %571
  %662 = phi float [ %658, %657 ], [ 0x3FD6666660000000, %571 ]
  %663 = phi float [ %659, %657 ], [ 0.000000e+00, %571 ]
  %664 = phi float [ %660, %657 ], [ 0.000000e+00, %571 ]
  %665 = phi float [ %602, %657 ], [ 1.000000e+00, %571 ]
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = lshr i32 %667, 22
  %669 = shl nuw nsw i32 %668, 5
  %670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %669)  ; LegacyF16ToF32(value)
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 64
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %707, label %675

; <label>:675                                     ; preds = %661
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %677, 0
  %679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 131072
  %683 = icmp eq i32 %682, 0
  %684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %679, %dx.types.Handle %59, float %376, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = fmul fast float %685, %180
  %689 = fmul fast float %686, %183
  %690 = fmul fast float %687, %186
  br i1 %683, label %697, label %691

; <label>:691                                     ; preds = %675
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = fmul fast float %693, %688
  %695 = fmul fast float %693, %689
  %696 = fmul fast float %693, %690
  br label %697

; <label>:697                                     ; preds = %691, %675
  %698 = phi float [ %694, %691 ], [ %688, %675 ]
  %699 = phi float [ %695, %691 ], [ %689, %675 ]
  %700 = phi float [ %696, %691 ], [ %690, %675 ]
  %701 = fmul fast float %698, %670
  %702 = select i1 %161, float %701, float %698
  %703 = call float @dx.op.dot3.f32(i32 55, float %702, float %699, float %700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = select i1 %161, float 0.000000e+00, float %698
  %705 = select i1 %161, float %703, float %699
  %706 = select i1 %161, float 0.000000e+00, float %700
  br label %707

; <label>:707                                     ; preds = %697, %661
  %708 = phi float [ %704, %697 ], [ 0.000000e+00, %661 ]
  %709 = phi float [ %705, %697 ], [ 0.000000e+00, %661 ]
  %710 = phi float [ %706, %697 ], [ 0.000000e+00, %661 ]
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = lshr i32 %712, 8
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = call float @dx.op.dot3.f32(i32 55, float %585, float %586, float %587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %719 = fmul fast float %717, %718
  %720 = fadd fast float %719, %714
  %721 = fmul fast float %720, 0x3F70101020000000
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  br label %723

; <label>:723                                     ; preds = %707, %279
  %724 = phi float [ 0.000000e+00, %279 ], [ %663, %707 ]
  %725 = phi float [ 0.000000e+00, %279 ], [ %664, %707 ]
  %726 = phi float [ 0.000000e+00, %279 ], [ %585, %707 ]
  %727 = phi float [ 0.000000e+00, %279 ], [ %586, %707 ]
  %728 = phi float [ 0.000000e+00, %279 ], [ %587, %707 ]
  %729 = phi float [ 0.000000e+00, %279 ], [ %708, %707 ]
  %730 = phi float [ 0.000000e+00, %279 ], [ %709, %707 ]
  %731 = phi float [ 0.000000e+00, %279 ], [ %710, %707 ]
  %732 = phi float [ 0.000000e+00, %279 ], [ %572, %707 ]
  %733 = phi float [ 0.000000e+00, %279 ], [ 1.000000e+00, %707 ]
  %734 = phi float [ 0.000000e+00, %279 ], [ %662, %707 ]
  %735 = phi float [ 0.000000e+00, %279 ], [ %665, %707 ]
  %736 = phi float [ 0.000000e+00, %279 ], [ %722, %707 ]
  br i1 %255, label %1433, label %737

; <label>:737                                     ; preds = %723
  %738 = icmp ult i32 %283, 2
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = or i32 %742, %740
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %1433, label %745

; <label>:745                                     ; preds = %737
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = lshr i32 %747, 16
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = fmul fast float %749, 0x3F50624DE0000000
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = lshr i32 %752, 16
  %754 = and i32 %753, 255
  %755 = lshr i32 %752, 24
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 65535
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = lshr i32 %757, 16
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 22
  %765 = shl nuw nsw i32 %764, 5
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = shl i32 %763, 4
  %768 = and i32 %767, 32752
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = lshr i32 %763, 7
  %771 = and i32 %770, 32752
  %772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %771)  ; LegacyF16ToF32(value)
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 3
  %775 = fmul fast float %774, 1.000000e+03
  %776 = fmul fast float %250, %775
  %777 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %778 = fadd fast float %777, %241
  %779 = fmul fast float %251, %775
  %780 = call float @dx.op.unary.f32(i32 22, float %779)  ; Frc(value)
  %781 = fadd fast float %780, %243
  %782 = fmul fast float %750, %775
  %783 = call float @dx.op.unary.f32(i32 22, float %782)  ; Frc(value)
  %784 = fmul fast float %783, 0x401921FB60000000
  %785 = fadd fast float %784, %766
  %786 = call float @dx.op.unary.f32(i32 13, float %785)  ; Sin(value)
  %787 = call float @dx.op.unary.f32(i32 12, float %785)  ; Cos(value)
  %788 = fsub fast float -0.000000e+00, %786
  %789 = fadd fast float %54, -5.000000e-01
  %790 = fadd fast float %55, -5.000000e-01
  %791 = fmul fast float %759, %789
  %792 = fmul fast float %761, %790
  %793 = fadd fast float %791, 5.000000e-01
  %794 = fadd fast float %792, 5.000000e-01
  %795 = fmul fast float %769, %793
  %796 = fmul fast float %772, %794
  %797 = fmul fast float %787, %795
  %798 = call float @dx.op.tertiary.f32(i32 46, float %788, float %796, float %797)  ; FMad(a,b,c)
  %799 = fmul fast float %786, %795
  %800 = call float @dx.op.tertiary.f32(i32 46, float %787, float %796, float %799)  ; FMad(a,b,c)
  %801 = fadd fast float %778, %798
  %802 = fadd fast float %781, %800
  %803 = icmp ugt i32 %754, 1
  %804 = icmp ugt i32 %752, 33554431
  %805 = or i1 %804, %803
  br i1 %805, label %806, label %830

; <label>:806                                     ; preds = %745
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = lshr i32 %808, 16
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = fmul fast float %774, %810
  %812 = call float @dx.op.unary.f32(i32 22, float %811)  ; Frc(value)
  %813 = mul nuw nsw i32 %754, %755
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %812, %814
  %816 = call float @dx.op.unary.f32(i32 27, float %815)  ; Round_ni(value)
  %817 = fptoui float %816 to i32
  %818 = urem i32 %817, %754
  %819 = udiv i32 %817, %755
  %820 = call float @dx.op.unary.f32(i32 22, float %801)  ; Frc(value)
  %821 = call float @dx.op.unary.f32(i32 22, float %802)  ; Frc(value)
  %822 = uitofp i32 %818 to float
  %823 = uitofp i32 %819 to float
  %824 = fadd fast float %820, %822
  %825 = fadd fast float %821, %823
  %826 = uitofp i32 %754 to float
  %827 = uitofp i32 %755 to float
  %828 = fdiv fast float %824, %826
  %829 = fdiv fast float %825, %827
  br label %830

; <label>:830                                     ; preds = %806, %745
  %831 = phi float [ %828, %806 ], [ %801, %745 ]
  %832 = phi float [ %829, %806 ], [ %802, %745 ]
  %833 = and i32 %740, 256
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %879, label %835

; <label>:835                                     ; preds = %830
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = add i32 %837, 0
  %839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %839, %dx.types.Handle %60, float %831, float %832, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = shl i32 %843, 4
  %845 = and i32 %844, 32752
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = lshr i32 %843, 7
  %848 = and i32 %847, 32752
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fsub fast float 1.000000e+00, %280
  %851 = call float @dx.op.binary.f32(i32 35, float %850, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %852 = bitcast float %280 to i32
  %853 = sitofp i32 %852 to float
  %854 = fadd fast float %853, 0xC1CFBF8940000000
  %855 = fmul fast float %849, %854
  %856 = fadd fast float %855, 0x41CFBF8940000000
  %857 = fptosi float %856 to i32
  %858 = bitcast i32 %857 to float
  %859 = bitcast float %851 to i32
  %860 = sitofp i32 %859 to float
  %861 = fadd fast float %860, 0xC1CFBF8940000000
  %862 = fmul fast float %861, %849
  %863 = fadd fast float %862, 0x41CFBF8940000000
  %864 = fptosi float %863 to i32
  %865 = bitcast i32 %864 to float
  %866 = fmul fast float %858, %846
  %867 = fmul fast float %865, %846
  %868 = fsub fast float %851, %866
  %869 = fadd fast float %867, %851
  %870 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %871 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %872 = fsub fast float %841, %870
  %873 = fsub fast float %871, %870
  %874 = bitcast float %873 to i32
  %875 = sub nsw i32 2129859010, %874
  %876 = bitcast i32 %875 to float
  %877 = fmul fast float %876, %872
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  br label %879

; <label>:879                                     ; preds = %835, %830
  %880 = phi float [ %878, %835 ], [ %280, %830 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 128
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %900, label %885

; <label>:885                                     ; preds = %879
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = add i32 %887, 0
  %889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %888, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %889, %dx.types.Handle %60, float %831, float %832, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 524288
  %895 = icmp ne i32 %894, 0
  %896 = fcmp fast ogt float %891, 0x3FE0101020000000
  %897 = select i1 %896, float 1.000000e+00, float 0.000000e+00
  %898 = select i1 %895, float %897, float %891
  %899 = fmul fast float %898, %880
  br label %900

; <label>:900                                     ; preds = %885, %879
  %901 = phi float [ %899, %885 ], [ %880, %879 ]
  %902 = fcmp fast ult float %901, 0x3F70101020000000
  br i1 %902, label %1433, label %903

; <label>:903                                     ; preds = %900
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 16
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %1101, label %908

; <label>:908                                     ; preds = %903
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = add i32 %912, 0
  %914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %914, %dx.types.Handle %59, float %831, float %832, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = extractvalue %dx.types.ResRet.f32 %915, 3
  %920 = and i32 %910, 255
  %921 = uitofp i32 %920 to float
  %922 = lshr i32 %910, 8
  %923 = and i32 %922, 255
  %924 = uitofp i32 %923 to float
  %925 = fmul fast float %919, %921
  %926 = fadd fast float %925, %924
  %927 = fmul fast float %926, 0x3F70101000000000
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 512
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %939, label %932

; <label>:932                                     ; preds = %908
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = add i32 %934, 0
  %936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %936, %dx.types.Handle %60, float %831, float %832, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  br label %939

; <label>:939                                     ; preds = %932, %908
  %940 = phi float [ %938, %932 ], [ 1.000000e+00, %908 ]
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 33554432
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1048, label %945

; <label>:945                                     ; preds = %939
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %947, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 65535
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 24
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = and i32 %957, 255
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %962, 0x3F70101020000000
  %964 = lshr i32 %957, 8
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = lshr i32 %957, 16
  %969 = and i32 %968, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = lshr i32 %973, 24
  %975 = uitofp i32 %974 to float
  %976 = fmul fast float %975, 0x3F70101020000000
  %977 = and i32 %973, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = lshr i32 %973, 8
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = lshr i32 %973, 16
  %985 = and i32 %984, 255
  %986 = uitofp i32 %985 to float
  %987 = fmul fast float %986, 0x3F70101020000000
  %988 = bitcast float %916 to i32
  %989 = ashr i32 %988, 1
  %990 = sub nsw i32 1597463174, %989
  %991 = bitcast i32 %990 to float
  %992 = fmul fast float %916, 5.000000e-01
  %993 = fmul fast float %991, %991
  %994 = fmul fast float %993, %992
  %995 = fsub fast float 1.500000e+00, %994
  %996 = fmul fast float %991, %916
  %997 = fmul fast float %996, %995
  %998 = bitcast float %917 to i32
  %999 = ashr i32 %998, 1
  %1000 = sub nsw i32 1597463174, %999
  %1001 = bitcast i32 %1000 to float
  %1002 = fmul fast float %917, 5.000000e-01
  %1003 = fmul fast float %1001, %1001
  %1004 = fmul fast float %1003, %1002
  %1005 = fsub fast float 1.500000e+00, %1004
  %1006 = fmul fast float %1001, %917
  %1007 = fmul fast float %1006, %1005
  %1008 = bitcast float %918 to i32
  %1009 = ashr i32 %1008, 1
  %1010 = sub nsw i32 1597463174, %1009
  %1011 = bitcast i32 %1010 to float
  %1012 = fmul fast float %918, 5.000000e-01
  %1013 = fmul fast float %1011, %1011
  %1014 = fmul fast float %1013, %1012
  %1015 = fsub fast float 1.500000e+00, %1014
  %1016 = fmul fast float %1011, %918
  %1017 = fmul fast float %1016, %1015
  %1018 = fsub fast float %997, %979
  %1019 = fsub fast float %1007, %983
  %1020 = fsub fast float %1017, %987
  %1021 = fmul fast float %1018, %949
  %1022 = fmul fast float %1019, %951
  %1023 = fmul fast float %1020, %955
  %1024 = fadd fast float %1021, %963
  %1025 = fadd fast float %1022, %967
  %1026 = fadd fast float %1023, %971
  %1027 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1028 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1029 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1030 = fmul fast float %1027, %1027
  %1031 = fmul fast float %1028, %1028
  %1032 = fmul fast float %1029, %1029
  %1033 = fsub fast float %1030, %916
  %1034 = fsub fast float %1031, %917
  %1035 = fsub fast float %1032, %918
  %1036 = fmul fast float %1033, %940
  %1037 = fmul fast float %1034, %940
  %1038 = fmul fast float %1035, %940
  %1039 = fadd fast float %1036, %916
  %1040 = fadd fast float %1037, %917
  %1041 = fadd fast float %1038, %918
  %1042 = fadd fast float %960, %927
  %1043 = fsub fast float %1042, %976
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  %1045 = fsub fast float %1044, %927
  %1046 = fmul fast float %1045, %940
  %1047 = fadd fast float %1046, %927
  br label %1101

; <label>:1048                                    ; preds = %939
  %1049 = and i32 %942, 134217728
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1085, label %1051

; <label>:1051                                    ; preds = %1048
  %1052 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %1053 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1054 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1055 = fadd fast float %1052, -5.000000e-01
  %1056 = fadd fast float %1053, -5.000000e-01
  %1057 = fadd fast float %1054, -5.000000e-01
  %1058 = fmul fast float %1055, %940
  %1059 = fmul fast float %1056, %940
  %1060 = fmul fast float %1057, %940
  %1061 = fadd fast float %1058, 5.000000e-01
  %1062 = fadd fast float %1059, 5.000000e-01
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 24, float %916)  ; Sqrt(value)
  %1065 = call float @dx.op.unary.f32(i32 24, float %917)  ; Sqrt(value)
  %1066 = call float @dx.op.unary.f32(i32 24, float %918)  ; Sqrt(value)
  %1067 = fmul fast float %1061, 2.000000e+00
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = fmul fast float %1068, %1064
  %1070 = fadd fast float %1069, %1067
  %1071 = fmul fast float %1070, %1064
  %1072 = fmul fast float %1062, 2.000000e+00
  %1073 = fsub fast float 1.000000e+00, %1072
  %1074 = fmul fast float %1073, %1065
  %1075 = fadd fast float %1074, %1072
  %1076 = fmul fast float %1075, %1065
  %1077 = fmul fast float %1063, 2.000000e+00
  %1078 = fsub fast float 1.000000e+00, %1077
  %1079 = fmul fast float %1078, %1066
  %1080 = fadd fast float %1079, %1077
  %1081 = fmul fast float %1080, %1066
  %1082 = fmul fast float %1071, %1071
  %1083 = fmul fast float %1076, %1076
  %1084 = fmul fast float %1081, %1081
  br label %1101

; <label>:1085                                    ; preds = %1048
  %1086 = fmul fast float %229, %229
  %1087 = fmul fast float %233, %233
  %1088 = fmul fast float %237, %237
  %1089 = fadd fast float %1086, -1.000000e+00
  %1090 = fadd fast float %1087, -1.000000e+00
  %1091 = fadd fast float %1088, -1.000000e+00
  %1092 = fmul fast float %940, %1089
  %1093 = fmul fast float %940, %1090
  %1094 = fmul fast float %940, %1091
  %1095 = fadd fast float %1092, 1.000000e+00
  %1096 = fadd fast float %1093, 1.000000e+00
  %1097 = fadd fast float %1094, 1.000000e+00
  %1098 = fmul fast float %1095, %916
  %1099 = fmul fast float %1096, %917
  %1100 = fmul fast float %1097, %918
  br label %1101

; <label>:1101                                    ; preds = %1085, %1051, %945, %903
  %1102 = phi float [ %1047, %945 ], [ %927, %1051 ], [ %927, %1085 ], [ 0x3FA23C0BE0000000, %903 ]
  %1103 = phi float [ %1039, %945 ], [ %1082, %1051 ], [ %1098, %1085 ], [ 1.000000e+00, %903 ]
  %1104 = phi float [ %1040, %945 ], [ %1083, %1051 ], [ %1099, %1085 ], [ 1.000000e+00, %903 ]
  %1105 = phi float [ %1041, %945 ], [ %1084, %1051 ], [ %1100, %1085 ], [ 1.000000e+00, %903 ]
  %1106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.i32 %1106, 1
  %1108 = and i32 %1107, 1
  %1109 = icmp ne i32 %1108, 0
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 32
  %1113 = icmp ne i32 %1112, 0
  %1114 = and i1 %1109, %1113
  %1115 = select i1 %1114, float 1.000000e+00, float %1103
  %1116 = select i1 %1114, float 0x3FD3333340000000, float %1104
  %1117 = select i1 %1114, float 0x3FD3333340000000, float %1105
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 32
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1191, label %1122

; <label>:1122                                    ; preds = %1101
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %1126, 0
  %1128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1128, %dx.types.Handle %59, float %831, float %832, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = extractvalue %dx.types.ResRet.f32 %1129, 3
  %1134 = and i32 %1124, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = lshr i32 %1124, 8
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = lshr i32 %1124, 16
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1141, 0x3F70101000000000
  %1143 = fmul fast float %1130, %1135
  %1144 = fadd fast float %1143, %1138
  %1145 = fmul fast float %1144, 0x3F70101000000000
  %1146 = fadd fast float %1131, -5.000000e-01
  %1147 = fadd fast float %1133, -5.000000e-01
  %1148 = fmul fast float %1146, %1142
  %1149 = fmul fast float %1147, %1142
  %1150 = fadd fast float %1148, 5.000000e-01
  %1151 = fadd fast float %1149, 5.000000e-01
  %1152 = fmul fast float %1150, 2.000000e+00
  %1153 = fadd fast float %1152, -1.000000e+00
  %1154 = fmul fast float %1151, 2.000000e+00
  %1155 = fadd fast float %1154, -1.000000e+00
  %1156 = fadd fast float %1153, %1155
  %1157 = fmul fast float %1156, 5.000000e-01
  %1158 = fsub fast float %1153, %1155
  %1159 = fmul fast float %1158, 5.000000e-01
  %1160 = call float @dx.op.unary.f32(i32 6, float %1157)  ; FAbs(value)
  %1161 = fsub fast float 1.000000e+00, %1160
  %1162 = call float @dx.op.unary.f32(i32 6, float %1159)  ; FAbs(value)
  %1163 = fsub fast float %1161, %1162
  %1164 = call float @dx.op.dot3.f32(i32 55, float %1157, float %1159, float %1163, float %1157, float %1159, float %1163)  ; Dot3(ax,ay,az,bx,by,bz)
  %1165 = call float @dx.op.unary.f32(i32 25, float %1164)  ; Rsqrt(value)
  %1166 = fmul fast float %1157, %1165
  %1167 = fmul fast float %1159, %1165
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 67108864
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1187, label %1172

; <label>:1172                                    ; preds = %1122
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1174, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fsub fast float %1145, %1182
  %1184 = fmul fast float %1183, %1176
  %1185 = fadd fast float %1184, %1180
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  br label %1187

; <label>:1187                                    ; preds = %1172, %1122
  %1188 = phi float [ %1186, %1172 ], [ %1145, %1122 ]
  %1189 = call float @dx.op.dot2.f32(i32 54, float %1166, float %1167, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %1190 = call float @dx.op.dot2.f32(i32 54, float %1166, float %1167, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %1191

; <label>:1191                                    ; preds = %1187, %1101
  %1192 = phi float [ %1188, %1187 ], [ 0x3FD6666660000000, %1101 ]
  %1193 = phi float [ %1189, %1187 ], [ 0.000000e+00, %1101 ]
  %1194 = phi float [ %1190, %1187 ], [ 0.000000e+00, %1101 ]
  %1195 = phi float [ %1132, %1187 ], [ 1.000000e+00, %1101 ]
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = lshr i32 %1197, 22
  %1199 = shl nuw nsw i32 %1198, 5
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 64
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1237, label %1205

; <label>:1205                                    ; preds = %1191
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %1207, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 131072
  %1213 = icmp eq i32 %1212, 0
  %1214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1209, %dx.types.Handle %59, float %831, float %832, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = fmul fast float %1215, %218
  %1219 = fmul fast float %1216, %221
  %1220 = fmul fast float %1217, %224
  br i1 %1213, label %1227, label %1221

; <label>:1221                                    ; preds = %1205
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = fmul fast float %1223, %1218
  %1225 = fmul fast float %1223, %1219
  %1226 = fmul fast float %1223, %1220
  br label %1227

; <label>:1227                                    ; preds = %1221, %1205
  %1228 = phi float [ %1224, %1221 ], [ %1218, %1205 ]
  %1229 = phi float [ %1225, %1221 ], [ %1219, %1205 ]
  %1230 = phi float [ %1226, %1221 ], [ %1220, %1205 ]
  %1231 = fmul fast float %1228, %1200
  %1232 = select i1 %161, float %1231, float %1228
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1229, float %1230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = select i1 %161, float 0.000000e+00, float %1228
  %1235 = select i1 %161, float %1233, float %1229
  %1236 = select i1 %161, float 0.000000e+00, float %1230
  br label %1237

; <label>:1237                                    ; preds = %1227, %1191
  %1238 = phi float [ %1234, %1227 ], [ 0.000000e+00, %1191 ]
  %1239 = phi float [ %1235, %1227 ], [ 0.000000e+00, %1191 ]
  %1240 = phi float [ %1236, %1227 ], [ 0.000000e+00, %1191 ]
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = lshr i32 %1242, 8
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1249 = fmul fast float %1247, %1248
  %1250 = fadd fast float %1249, %1244
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  br i1 %738, label %1253, label %1261

; <label>:1253                                    ; preds = %1237
  %1254 = fsub fast float 1.000000e+00, %901
  %1255 = fmul fast float %1254, %726
  %1256 = fmul fast float %1254, %727
  %1257 = fmul fast float %1254, %728
  %1258 = fmul fast float %1254, %729
  %1259 = fmul fast float %1254, %730
  %1260 = fmul fast float %1254, %731
  br label %1261

; <label>:1261                                    ; preds = %1253, %1237
  %1262 = phi float [ %1255, %1253 ], [ %726, %1237 ]
  %1263 = phi float [ %1256, %1253 ], [ %727, %1237 ]
  %1264 = phi float [ %1257, %1253 ], [ %728, %1237 ]
  %1265 = phi float [ %1258, %1253 ], [ %729, %1237 ]
  %1266 = phi float [ %1259, %1253 ], [ %730, %1237 ]
  %1267 = phi float [ %1260, %1253 ], [ %731, %1237 ]
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = and i32 %1269, 3
  %1271 = icmp eq i32 %1270, 3
  br i1 %1271, label %1350, label %1272

; <label>:1272                                    ; preds = %1261
  %1273 = and i32 %1269, 16
  %1274 = icmp ne i32 %1273, 0
  %1275 = select i1 %1274, float %901, float 0.000000e+00
  %1276 = icmp eq i32 %1270, 0
  br i1 %1276, label %1277, label %1305

; <label>:1277                                    ; preds = %1272
  %1278 = and i32 %1269, 64
  %1279 = icmp ne i32 %1278, 0
  %1280 = select i1 %1279, float %901, float 0.000000e+00
  %1281 = fsub fast float %1115, %1262
  %1282 = fsub fast float %1116, %1263
  %1283 = fsub fast float %1117, %1264
  %1284 = fmul fast float %1275, %1281
  %1285 = fmul fast float %1275, %1282
  %1286 = fmul fast float %1275, %1283
  %1287 = fadd fast float %1284, %1262
  %1288 = fadd fast float %1285, %1263
  %1289 = fadd fast float %1286, %1264
  %1290 = fsub fast float %1102, %732
  %1291 = fmul fast float %1275, %1290
  %1292 = fadd fast float %1291, %732
  %1293 = fsub fast float %1238, %1265
  %1294 = fsub fast float %1239, %1266
  %1295 = fsub fast float %1240, %1267
  %1296 = fmul fast float %1280, %1293
  %1297 = fmul fast float %1280, %1294
  %1298 = fmul fast float %1280, %1295
  %1299 = fadd fast float %1296, %1265
  %1300 = fadd fast float %1297, %1266
  %1301 = fadd fast float %1298, %1267
  %1302 = fsub fast float %1252, %736
  %1303 = fmul fast float %1275, %1302
  %1304 = fadd fast float %1303, %736
  br label %1350

; <label>:1305                                    ; preds = %1272
  %1306 = icmp eq i32 %1270, 1
  br i1 %1306, label %1307, label %1320

; <label>:1307                                    ; preds = %1305
  %1308 = fadd fast float %1115, -1.000000e+00
  %1309 = fadd fast float %1116, -1.000000e+00
  %1310 = fadd fast float %1117, -1.000000e+00
  %1311 = fmul fast float %1275, %1308
  %1312 = fmul fast float %1275, %1309
  %1313 = fmul fast float %1275, %1310
  %1314 = fadd fast float %1311, 1.000000e+00
  %1315 = fadd fast float %1312, 1.000000e+00
  %1316 = fadd fast float %1313, 1.000000e+00
  %1317 = fmul fast float %1314, %1262
  %1318 = fmul fast float %1315, %1263
  %1319 = fmul fast float %1316, %1264
  br label %1350

; <label>:1320                                    ; preds = %1305
  %1321 = icmp eq i32 %1270, 2
  br i1 %1321, label %1322, label %1350

; <label>:1322                                    ; preds = %1320
  %1323 = call float @dx.op.unary.f32(i32 24, float %1115)  ; Sqrt(value)
  %1324 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1325 = call float @dx.op.unary.f32(i32 24, float %1117)  ; Sqrt(value)
  %1326 = fadd fast float %1323, -5.000000e-01
  %1327 = fadd fast float %1324, -5.000000e-01
  %1328 = fadd fast float %1325, -5.000000e-01
  %1329 = fmul fast float %1326, %1275
  %1330 = fmul fast float %1327, %1275
  %1331 = fmul fast float %1328, %1275
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = fmul fast float %1332, 2.000000e+00
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1336, %1262
  %1338 = fadd fast float %1337, %1335
  %1339 = fmul fast float %1338, %1262
  %1340 = fmul fast float %1333, 2.000000e+00
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1341, %1263
  %1343 = fadd fast float %1342, %1340
  %1344 = fmul fast float %1343, %1263
  %1345 = fmul fast float %1334, 2.000000e+00
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1346, %1264
  %1348 = fadd fast float %1347, %1345
  %1349 = fmul fast float %1348, %1264
  br label %1350

; <label>:1350                                    ; preds = %1322, %1320, %1307, %1277, %1261
  %1351 = phi float [ %1262, %1261 ], [ %1339, %1322 ], [ %1262, %1320 ], [ %1317, %1307 ], [ %1287, %1277 ]
  %1352 = phi float [ %1263, %1261 ], [ %1344, %1322 ], [ %1263, %1320 ], [ %1318, %1307 ], [ %1288, %1277 ]
  %1353 = phi float [ %1264, %1261 ], [ %1349, %1322 ], [ %1264, %1320 ], [ %1319, %1307 ], [ %1289, %1277 ]
  %1354 = phi float [ %1265, %1261 ], [ %1265, %1322 ], [ %1265, %1320 ], [ %1265, %1307 ], [ %1299, %1277 ]
  %1355 = phi float [ %1266, %1261 ], [ %1266, %1322 ], [ %1266, %1320 ], [ %1266, %1307 ], [ %1300, %1277 ]
  %1356 = phi float [ %1267, %1261 ], [ %1267, %1322 ], [ %1267, %1320 ], [ %1267, %1307 ], [ %1301, %1277 ]
  %1357 = phi float [ %732, %1261 ], [ %732, %1322 ], [ %732, %1320 ], [ %732, %1307 ], [ %1292, %1277 ]
  %1358 = phi float [ %736, %1261 ], [ %736, %1322 ], [ %736, %1320 ], [ %736, %1307 ], [ %1304, %1277 ]
  %1359 = and i32 %1269, 12
  %1360 = icmp eq i32 %1359, 12
  br i1 %1360, label %1433, label %1361

; <label>:1361                                    ; preds = %1350
  %1362 = and i32 %1269, 2097184
  %1363 = icmp eq i32 %1362, 2097184
  %1364 = select i1 %1363, float %901, float 0.000000e+00
  %1365 = and i32 %1269, 4194336
  %1366 = icmp eq i32 %1365, 4194336
  %1367 = select i1 %1366, float %901, float 0.000000e+00
  %1368 = and i32 %1269, 8388640
  %1369 = icmp eq i32 %1368, 8388640
  %1370 = select i1 %1369, float %901, float 0.000000e+00
  %1371 = icmp eq i32 %1359, 0
  br i1 %1371, label %1372, label %1385

; <label>:1372                                    ; preds = %1361
  %1373 = fsub fast float %1193, %724
  %1374 = fsub fast float %1194, %725
  %1375 = fmul fast float %1364, %1373
  %1376 = fmul fast float %1364, %1374
  %1377 = fadd fast float %1375, %724
  %1378 = fadd fast float %1376, %725
  %1379 = fsub fast float %1195, %735
  %1380 = fmul fast float %1367, %1379
  %1381 = fadd fast float %1380, %735
  %1382 = fsub fast float %1192, %734
  %1383 = fmul fast float %1370, %1382
  %1384 = fadd fast float %1383, %734
  br label %1433

; <label>:1385                                    ; preds = %1361
  %1386 = icmp eq i32 %1359, 4
  br i1 %1386, label %1387, label %1419

; <label>:1387                                    ; preds = %1385
  %1388 = fmul fast float %1364, %1193
  %1389 = fmul fast float %1364, %1194
  %1390 = fadd fast float %1388, %724
  %1391 = fadd fast float %1389, %725
  %1392 = call float @dx.op.binary.f32(i32 36, float %735, float %1195)  ; FMin(a,b)
  %1393 = fsub fast float %1392, %735
  %1394 = fmul fast float %1393, %1367
  %1395 = fadd fast float %1394, %735
  %1396 = fadd fast float %1192, %734
  %1397 = fmul fast float %1396, 0x3FF337FAE0000000
  %1398 = fmul fast float %734, %734
  %1399 = fmul fast float %1192, %1192
  %1400 = fadd fast float %1399, %1398
  %1401 = fmul fast float %1400, 0x3FE5152B00000000
  %1402 = fmul fast float %734, 0xBFCC1F85E0000000
  %1403 = fmul fast float %1402, %1192
  %1404 = fadd fast float %1403, 0xBFE1363700000000
  %1405 = fadd fast float %1404, %1397
  %1406 = fsub fast float %1405, %1401
  %1407 = fmul fast float %1396, 0x3FBA6F0D00000000
  %1408 = fmul fast float %1400, 0x3FD0432880000000
  %1409 = fmul fast float %734, 0xBFEF110800000000
  %1410 = fmul fast float %1409, %1192
  %1411 = fadd fast float %1410, 1.000000e+00
  %1412 = fsub fast float %1411, %1407
  %1413 = fadd fast float %1412, %1408
  %1414 = fdiv fast float %1406, %1413
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fsub fast float %1415, %734
  %1417 = fmul fast float %1416, %1370
  %1418 = fadd fast float %1417, %734
  br label %1433

; <label>:1419                                    ; preds = %1385
  %1420 = icmp eq i32 %1359, 8
  br i1 %1420, label %1421, label %1433

; <label>:1421                                    ; preds = %1419
  %1422 = fmul fast float %1364, %1193
  %1423 = fmul fast float %1364, %1194
  %1424 = fadd fast float %1422, %724
  %1425 = fadd fast float %1423, %725
  %1426 = call float @dx.op.binary.f32(i32 36, float %735, float %1195)  ; FMin(a,b)
  %1427 = fsub fast float %1426, %735
  %1428 = fmul fast float %1427, %1367
  %1429 = fadd fast float %1428, %735
  %1430 = fsub fast float %1192, %734
  %1431 = fmul fast float %1370, %1430
  %1432 = fadd fast float %1431, %734
  br label %1433

; <label>:1433                                    ; preds = %1421, %1419, %1387, %1372, %1350, %900, %737, %723
  %1434 = phi float [ %724, %1350 ], [ %724, %900 ], [ %724, %723 ], [ %724, %737 ], [ %1377, %1372 ], [ %1390, %1387 ], [ %724, %1419 ], [ %1424, %1421 ]
  %1435 = phi float [ %725, %1350 ], [ %725, %900 ], [ %725, %723 ], [ %725, %737 ], [ %1378, %1372 ], [ %1391, %1387 ], [ %725, %1419 ], [ %1425, %1421 ]
  %1436 = phi float [ %1351, %1350 ], [ %726, %900 ], [ %726, %723 ], [ %726, %737 ], [ %1351, %1372 ], [ %1351, %1387 ], [ %1351, %1419 ], [ %1351, %1421 ]
  %1437 = phi float [ %1352, %1350 ], [ %727, %900 ], [ %727, %723 ], [ %727, %737 ], [ %1352, %1372 ], [ %1352, %1387 ], [ %1352, %1419 ], [ %1352, %1421 ]
  %1438 = phi float [ %1353, %1350 ], [ %728, %900 ], [ %728, %723 ], [ %728, %737 ], [ %1353, %1372 ], [ %1353, %1387 ], [ %1353, %1419 ], [ %1353, %1421 ]
  %1439 = phi float [ %1354, %1350 ], [ %729, %900 ], [ %729, %723 ], [ %729, %737 ], [ %1354, %1372 ], [ %1354, %1387 ], [ %1354, %1419 ], [ %1354, %1421 ]
  %1440 = phi float [ %1355, %1350 ], [ %730, %900 ], [ %730, %723 ], [ %730, %737 ], [ %1355, %1372 ], [ %1355, %1387 ], [ %1355, %1419 ], [ %1355, %1421 ]
  %1441 = phi float [ %1356, %1350 ], [ %731, %900 ], [ %731, %723 ], [ %731, %737 ], [ %1356, %1372 ], [ %1356, %1387 ], [ %1356, %1419 ], [ %1356, %1421 ]
  %1442 = phi float [ %1357, %1350 ], [ %732, %900 ], [ %732, %723 ], [ %732, %737 ], [ %1357, %1372 ], [ %1357, %1387 ], [ %1357, %1419 ], [ %1357, %1421 ]
  %1443 = phi float [ %734, %1350 ], [ %734, %900 ], [ %734, %723 ], [ %734, %737 ], [ %1384, %1372 ], [ %1418, %1387 ], [ %734, %1419 ], [ %1432, %1421 ]
  %1444 = phi float [ %735, %1350 ], [ %735, %900 ], [ %735, %723 ], [ %735, %737 ], [ %1381, %1372 ], [ %1395, %1387 ], [ %735, %1419 ], [ %1429, %1421 ]
  %1445 = phi float [ %1358, %1350 ], [ %736, %900 ], [ %736, %723 ], [ %736, %737 ], [ %1358, %1372 ], [ %1358, %1387 ], [ %1358, %1419 ], [ %1358, %1421 ]
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = call float @dx.op.dot2.f32(i32 54, float %1434, float %1435, float %1434, float %1435)  ; Dot2(ax,ay,bx,by)
  %1449 = fmul fast float %1448, 0x3FE3333340000000
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1435, float %1450, float %1434, float %1435, float %1450)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = call float @dx.op.unary.f32(i32 25, float %1451)  ; Rsqrt(value)
  %1453 = fmul fast float %1452, %1434
  %1454 = fmul fast float %1452, %1435
  %1455 = fmul fast float %1450, %1452
  %1456 = fmul fast float %1455, %66
  %1457 = fmul fast float %1455, %67
  %1458 = fmul fast float %1455, %68
  %1459 = fmul fast float %1453, %47
  %1460 = fmul fast float %1453, %48
  %1461 = fmul fast float %1453, %49
  %1462 = fmul fast float %71, %50
  %1463 = fmul fast float %1462, %1454
  %1464 = fmul fast float %74, %50
  %1465 = fmul fast float %1464, %1454
  %1466 = fmul fast float %77, %50
  %1467 = fmul fast float %1466, %1454
  %1468 = fadd fast float %1463, %1459
  %1469 = fmul fast float %1468, %65
  %1470 = fadd fast float %1469, %1456
  %1471 = fadd fast float %1465, %1460
  %1472 = fmul fast float %1471, %65
  %1473 = fadd fast float %1472, %1457
  %1474 = fadd fast float %1467, %1461
  %1475 = fmul fast float %1474, %65
  %1476 = fadd fast float %1475, %1458
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1470, float %1473, float %1476, float %1470, float %1473, float %1476)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = call float @dx.op.unary.f32(i32 25, float %1477)  ; Rsqrt(value)
  %1479 = fmul fast float %1470, %1478
  %1480 = fmul fast float %1473, %1478
  %1481 = fmul fast float %1476, %1478
  %1482 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1483 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %1484 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %1485 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1486 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %1487 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %1488 = fadd fast float %1482, %119
  %1489 = fadd fast float %1483, %120
  %1490 = fadd fast float %1484, %121
  %1491 = fadd fast float %1485, %119
  %1492 = fadd fast float %1486, %120
  %1493 = fadd fast float %1487, %121
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %1497 = extractvalue %dx.types.CBufRet.f32 %1494, 2
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1500 = extractvalue %dx.types.CBufRet.f32 %1498, 3
  %1501 = fmul fast float %1495, %63
  %1502 = fmul fast float %1501, %1499
  %1503 = fmul fast float %1496, %64
  %1504 = fmul fast float %1503, %1500
  %1505 = fptoui float %1502 to i32
  %1506 = fptoui float %1504 to i32
  %1507 = fadd fast float %1495, -1.000000e+00
  %1508 = fadd fast float %1496, -1.000000e+00
  %1509 = fptoui float %1507 to i32
  %1510 = fptoui float %1508 to i32
  %1511 = call i32 @dx.op.binary.i32(i32 40, i32 %1505, i32 %1509)  ; UMin(a,b)
  %1512 = call i32 @dx.op.binary.i32(i32 40, i32 %1506, i32 %1510)  ; UMin(a,b)
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1515 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1516 = fmul fast float %1514, %58
  %1517 = fsub fast float %1516, %1515
  %1518 = fadd fast float %1497, -1.000000e+00
  %1519 = call float @dx.op.binary.f32(i32 36, float %1517, float %1518)  ; FMin(a,b)
  %1520 = fptoui float %1519 to i32
  %1521 = fptoui float %1495 to i32
  %1522 = fptoui float %1496 to i32
  %1523 = mul i32 %1520, %1522
  %1524 = add i32 %1523, %1512
  %1525 = mul i32 %1524, %1521
  %1526 = add i32 %1525, %1511
  %1527 = shl i32 %1526, 2
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 1023
  %1531 = lshr i32 %1529, 10
  %1532 = icmp eq i32 %1530, 0
  br i1 %1532, label %1958, label %1533

; <label>:1533                                    ; preds = %1433
  %1534 = and i32 %1529, 1023
  br label %1535

; <label>:1535                                    ; preds = %1661, %1533
  %1536 = phi float [ %1662, %1661 ], [ 0.000000e+00, %1533 ]
  %1537 = phi float [ %1663, %1661 ], [ %1447, %1533 ]
  %1538 = phi float [ %1664, %1661 ], [ %1445, %1533 ]
  %1539 = phi float [ %1665, %1661 ], [ 0.000000e+00, %1533 ]
  %1540 = phi float [ %1666, %1661 ], [ 0.000000e+00, %1533 ]
  %1541 = phi float [ %1667, %1661 ], [ %1439, %1533 ]
  %1542 = phi float [ %1668, %1661 ], [ %1440, %1533 ]
  %1543 = phi float [ %1669, %1661 ], [ %1441, %1533 ]
  %1544 = phi float [ %1670, %1661 ], [ %1479, %1533 ]
  %1545 = phi float [ %1671, %1661 ], [ %1480, %1533 ]
  %1546 = phi float [ %1672, %1661 ], [ %1481, %1533 ]
  %1547 = phi float [ %1673, %1661 ], [ %1444, %1533 ]
  %1548 = phi float [ %1674, %1661 ], [ %1443, %1533 ]
  %1549 = phi float [ %1675, %1661 ], [ 0.000000e+00, %1533 ]
  %1550 = phi float [ %1676, %1661 ], [ %1442, %1533 ]
  %1551 = phi float [ %1677, %1661 ], [ %1436, %1533 ]
  %1552 = phi float [ %1678, %1661 ], [ %1437, %1533 ]
  %1553 = phi float [ %1679, %1661 ], [ %1438, %1533 ]
  %1554 = phi i32 [ %1611, %1661 ], [ 0, %1533 ]
  %1555 = add nuw nsw i32 %1554, %1531
  %1556 = shl i32 %1555, 2
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = shl i32 %1558, 8
  %1560 = or i32 %1559, 48
  %1561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = extractvalue %dx.types.ResRet.f32 %1561, 3
  %1566 = or i32 %1559, 64
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = extractvalue %dx.types.ResRet.i32 %1567, 1
  %1570 = or i32 %1559, 80
  %1571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.f32 %1571, 2
  %1573 = extractvalue %dx.types.ResRet.f32 %1571, 3
  %1574 = or i32 %1559, 96
  %1575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.ResRet.f32 %1575, 2
  %1579 = extractvalue %dx.types.ResRet.f32 %1575, 3
  %1580 = or i32 %1559, 112
  %1581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 2
  %1583 = or i32 %1559, 128
  %1584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.ResRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.ResRet.f32 %1584, 2
  %1588 = extractvalue %dx.types.ResRet.f32 %1584, 3
  %1589 = or i32 %1559, 144
  %1590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = extractvalue %dx.types.ResRet.f32 %1590, 3
  %1595 = or i32 %1559, 160
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = extractvalue %dx.types.ResRet.f32 %1596, 3
  %1601 = or i32 %1559, 192
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = or i32 %1559, 208
  %1605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = or i32 %1559, 248
  %1608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.f32 %1608, 0
  %1610 = extractvalue %dx.types.ResRet.f32 %1608, 1
  %1611 = add nuw nsw i32 %1554, 1
  %1612 = bitcast float %1565 to i32
  %1613 = and i32 %1612, 512
  %1614 = icmp eq i32 %1613, 0
  %1615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.ResRet.f32 %1615, 1
  %1618 = extractvalue %dx.types.ResRet.f32 %1615, 2
  %1619 = extractvalue %dx.types.ResRet.f32 %1615, 3
  %1620 = call float @dx.op.dot4.f32(i32 56, float %1616, float %1617, float %1618, float %1619, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1621 = or i32 %1559, 16
  %1622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = extractvalue %dx.types.ResRet.f32 %1622, 3
  %1627 = call float @dx.op.dot4.f32(i32 56, float %1623, float %1624, float %1625, float %1626, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1628 = or i32 %1559, 32
  %1629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = extractvalue %dx.types.ResRet.f32 %1629, 3
  %1634 = call float @dx.op.dot4.f32(i32 56, float %1630, float %1631, float %1632, float %1633, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1635 = call float @dx.op.unary.f32(i32 27, float %1620)  ; Round_ni(value)
  %1636 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1637 = call float @dx.op.unary.f32(i32 27, float %1627)  ; Round_ni(value)
  %1638 = call float @dx.op.unary.f32(i32 6, float %1637)  ; FAbs(value)
  %1639 = call float @dx.op.unary.f32(i32 6, float %1634)  ; FAbs(value)
  %1640 = call float @dx.op.unary.f32(i32 27, float %1639)  ; Round_ni(value)
  %1641 = fadd fast float %1638, %1636
  %1642 = fadd fast float %1641, %1640
  %1643 = fcmp fast oeq float %1642, 0.000000e+00
  %1644 = call float @dx.op.dot4.f32(i32 56, float %1616, float %1617, float %1618, float %1619, float %1488, float %1489, float %1490, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1645 = call float @dx.op.dot4.f32(i32 56, float %1623, float %1624, float %1625, float %1626, float %1488, float %1489, float %1490, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1646 = call float @dx.op.dot4.f32(i32 56, float %1616, float %1617, float %1618, float %1619, float %1491, float %1492, float %1493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1647 = call float @dx.op.dot4.f32(i32 56, float %1623, float %1624, float %1625, float %1626, float %1491, float %1492, float %1493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1648 = fsub fast float %1644, %1620
  %1649 = fsub fast float %1646, %1620
  %1650 = fsub fast float %1645, %1627
  %1651 = fsub fast float %1647, %1627
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1563, float %1564, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 2
  %1655 = fadd fast float %1654, %1652
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1653, 0
  %1658 = fcmp fast ogt float %1656, %1657
  %1659 = and i1 %1643, %1658
  %1660 = and i1 %1614, %1659
  br i1 %1660, label %1681, label %1661

; <label>:1661                                    ; preds = %1944, %1762, %1681, %1535
  %1662 = phi float [ %1536, %1681 ], [ %1765, %1762 ], [ %1765, %1944 ], [ %1536, %1535 ]
  %1663 = phi float [ %1537, %1681 ], [ %1537, %1762 ], [ %1919, %1944 ], [ %1537, %1535 ]
  %1664 = phi float [ %1538, %1681 ], [ %1538, %1762 ], [ %1917, %1944 ], [ %1538, %1535 ]
  %1665 = phi float [ %1539, %1681 ], [ %1539, %1762 ], [ %1889, %1944 ], [ %1539, %1535 ]
  %1666 = phi float [ %1540, %1681 ], [ %1540, %1762 ], [ %1887, %1944 ], [ %1540, %1535 ]
  %1667 = phi float [ %1541, %1681 ], [ %1541, %1762 ], [ %1954, %1944 ], [ %1541, %1535 ]
  %1668 = phi float [ %1542, %1681 ], [ %1542, %1762 ], [ %1955, %1944 ], [ %1542, %1535 ]
  %1669 = phi float [ %1543, %1681 ], [ %1543, %1762 ], [ %1956, %1944 ], [ %1543, %1535 ]
  %1670 = phi float [ %1544, %1681 ], [ %1544, %1762 ], [ %1868, %1944 ], [ %1544, %1535 ]
  %1671 = phi float [ %1545, %1681 ], [ %1545, %1762 ], [ %1869, %1944 ], [ %1545, %1535 ]
  %1672 = phi float [ %1546, %1681 ], [ %1546, %1762 ], [ %1870, %1944 ], [ %1546, %1535 ]
  %1673 = phi float [ %1547, %1681 ], [ %1547, %1762 ], [ %1897, %1944 ], [ %1547, %1535 ]
  %1674 = phi float [ %1548, %1681 ], [ %1548, %1762 ], [ %1894, %1944 ], [ %1548, %1535 ]
  %1675 = phi float [ %1549, %1681 ], [ %1549, %1762 ], [ %1891, %1944 ], [ %1549, %1535 ]
  %1676 = phi float [ %1550, %1681 ], [ %1550, %1762 ], [ %1885, %1944 ], [ %1550, %1535 ]
  %1677 = phi float [ %1551, %1681 ], [ %1551, %1762 ], [ %1880, %1944 ], [ %1551, %1535 ]
  %1678 = phi float [ %1552, %1681 ], [ %1552, %1762 ], [ %1881, %1944 ], [ %1552, %1535 ]
  %1679 = phi float [ %1553, %1681 ], [ %1553, %1762 ], [ %1882, %1944 ], [ %1553, %1535 ]
  %1680 = icmp eq i32 %1611, %1534
  br i1 %1680, label %1957, label %1535

; <label>:1681                                    ; preds = %1535
  %1682 = extractvalue %dx.types.ResRet.f32 %1581, 3
  %1683 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1684 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1685 = extractvalue %dx.types.ResRet.f32 %1571, 1
  %1686 = extractvalue %dx.types.ResRet.f32 %1571, 0
  %1687 = extractvalue %dx.types.ResRet.i32 %1567, 3
  %1688 = extractvalue %dx.types.ResRet.i32 %1567, 2
  %1689 = add i32 %1687, 0
  %1690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1689, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1692 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1690, %dx.types.Handle %1691, float %1620, float %1627, float undef, float undef, i32 0, i32 0, i32 undef, float %1648, float %1650, float undef, float %1649, float %1651, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1693 = extractvalue %dx.types.ResRet.f32 %1692, 0
  %1694 = fmul fast float %1693, %1686
  %1695 = fadd fast float %1694, %1685
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = fmul fast float %1620, %1576
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1577, float %1627, float %1697)  ; FMad(a,b,c)
  %1699 = fadd fast float %1698, %1684
  %1700 = fmul fast float %1620, %1578
  %1701 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1627, float %1700)  ; FMad(a,b,c)
  %1702 = fadd fast float %1701, %1683
  %1703 = fmul fast float %1648, %1576
  %1704 = call float @dx.op.tertiary.f32(i32 46, float %1577, float %1650, float %1703)  ; FMad(a,b,c)
  %1705 = fmul fast float %1648, %1578
  %1706 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1650, float %1705)  ; FMad(a,b,c)
  %1707 = fmul fast float %1649, %1576
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1577, float %1651, float %1707)  ; FMad(a,b,c)
  %1709 = fmul fast float %1649, %1578
  %1710 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1651, float %1709)  ; FMad(a,b,c)
  %1711 = add i32 %1688, 0
  %1712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1711, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1713 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1712, %dx.types.Handle %1691, float %1699, float %1702, float undef, float undef, i32 0, i32 0, i32 undef, float %1704, float %1706, float undef, float %1708, float %1710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = and i32 %1612, 1024
  %1716 = icmp ne i32 %1715, 0
  %1717 = fcmp fast ogt float %1714, 0x3FE0101020000000
  %1718 = uitofp i1 %1717 to float
  %1719 = select i1 %1716, float %1718, float %1714
  %1720 = and i32 %1612, 8192
  %1721 = icmp ne i32 %1720, 0
  %1722 = select i1 %1721, float %1682, float 1.000000e+00
  %1723 = fmul fast float %1620, 2.000000e+00
  %1724 = fadd fast float %1723, -1.000000e+00
  %1725 = call float @dx.op.unary.f32(i32 6, float %1724)  ; FAbs(value)
  %1726 = fmul fast float %1725, %1609
  %1727 = fsub fast float %1726, %1609
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fmul fast float %1627, 2.000000e+00
  %1730 = fadd fast float %1729, -1.000000e+00
  %1731 = call float @dx.op.unary.f32(i32 6, float %1730)  ; FAbs(value)
  %1732 = fmul fast float %1731, %1610
  %1733 = fsub fast float %1732, %1610
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1735 = fmul fast float %1639, %1572
  %1736 = fsub fast float %1735, %1572
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fmul fast float %1696, %1722
  %1739 = fmul fast float %1738, %1693
  %1740 = fmul fast float %1739, %1728
  %1741 = fmul fast float %1740, %1719
  %1742 = fmul fast float %1741, %1734
  %1743 = fmul fast float %1742, %1737
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1746 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1747 = fsub fast float %1656, %1746
  %1748 = fmul fast float %1747, %1745
  %1749 = call float @dx.op.unary.f32(i32 7, float %1748)  ; Saturate(value)
  %1750 = fmul fast float %1743, %1573
  %1751 = fadd fast float %1743, %1573
  %1752 = fmul fast float %1751, %1582
  %1753 = fsub fast float %1752, %1582
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = and i32 %1612, 128
  %1756 = icmp ne i32 %1755, 0
  %1757 = select i1 %1756, float %1754, float %1750
  %1758 = fmul fast float %1757, %1749
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 0
  %1761 = fcmp fast ugt float %1758, %1760
  br i1 %1761, label %1762, label %1661

; <label>:1762                                    ; preds = %1681
  %1763 = select i1 %1721, float %1758, float 0.000000e+00
  %1764 = fadd fast float %1763, %1536
  %1765 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  br i1 %1721, label %1661, label %1766

; <label>:1766                                    ; preds = %1762
  %1767 = and i32 %1612, 4
  %1768 = and i32 %1612, 8
  %1769 = add i32 %1568, 0
  %1770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1769, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1772 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1770, %dx.types.Handle %1771, float %1699, float %1702, float undef, float undef, i32 0, i32 0, i32 undef, float %1704, float %1706, float undef, float %1708, float %1710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.ResRet.f32 %1772, 3
  %1777 = bitcast float %1594 to i32
  %1778 = and i32 %1777, 255
  %1779 = uitofp i32 %1778 to float
  %1780 = lshr i32 %1777, 8
  %1781 = and i32 %1780, 255
  %1782 = uitofp i32 %1781 to float
  %1783 = fmul fast float %1776, %1779
  %1784 = fadd fast float %1783, %1782
  %1785 = fmul fast float %1784, 0x3F70101000000000
  %1786 = add i32 %1569, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1786, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1787, %dx.types.Handle %1771, float %1699, float %1702, float undef, float undef, i32 0, i32 0, i32 undef, float %1704, float %1706, float undef, float %1708, float %1710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = bitcast float %1588 to i32
  %1794 = and i32 %1793, 255
  %1795 = uitofp i32 %1794 to float
  %1796 = lshr i32 %1793, 8
  %1797 = and i32 %1796, 255
  %1798 = uitofp i32 %1797 to float
  %1799 = lshr i32 %1793, 16
  %1800 = and i32 %1799, 255
  %1801 = uitofp i32 %1800 to float
  %1802 = fmul fast float %1801, 0x3F70101000000000
  %1803 = fmul fast float %1789, %1795
  %1804 = fadd fast float %1803, %1798
  %1805 = fmul fast float %1804, 0x3F70101000000000
  %1806 = fadd fast float %1790, -5.000000e-01
  %1807 = fadd fast float %1792, -5.000000e-01
  %1808 = fmul fast float %1806, %1802
  %1809 = fmul fast float %1807, %1802
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fadd fast float %1809, 5.000000e-01
  %1812 = fmul fast float %1773, %1597
  %1813 = fmul fast float %1774, %1598
  %1814 = fmul fast float %1775, %1599
  %1815 = fmul fast float %1810, 2.000000e+00
  %1816 = fadd fast float %1815, -1.000000e+00
  %1817 = fmul fast float %1811, 2.000000e+00
  %1818 = fadd fast float %1817, -1.000000e+00
  %1819 = fadd fast float %1816, %1818
  %1820 = fmul fast float %1819, 5.000000e-01
  %1821 = fsub fast float %1816, %1818
  %1822 = fmul fast float %1821, 5.000000e-01
  %1823 = call float @dx.op.unary.f32(i32 6, float %1820)  ; FAbs(value)
  %1824 = fsub fast float 1.000000e+00, %1823
  %1825 = call float @dx.op.unary.f32(i32 6, float %1822)  ; FAbs(value)
  %1826 = fsub fast float %1824, %1825
  %1827 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1822, float %1826, float %1820, float %1822, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %1828 = call float @dx.op.unary.f32(i32 25, float %1827)  ; Rsqrt(value)
  %1829 = fmul fast float %1820, %1828
  %1830 = fmul fast float %1822, %1828
  %1831 = fmul fast float %1828, %1826
  %1832 = fmul fast float %1831, %1562
  %1833 = fmul fast float %1831, %1563
  %1834 = fmul fast float %1831, %1564
  %1835 = fmul fast float %1829, %1585
  %1836 = fmul fast float %1829, %1586
  %1837 = fmul fast float %1829, %1587
  %1838 = fadd fast float %1835, %1832
  %1839 = fadd fast float %1836, %1833
  %1840 = fadd fast float %1837, %1834
  %1841 = fmul fast float %1830, %1591
  %1842 = fmul fast float %1830, %1592
  %1843 = fmul fast float %1830, %1593
  %1844 = fadd fast float %1838, %1841
  %1845 = fadd fast float %1839, %1842
  %1846 = fadd fast float %1840, %1843
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1844, float %1845, float %1846, float %1844, float %1845, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = call float @dx.op.unary.f32(i32 25, float %1847)  ; Rsqrt(value)
  %1849 = fmul fast float %1844, %1848
  %1850 = fmul fast float %1845, %1848
  %1851 = fmul fast float %1846, %1848
  %1852 = icmp ne i32 %1768, 0
  %1853 = select i1 %1852, float 1.000000e+00, float 0.000000e+00
  %1854 = fmul fast float %1758, %1853
  %1855 = and i32 %1612, 1
  %1856 = icmp eq i32 %1855, 0
  br i1 %1856, label %1857, label %1861

; <label>:1857                                    ; preds = %1766
  %1858 = fsub fast float %1849, %1544
  %1859 = fsub fast float %1850, %1545
  %1860 = fsub fast float %1851, %1546
  br label %1861

; <label>:1861                                    ; preds = %1857, %1766
  %1862 = phi float [ %1858, %1857 ], [ %1849, %1766 ]
  %1863 = phi float [ %1859, %1857 ], [ %1850, %1766 ]
  %1864 = phi float [ %1860, %1857 ], [ %1851, %1766 ]
  %1865 = fmul float %1864, %1854
  %1866 = fmul float %1863, %1854
  %1867 = fmul float %1862, %1854
  %1868 = fadd fast float %1867, %1544
  %1869 = fadd fast float %1866, %1545
  %1870 = fadd fast float %1865, %1546
  %1871 = icmp ne i32 %1767, 0
  %1872 = select i1 %1871, float 1.000000e+00, float 0.000000e+00
  %1873 = fmul fast float %1758, %1872
  %1874 = fsub fast float %1812, %1551
  %1875 = fsub fast float %1813, %1552
  %1876 = fsub fast float %1814, %1553
  %1877 = fmul fast float %1874, %1873
  %1878 = fmul fast float %1875, %1873
  %1879 = fmul fast float %1876, %1873
  %1880 = fadd fast float %1877, %1551
  %1881 = fadd fast float %1878, %1552
  %1882 = fadd fast float %1879, %1553
  %1883 = fsub fast float %1785, %1550
  %1884 = fmul fast float %1883, %1873
  %1885 = fadd fast float %1884, %1550
  %1886 = fmul fast float %1873, %1540
  %1887 = fsub fast float %1540, %1886
  %1888 = fmul fast float %1873, %1539
  %1889 = fsub fast float %1539, %1888
  %1890 = fadd fast float %1758, %1549
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = fsub fast float %1805, %1548
  %1893 = fmul fast float %1892, %1854
  %1894 = fadd fast float %1893, %1548
  %1895 = fsub fast float %1791, %1547
  %1896 = fmul fast float %1895, %1854
  %1897 = fadd fast float %1896, %1547
  %1898 = call float @dx.op.dot3.f32(i32 55, float %1812, float %1813, float %1814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.CBufRet.f32 %1899, 1
  %1902 = fmul fast float %1901, %1898
  %1903 = fadd fast float %1902, %1900
  %1904 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  %1905 = bitcast float %1600 to i32
  %1906 = and i32 %1905, 65535
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = lshr i32 %1905, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = fcmp fast oge float %1907, 0.000000e+00
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = select i1 %1910, float %1907, float %1912
  %1914 = fadd fast float %1913, %1909
  %1915 = fsub fast float %1904, %1538
  %1916 = fmul fast float %1915, %1758
  %1917 = fadd fast float %1916, %1538
  %1918 = fmul fast float %1914, %1758
  %1919 = call float @dx.op.binary.f32(i32 35, float %1537, float %1918)  ; FMax(a,b)
  %1920 = and i32 %1612, 16
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %1944, label %1922

; <label>:1922                                    ; preds = %1861
  %1923 = bitcast float %1606 to i32
  %1924 = add i32 %1603, 0
  %1925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1924, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1926 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1925, %dx.types.Handle %1771, float %1699, float %1702, float undef, float undef, i32 0, i32 0, i32 undef, float %1704, float %1706, float undef, float %1708, float %1710, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1927 = extractvalue %dx.types.ResRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.ResRet.f32 %1926, 1
  %1929 = extractvalue %dx.types.ResRet.f32 %1926, 2
  %1930 = and i32 %1923, 65535
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = fmul fast float %1927, %1597
  %1933 = fmul fast float %1928, %1598
  %1934 = fmul fast float %1929, %1599
  %1935 = and i32 %1612, 16384
  %1936 = icmp ne i32 %1935, 0
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = select i1 %1936, float %1938, float 1.000000e+00
  %1940 = fmul fast float %1939, %1931
  %1941 = fmul fast float %1932, %1940
  %1942 = fmul fast float %1933, %1940
  %1943 = fmul fast float %1934, %1940
  br label %1944

; <label>:1944                                    ; preds = %1922, %1861
  %1945 = phi float [ %1941, %1922 ], [ 0.000000e+00, %1861 ]
  %1946 = phi float [ %1942, %1922 ], [ 0.000000e+00, %1861 ]
  %1947 = phi float [ %1943, %1922 ], [ 0.000000e+00, %1861 ]
  %1948 = fsub fast float %1945, %1541
  %1949 = fsub fast float %1946, %1542
  %1950 = fsub fast float %1947, %1543
  %1951 = fmul fast float %1948, %1758
  %1952 = fmul fast float %1949, %1758
  %1953 = fmul fast float %1950, %1758
  %1954 = fadd fast float %1951, %1541
  %1955 = fadd fast float %1952, %1542
  %1956 = fadd fast float %1953, %1543
  br label %1661

; <label>:1957                                    ; preds = %1661
  br label %1958

; <label>:1958                                    ; preds = %1957, %1433
  %1959 = phi float [ 0.000000e+00, %1433 ], [ %1662, %1957 ]
  %1960 = phi float [ %1447, %1433 ], [ %1663, %1957 ]
  %1961 = phi float [ %1445, %1433 ], [ %1664, %1957 ]
  %1962 = phi float [ 0.000000e+00, %1433 ], [ %1665, %1957 ]
  %1963 = phi float [ 0.000000e+00, %1433 ], [ %1666, %1957 ]
  %1964 = phi float [ %1439, %1433 ], [ %1667, %1957 ]
  %1965 = phi float [ %1440, %1433 ], [ %1668, %1957 ]
  %1966 = phi float [ %1441, %1433 ], [ %1669, %1957 ]
  %1967 = phi float [ %1479, %1433 ], [ %1670, %1957 ]
  %1968 = phi float [ %1480, %1433 ], [ %1671, %1957 ]
  %1969 = phi float [ %1481, %1433 ], [ %1672, %1957 ]
  %1970 = phi float [ %1444, %1433 ], [ %1673, %1957 ]
  %1971 = phi float [ %1443, %1433 ], [ %1674, %1957 ]
  %1972 = phi float [ 0.000000e+00, %1433 ], [ %1675, %1957 ]
  %1973 = phi float [ %1442, %1433 ], [ %1676, %1957 ]
  %1974 = phi float [ %1436, %1433 ], [ %1677, %1957 ]
  %1975 = phi float [ %1437, %1433 ], [ %1678, %1957 ]
  %1976 = phi float [ %1438, %1433 ], [ %1679, %1957 ]
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1967, float %1968, float %1969, float %1967, float %1968, float %1969)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = call float @dx.op.unary.f32(i32 25, float %1977)  ; Rsqrt(value)
  %1979 = fmul fast float %1978, %1967
  %1980 = fmul fast float %1978, %1968
  %1981 = fmul fast float %1978, %1969
  %1982 = fadd fast float %1972, %733
  %1983 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1984 = call float @dx.op.dot3.f32(i32 55, float %1979, float %1980, float %1981, float %1979, float %1980, float %1981)  ; Dot3(ax,ay,az,bx,by,bz)
  %1985 = call float @dx.op.unary.f32(i32 25, float %1984)  ; Rsqrt(value)
  %1986 = fmul fast float %1985, %1979
  %1987 = fmul fast float %1985, %1980
  %1988 = fmul fast float %1985, %1981
  %1989 = fadd fast float %1973, 0xBFB99999A0000000
  %1990 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1991 = fmul fast float %1990, 0x3FF1C71C80000000
  %1992 = call float @dx.op.binary.f32(i32 36, float %1973, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1993 = fsub fast float 1.000000e+00, %1991
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fmul fast float %1994, %1974
  %1996 = fmul fast float %1994, %1975
  %1997 = fmul fast float %1994, %1976
  %1998 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1999 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %2000 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %2001 = fmul fast float %1991, %1974
  %2002 = fmul fast float %1991, %1975
  %2003 = fmul fast float %1991, %1976
  %2004 = fadd fast float %2001, %1992
  %2005 = fadd fast float %2002, %1992
  %2006 = fadd fast float %2003, %1992
  %2007 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2008 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2009 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2010 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %2011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2012 = extractvalue %dx.types.CBufRet.i32 %2011, 3
  %2013 = and i32 %2012, 8
  %2014 = icmp ne i32 %2013, 0
  %2015 = call float @dx.op.binary.f32(i32 35, float %1998, float %1974)  ; FMax(a,b)
  %2016 = call float @dx.op.binary.f32(i32 35, float %1999, float %1974)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2000, float %1974)  ; FMax(a,b)
  %2018 = call float @dx.op.dot3.f32(i32 55, float %1998, float %1999, float %2000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2019 = select i1 %161, float %1974, float %1998
  %2020 = select i1 %161, float %2018, float %1999
  %2021 = select i1 %161, float 1.000000e+00, float %2000
  %2022 = select i1 %2014, float %2015, float %2019
  %2023 = select i1 %2014, float %2016, float %2020
  %2024 = select i1 %2014, float %2017, float %2021
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.CBufRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2029 = fadd fast float %2026, %119
  %2030 = fadd fast float %2027, %120
  %2031 = fadd fast float %2028, %121
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2035 = fsub fast float %2029, %2033
  %2036 = fsub fast float %2030, %2034
  %2037 = fmul fast float %2035, %2035
  %2038 = fmul fast float %2036, %2036
  %2039 = fadd fast float %2037, %2038
  %2040 = call float @dx.op.unary.f32(i32 24, float %2039)  ; Sqrt(value)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2032, 2
  %2042 = fcmp fast olt float %2040, %2041
  br i1 %2042, label %2043, label %2110

; <label>:2043                                    ; preds = %1958
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2051 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2052 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2054 = extractvalue %dx.types.CBufRet.f32 %2046, 3
  %2055 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2056 = fadd fast float %2053, %2029
  %2057 = fadd fast float %2054, %2030
  %2058 = fadd fast float %2055, %2031
  %2059 = fmul fast float %2056, %2045
  %2060 = call float @dx.op.tertiary.f32(i32 46, float %2057, float %2047, float %2059)  ; FMad(a,b,c)
  %2061 = call float @dx.op.tertiary.f32(i32 46, float %2058, float %2049, float %2060)  ; FMad(a,b,c)
  %2062 = fmul fast float %2056, %2050
  %2063 = call float @dx.op.tertiary.f32(i32 46, float %2057, float %2051, float %2062)  ; FMad(a,b,c)
  %2064 = call float @dx.op.tertiary.f32(i32 46, float %2058, float %2052, float %2063)  ; FMad(a,b,c)
  %2065 = fsub fast float %2061, %2053
  %2066 = fsub fast float %2064, %2054
  %2067 = fsub fast float %2065, %2033
  %2068 = fadd fast float %2067, %2041
  %2069 = fsub fast float %2066, %2034
  %2070 = fadd fast float %2069, %2041
  %2071 = extractvalue %dx.types.CBufRet.f32 %2032, 3
  %2072 = fmul fast float %2068, %2071
  %2073 = fmul fast float %2070, %2071
  %2074 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2075 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2076 = fsub fast float 1.000000e+00, %2074
  %2077 = fsub fast float 1.000000e+00, %2075
  %2078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %2076, float %2077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = fcmp fast ugt float %2079, 0.000000e+00
  br i1 %2080, label %2081, label %2384

; <label>:2081                                    ; preds = %2043
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2084 = fmul fast float %2083, %2079
  %2085 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2086 = fadd fast float %2085, %2084
  %2087 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2088 = fadd fast float %2086, %2055
  %2089 = fmul fast float %2061, %2049
  %2090 = call float @dx.op.tertiary.f32(i32 46, float %2064, float %2052, float %2089)  ; FMad(a,b,c)
  %2091 = call float @dx.op.tertiary.f32(i32 46, float %2088, float %2087, float %2090)  ; FMad(a,b,c)
  %2092 = fsub fast float %2091, %2055
  %2093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.f32 %2093, 2
  %2095 = fsub fast float %2092, %2094
  %2096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %34, float %2076, float %2077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = extractvalue %dx.types.ResRet.f32 %2096, 1
  %2099 = extractvalue %dx.types.ResRet.f32 %2096, 2
  %2100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %2076, float %2077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2101 = extractvalue %dx.types.ResRet.f32 %2100, 0
  %2102 = extractvalue %dx.types.ResRet.f32 %2100, 1
  %2103 = extractvalue %dx.types.ResRet.f32 %2100, 2
  %2104 = fadd fast float %2101, %2097
  %2105 = fmul fast float %2104, 0x3F847AE140000000
  %2106 = fadd fast float %2102, %2098
  %2107 = fmul fast float %2106, 0x3F847AE140000000
  %2108 = fadd fast float %2103, %2099
  %2109 = fmul fast float %2108, 0x3F847AE140000000
  br label %2384

; <label>:2110                                    ; preds = %1958
  %2111 = and i32 %137, 1
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2384, label %2113

; <label>:2113                                    ; preds = %2110
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 0
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 0
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2114, 1
  %2121 = extractvalue %dx.types.CBufRet.f32 %2116, 1
  %2122 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2123 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2124 = extractvalue %dx.types.CBufRet.f32 %2116, 3
  %2125 = extractvalue %dx.types.CBufRet.f32 %2118, 3
  %2126 = fadd fast float %2123, %2029
  %2127 = fadd fast float %2124, %2030
  %2128 = fadd fast float %2125, %2031
  %2129 = fmul fast float %2126, %2115
  %2130 = call float @dx.op.tertiary.f32(i32 46, float %2127, float %2117, float %2129)  ; FMad(a,b,c)
  %2131 = call float @dx.op.tertiary.f32(i32 46, float %2128, float %2119, float %2130)  ; FMad(a,b,c)
  %2132 = fmul fast float %2126, %2120
  %2133 = call float @dx.op.tertiary.f32(i32 46, float %2127, float %2121, float %2132)  ; FMad(a,b,c)
  %2134 = call float @dx.op.tertiary.f32(i32 46, float %2128, float %2122, float %2133)  ; FMad(a,b,c)
  %2135 = fsub fast float %2131, %2123
  %2136 = fsub fast float %2134, %2124
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2141 = extractvalue %dx.types.CBufRet.f32 %2137, 3
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 3
  %2144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.i32 %2144, 0
  %2146 = extractvalue %dx.types.CBufRet.i32 %2144, 1
  %2147 = udiv i32 %2146, %2145
  %2148 = fsub fast float %2135, %2138
  %2149 = fsub fast float %2136, %2139
  %2150 = call float @dx.op.binary.f32(i32 35, float %2148, float 0.000000e+00)  ; FMax(a,b)
  %2151 = call float @dx.op.binary.f32(i32 35, float %2149, float 0.000000e+00)  ; FMax(a,b)
  %2152 = call float @dx.op.binary.f32(i32 36, float %2150, float %2140)  ; FMin(a,b)
  %2153 = call float @dx.op.binary.f32(i32 36, float %2151, float %2141)  ; FMin(a,b)
  %2154 = add i32 %2145, -1
  %2155 = add i32 %2147, -1
  %2156 = fmul fast float %2152, %2143
  %2157 = fmul fast float %2153, %2143
  %2158 = fptoui float %2156 to i32
  %2159 = fptoui float %2157 to i32
  %2160 = call i32 @dx.op.binary.i32(i32 40, i32 %2158, i32 %2154)  ; UMin(a,b)
  %2161 = call i32 @dx.op.binary.i32(i32 40, i32 %2159, i32 %2155)  ; UMin(a,b)
  %2162 = mul i32 %2161, %2145
  %2163 = add i32 %2162, %2160
  %2164 = shl i32 %2163, 2
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = icmp eq i32 %2166, -1
  br i1 %2167, label %2384, label %2168

; <label>:2168                                    ; preds = %2113
  %2169 = mul i32 %2166, 148
  %2170 = add i32 %2169, 4
  %2171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.f32 %2171, 0
  %2173 = add i32 %2169, 8
  %2174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = add i32 %2169, 36
  %2177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = add i32 %2169, 60
  %2180 = add i32 %2169, 92
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = add i32 %2169, 116
  %2184 = fsub fast float %2135, %2172
  %2185 = fsub fast float %2136, %2175
  %2186 = fmul fast float %2143, %2184
  %2187 = fmul fast float %2143, %2185
  %2188 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2190 = fsub fast float 1.000000e+00, %2189
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2193 = call float @dx.op.unary.f32(i32 83, float %2188)  ; DerivCoarseX(value)
  %2194 = call float @dx.op.unary.f32(i32 83, float %2190)  ; DerivCoarseX(value)
  %2195 = call float @dx.op.unary.f32(i32 84, float %2188)  ; DerivCoarseY(value)
  %2196 = call float @dx.op.unary.f32(i32 84, float %2190)  ; DerivCoarseY(value)
  %2197 = fmul fast float %2193, %2192
  %2198 = fmul fast float %2194, %2192
  %2199 = fmul fast float %2195, %2192
  %2200 = fmul fast float %2196, %2192
  %2201 = call float @dx.op.dot2.f32(i32 54, float %2199, float %2200, float %2199, float %2200)  ; Dot2(ax,ay,bx,by)
  %2202 = call float @dx.op.dot2.f32(i32 54, float %2197, float %2198, float %2197, float %2198)  ; Dot2(ax,ay,bx,by)
  %2203 = call float @dx.op.binary.f32(i32 35, float %2202, float %2201)  ; FMax(a,b)
  %2204 = call float @dx.op.unary.f32(i32 23, float %2203)  ; Log(value)
  %2205 = fmul fast float %2204, 5.000000e-01
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2208 = fadd fast float %2207, %2205
  %2209 = call float @dx.op.binary.f32(i32 35, float %2208, float 0.000000e+00)  ; FMax(a,b)
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2212 = fadd fast float %2211, %2209
  %2213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2214 = extractvalue %dx.types.CBufRet.f32 %2213, 3
  %2215 = fadd fast float %2212, %2214
  %2216 = add i32 %2182, 0
  %2217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2217, i32 0)  ; GetDimensions(handle,mipLevel)
  %2219 = extractvalue %dx.types.Dimensions %2218, 0
  %2220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2219)  ; FirstbitLo(value)
  %2221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.i32 %2221, 1
  %2223 = sub nsw i32 %2222, %2220
  %2224 = sitofp i32 %2223 to float
  %2225 = fsub fast float %2215, %2224
  %2226 = call float @dx.op.binary.f32(i32 35, float %2225, float 0.000000e+00)  ; FMax(a,b)
  %2227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2217, %dx.types.Handle %33, float %2188, float %2190, float %2178, float undef, i32 0, i32 0, i32 undef, float %2226)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = fcmp ule float %2228, 0x3FE0101020000000
  %2230 = extractvalue %dx.types.CBufRet.i32 %2221, 0
  %2231 = and i32 %2230, 128
  %2232 = icmp ne i32 %2231, 0
  %2233 = and i1 %2229, %2232
  br i1 %2233, label %2384, label %2234

; <label>:2234                                    ; preds = %2168
  %2235 = add i32 %2169, 20
  %2236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 0
  %2238 = add i32 %2169, 24
  %2239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.f32 %2239, 0
  %2241 = add i32 %2169, 40
  %2242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  %2244 = add i32 %2169, 96
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2249 = fmul fast float %2248, %2188
  %2250 = fmul fast float %2248, %2190
  %2251 = extractvalue %dx.types.CBufRet.f32 %2247, 3
  %2252 = fadd fast float %2249, %2251
  %2253 = fadd fast float %2250, %2251
  %2254 = add i32 %2246, 0
  %2255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2254, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2256 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2255, i32 0)  ; GetDimensions(handle,mipLevel)
  %2257 = extractvalue %dx.types.Dimensions %2256, 0
  %2258 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2257)  ; FirstbitLo(value)
  %2259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.i32 %2259, 1
  %2261 = sub nsw i32 %2260, %2258
  %2262 = sitofp i32 %2261 to float
  %2263 = fsub fast float %2212, %2262
  %2264 = call float @dx.op.binary.f32(i32 35, float %2263, float 0.000000e+00)  ; FMax(a,b)
  %2265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2255, %dx.types.Handle %33, float %2252, float %2253, float %2243, float undef, i32 0, i32 0, i32 undef, float %2264)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  %2267 = fmul fast float %2266, %2237
  %2268 = fadd fast float %2267, %2240
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2277 = extractvalue %dx.types.CBufRet.f32 %2269, 3
  %2278 = fadd fast float %2274, %2135
  %2279 = fadd fast float %2276, %2136
  %2280 = fadd fast float %2268, %2277
  %2281 = fmul fast float %2278, %2270
  %2282 = call float @dx.op.tertiary.f32(i32 46, float %2279, float %2271, float %2281)  ; FMad(a,b,c)
  %2283 = call float @dx.op.tertiary.f32(i32 46, float %2280, float %2272, float %2282)  ; FMad(a,b,c)
  %2284 = fsub fast float %2283, %2277
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2287 = fsub fast float %2284, %2286
  %2288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.i32 %2288, 0
  %2290 = call i32 @dx.op.binary.i32(i32 40, i32 %2166, i32 %2289)  ; UMin(a,b)
  %2291 = mul i32 %2290, 36
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = add i32 %2291, 4
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = fmul fast float %2296, %2188
  %2298 = fmul fast float %2296, %2190
  %2299 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2300 = fadd fast float %2297, %2299
  %2301 = fadd fast float %2298, %2299
  %2302 = icmp eq i32 %2293, 0
  br i1 %2302, label %2371, label %2303

; <label>:2303                                    ; preds = %2234
  br label %2304

; <label>:2304                                    ; preds = %2361, %2303
  %2305 = phi float [ %2362, %2361 ], [ 0.000000e+00, %2303 ]
  %2306 = phi float [ %2363, %2361 ], [ 0.000000e+00, %2303 ]
  %2307 = phi float [ %2364, %2361 ], [ 0.000000e+00, %2303 ]
  %2308 = phi float [ %2365, %2361 ], [ 0.000000e+00, %2303 ]
  %2309 = phi float [ %2366, %2361 ], [ 0.000000e+00, %2303 ]
  %2310 = phi float [ %2367, %2361 ], [ 0.000000e+00, %2303 ]
  %2311 = phi i32 [ %2368, %2361 ], [ 0, %2303 ]
  %2312 = shl i32 %2311, 2
  %2313 = add i32 %2179, %2312
  %2314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.f32 %2314, 0
  %2316 = add i32 %2183, %2312
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = add i32 %2318, 0
  %2320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2319, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2321 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2320, i32 0)  ; GetDimensions(handle,mipLevel)
  %2322 = extractvalue %dx.types.Dimensions %2321, 0
  %2323 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2322)  ; FirstbitLo(value)
  %2324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.i32 %2324, 1
  %2326 = sub nsw i32 %2325, %2323
  %2327 = sitofp i32 %2326 to float
  %2328 = fsub fast float %2212, %2327
  %2329 = call float @dx.op.binary.f32(i32 35, float %2328, float 0.000000e+00)  ; FMax(a,b)
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2320, %dx.types.Handle %33, float %2300, float %2301, float %2315, float undef, i32 0, i32 0, i32 undef, float %2329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = fcmp fast ogt float %2331, 0.000000e+00
  br i1 %2332, label %2333, label %2361

; <label>:2333                                    ; preds = %2304
  %2334 = add i32 %2294, %2312
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 32767
  %2338 = mul nuw nsw i32 %2337, 928
  %2339 = add nuw nsw i32 %2338, 48
  %2340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.ResRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.ResRet.f32 %2340, 2
  %2344 = add nuw nsw i32 %2338, 60
  %2345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.ResRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.ResRet.f32 %2345, 2
  %2349 = fmul fast float %2341, %2331
  %2350 = fmul fast float %2342, %2331
  %2351 = fmul fast float %2343, %2331
  %2352 = fadd fast float %2349, %2305
  %2353 = fadd fast float %2350, %2306
  %2354 = fadd fast float %2351, %2307
  %2355 = fmul fast float %2346, %2331
  %2356 = fmul fast float %2347, %2331
  %2357 = fmul fast float %2348, %2331
  %2358 = fadd fast float %2355, %2308
  %2359 = fadd fast float %2356, %2309
  %2360 = fadd fast float %2357, %2310
  br label %2361

; <label>:2361                                    ; preds = %2333, %2304
  %2362 = phi float [ %2352, %2333 ], [ %2305, %2304 ]
  %2363 = phi float [ %2353, %2333 ], [ %2306, %2304 ]
  %2364 = phi float [ %2354, %2333 ], [ %2307, %2304 ]
  %2365 = phi float [ %2358, %2333 ], [ %2308, %2304 ]
  %2366 = phi float [ %2359, %2333 ], [ %2309, %2304 ]
  %2367 = phi float [ %2360, %2333 ], [ %2310, %2304 ]
  %2368 = add nuw i32 %2311, 1
  %2369 = icmp eq i32 %2368, %2293
  br i1 %2369, label %2370, label %2304

; <label>:2370                                    ; preds = %2361
  br label %2371

; <label>:2371                                    ; preds = %2370, %2234
  %2372 = phi float [ 0.000000e+00, %2234 ], [ %2362, %2370 ]
  %2373 = phi float [ 0.000000e+00, %2234 ], [ %2363, %2370 ]
  %2374 = phi float [ 0.000000e+00, %2234 ], [ %2364, %2370 ]
  %2375 = phi float [ 0.000000e+00, %2234 ], [ %2365, %2370 ]
  %2376 = phi float [ 0.000000e+00, %2234 ], [ %2366, %2370 ]
  %2377 = phi float [ 0.000000e+00, %2234 ], [ %2367, %2370 ]
  %2378 = fadd fast float %2375, %2372
  %2379 = fmul fast float %2378, 0x3F847AE140000000
  %2380 = fadd fast float %2376, %2373
  %2381 = fmul fast float %2380, 0x3F847AE140000000
  %2382 = fadd fast float %2377, %2374
  %2383 = fmul fast float %2382, 0x3F847AE140000000
  br label %2384

; <label>:2384                                    ; preds = %2371, %2168, %2113, %2110, %2081, %2043
  %2385 = phi float [ %2095, %2081 ], [ -1.310720e+05, %2043 ], [ %2287, %2371 ], [ -1.310720e+05, %2113 ], [ -1.310720e+05, %2168 ], [ -1.310720e+05, %2110 ]
  %2386 = phi float [ %2105, %2081 ], [ 0.000000e+00, %2043 ], [ %2379, %2371 ], [ 0.000000e+00, %2113 ], [ 0.000000e+00, %2168 ], [ 0.000000e+00, %2110 ]
  %2387 = phi float [ %2107, %2081 ], [ 0.000000e+00, %2043 ], [ %2381, %2371 ], [ 0.000000e+00, %2113 ], [ 0.000000e+00, %2168 ], [ 0.000000e+00, %2110 ]
  %2388 = phi float [ %2109, %2081 ], [ 0.000000e+00, %2043 ], [ %2383, %2371 ], [ 0.000000e+00, %2113 ], [ 0.000000e+00, %2168 ], [ 0.000000e+00, %2110 ]
  %2389 = phi i1 [ true, %2081 ], [ false, %2043 ], [ true, %2371 ], [ false, %2113 ], [ false, %2168 ], [ false, %2110 ]
  %2390 = and i32 %137, 3
  %2391 = icmp eq i32 %2390, 1
  %2392 = select i1 %2391, float 1.000000e+00, float 0.000000e+00
  %2393 = fsub fast float %2385, %121
  %2394 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2395 = select i1 %2389, float %2394, float 1.000000e+00
  %2396 = fmul fast float %2395, %2392
  %2397 = icmp eq i32 %2390, 3
  %2398 = select i1 %2397, float 1.000000e+00, float %2396
  %2399 = call float @dx.op.binary.f32(i32 35, float %1959, float %2398)  ; FMax(a,b)
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = fcmp fast une float %2400, 0.000000e+00
  %2402 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = call float @dx.op.unary.f32(i32 25, float %2402)  ; Rsqrt(value)
  br i1 %2401, label %2411, label %2404

; <label>:2404                                    ; preds = %2384
  %2405 = fmul fast float %2403, %119
  %2406 = fmul fast float %2403, %120
  %2407 = fmul fast float %2403, %121
  %2408 = fsub fast float -0.000000e+00, %2405
  %2409 = fsub fast float -0.000000e+00, %2406
  %2410 = fsub fast float -0.000000e+00, %2407
  br label %2579

; <label>:2411                                    ; preds = %2384
  %2412 = fmul fast float %119, %2403
  %2413 = fsub fast float -0.000000e+00, %2412
  %2414 = fmul fast float %120, %2403
  %2415 = fsub fast float -0.000000e+00, %2414
  %2416 = fmul fast float %121, %2403
  %2417 = fsub fast float -0.000000e+00, %2416
  %2418 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2415, float %2417, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2419 = fmul fast float %2400, 2.500000e+00
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = fmul fast float %2400, 0x4013FFFFE0000000
  %2422 = fadd fast float %2421, 0xBFFFFFFFE0000000
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2424 = fmul fast float %2400, 0x4004000020000000
  %2425 = fadd fast float %2424, 0xBFF8000040000000
  %2426 = call float @dx.op.unary.f32(i32 7, float %2425)  ; Saturate(value)
  %2427 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  %2428 = fmul fast float %1989, 1.000000e+01
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = fmul fast float %2429, 2.000000e+00
  %2431 = fsub fast float 3.000000e+00, %2430
  %2432 = fmul fast float %2429, %2429
  %2433 = fmul fast float %2432, %2431
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fsub fast float 0x3FE3333340000000, %2010
  %2436 = fmul fast float %2435, 0x400AAAAAA0000000
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2438 = fmul fast float %2434, %2437
  %2439 = fmul fast float %2022, 0x3FEA2B8620000000
  %2440 = fmul fast float %2023, 0x3FEA2B8620000000
  %2441 = fmul fast float %2024, 0x3FEA2B8620000000
  %2442 = fadd fast float %2439, 0x3FC81DFBA0000000
  %2443 = fmul fast float %2442, %2022
  %2444 = fadd fast float %2443, 0x3F910E6020000000
  %2445 = fadd fast float %2440, 0x3FC81DFBA0000000
  %2446 = fmul fast float %2445, %2023
  %2447 = fadd fast float %2446, 0x3F910E6020000000
  %2448 = fadd fast float %2441, 0x3FC81DFBA0000000
  %2449 = fmul fast float %2448, %2024
  %2450 = fadd fast float %2449, 0x3F910E6020000000
  %2451 = call float @dx.op.unary.f32(i32 7, float %2444)  ; Saturate(value)
  %2452 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2453 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  %2454 = fsub fast float %2451, %2022
  %2455 = fsub fast float %2452, %2023
  %2456 = fsub fast float %2453, %2024
  %2457 = fmul fast float %2454, %2427
  %2458 = fmul fast float %2457, %2438
  %2459 = fmul fast float %2455, %2427
  %2460 = fmul fast float %2459, %2438
  %2461 = fmul fast float %2456, %2427
  %2462 = fmul fast float %2461, %2438
  %2463 = fadd fast float %2458, %2022
  %2464 = fadd fast float %2460, %2023
  %2465 = fadd fast float %2462, %2024
  %2466 = fmul fast float %1970, %1970
  %2467 = fmul fast float %2466, %2466
  %2468 = fadd fast float %2423, 1.000000e+00
  %2469 = fsub fast float %2468, %2438
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  %2471 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2473 = fsub fast float 1.000000e+00, %2467
  %2474 = call float @dx.op.binary.f32(i32 36, float %2470, float %2473)  ; FMin(a,b)
  %2475 = call float @dx.op.unary.f32(i32 7, float %2426)  ; Saturate(value)
  %2476 = call float @dx.op.binary.f32(i32 35, float %2474, float %2475)  ; FMax(a,b)
  %2477 = fadd fast float %2472, 0xBFE4CCCCC0000000
  %2478 = fmul fast float %2477, 0x4006DB6DA0000000
  %2479 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  %2480 = fmul fast float %2479, 2.000000e+00
  %2481 = fsub fast float 3.000000e+00, %2480
  %2482 = bitcast float %2007 to i32
  %2483 = ashr i32 %2482, 1
  %2484 = add nsw i32 %2483, 532487669
  %2485 = bitcast i32 %2484 to float
  %2486 = fsub fast float 1.000000e+00, %2485
  %2487 = bitcast float %2486 to i32
  %2488 = sub nsw i32 2129859010, %2487
  %2489 = bitcast i32 %2488 to float
  %2490 = fmul fast float %2489, 2.000000e+00
  %2491 = bitcast float %2008 to i32
  %2492 = ashr i32 %2491, 1
  %2493 = add nsw i32 %2492, 532487669
  %2494 = bitcast i32 %2493 to float
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = bitcast float %2495 to i32
  %2497 = sub nsw i32 2129859010, %2496
  %2498 = bitcast i32 %2497 to float
  %2499 = fmul fast float %2498, 2.000000e+00
  %2500 = bitcast float %2009 to i32
  %2501 = ashr i32 %2500, 1
  %2502 = add nsw i32 %2501, 532487669
  %2503 = bitcast i32 %2502 to float
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = bitcast float %2504 to i32
  %2506 = sub nsw i32 2129859010, %2505
  %2507 = bitcast i32 %2506 to float
  %2508 = fmul fast float %2507, 2.000000e+00
  %2509 = fsub fast float 0x4002A9FBE0000000, %2490
  %2510 = fadd fast float %2490, 0x3FD54FDF00000000
  %2511 = bitcast float %2510 to i32
  %2512 = sub nsw i32 2129859010, %2511
  %2513 = bitcast i32 %2512 to float
  %2514 = fmul fast float %2513, %2509
  %2515 = fmul fast float %2514, %2514
  %2516 = fsub fast float 0x4002A9FBE0000000, %2499
  %2517 = fadd fast float %2499, 0x3FD54FDF00000000
  %2518 = bitcast float %2517 to i32
  %2519 = sub nsw i32 2129859010, %2518
  %2520 = bitcast i32 %2519 to float
  %2521 = fmul fast float %2520, %2516
  %2522 = fmul fast float %2521, %2521
  %2523 = fsub fast float 0x4002A9FBE0000000, %2508
  %2524 = fadd fast float %2508, 0x3FD54FDF00000000
  %2525 = bitcast float %2524 to i32
  %2526 = sub nsw i32 2129859010, %2525
  %2527 = bitcast i32 %2526 to float
  %2528 = fmul fast float %2527, %2523
  %2529 = fmul fast float %2528, %2528
  %2530 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2515)  ; FMax(a,b)
  %2531 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2522)  ; FMax(a,b)
  %2532 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2529)  ; FMax(a,b)
  %2533 = fsub fast float 1.000000e+00, %2418
  %2534 = fadd fast float %2533, %2434
  %2535 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2536 = fsub fast float 1.000000e+00, %2398
  %2537 = fmul fast float %2476, %2536
  %2538 = fmul fast float %2479, %2479
  %2539 = fmul fast float %2538, %2537
  %2540 = fmul fast float %2539, %2481
  %2541 = fmul fast float %2536, 0xBFE99999A0000000
  %2542 = fmul fast float %2541, %2427
  %2543 = fmul fast float %2542, %2438
  %2544 = fadd fast float %2543, 1.000000e+00
  %2545 = fadd fast float %2010, -1.000000e+00
  %2546 = fmul fast float %2544, %2545
  %2547 = fadd fast float %2546, 1.000000e+00
  %2548 = fsub fast float %2530, %2007
  %2549 = fsub fast float %2531, %2008
  %2550 = fsub fast float %2532, %2009
  %2551 = fmul fast float %2540, %2548
  %2552 = fmul fast float %2540, %2549
  %2553 = fmul fast float %2540, %2550
  %2554 = fadd fast float %2551, %2007
  %2555 = fadd fast float %2552, %2008
  %2556 = fadd fast float %2553, %2009
  %2557 = fsub fast float %66, %1986
  %2558 = fsub fast float %67, %1987
  %2559 = fsub fast float %68, %1988
  %2560 = fmul fast float %2540, %2557
  %2561 = fmul fast float %2540, %2558
  %2562 = fmul fast float %2540, %2559
  %2563 = fadd fast float %2560, %1986
  %2564 = fadd fast float %2561, %1987
  %2565 = fadd fast float %2562, %1988
  %2566 = fmul fast float %2540, %2535
  %2567 = call float @dx.op.unary.f32(i32 7, float %2547)  ; Saturate(value)
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = fmul fast float %2566, %2568
  %2570 = fadd fast float %2569, %2567
  %2571 = fsub fast float 1.000000e+00, %1970
  %2572 = fmul fast float %2540, %2571
  %2573 = fadd fast float %2572, %1970
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2563, float %2564, float %2565, float %2563, float %2564, float %2565)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = call float @dx.op.unary.f32(i32 25, float %2574)  ; Rsqrt(value)
  %2576 = fmul fast float %2563, %2575
  %2577 = fmul fast float %2564, %2575
  %2578 = fmul fast float %2565, %2575
  br label %2579

; <label>:2579                                    ; preds = %2411, %2404
  %2580 = phi float [ %2410, %2404 ], [ %2417, %2411 ]
  %2581 = phi float [ %2409, %2404 ], [ %2415, %2411 ]
  %2582 = phi float [ %2408, %2404 ], [ %2413, %2411 ]
  %2583 = phi float [ %2407, %2404 ], [ %2416, %2411 ]
  %2584 = phi float [ %2406, %2404 ], [ %2414, %2411 ]
  %2585 = phi float [ %2405, %2404 ], [ %2412, %2411 ]
  %2586 = phi float [ %2007, %2404 ], [ %2554, %2411 ]
  %2587 = phi float [ %2008, %2404 ], [ %2555, %2411 ]
  %2588 = phi float [ %2009, %2404 ], [ %2556, %2411 ]
  %2589 = phi float [ %1986, %2404 ], [ %2576, %2411 ]
  %2590 = phi float [ %1987, %2404 ], [ %2577, %2411 ]
  %2591 = phi float [ %1988, %2404 ], [ %2578, %2411 ]
  %2592 = phi float [ %2022, %2404 ], [ %2463, %2411 ]
  %2593 = phi float [ %2023, %2404 ], [ %2464, %2411 ]
  %2594 = phi float [ %2024, %2404 ], [ %2465, %2411 ]
  %2595 = phi float [ %2010, %2404 ], [ %2570, %2411 ]
  %2596 = phi float [ %1970, %2404 ], [ %2573, %2411 ]
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 2
  %2599 = extractvalue %dx.types.CBufRet.f32 %2597, 3
  %2600 = fmul fast float %2598, %63
  %2601 = fmul fast float %2599, %64
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %34, float %2600, float %2601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = fmul fast float %2606, %2604
  %2608 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2609 = fadd fast float %2608, -1.000000e+00
  %2610 = fmul fast float %2609, %2603
  %2611 = fadd fast float %2610, 1.000000e+00
  %2612 = select i1 %161, float 0.000000e+00, float %2588
  %2613 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float %2582, float %2581, float %2580)  ; Dot3(ax,ay,az,bx,by,bz)
  %2614 = call float @dx.op.unary.f32(i32 7, float %2613)  ; Saturate(value)
  %2615 = call float @dx.op.dot3.f32(i32 55, float %2585, float %2584, float %2583, float %2589, float %2590, float %2591)  ; Dot3(ax,ay,az,bx,by,bz)
  %2616 = fmul fast float %2615, 2.000000e+00
  %2617 = fmul fast float %2616, %2589
  %2618 = fmul fast float %2616, %2590
  %2619 = fmul fast float %2616, %2591
  %2620 = fsub fast float %2585, %2617
  %2621 = fsub fast float %2584, %2618
  %2622 = fsub fast float %2583, %2619
  %2623 = call float @dx.op.binary.f32(i32 36, float %2596, float %2611)  ; FMin(a,b)
  %2624 = fsub fast float 1.000000e+00, %2623
  %2625 = bitcast float %2624 to i32
  %2626 = ashr i32 %2625, 1
  %2627 = add nsw i32 %2626, 532487669
  %2628 = bitcast i32 %2627 to float
  %2629 = fsub fast float 1.000000e+00, %2595
  %2630 = call float @dx.op.binary.f32(i32 35, float %2629, float 0x3F847AE140000000)  ; FMax(a,b)
  %2631 = fmul fast float %2630, %2630
  %2632 = fmul fast float %2631, %2631
  %2633 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %34, float %2628, float %2632, float %2633, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = fsub fast float 1.000000e+00, %2596
  %2637 = bitcast float %2636 to i32
  %2638 = sub nsw i32 2129859010, %2637
  %2639 = fsub fast float 1.000000e+00, %43
  %2640 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2641 = call float @dx.op.binary.f32(i32 35, float %2640, float 0x3FA99999A0000000)  ; FMax(a,b)
  %2642 = fdiv fast float %2639, %2641
  %2643 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  %2645 = fmul fast float %2644, 5.000000e-01
  %2646 = fadd fast float %2645, 5.000000e-01
  %2647 = fmul fast float %2646, %43
  %2648 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = fmul fast float %2649, %2642
  %2651 = fadd fast float %2647, %2650
  %2652 = fsub fast float 5.000000e-01, %2645
  %2653 = fmul fast float %2652, %2592
  %2654 = fmul fast float %2652, %2593
  %2655 = fmul fast float %2652, %2594
  %2656 = fadd fast float %2651, %2653
  %2657 = fadd fast float %2651, %2654
  %2658 = fadd fast float %2651, %2655
  %2659 = call float @dx.op.dot3.f32(i32 55, float %2620, float %2621, float %2622, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fmul fast float %2660, 5.000000e-01
  %2662 = fadd fast float %2661, 5.000000e-01
  %2663 = fmul fast float %2662, %43
  %2664 = call float @dx.op.dot3.f32(i32 55, float %2620, float %2621, float %2622, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %2665 = call float @dx.op.unary.f32(i32 7, float %2664)  ; Saturate(value)
  %2666 = fmul fast float %2665, %2642
  %2667 = fadd fast float %2663, %2666
  %2668 = fsub fast float 5.000000e-01, %2661
  %2669 = fmul fast float %2668, %2592
  %2670 = fmul fast float %2668, %2593
  %2671 = fmul fast float %2668, %2594
  %2672 = fadd fast float %2667, %2669
  %2673 = fadd fast float %2667, %2670
  %2674 = fadd fast float %2667, %2671
  %2675 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 0
  %2678 = call float @dx.op.binary.f32(i32 36, float %2592, float %2677)  ; FMin(a,b)
  %2679 = fmul fast float %2678, %2624
  %2680 = fsub fast float 1.000000e+00, %2679
  %2681 = bitcast float %2680 to i32
  %2682 = sub nsw i32 2129859010, %2681
  %2683 = bitcast i32 %2682 to float
  %2684 = call float @dx.op.binary.f32(i32 36, float %2593, float %2677)  ; FMin(a,b)
  %2685 = fmul fast float %2684, %2624
  %2686 = fsub fast float 1.000000e+00, %2685
  %2687 = bitcast float %2686 to i32
  %2688 = sub nsw i32 2129859010, %2687
  %2689 = bitcast i32 %2688 to float
  %2690 = call float @dx.op.binary.f32(i32 36, float %2594, float %2677)  ; FMin(a,b)
  %2691 = fmul fast float %2690, %2624
  %2692 = fsub fast float 1.000000e+00, %2691
  %2693 = bitcast float %2692 to i32
  %2694 = sub nsw i32 2129859010, %2693
  %2695 = bitcast i32 %2694 to float
  %2696 = fmul fast float %2623, %44
  %2697 = fmul fast float %2696, %2656
  %2698 = fmul fast float %2697, %2683
  %2699 = fmul fast float %2623, %45
  %2700 = fmul fast float %2699, %2657
  %2701 = fmul fast float %2700, %2689
  %2702 = fmul fast float %2623, %46
  %2703 = fmul fast float %2702, %2658
  %2704 = fmul fast float %2703, %2695
  %2705 = call float @dx.op.binary.f32(i32 36, float %2586, float %2677)  ; FMin(a,b)
  %2706 = fmul fast float %2705, %2624
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = bitcast float %2707 to i32
  %2709 = sub nsw i32 2129859010, %2708
  %2710 = bitcast i32 %2709 to float
  %2711 = call float @dx.op.binary.f32(i32 36, float %2587, float %2677)  ; FMin(a,b)
  %2712 = fmul fast float %2711, %2624
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = bitcast float %2713 to i32
  %2715 = sub nsw i32 2129859010, %2714
  %2716 = bitcast i32 %2715 to float
  %2717 = call float @dx.op.binary.f32(i32 36, float %2612, float %2677)  ; FMin(a,b)
  %2718 = fmul fast float %2717, %2624
  %2719 = fsub fast float 1.000000e+00, %2718
  %2720 = bitcast float %2719 to i32
  %2721 = sub nsw i32 2129859010, %2720
  %2722 = bitcast i32 %2721 to float
  %2723 = fmul fast float %2696, %2672
  %2724 = fmul fast float %2723, %2710
  %2725 = fmul fast float %2699, %2673
  %2726 = fmul fast float %2725, %2716
  %2727 = fmul fast float %2702, %2674
  %2728 = fmul fast float %2727, %2722
  %2729 = call float @dx.op.dot3.f32(i32 55, float %2698, float %2701, float %2704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2730 = select i1 %161, float 0.000000e+00, float %2698
  %2731 = select i1 %161, float %2729, float %2701
  %2732 = select i1 %161, float 0.000000e+00, float %2704
  %2733 = call float @dx.op.dot3.f32(i32 55, float %2724, float %2726, float %2728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2734 = select i1 %161, float 0.000000e+00, float %2724
  %2735 = select i1 %161, float %2733, float %2726
  %2736 = select i1 %161, float 0.000000e+00, float %2728
  %2737 = fmul fast float %2614, 9.843750e-01
  %2738 = fmul fast float %2595, 9.843750e-01
  %2739 = fadd fast float %2737, 7.812500e-03
  %2740 = fadd fast float %2738, 7.812500e-03
  %2741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %2739, float %2740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 2
  %2743 = extractvalue %dx.types.ResRet.f32 %2741, 3
  %2744 = fmul fast float %2742, %2586
  %2745 = fmul fast float %2742, %2587
  %2746 = fmul fast float %2742, %2612
  %2747 = fadd fast float %2744, %2743
  %2748 = fadd fast float %2745, %2743
  %2749 = fadd fast float %2746, %2743
  %2750 = fcmp fast ogt float %1963, 0.000000e+00
  br i1 %2750, label %2751, label %2777

; <label>:2751                                    ; preds = %2579
  %2752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1963, float %2614, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fadd fast float %2754, -5.000000e-01
  %2758 = fadd fast float %2755, -5.000000e-01
  %2759 = fsub fast float 1.000000e+00, %2586
  %2760 = fsub fast float 1.000000e+00, %2587
  %2761 = fsub fast float 1.000000e+00, %2612
  %2762 = fmul fast float %2586, 4.000000e+00
  %2763 = fmul fast float %2762, %2759
  %2764 = fmul fast float %2763, %2756
  %2765 = fmul fast float %2587, 4.000000e+00
  %2766 = fmul fast float %2765, %2760
  %2767 = fmul fast float %2766, %2757
  %2768 = fmul fast float %2612, 4.000000e+00
  %2769 = fmul fast float %2768, %2761
  %2770 = fmul fast float %2769, %2758
  %2771 = fadd fast float %2764, %2747
  %2772 = fadd fast float %2767, %2748
  %2773 = fadd fast float %2770, %2749
  %2774 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2775 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2776 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  br label %2777

; <label>:2777                                    ; preds = %2751, %2579
  %2778 = phi float [ %2774, %2751 ], [ %2747, %2579 ]
  %2779 = phi float [ %2775, %2751 ], [ %2748, %2579 ]
  %2780 = phi float [ %2776, %2751 ], [ %2749, %2579 ]
  %2781 = call float @dx.op.binary.f32(i32 35, float %2779, float %2780)  ; FMax(a,b)
  %2782 = call float @dx.op.binary.f32(i32 35, float %2778, float %2781)  ; FMax(a,b)
  %2783 = fsub fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2782, %2595
  %2785 = fadd fast float %2784, %2595
  %2786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.f32 %2786, 0
  %2788 = extractvalue %dx.types.CBufRet.f32 %2786, 1
  %2789 = extractvalue %dx.types.CBufRet.f32 %2786, 2
  %2790 = extractvalue %dx.types.CBufRet.f32 %2786, 3
  %2791 = fmul fast float %2785, %2787
  %2792 = fadd fast float %2791, %2788
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = fmul fast float %2789, %2785
  %2795 = fadd fast float %2794, %2790
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2797 = fsub fast float 1.000000e+00, %2635
  %2798 = fadd fast float %2797, %2796
  %2799 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  %2800 = fcmp fast olt float %2799, 1.000000e+00
  br i1 %2800, label %2801, label %3656

; <label>:2801                                    ; preds = %2777
  %2802 = fcmp fast olt float %2793, 1.000000e+00
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 0
  %2805 = fcmp fast ogt float %2804, 0.000000e+00
  %2806 = or i1 %2802, %2805
  %2807 = or i1 %2802, %2805
  %2808 = xor i1 %2807, true
  %2809 = zext i1 %2808 to i32
  br i1 %2806, label %2810, label %3053

; <label>:2810                                    ; preds = %2801
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.CBufRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.CBufRet.f32 %2811, 2
  %2815 = extractvalue %dx.types.CBufRet.f32 %2811, 3
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2820 = extractvalue %dx.types.CBufRet.f32 %2816, 3
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.CBufRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.CBufRet.f32 %2821, 2
  %2825 = extractvalue %dx.types.CBufRet.f32 %2821, 3
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 0
  %2828 = extractvalue %dx.types.CBufRet.f32 %2826, 1
  %2829 = extractvalue %dx.types.CBufRet.f32 %2826, 2
  %2830 = extractvalue %dx.types.CBufRet.f32 %2826, 3
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.CBufRet.f32 %2831, 3
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.CBufRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.CBufRet.f32 %2836, 3
  %2841 = call float @dx.op.dot3.f32(i32 55, float %2837, float %2838, float %2839, float %2620, float %2621, float %2622)  ; Dot3(ax,ay,az,bx,by,bz)
  %2842 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2843 = call float @dx.op.unary.f32(i32 6, float %2842)  ; FAbs(value)
  %2844 = fmul fast float %2843, 8.000000e+00
  %2845 = fadd fast float %2844, -6.000000e+00
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2847 = fmul fast float %2841, 8.000000e+00
  %2848 = fmul fast float %2847, %2804
  %2849 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2850 = fcmp fast ogt float %2849, 0.000000e+00
  br i1 %2850, label %2851, label %3028, !dx.controlflow.hints !72

; <label>:2851                                    ; preds = %2810
  %2852 = extractvalue %dx.types.CBufRet.f32 %2803, 1
  %2853 = extractvalue %dx.types.CBufRet.f32 %2803, 2
  %2854 = fsub fast float %2852, %2853
  %2855 = fmul fast float %2854, %2595
  %2856 = fadd fast float %2855, %2853
  %2857 = fmul fast float %174, 2.000000e+00
  %2858 = fmul fast float %175, 2.000000e+00
  %2859 = fadd fast float %2857, -1.000000e+00
  %2860 = fadd fast float %2858, -1.000000e+00
  %2861 = fmul fast float %2856, %2859
  %2862 = fmul fast float %2856, %2860
  %2863 = fadd fast float %2861, %63
  %2864 = fadd fast float %2862, %64
  %2865 = fmul fast float %2863, %2598
  %2866 = fmul fast float %2864, %2599
  %2867 = fadd fast float %2595, 0xBFE3333340000000
  %2868 = fmul fast float %2867, 0x4004000020000000
  %2869 = fsub fast float 1.000000e+00, %2868
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2871 = fmul fast float %2870, 3.000000e+00
  %2872 = fadd fast float %2871, %174
  %2873 = call float @dx.op.unary.f32(i32 27, float %2872)  ; Round_ni(value)
  %2874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %2865, float %2866, float %2873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  %2876 = fcmp fast une float %2875, 0xFFF0000000000000
  %2877 = fcmp fast une float %2875, 0x7FF0000000000000
  %2878 = and i1 %2876, %2877
  %2879 = fcmp fast olt float %2875, 0.000000e+00
  %2880 = call float @dx.op.unary.f32(i32 6, float %2875)  ; FAbs(value)
  %2881 = fsub fast float 1.000000e+00, %2880
  %2882 = select i1 %2878, float 1.000000e+00, float 0.000000e+00
  %2883 = fmul fast float %2882, %2849
  %2884 = fcmp fast ogt float %2883, 0.000000e+00
  br i1 %2884, label %2885, label %3028, !dx.controlflow.hints !73

; <label>:2885                                    ; preds = %2851
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.CBufRet.f32 %2886, 1
  %2889 = extractvalue %dx.types.CBufRet.f32 %2886, 2
  %2890 = select i1 %2879, float 0.000000e+00, float %2887
  %2891 = select i1 %2879, float 0.000000e+00, float %2888
  %2892 = select i1 %2879, float 0.000000e+00, float %2889
  %2893 = select i1 %2879, float %2812, float %2827
  %2894 = select i1 %2879, float %2817, float %2832
  %2895 = select i1 %2879, float %2822, float %2837
  %2896 = select i1 %2879, float %2813, float %2828
  %2897 = select i1 %2879, float %2818, float %2833
  %2898 = select i1 %2879, float %2823, float %2838
  %2899 = select i1 %2879, float %2814, float %2829
  %2900 = select i1 %2879, float %2819, float %2834
  %2901 = select i1 %2879, float %2824, float %2839
  %2902 = select i1 %2879, float %2815, float %2830
  %2903 = select i1 %2879, float %2820, float %2835
  %2904 = select i1 %2879, float %2825, float %2840
  %2905 = fadd fast float %2890, %119
  %2906 = fadd fast float %2891, %120
  %2907 = fadd fast float %2892, %121
  %2908 = fmul fast float %2905, %2893
  %2909 = call float @dx.op.tertiary.f32(i32 46, float %2906, float %2896, float %2908)  ; FMad(a,b,c)
  %2910 = call float @dx.op.tertiary.f32(i32 46, float %2907, float %2899, float %2909)  ; FMad(a,b,c)
  %2911 = fadd fast float %2910, %2902
  %2912 = fmul fast float %2905, %2894
  %2913 = call float @dx.op.tertiary.f32(i32 46, float %2906, float %2897, float %2912)  ; FMad(a,b,c)
  %2914 = call float @dx.op.tertiary.f32(i32 46, float %2907, float %2900, float %2913)  ; FMad(a,b,c)
  %2915 = fadd fast float %2914, %2903
  %2916 = fmul fast float %2905, %2895
  %2917 = call float @dx.op.tertiary.f32(i32 46, float %2906, float %2898, float %2916)  ; FMad(a,b,c)
  %2918 = call float @dx.op.tertiary.f32(i32 46, float %2907, float %2901, float %2917)  ; FMad(a,b,c)
  %2919 = fadd fast float %2918, %2904
  %2920 = fdiv fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2920, %2911
  %2922 = fmul fast float %2920, %2915
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = extractvalue %dx.types.CBufRet.f32 %2923, 1
  %2926 = fmul fast float %2921, %2924
  %2927 = fmul fast float %2922, %2925
  %2928 = extractvalue %dx.types.CBufRet.f32 %2923, 2
  %2929 = extractvalue %dx.types.CBufRet.f32 %2923, 3
  %2930 = fadd fast float %2926, %2928
  %2931 = fadd fast float %2927, %2929
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 3
  %2934 = fmul fast float %2933, %2620
  %2935 = fmul fast float %2933, %2621
  %2936 = fmul fast float %2933, %2622
  %2937 = fadd fast float %2934, %2905
  %2938 = fadd fast float %2935, %2906
  %2939 = fadd fast float %2936, %2907
  %2940 = fmul fast float %2937, %2893
  %2941 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2896, float %2940)  ; FMad(a,b,c)
  %2942 = call float @dx.op.tertiary.f32(i32 46, float %2939, float %2899, float %2941)  ; FMad(a,b,c)
  %2943 = fadd fast float %2942, %2902
  %2944 = fmul fast float %2937, %2894
  %2945 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2897, float %2944)  ; FMad(a,b,c)
  %2946 = call float @dx.op.tertiary.f32(i32 46, float %2939, float %2900, float %2945)  ; FMad(a,b,c)
  %2947 = fadd fast float %2946, %2903
  %2948 = fmul fast float %2937, %2895
  %2949 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2898, float %2948)  ; FMad(a,b,c)
  %2950 = call float @dx.op.tertiary.f32(i32 46, float %2939, float %2901, float %2949)  ; FMad(a,b,c)
  %2951 = fadd fast float %2950, %2904
  %2952 = fdiv fast float 1.000000e+00, %2951
  %2953 = fmul fast float %2952, %2943
  %2954 = fmul fast float %2952, %2947
  %2955 = fmul fast float %2930, 2.000000e+00
  %2956 = fadd fast float %2955, -1.000000e+00
  %2957 = call float @dx.op.unary.f32(i32 6, float %2956)  ; FAbs(value)
  %2958 = fmul fast float %2957, 5.000000e+00
  %2959 = fadd fast float %2958, -4.000000e+00
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = fmul fast float %2960, %2846
  %2962 = fsub fast float %2921, %2953
  %2963 = fmul fast float %2924, %2962
  %2964 = fmul fast float %2961, %2963
  %2965 = fsub fast float %2953, %2921
  %2966 = fmul fast float %2924, %2965
  %2967 = fadd fast float %2966, %2964
  %2968 = fsub fast float %2954, %2922
  %2969 = fmul fast float %2925, %2968
  %2970 = fmul fast float %2967, %2881
  %2971 = fmul fast float %2969, %2881
  %2972 = fadd fast float %2970, %2930
  %2973 = fadd fast float %2971, %2931
  %2974 = fsub fast float %2952, %2920
  %2975 = fmul fast float %2974, %2881
  %2976 = fadd fast float %2975, %2920
  %2977 = fdiv fast float 1.000000e+00, %2976
  %2978 = fadd fast float %2595, -1.000000e+00
  %2979 = fsub fast float %2977, %2919
  %2980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2980, 2
  %2982 = fmul fast float %2981, %2977
  %2983 = fdiv fast float 1.600000e+02, %2982
  %2984 = fmul fast float %2978, %2978
  %2985 = fmul fast float %2984, 0xBFB5B17960000000
  %2986 = fmul fast float %2985, %2979
  %2987 = fmul fast float %2986, %2983
  %2988 = call float @dx.op.unary.f32(i32 21, float %2987)  ; Exp(value)
  %2989 = fmul fast float %2988, 0x3FF04B2960000000
  %2990 = fsub fast float 0x3FF04B2960000000, %2989
  %2991 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2992 = fmul fast float %2991, 4.000000e+00
  %2993 = fadd fast float %174, -5.000000e-01
  %2994 = fadd fast float %175, -5.000000e-01
  %2995 = fmul fast float %2991, 0x3FBEB851E0000000
  %2996 = call float @dx.op.unary.f32(i32 7, float %2995)  ; Saturate(value)
  %2997 = fmul fast float %2996, %2993
  %2998 = fmul fast float %2996, %2994
  %2999 = fadd fast float %2972, %2997
  %3000 = fadd fast float %2973, %2998
  %3001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %33, float %2999, float %3000, float undef, float undef, i32 0, i32 0, i32 undef, float %2992)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.ResRet.f32 %3001, 2
  %3005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.f32 %3005, 2
  %3007 = fmul fast float %3006, %3002
  %3008 = fmul fast float %3006, %3003
  %3009 = fmul fast float %3006, %3004
  %3010 = select i1 %161, float 0.000000e+00, float %3008
  %3011 = select i1 %161, float 0.000000e+00, float %3009
  %3012 = fmul fast float %2999, 2.000000e+00
  %3013 = fmul fast float %3000, 2.000000e+00
  %3014 = fadd fast float %3012, -1.000000e+00
  %3015 = fadd fast float %3013, -1.000000e+00
  %3016 = fmul fast float %3014, %3014
  %3017 = fsub fast float 1.000000e+00, %3016
  %3018 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3019 = fsub fast float 1.000000e+00, %3018
  %3020 = fmul fast float %3019, %2846
  %3021 = fadd fast float %3020, %3018
  %3022 = fmul fast float %3015, %3015
  %3023 = fsub fast float 1.000000e+00, %3022
  %3024 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3025 = fmul fast float %3021, %3024
  %3026 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3027 = fmul fast float %3026, %2883
  br label %3028

; <label>:3028                                    ; preds = %2885, %2851, %2810
  %3029 = phi float [ %3007, %2885 ], [ 0.000000e+00, %2851 ], [ 0.000000e+00, %2810 ]
  %3030 = phi float [ %3010, %2885 ], [ 0.000000e+00, %2851 ], [ 0.000000e+00, %2810 ]
  %3031 = phi float [ %3011, %2885 ], [ 0.000000e+00, %2851 ], [ 0.000000e+00, %2810 ]
  %3032 = phi float [ %3027, %2885 ], [ 0.000000e+00, %2851 ], [ 0.000000e+00, %2810 ]
  %3033 = fcmp fast olt float %3032, 1.000000e+00
  %3034 = or i1 %3033, %2808
  %3035 = zext i1 %3034 to i32
  %3036 = fmul fast float %3032, %2793
  %3037 = fsub fast float %3032, %3036
  %3038 = fsub fast float 1.000000e+00, %2799
  %3039 = fmul fast float %3037, %3038
  %3040 = fadd fast float %3039, %2799
  %3041 = fsub fast float %3040, %3037
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3043 = fmul fast float %3042, %2734
  %3044 = fmul fast float %3042, %2735
  %3045 = fmul fast float %3042, %2736
  %3046 = fsub fast float -0.000000e+00, %3040
  %3047 = fmul fast float %3037, %3029
  %3048 = fmul fast float %3037, %3030
  %3049 = fmul fast float %3037, %3031
  %3050 = fadd fast float %3047, %3043
  %3051 = fadd fast float %3048, %3044
  %3052 = fadd fast float %3049, %3045
  br label %3053

; <label>:3053                                    ; preds = %3028, %2801
  %3054 = phi float [ %2799, %2801 ], [ %3046, %3028 ]
  %3055 = phi float [ %2734, %2801 ], [ %3050, %3028 ]
  %3056 = phi float [ %2735, %2801 ], [ %3051, %3028 ]
  %3057 = phi float [ %2736, %2801 ], [ %3052, %3028 ]
  %3058 = phi i32 [ %2809, %2801 ], [ %3035, %3028 ]
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3656, label %3060

; <label>:3060                                    ; preds = %3053
  %3061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3062 = extractvalue %dx.types.CBufRet.f32 %3061, 2
  %3063 = extractvalue %dx.types.CBufRet.f32 %3061, 3
  %3064 = fmul fast float %3062, %63
  %3065 = fmul fast float %3063, %64
  %3066 = fptoui float %3064 to i32
  %3067 = fptoui float %3065 to i32
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.CBufRet.f32 %3068, 2
  %3071 = extractvalue %dx.types.CBufRet.f32 %3068, 3
  %3072 = fadd fast float %58, -4.000000e+00
  %3073 = call float @dx.op.binary.f32(i32 35, float %3072, float 0.000000e+00)  ; FMax(a,b)
  %3074 = fadd fast float %3073, %3069
  %3075 = fmul fast float %3074, %3070
  %3076 = call float @dx.op.unary.f32(i32 23, float %3075)  ; Log(value)
  %3077 = fmul fast float %3076, %3071
  %3078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.f32 %3078, 2
  %3080 = fmul fast float %3077, %3079
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  %3082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.i32 %3082, 1
  %3084 = add i32 %3083, -1
  %3085 = uitofp i32 %3083 to float
  %3086 = fmul fast float %3085, %3081
  %3087 = fptoui float %3086 to i32
  %3088 = call i32 @dx.op.binary.i32(i32 40, i32 %3087, i32 %3084)  ; UMin(a,b)
  %3089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3090 = extractvalue %dx.types.CBufRet.i32 %3089, 2
  %3091 = extractvalue %dx.types.CBufRet.i32 %3089, 3
  %3092 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3067, i32 %3090, i32 %3066)  ; UMad(a,b,c)
  %3093 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3088, i32 %3091, i32 %3092)  ; UMad(a,b,c)
  %3094 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %3095 = fptoui float %3094 to i32
  %3096 = lshr i32 %3095, 5
  %3097 = call i32 @dx.op.binary.i32(i32 40, i32 %3096, i32 8191)  ; UMin(a,b)
  %3098 = fcmp fast ogt float %2394, 0.000000e+00
  %3099 = fcmp fast ogt float %2622, 0.000000e+00
  %3100 = and i1 %3099, %3098
  br i1 %3100, label %3101, label %3130

; <label>:3101                                    ; preds = %3060
  %3102 = call float @dx.op.dot3.f32(i32 55, float %2620, float %2621, float %2622, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3103 = call float @dx.op.binary.f32(i32 35, float %3102, float -1.000000e+00)  ; FMax(a,b)
  %3104 = call float @dx.op.binary.f32(i32 36, float %3103, float 1.000000e+00)  ; FMin(a,b)
  %3105 = fmul fast float %3104, %3104
  %3106 = fsub fast float 1.000000e+00, %3105
  %3107 = fmul fast float %3106, 0x3FFC6E2300000000
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = fcmp fast ogt float %3108, 0.000000e+00
  %3110 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3111 = fsub fast float 1.000000e+00, %3110
  %3112 = call float @dx.op.unary.f32(i32 23, float %3111)  ; Log(value)
  %3113 = fmul fast float %3112, 5.000000e+00
  %3114 = call float @dx.op.unary.f32(i32 21, float %3113)  ; Exp(value)
  %3115 = fmul fast float %3114, 0x3FEF591A60000000
  %3116 = fadd fast float %3115, 0x3F94DCB540000000
  %3117 = select i1 %3109, float %3116, float 1.000000e+00
  %3118 = fcmp fast oge float %3117, 1.000000e+00
  %3119 = fmul fast float %3102, 2.000000e+00
  %3120 = fadd fast float %3119, %2622
  %3121 = select i1 %3118, float %3120, float %2622
  %3122 = fsub fast float %3121, %2622
  %3123 = fmul fast float %3122, %2394
  %3124 = fadd fast float %3123, %2622
  %3125 = call float @dx.op.dot3.f32(i32 55, float %2620, float %2621, float %3124, float %2620, float %2621, float %3124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3126 = call float @dx.op.unary.f32(i32 25, float %3125)  ; Rsqrt(value)
  %3127 = fmul fast float %3126, %2620
  %3128 = fmul fast float %3126, %2621
  %3129 = fmul fast float %3124, %3126
  br label %3130

; <label>:3130                                    ; preds = %3101, %3060
  %3131 = phi float [ %3127, %3101 ], [ %2620, %3060 ]
  %3132 = phi float [ %3128, %3101 ], [ %2621, %3060 ]
  %3133 = phi float [ %3129, %3101 ], [ %2622, %3060 ]
  %3134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3135 = extractvalue %dx.types.CBufRet.i32 %3134, 2
  %3136 = add nsw i32 %3135, -1
  %3137 = call i32 @dx.op.binary.i32(i32 37, i32 %3136, i32 0)  ; IMax(a,b)
  %3138 = shl i32 %3097, 2
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = lshr i32 %3140, 16
  %3142 = and i32 %3140, 65535
  %3143 = lshr i32 %3140, 21
  %3144 = lshr i32 %3142, 5
  %3145 = call i32 @dx.op.binary.i32(i32 40, i32 %3144, i32 %3137)  ; UMin(a,b)
  %3146 = icmp ugt i32 %3143, %3145
  br i1 %3146, label %3528, label %3147

; <label>:3147                                    ; preds = %3130
  br label %3148

; <label>:3148                                    ; preds = %3517, %3147
  %3149 = phi float [ %3518, %3517 ], [ 0.000000e+00, %3147 ]
  %3150 = phi float [ %3519, %3517 ], [ 0.000000e+00, %3147 ]
  %3151 = phi float [ %3520, %3517 ], [ 0.000000e+00, %3147 ]
  %3152 = phi float [ %3521, %3517 ], [ 1.000000e+00, %3147 ]
  %3153 = phi i32 [ %3525, %3517 ], [ %3143, %3147 ]
  %3154 = phi float [ %3522, %3517 ], [ 0.000000e+00, %3147 ]
  %3155 = phi float [ %3523, %3517 ], [ 0.000000e+00, %3147 ]
  %3156 = phi float [ %3524, %3517 ], [ 0.000000e+00, %3147 ]
  %3157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.i32 %3157, 2
  %3159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3093, i32 %3158, i32 %3153)  ; UMad(a,b,c)
  %3160 = shl i32 %3159, 2
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = shl i32 %3153, 5
  %3164 = sub nsw i32 %3141, %3163
  %3165 = call i32 @dx.op.binary.i32(i32 37, i32 %3164, i32 0)  ; IMax(a,b)
  %3166 = call i32 @dx.op.binary.i32(i32 38, i32 %3165, i32 31)  ; IMin(a,b)
  %3167 = sub nsw i32 1, %3141
  %3168 = add nsw i32 %3167, %3142
  %3169 = call i32 @dx.op.binary.i32(i32 37, i32 %3168, i32 0)  ; IMax(a,b)
  %3170 = call i32 @dx.op.binary.i32(i32 38, i32 %3169, i32 32)  ; IMin(a,b)
  %3171 = and i32 %3170, 31
  %3172 = shl i32 -1, %3171
  %3173 = xor i32 %3172, -1
  %3174 = and i32 %3166, 31
  %3175 = shl i32 %3173, %3174
  %3176 = icmp eq i32 %3170, 32
  %3177 = select i1 %3176, i32 -1, i32 %3175
  %3178 = and i32 %3177, %3162
  %3179 = icmp eq i32 %3178, 0
  br i1 %3179, label %3517, label %3180

; <label>:3180                                    ; preds = %3148
  br label %3181

; <label>:3181                                    ; preds = %3291, %3180
  %3182 = phi float [ %3292, %3291 ], [ %3149, %3180 ]
  %3183 = phi float [ %3293, %3291 ], [ %3150, %3180 ]
  %3184 = phi float [ %3294, %3291 ], [ %3151, %3180 ]
  %3185 = phi float [ %3295, %3291 ], [ %3152, %3180 ]
  %3186 = phi i32 [ %3194, %3291 ], [ %3178, %3180 ]
  %3187 = phi float [ %3296, %3291 ], [ %3154, %3180 ]
  %3188 = phi float [ %3297, %3291 ], [ %3155, %3180 ]
  %3189 = phi float [ %3298, %3291 ], [ %3156, %3180 ]
  %3190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3186)  ; FirstbitLo(value)
  %3191 = add i32 %3190, %3163
  %3192 = and i32 %3190, 31
  %3193 = shl i32 1, %3192
  %3194 = xor i32 %3193, %3186
  %3195 = mul i32 %3191, 72
  %3196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.ResRet.f32 %3196, 1
  %3199 = extractvalue %dx.types.ResRet.f32 %3196, 2
  %3200 = add i32 %3195, 12
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = add i32 %3195, 16
  %3204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.ResRet.f32 %3204, 1
  %3207 = extractvalue %dx.types.ResRet.f32 %3204, 2
  %3208 = add i32 %3195, 28
  %3209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = add i32 %3195, 32
  %3212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = extractvalue %dx.types.ResRet.f32 %3212, 3
  %3217 = add i32 %3195, 48
  %3218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.ResRet.f32 %3218, 1
  %3221 = add i32 %3195, 56
  %3222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.ResRet.f32 %3222, 1
  %3225 = add i32 %3195, 64
  %3226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = mul i32 %3191, 60
  %3230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.ResRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.ResRet.f32 %3230, 2
  %3234 = add i32 %3229, 12
  %3235 = add i32 %3229, 48
  %3236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = and i32 %3202, 32767
  %3241 = bitcast float %3197 to i32
  %3242 = icmp eq i32 %3241, -1
  %3243 = bitcast float %3198 to i32
  %3244 = and i32 %3202, 32768
  %3245 = icmp ne i32 %3244, 0
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.CBufRet.f32 %3246, 1
  %3249 = extractvalue %dx.types.CBufRet.f32 %3246, 2
  %3250 = fsub fast float %3231, %3247
  %3251 = fsub fast float %3232, %3248
  %3252 = fsub fast float %3233, %3249
  %3253 = fsub fast float %119, %3250
  %3254 = fsub fast float %120, %3251
  %3255 = fsub fast float %121, %3252
  %3256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.ResRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.ResRet.f32 %3256, 2
  %3260 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %3257, float %3258, float %3259)  ; Dot3(ax,ay,az,bx,by,bz)
  %3261 = add i32 %3229, 24
  %3262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %3263, float %3264, float %3265)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = add i32 %3229, 36
  %3268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.ResRet.f32 %3268, 2
  %3272 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %3269, float %3270, float %3271)  ; Dot3(ax,ay,az,bx,by,bz)
  %3273 = call float @dx.op.unary.f32(i32 6, float %3260)  ; FAbs(value)
  %3274 = call float @dx.op.unary.f32(i32 6, float %3266)  ; FAbs(value)
  %3275 = call float @dx.op.unary.f32(i32 6, float %3272)  ; FAbs(value)
  %3276 = fsub fast float %3237, %3273
  %3277 = fsub fast float %3238, %3274
  %3278 = fsub fast float %3239, %3275
  %3279 = fmul fast float %3276, %3205
  %3280 = fmul fast float %3277, %3206
  %3281 = fmul fast float %3278, %3207
  %3282 = call float @dx.op.binary.f32(i32 36, float %3280, float %3281)  ; FMin(a,b)
  %3283 = call float @dx.op.binary.f32(i32 36, float %3279, float %3282)  ; FMin(a,b)
  %3284 = call float @dx.op.unary.f32(i32 7, float %3283)  ; Saturate(value)
  %3285 = call float @dx.op.binary.f32(i32 36, float %3185, float %3284)  ; FMin(a,b)
  %3286 = uitofp i1 %3245 to float
  %3287 = fadd fast float %2394, 1.000000e+00
  %3288 = fsub fast float %3287, %3286
  %3289 = fmul fast float %3285, %3288
  %3290 = fcmp fast ogt float %3289, 0.000000e+00
  br i1 %3290, label %3300, label %3291

; <label>:3291                                    ; preds = %3442, %3181
  %3292 = phi float [ %3506, %3442 ], [ %3182, %3181 ]
  %3293 = phi float [ %3507, %3442 ], [ %3183, %3181 ]
  %3294 = phi float [ %3508, %3442 ], [ %3184, %3181 ]
  %3295 = phi float [ %3515, %3442 ], [ %3185, %3181 ]
  %3296 = phi float [ %3512, %3442 ], [ %3187, %3181 ]
  %3297 = phi float [ %3513, %3442 ], [ %3188, %3181 ]
  %3298 = phi float [ %3514, %3442 ], [ %3189, %3181 ]
  %3299 = icmp eq i32 %3186, %3193
  br i1 %3299, label %3516, label %3181

; <label>:3300                                    ; preds = %3181
  br i1 %3242, label %3358, label %3301

; <label>:3301                                    ; preds = %3300
  %3302 = fsub fast float -0.000000e+00, %3257
  %3303 = fsub fast float -0.000000e+00, %3258
  %3304 = fsub fast float -0.000000e+00, %3259
  %3305 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3132, float %3133, float %3302, float %3303, float %3304)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fsub fast float -0.000000e+00, %3305
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %3302, float %3303, float %3304)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = fadd fast float %3307, %3220
  %3309 = fadd fast float %3219, %3307
  %3310 = fsub fast float -0.000000e+00, %3309
  %3311 = fcmp ogt float %3305, -0.000000e+00
  %3312 = select i1 %3311, float %3310, float %3308
  %3313 = call float @dx.op.unary.f32(i32 6, float %3306)  ; FAbs(value)
  %3314 = fdiv fast float 1.000000e+00, %3313
  %3315 = fmul fast float %3312, %3314
  %3316 = call float @dx.op.binary.f32(i32 35, float %3315, float 0.000000e+00)  ; FMax(a,b)
  %3317 = fsub fast float -0.000000e+00, %3263
  %3318 = fsub fast float -0.000000e+00, %3264
  %3319 = fsub fast float -0.000000e+00, %3265
  %3320 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3132, float %3133, float %3317, float %3318, float %3319)  ; Dot3(ax,ay,az,bx,by,bz)
  %3321 = fsub fast float -0.000000e+00, %3320
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %3317, float %3318, float %3319)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = fadd fast float %3322, %3224
  %3324 = fadd fast float %3223, %3322
  %3325 = fsub fast float -0.000000e+00, %3324
  %3326 = fcmp ogt float %3320, -0.000000e+00
  %3327 = select i1 %3326, float %3325, float %3323
  %3328 = call float @dx.op.unary.f32(i32 6, float %3321)  ; FAbs(value)
  %3329 = fdiv fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3327, %3329
  %3331 = call float @dx.op.binary.f32(i32 35, float %3330, float 0.000000e+00)  ; FMax(a,b)
  %3332 = fsub fast float -0.000000e+00, %3269
  %3333 = fsub fast float -0.000000e+00, %3270
  %3334 = fsub fast float -0.000000e+00, %3271
  %3335 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3132, float %3133, float %3332, float %3333, float %3334)  ; Dot3(ax,ay,az,bx,by,bz)
  %3336 = fsub fast float -0.000000e+00, %3335
  %3337 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %3332, float %3333, float %3334)  ; Dot3(ax,ay,az,bx,by,bz)
  %3338 = fadd fast float %3337, %3228
  %3339 = fadd fast float %3227, %3337
  %3340 = fsub fast float -0.000000e+00, %3339
  %3341 = fcmp ogt float %3335, -0.000000e+00
  %3342 = select i1 %3341, float %3340, float %3338
  %3343 = call float @dx.op.unary.f32(i32 6, float %3336)  ; FAbs(value)
  %3344 = fdiv fast float 1.000000e+00, %3343
  %3345 = fmul fast float %3342, %3344
  %3346 = call float @dx.op.binary.f32(i32 35, float %3345, float 0.000000e+00)  ; FMax(a,b)
  %3347 = call float @dx.op.binary.f32(i32 36, float %3331, float %3346)  ; FMin(a,b)
  %3348 = call float @dx.op.binary.f32(i32 36, float %3316, float %3347)  ; FMin(a,b)
  %3349 = fmul fast float %3348, %3131
  %3350 = fmul fast float %3348, %3132
  %3351 = fmul fast float %3348, %3133
  %3352 = fadd fast float %3349, %119
  %3353 = fadd fast float %3350, %120
  %3354 = fadd fast float %3351, %121
  %3355 = fsub fast float %3352, %3197
  %3356 = fsub fast float %3353, %3198
  %3357 = fsub fast float %3354, %3199
  br label %3365

; <label>:3358                                    ; preds = %3300
  %3359 = fmul fast float %3131, 8.096000e+03
  %3360 = fmul fast float %3132, 8.096000e+03
  %3361 = fmul fast float %3133, 8.096000e+03
  %3362 = fadd fast float %3359, %119
  %3363 = fadd fast float %3360, %120
  %3364 = fadd fast float %3361, %121
  br label %3365

; <label>:3365                                    ; preds = %3358, %3301
  %3366 = phi float [ %3131, %3358 ], [ %3355, %3301 ]
  %3367 = phi float [ %3132, %3358 ], [ %3356, %3301 ]
  %3368 = phi float [ %3133, %3358 ], [ %3357, %3301 ]
  %3369 = phi float [ %3362, %3358 ], [ %3352, %3301 ]
  %3370 = phi float [ %3363, %3358 ], [ %3353, %3301 ]
  %3371 = phi float [ %3364, %3358 ], [ %3354, %3301 ]
  %3372 = fcmp fast olt float %3216, 1.000000e+00
  br i1 %3372, label %3373, label %3404, !dx.controlflow.hints !74

; <label>:3373                                    ; preds = %3365
  %3374 = fmul fast float %3368, %3214
  %3375 = fmul fast float %3367, %3215
  %3376 = fsub fast float %3374, %3375
  %3377 = fmul fast float %3366, %3215
  %3378 = fmul fast float %3368, %3213
  %3379 = fsub fast float %3377, %3378
  %3380 = fmul fast float %3367, %3213
  %3381 = fmul fast float %3366, %3214
  %3382 = fsub fast float %3380, %3381
  %3383 = fmul fast float %3376, 2.000000e+00
  %3384 = fmul fast float %3379, 2.000000e+00
  %3385 = fmul fast float %3382, 2.000000e+00
  %3386 = fmul fast float %3383, %3216
  %3387 = fmul fast float %3384, %3216
  %3388 = fmul fast float %3385, %3216
  %3389 = fmul fast float %3385, %3214
  %3390 = fmul fast float %3384, %3215
  %3391 = fmul fast float %3383, %3215
  %3392 = fmul fast float %3385, %3213
  %3393 = fmul fast float %3384, %3213
  %3394 = fmul fast float %3383, %3214
  %3395 = fadd fast float %3389, %3366
  %3396 = fadd fast float %3395, %3386
  %3397 = fsub fast float %3396, %3390
  %3398 = fsub fast float %3367, %3392
  %3399 = fadd fast float %3398, %3387
  %3400 = fadd fast float %3399, %3391
  %3401 = fadd fast float %3388, %3368
  %3402 = fsub fast float %3401, %3394
  %3403 = fadd fast float %3402, %3393
  br label %3404

; <label>:3404                                    ; preds = %3373, %3365
  %3405 = phi float [ %3397, %3373 ], [ %3366, %3365 ]
  %3406 = phi float [ %3400, %3373 ], [ %3367, %3365 ]
  %3407 = phi float [ %3403, %3373 ], [ %3368, %3365 ]
  br i1 %3242, label %3439, label %3408

; <label>:3408                                    ; preds = %3404
  %3409 = fmul fast float %2595, 0x400187C840000000
  %3410 = fadd fast float %3409, 0xC00EFC2120000000
  %3411 = fmul fast float %3410, %2595
  %3412 = fadd fast float %3411, 0x3FE5D16340000000
  %3413 = fmul fast float %3412, %2595
  %3414 = fadd fast float %3413, 1.000000e+00
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fsub fast float %3369, %119
  %3417 = fsub fast float %3370, %120
  %3418 = fsub fast float %3371, %121
  %3419 = fsub fast float %3369, %3197
  %3420 = fsub fast float %3370, %3198
  %3421 = fsub fast float %3371, %3199
  %3422 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3417, float %3418, float %3416, float %3417, float %3418)  ; Dot3(ax,ay,az,bx,by,bz)
  %3423 = call float @dx.op.dot3.f32(i32 55, float %3419, float %3420, float %3421, float %3419, float %3420, float %3421)  ; Dot3(ax,ay,az,bx,by,bz)
  %3424 = fadd fast float %3423, 0x3EE4F8B580000000
  %3425 = fdiv fast float %3422, %3424
  %3426 = bitcast float %3425 to i32
  %3427 = ashr i32 %3426, 1
  %3428 = add nsw i32 %3427, 532487669
  %3429 = bitcast i32 %3428 to float
  %3430 = fmul fast float %3429, %3415
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = fmul fast float %3431, 0x4009981AE0000000
  %3433 = fsub fast float 0x40111BBD80000000, %3432
  %3434 = fmul fast float %3433, %3431
  %3435 = fadd fast float %3434, 0xC0009F6020000000
  %3436 = fmul fast float %3435, %3431
  %3437 = fadd fast float %3436, 1.000000e+00
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  br label %3442

; <label>:3439                                    ; preds = %3404
  %3440 = icmp ne i32 %3243, -1
  %3441 = zext i1 %3440 to i32
  br label %3442

; <label>:3442                                    ; preds = %3439, %3408
  %3443 = phi float [ %2595, %3439 ], [ %3438, %3408 ]
  %3444 = phi i32 [ %3441, %3439 ], [ 0, %3408 ]
  %3445 = fmul float %3443, 5.000000e+00
  %3446 = fsub float 5.000000e+00, %3445
  %3447 = icmp ne i32 %3444, 0
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 3
  %3450 = fadd fast float %3449, %3446
  %3451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3450)  ; FMax(a,b)
  %3452 = call float @dx.op.unary.f32(i32 6, float %3405)  ; FAbs(value)
  %3453 = call float @dx.op.unary.f32(i32 6, float %3406)  ; FAbs(value)
  %3454 = fadd fast float %3453, %3452
  %3455 = call float @dx.op.unary.f32(i32 6, float %3407)  ; FAbs(value)
  %3456 = fadd fast float %3454, %3455
  %3457 = fcmp fast oeq float %3456, 0.000000e+00
  %3458 = fdiv fast float 1.000000e+00, %3456
  %3459 = select i1 %3457, float 1.000000e+00, float %3458
  %3460 = fmul fast float %3459, %3405
  %3461 = fmul fast float %3459, %3406
  %3462 = call float @dx.op.unary.f32(i32 6, float %3461)  ; FAbs(value)
  %3463 = call float @dx.op.unary.f32(i32 6, float %3460)  ; FAbs(value)
  %3464 = fsub fast float 1.000000e+00, %3462
  %3465 = fsub fast float 1.000000e+00, %3463
  %3466 = fcmp fast oge float %3460, 0.000000e+00
  %3467 = fcmp fast oge float %3461, 0.000000e+00
  %3468 = select i1 %3466, float 1.000000e+00, float -1.000000e+00
  %3469 = select i1 %3467, float 1.000000e+00, float -1.000000e+00
  %3470 = fcmp fast ole float %3407, 0.000000e+00
  %3471 = fmul fast float %3468, %3464
  %3472 = fmul fast float %3469, %3465
  %3473 = select i1 %3470, float %3471, float %3460
  %3474 = select i1 %3470, float %3472, float %3461
  %3475 = fmul fast float %3473, 5.000000e-01
  %3476 = fmul fast float %3474, 5.000000e-01
  %3477 = fadd fast float %3475, 5.000000e-01
  %3478 = fadd fast float %3476, 5.000000e-01
  %3479 = uitofp i32 %3240 to float
  %3480 = call float @dx.op.binary.f32(i32 36, float %3451, float 3.000000e+00)  ; FMin(a,b)
  %3481 = fadd fast float %3480, 2.000000e+00
  %3482 = call float @dx.op.unary.f32(i32 21, float %3481)  ; Exp(value)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3484 = fmul fast float %3483, %3482
  %3485 = fmul fast float %3484, 2.000000e+00
  %3486 = fsub fast float 1.000000e+00, %3485
  %3487 = fmul fast float %3477, %3486
  %3488 = fmul fast float %3478, %3486
  %3489 = fadd fast float %3487, %3484
  %3490 = fadd fast float %3488, %3484
  %3491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %33, float %3489, float %3490, float %3479, float undef, i32 0, i32 0, i32 undef, float %3451)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 3
  %3497 = fmul fast float %3496, %3210
  %3498 = call float @dx.op.binary.f32(i32 36, float %2675, float %3497)  ; FMin(a,b)
  %3499 = select i1 %3447, float %3498, float %3497
  %3500 = fmul fast float %3492, %3289
  %3501 = fmul fast float %3500, %3499
  %3502 = fmul fast float %3493, %3289
  %3503 = fmul fast float %3502, %3499
  %3504 = fmul fast float %3494, %3289
  %3505 = fmul fast float %3504, %3499
  %3506 = fadd fast float %3501, %3182
  %3507 = fadd fast float %3503, %3183
  %3508 = fadd fast float %3505, %3184
  %3509 = fmul fast float %3369, %3289
  %3510 = fmul fast float %3370, %3289
  %3511 = fmul fast float %3371, %3289
  %3512 = fadd fast float %3509, %3187
  %3513 = fadd fast float %3510, %3188
  %3514 = fadd fast float %3511, %3189
  %3515 = fsub fast float %3185, %3289
  br label %3291

; <label>:3516                                    ; preds = %3291
  br label %3517

; <label>:3517                                    ; preds = %3516, %3148
  %3518 = phi float [ %3149, %3148 ], [ %3292, %3516 ]
  %3519 = phi float [ %3150, %3148 ], [ %3293, %3516 ]
  %3520 = phi float [ %3151, %3148 ], [ %3294, %3516 ]
  %3521 = phi float [ %3152, %3148 ], [ %3295, %3516 ]
  %3522 = phi float [ %3154, %3148 ], [ %3296, %3516 ]
  %3523 = phi float [ %3155, %3148 ], [ %3297, %3516 ]
  %3524 = phi float [ %3156, %3148 ], [ %3298, %3516 ]
  %3525 = add i32 %3153, 1
  %3526 = icmp ugt i32 %3525, %3145
  br i1 %3526, label %3527, label %3148, !llvm.loop !75

; <label>:3527                                    ; preds = %3517
  br label %3528

; <label>:3528                                    ; preds = %3527, %3130
  %3529 = phi float [ 0.000000e+00, %3130 ], [ %3518, %3527 ]
  %3530 = phi float [ 0.000000e+00, %3130 ], [ %3519, %3527 ]
  %3531 = phi float [ 0.000000e+00, %3130 ], [ %3520, %3527 ]
  %3532 = phi float [ 0.000000e+00, %3130 ], [ %3522, %3527 ]
  %3533 = phi float [ 0.000000e+00, %3130 ], [ %3523, %3527 ]
  %3534 = phi float [ 0.000000e+00, %3130 ], [ %3524, %3527 ]
  %3535 = call float @dx.op.dot3.f32(i32 55, float %3529, float %3530, float %3531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3536 = select i1 %161, float 0.000000e+00, float %3529
  %3537 = select i1 %161, float %3535, float %3530
  %3538 = select i1 %161, float 0.000000e+00, float %3531
  %3539 = fcmp fast olt float %3054, 0.000000e+00
  %3540 = call float @dx.op.unary.f32(i32 6, float %3054)  ; FAbs(value)
  %3541 = fmul fast float %3540, %3055
  %3542 = fmul fast float %3540, %3056
  %3543 = fmul fast float %3540, %3057
  %3544 = select i1 %3539, float %3055, float %3541
  %3545 = select i1 %3539, float %3056, float %3542
  %3546 = select i1 %3539, float %3057, float %3543
  %3547 = fsub fast float 1.000000e+00, %3540
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = fmul fast float %3548, %3536
  %3550 = fmul fast float %3548, %3537
  %3551 = fmul fast float %3548, %3538
  %3552 = fadd fast float %3544, %3549
  %3553 = fadd fast float %3545, %3550
  %3554 = fadd fast float %3546, %3551
  %3555 = fcmp fast une float %2804, 0.000000e+00
  br i1 %3555, label %3656, label %3556

; <label>:3556                                    ; preds = %3528
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3559 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3560 = extractvalue %dx.types.CBufRet.f32 %3557, 2
  %3561 = extractvalue %dx.types.CBufRet.f32 %3557, 3
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.CBufRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.CBufRet.f32 %3562, 2
  %3566 = extractvalue %dx.types.CBufRet.f32 %3562, 3
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3569 = extractvalue %dx.types.CBufRet.f32 %3567, 1
  %3570 = extractvalue %dx.types.CBufRet.f32 %3567, 2
  %3571 = extractvalue %dx.types.CBufRet.f32 %3567, 3
  %3572 = call float @dx.op.dot3.f32(i32 55, float %3568, float %3569, float %3570, float %2620, float %2621, float %2622)  ; Dot3(ax,ay,az,bx,by,bz)
  %3573 = call float @dx.op.dot3.f32(i32 55, float %3532, float %3533, float %3534, float %3568, float %3569, float %3570)  ; Dot3(ax,ay,az,bx,by,bz)
  %3574 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %3568, float %3569, float %3570)  ; Dot3(ax,ay,az,bx,by,bz)
  %3575 = fadd fast float %2595, -1.000000e+00
  %3576 = fsub fast float %3573, %3574
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 2
  %3579 = fmul fast float %3578, %3573
  %3580 = fdiv fast float 1.600000e+02, %3579
  %3581 = fmul fast float %3575, %3575
  %3582 = fmul fast float %3581, 0xBFB5B17960000000
  %3583 = fmul fast float %3582, %3576
  %3584 = fmul fast float %3583, %3580
  %3585 = call float @dx.op.unary.f32(i32 21, float %3584)  ; Exp(value)
  %3586 = fmul fast float %3585, 0x3FF04B2960000000
  %3587 = fsub fast float 0x3FF04B2960000000, %3586
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fmul fast float %3588, 4.000000e+00
  %3590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.CBufRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.CBufRet.f32 %3590, 2
  %3594 = fadd fast float %3591, %3532
  %3595 = fadd fast float %3592, %3533
  %3596 = fadd fast float %3593, %3534
  %3597 = fmul fast float %3594, %3558
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3559, float %3597)  ; FMad(a,b,c)
  %3599 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3560, float %3598)  ; FMad(a,b,c)
  %3600 = fadd fast float %3599, %3561
  %3601 = fmul fast float %3594, %3563
  %3602 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3564, float %3601)  ; FMad(a,b,c)
  %3603 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3565, float %3602)  ; FMad(a,b,c)
  %3604 = fadd fast float %3603, %3566
  %3605 = fmul fast float %3594, %3568
  %3606 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3569, float %3605)  ; FMad(a,b,c)
  %3607 = call float @dx.op.tertiary.f32(i32 46, float %3596, float %3570, float %3606)  ; FMad(a,b,c)
  %3608 = fadd fast float %3607, %3571
  %3609 = fdiv fast float %3600, %3608
  %3610 = fdiv fast float %3604, %3608
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.CBufRet.f32 %3611, 1
  %3614 = fmul fast float %3612, %3609
  %3615 = fmul fast float %3613, %3610
  %3616 = extractvalue %dx.types.CBufRet.f32 %3611, 2
  %3617 = extractvalue %dx.types.CBufRet.f32 %3611, 3
  %3618 = fadd fast float %3614, %3616
  %3619 = fadd fast float %3615, %3617
  %3620 = fmul fast float %3572, 8.000000e+00
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3622 = fmul fast float %3618, 2.000000e+00
  %3623 = fmul fast float %3619, 2.000000e+00
  %3624 = fadd fast float %3622, -1.000000e+00
  %3625 = fadd fast float %3623, -1.000000e+00
  %3626 = fmul fast float %3624, %3624
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3629 = fmul fast float %3625, %3625
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = call float @dx.op.unary.f32(i32 7, float %3630)  ; Saturate(value)
  %3632 = fmul fast float %2804, %3628
  %3633 = fmul fast float %3632, %3631
  %3634 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3635 = fmul fast float %3634, %3621
  %3636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %33, float %3618, float %3619, float undef, float undef, i32 0, i32 0, i32 undef, float %3589)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = select i1 %161, float 0.000000e+00, float %3638
  %3641 = select i1 %161, float 0.000000e+00, float %3639
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 2
  %3644 = fmul fast float %3643, %3637
  %3645 = fmul fast float %3640, %3643
  %3646 = fmul fast float %3641, %3643
  %3647 = fsub fast float %3644, %3536
  %3648 = fsub fast float %3645, %3537
  %3649 = fsub fast float %3646, %3538
  %3650 = fmul fast float %3647, %3635
  %3651 = fmul fast float %3648, %3635
  %3652 = fmul fast float %3649, %3635
  %3653 = fadd fast float %3650, %3536
  %3654 = fadd fast float %3651, %3537
  %3655 = fadd fast float %3652, %3538
  br label %3656

; <label>:3656                                    ; preds = %3556, %3528, %3053, %2777
  %3657 = phi float [ %3055, %3053 ], [ %3552, %3528 ], [ %2734, %2777 ], [ %3653, %3556 ]
  %3658 = phi float [ %3056, %3053 ], [ %3553, %3528 ], [ %2735, %2777 ], [ %3654, %3556 ]
  %3659 = phi float [ %3057, %3053 ], [ %3554, %3528 ], [ %2736, %2777 ], [ %3655, %3556 ]
  %3660 = fmul fast float %2783, %2730
  %3661 = fmul fast float %2783, %2731
  %3662 = fmul fast float %2783, %2732
  %3663 = call float @dx.op.dot3.f32(i32 55, float %2592, float %2593, float %2594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3664 = fcmp fast ogt float %3663, 0x3E7FF19E20000000
  %3665 = fdiv fast float 1.000000e+00, %3663
  %3666 = select i1 %3664, float %3665, float 0.000000e+00
  %3667 = fmul fast float %3666, %2592
  %3668 = fmul fast float %3666, %2593
  %3669 = fmul fast float %3666, %2594
  %3670 = fadd fast float %3667, -1.000000e+00
  %3671 = fadd fast float %3668, -1.000000e+00
  %3672 = fadd fast float %3669, -1.000000e+00
  %3673 = fmul fast float %3670, 5.000000e-01
  %3674 = fmul fast float %3671, 5.000000e-01
  %3675 = fmul fast float %3672, 5.000000e-01
  %3676 = fadd fast float %3673, 1.000000e+00
  %3677 = fadd fast float %3674, 1.000000e+00
  %3678 = fadd fast float %3675, 1.000000e+00
  %3679 = fmul fast float %3657, %2778
  %3680 = fmul fast float %3658, %2779
  %3681 = fmul fast float %3659, %2780
  %3682 = fsub fast float 1.000000e+00, %2614
  %3683 = bitcast float %3682 to i32
  %3684 = sitofp i32 %3683 to float
  %3685 = fmul fast float %3684, 5.000000e+00
  %3686 = fadd fast float %3685, 0xC1EFBF8940000000
  %3687 = fptosi float %3686 to i32
  %3688 = bitcast i32 %3687 to float
  %3689 = fmul fast float %3688, %1962
  %3690 = fmul fast float %2730, %3689
  %3691 = fmul fast float %3690, %2783
  %3692 = fmul fast float %3691, %3676
  %3693 = fmul fast float %2731, %3689
  %3694 = fmul fast float %3693, %2783
  %3695 = fmul fast float %3694, %3677
  %3696 = fmul fast float %2732, %3689
  %3697 = fmul fast float %3696, %2783
  %3698 = fmul fast float %3697, %3678
  %3699 = fmul fast float %3660, %1983
  %3700 = fmul fast float %3661, %1983
  %3701 = fmul fast float %3662, %1983
  %3702 = fadd fast float %3679, %1964
  %3703 = fadd fast float %3702, %3692
  %3704 = fmul fast float %3703, %1983
  %3705 = fadd fast float %3680, %1965
  %3706 = fadd fast float %3705, %3695
  %3707 = fmul fast float %3706, %1983
  %3708 = fadd fast float %3681, %1966
  %3709 = fadd fast float %3708, %3698
  %3710 = fmul fast float %3709, %1983
  %3711 = bitcast i32 %2638 to float
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 3
  %3714 = fcmp fast oeq float %3713, 0.000000e+00
  br i1 %3714, label %3933, label %3715

; <label>:3715                                    ; preds = %3656
  %3716 = extractvalue %dx.types.CBufRet.f32 %3712, 0
  %3717 = extractvalue %dx.types.CBufRet.f32 %3712, 1
  %3718 = extractvalue %dx.types.CBufRet.f32 %3712, 2
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.CBufRet.f32 %3719, 1
  %3722 = extractvalue %dx.types.CBufRet.f32 %3719, 2
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.CBufRet.f32 %3723, 1
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3720, float %3721, float %3722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = select i1 %161, float %3724, float %3720
  %3728 = select i1 %161, float %3726, float %3721
  %3729 = select i1 %161, float %3725, float %3722
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %3732 = fcmp fast une float %3731, 0.000000e+00
  br i1 %3732, label %3733, label %3750

; <label>:3733                                    ; preds = %3715
  %3734 = fptoui float %63 to i32
  %3735 = fptoui float %64 to i32
  %3736 = lshr i32 %3734, 4
  %3737 = lshr i32 %3735, 4
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = fptoui float %3739 to i32
  %3741 = add i32 %3740, 15
  %3742 = lshr i32 %3741, 4
  %3743 = mul i32 %3742, %3737
  %3744 = add i32 %3743, %3736
  %3745 = shl i32 %3744, 3
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = and i32 %3747, -268435456
  %3749 = icmp eq i32 %3748, -1342177280
  br i1 %3749, label %3755, label %3750

; <label>:3750                                    ; preds = %3733, %3715
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %35, float %2600, float %2601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.ResRet.f32 %3751, 2
  br label %3755

; <label>:3755                                    ; preds = %3750, %3733
  %3756 = phi float [ %3752, %3750 ], [ 0.000000e+00, %3733 ]
  %3757 = phi float [ %3753, %3750 ], [ 0.000000e+00, %3733 ]
  %3758 = phi float [ %3754, %3750 ], [ 0.000000e+00, %3733 ]
  %3759 = call float @dx.op.binary.f32(i32 36, float %3757, float %3758)  ; FMin(a,b)
  %3760 = call float @dx.op.binary.f32(i32 36, float %3756, float %3759)  ; FMin(a,b)
  %3761 = fcmp fast ogt float %3760, 0.000000e+00
  br i1 %3761, label %3762, label %3933, !dx.controlflow.hints !77

; <label>:3762                                    ; preds = %3755
  %3763 = fmul fast float %3756, %3727
  %3764 = fmul fast float %3757, %3728
  %3765 = fmul fast float %3758, %3729
  %3766 = fsub fast float %3716, %2585
  %3767 = fsub fast float %3717, %2584
  %3768 = fsub fast float %3718, %2583
  %3769 = call float @dx.op.dot3.f32(i32 55, float %3766, float %3767, float %3768, float %3766, float %3767, float %3768)  ; Dot3(ax,ay,az,bx,by,bz)
  %3770 = call float @dx.op.unary.f32(i32 25, float %3769)  ; Rsqrt(value)
  %3771 = fmul fast float %3770, %3766
  %3772 = fmul fast float %3770, %3767
  %3773 = fmul fast float %3770, %3768
  %3774 = call float @dx.op.dot3.f32(i32 55, float %3716, float %3717, float %3718, float %2589, float %2590, float %2591)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = call float @dx.op.dot3.f32(i32 55, float %2582, float %2581, float %2580, float %3771, float %3772, float %3773)  ; Dot3(ax,ay,az,bx,by,bz)
  %3776 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3777 = fmul fast float %3776, %3776
  %3778 = fmul fast float %3777, %3711
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = fmul fast float %3779, %3776
  %3781 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float %3771, float %3772, float %3773)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = fmul fast float %3781, %3781
  %3783 = call float @dx.op.unary.f32(i32 6, float %3774)  ; FAbs(value)
  %3784 = fsub fast float 1.000000e+00, %2632
  %3785 = fmul fast float %2614, %2614
  %3786 = fmul fast float %3785, %3784
  %3787 = fadd fast float %3786, %2632
  %3788 = bitcast float %3787 to i32
  %3789 = ashr i32 %3788, 1
  %3790 = add nsw i32 %3789, 532487669
  %3791 = bitcast i32 %3790 to float
  %3792 = fadd fast float %3791, %2614
  %3793 = fmul fast float %2632, %3782
  %3794 = fsub fast float 1.000000e+00, %3782
  %3795 = fadd fast float %3794, %3793
  %3796 = fmul fast float %3783, %3783
  %3797 = fmul fast float %3796, %3784
  %3798 = fadd fast float %3797, %2632
  %3799 = bitcast float %3798 to i32
  %3800 = ashr i32 %3799, 1
  %3801 = add nsw i32 %3800, 532487669
  %3802 = bitcast i32 %3801 to float
  %3803 = fadd fast float %3802, %3783
  %3804 = fmul fast float %3795, %3795
  %3805 = fmul fast float %3804, %3792
  %3806 = fmul fast float %3805, %3803
  %3807 = fdiv fast float 0x3FF0A00000000000, %3806
  %3808 = fmul fast float %3807, %2632
  %3809 = call float @dx.op.unary.f32(i32 6, float %3775)  ; FAbs(value)
  %3810 = fsub fast float 1.000000e+00, %3809
  %3811 = bitcast float %3810 to i32
  %3812 = sitofp i32 %3811 to float
  %3813 = fmul fast float %3812, 5.000000e+00
  %3814 = fadd fast float %3813, 0xC1EFBF8940000000
  %3815 = fptosi float %3814 to i32
  %3816 = bitcast i32 %3815 to float
  %3817 = fsub fast float 1.000000e+00, %2586
  %3818 = fsub fast float 1.000000e+00, %2587
  %3819 = fsub fast float 1.000000e+00, %2612
  %3820 = fmul fast float %3816, %3817
  %3821 = fmul fast float %3816, %3818
  %3822 = fmul fast float %3816, %3819
  %3823 = fadd fast float %3820, %2586
  %3824 = fadd fast float %3821, %2587
  %3825 = fadd fast float %3822, %2612
  br i1 %2750, label %3826, label %3849

; <label>:3826                                    ; preds = %3762
  %3827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1963, float %3809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3831 = fadd fast float %3828, -5.000000e-01
  %3832 = fadd fast float %3829, -5.000000e-01
  %3833 = fadd fast float %3830, -5.000000e-01
  %3834 = fmul fast float %2586, 4.000000e+00
  %3835 = fmul fast float %3834, %3817
  %3836 = fmul fast float %3835, %3831
  %3837 = fmul fast float %2587, 4.000000e+00
  %3838 = fmul fast float %3837, %3818
  %3839 = fmul fast float %3838, %3832
  %3840 = fmul fast float %2612, 4.000000e+00
  %3841 = fmul fast float %3840, %3819
  %3842 = fmul fast float %3841, %3833
  %3843 = fadd fast float %3836, %3823
  %3844 = fadd fast float %3839, %3824
  %3845 = fadd fast float %3842, %3825
  %3846 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3847 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  br label %3849

; <label>:3849                                    ; preds = %3826, %3762
  %3850 = phi float [ %3846, %3826 ], [ %3823, %3762 ]
  %3851 = phi float [ %3847, %3826 ], [ %3824, %3762 ]
  %3852 = phi float [ %3848, %3826 ], [ %3825, %3762 ]
  %3853 = fmul fast float %3774, 9.843750e-01
  %3854 = fadd fast float %3853, 7.812500e-03
  %3855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3854, float %2740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 3
  %3858 = fmul fast float %3856, %2586
  %3859 = fmul fast float %3856, %2587
  %3860 = fmul fast float %3856, %2612
  %3861 = fadd fast float %3858, %3857
  %3862 = fadd fast float %3859, %3857
  %3863 = fadd fast float %3860, %3857
  br i1 %2750, label %3864, label %3887

; <label>:3864                                    ; preds = %3849
  %3865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1963, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.ResRet.f32 %3865, 2
  %3869 = fadd fast float %3866, -5.000000e-01
  %3870 = fadd fast float %3867, -5.000000e-01
  %3871 = fadd fast float %3868, -5.000000e-01
  %3872 = fmul fast float %2586, 4.000000e+00
  %3873 = fmul fast float %3872, %3817
  %3874 = fmul fast float %3873, %3869
  %3875 = fmul fast float %2587, 4.000000e+00
  %3876 = fmul fast float %3875, %3818
  %3877 = fmul fast float %3876, %3870
  %3878 = fmul fast float %2612, 4.000000e+00
  %3879 = fmul fast float %3878, %3819
  %3880 = fmul fast float %3879, %3871
  %3881 = fadd fast float %3874, %3861
  %3882 = fadd fast float %3877, %3862
  %3883 = fadd fast float %3880, %3863
  %3884 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3885 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3886 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  br label %3887

; <label>:3887                                    ; preds = %3864, %3849
  %3888 = phi float [ %3884, %3864 ], [ %3861, %3849 ]
  %3889 = phi float [ %3885, %3864 ], [ %3862, %3849 ]
  %3890 = phi float [ %3886, %3864 ], [ %3863, %3849 ]
  %3891 = call float @dx.op.binary.f32(i32 35, float %3889, float %3890)  ; FMax(a,b)
  %3892 = call float @dx.op.binary.f32(i32 35, float %3888, float %3891)  ; FMax(a,b)
  %3893 = fsub fast float 1.000000e+00, %3892
  %3894 = fmul fast float %3850, %3808
  %3895 = fmul fast float %3851, %3808
  %3896 = fmul fast float %3852, %3808
  %3897 = fsub fast float 1.000000e+00, %3775
  %3898 = bitcast float %3897 to i32
  %3899 = sitofp i32 %3898 to float
  %3900 = fmul fast float %3899, 5.000000e+00
  %3901 = fadd fast float %3900, 0xC1EFBF8940000000
  %3902 = fptosi float %3901 to i32
  %3903 = bitcast i32 %3902 to float
  %3904 = fmul fast float %3903, %1962
  %3905 = fmul fast float %3893, %3904
  %3906 = fmul fast float %3905, %3676
  %3907 = fmul fast float %3905, %3677
  %3908 = fmul fast float %3905, %3678
  %3909 = fadd fast float %3906, %3894
  %3910 = fadd fast float %3907, %3895
  %3911 = fadd fast float %3908, %3896
  %3912 = fmul fast float %3780, %3763
  %3913 = fmul fast float %3912, %3893
  %3914 = fmul fast float %3780, %3764
  %3915 = fmul fast float %3914, %3893
  %3916 = fmul fast float %3780, %3765
  %3917 = fmul fast float %3916, %3893
  %3918 = fmul fast float %3912, %3909
  %3919 = fmul fast float %3914, %3910
  %3920 = fmul fast float %3916, %3911
  %3921 = fadd fast float %3913, %3660
  %3922 = fmul fast float %3921, %1983
  %3923 = fadd fast float %3915, %3661
  %3924 = fmul fast float %3923, %1983
  %3925 = fadd fast float %3917, %3662
  %3926 = fmul fast float %3925, %1983
  %3927 = fadd fast float %3918, %3703
  %3928 = fmul fast float %3927, %1983
  %3929 = fadd fast float %3919, %3706
  %3930 = fmul fast float %3929, %1983
  %3931 = fadd fast float %3920, %3709
  %3932 = fmul fast float %3931, %1983
  br label %3933

; <label>:3933                                    ; preds = %3887, %3755, %3656
  %3934 = phi float [ %3704, %3656 ], [ %3704, %3755 ], [ %3928, %3887 ]
  %3935 = phi float [ %3707, %3656 ], [ %3707, %3755 ], [ %3930, %3887 ]
  %3936 = phi float [ %3710, %3656 ], [ %3710, %3755 ], [ %3932, %3887 ]
  %3937 = phi float [ %3699, %3656 ], [ %3699, %3755 ], [ %3922, %3887 ]
  %3938 = phi float [ %3700, %3656 ], [ %3700, %3755 ], [ %3924, %3887 ]
  %3939 = phi float [ %3701, %3656 ], [ %3701, %3755 ], [ %3926, %3887 ]
  %3940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.i32 %3940, 0
  %3942 = icmp eq i32 %3941, 0
  br i1 %3942, label %4373, label %3943

; <label>:3943                                    ; preds = %3933
  %3944 = fptoui float %63 to i32
  %3945 = fptoui float %64 to i32
  %3946 = lshr i32 %3944, 4
  %3947 = lshr i32 %3945, 4
  %3948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.i32 %3948, 0
  %3950 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3947, i32 %3949, i32 %3946)  ; UMad(a,b,c)
  %3951 = add nsw i32 %3941, -1
  %3952 = call i32 @dx.op.binary.i32(i32 37, i32 %3951, i32 0)  ; IMax(a,b)
  %3953 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %3954 = fptoui float %3953 to i32
  %3955 = lshr i32 %3954, 5
  %3956 = call i32 @dx.op.binary.i32(i32 40, i32 %3955, i32 8191)  ; UMin(a,b)
  %3957 = shl i32 %3956, 2
  %3958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.i32 %3958, 0
  %3960 = lshr i32 %3959, 16
  %3961 = and i32 %3959, 65535
  %3962 = lshr i32 %3959, 21
  %3963 = lshr i32 %3961, 5
  %3964 = call i32 @dx.op.binary.i32(i32 40, i32 %3963, i32 %3952)  ; UMin(a,b)
  %3965 = icmp ugt i32 %3962, %3964
  br i1 %3965, label %4373, label %3966

; <label>:3966                                    ; preds = %3943
  br label %3967

; <label>:3967                                    ; preds = %4363, %3966
  %3968 = phi i32 [ %4370, %4363 ], [ %3962, %3966 ]
  %3969 = phi float [ %4364, %4363 ], [ %3934, %3966 ]
  %3970 = phi float [ %4365, %4363 ], [ %3935, %3966 ]
  %3971 = phi float [ %4366, %4363 ], [ %3936, %3966 ]
  %3972 = phi float [ %4367, %4363 ], [ %3937, %3966 ]
  %3973 = phi float [ %4368, %4363 ], [ %3938, %3966 ]
  %3974 = phi float [ %4369, %4363 ], [ %3939, %3966 ]
  %3975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.i32 %3975, 0
  %3977 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3950, i32 %3976, i32 %3968)  ; UMad(a,b,c)
  %3978 = shl i32 %3977, 2
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = shl i32 %3968, 5
  %3982 = sub nsw i32 %3960, %3981
  %3983 = call i32 @dx.op.binary.i32(i32 37, i32 %3982, i32 0)  ; IMax(a,b)
  %3984 = call i32 @dx.op.binary.i32(i32 38, i32 %3983, i32 31)  ; IMin(a,b)
  %3985 = sub nsw i32 1, %3960
  %3986 = add nsw i32 %3985, %3961
  %3987 = call i32 @dx.op.binary.i32(i32 37, i32 %3986, i32 0)  ; IMax(a,b)
  %3988 = call i32 @dx.op.binary.i32(i32 38, i32 %3987, i32 32)  ; IMin(a,b)
  %3989 = and i32 %3988, 31
  %3990 = shl i32 -1, %3989
  %3991 = xor i32 %3990, -1
  %3992 = and i32 %3984, 31
  %3993 = shl i32 %3991, %3992
  %3994 = icmp eq i32 %3988, 32
  %3995 = select i1 %3994, i32 -1, i32 %3993
  %3996 = and i32 %3995, %3980
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %4363, label %3998

; <label>:3998                                    ; preds = %3967
  br label %3999

; <label>:3999                                    ; preds = %4079, %3998
  %4000 = phi i32 [ %4011, %4079 ], [ %3996, %3998 ]
  %4001 = phi float [ %4080, %4079 ], [ %3969, %3998 ]
  %4002 = phi float [ %4081, %4079 ], [ %3970, %3998 ]
  %4003 = phi float [ %4082, %4079 ], [ %3971, %3998 ]
  %4004 = phi float [ %4083, %4079 ], [ %3972, %3998 ]
  %4005 = phi float [ %4084, %4079 ], [ %3973, %3998 ]
  %4006 = phi float [ %4085, %4079 ], [ %3974, %3998 ]
  %4007 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4000)  ; FirstbitLo(value)
  %4008 = add i32 %4007, %3981
  %4009 = and i32 %4007, 31
  %4010 = shl i32 1, %4009
  %4011 = xor i32 %4010, %4000
  %4012 = mul i32 %4008, 112
  %4013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = or i32 %4012, 12
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = add i32 %4012, 44
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = add i32 %4012, 48
  %4024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = add i32 %4012, 80
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4032 = call float @dx.op.dot3.f32(i32 55, float %4014, float %4015, float %4016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = select i1 %161, float %4030, float %4014
  %4034 = select i1 %161, float %4032, float %4015
  %4035 = select i1 %161, float %4031, float %4016
  %4036 = fsub fast float %4025, %119
  %4037 = fsub fast float %4026, %120
  %4038 = fsub fast float %4027, %121
  %4039 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4037, float %4038, float %4036, float %4037, float %4038)  ; Dot3(ax,ay,az,bx,by,bz)
  %4040 = call float @dx.op.unary.f32(i32 24, float %4039)  ; Sqrt(value)
  %4041 = fdiv fast float 1.000000e+00, %4040
  %4042 = fmul fast float %4041, %4036
  %4043 = fmul fast float %4041, %4037
  %4044 = fmul fast float %4041, %4038
  %4045 = fadd fast float %4040, %4019
  %4046 = fdiv fast float 1.000000e+00, %4045
  %4047 = fmul float %4022, %4046
  %4048 = fmul float %4047, %4047
  %4049 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4050 = and i32 %4010, %3996
  %4051 = icmp eq i32 %4050, 0
  br i1 %4051, label %4074, label %4052, !dx.controlflow.hints !78

; <label>:4052                                    ; preds = %3999
  %4053 = lshr i32 %3944, 5
  %4054 = lshr i32 %3945, 5
  %4055 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4053, i32 %4054, i32 %4008, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4056 = extractvalue %dx.types.ResRet.i32 %4055, 0
  %4057 = and i32 %4056, 3
  %4058 = icmp eq i32 %4057, 0
  %4059 = select i1 %4058, float 1.000000e+00, float 0.000000e+00
  %4060 = icmp eq i32 %4057, 3
  br i1 %4060, label %4061, label %4074

; <label>:4061                                    ; preds = %4052
  %4062 = lshr i32 %4056, 10
  %4063 = and i32 %4062, 8160
  %4064 = and i32 %3945, 31
  %4065 = or i32 %4063, %4064
  %4066 = lshr i32 %4056, 1
  %4067 = and i32 %4066, 16352
  %4068 = and i32 %3944, 31
  %4069 = or i32 %4067, %4068
  %4070 = lshr i32 %4056, 23
  %4071 = and i32 %4070, 255
  %4072 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %4069, i32 %4065, i32 %4071, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  br label %4074

; <label>:4074                                    ; preds = %4061, %4052, %3999
  %4075 = phi float [ %4073, %4061 ], [ %4059, %4052 ], [ 0.000000e+00, %3999 ]
  %4076 = call float @dx.op.binary.f32(i32 36, float %4075, float %4075)  ; FMin(a,b)
  %4077 = call float @dx.op.binary.f32(i32 36, float %4075, float %4076)  ; FMin(a,b)
  %4078 = fcmp fast ogt float %4077, 0.000000e+00
  br i1 %4078, label %4087, label %4079, !dx.controlflow.hints !79

; <label>:4079                                    ; preds = %4319, %4074
  %4080 = phi float [ %4001, %4074 ], [ %4359, %4319 ]
  %4081 = phi float [ %4002, %4074 ], [ %4360, %4319 ]
  %4082 = phi float [ %4003, %4074 ], [ %4361, %4319 ]
  %4083 = phi float [ %4004, %4074 ], [ %4353, %4319 ]
  %4084 = phi float [ %4005, %4074 ], [ %4354, %4319 ]
  %4085 = phi float [ %4006, %4074 ], [ %4355, %4319 ]
  %4086 = icmp eq i32 %4000, %4010
  br i1 %4086, label %4362, label %3999

; <label>:4087                                    ; preds = %4074
  %4088 = fmul fast float %4075, %4033
  %4089 = fmul fast float %4075, %4034
  %4090 = fmul fast float %4075, %4035
  %4091 = fsub fast float %4027, %2385
  %4092 = fcmp fast ogt float %4091, 0.000000e+00
  %4093 = fsub fast float %121, %2385
  %4094 = fcmp fast ogt float %4093, 0.000000e+00
  %4095 = xor i1 %4094, %4092
  %4096 = fsub fast float %2385, %4027
  %4097 = fmul fast float %4096, 2.000000e+00
  %4098 = fadd fast float %4097, %4027
  %4099 = select i1 %4095, float %4027, float %4098
  %4100 = fsub fast float %4099, %121
  %4101 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4037, float %4100, float %4036, float %4037, float %4100)  ; Dot3(ax,ay,az,bx,by,bz)
  %4102 = call float @dx.op.unary.f32(i32 25, float %4101)  ; Rsqrt(value)
  %4103 = fmul fast float %4102, %4036
  %4104 = fmul fast float %4102, %4037
  %4105 = fmul fast float %4102, %4100
  %4106 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2393)  ; Dot3(ax,ay,az,bx,by,bz)
  %4107 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4103, float %4104, float %4105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4108 = fdiv fast float 1.000000e+00, %4107
  %4109 = fmul fast float %4108, %4106
  %4110 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4093, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4111 = fcmp fast ogt float %4110, 0.000000e+00
  %4112 = fcmp fast olt float %4110, 0.000000e+00
  %4113 = zext i1 %4111 to i32
  %4114 = zext i1 %4112 to i32
  %4115 = sub nsw i32 %4113, %4114
  %4116 = sitofp i32 %4115 to float
  %4117 = fsub fast float %4099, %2385
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4037, float %4117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = fcmp fast ogt float %4118, 0.000000e+00
  %4120 = fcmp fast olt float %4118, 0.000000e+00
  %4121 = zext i1 %4119 to i32
  %4122 = zext i1 %4120 to i32
  %4123 = sub nsw i32 %4121, %4122
  %4124 = sitofp i32 %4123 to float
  %4125 = fcmp fast une float %4116, %4124
  br i1 %4125, label %4126, label %4136

; <label>:4126                                    ; preds = %4087
  %4127 = fmul fast float %4109, %4105
  %4128 = fmul fast float %4109, %4104
  %4129 = fmul fast float %4109, %4103
  %4130 = fmul fast float %4129, %4129
  %4131 = fmul fast float %4128, %4128
  %4132 = fadd fast float %4130, %4131
  %4133 = fmul fast float %4127, %4127
  %4134 = fadd fast float %4132, %4133
  %4135 = call float @dx.op.unary.f32(i32 24, float %4134)  ; Sqrt(value)
  br label %4148

; <label>:4136                                    ; preds = %4087
  %4137 = icmp slt i32 %4115, 0
  br i1 %4137, label %4138, label %4148

; <label>:4138                                    ; preds = %4136
  %4139 = fsub fast float %119, %4025
  %4140 = fsub fast float %120, %4026
  %4141 = fsub fast float %121, %4099
  %4142 = fmul fast float %4139, %4139
  %4143 = fmul fast float %4140, %4140
  %4144 = fadd fast float %4142, %4143
  %4145 = fmul fast float %4141, %4141
  %4146 = fadd fast float %4144, %4145
  %4147 = call float @dx.op.unary.f32(i32 24, float %4146)  ; Sqrt(value)
  br label %4148

; <label>:4148                                    ; preds = %4138, %4136, %4126
  %4149 = phi float [ %4135, %4126 ], [ %4147, %4138 ], [ 0.000000e+00, %4136 ]
  %4150 = and i1 %4094, %4092
  %4151 = fsub fast float -0.000000e+00, %4149
  %4152 = select i1 %4150, float -0.000000e+00, float %4151
  %4153 = fmul fast float %2386, 0x3FF7154760000000
  %4154 = fmul fast float %4153, %4152
  %4155 = fmul fast float %2387, 0x3FF7154760000000
  %4156 = fmul fast float %4155, %4152
  %4157 = fmul fast float %2388, 0x3FF7154760000000
  %4158 = fmul fast float %4157, %4152
  %4159 = call float @dx.op.unary.f32(i32 21, float %4154)  ; Exp(value)
  %4160 = call float @dx.op.unary.f32(i32 21, float %4156)  ; Exp(value)
  %4161 = call float @dx.op.unary.f32(i32 21, float %4158)  ; Exp(value)
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = fmul fast float %4088, %4162
  %4166 = fmul fast float %4089, %4163
  %4167 = fmul fast float %4090, %4164
  %4168 = fsub fast float %4042, %2585
  %4169 = fsub fast float %4043, %2584
  %4170 = fsub fast float %4044, %2583
  %4171 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %4168, float %4169, float %4170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.unary.f32(i32 25, float %4171)  ; Rsqrt(value)
  %4173 = fmul fast float %4172, %4168
  %4174 = fmul fast float %4172, %4169
  %4175 = fmul fast float %4172, %4170
  %4176 = call float @dx.op.dot3.f32(i32 55, float %4042, float %4043, float %4044, float %2589, float %2590, float %2591)  ; Dot3(ax,ay,az,bx,by,bz)
  %4177 = call float @dx.op.dot3.f32(i32 55, float %2582, float %2581, float %2580, float %4173, float %4174, float %4175)  ; Dot3(ax,ay,az,bx,by,bz)
  %4178 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4179 = fmul fast float %4178, %4049
  %4180 = fmul fast float %4178, %4178
  %4181 = fmul fast float %4180, %3711
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = fmul fast float %4179, %4182
  %4184 = bitcast float %4039 to i32
  %4185 = ashr i32 %4184, 1
  %4186 = sub nsw i32 1597463007, %4185
  %4187 = bitcast i32 %4186 to float
  %4188 = fmul fast float %4187, %4036
  %4189 = fmul fast float %4187, %4037
  %4190 = fmul fast float %4187, %4038
  %4191 = fsub fast float %4188, %2585
  %4192 = fsub fast float %4189, %2584
  %4193 = fsub fast float %4190, %2583
  %4194 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4193, float %4191, float %4192, float %4193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4195 = call float @dx.op.unary.f32(i32 25, float %4194)  ; Rsqrt(value)
  %4196 = fmul fast float %4191, %4195
  %4197 = fmul fast float %4192, %4195
  %4198 = fmul fast float %4193, %4195
  %4199 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float %4196, float %4197, float %4198)  ; Dot3(ax,ay,az,bx,by,bz)
  %4200 = fmul fast float %4199, %4199
  %4201 = call float @dx.op.unary.f32(i32 6, float %4176)  ; FAbs(value)
  %4202 = fsub fast float 1.000000e+00, %2632
  %4203 = fmul fast float %2614, %2614
  %4204 = fmul fast float %4203, %4202
  %4205 = fadd fast float %4204, %2632
  %4206 = bitcast float %4205 to i32
  %4207 = ashr i32 %4206, 1
  %4208 = add nsw i32 %4207, 532487669
  %4209 = bitcast i32 %4208 to float
  %4210 = fadd fast float %4209, %2614
  %4211 = fmul fast float %2632, %4200
  %4212 = fsub fast float 1.000000e+00, %4200
  %4213 = fadd fast float %4212, %4211
  %4214 = fmul fast float %4201, %4201
  %4215 = fmul fast float %4214, %4202
  %4216 = fadd fast float %4215, %2632
  %4217 = bitcast float %4216 to i32
  %4218 = ashr i32 %4217, 1
  %4219 = add nsw i32 %4218, 532487669
  %4220 = bitcast i32 %4219 to float
  %4221 = fadd fast float %4220, %4201
  %4222 = fmul fast float %4213, %4213
  %4223 = fmul fast float %4222, %4210
  %4224 = fmul fast float %4223, %4221
  %4225 = fdiv fast float 1.000000e+00, %4224
  %4226 = bitcast float %2632 to i32
  %4227 = sitofp i32 %4226 to float
  %4228 = fmul fast float %4227, 0x3FE7F73180000000
  %4229 = fadd fast float %4228, 0x41AFE27C40000000
  %4230 = fptosi float %4229 to i32
  %4231 = bitcast i32 %4230 to float
  %4232 = fmul fast float %4022, 0x3FD80E9D60000000
  %4233 = fmul fast float %4232, %4187
  %4234 = fadd fast float %4231, %4233
  %4235 = bitcast float %4234 to i32
  %4236 = sub nsw i32 2129859010, %4235
  %4237 = bitcast i32 %4236 to float
  %4238 = fmul fast float %2632, %4225
  %4239 = fmul fast float %4238, %4231
  %4240 = fmul fast float %4239, %4237
  %4241 = call float @dx.op.unary.f32(i32 6, float %4177)  ; FAbs(value)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = bitcast float %4242 to i32
  %4244 = sitofp i32 %4243 to float
  %4245 = fmul fast float %4244, 5.000000e+00
  %4246 = fadd fast float %4245, 0xC1EFBF8940000000
  %4247 = fptosi float %4246 to i32
  %4248 = bitcast i32 %4247 to float
  %4249 = fsub fast float 1.000000e+00, %2586
  %4250 = fsub fast float 1.000000e+00, %2587
  %4251 = fsub fast float 1.000000e+00, %2612
  %4252 = fmul fast float %4248, %4249
  %4253 = fmul fast float %4248, %4250
  %4254 = fmul fast float %4248, %4251
  %4255 = fadd fast float %4252, %2586
  %4256 = fadd fast float %4253, %2587
  %4257 = fadd fast float %4254, %2612
  br i1 %2750, label %4258, label %4281

; <label>:4258                                    ; preds = %4148
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1963, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4259, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4259, 2
  %4263 = fadd fast float %4260, -5.000000e-01
  %4264 = fadd fast float %4261, -5.000000e-01
  %4265 = fadd fast float %4262, -5.000000e-01
  %4266 = fmul fast float %2586, 4.000000e+00
  %4267 = fmul fast float %4266, %4249
  %4268 = fmul fast float %4267, %4263
  %4269 = fmul fast float %2587, 4.000000e+00
  %4270 = fmul fast float %4269, %4250
  %4271 = fmul fast float %4270, %4264
  %4272 = fmul fast float %2612, 4.000000e+00
  %4273 = fmul fast float %4272, %4251
  %4274 = fmul fast float %4273, %4265
  %4275 = fadd fast float %4268, %4255
  %4276 = fadd fast float %4271, %4256
  %4277 = fadd fast float %4274, %4257
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  br label %4281

; <label>:4281                                    ; preds = %4258, %4148
  %4282 = phi float [ %4278, %4258 ], [ %4255, %4148 ]
  %4283 = phi float [ %4279, %4258 ], [ %4256, %4148 ]
  %4284 = phi float [ %4280, %4258 ], [ %4257, %4148 ]
  %4285 = fmul fast float %4176, 9.843750e-01
  %4286 = fadd fast float %4285, 7.812500e-03
  %4287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %4286, float %2740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 2
  %4289 = extractvalue %dx.types.ResRet.f32 %4287, 3
  %4290 = fmul fast float %4288, %2586
  %4291 = fmul fast float %4288, %2587
  %4292 = fmul fast float %4288, %2612
  %4293 = fadd fast float %4290, %4289
  %4294 = fadd fast float %4291, %4289
  %4295 = fadd fast float %4292, %4289
  br i1 %2750, label %4296, label %4319

; <label>:4296                                    ; preds = %4281
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %1963, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = fadd fast float %4298, -5.000000e-01
  %4302 = fadd fast float %4299, -5.000000e-01
  %4303 = fadd fast float %4300, -5.000000e-01
  %4304 = fmul fast float %2586, 4.000000e+00
  %4305 = fmul fast float %4304, %4249
  %4306 = fmul fast float %4305, %4301
  %4307 = fmul fast float %2587, 4.000000e+00
  %4308 = fmul fast float %4307, %4250
  %4309 = fmul fast float %4308, %4302
  %4310 = fmul fast float %2612, 4.000000e+00
  %4311 = fmul fast float %4310, %4251
  %4312 = fmul fast float %4311, %4303
  %4313 = fadd fast float %4306, %4293
  %4314 = fadd fast float %4309, %4294
  %4315 = fadd fast float %4312, %4295
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  br label %4319

; <label>:4319                                    ; preds = %4296, %4281
  %4320 = phi float [ %4316, %4296 ], [ %4293, %4281 ]
  %4321 = phi float [ %4317, %4296 ], [ %4294, %4281 ]
  %4322 = phi float [ %4318, %4296 ], [ %4295, %4281 ]
  %4323 = call float @dx.op.binary.f32(i32 35, float %4321, float %4322)  ; FMax(a,b)
  %4324 = call float @dx.op.binary.f32(i32 35, float %4320, float %4323)  ; FMax(a,b)
  %4325 = fsub fast float 1.000000e+00, %4324
  %4326 = fmul fast float %4282, %4240
  %4327 = fmul fast float %4283, %4240
  %4328 = fmul fast float %4284, %4240
  %4329 = fsub fast float 1.000000e+00, %4177
  %4330 = bitcast float %4329 to i32
  %4331 = sitofp i32 %4330 to float
  %4332 = fmul fast float %4331, 5.000000e+00
  %4333 = fadd fast float %4332, 0xC1EFBF8940000000
  %4334 = fptosi float %4333 to i32
  %4335 = bitcast i32 %4334 to float
  %4336 = fmul fast float %4335, %1962
  %4337 = fmul fast float %4325, %4336
  %4338 = fmul fast float %4337, %3676
  %4339 = fmul fast float %4337, %3677
  %4340 = fmul fast float %4337, %3678
  %4341 = fadd fast float %4338, %4326
  %4342 = fadd fast float %4339, %4327
  %4343 = fadd fast float %4340, %4328
  %4344 = fmul fast float %4165, %1983
  %4345 = fmul fast float %4344, %4183
  %4346 = fmul fast float %4345, %4325
  %4347 = fmul fast float %4166, %1983
  %4348 = fmul fast float %4347, %4183
  %4349 = fmul fast float %4348, %4325
  %4350 = fmul fast float %4167, %1983
  %4351 = fmul fast float %4350, %4183
  %4352 = fmul fast float %4351, %4325
  %4353 = fadd fast float %4346, %4004
  %4354 = fadd fast float %4349, %4005
  %4355 = fadd fast float %4352, %4006
  %4356 = fmul fast float %4345, %4341
  %4357 = fmul fast float %4348, %4342
  %4358 = fmul fast float %4351, %4343
  %4359 = fadd fast float %4356, %4001
  %4360 = fadd fast float %4357, %4002
  %4361 = fadd fast float %4358, %4003
  br label %4079

; <label>:4362                                    ; preds = %4079
  br label %4363

; <label>:4363                                    ; preds = %4362, %3967
  %4364 = phi float [ %3969, %3967 ], [ %4080, %4362 ]
  %4365 = phi float [ %3970, %3967 ], [ %4081, %4362 ]
  %4366 = phi float [ %3971, %3967 ], [ %4082, %4362 ]
  %4367 = phi float [ %3972, %3967 ], [ %4083, %4362 ]
  %4368 = phi float [ %3973, %3967 ], [ %4084, %4362 ]
  %4369 = phi float [ %3974, %3967 ], [ %4085, %4362 ]
  %4370 = add i32 %3968, 1
  %4371 = icmp ugt i32 %4370, %3964
  br i1 %4371, label %4372, label %3967

; <label>:4372                                    ; preds = %4363
  br label %4373

; <label>:4373                                    ; preds = %4372, %3943, %3933
  %4374 = phi float [ %3934, %3933 ], [ %3934, %3943 ], [ %4364, %4372 ]
  %4375 = phi float [ %3935, %3933 ], [ %3935, %3943 ], [ %4365, %4372 ]
  %4376 = phi float [ %3936, %3933 ], [ %3936, %3943 ], [ %4366, %4372 ]
  %4377 = phi float [ %3937, %3933 ], [ %3937, %3943 ], [ %4367, %4372 ]
  %4378 = phi float [ %3938, %3933 ], [ %3938, %3943 ], [ %4368, %4372 ]
  %4379 = phi float [ %3939, %3933 ], [ %3939, %3943 ], [ %4369, %4372 ]
  %4380 = call float @dx.op.unary.f32(i32 24, float %2592)  ; Sqrt(value)
  %4381 = call float @dx.op.unary.f32(i32 24, float %2593)  ; Sqrt(value)
  %4382 = call float @dx.op.unary.f32(i32 24, float %2594)  ; Sqrt(value)
  %4383 = fmul fast float %4380, %4377
  %4384 = fmul fast float %4381, %4378
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  br i1 %161, label %4387, label %4410

; <label>:4387                                    ; preds = %4373
  %4388 = fadd fast float %4379, %1960
  %4389 = fmul fast float %4388, %1961
  %4390 = fsub fast float 1.000000e+00, %1961
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4394 = fmul fast float %4393, %4391
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = fmul fast float %4396, %3682
  %4398 = extractvalue %dx.types.CBufRet.f32 %4395, 2
  %4399 = fmul fast float %4398, %2610
  %4400 = fadd fast float %4384, %4383
  %4401 = fmul fast float %4386, %4400
  %4402 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4403 = fadd fast float %4394, %4389
  %4404 = fsub fast float %4403, %4397
  %4405 = fadd fast float %4404, %4399
  %4406 = fsub fast float %4405, %4402
  %4407 = extractvalue %dx.types.CBufRet.f32 %4392, 2
  %4408 = fmul fast float %4406, %4407
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  br label %4425

; <label>:4410                                    ; preds = %4373
  %4411 = fmul fast float %4382, %4379
  %4412 = fmul fast float %4386, %4383
  %4413 = fmul fast float %4386, %4384
  %4414 = fmul fast float %4411, %4386
  %4415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.i32 %4415, 0
  %4417 = and i32 %4416, 32
  %4418 = icmp eq i32 %4417, 0
  br i1 %4418, label %4425, label %4419

; <label>:4419                                    ; preds = %4410
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 0
  %4422 = fmul fast float %4421, 0x3FE99999A0000000
  %4423 = fadd fast float %4421, %4412
  %4424 = fadd fast float %4422, %4414
  br label %4425

; <label>:4425                                    ; preds = %4419, %4410, %4387
  %4426 = phi float [ %4401, %4387 ], [ %4423, %4419 ], [ %4412, %4410 ]
  %4427 = phi float [ %4409, %4387 ], [ %4413, %4419 ], [ %4413, %4410 ]
  %4428 = phi float [ 1.000000e+00, %4387 ], [ %4424, %4419 ], [ %4414, %4410 ]
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 0
  %4431 = fmul fast float %4430, %4375
  %4432 = fmul fast float %4430, %4376
  %4433 = fadd fast float %4375, %4374
  %4434 = select i1 %161, float %4433, float %4374
  %4435 = fmul float %4434, %4430
  %4436 = select i1 %161, float 0.000000e+00, float %4431
  %4437 = select i1 %161, float 0.000000e+00, float %4432
  %4438 = fmul fast float %4426, %4380
  %4439 = fmul fast float %4427, %4381
  %4440 = fmul fast float %4428, %4382
  %4441 = fadd fast float %4435, %4438
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = select i1 %161, float %4427, float %4442
  %4445 = select i1 %161, float %4428, float %4443
  %4446 = call float @dx.op.binary.f32(i32 36, float %4441, float 3.225500e+04)  ; FMin(a,b)
  %4447 = call float @dx.op.binary.f32(i32 36, float %4444, float 3.225500e+04)  ; FMin(a,b)
  %4448 = call float @dx.op.binary.f32(i32 36, float %4445, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4446)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4447)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

