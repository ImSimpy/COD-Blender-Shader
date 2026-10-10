;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 805f3c80a853b4e802bc90b3849ab5e8
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
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
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
;   [208 x i8] (type annotation not present)
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
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = fmul fast float %56, %50
  %58 = fmul fast float %56, %51
  %59 = fmul fast float %43, %40
  %60 = fmul fast float %44, %39
  %61 = fsub fast float %59, %60
  %62 = fmul fast float %44, %38
  %63 = fmul fast float %42, %40
  %64 = fsub fast float %62, %63
  %65 = fmul fast float %42, %39
  %66 = fmul fast float %43, %38
  %67 = fsub fast float %65, %66
  %68 = fmul fast float %61, %41
  %69 = fmul fast float %64, %41
  %70 = fmul fast float %67, %41
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %74 = fmul fast float %72, 2.000000e+00
  %75 = fmul fast float %74, %57
  %76 = fmul fast float %73, 2.000000e+00
  %77 = fmul fast float %76, %58
  %78 = fsub fast float 1.000000e+00, %75
  %79 = fsub fast float 1.000000e+00, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %78, %81
  %85 = fmul fast float %78, %82
  %86 = fmul fast float %78, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %79, %88
  %92 = fmul fast float %79, %89
  %93 = fmul fast float %79, %90
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fadd fast float %91, %95
  %99 = fadd fast float %98, %84
  %100 = fadd fast float %92, %96
  %101 = fadd fast float %100, %85
  %102 = fadd fast float %93, %97
  %103 = fadd fast float %102, %86
  %104 = fmul fast float %99, %52
  %105 = fmul fast float %101, %52
  %106 = fmul fast float %103, %52
  %107 = fadd fast float %47, 5.000000e-01
  %108 = fptoui float %107 to i32
  %109 = shl i32 %108, 3
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = or i32 %109, 4
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %111, 8191
  %116 = lshr i32 %111, 13
  %117 = and i32 %116, 8191
  %118 = lshr i32 %111, 26
  %119 = and i32 %114, 65535
  %120 = lshr i32 %114, 16
  %121 = uitofp i32 %119 to float
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = uitofp i32 %120 to float
  %125 = uitofp i32 %115 to float
  %126 = fmul fast float %123, %125
  %127 = uitofp i32 %117 to float
  %128 = fmul fast float %123, %127
  %129 = fmul fast float %123, %45
  %130 = fmul fast float %129, %121
  %131 = fmul fast float %123, %46
  %132 = fmul fast float %131, %124
  %133 = fadd fast float %130, %126
  %134 = fadd fast float %128, %132
  %135 = uitofp i32 %118 to float
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %137, %57
  %140 = fmul fast float %138, %58
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 114688
  %144 = icmp ne i32 %143, 0
  %145 = select i1 %144, float %139, float 0.000000e+00
  %146 = select i1 %144, float %140, float 0.000000e+00
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fmul fast float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = select i1 %144, i32 %150, i32 0
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %155 = and i32 %154, 3
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %154, 4
  %158 = icmp ne i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %171

; <label>:160                                     ; preds = %0
  %161 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %162 = fmul fast float %161, %58
  %163 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %164 = fmul fast float %163, %57
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %164, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fsub fast float 1.000000e+00, %166
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fcmp fast olt float %167, %169
  br label %174

; <label>:171                                     ; preds = %0
  %172 = icmp eq i32 %157, 0
  %173 = and i1 %156, %172
  br label %174

; <label>:174                                     ; preds = %171, %160
  %175 = phi i1 [ %170, %160 ], [ %173, %171 ]
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

; <label>:210                                     ; preds = %174
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
  %264 = fadd fast float %48, -5.000000e-01
  %265 = fadd fast float %49, -5.000000e-01
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
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %312, 0
  %314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %314, %dx.types.Handle %53, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = add i32 %334, 0
  %336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %336, %dx.types.Handle %54, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = add i32 %526, 0
  %528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %528, %dx.types.Handle %53, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 131072
  %613 = icmp eq i32 %612, 0
  %614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %53, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %632 = select i1 %175, float %631, float %628
  %633 = call float @dx.op.dot3.f32(i32 55, float %632, float %629, float %630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = select i1 %175, float 0.000000e+00, float %628
  %635 = select i1 %175, float %633, float %629
  %636 = select i1 %175, float 0.000000e+00, float %630
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

; <label>:653                                     ; preds = %637, %174
  %654 = phi float [ 0.000000e+00, %174 ], [ %593, %637 ]
  %655 = phi float [ 0.000000e+00, %174 ], [ %594, %637 ]
  %656 = phi float [ 0.000000e+00, %174 ], [ %638, %637 ]
  %657 = phi float [ 0.000000e+00, %174 ], [ %639, %637 ]
  %658 = phi float [ 0.000000e+00, %174 ], [ %640, %637 ]
  %659 = phi float [ 0.000000e+00, %174 ], [ %515, %637 ]
  %660 = phi float [ 0.000000e+00, %174 ], [ %516, %637 ]
  %661 = phi float [ 0.000000e+00, %174 ], [ %517, %637 ]
  %662 = phi float [ 0.000000e+00, %174 ], [ %502, %637 ]
  %663 = phi float [ 0.000000e+00, %174 ], [ 1.000000e+00, %637 ]
  %664 = phi float [ 0.000000e+00, %174 ], [ %592, %637 ]
  %665 = phi float [ 0.000000e+00, %174 ], [ %595, %637 ]
  %666 = phi float [ 0.000000e+00, %174 ], [ %652, %637 ]
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
  %677 = fmul fast float %676, %42
  %678 = fmul fast float %676, %43
  %679 = fmul fast float %676, %44
  %680 = fmul fast float %674, %38
  %681 = fmul fast float %674, %39
  %682 = fmul fast float %674, %40
  %683 = fadd fast float %677, %680
  %684 = fadd fast float %678, %681
  %685 = fadd fast float %679, %682
  %686 = fmul fast float %675, %68
  %687 = fmul fast float %675, %69
  %688 = fmul fast float %675, %70
  %689 = fadd fast float %683, %686
  %690 = fadd fast float %684, %687
  %691 = fadd fast float %685, %688
  %692 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %689, %693
  %695 = fmul fast float %690, %693
  %696 = fmul fast float %691, %693
  %697 = call float @dx.op.unary.f32(i32 83, float %104)  ; DerivCoarseX(value)
  %698 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %699 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %700 = call float @dx.op.unary.f32(i32 84, float %104)  ; DerivCoarseY(value)
  %701 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %702 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %703 = fadd fast float %697, %104
  %704 = fadd fast float %698, %105
  %705 = fadd fast float %699, %106
  %706 = fadd fast float %700, %104
  %707 = fadd fast float %701, %105
  %708 = fadd fast float %702, %106
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %715 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %716 = fmul fast float %710, %57
  %717 = fmul fast float %716, %714
  %718 = fmul fast float %711, %58
  %719 = fmul fast float %718, %715
  %720 = fptoui float %717 to i32
  %721 = fptoui float %719 to i32
  %722 = fadd fast float %710, -1.000000e+00
  %723 = fadd fast float %711, -1.000000e+00
  %724 = fptoui float %722 to i32
  %725 = fptoui float %723 to i32
  %726 = call i32 @dx.op.binary.i32(i32 40, i32 %720, i32 %724)  ; UMin(a,b)
  %727 = call i32 @dx.op.binary.i32(i32 40, i32 %721, i32 %725)  ; UMin(a,b)
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %731 = fmul fast float %729, %52
  %732 = fsub fast float %731, %730
  %733 = fadd fast float %712, -1.000000e+00
  %734 = call float @dx.op.binary.f32(i32 36, float %732, float %733)  ; FMin(a,b)
  %735 = fptoui float %734 to i32
  %736 = fptoui float %710 to i32
  %737 = fptoui float %711 to i32
  %738 = mul i32 %735, %737
  %739 = add i32 %738, %727
  %740 = mul i32 %739, %736
  %741 = add i32 %740, %726
  %742 = shl i32 %741, 2
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 1023
  %746 = lshr i32 %744, 10
  %747 = icmp eq i32 %745, 0
  br i1 %747, label %1176, label %748

; <label>:748                                     ; preds = %653
  %749 = and i32 %744, 1023
  br label %750

; <label>:750                                     ; preds = %877, %748
  %751 = phi float [ %878, %877 ], [ 0.000000e+00, %748 ]
  %752 = phi float [ %879, %877 ], [ %663, %748 ]
  %753 = phi float [ %880, %877 ], [ %668, %748 ]
  %754 = phi float [ %881, %877 ], [ %666, %748 ]
  %755 = phi float [ %882, %877 ], [ 0.000000e+00, %748 ]
  %756 = phi float [ %883, %877 ], [ 0.000000e+00, %748 ]
  %757 = phi float [ %884, %877 ], [ %656, %748 ]
  %758 = phi float [ %885, %877 ], [ %657, %748 ]
  %759 = phi float [ %886, %877 ], [ %658, %748 ]
  %760 = phi float [ %887, %877 ], [ %694, %748 ]
  %761 = phi float [ %888, %877 ], [ %695, %748 ]
  %762 = phi float [ %889, %877 ], [ %696, %748 ]
  %763 = phi float [ %890, %877 ], [ %665, %748 ]
  %764 = phi float [ %891, %877 ], [ %664, %748 ]
  %765 = phi float [ %892, %877 ], [ 0.000000e+00, %748 ]
  %766 = phi float [ %893, %877 ], [ %662, %748 ]
  %767 = phi float [ %894, %877 ], [ %659, %748 ]
  %768 = phi float [ %895, %877 ], [ %660, %748 ]
  %769 = phi float [ %896, %877 ], [ %661, %748 ]
  %770 = phi i32 [ %827, %877 ], [ 0, %748 ]
  %771 = add nuw nsw i32 %770, %746
  %772 = shl i32 %771, 2
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = shl i32 %774, 8
  %776 = or i32 %775, 48
  %777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = or i32 %775, 64
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = extractvalue %dx.types.ResRet.i32 %783, 1
  %786 = or i32 %775, 80
  %787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 2
  %789 = extractvalue %dx.types.ResRet.f32 %787, 3
  %790 = or i32 %775, 96
  %791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = extractvalue %dx.types.ResRet.f32 %791, 1
  %794 = extractvalue %dx.types.ResRet.f32 %791, 2
  %795 = extractvalue %dx.types.ResRet.f32 %791, 3
  %796 = or i32 %775, 112
  %797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 2
  %799 = or i32 %775, 128
  %800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = or i32 %775, 144
  %806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = extractvalue %dx.types.ResRet.f32 %806, 3
  %811 = or i32 %775, 160
  %812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = or i32 %775, 192
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = or i32 %775, 208
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = or i32 %775, 248
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = add nuw nsw i32 %770, 1
  %828 = bitcast float %781 to i32
  %829 = and i32 %828, 2560
  %830 = icmp eq i32 %829, 2048
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = extractvalue %dx.types.ResRet.f32 %831, 3
  %836 = call float @dx.op.dot4.f32(i32 56, float %832, float %833, float %834, float %835, float %104, float %105, float %106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %837 = or i32 %775, 16
  %838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = extractvalue %dx.types.ResRet.f32 %838, 1
  %841 = extractvalue %dx.types.ResRet.f32 %838, 2
  %842 = extractvalue %dx.types.ResRet.f32 %838, 3
  %843 = call float @dx.op.dot4.f32(i32 56, float %839, float %840, float %841, float %842, float %104, float %105, float %106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %844 = or i32 %775, 32
  %845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = extractvalue %dx.types.ResRet.f32 %845, 3
  %850 = call float @dx.op.dot4.f32(i32 56, float %846, float %847, float %848, float %849, float %104, float %105, float %106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %851 = call float @dx.op.unary.f32(i32 27, float %836)  ; Round_ni(value)
  %852 = call float @dx.op.unary.f32(i32 6, float %851)  ; FAbs(value)
  %853 = call float @dx.op.unary.f32(i32 27, float %843)  ; Round_ni(value)
  %854 = call float @dx.op.unary.f32(i32 6, float %853)  ; FAbs(value)
  %855 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %856 = call float @dx.op.unary.f32(i32 27, float %855)  ; Round_ni(value)
  %857 = fadd fast float %854, %852
  %858 = fadd fast float %857, %856
  %859 = fcmp fast oeq float %858, 0.000000e+00
  %860 = call float @dx.op.dot4.f32(i32 56, float %832, float %833, float %834, float %835, float %703, float %704, float %705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %861 = call float @dx.op.dot4.f32(i32 56, float %839, float %840, float %841, float %842, float %703, float %704, float %705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %862 = call float @dx.op.dot4.f32(i32 56, float %832, float %833, float %834, float %835, float %706, float %707, float %708, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %863 = call float @dx.op.dot4.f32(i32 56, float %839, float %840, float %841, float %842, float %706, float %707, float %708, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %864 = fsub fast float %860, %836
  %865 = fsub fast float %862, %836
  %866 = fsub fast float %861, %843
  %867 = fsub fast float %863, %843
  %868 = call float @dx.op.dot3.f32(i32 55, float %778, float %779, float %780, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %871 = fadd fast float %870, %868
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %874 = fcmp fast ogt float %872, %873
  %875 = and i1 %859, %874
  %876 = and i1 %830, %875
  br i1 %876, label %898, label %877

; <label>:877                                     ; preds = %1162, %979, %898, %750
  %878 = phi float [ %751, %898 ], [ %982, %979 ], [ %982, %1162 ], [ %751, %750 ]
  %879 = phi float [ %752, %898 ], [ %752, %979 ], [ %1137, %1162 ], [ %752, %750 ]
  %880 = phi float [ %753, %898 ], [ %753, %979 ], [ %1136, %1162 ], [ %753, %750 ]
  %881 = phi float [ %754, %898 ], [ %754, %979 ], [ %1134, %1162 ], [ %754, %750 ]
  %882 = phi float [ %755, %898 ], [ %755, %979 ], [ %1106, %1162 ], [ %755, %750 ]
  %883 = phi float [ %756, %898 ], [ %756, %979 ], [ %1104, %1162 ], [ %756, %750 ]
  %884 = phi float [ %757, %898 ], [ %757, %979 ], [ %1172, %1162 ], [ %757, %750 ]
  %885 = phi float [ %758, %898 ], [ %758, %979 ], [ %1173, %1162 ], [ %758, %750 ]
  %886 = phi float [ %759, %898 ], [ %759, %979 ], [ %1174, %1162 ], [ %759, %750 ]
  %887 = phi float [ %760, %898 ], [ %760, %979 ], [ %1085, %1162 ], [ %760, %750 ]
  %888 = phi float [ %761, %898 ], [ %761, %979 ], [ %1086, %1162 ], [ %761, %750 ]
  %889 = phi float [ %762, %898 ], [ %762, %979 ], [ %1087, %1162 ], [ %762, %750 ]
  %890 = phi float [ %763, %898 ], [ %763, %979 ], [ %1114, %1162 ], [ %763, %750 ]
  %891 = phi float [ %764, %898 ], [ %764, %979 ], [ %1111, %1162 ], [ %764, %750 ]
  %892 = phi float [ %765, %898 ], [ %765, %979 ], [ %1108, %1162 ], [ %765, %750 ]
  %893 = phi float [ %766, %898 ], [ %766, %979 ], [ %1102, %1162 ], [ %766, %750 ]
  %894 = phi float [ %767, %898 ], [ %767, %979 ], [ %1097, %1162 ], [ %767, %750 ]
  %895 = phi float [ %768, %898 ], [ %768, %979 ], [ %1098, %1162 ], [ %768, %750 ]
  %896 = phi float [ %769, %898 ], [ %769, %979 ], [ %1099, %1162 ], [ %769, %750 ]
  %897 = icmp eq i32 %827, %749
  br i1 %897, label %1175, label %750

; <label>:898                                     ; preds = %750
  %899 = extractvalue %dx.types.ResRet.f32 %797, 3
  %900 = extractvalue %dx.types.ResRet.f32 %797, 1
  %901 = extractvalue %dx.types.ResRet.f32 %797, 0
  %902 = extractvalue %dx.types.ResRet.f32 %787, 1
  %903 = extractvalue %dx.types.ResRet.f32 %787, 0
  %904 = extractvalue %dx.types.ResRet.i32 %783, 3
  %905 = extractvalue %dx.types.ResRet.i32 %783, 2
  %906 = add i32 %904, 0
  %907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %906, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %907, %dx.types.Handle %908, float %836, float %843, float undef, float undef, i32 0, i32 0, i32 undef, float %864, float %866, float undef, float %865, float %867, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = fmul fast float %910, %903
  %912 = fadd fast float %911, %902
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = fmul fast float %836, %792
  %915 = call float @dx.op.tertiary.f32(i32 46, float %793, float %843, float %914)  ; FMad(a,b,c)
  %916 = fadd fast float %915, %901
  %917 = fmul fast float %836, %794
  %918 = call float @dx.op.tertiary.f32(i32 46, float %795, float %843, float %917)  ; FMad(a,b,c)
  %919 = fadd fast float %918, %900
  %920 = fmul fast float %864, %792
  %921 = call float @dx.op.tertiary.f32(i32 46, float %793, float %866, float %920)  ; FMad(a,b,c)
  %922 = fmul fast float %864, %794
  %923 = call float @dx.op.tertiary.f32(i32 46, float %795, float %866, float %922)  ; FMad(a,b,c)
  %924 = fmul fast float %865, %792
  %925 = call float @dx.op.tertiary.f32(i32 46, float %793, float %867, float %924)  ; FMad(a,b,c)
  %926 = fmul fast float %865, %794
  %927 = call float @dx.op.tertiary.f32(i32 46, float %795, float %867, float %926)  ; FMad(a,b,c)
  %928 = add i32 %905, 0
  %929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %928, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %930 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %929, %dx.types.Handle %908, float %916, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float %921, float %923, float undef, float %925, float %927, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = and i32 %828, 1024
  %933 = icmp ne i32 %932, 0
  %934 = fcmp fast ogt float %931, 0x3FE0101020000000
  %935 = uitofp i1 %934 to float
  %936 = select i1 %933, float %935, float %931
  %937 = and i32 %828, 8192
  %938 = icmp ne i32 %937, 0
  %939 = select i1 %938, float %899, float 1.000000e+00
  %940 = fmul fast float %836, 2.000000e+00
  %941 = fadd fast float %940, -1.000000e+00
  %942 = call float @dx.op.unary.f32(i32 6, float %941)  ; FAbs(value)
  %943 = fmul fast float %942, %825
  %944 = fsub fast float %943, %825
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fmul fast float %843, 2.000000e+00
  %947 = fadd fast float %946, -1.000000e+00
  %948 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %949 = fmul fast float %948, %826
  %950 = fsub fast float %949, %826
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = fmul fast float %855, %788
  %953 = fsub fast float %952, %788
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = fmul fast float %913, %939
  %956 = fmul fast float %955, %910
  %957 = fmul fast float %956, %945
  %958 = fmul fast float %957, %936
  %959 = fmul fast float %958, %951
  %960 = fmul fast float %959, %954
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %964 = fsub fast float %872, %963
  %965 = fmul fast float %964, %962
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fmul fast float %960, %789
  %968 = fadd fast float %960, %789
  %969 = fmul fast float %968, %798
  %970 = fsub fast float %969, %798
  %971 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %972 = and i32 %828, 128
  %973 = icmp ne i32 %972, 0
  %974 = select i1 %973, float %971, float %967
  %975 = fmul fast float %974, %966
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = fcmp fast ugt float %975, %977
  br i1 %978, label %979, label %877

; <label>:979                                     ; preds = %898
  %980 = select i1 %938, float %975, float 0.000000e+00
  %981 = fadd fast float %980, %751
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  br i1 %938, label %877, label %983

; <label>:983                                     ; preds = %979
  %984 = and i32 %828, 4
  %985 = and i32 %828, 8
  %986 = add i32 %784, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %986, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %987, %dx.types.Handle %988, float %916, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float %921, float %923, float undef, float %925, float %927, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = bitcast float %810 to i32
  %995 = and i32 %994, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %994, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %993, %996
  %1001 = fadd fast float %1000, %999
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = add i32 %785, 0
  %1004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1003, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1005 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1004, %dx.types.Handle %988, float %916, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float %921, float %923, float undef, float %925, float %927, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = extractvalue %dx.types.ResRet.f32 %1005, 3
  %1010 = bitcast float %804 to i32
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = lshr i32 %1010, 8
  %1014 = and i32 %1013, 255
  %1015 = uitofp i32 %1014 to float
  %1016 = lshr i32 %1010, 16
  %1017 = and i32 %1016, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = fmul fast float %1018, 0x3F70101000000000
  %1020 = fmul fast float %1006, %1012
  %1021 = fadd fast float %1020, %1015
  %1022 = fmul fast float %1021, 0x3F70101000000000
  %1023 = fadd fast float %1007, -5.000000e-01
  %1024 = fadd fast float %1009, -5.000000e-01
  %1025 = fmul fast float %1023, %1019
  %1026 = fmul fast float %1024, %1019
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fadd fast float %1026, 5.000000e-01
  %1029 = fmul fast float %990, %813
  %1030 = fmul fast float %991, %814
  %1031 = fmul fast float %992, %815
  %1032 = fmul fast float %1027, 2.000000e+00
  %1033 = fadd fast float %1032, -1.000000e+00
  %1034 = fmul fast float %1028, 2.000000e+00
  %1035 = fadd fast float %1034, -1.000000e+00
  %1036 = fadd fast float %1033, %1035
  %1037 = fmul fast float %1036, 5.000000e-01
  %1038 = fsub fast float %1033, %1035
  %1039 = fmul fast float %1038, 5.000000e-01
  %1040 = call float @dx.op.unary.f32(i32 6, float %1037)  ; FAbs(value)
  %1041 = fsub fast float 1.000000e+00, %1040
  %1042 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1043 = fsub fast float %1041, %1042
  %1044 = call float @dx.op.dot3.f32(i32 55, float %1037, float %1039, float %1043, float %1037, float %1039, float %1043)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = call float @dx.op.unary.f32(i32 25, float %1044)  ; Rsqrt(value)
  %1046 = fmul fast float %1037, %1045
  %1047 = fmul fast float %1039, %1045
  %1048 = fmul fast float %1045, %1043
  %1049 = fmul fast float %1048, %778
  %1050 = fmul fast float %1048, %779
  %1051 = fmul fast float %1048, %780
  %1052 = fmul fast float %1046, %801
  %1053 = fmul fast float %1046, %802
  %1054 = fmul fast float %1046, %803
  %1055 = fadd fast float %1052, %1049
  %1056 = fadd fast float %1053, %1050
  %1057 = fadd fast float %1054, %1051
  %1058 = fmul fast float %1047, %807
  %1059 = fmul fast float %1047, %808
  %1060 = fmul fast float %1047, %809
  %1061 = fadd fast float %1055, %1058
  %1062 = fadd fast float %1056, %1059
  %1063 = fadd fast float %1057, %1060
  %1064 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1062, float %1063, float %1061, float %1062, float %1063)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = call float @dx.op.unary.f32(i32 25, float %1064)  ; Rsqrt(value)
  %1066 = fmul fast float %1061, %1065
  %1067 = fmul fast float %1062, %1065
  %1068 = fmul fast float %1063, %1065
  %1069 = icmp ne i32 %985, 0
  %1070 = select i1 %1069, float 1.000000e+00, float 0.000000e+00
  %1071 = fmul fast float %975, %1070
  %1072 = and i32 %828, 1
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1074, label %1078

; <label>:1074                                    ; preds = %983
  %1075 = fsub fast float %1066, %760
  %1076 = fsub fast float %1067, %761
  %1077 = fsub fast float %1068, %762
  br label %1078

; <label>:1078                                    ; preds = %1074, %983
  %1079 = phi float [ %1075, %1074 ], [ %1066, %983 ]
  %1080 = phi float [ %1076, %1074 ], [ %1067, %983 ]
  %1081 = phi float [ %1077, %1074 ], [ %1068, %983 ]
  %1082 = fmul float %1081, %1071
  %1083 = fmul float %1080, %1071
  %1084 = fmul float %1079, %1071
  %1085 = fadd fast float %1084, %760
  %1086 = fadd fast float %1083, %761
  %1087 = fadd fast float %1082, %762
  %1088 = icmp ne i32 %984, 0
  %1089 = select i1 %1088, float 1.000000e+00, float 0.000000e+00
  %1090 = fmul fast float %975, %1089
  %1091 = fsub fast float %1029, %767
  %1092 = fsub fast float %1030, %768
  %1093 = fsub fast float %1031, %769
  %1094 = fmul fast float %1091, %1090
  %1095 = fmul fast float %1092, %1090
  %1096 = fmul fast float %1093, %1090
  %1097 = fadd fast float %1094, %767
  %1098 = fadd fast float %1095, %768
  %1099 = fadd fast float %1096, %769
  %1100 = fsub fast float %1002, %766
  %1101 = fmul fast float %1100, %1090
  %1102 = fadd fast float %1101, %766
  %1103 = fmul fast float %1090, %756
  %1104 = fsub fast float %756, %1103
  %1105 = fmul fast float %1090, %755
  %1106 = fsub fast float %755, %1105
  %1107 = fadd fast float %975, %765
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = fsub fast float %1022, %764
  %1110 = fmul fast float %1109, %1071
  %1111 = fadd fast float %1110, %764
  %1112 = fsub fast float %1008, %763
  %1113 = fmul fast float %1112, %1071
  %1114 = fadd fast float %1113, %763
  %1115 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = fmul fast float %1118, %1115
  %1120 = fadd fast float %1119, %1117
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = bitcast float %816 to i32
  %1123 = and i32 %1122, 65535
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = lshr i32 %1122, 16
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fcmp fast oge float %1124, 0.000000e+00
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = select i1 %1127, float %1124, float %1129
  %1131 = fadd fast float %1130, %1126
  %1132 = fsub fast float %1121, %754
  %1133 = fmul fast float %1132, %975
  %1134 = fadd fast float %1133, %754
  %1135 = fmul fast float %1131, %975
  %1136 = call float @dx.op.binary.f32(i32 35, float %753, float %1135)  ; FMax(a,b)
  %1137 = call float @dx.op.binary.f32(i32 35, float %752, float %975)  ; FMax(a,b)
  %1138 = and i32 %828, 16
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1162, label %1140

; <label>:1140                                    ; preds = %1078
  %1141 = bitcast float %822 to i32
  %1142 = add i32 %819, 0
  %1143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1142, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1143, %dx.types.Handle %988, float %916, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float %921, float %923, float undef, float %925, float %927, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = and i32 %1141, 65535
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = fmul fast float %1145, %813
  %1151 = fmul fast float %1146, %814
  %1152 = fmul fast float %1147, %815
  %1153 = and i32 %828, 16384
  %1154 = icmp ne i32 %1153, 0
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = select i1 %1154, float %1156, float 1.000000e+00
  %1158 = fmul fast float %1157, %1149
  %1159 = fmul fast float %1150, %1158
  %1160 = fmul fast float %1151, %1158
  %1161 = fmul fast float %1152, %1158
  br label %1162

; <label>:1162                                    ; preds = %1140, %1078
  %1163 = phi float [ %1159, %1140 ], [ 0.000000e+00, %1078 ]
  %1164 = phi float [ %1160, %1140 ], [ 0.000000e+00, %1078 ]
  %1165 = phi float [ %1161, %1140 ], [ 0.000000e+00, %1078 ]
  %1166 = fsub fast float %1163, %757
  %1167 = fsub fast float %1164, %758
  %1168 = fsub fast float %1165, %759
  %1169 = fmul fast float %1166, %975
  %1170 = fmul fast float %1167, %975
  %1171 = fmul fast float %1168, %975
  %1172 = fadd fast float %1169, %757
  %1173 = fadd fast float %1170, %758
  %1174 = fadd fast float %1171, %759
  br label %877

; <label>:1175                                    ; preds = %877
  br label %1176

; <label>:1176                                    ; preds = %1175, %653
  %1177 = phi float [ 0.000000e+00, %653 ], [ %878, %1175 ]
  %1178 = phi float [ %663, %653 ], [ %879, %1175 ]
  %1179 = phi float [ %668, %653 ], [ %880, %1175 ]
  %1180 = phi float [ %666, %653 ], [ %881, %1175 ]
  %1181 = phi float [ 0.000000e+00, %653 ], [ %882, %1175 ]
  %1182 = phi float [ 0.000000e+00, %653 ], [ %883, %1175 ]
  %1183 = phi float [ %656, %653 ], [ %884, %1175 ]
  %1184 = phi float [ %657, %653 ], [ %885, %1175 ]
  %1185 = phi float [ %658, %653 ], [ %886, %1175 ]
  %1186 = phi float [ %694, %653 ], [ %887, %1175 ]
  %1187 = phi float [ %695, %653 ], [ %888, %1175 ]
  %1188 = phi float [ %696, %653 ], [ %889, %1175 ]
  %1189 = phi float [ %665, %653 ], [ %890, %1175 ]
  %1190 = phi float [ %664, %653 ], [ %891, %1175 ]
  %1191 = phi float [ 0.000000e+00, %653 ], [ %892, %1175 ]
  %1192 = phi float [ %662, %653 ], [ %893, %1175 ]
  %1193 = phi float [ %659, %653 ], [ %894, %1175 ]
  %1194 = phi float [ %660, %653 ], [ %895, %1175 ]
  %1195 = phi float [ %661, %653 ], [ %896, %1175 ]
  %1196 = call float @dx.op.dot3.f32(i32 55, float %1186, float %1187, float %1188, float %1186, float %1187, float %1188)  ; Dot3(ax,ay,az,bx,by,bz)
  %1197 = call float @dx.op.unary.f32(i32 25, float %1196)  ; Rsqrt(value)
  %1198 = fmul fast float %1197, %1186
  %1199 = fmul fast float %1197, %1187
  %1200 = fmul fast float %1197, %1188
  %1201 = fadd fast float %1191, %663
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = call float @dx.op.dot3.f32(i32 55, float %1198, float %1199, float %1200, float %1198, float %1199, float %1200)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = call float @dx.op.unary.f32(i32 25, float %1203)  ; Rsqrt(value)
  %1205 = fmul fast float %1204, %1198
  %1206 = fmul fast float %1204, %1199
  %1207 = fmul fast float %1204, %1200
  %1208 = fadd fast float %1192, 0xBFB99999A0000000
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1209, 0x3FF1C71C80000000
  %1211 = call float @dx.op.binary.f32(i32 36, float %1192, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1212 = fsub fast float 1.000000e+00, %1210
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fmul fast float %1213, %1193
  %1215 = fmul fast float %1213, %1194
  %1216 = fmul fast float %1213, %1195
  %1217 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1218 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1219 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1220 = fmul fast float %1210, %1193
  %1221 = fmul fast float %1210, %1194
  %1222 = fmul fast float %1210, %1195
  %1223 = fadd fast float %1220, %1211
  %1224 = fadd fast float %1221, %1211
  %1225 = fadd fast float %1222, %1211
  %1226 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1227 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1228 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1229 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.i32 %1230, 3
  %1232 = and i32 %1231, 8
  %1233 = icmp ne i32 %1232, 0
  %1234 = call float @dx.op.binary.f32(i32 35, float %1217, float %1193)  ; FMax(a,b)
  %1235 = call float @dx.op.binary.f32(i32 35, float %1218, float %1193)  ; FMax(a,b)
  %1236 = call float @dx.op.binary.f32(i32 35, float %1219, float %1193)  ; FMax(a,b)
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1217, float %1218, float %1219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = select i1 %175, float %1193, float %1217
  %1239 = select i1 %175, float %1237, float %1218
  %1240 = select i1 %175, float 1.000000e+00, float %1219
  %1241 = select i1 %1233, float %1234, float %1238
  %1242 = select i1 %1233, float %1235, float %1239
  %1243 = select i1 %1233, float %1236, float %1240
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1248 = fadd fast float %1245, %104
  %1249 = fadd fast float %1246, %105
  %1250 = fadd fast float %1247, %106
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = fsub fast float %1248, %1252
  %1255 = fsub fast float %1249, %1253
  %1256 = fmul fast float %1254, %1254
  %1257 = fmul fast float %1255, %1255
  %1258 = fadd fast float %1256, %1257
  %1259 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1261 = fcmp fast olt float %1259, %1260
  br i1 %1261, label %1262, label %1329

; <label>:1262                                    ; preds = %1176
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1272 = extractvalue %dx.types.CBufRet.f32 %1263, 3
  %1273 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1274 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1275 = fadd fast float %1272, %1248
  %1276 = fadd fast float %1273, %1249
  %1277 = fadd fast float %1274, %1250
  %1278 = fmul fast float %1275, %1264
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1266, float %1278)  ; FMad(a,b,c)
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1268, float %1279)  ; FMad(a,b,c)
  %1281 = fmul fast float %1275, %1269
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1270, float %1281)  ; FMad(a,b,c)
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1271, float %1282)  ; FMad(a,b,c)
  %1284 = fsub fast float %1280, %1272
  %1285 = fsub fast float %1283, %1273
  %1286 = fsub fast float %1284, %1252
  %1287 = fadd fast float %1286, %1260
  %1288 = fsub fast float %1285, %1253
  %1289 = fadd fast float %1288, %1260
  %1290 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1291 = fmul fast float %1287, %1290
  %1292 = fmul fast float %1289, %1290
  %1293 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1294 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1295 = fsub fast float 1.000000e+00, %1293
  %1296 = fsub fast float 1.000000e+00, %1294
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = fcmp fast ugt float %1298, 0.000000e+00
  br i1 %1299, label %1300, label %1603

; <label>:1300                                    ; preds = %1262
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1303 = fmul fast float %1302, %1298
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1305 = fadd fast float %1304, %1303
  %1306 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1307 = fadd fast float %1305, %1274
  %1308 = fmul fast float %1280, %1268
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1271, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1307, float %1306, float %1309)  ; FMad(a,b,c)
  %1311 = fsub fast float %1310, %1274
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 2
  %1314 = fsub fast float %1311, %1313
  %1315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1295, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1322 = extractvalue %dx.types.ResRet.f32 %1319, 2
  %1323 = fadd fast float %1320, %1316
  %1324 = fmul fast float %1323, 0x3F847AE140000000
  %1325 = fadd fast float %1321, %1317
  %1326 = fmul fast float %1325, 0x3F847AE140000000
  %1327 = fadd fast float %1322, %1318
  %1328 = fmul fast float %1327, 0x3F847AE140000000
  br label %1603

; <label>:1329                                    ; preds = %1176
  %1330 = and i32 %151, 1
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1603, label %1332

; <label>:1332                                    ; preds = %1329
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1340 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1341 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1333, 3
  %1343 = extractvalue %dx.types.CBufRet.f32 %1335, 3
  %1344 = extractvalue %dx.types.CBufRet.f32 %1337, 3
  %1345 = fadd fast float %1342, %1248
  %1346 = fadd fast float %1343, %1249
  %1347 = fadd fast float %1344, %1250
  %1348 = fmul fast float %1345, %1334
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %1346, float %1336, float %1348)  ; FMad(a,b,c)
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1347, float %1338, float %1349)  ; FMad(a,b,c)
  %1351 = fmul fast float %1345, %1339
  %1352 = call float @dx.op.tertiary.f32(i32 46, float %1346, float %1340, float %1351)  ; FMad(a,b,c)
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %1347, float %1341, float %1352)  ; FMad(a,b,c)
  %1354 = fsub fast float %1350, %1342
  %1355 = fsub fast float %1353, %1343
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1360 = extractvalue %dx.types.CBufRet.f32 %1356, 3
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.i32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.i32 %1363, 1
  %1366 = udiv i32 %1365, %1364
  %1367 = fsub fast float %1354, %1357
  %1368 = fsub fast float %1355, %1358
  %1369 = call float @dx.op.binary.f32(i32 35, float %1367, float 0.000000e+00)  ; FMax(a,b)
  %1370 = call float @dx.op.binary.f32(i32 35, float %1368, float 0.000000e+00)  ; FMax(a,b)
  %1371 = call float @dx.op.binary.f32(i32 36, float %1369, float %1359)  ; FMin(a,b)
  %1372 = call float @dx.op.binary.f32(i32 36, float %1370, float %1360)  ; FMin(a,b)
  %1373 = add i32 %1364, -1
  %1374 = add i32 %1366, -1
  %1375 = fmul fast float %1371, %1362
  %1376 = fmul fast float %1372, %1362
  %1377 = fptoui float %1375 to i32
  %1378 = fptoui float %1376 to i32
  %1379 = call i32 @dx.op.binary.i32(i32 40, i32 %1377, i32 %1373)  ; UMin(a,b)
  %1380 = call i32 @dx.op.binary.i32(i32 40, i32 %1378, i32 %1374)  ; UMin(a,b)
  %1381 = mul i32 %1380, %1364
  %1382 = add i32 %1381, %1379
  %1383 = shl i32 %1382, 2
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = icmp eq i32 %1385, -1
  br i1 %1386, label %1603, label %1387

; <label>:1387                                    ; preds = %1332
  %1388 = mul i32 %1385, 148
  %1389 = add i32 %1388, 4
  %1390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = add i32 %1388, 8
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = add i32 %1388, 36
  %1396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = add i32 %1388, 60
  %1399 = add i32 %1388, 92
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = add i32 %1388, 116
  %1403 = fsub fast float %1354, %1391
  %1404 = fsub fast float %1355, %1394
  %1405 = fmul fast float %1362, %1403
  %1406 = fmul fast float %1362, %1404
  %1407 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1408 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1412 = call float @dx.op.unary.f32(i32 83, float %1407)  ; DerivCoarseX(value)
  %1413 = call float @dx.op.unary.f32(i32 83, float %1409)  ; DerivCoarseX(value)
  %1414 = call float @dx.op.unary.f32(i32 84, float %1407)  ; DerivCoarseY(value)
  %1415 = call float @dx.op.unary.f32(i32 84, float %1409)  ; DerivCoarseY(value)
  %1416 = fmul fast float %1412, %1411
  %1417 = fmul fast float %1413, %1411
  %1418 = fmul fast float %1414, %1411
  %1419 = fmul fast float %1415, %1411
  %1420 = call float @dx.op.dot2.f32(i32 54, float %1418, float %1419, float %1418, float %1419)  ; Dot2(ax,ay,bx,by)
  %1421 = call float @dx.op.dot2.f32(i32 54, float %1416, float %1417, float %1416, float %1417)  ; Dot2(ax,ay,bx,by)
  %1422 = call float @dx.op.binary.f32(i32 35, float %1421, float %1420)  ; FMax(a,b)
  %1423 = call float @dx.op.unary.f32(i32 23, float %1422)  ; Log(value)
  %1424 = fmul fast float %1423, 5.000000e-01
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1427 = fadd fast float %1426, %1424
  %1428 = call float @dx.op.binary.f32(i32 35, float %1427, float 0.000000e+00)  ; FMax(a,b)
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 3
  %1431 = fadd fast float %1430, %1428
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 3
  %1434 = fadd fast float %1431, %1433
  %1435 = add i32 %1401, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1436, i32 0)  ; GetDimensions(handle,mipLevel)
  %1438 = extractvalue %dx.types.Dimensions %1437, 0
  %1439 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1438)  ; FirstbitLo(value)
  %1440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.i32 %1440, 1
  %1442 = sub nsw i32 %1441, %1439
  %1443 = sitofp i32 %1442 to float
  %1444 = fsub fast float %1434, %1443
  %1445 = call float @dx.op.binary.f32(i32 35, float %1444, float 0.000000e+00)  ; FMax(a,b)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1436, %dx.types.Handle %33, float %1407, float %1409, float %1397, float undef, i32 0, i32 0, i32 undef, float %1445)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = fcmp ule float %1447, 0x3FE0101020000000
  %1449 = extractvalue %dx.types.CBufRet.i32 %1440, 0
  %1450 = and i32 %1449, 128
  %1451 = icmp ne i32 %1450, 0
  %1452 = and i1 %1448, %1451
  br i1 %1452, label %1603, label %1453

; <label>:1453                                    ; preds = %1387
  %1454 = add i32 %1388, 20
  %1455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.f32 %1455, 0
  %1457 = add i32 %1388, 24
  %1458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = add i32 %1388, 40
  %1461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = add i32 %1388, 96
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1468 = fmul fast float %1467, %1407
  %1469 = fmul fast float %1467, %1409
  %1470 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1471 = fadd fast float %1468, %1470
  %1472 = fadd fast float %1469, %1470
  %1473 = add i32 %1465, 0
  %1474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1475 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1474, i32 0)  ; GetDimensions(handle,mipLevel)
  %1476 = extractvalue %dx.types.Dimensions %1475, 0
  %1477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1476)  ; FirstbitLo(value)
  %1478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.i32 %1478, 1
  %1480 = sub nsw i32 %1479, %1477
  %1481 = sitofp i32 %1480 to float
  %1482 = fsub fast float %1431, %1481
  %1483 = call float @dx.op.binary.f32(i32 35, float %1482, float 0.000000e+00)  ; FMax(a,b)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1474, %dx.types.Handle %33, float %1471, float %1472, float %1462, float undef, i32 0, i32 0, i32 undef, float %1483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = fmul fast float %1485, %1456
  %1487 = fadd fast float %1486, %1459
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.CBufRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.CBufRet.f32 %1488, 2
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 3
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1496 = extractvalue %dx.types.CBufRet.f32 %1488, 3
  %1497 = fadd fast float %1493, %1354
  %1498 = fadd fast float %1495, %1355
  %1499 = fadd fast float %1487, %1496
  %1500 = fmul fast float %1497, %1489
  %1501 = call float @dx.op.tertiary.f32(i32 46, float %1498, float %1490, float %1500)  ; FMad(a,b,c)
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1499, float %1491, float %1501)  ; FMad(a,b,c)
  %1503 = fsub fast float %1502, %1496
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 2
  %1506 = fsub fast float %1503, %1505
  %1507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.i32 %1507, 0
  %1509 = call i32 @dx.op.binary.i32(i32 40, i32 %1385, i32 %1508)  ; UMin(a,b)
  %1510 = mul i32 %1509, 36
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %1510, 4
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = fmul fast float %1515, %1407
  %1517 = fmul fast float %1515, %1409
  %1518 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1519 = fadd fast float %1516, %1518
  %1520 = fadd fast float %1517, %1518
  %1521 = icmp eq i32 %1512, 0
  br i1 %1521, label %1590, label %1522

; <label>:1522                                    ; preds = %1453
  br label %1523

; <label>:1523                                    ; preds = %1580, %1522
  %1524 = phi float [ %1581, %1580 ], [ 0.000000e+00, %1522 ]
  %1525 = phi float [ %1582, %1580 ], [ 0.000000e+00, %1522 ]
  %1526 = phi float [ %1583, %1580 ], [ 0.000000e+00, %1522 ]
  %1527 = phi float [ %1584, %1580 ], [ 0.000000e+00, %1522 ]
  %1528 = phi float [ %1585, %1580 ], [ 0.000000e+00, %1522 ]
  %1529 = phi float [ %1586, %1580 ], [ 0.000000e+00, %1522 ]
  %1530 = phi i32 [ %1587, %1580 ], [ 0, %1522 ]
  %1531 = shl i32 %1530, 2
  %1532 = add i32 %1398, %1531
  %1533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = add i32 %1402, %1531
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %1537, 0
  %1539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1540 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1539, i32 0)  ; GetDimensions(handle,mipLevel)
  %1541 = extractvalue %dx.types.Dimensions %1540, 0
  %1542 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1541)  ; FirstbitLo(value)
  %1543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.i32 %1543, 1
  %1545 = sub nsw i32 %1544, %1542
  %1546 = sitofp i32 %1545 to float
  %1547 = fsub fast float %1431, %1546
  %1548 = call float @dx.op.binary.f32(i32 35, float %1547, float 0.000000e+00)  ; FMax(a,b)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1539, %dx.types.Handle %33, float %1519, float %1520, float %1534, float undef, i32 0, i32 0, i32 undef, float %1548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = fcmp fast ogt float %1550, 0.000000e+00
  br i1 %1551, label %1552, label %1580

; <label>:1552                                    ; preds = %1523
  %1553 = add i32 %1513, %1531
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 32767
  %1557 = mul nuw nsw i32 %1556, 928
  %1558 = add nuw nsw i32 %1557, 48
  %1559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.f32 %1559, 2
  %1563 = add nuw nsw i32 %1557, 60
  %1564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = fmul fast float %1560, %1550
  %1569 = fmul fast float %1561, %1550
  %1570 = fmul fast float %1562, %1550
  %1571 = fadd fast float %1568, %1524
  %1572 = fadd fast float %1569, %1525
  %1573 = fadd fast float %1570, %1526
  %1574 = fmul fast float %1565, %1550
  %1575 = fmul fast float %1566, %1550
  %1576 = fmul fast float %1567, %1550
  %1577 = fadd fast float %1574, %1527
  %1578 = fadd fast float %1575, %1528
  %1579 = fadd fast float %1576, %1529
  br label %1580

; <label>:1580                                    ; preds = %1552, %1523
  %1581 = phi float [ %1571, %1552 ], [ %1524, %1523 ]
  %1582 = phi float [ %1572, %1552 ], [ %1525, %1523 ]
  %1583 = phi float [ %1573, %1552 ], [ %1526, %1523 ]
  %1584 = phi float [ %1577, %1552 ], [ %1527, %1523 ]
  %1585 = phi float [ %1578, %1552 ], [ %1528, %1523 ]
  %1586 = phi float [ %1579, %1552 ], [ %1529, %1523 ]
  %1587 = add nuw i32 %1530, 1
  %1588 = icmp eq i32 %1587, %1512
  br i1 %1588, label %1589, label %1523

; <label>:1589                                    ; preds = %1580
  br label %1590

; <label>:1590                                    ; preds = %1589, %1453
  %1591 = phi float [ 0.000000e+00, %1453 ], [ %1581, %1589 ]
  %1592 = phi float [ 0.000000e+00, %1453 ], [ %1582, %1589 ]
  %1593 = phi float [ 0.000000e+00, %1453 ], [ %1583, %1589 ]
  %1594 = phi float [ 0.000000e+00, %1453 ], [ %1584, %1589 ]
  %1595 = phi float [ 0.000000e+00, %1453 ], [ %1585, %1589 ]
  %1596 = phi float [ 0.000000e+00, %1453 ], [ %1586, %1589 ]
  %1597 = fadd fast float %1594, %1591
  %1598 = fmul fast float %1597, 0x3F847AE140000000
  %1599 = fadd fast float %1595, %1592
  %1600 = fmul fast float %1599, 0x3F847AE140000000
  %1601 = fadd fast float %1596, %1593
  %1602 = fmul fast float %1601, 0x3F847AE140000000
  br label %1603

; <label>:1603                                    ; preds = %1590, %1387, %1332, %1329, %1300, %1262
  %1604 = phi float [ %1314, %1300 ], [ -1.310720e+05, %1262 ], [ %1506, %1590 ], [ -1.310720e+05, %1332 ], [ -1.310720e+05, %1387 ], [ -1.310720e+05, %1329 ]
  %1605 = phi float [ %1324, %1300 ], [ 0.000000e+00, %1262 ], [ %1598, %1590 ], [ 0.000000e+00, %1332 ], [ 0.000000e+00, %1387 ], [ 0.000000e+00, %1329 ]
  %1606 = phi float [ %1326, %1300 ], [ 0.000000e+00, %1262 ], [ %1600, %1590 ], [ 0.000000e+00, %1332 ], [ 0.000000e+00, %1387 ], [ 0.000000e+00, %1329 ]
  %1607 = phi float [ %1328, %1300 ], [ 0.000000e+00, %1262 ], [ %1602, %1590 ], [ 0.000000e+00, %1332 ], [ 0.000000e+00, %1387 ], [ 0.000000e+00, %1329 ]
  %1608 = phi i1 [ true, %1300 ], [ false, %1262 ], [ true, %1590 ], [ false, %1332 ], [ false, %1387 ], [ false, %1329 ]
  %1609 = and i32 %151, 3
  %1610 = icmp eq i32 %1609, 1
  %1611 = select i1 %1610, float 1.000000e+00, float 0.000000e+00
  %1612 = fsub fast float %1604, %106
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = select i1 %1608, float %1613, float 1.000000e+00
  %1615 = fmul fast float %1614, %1611
  %1616 = icmp eq i32 %1609, 3
  %1617 = select i1 %1616, float 1.000000e+00, float %1615
  %1618 = call float @dx.op.binary.f32(i32 35, float %1177, float %1617)  ; FMax(a,b)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fcmp fast une float %1619, 0.000000e+00
  %1621 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = call float @dx.op.unary.f32(i32 25, float %1621)  ; Rsqrt(value)
  br i1 %1620, label %1630, label %1623

; <label>:1623                                    ; preds = %1603
  %1624 = fmul fast float %1622, %104
  %1625 = fmul fast float %1622, %105
  %1626 = fmul fast float %1622, %106
  %1627 = fsub fast float -0.000000e+00, %1624
  %1628 = fsub fast float -0.000000e+00, %1625
  %1629 = fsub fast float -0.000000e+00, %1626
  br label %1798

; <label>:1630                                    ; preds = %1603
  %1631 = fmul fast float %104, %1622
  %1632 = fsub fast float -0.000000e+00, %1631
  %1633 = fmul fast float %105, %1622
  %1634 = fsub fast float -0.000000e+00, %1633
  %1635 = fmul fast float %106, %1622
  %1636 = fsub fast float -0.000000e+00, %1635
  %1637 = call float @dx.op.dot3.f32(i32 55, float %1632, float %1634, float %1636, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %1638 = fmul fast float %1619, 2.500000e+00
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fmul fast float %1619, 0x4013FFFFE0000000
  %1641 = fadd fast float %1640, 0xBFFFFFFFE0000000
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = fmul fast float %1619, 0x4004000020000000
  %1644 = fadd fast float %1643, 0xBFF8000040000000
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1647 = fmul fast float %1208, 1.000000e+01
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fmul fast float %1648, 2.000000e+00
  %1650 = fsub fast float 3.000000e+00, %1649
  %1651 = fmul fast float %1648, %1648
  %1652 = fmul fast float %1651, %1650
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fsub fast float 0x3FE3333340000000, %1229
  %1655 = fmul fast float %1654, 0x400AAAAAA0000000
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = fmul fast float %1653, %1656
  %1658 = fmul fast float %1241, 0x3FEA2B8620000000
  %1659 = fmul fast float %1242, 0x3FEA2B8620000000
  %1660 = fmul fast float %1243, 0x3FEA2B8620000000
  %1661 = fadd fast float %1658, 0x3FC81DFBA0000000
  %1662 = fmul fast float %1661, %1241
  %1663 = fadd fast float %1662, 0x3F910E6020000000
  %1664 = fadd fast float %1659, 0x3FC81DFBA0000000
  %1665 = fmul fast float %1664, %1242
  %1666 = fadd fast float %1665, 0x3F910E6020000000
  %1667 = fadd fast float %1660, 0x3FC81DFBA0000000
  %1668 = fmul fast float %1667, %1243
  %1669 = fadd fast float %1668, 0x3F910E6020000000
  %1670 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1671 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1672 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1673 = fsub fast float %1670, %1241
  %1674 = fsub fast float %1671, %1242
  %1675 = fsub fast float %1672, %1243
  %1676 = fmul fast float %1673, %1646
  %1677 = fmul fast float %1676, %1657
  %1678 = fmul fast float %1674, %1646
  %1679 = fmul fast float %1678, %1657
  %1680 = fmul fast float %1675, %1646
  %1681 = fmul fast float %1680, %1657
  %1682 = fadd fast float %1677, %1241
  %1683 = fadd fast float %1679, %1242
  %1684 = fadd fast float %1681, %1243
  %1685 = fmul fast float %1189, %1189
  %1686 = fmul fast float %1685, %1685
  %1687 = fadd fast float %1642, 1.000000e+00
  %1688 = fsub fast float %1687, %1657
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = fsub fast float 1.000000e+00, %1686
  %1693 = call float @dx.op.binary.f32(i32 36, float %1689, float %1692)  ; FMin(a,b)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1695 = call float @dx.op.binary.f32(i32 35, float %1693, float %1694)  ; FMax(a,b)
  %1696 = fadd fast float %1691, 0xBFE4CCCCC0000000
  %1697 = fmul fast float %1696, 0x4006DB6DA0000000
  %1698 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1699 = fmul fast float %1698, 2.000000e+00
  %1700 = fsub fast float 3.000000e+00, %1699
  %1701 = bitcast float %1226 to i32
  %1702 = ashr i32 %1701, 1
  %1703 = add nsw i32 %1702, 532487669
  %1704 = bitcast i32 %1703 to float
  %1705 = fsub fast float 1.000000e+00, %1704
  %1706 = bitcast float %1705 to i32
  %1707 = sub nsw i32 2129859010, %1706
  %1708 = bitcast i32 %1707 to float
  %1709 = fmul fast float %1708, 2.000000e+00
  %1710 = bitcast float %1227 to i32
  %1711 = ashr i32 %1710, 1
  %1712 = add nsw i32 %1711, 532487669
  %1713 = bitcast i32 %1712 to float
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = bitcast float %1714 to i32
  %1716 = sub nsw i32 2129859010, %1715
  %1717 = bitcast i32 %1716 to float
  %1718 = fmul fast float %1717, 2.000000e+00
  %1719 = bitcast float %1228 to i32
  %1720 = ashr i32 %1719, 1
  %1721 = add nsw i32 %1720, 532487669
  %1722 = bitcast i32 %1721 to float
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = bitcast float %1723 to i32
  %1725 = sub nsw i32 2129859010, %1724
  %1726 = bitcast i32 %1725 to float
  %1727 = fmul fast float %1726, 2.000000e+00
  %1728 = fsub fast float 0x4002A9FBE0000000, %1709
  %1729 = fadd fast float %1709, 0x3FD54FDF00000000
  %1730 = bitcast float %1729 to i32
  %1731 = sub nsw i32 2129859010, %1730
  %1732 = bitcast i32 %1731 to float
  %1733 = fmul fast float %1732, %1728
  %1734 = fmul fast float %1733, %1733
  %1735 = fsub fast float 0x4002A9FBE0000000, %1718
  %1736 = fadd fast float %1718, 0x3FD54FDF00000000
  %1737 = bitcast float %1736 to i32
  %1738 = sub nsw i32 2129859010, %1737
  %1739 = bitcast i32 %1738 to float
  %1740 = fmul fast float %1739, %1735
  %1741 = fmul fast float %1740, %1740
  %1742 = fsub fast float 0x4002A9FBE0000000, %1727
  %1743 = fadd fast float %1727, 0x3FD54FDF00000000
  %1744 = bitcast float %1743 to i32
  %1745 = sub nsw i32 2129859010, %1744
  %1746 = bitcast i32 %1745 to float
  %1747 = fmul fast float %1746, %1742
  %1748 = fmul fast float %1747, %1747
  %1749 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1734)  ; FMax(a,b)
  %1750 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1741)  ; FMax(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1748)  ; FMax(a,b)
  %1752 = fsub fast float 1.000000e+00, %1637
  %1753 = fadd fast float %1752, %1653
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = fsub fast float 1.000000e+00, %1617
  %1756 = fmul fast float %1695, %1755
  %1757 = fmul fast float %1698, %1698
  %1758 = fmul fast float %1757, %1756
  %1759 = fmul fast float %1758, %1700
  %1760 = fmul fast float %1755, 0xBFE99999A0000000
  %1761 = fmul fast float %1760, %1646
  %1762 = fmul fast float %1761, %1657
  %1763 = fadd fast float %1762, 1.000000e+00
  %1764 = fadd fast float %1229, -1.000000e+00
  %1765 = fmul fast float %1763, %1764
  %1766 = fadd fast float %1765, 1.000000e+00
  %1767 = fsub fast float %1749, %1226
  %1768 = fsub fast float %1750, %1227
  %1769 = fsub fast float %1751, %1228
  %1770 = fmul fast float %1759, %1767
  %1771 = fmul fast float %1759, %1768
  %1772 = fmul fast float %1759, %1769
  %1773 = fadd fast float %1770, %1226
  %1774 = fadd fast float %1771, %1227
  %1775 = fadd fast float %1772, %1228
  %1776 = fsub fast float %42, %1205
  %1777 = fsub fast float %43, %1206
  %1778 = fsub fast float %44, %1207
  %1779 = fmul fast float %1759, %1776
  %1780 = fmul fast float %1759, %1777
  %1781 = fmul fast float %1759, %1778
  %1782 = fadd fast float %1779, %1205
  %1783 = fadd fast float %1780, %1206
  %1784 = fadd fast float %1781, %1207
  %1785 = fmul fast float %1759, %1754
  %1786 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1787 = fsub fast float 1.000000e+00, %1786
  %1788 = fmul fast float %1785, %1787
  %1789 = fadd fast float %1788, %1786
  %1790 = fsub fast float 1.000000e+00, %1189
  %1791 = fmul fast float %1759, %1790
  %1792 = fadd fast float %1791, %1189
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1782, float %1783, float %1784, float %1782, float %1783, float %1784)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = call float @dx.op.unary.f32(i32 25, float %1793)  ; Rsqrt(value)
  %1795 = fmul fast float %1782, %1794
  %1796 = fmul fast float %1783, %1794
  %1797 = fmul fast float %1784, %1794
  br label %1798

; <label>:1798                                    ; preds = %1630, %1623
  %1799 = phi float [ %1629, %1623 ], [ %1636, %1630 ]
  %1800 = phi float [ %1628, %1623 ], [ %1634, %1630 ]
  %1801 = phi float [ %1627, %1623 ], [ %1632, %1630 ]
  %1802 = phi float [ %1626, %1623 ], [ %1635, %1630 ]
  %1803 = phi float [ %1625, %1623 ], [ %1633, %1630 ]
  %1804 = phi float [ %1624, %1623 ], [ %1631, %1630 ]
  %1805 = phi float [ %1241, %1623 ], [ %1682, %1630 ]
  %1806 = phi float [ %1242, %1623 ], [ %1683, %1630 ]
  %1807 = phi float [ %1243, %1623 ], [ %1684, %1630 ]
  %1808 = phi float [ %1226, %1623 ], [ %1773, %1630 ]
  %1809 = phi float [ %1227, %1623 ], [ %1774, %1630 ]
  %1810 = phi float [ %1228, %1623 ], [ %1775, %1630 ]
  %1811 = phi float [ %1205, %1623 ], [ %1795, %1630 ]
  %1812 = phi float [ %1206, %1623 ], [ %1796, %1630 ]
  %1813 = phi float [ %1207, %1623 ], [ %1797, %1630 ]
  %1814 = phi float [ %1229, %1623 ], [ %1789, %1630 ]
  %1815 = phi float [ %1189, %1623 ], [ %1792, %1630 ]
  %1816 = select i1 %175, float 0.000000e+00, float %1810
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1812, float %1813, float %1801, float %1800, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1804, float %1803, float %1802, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %1820 = fmul fast float %1819, 2.000000e+00
  %1821 = fmul fast float %1820, %1811
  %1822 = fmul fast float %1820, %1812
  %1823 = fmul fast float %1820, %1813
  %1824 = fsub fast float %1804, %1821
  %1825 = fsub fast float %1803, %1822
  %1826 = fsub fast float %1802, %1823
  %1827 = call float @dx.op.binary.f32(i32 36, float %1815, float 1.000000e+00)  ; FMin(a,b)
  %1828 = fsub fast float 1.000000e+00, %1815
  %1829 = bitcast float %1828 to i32
  %1830 = sub nsw i32 2129859010, %1829
  %1831 = bitcast i32 %1830 to float
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = fadd fast float %1833, %104
  %1836 = fadd fast float %1834, %105
  %1837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.i32 %1837, 0
  %1839 = icmp eq i32 %1838, 1
  br i1 %1839, label %1840, label %1875

; <label>:1840                                    ; preds = %1798
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1844 = fsub fast float %1835, %1842
  %1845 = fsub fast float %1836, %1843
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1849 = fmul fast float %1844, %1847
  %1850 = fmul fast float %1845, %1848
  %1851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1852 = extractvalue %dx.types.ResRet.f32 %1851, 0
  %1853 = fcmp fast ogt float %1852, 0.000000e+00
  %1854 = extractvalue %dx.types.CBufRet.i32 %1837, 3
  %1855 = icmp ne i32 %1854, 0
  %1856 = and i1 %1853, %1855
  br i1 %1856, label %1857, label %1875, !dx.controlflow.hints !70

; <label>:1857                                    ; preds = %1840
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.CBufRet.f32 %1858, 1
  %1861 = fsub fast float %1835, %1859
  %1862 = fsub fast float %1836, %1860
  %1863 = fmul fast float %1861, %1861
  %1864 = fmul fast float %1862, %1862
  %1865 = fadd fast float %1863, %1864
  %1866 = uitofp i32 %1854 to float
  %1867 = fmul fast float %1866, %1866
  %1868 = fcmp fast ogt float %1865, %1867
  br i1 %1868, label %1875, label %1869

; <label>:1869                                    ; preds = %1857
  %1870 = call float @dx.op.unary.f32(i32 24, float %1865)  ; Sqrt(value)
  %1871 = fsub fast float %1866, %1870
  %1872 = fmul fast float %1871, 0x3F75555560000000
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1874 = call float @dx.op.binary.f32(i32 36, float %1873, float %1852)  ; FMin(a,b)
  br label %1875

; <label>:1875                                    ; preds = %1869, %1857, %1840, %1798
  %1876 = phi float [ 1.000000e+00, %1798 ], [ %1874, %1869 ], [ %1852, %1840 ], [ 0.000000e+00, %1857 ]
  %1877 = fcmp fast ogt float %1876, 0.000000e+00
  br i1 %1877, label %1878, label %1976, !dx.controlflow.hints !71

; <label>:1878                                    ; preds = %1875
  %1879 = fadd fast float %135, 5.000000e-01
  %1880 = call float @dx.op.unary.f32(i32 27, float %1879)  ; Round_ni(value)
  %1881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %133, float %134, float %1880, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1887 = fmul fast float %1886, %1882
  %1888 = fmul fast float %1886, %1883
  %1889 = fmul fast float %1886, %1884
  %1890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %133, float %134, float %1880, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %133, float %134, float %1880, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = extractvalue %dx.types.ResRet.f32 %1892, 1
  %1895 = fmul fast float %1893, 2.000000e+00
  %1896 = fmul fast float %1894, 2.000000e+00
  %1897 = fadd fast float %1895, -1.000000e+00
  %1898 = fadd fast float %1896, -1.000000e+00
  %1899 = fadd fast float %1897, %1898
  %1900 = fmul fast float %1899, 5.000000e-01
  %1901 = fsub fast float %1897, %1898
  %1902 = fmul fast float %1901, 5.000000e-01
  %1903 = call float @dx.op.unary.f32(i32 6, float %1900)  ; FAbs(value)
  %1904 = fsub fast float 1.000000e+00, %1903
  %1905 = call float @dx.op.unary.f32(i32 6, float %1902)  ; FAbs(value)
  %1906 = fsub fast float %1904, %1905
  %1907 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1906)  ; FMax(a,b)
  %1908 = call float @dx.op.dot3.f32(i32 55, float %1900, float %1902, float %1907, float %1900, float %1902, float %1907)  ; Dot3(ax,ay,az,bx,by,bz)
  %1909 = bitcast float %1908 to i32
  %1910 = ashr i32 %1909, 1
  %1911 = sub nsw i32 1597250115, %1910
  %1912 = bitcast i32 %1911 to float
  %1913 = fmul fast float %1912, %1900
  %1914 = fmul fast float %1912, %1902
  %1915 = fmul fast float %1912, %1907
  %1916 = fsub fast float 1.000000e+00, %1891
  %1917 = fdiv fast float %1916, %1915
  %1918 = fmul fast float %1915, %42
  %1919 = fmul fast float %1915, %43
  %1920 = fmul fast float %1915, %44
  %1921 = fmul fast float %1913, %38
  %1922 = fmul fast float %1913, %39
  %1923 = fmul fast float %1913, %40
  %1924 = fadd fast float %1918, %1921
  %1925 = fadd fast float %1919, %1922
  %1926 = fadd fast float %1920, %1923
  %1927 = fmul fast float %1914, %68
  %1928 = fmul fast float %1914, %69
  %1929 = fmul fast float %1914, %70
  %1930 = fadd fast float %1924, %1927
  %1931 = fadd fast float %1925, %1928
  %1932 = fadd fast float %1926, %1929
  %1933 = call float @dx.op.dot3.f32(i32 55, float %1930, float %1931, float %1932, float %1930, float %1931, float %1932)  ; Dot3(ax,ay,az,bx,by,bz)
  %1934 = call float @dx.op.unary.f32(i32 25, float %1933)  ; Rsqrt(value)
  %1935 = fmul fast float %1930, %1934
  %1936 = fmul fast float %1931, %1934
  %1937 = fmul fast float %1932, %1934
  %1938 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1812, float %1813, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  %1940 = fmul fast float %1939, 5.000000e-01
  %1941 = fadd fast float %1940, 5.000000e-01
  %1942 = fmul fast float %1941, %1891
  %1943 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1812, float %1813, float %1935, float %1936, float %1937)  ; Dot3(ax,ay,az,bx,by,bz)
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = fmul fast float %1944, %1917
  %1946 = fadd fast float %1942, %1945
  %1947 = fsub fast float 5.000000e-01, %1940
  %1948 = fmul fast float %1947, %1805
  %1949 = fmul fast float %1947, %1806
  %1950 = fmul fast float %1947, %1807
  %1951 = fadd fast float %1946, %1948
  %1952 = fmul fast float %1951, %1887
  %1953 = fadd fast float %1946, %1949
  %1954 = fmul fast float %1953, %1888
  %1955 = fadd fast float %1946, %1950
  %1956 = fmul fast float %1955, %1889
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1825, float %1826, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fmul fast float %1958, 5.000000e-01
  %1960 = fadd fast float %1959, 5.000000e-01
  %1961 = fmul fast float %1960, %1891
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1825, float %1826, float %1935, float %1936, float %1937)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1964 = fmul fast float %1963, %1917
  %1965 = fadd fast float %1961, %1964
  %1966 = fsub fast float 5.000000e-01, %1959
  %1967 = fmul fast float %1966, %1805
  %1968 = fmul fast float %1966, %1806
  %1969 = fmul fast float %1966, %1807
  %1970 = fadd fast float %1965, %1967
  %1971 = fmul fast float %1970, %1887
  %1972 = fadd fast float %1965, %1968
  %1973 = fmul fast float %1972, %1888
  %1974 = fadd fast float %1965, %1969
  %1975 = fmul fast float %1974, %1889
  br label %1976

; <label>:1976                                    ; preds = %1878, %1875
  %1977 = phi float [ %1971, %1878 ], [ 0.000000e+00, %1875 ]
  %1978 = phi float [ %1973, %1878 ], [ 0.000000e+00, %1875 ]
  %1979 = phi float [ %1975, %1878 ], [ 0.000000e+00, %1875 ]
  %1980 = phi float [ %1952, %1878 ], [ 0.000000e+00, %1875 ]
  %1981 = phi float [ %1954, %1878 ], [ 0.000000e+00, %1875 ]
  %1982 = phi float [ %1956, %1878 ], [ 0.000000e+00, %1875 ]
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = fcmp fast ogt float %1984, 0.000000e+00
  %1986 = and i1 %1877, %1985
  br i1 %1986, label %1987, label %2191, !dx.controlflow.hints !72

; <label>:1987                                    ; preds = %1976
  %1988 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1989 = fadd fast float %1988, %106
  %1990 = fmul fast float %1811, 3.200000e+01
  %1991 = fmul fast float %1812, 3.200000e+01
  %1992 = fadd fast float %1835, %1990
  %1993 = fadd fast float %1836, %1991
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.CBufRet.f32 %1994, 1
  %1997 = fsub fast float %1992, %1995
  %1998 = fsub fast float %1993, %1996
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 1
  %2002 = fmul fast float %1997, %2000
  %2003 = fmul fast float %1998, %2001
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2007 = fsub fast float %1835, %2005
  %2008 = fsub fast float %1836, %2006
  %2009 = fmul fast float %2007, %2007
  %2010 = fmul fast float %2008, %2008
  %2011 = fadd fast float %2009, %2010
  %2012 = call float @dx.op.unary.f32(i32 24, float %2011)  ; Sqrt(value)
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.CBufRet.f32 %2013, 1
  %2016 = fsub fast float %2012, %2014
  %2017 = fdiv fast float %2016, %2015
  %2018 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2019 = fmul fast float %2018, 2.000000e+00
  %2020 = fsub fast float 3.000000e+00, %2019
  %2021 = fmul fast float %2018, %2018
  %2022 = fmul fast float %2021, %2020
  %2023 = fcmp fast oge float %2002, 0.000000e+00
  %2024 = fcmp fast ole float %2002, 1.000000e+00
  %2025 = and i1 %2024, %2023
  %2026 = fcmp fast oge float %2003, 0.000000e+00
  %2027 = and i1 %2026, %2025
  %2028 = fcmp fast ole float %2003, 1.000000e+00
  %2029 = and i1 %2028, %2027
  %2030 = fcmp fast ogt float %2022, 0.000000e+00
  %2031 = and i1 %2030, %2029
  br i1 %2031, label %2032, label %2155, !dx.controlflow.hints !73

; <label>:2032                                    ; preds = %1987
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 2
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 3
  %2036 = fmul fast float %2034, %2002
  %2037 = fmul fast float %2035, %2003
  %2038 = call float @dx.op.unary.f32(i32 27, float %2036)  ; Round_ni(value)
  %2039 = call float @dx.op.unary.f32(i32 27, float %2037)  ; Round_ni(value)
  %2040 = fptosi float %2038 to i32
  %2041 = fptosi float %2039 to i32
  %2042 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2040, i32 %2041, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = lshr i32 %2043, 16
  %2045 = icmp eq i32 %2044, 65535
  br i1 %2045, label %2155, label %2046

; <label>:2046                                    ; preds = %2032
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2049 = fmul fast float %2048, %2002
  %2050 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2051 = fadd fast float %2049, %2050
  %2052 = extractvalue %dx.types.CBufRet.f32 %2047, 2
  %2053 = fmul fast float %2052, %2003
  %2054 = extractvalue %dx.types.CBufRet.f32 %2047, 3
  %2055 = fadd fast float %2053, %2054
  %2056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2051, float %2055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = extractvalue %dx.types.ResRet.f32 %2056, 1
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 1
  %2061 = extractvalue %dx.types.CBufRet.f32 %2059, 0
  %2062 = fsub fast float %2060, %2061
  %2063 = fmul fast float %2062, %2057
  %2064 = fadd fast float %2063, %2061
  %2065 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2066 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2067 = fsub fast float %2065, %2066
  %2068 = fmul fast float %2067, %2058
  %2069 = fadd fast float %2068, %2066
  %2070 = fsub fast float %1989, %2064
  %2071 = fsub fast float %2069, %2064
  %2072 = fdiv fast float %2070, %2071
  %2073 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2074 = extractvalue %dx.types.CBufRet.f32 %1983, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2076 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2077 = fmul fast float %2075, %2002
  %2078 = fmul fast float %2076, %2003
  %2079 = fmul fast float %2077, 1.250000e-01
  %2080 = fmul fast float %2078, 1.250000e-01
  %2081 = call float @dx.op.unary.f32(i32 27, float %2079)  ; Round_ni(value)
  %2082 = call float @dx.op.unary.f32(i32 27, float %2080)  ; Round_ni(value)
  %2083 = fmul fast float %2081, 8.000000e+00
  %2084 = fmul fast float %2082, 8.000000e+00
  %2085 = fsub fast float %2077, %2083
  %2086 = fsub fast float %2078, %2084
  %2087 = fadd fast float %2085, 5.000000e-01
  %2088 = fadd fast float %2086, 5.000000e-01
  %2089 = and i32 %2044, 255
  %2090 = lshr i32 %2043, 24
  %2091 = mul nuw nsw i32 %2089, 9
  %2092 = uitofp i32 %2091 to float
  %2093 = mul nuw nsw i32 %2090, 9
  %2094 = uitofp i32 %2093 to float
  %2095 = fadd fast float %2087, %2092
  %2096 = fadd fast float %2088, %2094
  %2097 = fdiv fast float %2095, %1984
  %2098 = fdiv fast float %2096, %2074
  %2099 = fmul fast float %2073, 4.375000e-01
  %2100 = fadd fast float %2099, 3.125000e-02
  %2101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2097, float %2098, float %2100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2102 = extractvalue %dx.types.ResRet.f32 %2101, 0
  %2103 = extractvalue %dx.types.ResRet.f32 %2101, 1
  %2104 = extractvalue %dx.types.ResRet.f32 %2101, 2
  %2105 = fadd fast float %2099, 5.312500e-01
  %2106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2097, float %2098, float %2105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.ResRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.ResRet.f32 %2106, 2
  %2110 = fmul fast float %2107, 2.000000e+00
  %2111 = fmul fast float %2108, 2.000000e+00
  %2112 = fmul fast float %2109, 2.000000e+00
  %2113 = fadd fast float %2110, -1.000000e+00
  %2114 = fadd fast float %2111, -1.000000e+00
  %2115 = fadd fast float %2112, -1.000000e+00
  %2116 = fmul fast float %2113, %2113
  %2117 = fmul fast float %2114, %2114
  %2118 = fadd fast float %2116, %2117
  %2119 = fmul fast float %2115, %2115
  %2120 = fadd fast float %2118, %2119
  %2121 = call float @dx.op.unary.f32(i32 24, float %2120)  ; Sqrt(value)
  %2122 = fcmp fast ogt float %2121, 0.000000e+00
  br i1 %2122, label %2123, label %2127

; <label>:2123                                    ; preds = %2046
  %2124 = fdiv fast float %2113, %2121
  %2125 = fdiv fast float %2114, %2121
  %2126 = fdiv fast float %2115, %2121
  br label %2127

; <label>:2127                                    ; preds = %2123, %2046
  %2128 = phi float [ %2124, %2123 ], [ 0.000000e+00, %2046 ]
  %2129 = phi float [ %2125, %2123 ], [ 0.000000e+00, %2046 ]
  %2130 = phi float [ %2126, %2123 ], [ 0.000000e+00, %2046 ]
  %2131 = call float @dx.op.dot3.f32(i32 55, float %2128, float %2129, float %2130, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %2132 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2131)  ; FMax(a,b)
  %2133 = fmul fast float %2132, 0x400C5BF8A0000000
  %2134 = fmul fast float %2102, %2022
  %2135 = fmul fast float %2134, %2133
  %2136 = fmul fast float %2103, %2022
  %2137 = fmul fast float %2136, %2133
  %2138 = fmul fast float %2104, %2022
  %2139 = fmul fast float %2138, %2133
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2142 = fmul fast float %2135, %2141
  %2143 = fmul fast float %2137, %2141
  %2144 = fmul fast float %2139, %2141
  %2145 = fcmp fast ogt float %1989, %2069
  br i1 %2145, label %2146, label %2155

; <label>:2146                                    ; preds = %2127
  %2147 = fmul fast float %2071, 0x3FC24924A0000000
  %2148 = fsub fast float %1989, %2069
  %2149 = fdiv fast float %2148, %2147
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = fmul fast float %2151, %2142
  %2153 = fmul fast float %2151, %2143
  %2154 = fmul fast float %2151, %2144
  br label %2155

; <label>:2155                                    ; preds = %2146, %2127, %2032, %1987
  %2156 = phi float [ %2154, %2146 ], [ %2144, %2127 ], [ 0.000000e+00, %2032 ], [ 0.000000e+00, %1987 ]
  %2157 = phi float [ %2153, %2146 ], [ %2143, %2127 ], [ 0.000000e+00, %2032 ], [ 0.000000e+00, %1987 ]
  %2158 = phi float [ %2152, %2146 ], [ %2142, %2127 ], [ 0.000000e+00, %2032 ], [ 0.000000e+00, %1987 ]
  %2159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2158)  ; FMax(a,b)
  %2160 = fmul fast float %2159, 0x3FD20DD760000000
  %2161 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1824, float %1825, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = fmul fast float %2161, 0x3FDF454380000000
  %2163 = fmul fast float %2161, %2161
  %2164 = fmul fast float %2163, 0x3FEE471020000000
  %2165 = fadd fast float %2164, 0xBFD42F6020000000
  %2166 = call float @dx.op.dot3.f32(i32 55, float %2159, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2162, float %2165)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2157)  ; FMax(a,b)
  %2168 = fmul fast float %2167, 0x3FD20DD760000000
  %2169 = call float @dx.op.dot3.f32(i32 55, float %2167, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2162, float %2165)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2156)  ; FMax(a,b)
  %2171 = fmul fast float %2170, 0x3FD20DD760000000
  %2172 = call float @dx.op.dot3.f32(i32 55, float %2170, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2162, float %2165)  ; Dot3(ax,ay,az,bx,by,bz)
  %2173 = call float @dx.op.binary.f32(i32 35, float %2160, float 0.000000e+00)  ; FMax(a,b)
  %2174 = call float @dx.op.binary.f32(i32 35, float %2168, float 0.000000e+00)  ; FMax(a,b)
  %2175 = call float @dx.op.binary.f32(i32 35, float %2171, float 0.000000e+00)  ; FMax(a,b)
  %2176 = call float @dx.op.binary.f32(i32 35, float %2166, float 0.000000e+00)  ; FMax(a,b)
  %2177 = call float @dx.op.binary.f32(i32 35, float %2169, float 0.000000e+00)  ; FMax(a,b)
  %2178 = call float @dx.op.binary.f32(i32 35, float %2172, float 0.000000e+00)  ; FMax(a,b)
  %2179 = fmul fast float %2173, %1876
  %2180 = fmul fast float %2174, %1876
  %2181 = fmul fast float %2175, %1876
  %2182 = fadd fast float %2179, %1980
  %2183 = fadd fast float %2180, %1981
  %2184 = fadd fast float %2181, %1982
  %2185 = fmul fast float %2176, %1876
  %2186 = fmul fast float %2177, %1876
  %2187 = fmul fast float %2178, %1876
  %2188 = fadd fast float %2185, %1977
  %2189 = fadd fast float %2186, %1978
  %2190 = fadd fast float %2187, %1979
  br label %2191

; <label>:2191                                    ; preds = %2155, %1976
  %2192 = phi float [ %2188, %2155 ], [ %1977, %1976 ]
  %2193 = phi float [ %2189, %2155 ], [ %1978, %1976 ]
  %2194 = phi float [ %2190, %2155 ], [ %1979, %1976 ]
  %2195 = phi float [ %2182, %2155 ], [ %1980, %1976 ]
  %2196 = phi float [ %2183, %2155 ], [ %1981, %1976 ]
  %2197 = phi float [ %2184, %2155 ], [ %1982, %1976 ]
  %2198 = fcmp fast olt float %1876, 1.000000e+00
  br i1 %2198, label %2199, label %3017, !dx.controlflow.hints !74

; <label>:2199                                    ; preds = %2191
  %2200 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %2201 = fadd fast float %2200, %106
  %2202 = fmul fast float %1811, 3.200000e+01
  %2203 = fmul fast float %1812, 3.200000e+01
  %2204 = fadd fast float %1835, %2202
  %2205 = fadd fast float %1836, %2203
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2209 = fsub fast float %2204, %2207
  %2210 = fsub fast float %2205, %2208
  %2211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2211, 0
  %2213 = extractvalue %dx.types.CBufRet.f32 %2211, 1
  %2214 = fmul fast float %2209, %2212
  %2215 = fmul fast float %2210, %2213
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 0
  %2218 = fmul fast float %2214, %2217
  %2219 = extractvalue %dx.types.CBufRet.f32 %2216, 1
  %2220 = fadd fast float %2218, %2219
  %2221 = extractvalue %dx.types.CBufRet.f32 %2216, 2
  %2222 = fmul fast float %2221, %2215
  %2223 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2224 = fadd fast float %2222, %2223
  %2225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2220, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.ResRet.f32 %2225, 1
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 1
  %2230 = extractvalue %dx.types.CBufRet.f32 %2228, 0
  %2231 = fsub fast float %2229, %2230
  %2232 = fmul fast float %2231, %2226
  %2233 = fadd fast float %2232, %2230
  %2234 = extractvalue %dx.types.CBufRet.f32 %2228, 3
  %2235 = extractvalue %dx.types.CBufRet.f32 %2228, 2
  %2236 = fsub fast float %2234, %2235
  %2237 = fmul fast float %2236, %2227
  %2238 = fadd fast float %2237, %2235
  %2239 = fsub fast float %2201, %2233
  %2240 = fsub fast float %2238, %2233
  %2241 = fdiv fast float %2239, %2240
  %2242 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 0
  %2245 = fmul fast float %2244, %2242
  %2246 = extractvalue %dx.types.CBufRet.f32 %2243, 1
  %2247 = fadd fast float %2245, %2246
  %2248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2220, float %2224, float %2247, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.ResRet.f32 %2248, 2
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2255 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2256 = fmul fast float %2253, %2249
  %2257 = fmul fast float %2254, %2250
  %2258 = fmul fast float %2255, %2251
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2263 = fadd fast float %2256, %2260
  %2264 = fadd fast float %2257, %2261
  %2265 = fadd fast float %2258, %2262
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 0
  %2268 = fmul fast float %2267, %2214
  %2269 = extractvalue %dx.types.CBufRet.f32 %2266, 1
  %2270 = fadd fast float %2268, %2269
  %2271 = extractvalue %dx.types.CBufRet.f32 %2266, 2
  %2272 = fmul fast float %2271, %2215
  %2273 = extractvalue %dx.types.CBufRet.f32 %2266, 3
  %2274 = fadd fast float %2272, %2273
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2279 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = extractvalue %dx.types.CBufRet.f32 %2280, 0
  %2282 = extractvalue %dx.types.CBufRet.f32 %2280, 1
  %2283 = extractvalue %dx.types.CBufRet.f32 %2280, 2
  %2284 = extractvalue %dx.types.CBufRet.f32 %2280, 3
  %2285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2270, float %2274, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = extractvalue %dx.types.ResRet.f32 %2285, 1
  %2288 = extractvalue %dx.types.ResRet.f32 %2285, 2
  %2289 = extractvalue %dx.types.ResRet.f32 %2285, 3
  %2290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2270, float %2274, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.ResRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.ResRet.f32 %2290, 3
  %2295 = fmul fast float %2286, %2263
  %2296 = fmul fast float %2291, %2263
  %2297 = fmul fast float %2293, %2263
  %2298 = fmul fast float %2289, %2263
  %2299 = fadd fast float %2295, %2276
  %2300 = fadd fast float %2296, %2277
  %2301 = fadd fast float %2297, %2278
  %2302 = fadd fast float %2298, %2279
  %2303 = fmul fast float %2287, %2263
  %2304 = fmul fast float %2292, %2263
  %2305 = fadd fast float %2303, %2281
  %2306 = fadd fast float %2304, %2282
  %2307 = fmul fast float %2288, %2263
  %2308 = fmul fast float %2294, %2263
  %2309 = fadd fast float %2307, %2283
  %2310 = fadd fast float %2308, %2284
  %2311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2270, float %2274, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = extractvalue %dx.types.ResRet.f32 %2311, 3
  %2316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2270, float %2274, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.ResRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.ResRet.f32 %2316, 2
  %2320 = extractvalue %dx.types.ResRet.f32 %2316, 3
  %2321 = fmul fast float %2312, %2264
  %2322 = fmul fast float %2317, %2264
  %2323 = fmul fast float %2319, %2264
  %2324 = fmul fast float %2315, %2264
  %2325 = fadd fast float %2299, %2321
  %2326 = fadd fast float %2300, %2322
  %2327 = fadd fast float %2301, %2323
  %2328 = fadd fast float %2302, %2324
  %2329 = fmul fast float %2313, %2264
  %2330 = fmul fast float %2318, %2264
  %2331 = fadd fast float %2305, %2329
  %2332 = fadd fast float %2306, %2330
  %2333 = fmul fast float %2314, %2264
  %2334 = fmul fast float %2320, %2264
  %2335 = fadd fast float %2309, %2333
  %2336 = fadd fast float %2310, %2334
  %2337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2270, float %2274, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2338 = extractvalue %dx.types.ResRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.ResRet.f32 %2337, 1
  %2340 = extractvalue %dx.types.ResRet.f32 %2337, 2
  %2341 = extractvalue %dx.types.ResRet.f32 %2337, 3
  %2342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2270, float %2274, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.ResRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.ResRet.f32 %2342, 2
  %2346 = extractvalue %dx.types.ResRet.f32 %2342, 3
  %2347 = fmul fast float %2338, %2265
  %2348 = fmul fast float %2343, %2265
  %2349 = fmul fast float %2345, %2265
  %2350 = fmul fast float %2341, %2265
  %2351 = fadd fast float %2325, %2347
  %2352 = fadd fast float %2326, %2348
  %2353 = fadd fast float %2327, %2349
  %2354 = fadd fast float %2328, %2350
  %2355 = fmul fast float %2339, %2265
  %2356 = fmul fast float %2344, %2265
  %2357 = fadd fast float %2331, %2355
  %2358 = fadd fast float %2332, %2356
  %2359 = fmul fast float %2340, %2265
  %2360 = fmul fast float %2346, %2265
  %2361 = fadd fast float %2335, %2359
  %2362 = fadd fast float %2336, %2360
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = fsub fast float %1835, %2364
  %2366 = fsub fast float %2207, %1835
  %2367 = call float @dx.op.binary.f32(i32 35, float %2366, float %2365)  ; FMax(a,b)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2369 = fsub fast float %1836, %2368
  %2370 = fsub fast float %2208, %1836
  %2371 = call float @dx.op.binary.f32(i32 35, float %2370, float %2369)  ; FMax(a,b)
  %2372 = call float @dx.op.binary.f32(i32 35, float %2367, float %2371)  ; FMax(a,b)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2211, 3
  %2374 = fmul fast float %2373, %2372
  %2375 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2380 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2381 = fsub fast float %2377, %2351
  %2382 = fsub fast float %2378, %2352
  %2383 = fsub fast float %2379, %2353
  %2384 = fsub fast float %2380, %2354
  %2385 = fmul fast float %2381, %2375
  %2386 = fmul fast float %2382, %2375
  %2387 = fmul fast float %2383, %2375
  %2388 = fmul fast float %2384, %2375
  %2389 = fadd fast float %2385, %2351
  %2390 = fadd fast float %2386, %2352
  %2391 = fadd fast float %2387, %2353
  %2392 = fadd fast float %2388, %2354
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 0
  %2395 = extractvalue %dx.types.CBufRet.f32 %2393, 1
  %2396 = fsub fast float %2394, %2357
  %2397 = fsub fast float %2395, %2358
  %2398 = fmul fast float %2396, %2375
  %2399 = fmul fast float %2397, %2375
  %2400 = fadd fast float %2398, %2357
  %2401 = fadd fast float %2399, %2358
  %2402 = extractvalue %dx.types.CBufRet.f32 %2393, 2
  %2403 = extractvalue %dx.types.CBufRet.f32 %2393, 3
  %2404 = fsub fast float %2402, %2361
  %2405 = fsub fast float %2403, %2362
  %2406 = fmul fast float %2404, %2375
  %2407 = fmul fast float %2405, %2375
  %2408 = fadd fast float %2406, %2361
  %2409 = fadd fast float %2407, %2362
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 0
  %2412 = fmul fast float %2411, %2389
  %2413 = fmul fast float %2411, %2390
  %2414 = fmul fast float %2411, %2391
  %2415 = fmul fast float %2411, %2392
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 0
  %2418 = fmul fast float %2417, %2400
  %2419 = fmul fast float %2417, %2401
  %2420 = fadd fast float %2418, %2412
  %2421 = fadd fast float %2419, %2414
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = fmul fast float %2423, %2408
  %2425 = fmul fast float %2423, %2409
  %2426 = fadd fast float %2420, %2424
  %2427 = fadd fast float %2421, %2425
  %2428 = extractvalue %dx.types.CBufRet.f32 %2410, 1
  %2429 = fmul fast float %2428, %2389
  %2430 = fmul fast float %2428, %2390
  %2431 = fmul fast float %2428, %2391
  %2432 = fmul fast float %2428, %2392
  %2433 = extractvalue %dx.types.CBufRet.f32 %2416, 1
  %2434 = fmul fast float %2433, %2400
  %2435 = fmul fast float %2433, %2401
  %2436 = fadd fast float %2434, %2429
  %2437 = fadd fast float %2435, %2431
  %2438 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2439 = fmul fast float %2438, %2408
  %2440 = fmul fast float %2438, %2409
  %2441 = fadd fast float %2436, %2439
  %2442 = fadd fast float %2437, %2440
  %2443 = extractvalue %dx.types.CBufRet.f32 %2410, 2
  %2444 = fmul fast float %2443, %2389
  %2445 = fmul fast float %2443, %2390
  %2446 = fmul fast float %2443, %2391
  %2447 = fmul fast float %2443, %2392
  %2448 = extractvalue %dx.types.CBufRet.f32 %2416, 2
  %2449 = fmul fast float %2448, %2400
  %2450 = fmul fast float %2448, %2401
  %2451 = fadd fast float %2449, %2444
  %2452 = fadd fast float %2450, %2446
  %2453 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2454 = fmul fast float %2453, %2408
  %2455 = fmul fast float %2453, %2409
  %2456 = fadd fast float %2451, %2454
  %2457 = fadd fast float %2452, %2455
  %2458 = fmul fast float %2445, %2445
  %2459 = fmul fast float %2457, %2457
  %2460 = fmul fast float %2447, %2447
  %2461 = fadd fast float %2460, %2458
  %2462 = fadd fast float %2461, %2459
  %2463 = call float @dx.op.unary.f32(i32 24, float %2462)  ; Sqrt(value)
  %2464 = fcmp fast ugt float %2463, 0.000000e+00
  br i1 %2464, label %2465, label %2480

; <label>:2465                                    ; preds = %2199
  %2466 = fsub fast float -0.000000e+00, %2447
  %2467 = fdiv fast float %2466, %2463
  %2468 = fsub fast float -0.000000e+00, %2445
  %2469 = fdiv fast float %2468, %2463
  %2470 = fdiv fast float %2457, %2463
  %2471 = fmul fast float %2456, 0x3FE279A760000000
  %2472 = fmul fast float %2469, %2445
  %2473 = fmul fast float %2470, %2457
  %2474 = fmul fast float %2467, %2447
  %2475 = fadd fast float %2472, %2474
  %2476 = fsub fast float %2475, %2473
  %2477 = call float @dx.op.unary.f32(i32 6, float %2476)  ; FAbs(value)
  %2478 = fadd fast float %2477, 0x3DDB7CDFE0000000
  %2479 = fdiv fast float %2471, %2478
  br label %2480

; <label>:2480                                    ; preds = %2465, %2199
  %2481 = phi float [ %2479, %2465 ], [ 1.000000e+00, %2199 ]
  %2482 = fmul fast float %2430, %2430
  %2483 = fmul fast float %2442, %2442
  %2484 = fmul fast float %2432, %2432
  %2485 = fadd fast float %2484, %2482
  %2486 = fadd fast float %2485, %2483
  %2487 = call float @dx.op.unary.f32(i32 24, float %2486)  ; Sqrt(value)
  %2488 = fcmp fast ugt float %2487, 0.000000e+00
  br i1 %2488, label %2489, label %2504

; <label>:2489                                    ; preds = %2480
  %2490 = fsub fast float -0.000000e+00, %2432
  %2491 = fdiv fast float %2490, %2487
  %2492 = fsub fast float -0.000000e+00, %2430
  %2493 = fdiv fast float %2492, %2487
  %2494 = fdiv fast float %2442, %2487
  %2495 = fmul fast float %2441, 0x3FE279A760000000
  %2496 = fmul fast float %2493, %2430
  %2497 = fmul fast float %2494, %2442
  %2498 = fmul fast float %2491, %2432
  %2499 = fadd fast float %2496, %2498
  %2500 = fsub fast float %2499, %2497
  %2501 = call float @dx.op.unary.f32(i32 6, float %2500)  ; FAbs(value)
  %2502 = fadd fast float %2501, 0x3DDB7CDFE0000000
  %2503 = fdiv fast float %2495, %2502
  br label %2504

; <label>:2504                                    ; preds = %2489, %2480
  %2505 = phi float [ %2503, %2489 ], [ 1.000000e+00, %2480 ]
  %2506 = call float @dx.op.binary.f32(i32 36, float %2505, float %2481)  ; FMin(a,b)
  %2507 = fmul fast float %2413, %2413
  %2508 = fmul fast float %2427, %2427
  %2509 = fmul fast float %2415, %2415
  %2510 = fadd fast float %2509, %2507
  %2511 = fadd fast float %2510, %2508
  %2512 = call float @dx.op.unary.f32(i32 24, float %2511)  ; Sqrt(value)
  %2513 = fcmp fast ugt float %2512, 0.000000e+00
  br i1 %2513, label %2514, label %2529

; <label>:2514                                    ; preds = %2504
  %2515 = fsub fast float -0.000000e+00, %2415
  %2516 = fdiv fast float %2515, %2512
  %2517 = fsub fast float -0.000000e+00, %2413
  %2518 = fdiv fast float %2517, %2512
  %2519 = fdiv fast float %2427, %2512
  %2520 = fmul fast float %2426, 0x3FE279A760000000
  %2521 = fmul fast float %2518, %2413
  %2522 = fmul fast float %2519, %2427
  %2523 = fmul fast float %2516, %2415
  %2524 = fadd fast float %2521, %2523
  %2525 = fsub fast float %2524, %2522
  %2526 = call float @dx.op.unary.f32(i32 6, float %2525)  ; FAbs(value)
  %2527 = fadd fast float %2526, 0x3DDB7CDFE0000000
  %2528 = fdiv fast float %2520, %2527
  br label %2529

; <label>:2529                                    ; preds = %2514, %2504
  %2530 = phi float [ %2528, %2514 ], [ 1.000000e+00, %2504 ]
  %2531 = call float @dx.op.binary.f32(i32 36, float %2530, float %2506)  ; FMin(a,b)
  %2532 = call float @dx.op.unary.f32(i32 7, float %2531)  ; Saturate(value)
  %2533 = fcmp fast olt float %2532, 1.000000e+00
  br i1 %2533, label %2534, label %2544

; <label>:2534                                    ; preds = %2529
  %2535 = fmul fast float %2532, %2413
  %2536 = fmul fast float %2532, %2427
  %2537 = fmul fast float %2532, %2415
  %2538 = fmul fast float %2532, %2430
  %2539 = fmul fast float %2532, %2442
  %2540 = fmul fast float %2532, %2432
  %2541 = fmul fast float %2532, %2445
  %2542 = fmul fast float %2532, %2457
  %2543 = fmul fast float %2532, %2447
  br label %2544

; <label>:2544                                    ; preds = %2534, %2529
  %2545 = phi float [ %2541, %2534 ], [ %2445, %2529 ]
  %2546 = phi float [ %2542, %2534 ], [ %2457, %2529 ]
  %2547 = phi float [ %2543, %2534 ], [ %2447, %2529 ]
  %2548 = phi float [ %2538, %2534 ], [ %2430, %2529 ]
  %2549 = phi float [ %2539, %2534 ], [ %2442, %2529 ]
  %2550 = phi float [ %2540, %2534 ], [ %2432, %2529 ]
  %2551 = phi float [ %2535, %2534 ], [ %2413, %2529 ]
  %2552 = phi float [ %2536, %2534 ], [ %2427, %2529 ]
  %2553 = phi float [ %2537, %2534 ], [ %2415, %2529 ]
  %2554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2426)  ; FMax(a,b)
  %2555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2441)  ; FMax(a,b)
  %2556 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2456)  ; FMax(a,b)
  %2557 = fcmp fast oge float %2214, 0.000000e+00
  %2558 = and i1 %2557, %1985
  %2559 = fcmp fast ole float %2214, 1.000000e+00
  %2560 = and i1 %2559, %2558
  %2561 = fcmp fast oge float %2215, 0.000000e+00
  %2562 = and i1 %2561, %2560
  %2563 = fcmp fast ole float %2215, 1.000000e+00
  %2564 = and i1 %2563, %2562
  br i1 %2564, label %2565, label %2710, !dx.controlflow.hints !75

; <label>:2565                                    ; preds = %2544
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 2
  %2568 = extractvalue %dx.types.CBufRet.f32 %2566, 3
  %2569 = fmul fast float %2567, %2214
  %2570 = fmul fast float %2568, %2215
  %2571 = call float @dx.op.unary.f32(i32 27, float %2569)  ; Round_ni(value)
  %2572 = call float @dx.op.unary.f32(i32 27, float %2570)  ; Round_ni(value)
  %2573 = fptosi float %2571 to i32
  %2574 = fptosi float %2572 to i32
  %2575 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2573, i32 %2574, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 65535
  %2578 = lshr i32 %2576, 16
  %2579 = icmp eq i32 %2577, 65535
  br i1 %2579, label %2616, label %2580

; <label>:2580                                    ; preds = %2565
  %2581 = extractvalue %dx.types.CBufRet.f32 %1983, 1
  %2582 = extractvalue %dx.types.CBufRet.f32 %2566, 0
  %2583 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2584 = fmul fast float %2582, %2214
  %2585 = fmul fast float %2583, %2215
  %2586 = fmul fast float %2584, 1.250000e-01
  %2587 = fmul fast float %2585, 1.250000e-01
  %2588 = call float @dx.op.unary.f32(i32 27, float %2586)  ; Round_ni(value)
  %2589 = call float @dx.op.unary.f32(i32 27, float %2587)  ; Round_ni(value)
  %2590 = fmul fast float %2588, 8.000000e+00
  %2591 = fmul fast float %2589, 8.000000e+00
  %2592 = and i32 %2576, 255
  %2593 = lshr i32 %2576, 8
  %2594 = and i32 %2593, 255
  %2595 = mul nuw nsw i32 %2592, 9
  %2596 = uitofp i32 %2595 to float
  %2597 = mul nuw nsw i32 %2594, 9
  %2598 = uitofp i32 %2597 to float
  %2599 = fadd fast float %2596, 5.000000e-01
  %2600 = fadd fast float %2599, %2584
  %2601 = fsub fast float %2600, %2590
  %2602 = fadd fast float %2598, 5.000000e-01
  %2603 = fadd fast float %2602, %2585
  %2604 = fsub fast float %2603, %2591
  %2605 = fdiv fast float %2601, %1984
  %2606 = fdiv fast float %2604, %2581
  %2607 = fmul fast float %2242, 4.375000e-01
  %2608 = fadd fast float %2607, 3.125000e-02
  %2609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2605, float %2606, float %2608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2613 = fadd fast float %2610, %2554
  %2614 = fadd fast float %2611, %2555
  %2615 = fadd fast float %2612, %2556
  br label %2616

; <label>:2616                                    ; preds = %2580, %2565
  %2617 = phi float [ %2615, %2580 ], [ %2556, %2565 ]
  %2618 = phi float [ %2614, %2580 ], [ %2555, %2565 ]
  %2619 = phi float [ %2613, %2580 ], [ %2554, %2565 ]
  %2620 = icmp eq i32 %2578, 65535
  br i1 %2620, label %2710, label %2621

; <label>:2621                                    ; preds = %2616
  %2622 = extractvalue %dx.types.CBufRet.f32 %1983, 1
  %2623 = extractvalue %dx.types.CBufRet.f32 %2566, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2625 = fmul fast float %2623, %2214
  %2626 = fmul fast float %2624, %2215
  %2627 = fmul fast float %2625, 1.250000e-01
  %2628 = fmul fast float %2626, 1.250000e-01
  %2629 = call float @dx.op.unary.f32(i32 27, float %2627)  ; Round_ni(value)
  %2630 = call float @dx.op.unary.f32(i32 27, float %2628)  ; Round_ni(value)
  %2631 = fmul fast float %2629, 8.000000e+00
  %2632 = fmul fast float %2630, 8.000000e+00
  %2633 = fsub fast float %2625, %2631
  %2634 = fsub fast float %2626, %2632
  %2635 = fadd fast float %2633, 5.000000e-01
  %2636 = fadd fast float %2634, 5.000000e-01
  %2637 = and i32 %2578, 255
  %2638 = lshr i32 %2576, 24
  %2639 = mul nuw nsw i32 %2637, 9
  %2640 = uitofp i32 %2639 to float
  %2641 = mul nuw nsw i32 %2638, 9
  %2642 = uitofp i32 %2641 to float
  %2643 = fadd fast float %2635, %2640
  %2644 = fadd fast float %2636, %2642
  %2645 = fdiv fast float %2643, %1984
  %2646 = fdiv fast float %2644, %2622
  %2647 = fmul fast float %2242, 4.375000e-01
  %2648 = fadd fast float %2647, 3.125000e-02
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2645, float %2646, float %2648, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = fadd fast float %2647, 5.312500e-01
  %2654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2645, float %2646, float %2653, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2655 = extractvalue %dx.types.ResRet.f32 %2654, 0
  %2656 = extractvalue %dx.types.ResRet.f32 %2654, 1
  %2657 = extractvalue %dx.types.ResRet.f32 %2654, 2
  %2658 = fmul fast float %2655, 2.000000e+00
  %2659 = fmul fast float %2656, 2.000000e+00
  %2660 = fmul fast float %2657, 2.000000e+00
  %2661 = fadd fast float %2658, -1.000000e+00
  %2662 = fadd fast float %2659, -1.000000e+00
  %2663 = fadd fast float %2660, -1.000000e+00
  %2664 = fmul fast float %2661, %2661
  %2665 = fmul fast float %2662, %2662
  %2666 = fadd fast float %2664, %2665
  %2667 = fmul fast float %2663, %2663
  %2668 = fadd fast float %2666, %2667
  %2669 = call float @dx.op.unary.f32(i32 24, float %2668)  ; Sqrt(value)
  %2670 = fcmp fast ogt float %2669, 0.000000e+00
  br i1 %2670, label %2671, label %2675

; <label>:2671                                    ; preds = %2621
  %2672 = fdiv fast float %2661, %2669
  %2673 = fdiv fast float %2662, %2669
  %2674 = fdiv fast float %2663, %2669
  br label %2675

; <label>:2675                                    ; preds = %2671, %2621
  %2676 = phi float [ %2672, %2671 ], [ 0.000000e+00, %2621 ]
  %2677 = phi float [ %2673, %2671 ], [ 0.000000e+00, %2621 ]
  %2678 = phi float [ %2674, %2671 ], [ 0.000000e+00, %2621 ]
  %2679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2679, 0
  %2681 = extractvalue %dx.types.CBufRet.f32 %2679, 1
  %2682 = fsub fast float %1835, %2680
  %2683 = fsub fast float %1836, %2681
  %2684 = fmul fast float %2682, %2682
  %2685 = fmul fast float %2683, %2683
  %2686 = fadd fast float %2684, %2685
  %2687 = call float @dx.op.unary.f32(i32 24, float %2686)  ; Sqrt(value)
  %2688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.CBufRet.f32 %2688, 1
  %2691 = fsub fast float %2687, %2689
  %2692 = fdiv fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = fmul fast float %2693, 2.000000e+00
  %2695 = fsub fast float 3.000000e+00, %2694
  %2696 = fmul fast float %2693, %2693
  %2697 = fmul fast float %2696, %2695
  %2698 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2677, float %2678, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %2699 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2698)  ; FMax(a,b)
  %2700 = fmul fast float %2699, 0x400C5BF8A0000000
  %2701 = fmul fast float %2697, %2650
  %2702 = fmul fast float %2701, %2700
  %2703 = fadd fast float %2702, %2619
  %2704 = fmul fast float %2697, %2651
  %2705 = fmul fast float %2704, %2700
  %2706 = fadd fast float %2705, %2618
  %2707 = fmul fast float %2697, %2652
  %2708 = fmul fast float %2707, %2700
  %2709 = fadd fast float %2708, %2617
  br label %2710

; <label>:2710                                    ; preds = %2675, %2616, %2544
  %2711 = phi float [ %2709, %2675 ], [ %2617, %2616 ], [ %2556, %2544 ]
  %2712 = phi float [ %2706, %2675 ], [ %2618, %2616 ], [ %2555, %2544 ]
  %2713 = phi float [ %2703, %2675 ], [ %2619, %2616 ], [ %2554, %2544 ]
  %2714 = fcmp fast ogt float %2201, %2238
  %2715 = and i1 %2557, %2714
  %2716 = and i1 %2559, %2715
  %2717 = and i1 %2561, %2716
  %2718 = and i1 %2563, %2717
  br i1 %2718, label %2719, label %2776, !dx.controlflow.hints !76

; <label>:2719                                    ; preds = %2710
  %2720 = fmul fast float %2240, 0x3FC24924A0000000
  %2721 = fsub fast float %2201, %2238
  %2722 = fdiv fast float %2721, %2720
  %2723 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2724, 0
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2730 = fsub fast float %2725, %2713
  %2731 = fsub fast float %2727, %2551
  %2732 = fsub fast float %2728, %2552
  %2733 = fsub fast float %2729, %2553
  %2734 = fmul fast float %2730, %2723
  %2735 = fmul fast float %2731, %2723
  %2736 = fmul fast float %2732, %2723
  %2737 = fmul fast float %2733, %2723
  %2738 = fadd fast float %2734, %2713
  %2739 = fadd fast float %2735, %2551
  %2740 = fadd fast float %2736, %2552
  %2741 = fadd fast float %2737, %2553
  %2742 = extractvalue %dx.types.CBufRet.f32 %2724, 1
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.CBufRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.CBufRet.f32 %2743, 2
  %2747 = fsub fast float %2742, %2712
  %2748 = fsub fast float %2744, %2548
  %2749 = fsub fast float %2745, %2549
  %2750 = fsub fast float %2746, %2550
  %2751 = fmul fast float %2747, %2723
  %2752 = fmul fast float %2748, %2723
  %2753 = fmul fast float %2749, %2723
  %2754 = fmul fast float %2750, %2723
  %2755 = fadd fast float %2751, %2712
  %2756 = fadd fast float %2752, %2548
  %2757 = fadd fast float %2753, %2549
  %2758 = fadd fast float %2754, %2550
  %2759 = extractvalue %dx.types.CBufRet.f32 %2724, 2
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.CBufRet.f32 %2760, 2
  %2764 = fsub fast float %2759, %2711
  %2765 = fsub fast float %2761, %2545
  %2766 = fsub fast float %2762, %2546
  %2767 = fsub fast float %2763, %2547
  %2768 = fmul fast float %2764, %2723
  %2769 = fmul fast float %2765, %2723
  %2770 = fmul fast float %2766, %2723
  %2771 = fmul fast float %2767, %2723
  %2772 = fadd fast float %2768, %2711
  %2773 = fadd fast float %2769, %2545
  %2774 = fadd fast float %2770, %2546
  %2775 = fadd fast float %2771, %2547
  br label %2776

; <label>:2776                                    ; preds = %2719, %2710
  %2777 = phi float [ %2772, %2719 ], [ %2711, %2710 ]
  %2778 = phi float [ %2773, %2719 ], [ %2545, %2710 ]
  %2779 = phi float [ %2774, %2719 ], [ %2546, %2710 ]
  %2780 = phi float [ %2775, %2719 ], [ %2547, %2710 ]
  %2781 = phi float [ %2755, %2719 ], [ %2712, %2710 ]
  %2782 = phi float [ %2756, %2719 ], [ %2548, %2710 ]
  %2783 = phi float [ %2757, %2719 ], [ %2549, %2710 ]
  %2784 = phi float [ %2758, %2719 ], [ %2550, %2710 ]
  %2785 = phi float [ %2738, %2719 ], [ %2713, %2710 ]
  %2786 = phi float [ %2739, %2719 ], [ %2551, %2710 ]
  %2787 = phi float [ %2740, %2719 ], [ %2552, %2710 ]
  %2788 = phi float [ %2741, %2719 ], [ %2553, %2710 ]
  %2789 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2790 = fmul fast float %2789, %2785
  %2791 = fmul fast float %2789, %2781
  %2792 = fmul fast float %2789, %2777
  %2793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2794 = extractvalue %dx.types.CBufRet.f32 %2793, 3
  %2795 = fmul fast float %2790, %2794
  %2796 = fmul fast float %2791, %2794
  %2797 = fmul fast float %2792, %2794
  %2798 = fmul fast float %2786, 1.500000e+00
  %2799 = fmul fast float %2798, %2789
  %2800 = fmul fast float %2799, %2794
  %2801 = fmul fast float %2787, 1.500000e+00
  %2802 = fmul fast float %2801, %2789
  %2803 = fmul fast float %2802, %2794
  %2804 = fmul fast float %2788, 1.500000e+00
  %2805 = fmul fast float %2804, %2789
  %2806 = fmul fast float %2805, %2794
  %2807 = fmul fast float %2782, 1.500000e+00
  %2808 = fmul fast float %2807, %2789
  %2809 = fmul fast float %2808, %2794
  %2810 = fmul fast float %2783, 1.500000e+00
  %2811 = fmul fast float %2810, %2789
  %2812 = fmul fast float %2811, %2794
  %2813 = fmul fast float %2784, 1.500000e+00
  %2814 = fmul fast float %2813, %2789
  %2815 = fmul fast float %2814, %2794
  %2816 = fmul fast float %2778, 1.500000e+00
  %2817 = fmul fast float %2816, %2789
  %2818 = fmul fast float %2817, %2794
  %2819 = fmul fast float %2779, 1.500000e+00
  %2820 = fmul fast float %2819, %2789
  %2821 = fmul fast float %2820, %2794
  %2822 = fmul fast float %2780, 1.500000e+00
  %2823 = fmul fast float %2822, %2789
  %2824 = fmul fast float %2823, %2794
  %2825 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2795)  ; FMax(a,b)
  %2826 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2803, float %2806, float %2800, float %2803, float %2806)  ; Dot3(ax,ay,az,bx,by,bz)
  %2827 = fcmp fast oeq float %2826, 0.000000e+00
  %2828 = fcmp fast oeq float %2825, 0.000000e+00
  %2829 = or i1 %2828, %2827
  br i1 %2829, label %2859, label %2830

; <label>:2830                                    ; preds = %2776
  %2831 = fsub fast float -0.000000e+00, %2806
  %2832 = fsub fast float -0.000000e+00, %2800
  %2833 = call float @dx.op.unary.f32(i32 24, float %2826)  ; Sqrt(value)
  %2834 = fdiv fast float %2833, %2825
  %2835 = fcmp fast ogt float %2834, 0x3FFB6F8900000000
  %2836 = select i1 %2835, float 0x3FFB6F8900000000, float %2834
  %2837 = fmul fast float %2836, 0x3FE8A23460000000
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = call float @dx.op.binary.f32(i32 35, float %2836, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2840 = fmul fast float %2838, %2825
  %2841 = fmul fast float %2839, 0x3FF279A740000000
  %2842 = fadd fast float %2841, -1.000000e+00
  %2843 = call float @dx.op.dot3.f32(i32 55, float %2831, float %2832, float %2803, float %2831, float %2832, float %2803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2844 = call float @dx.op.unary.f32(i32 25, float %2843)  ; Rsqrt(value)
  %2845 = fmul fast float %2844, %2831
  %2846 = fmul fast float %2844, %2832
  %2847 = fmul fast float %2844, %2803
  %2848 = fmul fast float %2842, %2842
  %2849 = fsub fast float 1.000000e+00, %2848
  %2850 = fmul fast float %2839, 0x40005F8BE0000000
  %2851 = fsub fast float 0x400C5BF8A0000000, %2850
  %2852 = fdiv fast float %2840, %2851
  %2853 = fmul fast float %2852, 0x3FEE31C3C0000000
  %2854 = fmul fast float %2853, %2849
  %2855 = fmul fast float %2839, 0x3FDACB7480000000
  %2856 = fadd fast float %2855, 0xBFD7347680000000
  %2857 = fmul fast float %2856, %2852
  %2858 = fmul fast float %2857, %2849
  br label %2859

; <label>:2859                                    ; preds = %2830, %2776
  %2860 = phi float [ %2845, %2830 ], [ 0.000000e+00, %2776 ]
  %2861 = phi float [ %2846, %2830 ], [ 0.000000e+00, %2776 ]
  %2862 = phi float [ %2847, %2830 ], [ 0.000000e+00, %2776 ]
  %2863 = phi float [ %2854, %2830 ], [ 0.000000e+00, %2776 ]
  %2864 = phi float [ %2858, %2830 ], [ 0.000000e+00, %2776 ]
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2861, float %2862, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = fmul fast float %2865, %2865
  %2867 = fmul fast float %2866, 0x3FEE471020000000
  %2868 = fadd fast float %2867, 0xBFD42F6020000000
  %2869 = fmul fast float %2825, 0x3FD20DD760000000
  %2870 = fmul fast float %2868, %2864
  %2871 = fmul fast float %2863, 0x3FDF454380000000
  %2872 = fmul fast float %2871, %2865
  %2873 = fadd fast float %2872, %2869
  %2874 = fadd fast float %2873, %2870
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2861, float %2862, float %1824, float %1825, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = fmul fast float %2875, 0x3FDF454380000000
  %2877 = fmul fast float %2875, %2875
  %2878 = fmul fast float %2877, 0x3FEE471020000000
  %2879 = fadd fast float %2878, 0xBFD42F6020000000
  %2880 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2863, float %2864, float 0x3FD20DD760000000, float %2876, float %2879)  ; Dot3(ax,ay,az,bx,by,bz)
  %2881 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2796)  ; FMax(a,b)
  %2882 = call float @dx.op.dot3.f32(i32 55, float %2809, float %2812, float %2815, float %2809, float %2812, float %2815)  ; Dot3(ax,ay,az,bx,by,bz)
  %2883 = fcmp fast oeq float %2882, 0.000000e+00
  %2884 = fcmp fast oeq float %2881, 0.000000e+00
  %2885 = or i1 %2884, %2883
  br i1 %2885, label %2915, label %2886

; <label>:2886                                    ; preds = %2859
  %2887 = fsub fast float -0.000000e+00, %2815
  %2888 = fsub fast float -0.000000e+00, %2809
  %2889 = call float @dx.op.unary.f32(i32 24, float %2882)  ; Sqrt(value)
  %2890 = fdiv fast float %2889, %2881
  %2891 = fcmp fast ogt float %2890, 0x3FFB6F8900000000
  %2892 = select i1 %2891, float 0x3FFB6F8900000000, float %2890
  %2893 = fmul fast float %2892, 0x3FE8A23460000000
  %2894 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2895 = call float @dx.op.binary.f32(i32 35, float %2892, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2896 = fmul fast float %2894, %2881
  %2897 = fmul fast float %2895, 0x3FF279A740000000
  %2898 = fadd fast float %2897, -1.000000e+00
  %2899 = call float @dx.op.dot3.f32(i32 55, float %2887, float %2888, float %2812, float %2887, float %2888, float %2812)  ; Dot3(ax,ay,az,bx,by,bz)
  %2900 = call float @dx.op.unary.f32(i32 25, float %2899)  ; Rsqrt(value)
  %2901 = fmul fast float %2900, %2887
  %2902 = fmul fast float %2900, %2888
  %2903 = fmul fast float %2900, %2812
  %2904 = fmul fast float %2898, %2898
  %2905 = fsub fast float 1.000000e+00, %2904
  %2906 = fmul fast float %2895, 0x40005F8BE0000000
  %2907 = fsub fast float 0x400C5BF8A0000000, %2906
  %2908 = fdiv fast float %2896, %2907
  %2909 = fmul fast float %2908, 0x3FEE31C3C0000000
  %2910 = fmul fast float %2909, %2905
  %2911 = fmul fast float %2895, 0x3FDACB7480000000
  %2912 = fadd fast float %2911, 0xBFD7347680000000
  %2913 = fmul fast float %2912, %2908
  %2914 = fmul fast float %2913, %2905
  br label %2915

; <label>:2915                                    ; preds = %2886, %2859
  %2916 = phi float [ %2901, %2886 ], [ 0.000000e+00, %2859 ]
  %2917 = phi float [ %2902, %2886 ], [ 0.000000e+00, %2859 ]
  %2918 = phi float [ %2903, %2886 ], [ 0.000000e+00, %2859 ]
  %2919 = phi float [ %2910, %2886 ], [ 0.000000e+00, %2859 ]
  %2920 = phi float [ %2914, %2886 ], [ 0.000000e+00, %2859 ]
  %2921 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2918, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %2922 = fmul fast float %2921, %2921
  %2923 = fmul fast float %2922, 0x3FEE471020000000
  %2924 = fadd fast float %2923, 0xBFD42F6020000000
  %2925 = fmul fast float %2881, 0x3FD20DD760000000
  %2926 = fmul fast float %2924, %2920
  %2927 = fmul fast float %2919, 0x3FDF454380000000
  %2928 = fmul fast float %2927, %2921
  %2929 = fadd fast float %2928, %2925
  %2930 = fadd fast float %2929, %2926
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2918, float %1824, float %1825, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = fmul fast float %2931, 0x3FDF454380000000
  %2933 = fmul fast float %2931, %2931
  %2934 = fmul fast float %2933, 0x3FEE471020000000
  %2935 = fadd fast float %2934, 0xBFD42F6020000000
  %2936 = call float @dx.op.dot3.f32(i32 55, float %2881, float %2919, float %2920, float 0x3FD20DD760000000, float %2932, float %2935)  ; Dot3(ax,ay,az,bx,by,bz)
  %2937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2797)  ; FMax(a,b)
  %2938 = call float @dx.op.dot3.f32(i32 55, float %2818, float %2821, float %2824, float %2818, float %2821, float %2824)  ; Dot3(ax,ay,az,bx,by,bz)
  %2939 = fcmp fast oeq float %2938, 0.000000e+00
  %2940 = fcmp fast oeq float %2937, 0.000000e+00
  %2941 = or i1 %2940, %2939
  br i1 %2941, label %2971, label %2942

; <label>:2942                                    ; preds = %2915
  %2943 = fsub fast float -0.000000e+00, %2824
  %2944 = fsub fast float -0.000000e+00, %2818
  %2945 = call float @dx.op.unary.f32(i32 24, float %2938)  ; Sqrt(value)
  %2946 = fdiv fast float %2945, %2937
  %2947 = fcmp fast ogt float %2946, 0x3FFB6F8900000000
  %2948 = select i1 %2947, float 0x3FFB6F8900000000, float %2946
  %2949 = fmul fast float %2948, 0x3FE8A23460000000
  %2950 = call float @dx.op.unary.f32(i32 7, float %2949)  ; Saturate(value)
  %2951 = call float @dx.op.binary.f32(i32 35, float %2948, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2952 = fmul fast float %2950, %2937
  %2953 = fmul fast float %2951, 0x3FF279A740000000
  %2954 = fadd fast float %2953, -1.000000e+00
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2943, float %2944, float %2821, float %2943, float %2944, float %2821)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = call float @dx.op.unary.f32(i32 25, float %2955)  ; Rsqrt(value)
  %2957 = fmul fast float %2956, %2943
  %2958 = fmul fast float %2956, %2944
  %2959 = fmul fast float %2956, %2821
  %2960 = fmul fast float %2954, %2954
  %2961 = fsub fast float 1.000000e+00, %2960
  %2962 = fmul fast float %2951, 0x40005F8BE0000000
  %2963 = fsub fast float 0x400C5BF8A0000000, %2962
  %2964 = fdiv fast float %2952, %2963
  %2965 = fmul fast float %2964, 0x3FEE31C3C0000000
  %2966 = fmul fast float %2965, %2961
  %2967 = fmul fast float %2951, 0x3FDACB7480000000
  %2968 = fadd fast float %2967, 0xBFD7347680000000
  %2969 = fmul fast float %2968, %2964
  %2970 = fmul fast float %2969, %2961
  br label %2971

; <label>:2971                                    ; preds = %2942, %2915
  %2972 = phi float [ %2957, %2942 ], [ 0.000000e+00, %2915 ]
  %2973 = phi float [ %2958, %2942 ], [ 0.000000e+00, %2915 ]
  %2974 = phi float [ %2959, %2942 ], [ 0.000000e+00, %2915 ]
  %2975 = phi float [ %2966, %2942 ], [ 0.000000e+00, %2915 ]
  %2976 = phi float [ %2970, %2942 ], [ 0.000000e+00, %2915 ]
  %2977 = call float @dx.op.dot3.f32(i32 55, float %2972, float %2973, float %2974, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %2978 = fmul fast float %2977, %2977
  %2979 = fmul fast float %2978, 0x3FEE471020000000
  %2980 = fadd fast float %2979, 0xBFD42F6020000000
  %2981 = fmul fast float %2937, 0x3FD20DD760000000
  %2982 = fmul fast float %2980, %2976
  %2983 = fmul fast float %2975, 0x3FDF454380000000
  %2984 = fmul fast float %2983, %2977
  %2985 = fadd fast float %2984, %2981
  %2986 = fadd fast float %2985, %2982
  %2987 = call float @dx.op.dot3.f32(i32 55, float %2972, float %2973, float %2974, float %1824, float %1825, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = fmul fast float %2987, 0x3FDF454380000000
  %2989 = fmul fast float %2987, %2987
  %2990 = fmul fast float %2989, 0x3FEE471020000000
  %2991 = fadd fast float %2990, 0xBFD42F6020000000
  %2992 = call float @dx.op.dot3.f32(i32 55, float %2937, float %2975, float %2976, float 0x3FD20DD760000000, float %2988, float %2991)  ; Dot3(ax,ay,az,bx,by,bz)
  %2993 = call float @dx.op.binary.f32(i32 35, float %2874, float 0.000000e+00)  ; FMax(a,b)
  %2994 = call float @dx.op.binary.f32(i32 35, float %2930, float 0.000000e+00)  ; FMax(a,b)
  %2995 = call float @dx.op.binary.f32(i32 35, float %2986, float 0.000000e+00)  ; FMax(a,b)
  %2996 = call float @dx.op.binary.f32(i32 35, float %2880, float 0.000000e+00)  ; FMax(a,b)
  %2997 = call float @dx.op.binary.f32(i32 35, float %2936, float 0.000000e+00)  ; FMax(a,b)
  %2998 = call float @dx.op.binary.f32(i32 35, float %2992, float 0.000000e+00)  ; FMax(a,b)
  %2999 = fsub fast float %2195, %2993
  %3000 = fsub fast float %2196, %2994
  %3001 = fsub fast float %2197, %2995
  %3002 = fmul fast float %2999, %1876
  %3003 = fmul fast float %3000, %1876
  %3004 = fmul fast float %3001, %1876
  %3005 = fadd fast float %3002, %2993
  %3006 = fadd fast float %3003, %2994
  %3007 = fadd fast float %3004, %2995
  %3008 = fsub fast float %2192, %2996
  %3009 = fsub fast float %2193, %2997
  %3010 = fsub fast float %2194, %2998
  %3011 = fmul fast float %3008, %1876
  %3012 = fmul fast float %3009, %1876
  %3013 = fmul fast float %3010, %1876
  %3014 = fadd fast float %3011, %2996
  %3015 = fadd fast float %3012, %2997
  %3016 = fadd fast float %3013, %2998
  br label %3017

; <label>:3017                                    ; preds = %2971, %2191
  %3018 = phi float [ %3014, %2971 ], [ %2192, %2191 ]
  %3019 = phi float [ %3015, %2971 ], [ %2193, %2191 ]
  %3020 = phi float [ %3016, %2971 ], [ %2194, %2191 ]
  %3021 = phi float [ %3005, %2971 ], [ %2195, %2191 ]
  %3022 = phi float [ %3006, %2971 ], [ %2196, %2191 ]
  %3023 = phi float [ %3007, %2971 ], [ %2197, %2191 ]
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3026 = call float @dx.op.binary.f32(i32 36, float %1805, float %3025)  ; FMin(a,b)
  %3027 = fsub fast float 1.000000e+00, %1827
  %3028 = fmul fast float %3026, %3027
  %3029 = fsub fast float 1.000000e+00, %3028
  %3030 = bitcast float %3029 to i32
  %3031 = sub nsw i32 2129859010, %3030
  %3032 = bitcast i32 %3031 to float
  %3033 = call float @dx.op.binary.f32(i32 36, float %1806, float %3025)  ; FMin(a,b)
  %3034 = fmul fast float %3033, %3027
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = bitcast float %3035 to i32
  %3037 = sub nsw i32 2129859010, %3036
  %3038 = bitcast i32 %3037 to float
  %3039 = call float @dx.op.binary.f32(i32 36, float %1807, float %3025)  ; FMin(a,b)
  %3040 = fmul fast float %3039, %3027
  %3041 = fsub fast float 1.000000e+00, %3040
  %3042 = bitcast float %3041 to i32
  %3043 = sub nsw i32 2129859010, %3042
  %3044 = bitcast i32 %3043 to float
  %3045 = fmul fast float %3021, %1827
  %3046 = fmul fast float %3045, %3032
  %3047 = fmul fast float %3022, %1827
  %3048 = fmul fast float %3047, %3038
  %3049 = fmul fast float %3023, %1827
  %3050 = fmul fast float %3049, %3044
  %3051 = call float @dx.op.binary.f32(i32 36, float %1808, float %3025)  ; FMin(a,b)
  %3052 = fmul fast float %3051, %3027
  %3053 = fsub fast float 1.000000e+00, %3052
  %3054 = bitcast float %3053 to i32
  %3055 = sub nsw i32 2129859010, %3054
  %3056 = bitcast i32 %3055 to float
  %3057 = call float @dx.op.binary.f32(i32 36, float %1809, float %3025)  ; FMin(a,b)
  %3058 = fmul fast float %3057, %3027
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = bitcast float %3059 to i32
  %3061 = sub nsw i32 2129859010, %3060
  %3062 = bitcast i32 %3061 to float
  %3063 = call float @dx.op.binary.f32(i32 36, float %1816, float %3025)  ; FMin(a,b)
  %3064 = fmul fast float %3063, %3027
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = bitcast float %3065 to i32
  %3067 = sub nsw i32 2129859010, %3066
  %3068 = bitcast i32 %3067 to float
  %3069 = fmul fast float %3018, %1827
  %3070 = fmul fast float %3069, %3056
  %3071 = fmul fast float %3019, %1827
  %3072 = fmul fast float %3071, %3062
  %3073 = fmul fast float %3020, %1827
  %3074 = fmul fast float %3073, %3068
  %3075 = call float @dx.op.dot3.f32(i32 55, float %3046, float %3048, float %3050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3076 = select i1 %175, float 0.000000e+00, float %3046
  %3077 = select i1 %175, float %3075, float %3048
  %3078 = select i1 %175, float 0.000000e+00, float %3050
  %3079 = call float @dx.op.dot3.f32(i32 55, float %3070, float %3072, float %3074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3080 = select i1 %175, float 0.000000e+00, float %3070
  %3081 = select i1 %175, float %3079, float %3072
  %3082 = select i1 %175, float 0.000000e+00, float %3074
  %3083 = fmul fast float %1818, 9.843750e-01
  %3084 = fmul fast float %1814, 9.843750e-01
  %3085 = fadd fast float %3083, 7.812500e-03
  %3086 = fadd fast float %3084, 7.812500e-03
  %3087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3085, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 2
  %3089 = extractvalue %dx.types.ResRet.f32 %3087, 3
  %3090 = fmul fast float %3088, %1808
  %3091 = fmul fast float %3088, %1809
  %3092 = fmul fast float %3088, %1816
  %3093 = fadd fast float %3090, %3089
  %3094 = fadd fast float %3091, %3089
  %3095 = fadd fast float %3092, %3089
  %3096 = fcmp fast ogt float %1182, 0.000000e+00
  br i1 %3096, label %3097, label %3123

; <label>:3097                                    ; preds = %3017
  %3098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1182, float %1818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3099 = extractvalue %dx.types.ResRet.f32 %3098, 0
  %3100 = extractvalue %dx.types.ResRet.f32 %3098, 1
  %3101 = extractvalue %dx.types.ResRet.f32 %3098, 2
  %3102 = fadd fast float %3099, -5.000000e-01
  %3103 = fadd fast float %3100, -5.000000e-01
  %3104 = fadd fast float %3101, -5.000000e-01
  %3105 = fsub fast float 1.000000e+00, %1808
  %3106 = fsub fast float 1.000000e+00, %1809
  %3107 = fsub fast float 1.000000e+00, %1816
  %3108 = fmul fast float %1808, 4.000000e+00
  %3109 = fmul fast float %3108, %3105
  %3110 = fmul fast float %3109, %3102
  %3111 = fmul fast float %1809, 4.000000e+00
  %3112 = fmul fast float %3111, %3106
  %3113 = fmul fast float %3112, %3103
  %3114 = fmul fast float %1816, 4.000000e+00
  %3115 = fmul fast float %3114, %3107
  %3116 = fmul fast float %3115, %3104
  %3117 = fadd fast float %3110, %3093
  %3118 = fadd fast float %3113, %3094
  %3119 = fadd fast float %3116, %3095
  %3120 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3121 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3122 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  br label %3123

; <label>:3123                                    ; preds = %3097, %3017
  %3124 = phi float [ %3120, %3097 ], [ %3093, %3017 ]
  %3125 = phi float [ %3121, %3097 ], [ %3094, %3017 ]
  %3126 = phi float [ %3122, %3097 ], [ %3095, %3017 ]
  %3127 = call float @dx.op.binary.f32(i32 35, float %3125, float %3126)  ; FMax(a,b)
  %3128 = call float @dx.op.binary.f32(i32 35, float %3124, float %3127)  ; FMax(a,b)
  %3129 = fsub fast float 1.000000e+00, %3128
  %3130 = fmul fast float %3129, %3076
  %3131 = fmul fast float %3129, %3077
  %3132 = fmul fast float %3129, %3078
  %3133 = call float @dx.op.dot3.f32(i32 55, float %1805, float %1806, float %1807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3134 = fcmp fast ogt float %3133, 0x3E7FF19E20000000
  %3135 = fdiv fast float 1.000000e+00, %3133
  %3136 = select i1 %3134, float %3135, float 0.000000e+00
  %3137 = fmul fast float %3136, %1805
  %3138 = fmul fast float %3136, %1806
  %3139 = fmul fast float %3136, %1807
  %3140 = fadd fast float %3137, -1.000000e+00
  %3141 = fadd fast float %3138, -1.000000e+00
  %3142 = fadd fast float %3139, -1.000000e+00
  %3143 = fmul fast float %3140, 5.000000e-01
  %3144 = fmul fast float %3141, 5.000000e-01
  %3145 = fmul fast float %3142, 5.000000e-01
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fadd fast float %3144, 1.000000e+00
  %3148 = fadd fast float %3145, 1.000000e+00
  %3149 = fmul fast float %3124, %3080
  %3150 = fmul fast float %3125, %3081
  %3151 = fmul fast float %3126, %3082
  %3152 = fsub fast float 1.000000e+00, %1818
  %3153 = bitcast float %3152 to i32
  %3154 = sitofp i32 %3153 to float
  %3155 = fmul fast float %3154, 5.000000e+00
  %3156 = fadd fast float %3155, 0xC1EFBF8940000000
  %3157 = fptosi float %3156 to i32
  %3158 = bitcast i32 %3157 to float
  %3159 = fmul fast float %3158, %1181
  %3160 = fmul fast float %3076, %3159
  %3161 = fmul fast float %3160, %3129
  %3162 = fmul fast float %3161, %3146
  %3163 = fmul fast float %3077, %3159
  %3164 = fmul fast float %3163, %3129
  %3165 = fmul fast float %3164, %3147
  %3166 = fmul fast float %3078, %3159
  %3167 = fmul fast float %3166, %3129
  %3168 = fmul fast float %3167, %3148
  %3169 = fmul fast float %3130, %1202
  %3170 = fmul fast float %3131, %1202
  %3171 = fmul fast float %3132, %1202
  %3172 = fadd fast float %3149, %1183
  %3173 = fadd fast float %3172, %3162
  %3174 = fmul fast float %3173, %1202
  %3175 = fadd fast float %3150, %1184
  %3176 = fadd fast float %3175, %3165
  %3177 = fmul fast float %3176, %1202
  %3178 = fadd fast float %3151, %1185
  %3179 = fadd fast float %3178, %3168
  %3180 = fmul fast float %3179, %1202
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3183 = fcmp fast oeq float %3182, 0.000000e+00
  br i1 %3183, label %3411, label %3184

; <label>:3184                                    ; preds = %3123
  %3185 = extractvalue %dx.types.CBufRet.f32 %3181, 0
  %3186 = extractvalue %dx.types.CBufRet.f32 %3181, 1
  %3187 = extractvalue %dx.types.CBufRet.f32 %3181, 2
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.CBufRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.CBufRet.f32 %3188, 2
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3195 = call float @dx.op.dot3.f32(i32 55, float %3189, float %3190, float %3191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3196 = select i1 %175, float %3193, float %3189
  %3197 = select i1 %175, float %3195, float %3190
  %3198 = select i1 %175, float %3194, float %3191
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 1
  %3201 = fcmp fast une float %3200, 0.000000e+00
  br i1 %3201, label %3202, label %3219

; <label>:3202                                    ; preds = %3184
  %3203 = fptoui float %57 to i32
  %3204 = fptoui float %58 to i32
  %3205 = lshr i32 %3203, 4
  %3206 = lshr i32 %3204, 4
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = fptoui float %3208 to i32
  %3210 = add i32 %3209, 15
  %3211 = lshr i32 %3210, 4
  %3212 = mul i32 %3211, %3206
  %3213 = add i32 %3212, %3205
  %3214 = shl i32 %3213, 3
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, -268435456
  %3218 = icmp eq i32 %3217, -1342177280
  br i1 %3218, label %3229, label %3219

; <label>:3219                                    ; preds = %3202, %3184
  %3220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.f32 %3220, 2
  %3222 = extractvalue %dx.types.CBufRet.f32 %3220, 3
  %3223 = fmul fast float %3221, %57
  %3224 = fmul fast float %3222, %58
  %3225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3223, float %3224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3226 = extractvalue %dx.types.ResRet.f32 %3225, 0
  %3227 = extractvalue %dx.types.ResRet.f32 %3225, 1
  %3228 = extractvalue %dx.types.ResRet.f32 %3225, 2
  br label %3229

; <label>:3229                                    ; preds = %3219, %3202
  %3230 = phi float [ %3226, %3219 ], [ 0.000000e+00, %3202 ]
  %3231 = phi float [ %3227, %3219 ], [ 0.000000e+00, %3202 ]
  %3232 = phi float [ %3228, %3219 ], [ 0.000000e+00, %3202 ]
  %3233 = call float @dx.op.binary.f32(i32 36, float %3231, float %3232)  ; FMin(a,b)
  %3234 = call float @dx.op.binary.f32(i32 36, float %3230, float %3233)  ; FMin(a,b)
  %3235 = fcmp fast ogt float %3234, 0.000000e+00
  br i1 %3235, label %3236, label %3411, !dx.controlflow.hints !77

; <label>:3236                                    ; preds = %3229
  %3237 = fmul fast float %3230, %3196
  %3238 = fmul fast float %3231, %3197
  %3239 = fmul fast float %3232, %3198
  %3240 = fsub fast float %3185, %1804
  %3241 = fsub fast float %3186, %1803
  %3242 = fsub fast float %3187, %1802
  %3243 = call float @dx.op.dot3.f32(i32 55, float %3240, float %3241, float %3242, float %3240, float %3241, float %3242)  ; Dot3(ax,ay,az,bx,by,bz)
  %3244 = call float @dx.op.unary.f32(i32 25, float %3243)  ; Rsqrt(value)
  %3245 = fmul fast float %3244, %3240
  %3246 = fmul fast float %3244, %3241
  %3247 = fmul fast float %3244, %3242
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3185, float %3186, float %3187, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1800, float %1799, float %3245, float %3246, float %3247)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3251 = fmul fast float %3250, %3250
  %3252 = fmul fast float %3251, %1831
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fmul fast float %3253, %3250
  %3255 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1812, float %1813, float %3245, float %3246, float %3247)  ; Dot3(ax,ay,az,bx,by,bz)
  %3256 = fmul fast float %3255, %3255
  %3257 = call float @dx.op.unary.f32(i32 6, float %3248)  ; FAbs(value)
  %3258 = fsub fast float 1.000000e+00, %1814
  %3259 = call float @dx.op.binary.f32(i32 35, float %3258, float 0x3F847AE140000000)  ; FMax(a,b)
  %3260 = fmul fast float %3259, %3259
  %3261 = fmul fast float %3260, %3260
  %3262 = fsub fast float 1.000000e+00, %3261
  %3263 = fmul fast float %1818, %1818
  %3264 = fmul fast float %3263, %3262
  %3265 = fadd fast float %3264, %3261
  %3266 = bitcast float %3265 to i32
  %3267 = ashr i32 %3266, 1
  %3268 = add nsw i32 %3267, 532487669
  %3269 = bitcast i32 %3268 to float
  %3270 = fadd fast float %3269, %1818
  %3271 = fmul fast float %3261, %3256
  %3272 = fsub fast float 1.000000e+00, %3256
  %3273 = fadd fast float %3272, %3271
  %3274 = fmul fast float %3257, %3257
  %3275 = fmul fast float %3274, %3262
  %3276 = fadd fast float %3275, %3261
  %3277 = bitcast float %3276 to i32
  %3278 = ashr i32 %3277, 1
  %3279 = add nsw i32 %3278, 532487669
  %3280 = bitcast i32 %3279 to float
  %3281 = fadd fast float %3280, %3257
  %3282 = fmul fast float %3273, %3273
  %3283 = fmul fast float %3282, %3270
  %3284 = fmul fast float %3283, %3281
  %3285 = fdiv fast float 0x3FF0A00000000000, %3284
  %3286 = fmul fast float %3285, %3261
  %3287 = call float @dx.op.unary.f32(i32 6, float %3249)  ; FAbs(value)
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = bitcast float %3288 to i32
  %3290 = sitofp i32 %3289 to float
  %3291 = fmul fast float %3290, 5.000000e+00
  %3292 = fadd fast float %3291, 0xC1EFBF8940000000
  %3293 = fptosi float %3292 to i32
  %3294 = bitcast i32 %3293 to float
  %3295 = fsub fast float 1.000000e+00, %1808
  %3296 = fsub fast float 1.000000e+00, %1809
  %3297 = fsub fast float 1.000000e+00, %1816
  %3298 = fmul fast float %3294, %3295
  %3299 = fmul fast float %3294, %3296
  %3300 = fmul fast float %3294, %3297
  %3301 = fadd fast float %3298, %1808
  %3302 = fadd fast float %3299, %1809
  %3303 = fadd fast float %3300, %1816
  br i1 %3096, label %3304, label %3327

; <label>:3304                                    ; preds = %3236
  %3305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1182, float %3287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3306 = extractvalue %dx.types.ResRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.ResRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.ResRet.f32 %3305, 2
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fmul fast float %1808, 4.000000e+00
  %3313 = fmul fast float %3312, %3295
  %3314 = fmul fast float %3313, %3309
  %3315 = fmul fast float %1809, 4.000000e+00
  %3316 = fmul fast float %3315, %3296
  %3317 = fmul fast float %3316, %3310
  %3318 = fmul fast float %1816, 4.000000e+00
  %3319 = fmul fast float %3318, %3297
  %3320 = fmul fast float %3319, %3311
  %3321 = fadd fast float %3314, %3301
  %3322 = fadd fast float %3317, %3302
  %3323 = fadd fast float %3320, %3303
  %3324 = call float @dx.op.unary.f32(i32 7, float %3321)  ; Saturate(value)
  %3325 = call float @dx.op.unary.f32(i32 7, float %3322)  ; Saturate(value)
  %3326 = call float @dx.op.unary.f32(i32 7, float %3323)  ; Saturate(value)
  br label %3327

; <label>:3327                                    ; preds = %3304, %3236
  %3328 = phi float [ %3324, %3304 ], [ %3301, %3236 ]
  %3329 = phi float [ %3325, %3304 ], [ %3302, %3236 ]
  %3330 = phi float [ %3326, %3304 ], [ %3303, %3236 ]
  %3331 = fmul fast float %3248, 9.843750e-01
  %3332 = fadd fast float %3331, 7.812500e-03
  %3333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3332, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 3
  %3336 = fmul fast float %3334, %1808
  %3337 = fmul fast float %3334, %1809
  %3338 = fmul fast float %3334, %1816
  %3339 = fadd fast float %3336, %3335
  %3340 = fadd fast float %3337, %3335
  %3341 = fadd fast float %3338, %3335
  br i1 %3096, label %3342, label %3365

; <label>:3342                                    ; preds = %3327
  %3343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1182, float %3248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = fadd fast float %3344, -5.000000e-01
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fadd fast float %3346, -5.000000e-01
  %3350 = fmul fast float %1808, 4.000000e+00
  %3351 = fmul fast float %3350, %3295
  %3352 = fmul fast float %3351, %3347
  %3353 = fmul fast float %1809, 4.000000e+00
  %3354 = fmul fast float %3353, %3296
  %3355 = fmul fast float %3354, %3348
  %3356 = fmul fast float %1816, 4.000000e+00
  %3357 = fmul fast float %3356, %3297
  %3358 = fmul fast float %3357, %3349
  %3359 = fadd fast float %3352, %3339
  %3360 = fadd fast float %3355, %3340
  %3361 = fadd fast float %3358, %3341
  %3362 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3363 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  %3364 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  br label %3365

; <label>:3365                                    ; preds = %3342, %3327
  %3366 = phi float [ %3362, %3342 ], [ %3339, %3327 ]
  %3367 = phi float [ %3363, %3342 ], [ %3340, %3327 ]
  %3368 = phi float [ %3364, %3342 ], [ %3341, %3327 ]
  %3369 = call float @dx.op.binary.f32(i32 35, float %3367, float %3368)  ; FMax(a,b)
  %3370 = call float @dx.op.binary.f32(i32 35, float %3366, float %3369)  ; FMax(a,b)
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3328, %3286
  %3373 = fmul fast float %3329, %3286
  %3374 = fmul fast float %3330, %3286
  %3375 = fsub fast float 1.000000e+00, %3249
  %3376 = bitcast float %3375 to i32
  %3377 = sitofp i32 %3376 to float
  %3378 = fmul fast float %3377, 5.000000e+00
  %3379 = fadd fast float %3378, 0xC1EFBF8940000000
  %3380 = fptosi float %3379 to i32
  %3381 = bitcast i32 %3380 to float
  %3382 = fmul fast float %3381, %1181
  %3383 = fmul fast float %3371, %3382
  %3384 = fmul fast float %3383, %3146
  %3385 = fmul fast float %3383, %3147
  %3386 = fmul fast float %3383, %3148
  %3387 = fadd fast float %3384, %3372
  %3388 = fadd fast float %3385, %3373
  %3389 = fadd fast float %3386, %3374
  %3390 = fmul fast float %3254, %3237
  %3391 = fmul fast float %3390, %3371
  %3392 = fmul fast float %3254, %3238
  %3393 = fmul fast float %3392, %3371
  %3394 = fmul fast float %3254, %3239
  %3395 = fmul fast float %3394, %3371
  %3396 = fmul fast float %3390, %3387
  %3397 = fmul fast float %3392, %3388
  %3398 = fmul fast float %3394, %3389
  %3399 = fadd fast float %3391, %3130
  %3400 = fmul fast float %3399, %1202
  %3401 = fadd fast float %3393, %3131
  %3402 = fmul fast float %3401, %1202
  %3403 = fadd fast float %3395, %3132
  %3404 = fmul fast float %3403, %1202
  %3405 = fadd fast float %3396, %3173
  %3406 = fmul fast float %3405, %1202
  %3407 = fadd fast float %3397, %3176
  %3408 = fmul fast float %3407, %1202
  %3409 = fadd fast float %3398, %3179
  %3410 = fmul fast float %3409, %1202
  br label %3411

; <label>:3411                                    ; preds = %3365, %3229, %3123
  %3412 = phi float [ %3174, %3123 ], [ %3174, %3229 ], [ %3406, %3365 ]
  %3413 = phi float [ %3177, %3123 ], [ %3177, %3229 ], [ %3408, %3365 ]
  %3414 = phi float [ %3180, %3123 ], [ %3180, %3229 ], [ %3410, %3365 ]
  %3415 = phi float [ %3169, %3123 ], [ %3169, %3229 ], [ %3400, %3365 ]
  %3416 = phi float [ %3170, %3123 ], [ %3170, %3229 ], [ %3402, %3365 ]
  %3417 = phi float [ %3171, %3123 ], [ %3171, %3229 ], [ %3404, %3365 ]
  %3418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.i32 %3418, 0
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3855, label %3421

; <label>:3421                                    ; preds = %3411
  %3422 = fptoui float %57 to i32
  %3423 = fptoui float %58 to i32
  %3424 = lshr i32 %3422, 4
  %3425 = lshr i32 %3423, 4
  %3426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.i32 %3426, 0
  %3428 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3425, i32 %3427, i32 %3424)  ; UMad(a,b,c)
  %3429 = add nsw i32 %3419, -1
  %3430 = call i32 @dx.op.binary.i32(i32 37, i32 %3429, i32 0)  ; IMax(a,b)
  %3431 = call float @dx.op.binary.f32(i32 35, float %52, float 0.000000e+00)  ; FMax(a,b)
  %3432 = fptoui float %3431 to i32
  %3433 = lshr i32 %3432, 5
  %3434 = call i32 @dx.op.binary.i32(i32 40, i32 %3433, i32 8191)  ; UMin(a,b)
  %3435 = shl i32 %3434, 2
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = lshr i32 %3437, 16
  %3439 = and i32 %3437, 65535
  %3440 = lshr i32 %3437, 21
  %3441 = lshr i32 %3439, 5
  %3442 = call i32 @dx.op.binary.i32(i32 40, i32 %3441, i32 %3430)  ; UMin(a,b)
  %3443 = icmp ugt i32 %3440, %3442
  br i1 %3443, label %3855, label %3444

; <label>:3444                                    ; preds = %3421
  br label %3445

; <label>:3445                                    ; preds = %3845, %3444
  %3446 = phi i32 [ %3852, %3845 ], [ %3440, %3444 ]
  %3447 = phi float [ %3846, %3845 ], [ %3412, %3444 ]
  %3448 = phi float [ %3847, %3845 ], [ %3413, %3444 ]
  %3449 = phi float [ %3848, %3845 ], [ %3414, %3444 ]
  %3450 = phi float [ %3849, %3845 ], [ %3415, %3444 ]
  %3451 = phi float [ %3850, %3845 ], [ %3416, %3444 ]
  %3452 = phi float [ %3851, %3845 ], [ %3417, %3444 ]
  %3453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.i32 %3453, 0
  %3455 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3428, i32 %3454, i32 %3446)  ; UMad(a,b,c)
  %3456 = shl i32 %3455, 2
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = shl i32 %3446, 5
  %3460 = sub nsw i32 %3438, %3459
  %3461 = call i32 @dx.op.binary.i32(i32 37, i32 %3460, i32 0)  ; IMax(a,b)
  %3462 = call i32 @dx.op.binary.i32(i32 38, i32 %3461, i32 31)  ; IMin(a,b)
  %3463 = sub nsw i32 1, %3438
  %3464 = add nsw i32 %3463, %3439
  %3465 = call i32 @dx.op.binary.i32(i32 37, i32 %3464, i32 0)  ; IMax(a,b)
  %3466 = call i32 @dx.op.binary.i32(i32 38, i32 %3465, i32 32)  ; IMin(a,b)
  %3467 = and i32 %3466, 31
  %3468 = shl i32 -1, %3467
  %3469 = xor i32 %3468, -1
  %3470 = and i32 %3462, 31
  %3471 = shl i32 %3469, %3470
  %3472 = icmp eq i32 %3466, 32
  %3473 = select i1 %3472, i32 -1, i32 %3471
  %3474 = and i32 %3473, %3458
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3845, label %3476

; <label>:3476                                    ; preds = %3445
  br label %3477

; <label>:3477                                    ; preds = %3557, %3476
  %3478 = phi i32 [ %3489, %3557 ], [ %3474, %3476 ]
  %3479 = phi float [ %3558, %3557 ], [ %3447, %3476 ]
  %3480 = phi float [ %3559, %3557 ], [ %3448, %3476 ]
  %3481 = phi float [ %3560, %3557 ], [ %3449, %3476 ]
  %3482 = phi float [ %3561, %3557 ], [ %3450, %3476 ]
  %3483 = phi float [ %3562, %3557 ], [ %3451, %3476 ]
  %3484 = phi float [ %3563, %3557 ], [ %3452, %3476 ]
  %3485 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3478)  ; FirstbitLo(value)
  %3486 = add i32 %3485, %3459
  %3487 = and i32 %3485, 31
  %3488 = shl i32 1, %3487
  %3489 = xor i32 %3488, %3478
  %3490 = mul i32 %3486, 112
  %3491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = or i32 %3490, 12
  %3496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = add i32 %3490, 44
  %3499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = add i32 %3490, 48
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = add i32 %3490, 80
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3510 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3493, float %3494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = select i1 %175, float %3508, float %3492
  %3512 = select i1 %175, float %3510, float %3493
  %3513 = select i1 %175, float %3509, float %3494
  %3514 = fsub fast float %3503, %104
  %3515 = fsub fast float %3504, %105
  %3516 = fsub fast float %3505, %106
  %3517 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3515, float %3516, float %3514, float %3515, float %3516)  ; Dot3(ax,ay,az,bx,by,bz)
  %3518 = call float @dx.op.unary.f32(i32 24, float %3517)  ; Sqrt(value)
  %3519 = fdiv fast float 1.000000e+00, %3518
  %3520 = fmul fast float %3519, %3514
  %3521 = fmul fast float %3519, %3515
  %3522 = fmul fast float %3519, %3516
  %3523 = fadd fast float %3518, %3497
  %3524 = fdiv fast float 1.000000e+00, %3523
  %3525 = fmul float %3500, %3524
  %3526 = fmul float %3525, %3525
  %3527 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3528 = and i32 %3488, %3474
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3552, label %3530, !dx.controlflow.hints !78

; <label>:3530                                    ; preds = %3477
  %3531 = lshr i32 %3422, 5
  %3532 = lshr i32 %3423, 5
  %3533 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3531, i32 %3532, i32 %3486, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 3
  %3536 = icmp eq i32 %3535, 0
  %3537 = select i1 %3536, float 1.000000e+00, float 0.000000e+00
  %3538 = icmp eq i32 %3535, 3
  br i1 %3538, label %3539, label %3552

; <label>:3539                                    ; preds = %3530
  %3540 = lshr i32 %3534, 10
  %3541 = and i32 %3540, 8160
  %3542 = and i32 %3423, 31
  %3543 = or i32 %3541, %3542
  %3544 = lshr i32 %3534, 1
  %3545 = and i32 %3544, 16352
  %3546 = and i32 %3422, 31
  %3547 = or i32 %3545, %3546
  %3548 = lshr i32 %3534, 23
  %3549 = and i32 %3548, 255
  %3550 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3547, i32 %3543, i32 %3549, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  br label %3552

; <label>:3552                                    ; preds = %3539, %3530, %3477
  %3553 = phi float [ %3551, %3539 ], [ %3537, %3530 ], [ 0.000000e+00, %3477 ]
  %3554 = call float @dx.op.binary.f32(i32 36, float %3553, float %3553)  ; FMin(a,b)
  %3555 = call float @dx.op.binary.f32(i32 36, float %3553, float %3554)  ; FMin(a,b)
  %3556 = fcmp fast ogt float %3555, 0.000000e+00
  br i1 %3556, label %3565, label %3557, !dx.controlflow.hints !79

; <label>:3557                                    ; preds = %3801, %3552
  %3558 = phi float [ %3479, %3552 ], [ %3841, %3801 ]
  %3559 = phi float [ %3480, %3552 ], [ %3842, %3801 ]
  %3560 = phi float [ %3481, %3552 ], [ %3843, %3801 ]
  %3561 = phi float [ %3482, %3552 ], [ %3835, %3801 ]
  %3562 = phi float [ %3483, %3552 ], [ %3836, %3801 ]
  %3563 = phi float [ %3484, %3552 ], [ %3837, %3801 ]
  %3564 = icmp eq i32 %3478, %3488
  br i1 %3564, label %3844, label %3477

; <label>:3565                                    ; preds = %3552
  %3566 = fmul fast float %3553, %3511
  %3567 = fmul fast float %3553, %3512
  %3568 = fmul fast float %3553, %3513
  %3569 = fsub fast float %3505, %1604
  %3570 = fcmp fast ogt float %3569, 0.000000e+00
  %3571 = fsub fast float %106, %1604
  %3572 = fcmp fast ogt float %3571, 0.000000e+00
  %3573 = xor i1 %3572, %3570
  %3574 = fsub fast float %1604, %3505
  %3575 = fmul fast float %3574, 2.000000e+00
  %3576 = fadd fast float %3575, %3505
  %3577 = select i1 %3573, float %3505, float %3576
  %3578 = fsub fast float %3577, %106
  %3579 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3515, float %3578, float %3514, float %3515, float %3578)  ; Dot3(ax,ay,az,bx,by,bz)
  %3580 = call float @dx.op.unary.f32(i32 25, float %3579)  ; Rsqrt(value)
  %3581 = fmul fast float %3580, %3514
  %3582 = fmul fast float %3580, %3515
  %3583 = fmul fast float %3580, %3578
  %3584 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1612)  ; Dot3(ax,ay,az,bx,by,bz)
  %3585 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3581, float %3582, float %3583)  ; Dot3(ax,ay,az,bx,by,bz)
  %3586 = fdiv fast float 1.000000e+00, %3585
  %3587 = fmul fast float %3586, %3584
  %3588 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3571, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3589 = fcmp fast ogt float %3588, 0.000000e+00
  %3590 = fcmp fast olt float %3588, 0.000000e+00
  %3591 = zext i1 %3589 to i32
  %3592 = zext i1 %3590 to i32
  %3593 = sub nsw i32 %3591, %3592
  %3594 = sitofp i32 %3593 to float
  %3595 = fsub fast float %3577, %1604
  %3596 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3515, float %3595, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = fcmp fast ogt float %3596, 0.000000e+00
  %3598 = fcmp fast olt float %3596, 0.000000e+00
  %3599 = zext i1 %3597 to i32
  %3600 = zext i1 %3598 to i32
  %3601 = sub nsw i32 %3599, %3600
  %3602 = sitofp i32 %3601 to float
  %3603 = fcmp fast une float %3594, %3602
  br i1 %3603, label %3604, label %3614

; <label>:3604                                    ; preds = %3565
  %3605 = fmul fast float %3587, %3583
  %3606 = fmul fast float %3587, %3582
  %3607 = fmul fast float %3587, %3581
  %3608 = fmul fast float %3607, %3607
  %3609 = fmul fast float %3606, %3606
  %3610 = fadd fast float %3608, %3609
  %3611 = fmul fast float %3605, %3605
  %3612 = fadd fast float %3610, %3611
  %3613 = call float @dx.op.unary.f32(i32 24, float %3612)  ; Sqrt(value)
  br label %3626

; <label>:3614                                    ; preds = %3565
  %3615 = icmp slt i32 %3593, 0
  br i1 %3615, label %3616, label %3626

; <label>:3616                                    ; preds = %3614
  %3617 = fsub fast float %104, %3503
  %3618 = fsub fast float %105, %3504
  %3619 = fsub fast float %106, %3577
  %3620 = fmul fast float %3617, %3617
  %3621 = fmul fast float %3618, %3618
  %3622 = fadd fast float %3620, %3621
  %3623 = fmul fast float %3619, %3619
  %3624 = fadd fast float %3622, %3623
  %3625 = call float @dx.op.unary.f32(i32 24, float %3624)  ; Sqrt(value)
  br label %3626

; <label>:3626                                    ; preds = %3616, %3614, %3604
  %3627 = phi float [ %3613, %3604 ], [ %3625, %3616 ], [ 0.000000e+00, %3614 ]
  %3628 = and i1 %3572, %3570
  %3629 = fsub fast float -0.000000e+00, %3627
  %3630 = select i1 %3628, float -0.000000e+00, float %3629
  %3631 = fmul fast float %1605, 0x3FF7154760000000
  %3632 = fmul fast float %3631, %3630
  %3633 = fmul fast float %1606, 0x3FF7154760000000
  %3634 = fmul fast float %3633, %3630
  %3635 = fmul fast float %1607, 0x3FF7154760000000
  %3636 = fmul fast float %3635, %3630
  %3637 = call float @dx.op.unary.f32(i32 21, float %3632)  ; Exp(value)
  %3638 = call float @dx.op.unary.f32(i32 21, float %3634)  ; Exp(value)
  %3639 = call float @dx.op.unary.f32(i32 21, float %3636)  ; Exp(value)
  %3640 = call float @dx.op.unary.f32(i32 7, float %3637)  ; Saturate(value)
  %3641 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3642 = call float @dx.op.unary.f32(i32 7, float %3639)  ; Saturate(value)
  %3643 = fmul fast float %3566, %3640
  %3644 = fmul fast float %3567, %3641
  %3645 = fmul fast float %3568, %3642
  %3646 = fsub fast float %3520, %1804
  %3647 = fsub fast float %3521, %1803
  %3648 = fsub fast float %3522, %1802
  %3649 = call float @dx.op.dot3.f32(i32 55, float %3646, float %3647, float %3648, float %3646, float %3647, float %3648)  ; Dot3(ax,ay,az,bx,by,bz)
  %3650 = call float @dx.op.unary.f32(i32 25, float %3649)  ; Rsqrt(value)
  %3651 = fmul fast float %3650, %3646
  %3652 = fmul fast float %3650, %3647
  %3653 = fmul fast float %3650, %3648
  %3654 = call float @dx.op.dot3.f32(i32 55, float %3520, float %3521, float %3522, float %1811, float %1812, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %3655 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1800, float %1799, float %3651, float %3652, float %3653)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3657 = fmul fast float %3656, %3527
  %3658 = fmul fast float %3656, %3656
  %3659 = fmul fast float %3658, %1831
  %3660 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3661 = fmul fast float %3657, %3660
  %3662 = bitcast float %3517 to i32
  %3663 = ashr i32 %3662, 1
  %3664 = sub nsw i32 1597463007, %3663
  %3665 = bitcast i32 %3664 to float
  %3666 = fmul fast float %3665, %3514
  %3667 = fmul fast float %3665, %3515
  %3668 = fmul fast float %3665, %3516
  %3669 = fsub fast float %3666, %1804
  %3670 = fsub fast float %3667, %1803
  %3671 = fsub fast float %3668, %1802
  %3672 = call float @dx.op.dot3.f32(i32 55, float %3669, float %3670, float %3671, float %3669, float %3670, float %3671)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = call float @dx.op.unary.f32(i32 25, float %3672)  ; Rsqrt(value)
  %3674 = fmul fast float %3669, %3673
  %3675 = fmul fast float %3670, %3673
  %3676 = fmul fast float %3671, %3673
  %3677 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1812, float %1813, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %3678 = fmul fast float %3677, %3677
  %3679 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3680 = fsub fast float 1.000000e+00, %1814
  %3681 = call float @dx.op.binary.f32(i32 35, float %3680, float 0x3F847AE140000000)  ; FMax(a,b)
  %3682 = fmul fast float %3681, %3681
  %3683 = fmul fast float %3682, %3682
  %3684 = fsub fast float 1.000000e+00, %3683
  %3685 = fmul fast float %1818, %1818
  %3686 = fmul fast float %3685, %3684
  %3687 = fadd fast float %3686, %3683
  %3688 = bitcast float %3687 to i32
  %3689 = ashr i32 %3688, 1
  %3690 = add nsw i32 %3689, 532487669
  %3691 = bitcast i32 %3690 to float
  %3692 = fadd fast float %3691, %1818
  %3693 = fmul fast float %3683, %3678
  %3694 = fsub fast float 1.000000e+00, %3678
  %3695 = fadd fast float %3694, %3693
  %3696 = fmul fast float %3679, %3679
  %3697 = fmul fast float %3696, %3684
  %3698 = fadd fast float %3697, %3683
  %3699 = bitcast float %3698 to i32
  %3700 = ashr i32 %3699, 1
  %3701 = add nsw i32 %3700, 532487669
  %3702 = bitcast i32 %3701 to float
  %3703 = fadd fast float %3702, %3679
  %3704 = fmul fast float %3695, %3695
  %3705 = fmul fast float %3704, %3692
  %3706 = fmul fast float %3705, %3703
  %3707 = fdiv fast float 1.000000e+00, %3706
  %3708 = bitcast float %3683 to i32
  %3709 = sitofp i32 %3708 to float
  %3710 = fmul fast float %3709, 0x3FE7F73180000000
  %3711 = fadd fast float %3710, 0x41AFE27C40000000
  %3712 = fptosi float %3711 to i32
  %3713 = bitcast i32 %3712 to float
  %3714 = fmul fast float %3500, 0x3FD80E9D60000000
  %3715 = fmul fast float %3714, %3665
  %3716 = fadd fast float %3713, %3715
  %3717 = bitcast float %3716 to i32
  %3718 = sub nsw i32 2129859010, %3717
  %3719 = bitcast i32 %3718 to float
  %3720 = fmul fast float %3683, %3707
  %3721 = fmul fast float %3720, %3713
  %3722 = fmul fast float %3721, %3719
  %3723 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3724 = fsub fast float 1.000000e+00, %3723
  %3725 = bitcast float %3724 to i32
  %3726 = sitofp i32 %3725 to float
  %3727 = fmul fast float %3726, 5.000000e+00
  %3728 = fadd fast float %3727, 0xC1EFBF8940000000
  %3729 = fptosi float %3728 to i32
  %3730 = bitcast i32 %3729 to float
  %3731 = fsub fast float 1.000000e+00, %1808
  %3732 = fsub fast float 1.000000e+00, %1809
  %3733 = fsub fast float 1.000000e+00, %1816
  %3734 = fmul fast float %3730, %3731
  %3735 = fmul fast float %3730, %3732
  %3736 = fmul fast float %3730, %3733
  %3737 = fadd fast float %3734, %1808
  %3738 = fadd fast float %3735, %1809
  %3739 = fadd fast float %3736, %1816
  br i1 %3096, label %3740, label %3763

; <label>:3740                                    ; preds = %3626
  %3741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1182, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3745 = fadd fast float %3742, -5.000000e-01
  %3746 = fadd fast float %3743, -5.000000e-01
  %3747 = fadd fast float %3744, -5.000000e-01
  %3748 = fmul fast float %1808, 4.000000e+00
  %3749 = fmul fast float %3748, %3731
  %3750 = fmul fast float %3749, %3745
  %3751 = fmul fast float %1809, 4.000000e+00
  %3752 = fmul fast float %3751, %3732
  %3753 = fmul fast float %3752, %3746
  %3754 = fmul fast float %1816, 4.000000e+00
  %3755 = fmul fast float %3754, %3733
  %3756 = fmul fast float %3755, %3747
  %3757 = fadd fast float %3750, %3737
  %3758 = fadd fast float %3753, %3738
  %3759 = fadd fast float %3756, %3739
  %3760 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3761 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  br label %3763

; <label>:3763                                    ; preds = %3740, %3626
  %3764 = phi float [ %3760, %3740 ], [ %3737, %3626 ]
  %3765 = phi float [ %3761, %3740 ], [ %3738, %3626 ]
  %3766 = phi float [ %3762, %3740 ], [ %3739, %3626 ]
  %3767 = fmul fast float %3654, 9.843750e-01
  %3768 = fadd fast float %3767, 7.812500e-03
  %3769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3768, float %3086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 2
  %3771 = extractvalue %dx.types.ResRet.f32 %3769, 3
  %3772 = fmul fast float %3770, %1808
  %3773 = fmul fast float %3770, %1809
  %3774 = fmul fast float %3770, %1816
  %3775 = fadd fast float %3772, %3771
  %3776 = fadd fast float %3773, %3771
  %3777 = fadd fast float %3774, %3771
  br i1 %3096, label %3778, label %3801

; <label>:3778                                    ; preds = %3763
  %3779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1182, float %3654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.ResRet.f32 %3779, 2
  %3783 = fadd fast float %3780, -5.000000e-01
  %3784 = fadd fast float %3781, -5.000000e-01
  %3785 = fadd fast float %3782, -5.000000e-01
  %3786 = fmul fast float %1808, 4.000000e+00
  %3787 = fmul fast float %3786, %3731
  %3788 = fmul fast float %3787, %3783
  %3789 = fmul fast float %1809, 4.000000e+00
  %3790 = fmul fast float %3789, %3732
  %3791 = fmul fast float %3790, %3784
  %3792 = fmul fast float %1816, 4.000000e+00
  %3793 = fmul fast float %3792, %3733
  %3794 = fmul fast float %3793, %3785
  %3795 = fadd fast float %3788, %3775
  %3796 = fadd fast float %3791, %3776
  %3797 = fadd fast float %3794, %3777
  %3798 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3799 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3800 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  br label %3801

; <label>:3801                                    ; preds = %3778, %3763
  %3802 = phi float [ %3798, %3778 ], [ %3775, %3763 ]
  %3803 = phi float [ %3799, %3778 ], [ %3776, %3763 ]
  %3804 = phi float [ %3800, %3778 ], [ %3777, %3763 ]
  %3805 = call float @dx.op.binary.f32(i32 35, float %3803, float %3804)  ; FMax(a,b)
  %3806 = call float @dx.op.binary.f32(i32 35, float %3802, float %3805)  ; FMax(a,b)
  %3807 = fsub fast float 1.000000e+00, %3806
  %3808 = fmul fast float %3764, %3722
  %3809 = fmul fast float %3765, %3722
  %3810 = fmul fast float %3766, %3722
  %3811 = fsub fast float 1.000000e+00, %3655
  %3812 = bitcast float %3811 to i32
  %3813 = sitofp i32 %3812 to float
  %3814 = fmul fast float %3813, 5.000000e+00
  %3815 = fadd fast float %3814, 0xC1EFBF8940000000
  %3816 = fptosi float %3815 to i32
  %3817 = bitcast i32 %3816 to float
  %3818 = fmul fast float %3817, %1181
  %3819 = fmul fast float %3807, %3818
  %3820 = fmul fast float %3819, %3146
  %3821 = fmul fast float %3819, %3147
  %3822 = fmul fast float %3819, %3148
  %3823 = fadd fast float %3820, %3808
  %3824 = fadd fast float %3821, %3809
  %3825 = fadd fast float %3822, %3810
  %3826 = fmul fast float %3643, %1202
  %3827 = fmul fast float %3826, %3661
  %3828 = fmul fast float %3827, %3807
  %3829 = fmul fast float %3644, %1202
  %3830 = fmul fast float %3829, %3661
  %3831 = fmul fast float %3830, %3807
  %3832 = fmul fast float %3645, %1202
  %3833 = fmul fast float %3832, %3661
  %3834 = fmul fast float %3833, %3807
  %3835 = fadd fast float %3828, %3482
  %3836 = fadd fast float %3831, %3483
  %3837 = fadd fast float %3834, %3484
  %3838 = fmul fast float %3827, %3823
  %3839 = fmul fast float %3830, %3824
  %3840 = fmul fast float %3833, %3825
  %3841 = fadd fast float %3838, %3479
  %3842 = fadd fast float %3839, %3480
  %3843 = fadd fast float %3840, %3481
  br label %3557

; <label>:3844                                    ; preds = %3557
  br label %3845

; <label>:3845                                    ; preds = %3844, %3445
  %3846 = phi float [ %3447, %3445 ], [ %3558, %3844 ]
  %3847 = phi float [ %3448, %3445 ], [ %3559, %3844 ]
  %3848 = phi float [ %3449, %3445 ], [ %3560, %3844 ]
  %3849 = phi float [ %3450, %3445 ], [ %3561, %3844 ]
  %3850 = phi float [ %3451, %3445 ], [ %3562, %3844 ]
  %3851 = phi float [ %3452, %3445 ], [ %3563, %3844 ]
  %3852 = add i32 %3446, 1
  %3853 = icmp ugt i32 %3852, %3442
  br i1 %3853, label %3854, label %3445

; <label>:3854                                    ; preds = %3845
  br label %3855

; <label>:3855                                    ; preds = %3854, %3421, %3411
  %3856 = phi float [ %3412, %3411 ], [ %3412, %3421 ], [ %3846, %3854 ]
  %3857 = phi float [ %3413, %3411 ], [ %3413, %3421 ], [ %3847, %3854 ]
  %3858 = phi float [ %3414, %3411 ], [ %3414, %3421 ], [ %3848, %3854 ]
  %3859 = phi float [ %3415, %3411 ], [ %3415, %3421 ], [ %3849, %3854 ]
  %3860 = phi float [ %3416, %3411 ], [ %3416, %3421 ], [ %3850, %3854 ]
  %3861 = phi float [ %3417, %3411 ], [ %3417, %3421 ], [ %3851, %3854 ]
  %3862 = call float @dx.op.unary.f32(i32 24, float %1805)  ; Sqrt(value)
  %3863 = call float @dx.op.unary.f32(i32 24, float %1806)  ; Sqrt(value)
  %3864 = call float @dx.op.unary.f32(i32 24, float %1807)  ; Sqrt(value)
  %3865 = fmul fast float %3862, %3859
  %3866 = fmul fast float %3863, %3860
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 0
  br i1 %175, label %3869, label %3898

; <label>:3869                                    ; preds = %3855
  %3870 = fadd fast float %3861, %1179
  %3871 = fmul fast float %3870, %1180
  %3872 = fsub fast float 1.000000e+00, %1180
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 3
  %3876 = fmul fast float %3875, %3873
  %3877 = fadd fast float %3876, %3871
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3880 = fmul fast float %3879, %3152
  %3881 = fsub fast float %3877, %3880
  %3882 = fadd fast float %3866, %3865
  %3883 = fmul fast float %3868, %3882
  %3884 = extractvalue %dx.types.CBufRet.f32 %3874, 1
  %3885 = fsub fast float %3881, %3884
  %3886 = extractvalue %dx.types.CBufRet.f32 %3874, 2
  %3887 = fmul fast float %3885, %3886
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3891 = fsub fast float %3888, %3890
  %3892 = fmul fast float %3891, 1.000000e+01
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = fadd fast float %1178, -1.000000e+00
  %3895 = fmul fast float %3893, %3894
  %3896 = fadd fast float %3895, 1.000000e+00
  %3897 = fmul fast float %3896, %3888
  br label %3913

; <label>:3898                                    ; preds = %3855
  %3899 = fmul fast float %3864, %3861
  %3900 = fmul fast float %3868, %3865
  %3901 = fmul fast float %3868, %3866
  %3902 = fmul fast float %3899, %3868
  %3903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.i32 %3903, 0
  %3905 = and i32 %3904, 32
  %3906 = icmp eq i32 %3905, 0
  br i1 %3906, label %3913, label %3907

; <label>:3907                                    ; preds = %3898
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = fmul fast float %3909, 0x3FE99999A0000000
  %3911 = fadd fast float %3909, %3900
  %3912 = fadd fast float %3910, %3902
  br label %3913

; <label>:3913                                    ; preds = %3907, %3898, %3869
  %3914 = phi float [ %3883, %3869 ], [ %3911, %3907 ], [ %3900, %3898 ]
  %3915 = phi float [ %3897, %3869 ], [ %3901, %3907 ], [ %3901, %3898 ]
  %3916 = phi float [ %3896, %3869 ], [ %3912, %3907 ], [ %3902, %3898 ]
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = fmul fast float %3918, %3857
  %3920 = fmul fast float %3918, %3858
  %3921 = fadd fast float %3857, %3856
  %3922 = select i1 %175, float %3921, float %3856
  %3923 = fmul float %3922, %3918
  %3924 = select i1 %175, float 0.000000e+00, float %3919
  %3925 = select i1 %175, float 0.000000e+00, float %3920
  %3926 = fmul fast float %3914, %3862
  %3927 = fmul fast float %3915, %3863
  %3928 = fmul fast float %3916, %3864
  %3929 = fadd fast float %3923, %3926
  %3930 = fadd fast float %3924, %3927
  %3931 = fadd fast float %3925, %3928
  %3932 = select i1 %175, float %3915, float %3930
  %3933 = select i1 %175, float %3916, float %3931
  %3934 = call float @dx.op.binary.f32(i32 36, float %3929, float 3.225500e+04)  ; FMin(a,b)
  %3935 = call float @dx.op.binary.f32(i32 36, float %3932, float 3.225500e+04)  ; FMin(a,b)
  %3936 = call float @dx.op.binary.f32(i32 36, float %3933, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3935)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
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
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!46 = !{!47, !48, !49, !50}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!51 = !{[26 x i32] [i32 24, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !69}
!53 = !{!54, !67, null}
!54 = !{!55, !58, !59, !61, !63, !64, !66}
!55 = !{i32 0, !"SV_Position", i8 9, i8 3, !56, i8 4, i32 1, i8 4, i32 0, i8 0, !57}
!56 = !{i32 0}
!57 = !{i32 3, i32 11}
!58 = !{i32 1, !"COLOR", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!59 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 2, i32 2, i8 0, !60}
!60 = !{i32 3, i32 3}
!61 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 3, i8 0, !62}
!62 = !{i32 3, i32 7}
!63 = !{i32 4, !"NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 4, i8 0, !62}
!64 = !{i32 5, !"TANGENT", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!65 = !{i32 3, i32 15}
!66 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

