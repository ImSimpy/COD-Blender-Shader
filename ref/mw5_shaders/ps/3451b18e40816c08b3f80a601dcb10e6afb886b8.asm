;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    y  
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           7     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 11c2a643a48613f2267f069f67255a64
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
; NORMAL_TRANSFORM         1                 linear       
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4             t0     1
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
; Number of inputs: 29, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = fmul fast float %69, %63
  %71 = fmul fast float %69, %64
  %72 = fmul fast float %53, %50
  %73 = fmul fast float %54, %49
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %54, %48
  %76 = fmul fast float %52, %50
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %52, %49
  %79 = fmul fast float %53, %48
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %74, %51
  %82 = fmul fast float %77, %51
  %83 = fmul fast float %80, %51
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %87 = fmul fast float %85, 2.000000e+00
  %88 = fmul fast float %87, %70
  %89 = fmul fast float %86, 2.000000e+00
  %90 = fmul fast float %89, %71
  %91 = fsub fast float 1.000000e+00, %88
  %92 = fsub fast float 1.000000e+00, %90
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %91, %94
  %98 = fmul fast float %91, %95
  %99 = fmul fast float %91, %96
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %92, %101
  %105 = fmul fast float %92, %102
  %106 = fmul fast float %92, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fadd fast float %104, %108
  %112 = fadd fast float %111, %97
  %113 = fadd fast float %105, %109
  %114 = fadd fast float %113, %98
  %115 = fadd fast float %106, %110
  %116 = fadd fast float %115, %99
  %117 = fmul fast float %112, %65
  %118 = fmul fast float %114, %65
  %119 = fmul fast float %116, %65
  %120 = fadd fast float %57, 5.000000e-01
  %121 = fptoui float %120 to i32
  %122 = shl i32 %121, 3
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = or i32 %122, 4
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %124, 8191
  %129 = lshr i32 %124, 13
  %130 = and i32 %129, 8191
  %131 = lshr i32 %124, 26
  %132 = and i32 %127, 65535
  %133 = lshr i32 %127, 16
  %134 = uitofp i32 %132 to float
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %137 = uitofp i32 %133 to float
  %138 = uitofp i32 %128 to float
  %139 = fmul fast float %136, %138
  %140 = uitofp i32 %130 to float
  %141 = fmul fast float %136, %140
  %142 = fmul fast float %136, %55
  %143 = fmul fast float %142, %134
  %144 = fmul fast float %136, %56
  %145 = fmul fast float %144, %137
  %146 = fadd fast float %143, %139
  %147 = fadd fast float %141, %145
  %148 = uitofp i32 %131 to float
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %150, %70
  %153 = fmul fast float %151, %71
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = and i32 %155, 114688
  %157 = icmp ne i32 %156, 0
  %158 = select i1 %157, float %152, float 0.000000e+00
  %159 = select i1 %157, float %153, float 0.000000e+00
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fmul fast float %161, 2.550000e+02
  %163 = fptoui float %162 to i32
  %164 = select i1 %157, i32 %163, i32 0
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 3
  %168 = and i32 %167, 3
  %169 = icmp ne i32 %168, 0
  %170 = and i32 %167, 4
  %171 = icmp ne i32 %170, 0
  %172 = and i1 %169, %171
  br i1 %172, label %173, label %184

; <label>:173                                     ; preds = %0
  %174 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %175 = fmul fast float %174, %71
  %176 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %177 = fmul fast float %176, %70
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %177, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = fsub fast float 1.000000e+00, %179
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = fcmp fast olt float %180, %182
  br label %187

; <label>:184                                     ; preds = %0
  %185 = icmp eq i32 %170, 0
  %186 = and i1 %169, %185
  br label %187

; <label>:187                                     ; preds = %184, %173
  %188 = phi i1 [ %183, %173 ], [ %186, %184 ]
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = shl i32 %190, 4
  %192 = and i32 %191, 32752
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = lshr i32 %190, 7
  %195 = and i32 %194, 32752
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = lshr i32 %190, 22
  %198 = shl nuw nsw i32 %197, 5
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %201, 8
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = lshr i32 %201, 16
  %210 = and i32 %209, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F70101020000000
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = shl i32 %218, 4
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %218, 7
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %218, 22
  %226 = shl nuw nsw i32 %225, 5
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %229, 8
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %229, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = fmul fast float %250, 0x3F50624DE0000000
  %254 = fmul fast float %252, 0x3F50624DE0000000
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = lshr i32 %256, 20
  %258 = and i32 %257, 3
  %259 = add nuw nsw i32 %258, 1
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = or i32 %263, %261
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %709, label %266

; <label>:266                                     ; preds = %187
  %267 = lshr i32 %216, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %268, 0x3F50624DE0000000
  %270 = and i32 %216, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %271, 0x3F50624DE0000000
  %273 = lshr i32 %214, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = and i32 %214, 65535
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = lshr i32 %278, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %280, 0x3F50624DE0000000
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = lshr i32 %283, 16
  %285 = and i32 %284, 255
  %286 = lshr i32 %283, 24
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = lshr i32 %294, 22
  %296 = shl nuw nsw i32 %295, 5
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = shl i32 %294, 4
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %294, 7
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %306 = fmul fast float %305, 1.000000e+03
  %307 = fmul fast float %272, %306
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = fadd fast float %308, %276
  %310 = fmul fast float %269, %306
  %311 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  %312 = fadd fast float %311, %274
  %313 = fmul fast float %281, %306
  %314 = call float @dx.op.unary.f32(i32 22, float %313)  ; Frc(value)
  %315 = fmul fast float %314, 0x401921FB60000000
  %316 = fadd fast float %315, %297
  %317 = call float @dx.op.unary.f32(i32 13, float %316)  ; Sin(value)
  %318 = call float @dx.op.unary.f32(i32 12, float %316)  ; Cos(value)
  %319 = fsub fast float -0.000000e+00, %317
  %320 = fadd fast float %58, -5.000000e-01
  %321 = fadd fast float %59, -5.000000e-01
  %322 = fmul fast float %290, %320
  %323 = fmul fast float %292, %321
  %324 = fadd fast float %322, 5.000000e-01
  %325 = fadd fast float %323, 5.000000e-01
  %326 = fmul fast float %300, %324
  %327 = fmul fast float %303, %325
  %328 = fmul fast float %318, %326
  %329 = call float @dx.op.tertiary.f32(i32 46, float %319, float %327, float %328)  ; FMad(a,b,c)
  %330 = fmul fast float %317, %326
  %331 = call float @dx.op.tertiary.f32(i32 46, float %318, float %327, float %330)  ; FMad(a,b,c)
  %332 = fadd fast float %309, %329
  %333 = fadd fast float %312, %331
  %334 = icmp ugt i32 %285, 1
  %335 = icmp ugt i32 %283, 33554431
  %336 = or i1 %335, %334
  br i1 %336, label %337, label %361

; <label>:337                                     ; preds = %266
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = lshr i32 %339, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %305, %341
  %343 = call float @dx.op.unary.f32(i32 22, float %342)  ; Frc(value)
  %344 = mul nuw nsw i32 %285, %286
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %343, %345
  %347 = call float @dx.op.unary.f32(i32 27, float %346)  ; Round_ni(value)
  %348 = fptoui float %347 to i32
  %349 = urem i32 %348, %285
  %350 = udiv i32 %348, %286
  %351 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %352 = call float @dx.op.unary.f32(i32 22, float %333)  ; Frc(value)
  %353 = uitofp i32 %349 to float
  %354 = uitofp i32 %350 to float
  %355 = fadd fast float %351, %353
  %356 = fadd fast float %352, %354
  %357 = uitofp i32 %285 to float
  %358 = uitofp i32 %286 to float
  %359 = fdiv fast float %355, %357
  %360 = fdiv fast float %356, %358
  br label %361

; <label>:361                                     ; preds = %337, %266
  %362 = phi float [ %359, %337 ], [ %332, %266 ]
  %363 = phi float [ %360, %337 ], [ %333, %266 ]
  %364 = and i32 %261, 16
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %557, label %366

; <label>:366                                     ; preds = %361
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = add i32 %368, 0
  %370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %370, %dx.types.Handle %66, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  %376 = and i32 %283, 255
  %377 = uitofp i32 %376 to float
  %378 = lshr i32 %283, 8
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %375, %377
  %382 = fadd fast float %381, %380
  %383 = fmul fast float %382, 0x3F70101000000000
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 512
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %395, label %388

; <label>:388                                     ; preds = %366
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = add i32 %390, 0
  %392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %392, %dx.types.Handle %67, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  br label %395

; <label>:395                                     ; preds = %388, %366
  %396 = phi float [ %394, %388 ], [ 1.000000e+00, %366 ]
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 33554432
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %504, label %401

; <label>:401                                     ; preds = %395
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = lshr i32 %413, 24
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = and i32 %413, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %413, 8
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = lshr i32 %413, 16
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = lshr i32 %429, 24
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = and i32 %429, 255
  %434 = uitofp i32 %433 to float
  %435 = fmul fast float %434, 0x3F70101020000000
  %436 = lshr i32 %429, 8
  %437 = and i32 %436, 255
  %438 = uitofp i32 %437 to float
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = lshr i32 %429, 16
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = bitcast float %372 to i32
  %445 = ashr i32 %444, 1
  %446 = sub nsw i32 1597463174, %445
  %447 = bitcast i32 %446 to float
  %448 = fmul fast float %372, 5.000000e-01
  %449 = fmul fast float %447, %447
  %450 = fmul fast float %449, %448
  %451 = fsub fast float 1.500000e+00, %450
  %452 = fmul fast float %447, %372
  %453 = fmul fast float %452, %451
  %454 = bitcast float %373 to i32
  %455 = ashr i32 %454, 1
  %456 = sub nsw i32 1597463174, %455
  %457 = bitcast i32 %456 to float
  %458 = fmul fast float %373, 5.000000e-01
  %459 = fmul fast float %457, %457
  %460 = fmul fast float %459, %458
  %461 = fsub fast float 1.500000e+00, %460
  %462 = fmul fast float %457, %373
  %463 = fmul fast float %462, %461
  %464 = bitcast float %374 to i32
  %465 = ashr i32 %464, 1
  %466 = sub nsw i32 1597463174, %465
  %467 = bitcast i32 %466 to float
  %468 = fmul fast float %374, 5.000000e-01
  %469 = fmul fast float %467, %467
  %470 = fmul fast float %469, %468
  %471 = fsub fast float 1.500000e+00, %470
  %472 = fmul fast float %467, %374
  %473 = fmul fast float %472, %471
  %474 = fsub fast float %453, %435
  %475 = fsub fast float %463, %439
  %476 = fsub fast float %473, %443
  %477 = fmul fast float %474, %405
  %478 = fmul fast float %475, %407
  %479 = fmul fast float %476, %411
  %480 = fadd fast float %477, %419
  %481 = fadd fast float %478, %423
  %482 = fadd fast float %479, %427
  %483 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %484 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  %485 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %486 = fmul fast float %483, %483
  %487 = fmul fast float %484, %484
  %488 = fmul fast float %485, %485
  %489 = fsub fast float %486, %372
  %490 = fsub fast float %487, %373
  %491 = fsub fast float %488, %374
  %492 = fmul fast float %489, %396
  %493 = fmul fast float %490, %396
  %494 = fmul fast float %491, %396
  %495 = fadd fast float %492, %372
  %496 = fadd fast float %493, %373
  %497 = fadd fast float %494, %374
  %498 = fadd fast float %416, %383
  %499 = fsub fast float %498, %432
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %501 = fsub fast float %500, %383
  %502 = fmul fast float %501, %396
  %503 = fadd fast float %502, %383
  br label %557

; <label>:504                                     ; preds = %395
  %505 = and i32 %398, 134217728
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %541, label %507

; <label>:507                                     ; preds = %504
  %508 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %509 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %510 = call float @dx.op.unary.f32(i32 24, float %212)  ; Sqrt(value)
  %511 = fadd fast float %508, -5.000000e-01
  %512 = fadd fast float %509, -5.000000e-01
  %513 = fadd fast float %510, -5.000000e-01
  %514 = fmul fast float %511, %396
  %515 = fmul fast float %512, %396
  %516 = fmul fast float %513, %396
  %517 = fadd fast float %514, 5.000000e-01
  %518 = fadd fast float %515, 5.000000e-01
  %519 = fadd fast float %516, 5.000000e-01
  %520 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %521 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %522 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %523 = fmul fast float %517, 2.000000e+00
  %524 = fsub fast float 1.000000e+00, %523
  %525 = fmul fast float %524, %520
  %526 = fadd fast float %525, %523
  %527 = fmul fast float %526, %520
  %528 = fmul fast float %518, 2.000000e+00
  %529 = fsub fast float 1.000000e+00, %528
  %530 = fmul fast float %529, %521
  %531 = fadd fast float %530, %528
  %532 = fmul fast float %531, %521
  %533 = fmul fast float %519, 2.000000e+00
  %534 = fsub fast float 1.000000e+00, %533
  %535 = fmul fast float %534, %522
  %536 = fadd fast float %535, %533
  %537 = fmul fast float %536, %522
  %538 = fmul fast float %527, %527
  %539 = fmul fast float %532, %532
  %540 = fmul fast float %537, %537
  br label %557

; <label>:541                                     ; preds = %504
  %542 = fmul fast float %204, %204
  %543 = fmul fast float %208, %208
  %544 = fmul fast float %212, %212
  %545 = fadd fast float %542, -1.000000e+00
  %546 = fadd fast float %543, -1.000000e+00
  %547 = fadd fast float %544, -1.000000e+00
  %548 = fmul fast float %396, %545
  %549 = fmul fast float %396, %546
  %550 = fmul fast float %396, %547
  %551 = fadd fast float %548, 1.000000e+00
  %552 = fadd fast float %549, 1.000000e+00
  %553 = fadd fast float %550, 1.000000e+00
  %554 = fmul fast float %551, %372
  %555 = fmul fast float %552, %373
  %556 = fmul fast float %553, %374
  br label %557

; <label>:557                                     ; preds = %541, %507, %401, %361
  %558 = phi float [ %503, %401 ], [ %383, %507 ], [ %383, %541 ], [ 0x3FA23C0BE0000000, %361 ]
  %559 = phi float [ %495, %401 ], [ %538, %507 ], [ %554, %541 ], [ 1.000000e+00, %361 ]
  %560 = phi float [ %496, %401 ], [ %539, %507 ], [ %555, %541 ], [ 1.000000e+00, %361 ]
  %561 = phi float [ %497, %401 ], [ %540, %507 ], [ %556, %541 ], [ 1.000000e+00, %361 ]
  %562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.i32 %562, 1
  %564 = and i32 %563, 1
  %565 = icmp ne i32 %564, 0
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 32
  %569 = icmp ne i32 %568, 0
  %570 = and i1 %565, %569
  %571 = select i1 %570, float 1.000000e+00, float %559
  %572 = select i1 %570, float 0x3FD3333340000000, float %560
  %573 = select i1 %570, float 0x3FD3333340000000, float %561
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 32
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %647, label %578

; <label>:578                                     ; preds = %557
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 224, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = add i32 %582, 0
  %584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %584, %dx.types.Handle %66, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = extractvalue %dx.types.ResRet.f32 %585, 3
  %590 = and i32 %580, 255
  %591 = uitofp i32 %590 to float
  %592 = lshr i32 %580, 8
  %593 = and i32 %592, 255
  %594 = uitofp i32 %593 to float
  %595 = lshr i32 %580, 16
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101000000000
  %599 = fmul fast float %586, %591
  %600 = fadd fast float %599, %594
  %601 = fmul fast float %600, 0x3F70101000000000
  %602 = fadd fast float %587, -5.000000e-01
  %603 = fadd fast float %589, -5.000000e-01
  %604 = fmul fast float %602, %598
  %605 = fmul fast float %603, %598
  %606 = fadd fast float %604, 5.000000e-01
  %607 = fadd fast float %605, 5.000000e-01
  %608 = fmul fast float %606, 2.000000e+00
  %609 = fadd fast float %608, -1.000000e+00
  %610 = fmul fast float %607, 2.000000e+00
  %611 = fadd fast float %610, -1.000000e+00
  %612 = fadd fast float %609, %611
  %613 = fmul fast float %612, 5.000000e-01
  %614 = fsub fast float %609, %611
  %615 = fmul fast float %614, 5.000000e-01
  %616 = call float @dx.op.unary.f32(i32 6, float %613)  ; FAbs(value)
  %617 = fsub fast float 1.000000e+00, %616
  %618 = call float @dx.op.unary.f32(i32 6, float %615)  ; FAbs(value)
  %619 = fsub fast float %617, %618
  %620 = call float @dx.op.dot3.f32(i32 55, float %613, float %615, float %619, float %613, float %615, float %619)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = call float @dx.op.unary.f32(i32 25, float %620)  ; Rsqrt(value)
  %622 = fmul fast float %613, %621
  %623 = fmul fast float %615, %621
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 67108864
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %643, label %628

; <label>:628                                     ; preds = %578
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 65535
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %630, 16
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = fsub fast float %601, %638
  %640 = fmul fast float %639, %632
  %641 = fadd fast float %640, %636
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  br label %643

; <label>:643                                     ; preds = %628, %578
  %644 = phi float [ %642, %628 ], [ %601, %578 ]
  %645 = call float @dx.op.dot2.f32(i32 54, float %622, float %623, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %646 = call float @dx.op.dot2.f32(i32 54, float %622, float %623, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %647

; <label>:647                                     ; preds = %643, %557
  %648 = phi float [ %644, %643 ], [ 0x3FD6666660000000, %557 ]
  %649 = phi float [ %645, %643 ], [ 0.000000e+00, %557 ]
  %650 = phi float [ %646, %643 ], [ 0.000000e+00, %557 ]
  %651 = phi float [ %588, %643 ], [ 1.000000e+00, %557 ]
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = lshr i32 %653, 22
  %655 = shl nuw nsw i32 %654, 5
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = and i32 %658, 64
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %693, label %661

; <label>:661                                     ; preds = %647
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %663, 0
  %665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 131072
  %669 = icmp eq i32 %668, 0
  %670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %665, %dx.types.Handle %66, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = fmul fast float %671, %193
  %675 = fmul fast float %672, %196
  %676 = fmul fast float %673, %199
  br i1 %669, label %683, label %677

; <label>:677                                     ; preds = %661
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = fmul fast float %679, %674
  %681 = fmul fast float %679, %675
  %682 = fmul fast float %679, %676
  br label %683

; <label>:683                                     ; preds = %677, %661
  %684 = phi float [ %680, %677 ], [ %674, %661 ]
  %685 = phi float [ %681, %677 ], [ %675, %661 ]
  %686 = phi float [ %682, %677 ], [ %676, %661 ]
  %687 = fmul fast float %684, %656
  %688 = select i1 %188, float %687, float %684
  %689 = call float @dx.op.dot3.f32(i32 55, float %688, float %685, float %686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = select i1 %188, float 0.000000e+00, float %684
  %691 = select i1 %188, float %689, float %685
  %692 = select i1 %188, float 0.000000e+00, float %686
  br label %693

; <label>:693                                     ; preds = %683, %647
  %694 = phi float [ %690, %683 ], [ 0.000000e+00, %647 ]
  %695 = phi float [ %691, %683 ], [ 0.000000e+00, %647 ]
  %696 = phi float [ %692, %683 ], [ 0.000000e+00, %647 ]
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = lshr i32 %698, 8
  %702 = and i32 %701, 255
  %703 = uitofp i32 %702 to float
  %704 = call float @dx.op.dot3.f32(i32 55, float %571, float %572, float %573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %705 = fmul fast float %703, %704
  %706 = fadd fast float %705, %700
  %707 = fmul fast float %706, 0x3F70101020000000
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  br label %709

; <label>:709                                     ; preds = %693, %187
  %710 = phi float [ %649, %693 ], [ 0.000000e+00, %187 ]
  %711 = phi float [ %650, %693 ], [ 0.000000e+00, %187 ]
  %712 = phi float [ %571, %693 ], [ 0.000000e+00, %187 ]
  %713 = phi float [ %572, %693 ], [ 0.000000e+00, %187 ]
  %714 = phi float [ %573, %693 ], [ 0.000000e+00, %187 ]
  %715 = phi float [ %694, %693 ], [ 0.000000e+00, %187 ]
  %716 = phi float [ %695, %693 ], [ 0.000000e+00, %187 ]
  %717 = phi float [ %696, %693 ], [ 0.000000e+00, %187 ]
  %718 = phi float [ %558, %693 ], [ 0.000000e+00, %187 ]
  %719 = phi float [ 1.000000e+00, %693 ], [ 0.000000e+00, %187 ]
  %720 = phi float [ %648, %693 ], [ 0.000000e+00, %187 ]
  %721 = phi float [ %651, %693 ], [ 0.000000e+00, %187 ]
  %722 = phi float [ %708, %693 ], [ 0.000000e+00, %187 ]
  %723 = icmp ult i32 %259, 2
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = or i32 %727, %725
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %1533, label %730

; <label>:730                                     ; preds = %709
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = lshr i32 %732, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = fmul fast float %734, 0x3F50624DE0000000
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = lshr i32 %737, 16
  %739 = and i32 %738, 255
  %740 = lshr i32 %737, 24
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 65535
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = lshr i32 %742, 16
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 22
  %750 = shl nuw nsw i32 %749, 5
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = shl i32 %748, 4
  %753 = and i32 %752, 32752
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %748, 7
  %756 = and i32 %755, 32752
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %760 = fmul fast float %759, 1.000000e+03
  %761 = fmul fast float %253, %760
  %762 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %763 = fadd fast float %762, %244
  %764 = fmul fast float %254, %760
  %765 = call float @dx.op.unary.f32(i32 22, float %764)  ; Frc(value)
  %766 = fadd fast float %765, %246
  %767 = fmul fast float %735, %760
  %768 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %769 = fmul fast float %768, 0x401921FB60000000
  %770 = fadd fast float %769, %751
  %771 = call float @dx.op.unary.f32(i32 13, float %770)  ; Sin(value)
  %772 = call float @dx.op.unary.f32(i32 12, float %770)  ; Cos(value)
  %773 = fsub fast float -0.000000e+00, %771
  %774 = fadd fast float %60, -5.000000e-01
  %775 = fadd fast float %61, -5.000000e-01
  %776 = fmul fast float %744, %774
  %777 = fmul fast float %746, %775
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fmul fast float %754, %778
  %781 = fmul fast float %757, %779
  %782 = fmul fast float %772, %780
  %783 = call float @dx.op.tertiary.f32(i32 46, float %773, float %781, float %782)  ; FMad(a,b,c)
  %784 = fmul fast float %771, %780
  %785 = call float @dx.op.tertiary.f32(i32 46, float %772, float %781, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %763, %783
  %787 = fadd fast float %766, %785
  %788 = icmp ugt i32 %739, 1
  %789 = icmp ugt i32 %737, 33554431
  %790 = or i1 %789, %788
  br i1 %790, label %791, label %815

; <label>:791                                     ; preds = %730
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = lshr i32 %793, 16
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = fmul fast float %759, %795
  %797 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %798 = mul nuw nsw i32 %739, %740
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %797, %799
  %801 = call float @dx.op.unary.f32(i32 27, float %800)  ; Round_ni(value)
  %802 = fptoui float %801 to i32
  %803 = urem i32 %802, %739
  %804 = udiv i32 %802, %740
  %805 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %806 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %807 = uitofp i32 %803 to float
  %808 = uitofp i32 %804 to float
  %809 = fadd fast float %805, %807
  %810 = fadd fast float %806, %808
  %811 = uitofp i32 %739 to float
  %812 = uitofp i32 %740 to float
  %813 = fdiv fast float %809, %811
  %814 = fdiv fast float %810, %812
  br label %815

; <label>:815                                     ; preds = %791, %730
  %816 = phi float [ %813, %791 ], [ %786, %730 ]
  %817 = phi float [ %814, %791 ], [ %787, %730 ]
  %818 = and i32 %725, 16777216
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %929, label %820

; <label>:820                                     ; preds = %815
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %824 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %825 = fadd fast float %822, %117
  %826 = fadd fast float %823, %118
  %827 = fadd fast float %824, %119
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %831 = icmp eq i32 %43, 65535
  br i1 %831, label %926, label %832

; <label>:832                                     ; preds = %820
  %833 = lshr i32 %43, 1
  %834 = shl i32 %833, 2
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %43, 1
  %838 = icmp ne i32 %837, 0
  %839 = lshr i32 %836, 16
  %840 = and i32 %836, 65535
  %841 = select i1 %838, i32 %839, i32 %840
  %842 = icmp eq i32 %841, 65535
  br i1 %842, label %922, label %843

; <label>:843                                     ; preds = %832
  %844 = mul nuw nsw i32 %841, 40
  %845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = add nuw nsw i32 %844, 12
  %850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = add nuw nsw i32 %844, 24
  %855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = add nuw nsw i32 %844, 36
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = fsub fast float %825, %846
  %863 = fsub fast float %826, %847
  %864 = fsub fast float %827, %848
  %865 = fmul fast float %861, %862
  %866 = fmul fast float %861, %863
  %867 = fmul fast float %861, %864
  %868 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %869 = call float @dx.op.unary.f32(i32 27, float %866)  ; Round_ni(value)
  %870 = call float @dx.op.unary.f32(i32 27, float %867)  ; Round_ni(value)
  %871 = fadd fast float %868, 5.000000e-01
  %872 = fadd fast float %869, 5.000000e-01
  %873 = fadd fast float %870, 5.000000e-01
  %874 = fmul fast float %871, %851
  %875 = fmul fast float %872, %852
  %876 = fmul fast float %873, %853
  %877 = shl i32 %43, 2
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = add i32 %879, 0
  %881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %882 = call float @dx.op.unary.f32(i32 22, float %874)  ; Frc(value)
  %883 = call float @dx.op.unary.f32(i32 22, float %875)  ; Frc(value)
  %884 = call float @dx.op.unary.f32(i32 22, float %876)  ; Frc(value)
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %881, %dx.types.Handle %40, float %882, float %883, float %884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = fmul fast float %886, 1.023000e+03
  %890 = fmul fast float %887, 1.023000e+03
  %891 = fmul fast float %888, 1.023000e+03
  %892 = fadd fast float %889, 5.000000e-01
  %893 = fadd fast float %890, 5.000000e-01
  %894 = fadd fast float %891, 5.000000e-01
  %895 = call float @dx.op.unary.f32(i32 27, float %892)  ; Round_ni(value)
  %896 = call float @dx.op.unary.f32(i32 27, float %893)  ; Round_ni(value)
  %897 = call float @dx.op.unary.f32(i32 27, float %894)  ; Round_ni(value)
  %898 = fsub fast float %865, %868
  %899 = fsub fast float %866, %869
  %900 = fsub fast float %867, %870
  %901 = fmul fast float %898, 7.500000e-01
  %902 = fmul fast float %899, 7.500000e-01
  %903 = fmul fast float %900, 7.500000e-01
  %904 = fadd fast float %868, 1.250000e-01
  %905 = fadd fast float %904, %901
  %906 = fadd fast float %905, %895
  %907 = fadd fast float %869, 1.250000e-01
  %908 = fadd fast float %907, %902
  %909 = fadd fast float %908, %896
  %910 = fadd fast float %870, 1.250000e-01
  %911 = fadd fast float %910, %903
  %912 = fadd fast float %911, %897
  %913 = fmul fast float %906, %856
  %914 = fmul fast float %909, %857
  %915 = fmul fast float %912, %858
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %919, %dx.types.Handle %38, float %913, float %914, float %915, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  br label %922

; <label>:922                                     ; preds = %843, %832
  %923 = phi float [ %921, %843 ], [ -1.000000e+00, %832 ]
  %924 = fadd fast float %923, %830
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  br label %926

; <label>:926                                     ; preds = %922, %820
  %927 = phi float [ %925, %922 ], [ %830, %820 ]
  %928 = fmul fast float %927, %62
  br label %929

; <label>:929                                     ; preds = %926, %815
  %930 = phi float [ %928, %926 ], [ %62, %815 ]
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = and i32 %932, 256
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %979, label %935

; <label>:935                                     ; preds = %929
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = add i32 %937, 0
  %939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %939, %dx.types.Handle %67, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %941 = extractvalue %dx.types.ResRet.f32 %940, 0
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = shl i32 %943, 4
  %945 = and i32 %944, 32752
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = lshr i32 %943, 7
  %948 = and i32 %947, 32752
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = fsub fast float 1.000000e+00, %930
  %951 = call float @dx.op.binary.f32(i32 35, float %950, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %952 = bitcast float %930 to i32
  %953 = sitofp i32 %952 to float
  %954 = fadd fast float %953, 0xC1CFBF8940000000
  %955 = fmul fast float %949, %954
  %956 = fadd fast float %955, 0x41CFBF8940000000
  %957 = fptosi float %956 to i32
  %958 = bitcast i32 %957 to float
  %959 = bitcast float %951 to i32
  %960 = sitofp i32 %959 to float
  %961 = fadd fast float %960, 0xC1CFBF8940000000
  %962 = fmul fast float %961, %949
  %963 = fadd fast float %962, 0x41CFBF8940000000
  %964 = fptosi float %963 to i32
  %965 = bitcast i32 %964 to float
  %966 = fmul fast float %958, %946
  %967 = fmul fast float %965, %946
  %968 = fsub fast float %951, %966
  %969 = fadd fast float %967, %951
  %970 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %971 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %972 = fsub fast float %941, %970
  %973 = fsub fast float %971, %970
  %974 = bitcast float %973 to i32
  %975 = sub nsw i32 2129859010, %974
  %976 = bitcast i32 %975 to float
  %977 = fmul fast float %976, %972
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  br label %979

; <label>:979                                     ; preds = %935, %929
  %980 = phi float [ %978, %935 ], [ %930, %929 ]
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 128
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1000, label %985

; <label>:985                                     ; preds = %979
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = add i32 %987, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %989, %dx.types.Handle %67, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = and i32 %993, 524288
  %995 = icmp ne i32 %994, 0
  %996 = fcmp fast ogt float %991, 0x3FE0101020000000
  %997 = select i1 %996, float 1.000000e+00, float 0.000000e+00
  %998 = select i1 %995, float %997, float %991
  %999 = fmul fast float %998, %980
  br label %1000

; <label>:1000                                    ; preds = %985, %979
  %1001 = phi float [ %999, %985 ], [ %980, %979 ]
  %1002 = fcmp fast ult float %1001, 0x3F70101020000000
  br i1 %1002, label %1533, label %1003

; <label>:1003                                    ; preds = %1000
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 16
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1201, label %1008

; <label>:1008                                    ; preds = %1003
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = add i32 %1012, 0
  %1014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1015 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1014, %dx.types.Handle %66, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = extractvalue %dx.types.ResRet.f32 %1015, 3
  %1020 = and i32 %1010, 255
  %1021 = uitofp i32 %1020 to float
  %1022 = lshr i32 %1010, 8
  %1023 = and i32 %1022, 255
  %1024 = uitofp i32 %1023 to float
  %1025 = fmul fast float %1019, %1021
  %1026 = fadd fast float %1025, %1024
  %1027 = fmul fast float %1026, 0x3F70101000000000
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 512
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1039, label %1032

; <label>:1032                                    ; preds = %1008
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = add i32 %1034, 0
  %1036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1036, %dx.types.Handle %67, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  br label %1039

; <label>:1039                                    ; preds = %1032, %1008
  %1040 = phi float [ %1038, %1032 ], [ 1.000000e+00, %1008 ]
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 33554432
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1148, label %1045

; <label>:1045                                    ; preds = %1039
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 65535
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = lshr i32 %1047, 16
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 65535
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = lshr i32 %1057, 24
  %1059 = uitofp i32 %1058 to float
  %1060 = fmul fast float %1059, 0x3F70101020000000
  %1061 = and i32 %1057, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = fmul fast float %1062, 0x3F70101020000000
  %1064 = lshr i32 %1057, 8
  %1065 = and i32 %1064, 255
  %1066 = uitofp i32 %1065 to float
  %1067 = fmul fast float %1066, 0x3F70101020000000
  %1068 = lshr i32 %1057, 16
  %1069 = and i32 %1068, 255
  %1070 = uitofp i32 %1069 to float
  %1071 = fmul fast float %1070, 0x3F70101020000000
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 24
  %1075 = uitofp i32 %1074 to float
  %1076 = fmul fast float %1075, 0x3F70101020000000
  %1077 = and i32 %1073, 255
  %1078 = uitofp i32 %1077 to float
  %1079 = fmul fast float %1078, 0x3F70101020000000
  %1080 = lshr i32 %1073, 8
  %1081 = and i32 %1080, 255
  %1082 = uitofp i32 %1081 to float
  %1083 = fmul fast float %1082, 0x3F70101020000000
  %1084 = lshr i32 %1073, 16
  %1085 = and i32 %1084, 255
  %1086 = uitofp i32 %1085 to float
  %1087 = fmul fast float %1086, 0x3F70101020000000
  %1088 = bitcast float %1016 to i32
  %1089 = ashr i32 %1088, 1
  %1090 = sub nsw i32 1597463174, %1089
  %1091 = bitcast i32 %1090 to float
  %1092 = fmul fast float %1016, 5.000000e-01
  %1093 = fmul fast float %1091, %1091
  %1094 = fmul fast float %1093, %1092
  %1095 = fsub fast float 1.500000e+00, %1094
  %1096 = fmul fast float %1091, %1016
  %1097 = fmul fast float %1096, %1095
  %1098 = bitcast float %1017 to i32
  %1099 = ashr i32 %1098, 1
  %1100 = sub nsw i32 1597463174, %1099
  %1101 = bitcast i32 %1100 to float
  %1102 = fmul fast float %1017, 5.000000e-01
  %1103 = fmul fast float %1101, %1101
  %1104 = fmul fast float %1103, %1102
  %1105 = fsub fast float 1.500000e+00, %1104
  %1106 = fmul fast float %1101, %1017
  %1107 = fmul fast float %1106, %1105
  %1108 = bitcast float %1018 to i32
  %1109 = ashr i32 %1108, 1
  %1110 = sub nsw i32 1597463174, %1109
  %1111 = bitcast i32 %1110 to float
  %1112 = fmul fast float %1018, 5.000000e-01
  %1113 = fmul fast float %1111, %1111
  %1114 = fmul fast float %1113, %1112
  %1115 = fsub fast float 1.500000e+00, %1114
  %1116 = fmul fast float %1111, %1018
  %1117 = fmul fast float %1116, %1115
  %1118 = fsub fast float %1097, %1079
  %1119 = fsub fast float %1107, %1083
  %1120 = fsub fast float %1117, %1087
  %1121 = fmul fast float %1118, %1049
  %1122 = fmul fast float %1119, %1051
  %1123 = fmul fast float %1120, %1055
  %1124 = fadd fast float %1121, %1063
  %1125 = fadd fast float %1122, %1067
  %1126 = fadd fast float %1123, %1071
  %1127 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1128 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1129 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1130 = fmul fast float %1127, %1127
  %1131 = fmul fast float %1128, %1128
  %1132 = fmul fast float %1129, %1129
  %1133 = fsub fast float %1130, %1016
  %1134 = fsub fast float %1131, %1017
  %1135 = fsub fast float %1132, %1018
  %1136 = fmul fast float %1133, %1040
  %1137 = fmul fast float %1134, %1040
  %1138 = fmul fast float %1135, %1040
  %1139 = fadd fast float %1136, %1016
  %1140 = fadd fast float %1137, %1017
  %1141 = fadd fast float %1138, %1018
  %1142 = fadd fast float %1060, %1027
  %1143 = fsub fast float %1142, %1076
  %1144 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1145 = fsub fast float %1144, %1027
  %1146 = fmul fast float %1145, %1040
  %1147 = fadd fast float %1146, %1027
  br label %1201

; <label>:1148                                    ; preds = %1039
  %1149 = and i32 %1042, 134217728
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1185, label %1151

; <label>:1151                                    ; preds = %1148
  %1152 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %1153 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1154 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1155 = fadd fast float %1152, -5.000000e-01
  %1156 = fadd fast float %1153, -5.000000e-01
  %1157 = fadd fast float %1154, -5.000000e-01
  %1158 = fmul fast float %1155, %1040
  %1159 = fmul fast float %1156, %1040
  %1160 = fmul fast float %1157, %1040
  %1161 = fadd fast float %1158, 5.000000e-01
  %1162 = fadd fast float %1159, 5.000000e-01
  %1163 = fadd fast float %1160, 5.000000e-01
  %1164 = call float @dx.op.unary.f32(i32 24, float %1016)  ; Sqrt(value)
  %1165 = call float @dx.op.unary.f32(i32 24, float %1017)  ; Sqrt(value)
  %1166 = call float @dx.op.unary.f32(i32 24, float %1018)  ; Sqrt(value)
  %1167 = fmul fast float %1161, 2.000000e+00
  %1168 = fsub fast float 1.000000e+00, %1167
  %1169 = fmul fast float %1168, %1164
  %1170 = fadd fast float %1169, %1167
  %1171 = fmul fast float %1170, %1164
  %1172 = fmul fast float %1162, 2.000000e+00
  %1173 = fsub fast float 1.000000e+00, %1172
  %1174 = fmul fast float %1173, %1165
  %1175 = fadd fast float %1174, %1172
  %1176 = fmul fast float %1175, %1165
  %1177 = fmul fast float %1163, 2.000000e+00
  %1178 = fsub fast float 1.000000e+00, %1177
  %1179 = fmul fast float %1178, %1166
  %1180 = fadd fast float %1179, %1177
  %1181 = fmul fast float %1180, %1166
  %1182 = fmul fast float %1171, %1171
  %1183 = fmul fast float %1176, %1176
  %1184 = fmul fast float %1181, %1181
  br label %1201

; <label>:1185                                    ; preds = %1148
  %1186 = fmul fast float %232, %232
  %1187 = fmul fast float %236, %236
  %1188 = fmul fast float %240, %240
  %1189 = fadd fast float %1186, -1.000000e+00
  %1190 = fadd fast float %1187, -1.000000e+00
  %1191 = fadd fast float %1188, -1.000000e+00
  %1192 = fmul fast float %1040, %1189
  %1193 = fmul fast float %1040, %1190
  %1194 = fmul fast float %1040, %1191
  %1195 = fadd fast float %1192, 1.000000e+00
  %1196 = fadd fast float %1193, 1.000000e+00
  %1197 = fadd fast float %1194, 1.000000e+00
  %1198 = fmul fast float %1195, %1016
  %1199 = fmul fast float %1196, %1017
  %1200 = fmul fast float %1197, %1018
  br label %1201

; <label>:1201                                    ; preds = %1185, %1151, %1045, %1003
  %1202 = phi float [ %1147, %1045 ], [ %1027, %1151 ], [ %1027, %1185 ], [ 0x3FA23C0BE0000000, %1003 ]
  %1203 = phi float [ %1139, %1045 ], [ %1182, %1151 ], [ %1198, %1185 ], [ 1.000000e+00, %1003 ]
  %1204 = phi float [ %1140, %1045 ], [ %1183, %1151 ], [ %1199, %1185 ], [ 1.000000e+00, %1003 ]
  %1205 = phi float [ %1141, %1045 ], [ %1184, %1151 ], [ %1200, %1185 ], [ 1.000000e+00, %1003 ]
  %1206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.i32 %1206, 1
  %1208 = and i32 %1207, 1
  %1209 = icmp ne i32 %1208, 0
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 32
  %1213 = icmp ne i32 %1212, 0
  %1214 = and i1 %1209, %1213
  %1215 = select i1 %1214, float 1.000000e+00, float %1203
  %1216 = select i1 %1214, float 0x3FD3333340000000, float %1204
  %1217 = select i1 %1214, float 0x3FD3333340000000, float %1205
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 32
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1291, label %1222

; <label>:1222                                    ; preds = %1201
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %1226, 0
  %1228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1228, %dx.types.Handle %66, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = and i32 %1224, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = lshr i32 %1224, 8
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = lshr i32 %1224, 16
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101000000000
  %1243 = fmul fast float %1230, %1235
  %1244 = fadd fast float %1243, %1238
  %1245 = fmul fast float %1244, 0x3F70101000000000
  %1246 = fadd fast float %1231, -5.000000e-01
  %1247 = fadd fast float %1233, -5.000000e-01
  %1248 = fmul fast float %1246, %1242
  %1249 = fmul fast float %1247, %1242
  %1250 = fadd fast float %1248, 5.000000e-01
  %1251 = fadd fast float %1249, 5.000000e-01
  %1252 = fmul fast float %1250, 2.000000e+00
  %1253 = fadd fast float %1252, -1.000000e+00
  %1254 = fmul fast float %1251, 2.000000e+00
  %1255 = fadd fast float %1254, -1.000000e+00
  %1256 = fadd fast float %1253, %1255
  %1257 = fmul fast float %1256, 5.000000e-01
  %1258 = fsub fast float %1253, %1255
  %1259 = fmul fast float %1258, 5.000000e-01
  %1260 = call float @dx.op.unary.f32(i32 6, float %1257)  ; FAbs(value)
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1263 = fsub fast float %1261, %1262
  %1264 = call float @dx.op.dot3.f32(i32 55, float %1257, float %1259, float %1263, float %1257, float %1259, float %1263)  ; Dot3(ax,ay,az,bx,by,bz)
  %1265 = call float @dx.op.unary.f32(i32 25, float %1264)  ; Rsqrt(value)
  %1266 = fmul fast float %1257, %1265
  %1267 = fmul fast float %1259, %1265
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = and i32 %1269, 67108864
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1287, label %1272

; <label>:1272                                    ; preds = %1222
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 65535
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 65535
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = lshr i32 %1274, 16
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = fsub fast float %1245, %1282
  %1284 = fmul fast float %1283, %1276
  %1285 = fadd fast float %1284, %1280
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  br label %1287

; <label>:1287                                    ; preds = %1272, %1222
  %1288 = phi float [ %1286, %1272 ], [ %1245, %1222 ]
  %1289 = call float @dx.op.dot2.f32(i32 54, float %1266, float %1267, float %44, float %45)  ; Dot2(ax,ay,bx,by)
  %1290 = call float @dx.op.dot2.f32(i32 54, float %1266, float %1267, float %46, float %47)  ; Dot2(ax,ay,bx,by)
  br label %1291

; <label>:1291                                    ; preds = %1287, %1201
  %1292 = phi float [ %1288, %1287 ], [ 0x3FD6666660000000, %1201 ]
  %1293 = phi float [ %1289, %1287 ], [ 0.000000e+00, %1201 ]
  %1294 = phi float [ %1290, %1287 ], [ 0.000000e+00, %1201 ]
  %1295 = phi float [ %1232, %1287 ], [ 1.000000e+00, %1201 ]
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 22
  %1299 = shl nuw nsw i32 %1298, 5
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 64
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1337, label %1305

; <label>:1305                                    ; preds = %1291
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %1307, 0
  %1309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 131072
  %1313 = icmp eq i32 %1312, 0
  %1314 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1309, %dx.types.Handle %66, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = fmul fast float %1315, %221
  %1319 = fmul fast float %1316, %224
  %1320 = fmul fast float %1317, %227
  br i1 %1313, label %1327, label %1321

; <label>:1321                                    ; preds = %1305
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1324 = fmul fast float %1323, %1318
  %1325 = fmul fast float %1323, %1319
  %1326 = fmul fast float %1323, %1320
  br label %1327

; <label>:1327                                    ; preds = %1321, %1305
  %1328 = phi float [ %1324, %1321 ], [ %1318, %1305 ]
  %1329 = phi float [ %1325, %1321 ], [ %1319, %1305 ]
  %1330 = phi float [ %1326, %1321 ], [ %1320, %1305 ]
  %1331 = fmul fast float %1328, %1300
  %1332 = select i1 %188, float %1331, float %1328
  %1333 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1329, float %1330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1334 = select i1 %188, float 0.000000e+00, float %1328
  %1335 = select i1 %188, float %1333, float %1329
  %1336 = select i1 %188, float 0.000000e+00, float %1330
  br label %1337

; <label>:1337                                    ; preds = %1327, %1291
  %1338 = phi float [ %1334, %1327 ], [ 0.000000e+00, %1291 ]
  %1339 = phi float [ %1335, %1327 ], [ 0.000000e+00, %1291 ]
  %1340 = phi float [ %1336, %1327 ], [ 0.000000e+00, %1291 ]
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = lshr i32 %1342, 8
  %1346 = and i32 %1345, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = call float @dx.op.dot3.f32(i32 55, float %1215, float %1216, float %1217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1349 = fmul fast float %1347, %1348
  %1350 = fadd fast float %1349, %1344
  %1351 = fmul fast float %1350, 0x3F70101020000000
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  br i1 %723, label %1353, label %1361

; <label>:1353                                    ; preds = %1337
  %1354 = fsub fast float 1.000000e+00, %1001
  %1355 = fmul fast float %1354, %712
  %1356 = fmul fast float %1354, %713
  %1357 = fmul fast float %1354, %714
  %1358 = fmul fast float %1354, %715
  %1359 = fmul fast float %1354, %716
  %1360 = fmul fast float %1354, %717
  br label %1361

; <label>:1361                                    ; preds = %1353, %1337
  %1362 = phi float [ %1355, %1353 ], [ %712, %1337 ]
  %1363 = phi float [ %1356, %1353 ], [ %713, %1337 ]
  %1364 = phi float [ %1357, %1353 ], [ %714, %1337 ]
  %1365 = phi float [ %1358, %1353 ], [ %715, %1337 ]
  %1366 = phi float [ %1359, %1353 ], [ %716, %1337 ]
  %1367 = phi float [ %1360, %1353 ], [ %717, %1337 ]
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = and i32 %1369, 3
  %1371 = icmp eq i32 %1370, 3
  br i1 %1371, label %1450, label %1372

; <label>:1372                                    ; preds = %1361
  %1373 = and i32 %1369, 16
  %1374 = icmp ne i32 %1373, 0
  %1375 = select i1 %1374, float %1001, float 0.000000e+00
  %1376 = icmp eq i32 %1370, 0
  br i1 %1376, label %1377, label %1405

; <label>:1377                                    ; preds = %1372
  %1378 = and i32 %1369, 64
  %1379 = icmp ne i32 %1378, 0
  %1380 = select i1 %1379, float %1001, float 0.000000e+00
  %1381 = fsub fast float %1215, %1362
  %1382 = fsub fast float %1216, %1363
  %1383 = fsub fast float %1217, %1364
  %1384 = fmul fast float %1375, %1381
  %1385 = fmul fast float %1375, %1382
  %1386 = fmul fast float %1375, %1383
  %1387 = fadd fast float %1384, %1362
  %1388 = fadd fast float %1385, %1363
  %1389 = fadd fast float %1386, %1364
  %1390 = fsub fast float %1202, %718
  %1391 = fmul fast float %1375, %1390
  %1392 = fadd fast float %1391, %718
  %1393 = fsub fast float %1338, %1365
  %1394 = fsub fast float %1339, %1366
  %1395 = fsub fast float %1340, %1367
  %1396 = fmul fast float %1380, %1393
  %1397 = fmul fast float %1380, %1394
  %1398 = fmul fast float %1380, %1395
  %1399 = fadd fast float %1396, %1365
  %1400 = fadd fast float %1397, %1366
  %1401 = fadd fast float %1398, %1367
  %1402 = fsub fast float %1352, %722
  %1403 = fmul fast float %1375, %1402
  %1404 = fadd fast float %1403, %722
  br label %1450

; <label>:1405                                    ; preds = %1372
  %1406 = icmp eq i32 %1370, 1
  br i1 %1406, label %1407, label %1420

; <label>:1407                                    ; preds = %1405
  %1408 = fadd fast float %1215, -1.000000e+00
  %1409 = fadd fast float %1216, -1.000000e+00
  %1410 = fadd fast float %1217, -1.000000e+00
  %1411 = fmul fast float %1375, %1408
  %1412 = fmul fast float %1375, %1409
  %1413 = fmul fast float %1375, %1410
  %1414 = fadd fast float %1411, 1.000000e+00
  %1415 = fadd fast float %1412, 1.000000e+00
  %1416 = fadd fast float %1413, 1.000000e+00
  %1417 = fmul fast float %1414, %1362
  %1418 = fmul fast float %1415, %1363
  %1419 = fmul fast float %1416, %1364
  br label %1450

; <label>:1420                                    ; preds = %1405
  %1421 = icmp eq i32 %1370, 2
  br i1 %1421, label %1422, label %1450

; <label>:1422                                    ; preds = %1420
  %1423 = call float @dx.op.unary.f32(i32 24, float %1215)  ; Sqrt(value)
  %1424 = call float @dx.op.unary.f32(i32 24, float %1216)  ; Sqrt(value)
  %1425 = call float @dx.op.unary.f32(i32 24, float %1217)  ; Sqrt(value)
  %1426 = fadd fast float %1423, -5.000000e-01
  %1427 = fadd fast float %1424, -5.000000e-01
  %1428 = fadd fast float %1425, -5.000000e-01
  %1429 = fmul fast float %1426, %1375
  %1430 = fmul fast float %1427, %1375
  %1431 = fmul fast float %1428, %1375
  %1432 = fadd fast float %1429, 5.000000e-01
  %1433 = fadd fast float %1430, 5.000000e-01
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fmul fast float %1432, 2.000000e+00
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul fast float %1436, %1362
  %1438 = fadd fast float %1437, %1435
  %1439 = fmul fast float %1438, %1362
  %1440 = fmul fast float %1433, 2.000000e+00
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = fmul fast float %1441, %1363
  %1443 = fadd fast float %1442, %1440
  %1444 = fmul fast float %1443, %1363
  %1445 = fmul fast float %1434, 2.000000e+00
  %1446 = fsub fast float 1.000000e+00, %1445
  %1447 = fmul fast float %1446, %1364
  %1448 = fadd fast float %1447, %1445
  %1449 = fmul fast float %1448, %1364
  br label %1450

; <label>:1450                                    ; preds = %1422, %1420, %1407, %1377, %1361
  %1451 = phi float [ %1362, %1361 ], [ %1439, %1422 ], [ %1362, %1420 ], [ %1417, %1407 ], [ %1387, %1377 ]
  %1452 = phi float [ %1363, %1361 ], [ %1444, %1422 ], [ %1363, %1420 ], [ %1418, %1407 ], [ %1388, %1377 ]
  %1453 = phi float [ %1364, %1361 ], [ %1449, %1422 ], [ %1364, %1420 ], [ %1419, %1407 ], [ %1389, %1377 ]
  %1454 = phi float [ %1365, %1361 ], [ %1365, %1422 ], [ %1365, %1420 ], [ %1365, %1407 ], [ %1399, %1377 ]
  %1455 = phi float [ %1366, %1361 ], [ %1366, %1422 ], [ %1366, %1420 ], [ %1366, %1407 ], [ %1400, %1377 ]
  %1456 = phi float [ %1367, %1361 ], [ %1367, %1422 ], [ %1367, %1420 ], [ %1367, %1407 ], [ %1401, %1377 ]
  %1457 = phi float [ %718, %1361 ], [ %718, %1422 ], [ %718, %1420 ], [ %718, %1407 ], [ %1392, %1377 ]
  %1458 = phi float [ %722, %1361 ], [ %722, %1422 ], [ %722, %1420 ], [ %722, %1407 ], [ %1404, %1377 ]
  %1459 = and i32 %1369, 12
  %1460 = icmp eq i32 %1459, 12
  br i1 %1460, label %1533, label %1461

; <label>:1461                                    ; preds = %1450
  %1462 = and i32 %1369, 2097184
  %1463 = icmp eq i32 %1462, 2097184
  %1464 = select i1 %1463, float %1001, float 0.000000e+00
  %1465 = and i32 %1369, 4194336
  %1466 = icmp eq i32 %1465, 4194336
  %1467 = select i1 %1466, float %1001, float 0.000000e+00
  %1468 = and i32 %1369, 8388640
  %1469 = icmp eq i32 %1468, 8388640
  %1470 = select i1 %1469, float %1001, float 0.000000e+00
  %1471 = icmp eq i32 %1459, 0
  br i1 %1471, label %1472, label %1485

; <label>:1472                                    ; preds = %1461
  %1473 = fsub fast float %1293, %710
  %1474 = fsub fast float %1294, %711
  %1475 = fmul fast float %1464, %1473
  %1476 = fmul fast float %1464, %1474
  %1477 = fadd fast float %1475, %710
  %1478 = fadd fast float %1476, %711
  %1479 = fsub fast float %1295, %721
  %1480 = fmul fast float %1467, %1479
  %1481 = fadd fast float %1480, %721
  %1482 = fsub fast float %1292, %720
  %1483 = fmul fast float %1470, %1482
  %1484 = fadd fast float %1483, %720
  br label %1533

; <label>:1485                                    ; preds = %1461
  %1486 = icmp eq i32 %1459, 4
  br i1 %1486, label %1487, label %1519

; <label>:1487                                    ; preds = %1485
  %1488 = fmul fast float %1464, %1293
  %1489 = fmul fast float %1464, %1294
  %1490 = fadd fast float %1488, %710
  %1491 = fadd fast float %1489, %711
  %1492 = call float @dx.op.binary.f32(i32 36, float %721, float %1295)  ; FMin(a,b)
  %1493 = fsub fast float %1492, %721
  %1494 = fmul fast float %1493, %1467
  %1495 = fadd fast float %1494, %721
  %1496 = fadd fast float %1292, %720
  %1497 = fmul fast float %1496, 0x3FF337FAE0000000
  %1498 = fmul fast float %720, %720
  %1499 = fmul fast float %1292, %1292
  %1500 = fadd fast float %1499, %1498
  %1501 = fmul fast float %1500, 0x3FE5152B00000000
  %1502 = fmul fast float %720, 0xBFCC1F85E0000000
  %1503 = fmul fast float %1502, %1292
  %1504 = fadd fast float %1503, 0xBFE1363700000000
  %1505 = fadd fast float %1504, %1497
  %1506 = fsub fast float %1505, %1501
  %1507 = fmul fast float %1496, 0x3FBA6F0D00000000
  %1508 = fmul fast float %1500, 0x3FD0432880000000
  %1509 = fmul fast float %720, 0xBFEF110800000000
  %1510 = fmul fast float %1509, %1292
  %1511 = fadd fast float %1510, 1.000000e+00
  %1512 = fsub fast float %1511, %1507
  %1513 = fadd fast float %1512, %1508
  %1514 = fdiv fast float %1506, %1513
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1516 = fsub fast float %1515, %720
  %1517 = fmul fast float %1516, %1470
  %1518 = fadd fast float %1517, %720
  br label %1533

; <label>:1519                                    ; preds = %1485
  %1520 = icmp eq i32 %1459, 8
  br i1 %1520, label %1521, label %1533

; <label>:1521                                    ; preds = %1519
  %1522 = fmul fast float %1464, %1293
  %1523 = fmul fast float %1464, %1294
  %1524 = fadd fast float %1522, %710
  %1525 = fadd fast float %1523, %711
  %1526 = call float @dx.op.binary.f32(i32 36, float %721, float %1295)  ; FMin(a,b)
  %1527 = fsub fast float %1526, %721
  %1528 = fmul fast float %1527, %1467
  %1529 = fadd fast float %1528, %721
  %1530 = fsub fast float %1292, %720
  %1531 = fmul fast float %1470, %1530
  %1532 = fadd fast float %1531, %720
  br label %1533

; <label>:1533                                    ; preds = %1521, %1519, %1487, %1472, %1450, %1000, %709
  %1534 = phi float [ %710, %1450 ], [ %710, %1000 ], [ %710, %709 ], [ %1477, %1472 ], [ %1490, %1487 ], [ %710, %1519 ], [ %1524, %1521 ]
  %1535 = phi float [ %711, %1450 ], [ %711, %1000 ], [ %711, %709 ], [ %1478, %1472 ], [ %1491, %1487 ], [ %711, %1519 ], [ %1525, %1521 ]
  %1536 = phi float [ %1451, %1450 ], [ %712, %1000 ], [ %712, %709 ], [ %1451, %1472 ], [ %1451, %1487 ], [ %1451, %1519 ], [ %1451, %1521 ]
  %1537 = phi float [ %1452, %1450 ], [ %713, %1000 ], [ %713, %709 ], [ %1452, %1472 ], [ %1452, %1487 ], [ %1452, %1519 ], [ %1452, %1521 ]
  %1538 = phi float [ %1453, %1450 ], [ %714, %1000 ], [ %714, %709 ], [ %1453, %1472 ], [ %1453, %1487 ], [ %1453, %1519 ], [ %1453, %1521 ]
  %1539 = phi float [ %1454, %1450 ], [ %715, %1000 ], [ %715, %709 ], [ %1454, %1472 ], [ %1454, %1487 ], [ %1454, %1519 ], [ %1454, %1521 ]
  %1540 = phi float [ %1455, %1450 ], [ %716, %1000 ], [ %716, %709 ], [ %1455, %1472 ], [ %1455, %1487 ], [ %1455, %1519 ], [ %1455, %1521 ]
  %1541 = phi float [ %1456, %1450 ], [ %717, %1000 ], [ %717, %709 ], [ %1456, %1472 ], [ %1456, %1487 ], [ %1456, %1519 ], [ %1456, %1521 ]
  %1542 = phi float [ %1457, %1450 ], [ %718, %1000 ], [ %718, %709 ], [ %1457, %1472 ], [ %1457, %1487 ], [ %1457, %1519 ], [ %1457, %1521 ]
  %1543 = phi float [ %720, %1450 ], [ %720, %1000 ], [ %720, %709 ], [ %1484, %1472 ], [ %1518, %1487 ], [ %720, %1519 ], [ %1532, %1521 ]
  %1544 = phi float [ %721, %1450 ], [ %721, %1000 ], [ %721, %709 ], [ %1481, %1472 ], [ %1495, %1487 ], [ %721, %1519 ], [ %1529, %1521 ]
  %1545 = phi float [ %1458, %1450 ], [ %722, %1000 ], [ %722, %709 ], [ %1458, %1472 ], [ %1458, %1487 ], [ %1458, %1519 ], [ %1458, %1521 ]
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = call float @dx.op.dot2.f32(i32 54, float %1534, float %1535, float %1534, float %1535)  ; Dot2(ax,ay,bx,by)
  %1549 = fmul fast float %1548, 0x3FE3333340000000
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1534, float %1535, float %1550, float %1534, float %1535, float %1550)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.unary.f32(i32 25, float %1551)  ; Rsqrt(value)
  %1553 = fmul fast float %1552, %1534
  %1554 = fmul fast float %1552, %1535
  %1555 = fmul fast float %1550, %1552
  %1556 = fmul fast float %1555, %52
  %1557 = fmul fast float %1555, %53
  %1558 = fmul fast float %1555, %54
  %1559 = fmul fast float %1553, %48
  %1560 = fmul fast float %1553, %49
  %1561 = fmul fast float %1553, %50
  %1562 = fadd fast float %1556, %1559
  %1563 = fadd fast float %1557, %1560
  %1564 = fadd fast float %1558, %1561
  %1565 = fmul fast float %1554, %81
  %1566 = fmul fast float %1554, %82
  %1567 = fmul fast float %1554, %83
  %1568 = fadd fast float %1562, %1565
  %1569 = fadd fast float %1563, %1566
  %1570 = fadd fast float %1564, %1567
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1568, float %1569, float %1570, float %1568, float %1569, float %1570)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.unary.f32(i32 25, float %1571)  ; Rsqrt(value)
  %1573 = fmul fast float %1568, %1572
  %1574 = fmul fast float %1569, %1572
  %1575 = fmul fast float %1570, %1572
  %1576 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1577 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1578 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1579 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1580 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1581 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1582 = fadd fast float %1576, %117
  %1583 = fadd fast float %1577, %118
  %1584 = fadd fast float %1578, %119
  %1585 = fadd fast float %1579, %117
  %1586 = fadd fast float %1580, %118
  %1587 = fadd fast float %1581, %119
  %1588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.f32 %1588, 0
  %1590 = extractvalue %dx.types.CBufRet.f32 %1588, 1
  %1591 = extractvalue %dx.types.CBufRet.f32 %1588, 2
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 3
  %1595 = fmul fast float %1589, %70
  %1596 = fmul fast float %1595, %1593
  %1597 = fmul fast float %1590, %71
  %1598 = fmul fast float %1597, %1594
  %1599 = fptoui float %1596 to i32
  %1600 = fptoui float %1598 to i32
  %1601 = fadd fast float %1589, -1.000000e+00
  %1602 = fadd fast float %1590, -1.000000e+00
  %1603 = fptoui float %1601 to i32
  %1604 = fptoui float %1602 to i32
  %1605 = call i32 @dx.op.binary.i32(i32 40, i32 %1599, i32 %1603)  ; UMin(a,b)
  %1606 = call i32 @dx.op.binary.i32(i32 40, i32 %1600, i32 %1604)  ; UMin(a,b)
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1609 = extractvalue %dx.types.CBufRet.f32 %1607, 3
  %1610 = fmul fast float %1608, %65
  %1611 = fsub fast float %1610, %1609
  %1612 = fadd fast float %1591, -1.000000e+00
  %1613 = call float @dx.op.binary.f32(i32 36, float %1611, float %1612)  ; FMin(a,b)
  %1614 = fptoui float %1613 to i32
  %1615 = fptoui float %1589 to i32
  %1616 = fptoui float %1590 to i32
  %1617 = mul i32 %1614, %1616
  %1618 = add i32 %1617, %1606
  %1619 = mul i32 %1618, %1615
  %1620 = add i32 %1619, %1605
  %1621 = shl i32 %1620, 2
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 1023
  %1625 = lshr i32 %1623, 10
  %1626 = icmp eq i32 %1624, 0
  br i1 %1626, label %2052, label %1627

; <label>:1627                                    ; preds = %1533
  %1628 = and i32 %1623, 1023
  br label %1629

; <label>:1629                                    ; preds = %1755, %1627
  %1630 = phi float [ %1756, %1755 ], [ 0.000000e+00, %1627 ]
  %1631 = phi float [ %1757, %1755 ], [ %1547, %1627 ]
  %1632 = phi float [ %1758, %1755 ], [ %1545, %1627 ]
  %1633 = phi float [ %1759, %1755 ], [ 0.000000e+00, %1627 ]
  %1634 = phi float [ %1760, %1755 ], [ 0.000000e+00, %1627 ]
  %1635 = phi float [ %1761, %1755 ], [ %1539, %1627 ]
  %1636 = phi float [ %1762, %1755 ], [ %1540, %1627 ]
  %1637 = phi float [ %1763, %1755 ], [ %1541, %1627 ]
  %1638 = phi float [ %1764, %1755 ], [ %1573, %1627 ]
  %1639 = phi float [ %1765, %1755 ], [ %1574, %1627 ]
  %1640 = phi float [ %1766, %1755 ], [ %1575, %1627 ]
  %1641 = phi float [ %1767, %1755 ], [ %1544, %1627 ]
  %1642 = phi float [ %1768, %1755 ], [ %1543, %1627 ]
  %1643 = phi float [ %1769, %1755 ], [ 0.000000e+00, %1627 ]
  %1644 = phi float [ %1770, %1755 ], [ %1542, %1627 ]
  %1645 = phi float [ %1771, %1755 ], [ %1536, %1627 ]
  %1646 = phi float [ %1772, %1755 ], [ %1537, %1627 ]
  %1647 = phi float [ %1773, %1755 ], [ %1538, %1627 ]
  %1648 = phi i32 [ %1705, %1755 ], [ 0, %1627 ]
  %1649 = add nuw nsw i32 %1648, %1625
  %1650 = shl i32 %1649, 2
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = shl i32 %1652, 8
  %1654 = or i32 %1653, 48
  %1655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.ResRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.ResRet.f32 %1655, 2
  %1659 = extractvalue %dx.types.ResRet.f32 %1655, 3
  %1660 = or i32 %1653, 64
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.i32 %1661, 1
  %1664 = or i32 %1653, 80
  %1665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 2
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 3
  %1668 = or i32 %1653, 96
  %1669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.ResRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.ResRet.f32 %1669, 2
  %1673 = extractvalue %dx.types.ResRet.f32 %1669, 3
  %1674 = or i32 %1653, 112
  %1675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 2
  %1677 = or i32 %1653, 128
  %1678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = extractvalue %dx.types.ResRet.f32 %1678, 3
  %1683 = or i32 %1653, 144
  %1684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.ResRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.ResRet.f32 %1684, 2
  %1688 = extractvalue %dx.types.ResRet.f32 %1684, 3
  %1689 = or i32 %1653, 160
  %1690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.ResRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.ResRet.f32 %1690, 2
  %1694 = extractvalue %dx.types.ResRet.f32 %1690, 3
  %1695 = or i32 %1653, 192
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = or i32 %1653, 208
  %1699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = or i32 %1653, 248
  %1702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.ResRet.f32 %1702, 1
  %1705 = add nuw nsw i32 %1648, 1
  %1706 = bitcast float %1659 to i32
  %1707 = and i32 %1706, 2560
  %1708 = icmp eq i32 %1707, 0
  %1709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.ResRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.ResRet.f32 %1709, 2
  %1713 = extractvalue %dx.types.ResRet.f32 %1709, 3
  %1714 = call float @dx.op.dot4.f32(i32 56, float %1710, float %1711, float %1712, float %1713, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1715 = or i32 %1653, 16
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = extractvalue %dx.types.ResRet.f32 %1716, 3
  %1721 = call float @dx.op.dot4.f32(i32 56, float %1717, float %1718, float %1719, float %1720, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1722 = or i32 %1653, 32
  %1723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = extractvalue %dx.types.ResRet.f32 %1723, 3
  %1728 = call float @dx.op.dot4.f32(i32 56, float %1724, float %1725, float %1726, float %1727, float %117, float %118, float %119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1729 = call float @dx.op.unary.f32(i32 27, float %1714)  ; Round_ni(value)
  %1730 = call float @dx.op.unary.f32(i32 6, float %1729)  ; FAbs(value)
  %1731 = call float @dx.op.unary.f32(i32 27, float %1721)  ; Round_ni(value)
  %1732 = call float @dx.op.unary.f32(i32 6, float %1731)  ; FAbs(value)
  %1733 = call float @dx.op.unary.f32(i32 6, float %1728)  ; FAbs(value)
  %1734 = call float @dx.op.unary.f32(i32 27, float %1733)  ; Round_ni(value)
  %1735 = fadd fast float %1732, %1730
  %1736 = fadd fast float %1735, %1734
  %1737 = fcmp fast oeq float %1736, 0.000000e+00
  %1738 = call float @dx.op.dot4.f32(i32 56, float %1710, float %1711, float %1712, float %1713, float %1582, float %1583, float %1584, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1739 = call float @dx.op.dot4.f32(i32 56, float %1717, float %1718, float %1719, float %1720, float %1582, float %1583, float %1584, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1740 = call float @dx.op.dot4.f32(i32 56, float %1710, float %1711, float %1712, float %1713, float %1585, float %1586, float %1587, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1741 = call float @dx.op.dot4.f32(i32 56, float %1717, float %1718, float %1719, float %1720, float %1585, float %1586, float %1587, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1742 = fsub fast float %1738, %1714
  %1743 = fsub fast float %1740, %1714
  %1744 = fsub fast float %1739, %1721
  %1745 = fsub fast float %1741, %1721
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1656, float %1657, float %1658, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 2
  %1749 = fadd fast float %1748, %1746
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1747, 0
  %1752 = fcmp fast ogt float %1750, %1751
  %1753 = and i1 %1737, %1752
  %1754 = and i1 %1708, %1753
  br i1 %1754, label %1775, label %1755

; <label>:1755                                    ; preds = %2038, %1856, %1775, %1629
  %1756 = phi float [ %1630, %1775 ], [ %1859, %1856 ], [ %1859, %2038 ], [ %1630, %1629 ]
  %1757 = phi float [ %1631, %1775 ], [ %1631, %1856 ], [ %2013, %2038 ], [ %1631, %1629 ]
  %1758 = phi float [ %1632, %1775 ], [ %1632, %1856 ], [ %2011, %2038 ], [ %1632, %1629 ]
  %1759 = phi float [ %1633, %1775 ], [ %1633, %1856 ], [ %1983, %2038 ], [ %1633, %1629 ]
  %1760 = phi float [ %1634, %1775 ], [ %1634, %1856 ], [ %1981, %2038 ], [ %1634, %1629 ]
  %1761 = phi float [ %1635, %1775 ], [ %1635, %1856 ], [ %2048, %2038 ], [ %1635, %1629 ]
  %1762 = phi float [ %1636, %1775 ], [ %1636, %1856 ], [ %2049, %2038 ], [ %1636, %1629 ]
  %1763 = phi float [ %1637, %1775 ], [ %1637, %1856 ], [ %2050, %2038 ], [ %1637, %1629 ]
  %1764 = phi float [ %1638, %1775 ], [ %1638, %1856 ], [ %1962, %2038 ], [ %1638, %1629 ]
  %1765 = phi float [ %1639, %1775 ], [ %1639, %1856 ], [ %1963, %2038 ], [ %1639, %1629 ]
  %1766 = phi float [ %1640, %1775 ], [ %1640, %1856 ], [ %1964, %2038 ], [ %1640, %1629 ]
  %1767 = phi float [ %1641, %1775 ], [ %1641, %1856 ], [ %1991, %2038 ], [ %1641, %1629 ]
  %1768 = phi float [ %1642, %1775 ], [ %1642, %1856 ], [ %1988, %2038 ], [ %1642, %1629 ]
  %1769 = phi float [ %1643, %1775 ], [ %1643, %1856 ], [ %1985, %2038 ], [ %1643, %1629 ]
  %1770 = phi float [ %1644, %1775 ], [ %1644, %1856 ], [ %1979, %2038 ], [ %1644, %1629 ]
  %1771 = phi float [ %1645, %1775 ], [ %1645, %1856 ], [ %1974, %2038 ], [ %1645, %1629 ]
  %1772 = phi float [ %1646, %1775 ], [ %1646, %1856 ], [ %1975, %2038 ], [ %1646, %1629 ]
  %1773 = phi float [ %1647, %1775 ], [ %1647, %1856 ], [ %1976, %2038 ], [ %1647, %1629 ]
  %1774 = icmp eq i32 %1705, %1628
  br i1 %1774, label %2051, label %1629

; <label>:1775                                    ; preds = %1629
  %1776 = extractvalue %dx.types.ResRet.f32 %1675, 3
  %1777 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1779 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1780 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1781 = extractvalue %dx.types.ResRet.i32 %1661, 3
  %1782 = extractvalue %dx.types.ResRet.i32 %1661, 2
  %1783 = add i32 %1781, 0
  %1784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1783, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1786 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1784, %dx.types.Handle %1785, float %1714, float %1721, float undef, float undef, i32 0, i32 0, i32 undef, float %1742, float %1744, float undef, float %1743, float %1745, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = fmul fast float %1787, %1780
  %1789 = fadd fast float %1788, %1779
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1714, %1670
  %1792 = call float @dx.op.tertiary.f32(i32 46, float %1671, float %1721, float %1791)  ; FMad(a,b,c)
  %1793 = fadd fast float %1792, %1778
  %1794 = fmul fast float %1714, %1672
  %1795 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1721, float %1794)  ; FMad(a,b,c)
  %1796 = fadd fast float %1795, %1777
  %1797 = fmul fast float %1742, %1670
  %1798 = call float @dx.op.tertiary.f32(i32 46, float %1671, float %1744, float %1797)  ; FMad(a,b,c)
  %1799 = fmul fast float %1742, %1672
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1744, float %1799)  ; FMad(a,b,c)
  %1801 = fmul fast float %1743, %1670
  %1802 = call float @dx.op.tertiary.f32(i32 46, float %1671, float %1745, float %1801)  ; FMad(a,b,c)
  %1803 = fmul fast float %1743, %1672
  %1804 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1745, float %1803)  ; FMad(a,b,c)
  %1805 = add i32 %1782, 0
  %1806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1805, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1807 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1806, %dx.types.Handle %1785, float %1793, float %1796, float undef, float undef, i32 0, i32 0, i32 undef, float %1798, float %1800, float undef, float %1802, float %1804, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = and i32 %1706, 1024
  %1810 = icmp ne i32 %1809, 0
  %1811 = fcmp fast ogt float %1808, 0x3FE0101020000000
  %1812 = uitofp i1 %1811 to float
  %1813 = select i1 %1810, float %1812, float %1808
  %1814 = and i32 %1706, 8192
  %1815 = icmp ne i32 %1814, 0
  %1816 = select i1 %1815, float %1776, float 1.000000e+00
  %1817 = fmul fast float %1714, 2.000000e+00
  %1818 = fadd fast float %1817, -1.000000e+00
  %1819 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1820 = fmul fast float %1819, %1703
  %1821 = fsub fast float %1820, %1703
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  %1823 = fmul fast float %1721, 2.000000e+00
  %1824 = fadd fast float %1823, -1.000000e+00
  %1825 = call float @dx.op.unary.f32(i32 6, float %1824)  ; FAbs(value)
  %1826 = fmul fast float %1825, %1704
  %1827 = fsub fast float %1826, %1704
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1829 = fmul fast float %1733, %1666
  %1830 = fsub fast float %1829, %1666
  %1831 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1832 = fmul fast float %1790, %1816
  %1833 = fmul fast float %1832, %1787
  %1834 = fmul fast float %1833, %1822
  %1835 = fmul fast float %1834, %1813
  %1836 = fmul fast float %1835, %1828
  %1837 = fmul fast float %1836, %1831
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1841 = fsub fast float %1750, %1840
  %1842 = fmul fast float %1841, %1839
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = fmul fast float %1837, %1667
  %1845 = fadd fast float %1837, %1667
  %1846 = fmul fast float %1845, %1676
  %1847 = fsub fast float %1846, %1676
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1849 = and i32 %1706, 128
  %1850 = icmp ne i32 %1849, 0
  %1851 = select i1 %1850, float %1848, float %1844
  %1852 = fmul fast float %1851, %1843
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = fcmp fast ugt float %1852, %1854
  br i1 %1855, label %1856, label %1755

; <label>:1856                                    ; preds = %1775
  %1857 = select i1 %1815, float %1852, float 0.000000e+00
  %1858 = fadd fast float %1857, %1630
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  br i1 %1815, label %1755, label %1860

; <label>:1860                                    ; preds = %1856
  %1861 = and i32 %1706, 4
  %1862 = and i32 %1706, 8
  %1863 = add i32 %1662, 0
  %1864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1863, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1866 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1864, %dx.types.Handle %1865, float %1793, float %1796, float undef, float undef, i32 0, i32 0, i32 undef, float %1798, float %1800, float undef, float %1802, float %1804, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.ResRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.ResRet.f32 %1866, 2
  %1870 = extractvalue %dx.types.ResRet.f32 %1866, 3
  %1871 = bitcast float %1688 to i32
  %1872 = and i32 %1871, 255
  %1873 = uitofp i32 %1872 to float
  %1874 = lshr i32 %1871, 8
  %1875 = and i32 %1874, 255
  %1876 = uitofp i32 %1875 to float
  %1877 = fmul fast float %1870, %1873
  %1878 = fadd fast float %1877, %1876
  %1879 = fmul fast float %1878, 0x3F70101000000000
  %1880 = add i32 %1663, 0
  %1881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1880, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1882 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1881, %dx.types.Handle %1865, float %1793, float %1796, float undef, float undef, i32 0, i32 0, i32 undef, float %1798, float %1800, float undef, float %1802, float %1804, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.ResRet.f32 %1882, 2
  %1886 = extractvalue %dx.types.ResRet.f32 %1882, 3
  %1887 = bitcast float %1682 to i32
  %1888 = and i32 %1887, 255
  %1889 = uitofp i32 %1888 to float
  %1890 = lshr i32 %1887, 8
  %1891 = and i32 %1890, 255
  %1892 = uitofp i32 %1891 to float
  %1893 = lshr i32 %1887, 16
  %1894 = and i32 %1893, 255
  %1895 = uitofp i32 %1894 to float
  %1896 = fmul fast float %1895, 0x3F70101000000000
  %1897 = fmul fast float %1883, %1889
  %1898 = fadd fast float %1897, %1892
  %1899 = fmul fast float %1898, 0x3F70101000000000
  %1900 = fadd fast float %1884, -5.000000e-01
  %1901 = fadd fast float %1886, -5.000000e-01
  %1902 = fmul fast float %1900, %1896
  %1903 = fmul fast float %1901, %1896
  %1904 = fadd fast float %1902, 5.000000e-01
  %1905 = fadd fast float %1903, 5.000000e-01
  %1906 = fmul fast float %1867, %1691
  %1907 = fmul fast float %1868, %1692
  %1908 = fmul fast float %1869, %1693
  %1909 = fmul fast float %1904, 2.000000e+00
  %1910 = fadd fast float %1909, -1.000000e+00
  %1911 = fmul fast float %1905, 2.000000e+00
  %1912 = fadd fast float %1911, -1.000000e+00
  %1913 = fadd fast float %1910, %1912
  %1914 = fmul fast float %1913, 5.000000e-01
  %1915 = fsub fast float %1910, %1912
  %1916 = fmul fast float %1915, 5.000000e-01
  %1917 = call float @dx.op.unary.f32(i32 6, float %1914)  ; FAbs(value)
  %1918 = fsub fast float 1.000000e+00, %1917
  %1919 = call float @dx.op.unary.f32(i32 6, float %1916)  ; FAbs(value)
  %1920 = fsub fast float %1918, %1919
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1914, float %1916, float %1920, float %1914, float %1916, float %1920)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = call float @dx.op.unary.f32(i32 25, float %1921)  ; Rsqrt(value)
  %1923 = fmul fast float %1914, %1922
  %1924 = fmul fast float %1916, %1922
  %1925 = fmul fast float %1922, %1920
  %1926 = fmul fast float %1925, %1656
  %1927 = fmul fast float %1925, %1657
  %1928 = fmul fast float %1925, %1658
  %1929 = fmul fast float %1923, %1679
  %1930 = fmul fast float %1923, %1680
  %1931 = fmul fast float %1923, %1681
  %1932 = fadd fast float %1929, %1926
  %1933 = fadd fast float %1930, %1927
  %1934 = fadd fast float %1931, %1928
  %1935 = fmul fast float %1924, %1685
  %1936 = fmul fast float %1924, %1686
  %1937 = fmul fast float %1924, %1687
  %1938 = fadd fast float %1932, %1935
  %1939 = fadd fast float %1933, %1936
  %1940 = fadd fast float %1934, %1937
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1938, float %1939, float %1940, float %1938, float %1939, float %1940)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = call float @dx.op.unary.f32(i32 25, float %1941)  ; Rsqrt(value)
  %1943 = fmul fast float %1938, %1942
  %1944 = fmul fast float %1939, %1942
  %1945 = fmul fast float %1940, %1942
  %1946 = icmp ne i32 %1862, 0
  %1947 = select i1 %1946, float 1.000000e+00, float 0.000000e+00
  %1948 = fmul fast float %1852, %1947
  %1949 = and i32 %1706, 1
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %1951, label %1955

; <label>:1951                                    ; preds = %1860
  %1952 = fsub fast float %1943, %1638
  %1953 = fsub fast float %1944, %1639
  %1954 = fsub fast float %1945, %1640
  br label %1955

; <label>:1955                                    ; preds = %1951, %1860
  %1956 = phi float [ %1952, %1951 ], [ %1943, %1860 ]
  %1957 = phi float [ %1953, %1951 ], [ %1944, %1860 ]
  %1958 = phi float [ %1954, %1951 ], [ %1945, %1860 ]
  %1959 = fmul float %1958, %1948
  %1960 = fmul float %1957, %1948
  %1961 = fmul float %1956, %1948
  %1962 = fadd fast float %1961, %1638
  %1963 = fadd fast float %1960, %1639
  %1964 = fadd fast float %1959, %1640
  %1965 = icmp ne i32 %1861, 0
  %1966 = select i1 %1965, float 1.000000e+00, float 0.000000e+00
  %1967 = fmul fast float %1852, %1966
  %1968 = fsub fast float %1906, %1645
  %1969 = fsub fast float %1907, %1646
  %1970 = fsub fast float %1908, %1647
  %1971 = fmul fast float %1968, %1967
  %1972 = fmul fast float %1969, %1967
  %1973 = fmul fast float %1970, %1967
  %1974 = fadd fast float %1971, %1645
  %1975 = fadd fast float %1972, %1646
  %1976 = fadd fast float %1973, %1647
  %1977 = fsub fast float %1879, %1644
  %1978 = fmul fast float %1977, %1967
  %1979 = fadd fast float %1978, %1644
  %1980 = fmul fast float %1967, %1634
  %1981 = fsub fast float %1634, %1980
  %1982 = fmul fast float %1967, %1633
  %1983 = fsub fast float %1633, %1982
  %1984 = fadd fast float %1852, %1643
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = fsub fast float %1899, %1642
  %1987 = fmul fast float %1986, %1948
  %1988 = fadd fast float %1987, %1642
  %1989 = fsub fast float %1885, %1641
  %1990 = fmul fast float %1989, %1948
  %1991 = fadd fast float %1990, %1641
  %1992 = call float @dx.op.dot3.f32(i32 55, float %1906, float %1907, float %1908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = fmul fast float %1995, %1992
  %1997 = fadd fast float %1996, %1994
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %1999 = bitcast float %1694 to i32
  %2000 = and i32 %1999, 65535
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = lshr i32 %1999, 16
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = fcmp fast oge float %2001, 0.000000e+00
  %2005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2006 = extractvalue %dx.types.CBufRet.f32 %2005, 0
  %2007 = select i1 %2004, float %2001, float %2006
  %2008 = fadd fast float %2007, %2003
  %2009 = fsub fast float %1998, %1632
  %2010 = fmul fast float %2009, %1852
  %2011 = fadd fast float %2010, %1632
  %2012 = fmul fast float %2008, %1852
  %2013 = call float @dx.op.binary.f32(i32 35, float %1631, float %2012)  ; FMax(a,b)
  %2014 = and i32 %1706, 16
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2038, label %2016

; <label>:2016                                    ; preds = %1955
  %2017 = bitcast float %1700 to i32
  %2018 = add i32 %1697, 0
  %2019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2018, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2019, %dx.types.Handle %1865, float %1793, float %1796, float undef, float undef, i32 0, i32 0, i32 undef, float %1798, float %1800, float undef, float %1802, float %1804, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2021 = extractvalue %dx.types.ResRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.ResRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.ResRet.f32 %2020, 2
  %2024 = and i32 %2017, 65535
  %2025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2024)  ; LegacyF16ToF32(value)
  %2026 = fmul fast float %2021, %1691
  %2027 = fmul fast float %2022, %1692
  %2028 = fmul fast float %2023, %1693
  %2029 = and i32 %1706, 16384
  %2030 = icmp ne i32 %2029, 0
  %2031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.f32 %2031, 0
  %2033 = select i1 %2030, float %2032, float 1.000000e+00
  %2034 = fmul fast float %2033, %2025
  %2035 = fmul fast float %2026, %2034
  %2036 = fmul fast float %2027, %2034
  %2037 = fmul fast float %2028, %2034
  br label %2038

; <label>:2038                                    ; preds = %2016, %1955
  %2039 = phi float [ %2035, %2016 ], [ 0.000000e+00, %1955 ]
  %2040 = phi float [ %2036, %2016 ], [ 0.000000e+00, %1955 ]
  %2041 = phi float [ %2037, %2016 ], [ 0.000000e+00, %1955 ]
  %2042 = fsub fast float %2039, %1635
  %2043 = fsub fast float %2040, %1636
  %2044 = fsub fast float %2041, %1637
  %2045 = fmul fast float %2042, %1852
  %2046 = fmul fast float %2043, %1852
  %2047 = fmul fast float %2044, %1852
  %2048 = fadd fast float %2045, %1635
  %2049 = fadd fast float %2046, %1636
  %2050 = fadd fast float %2047, %1637
  br label %1755

; <label>:2051                                    ; preds = %1755
  br label %2052

; <label>:2052                                    ; preds = %2051, %1533
  %2053 = phi float [ 0.000000e+00, %1533 ], [ %1756, %2051 ]
  %2054 = phi float [ %1547, %1533 ], [ %1757, %2051 ]
  %2055 = phi float [ %1545, %1533 ], [ %1758, %2051 ]
  %2056 = phi float [ 0.000000e+00, %1533 ], [ %1759, %2051 ]
  %2057 = phi float [ 0.000000e+00, %1533 ], [ %1760, %2051 ]
  %2058 = phi float [ %1539, %1533 ], [ %1761, %2051 ]
  %2059 = phi float [ %1540, %1533 ], [ %1762, %2051 ]
  %2060 = phi float [ %1541, %1533 ], [ %1763, %2051 ]
  %2061 = phi float [ %1573, %1533 ], [ %1764, %2051 ]
  %2062 = phi float [ %1574, %1533 ], [ %1765, %2051 ]
  %2063 = phi float [ %1575, %1533 ], [ %1766, %2051 ]
  %2064 = phi float [ %1544, %1533 ], [ %1767, %2051 ]
  %2065 = phi float [ %1543, %1533 ], [ %1768, %2051 ]
  %2066 = phi float [ 0.000000e+00, %1533 ], [ %1769, %2051 ]
  %2067 = phi float [ %1542, %1533 ], [ %1770, %2051 ]
  %2068 = phi float [ %1536, %1533 ], [ %1771, %2051 ]
  %2069 = phi float [ %1537, %1533 ], [ %1772, %2051 ]
  %2070 = phi float [ %1538, %1533 ], [ %1773, %2051 ]
  %2071 = call float @dx.op.dot3.f32(i32 55, float %2061, float %2062, float %2063, float %2061, float %2062, float %2063)  ; Dot3(ax,ay,az,bx,by,bz)
  %2072 = call float @dx.op.unary.f32(i32 25, float %2071)  ; Rsqrt(value)
  %2073 = fmul fast float %2072, %2061
  %2074 = fmul fast float %2072, %2062
  %2075 = fmul fast float %2072, %2063
  %2076 = fadd fast float %2066, %719
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = call float @dx.op.dot3.f32(i32 55, float %2073, float %2074, float %2075, float %2073, float %2074, float %2075)  ; Dot3(ax,ay,az,bx,by,bz)
  %2079 = call float @dx.op.unary.f32(i32 25, float %2078)  ; Rsqrt(value)
  %2080 = fmul fast float %2079, %2073
  %2081 = fmul fast float %2079, %2074
  %2082 = fmul fast float %2079, %2075
  %2083 = fadd fast float %2067, 0xBFB99999A0000000
  %2084 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2085 = fmul fast float %2084, 0x3FF1C71C80000000
  %2086 = call float @dx.op.binary.f32(i32 36, float %2067, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2087 = fsub fast float 1.000000e+00, %2085
  %2088 = call float @dx.op.unary.f32(i32 7, float %2087)  ; Saturate(value)
  %2089 = fmul fast float %2088, %2068
  %2090 = fmul fast float %2088, %2069
  %2091 = fmul fast float %2088, %2070
  %2092 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2093 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2094 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2095 = fmul fast float %2085, %2068
  %2096 = fmul fast float %2085, %2069
  %2097 = fmul fast float %2085, %2070
  %2098 = fadd fast float %2095, %2086
  %2099 = fadd fast float %2096, %2086
  %2100 = fadd fast float %2097, %2086
  %2101 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2102 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2103 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2104 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.i32 %2105, 3
  %2107 = and i32 %2106, 8
  %2108 = icmp ne i32 %2107, 0
  %2109 = call float @dx.op.binary.f32(i32 35, float %2092, float %2068)  ; FMax(a,b)
  %2110 = call float @dx.op.binary.f32(i32 35, float %2093, float %2068)  ; FMax(a,b)
  %2111 = call float @dx.op.binary.f32(i32 35, float %2094, float %2068)  ; FMax(a,b)
  %2112 = call float @dx.op.dot3.f32(i32 55, float %2092, float %2093, float %2094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2113 = select i1 %188, float %2068, float %2092
  %2114 = select i1 %188, float %2112, float %2093
  %2115 = select i1 %188, float 1.000000e+00, float %2094
  %2116 = select i1 %2108, float %2109, float %2113
  %2117 = select i1 %2108, float %2110, float %2114
  %2118 = select i1 %2108, float %2111, float %2115
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 0
  %2121 = extractvalue %dx.types.CBufRet.f32 %2119, 1
  %2122 = extractvalue %dx.types.CBufRet.f32 %2119, 2
  %2123 = fadd fast float %2120, %117
  %2124 = fadd fast float %2121, %118
  %2125 = fadd fast float %2122, %119
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2129 = fsub fast float %2123, %2127
  %2130 = fsub fast float %2124, %2128
  %2131 = fmul fast float %2129, %2129
  %2132 = fmul fast float %2130, %2130
  %2133 = fadd fast float %2131, %2132
  %2134 = call float @dx.op.unary.f32(i32 24, float %2133)  ; Sqrt(value)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2126, 2
  %2136 = fcmp fast olt float %2134, %2135
  br i1 %2136, label %2137, label %2204

; <label>:2137                                    ; preds = %2052
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 0
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2145 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2142, 1
  %2147 = extractvalue %dx.types.CBufRet.f32 %2138, 3
  %2148 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2149 = extractvalue %dx.types.CBufRet.f32 %2142, 3
  %2150 = fadd fast float %2147, %2123
  %2151 = fadd fast float %2148, %2124
  %2152 = fadd fast float %2149, %2125
  %2153 = fmul fast float %2150, %2139
  %2154 = call float @dx.op.tertiary.f32(i32 46, float %2151, float %2141, float %2153)  ; FMad(a,b,c)
  %2155 = call float @dx.op.tertiary.f32(i32 46, float %2152, float %2143, float %2154)  ; FMad(a,b,c)
  %2156 = fmul fast float %2150, %2144
  %2157 = call float @dx.op.tertiary.f32(i32 46, float %2151, float %2145, float %2156)  ; FMad(a,b,c)
  %2158 = call float @dx.op.tertiary.f32(i32 46, float %2152, float %2146, float %2157)  ; FMad(a,b,c)
  %2159 = fsub fast float %2155, %2147
  %2160 = fsub fast float %2158, %2148
  %2161 = fsub fast float %2159, %2127
  %2162 = fadd fast float %2161, %2135
  %2163 = fsub fast float %2160, %2128
  %2164 = fadd fast float %2163, %2135
  %2165 = extractvalue %dx.types.CBufRet.f32 %2126, 3
  %2166 = fmul fast float %2162, %2165
  %2167 = fmul fast float %2164, %2165
  %2168 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2170 = fsub fast float 1.000000e+00, %2168
  %2171 = fsub fast float 1.000000e+00, %2169
  %2172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2170, float %2171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = fcmp fast ugt float %2173, 0.000000e+00
  br i1 %2174, label %2175, label %2478

; <label>:2175                                    ; preds = %2137
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2178 = fmul fast float %2177, %2173
  %2179 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2180 = fadd fast float %2179, %2178
  %2181 = extractvalue %dx.types.CBufRet.f32 %2142, 2
  %2182 = fadd fast float %2180, %2149
  %2183 = fmul fast float %2155, %2143
  %2184 = call float @dx.op.tertiary.f32(i32 46, float %2158, float %2146, float %2183)  ; FMad(a,b,c)
  %2185 = call float @dx.op.tertiary.f32(i32 46, float %2182, float %2181, float %2184)  ; FMad(a,b,c)
  %2186 = fsub fast float %2185, %2149
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2189 = fsub fast float %2186, %2188
  %2190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2170, float %2171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.ResRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.ResRet.f32 %2190, 2
  %2194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2170, float %2171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  %2196 = extractvalue %dx.types.ResRet.f32 %2194, 1
  %2197 = extractvalue %dx.types.ResRet.f32 %2194, 2
  %2198 = fadd fast float %2195, %2191
  %2199 = fmul fast float %2198, 0x3F847AE140000000
  %2200 = fadd fast float %2196, %2192
  %2201 = fmul fast float %2200, 0x3F847AE140000000
  %2202 = fadd fast float %2197, %2193
  %2203 = fmul fast float %2202, 0x3F847AE140000000
  br label %2478

; <label>:2204                                    ; preds = %2052
  %2205 = and i32 %164, 1
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2478, label %2207

; <label>:2207                                    ; preds = %2204
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.CBufRet.f32 %2208, 1
  %2215 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2216 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2217 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2218 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2219 = extractvalue %dx.types.CBufRet.f32 %2212, 3
  %2220 = fadd fast float %2217, %2123
  %2221 = fadd fast float %2218, %2124
  %2222 = fadd fast float %2219, %2125
  %2223 = fmul fast float %2220, %2209
  %2224 = call float @dx.op.tertiary.f32(i32 46, float %2221, float %2211, float %2223)  ; FMad(a,b,c)
  %2225 = call float @dx.op.tertiary.f32(i32 46, float %2222, float %2213, float %2224)  ; FMad(a,b,c)
  %2226 = fmul fast float %2220, %2214
  %2227 = call float @dx.op.tertiary.f32(i32 46, float %2221, float %2215, float %2226)  ; FMad(a,b,c)
  %2228 = call float @dx.op.tertiary.f32(i32 46, float %2222, float %2216, float %2227)  ; FMad(a,b,c)
  %2229 = fsub fast float %2225, %2217
  %2230 = fsub fast float %2228, %2218
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.CBufRet.f32 %2231, 1
  %2234 = extractvalue %dx.types.CBufRet.f32 %2231, 2
  %2235 = extractvalue %dx.types.CBufRet.f32 %2231, 3
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 3
  %2238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.i32 %2238, 0
  %2240 = extractvalue %dx.types.CBufRet.i32 %2238, 1
  %2241 = udiv i32 %2240, %2239
  %2242 = fsub fast float %2229, %2232
  %2243 = fsub fast float %2230, %2233
  %2244 = call float @dx.op.binary.f32(i32 35, float %2242, float 0.000000e+00)  ; FMax(a,b)
  %2245 = call float @dx.op.binary.f32(i32 35, float %2243, float 0.000000e+00)  ; FMax(a,b)
  %2246 = call float @dx.op.binary.f32(i32 36, float %2244, float %2234)  ; FMin(a,b)
  %2247 = call float @dx.op.binary.f32(i32 36, float %2245, float %2235)  ; FMin(a,b)
  %2248 = add i32 %2239, -1
  %2249 = add i32 %2241, -1
  %2250 = fmul fast float %2246, %2237
  %2251 = fmul fast float %2247, %2237
  %2252 = fptoui float %2250 to i32
  %2253 = fptoui float %2251 to i32
  %2254 = call i32 @dx.op.binary.i32(i32 40, i32 %2252, i32 %2248)  ; UMin(a,b)
  %2255 = call i32 @dx.op.binary.i32(i32 40, i32 %2253, i32 %2249)  ; UMin(a,b)
  %2256 = mul i32 %2255, %2239
  %2257 = add i32 %2256, %2254
  %2258 = shl i32 %2257, 2
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = icmp eq i32 %2260, -1
  br i1 %2261, label %2478, label %2262

; <label>:2262                                    ; preds = %2207
  %2263 = mul i32 %2260, 148
  %2264 = add i32 %2263, 4
  %2265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  %2267 = add i32 %2263, 8
  %2268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.f32 %2268, 0
  %2270 = add i32 %2263, 36
  %2271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = add i32 %2263, 60
  %2274 = add i32 %2263, 92
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = add i32 %2263, 116
  %2278 = fsub fast float %2229, %2266
  %2279 = fsub fast float %2230, %2269
  %2280 = fmul fast float %2237, %2278
  %2281 = fmul fast float %2237, %2279
  %2282 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2283 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2284 = fsub fast float 1.000000e+00, %2283
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2287 = call float @dx.op.unary.f32(i32 83, float %2282)  ; DerivCoarseX(value)
  %2288 = call float @dx.op.unary.f32(i32 83, float %2284)  ; DerivCoarseX(value)
  %2289 = call float @dx.op.unary.f32(i32 84, float %2282)  ; DerivCoarseY(value)
  %2290 = call float @dx.op.unary.f32(i32 84, float %2284)  ; DerivCoarseY(value)
  %2291 = fmul fast float %2287, %2286
  %2292 = fmul fast float %2288, %2286
  %2293 = fmul fast float %2289, %2286
  %2294 = fmul fast float %2290, %2286
  %2295 = call float @dx.op.dot2.f32(i32 54, float %2293, float %2294, float %2293, float %2294)  ; Dot2(ax,ay,bx,by)
  %2296 = call float @dx.op.dot2.f32(i32 54, float %2291, float %2292, float %2291, float %2292)  ; Dot2(ax,ay,bx,by)
  %2297 = call float @dx.op.binary.f32(i32 35, float %2296, float %2295)  ; FMax(a,b)
  %2298 = call float @dx.op.unary.f32(i32 23, float %2297)  ; Log(value)
  %2299 = fmul fast float %2298, 5.000000e-01
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2302 = fadd fast float %2301, %2299
  %2303 = call float @dx.op.binary.f32(i32 35, float %2302, float 0.000000e+00)  ; FMax(a,b)
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 3
  %2306 = fadd fast float %2305, %2303
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 3
  %2309 = fadd fast float %2306, %2308
  %2310 = add i32 %2276, 0
  %2311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2312 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2311, i32 0)  ; GetDimensions(handle,mipLevel)
  %2313 = extractvalue %dx.types.Dimensions %2312, 0
  %2314 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2313)  ; FirstbitLo(value)
  %2315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.i32 %2315, 1
  %2317 = sub nsw i32 %2316, %2314
  %2318 = sitofp i32 %2317 to float
  %2319 = fsub fast float %2309, %2318
  %2320 = call float @dx.op.binary.f32(i32 35, float %2319, float 0.000000e+00)  ; FMax(a,b)
  %2321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2311, %dx.types.Handle %37, float %2282, float %2284, float %2272, float undef, i32 0, i32 0, i32 undef, float %2320)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = fcmp ule float %2322, 0x3FE0101020000000
  %2324 = extractvalue %dx.types.CBufRet.i32 %2315, 0
  %2325 = and i32 %2324, 128
  %2326 = icmp ne i32 %2325, 0
  %2327 = and i1 %2323, %2326
  br i1 %2327, label %2478, label %2328

; <label>:2328                                    ; preds = %2262
  %2329 = add i32 %2263, 20
  %2330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = add i32 %2263, 24
  %2333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.f32 %2333, 0
  %2335 = add i32 %2263, 40
  %2336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = add i32 %2263, 96
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2341, 2
  %2343 = fmul fast float %2342, %2282
  %2344 = fmul fast float %2342, %2284
  %2345 = extractvalue %dx.types.CBufRet.f32 %2341, 3
  %2346 = fadd fast float %2343, %2345
  %2347 = fadd fast float %2344, %2345
  %2348 = add i32 %2340, 0
  %2349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2348, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2350 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2349, i32 0)  ; GetDimensions(handle,mipLevel)
  %2351 = extractvalue %dx.types.Dimensions %2350, 0
  %2352 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2351)  ; FirstbitLo(value)
  %2353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.i32 %2353, 1
  %2355 = sub nsw i32 %2354, %2352
  %2356 = sitofp i32 %2355 to float
  %2357 = fsub fast float %2306, %2356
  %2358 = call float @dx.op.binary.f32(i32 35, float %2357, float 0.000000e+00)  ; FMax(a,b)
  %2359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2349, %dx.types.Handle %37, float %2346, float %2347, float %2337, float undef, i32 0, i32 0, i32 undef, float %2358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = fmul fast float %2360, %2331
  %2362 = fadd fast float %2361, %2334
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 2
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 3
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2371 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2372 = fadd fast float %2368, %2229
  %2373 = fadd fast float %2370, %2230
  %2374 = fadd fast float %2362, %2371
  %2375 = fmul fast float %2372, %2364
  %2376 = call float @dx.op.tertiary.f32(i32 46, float %2373, float %2365, float %2375)  ; FMad(a,b,c)
  %2377 = call float @dx.op.tertiary.f32(i32 46, float %2374, float %2366, float %2376)  ; FMad(a,b,c)
  %2378 = fsub fast float %2377, %2371
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2381 = fsub fast float %2378, %2380
  %2382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.i32 %2382, 0
  %2384 = call i32 @dx.op.binary.i32(i32 40, i32 %2260, i32 %2383)  ; UMin(a,b)
  %2385 = mul i32 %2384, 36
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = add i32 %2385, 4
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = fmul fast float %2390, %2282
  %2392 = fmul fast float %2390, %2284
  %2393 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2394 = fadd fast float %2391, %2393
  %2395 = fadd fast float %2392, %2393
  %2396 = icmp eq i32 %2387, 0
  br i1 %2396, label %2465, label %2397

; <label>:2397                                    ; preds = %2328
  br label %2398

; <label>:2398                                    ; preds = %2455, %2397
  %2399 = phi float [ %2456, %2455 ], [ 0.000000e+00, %2397 ]
  %2400 = phi float [ %2457, %2455 ], [ 0.000000e+00, %2397 ]
  %2401 = phi float [ %2458, %2455 ], [ 0.000000e+00, %2397 ]
  %2402 = phi float [ %2459, %2455 ], [ 0.000000e+00, %2397 ]
  %2403 = phi float [ %2460, %2455 ], [ 0.000000e+00, %2397 ]
  %2404 = phi float [ %2461, %2455 ], [ 0.000000e+00, %2397 ]
  %2405 = phi i32 [ %2462, %2455 ], [ 0, %2397 ]
  %2406 = shl i32 %2405, 2
  %2407 = add i32 %2273, %2406
  %2408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.f32 %2408, 0
  %2410 = add i32 %2277, %2406
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = add i32 %2412, 0
  %2414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2413, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2415 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2414, i32 0)  ; GetDimensions(handle,mipLevel)
  %2416 = extractvalue %dx.types.Dimensions %2415, 0
  %2417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2416)  ; FirstbitLo(value)
  %2418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.i32 %2418, 1
  %2420 = sub nsw i32 %2419, %2417
  %2421 = sitofp i32 %2420 to float
  %2422 = fsub fast float %2306, %2421
  %2423 = call float @dx.op.binary.f32(i32 35, float %2422, float 0.000000e+00)  ; FMax(a,b)
  %2424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2414, %dx.types.Handle %37, float %2394, float %2395, float %2409, float undef, i32 0, i32 0, i32 undef, float %2423)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2425 = extractvalue %dx.types.ResRet.f32 %2424, 0
  %2426 = fcmp fast ogt float %2425, 0.000000e+00
  br i1 %2426, label %2427, label %2455

; <label>:2427                                    ; preds = %2398
  %2428 = add i32 %2388, %2406
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 32767
  %2432 = mul nuw nsw i32 %2431, 928
  %2433 = add nuw nsw i32 %2432, 48
  %2434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.ResRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.ResRet.f32 %2434, 2
  %2438 = add nuw nsw i32 %2432, 60
  %2439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.ResRet.f32 %2439, 2
  %2443 = fmul fast float %2435, %2425
  %2444 = fmul fast float %2436, %2425
  %2445 = fmul fast float %2437, %2425
  %2446 = fadd fast float %2443, %2399
  %2447 = fadd fast float %2444, %2400
  %2448 = fadd fast float %2445, %2401
  %2449 = fmul fast float %2440, %2425
  %2450 = fmul fast float %2441, %2425
  %2451 = fmul fast float %2442, %2425
  %2452 = fadd fast float %2449, %2402
  %2453 = fadd fast float %2450, %2403
  %2454 = fadd fast float %2451, %2404
  br label %2455

; <label>:2455                                    ; preds = %2427, %2398
  %2456 = phi float [ %2446, %2427 ], [ %2399, %2398 ]
  %2457 = phi float [ %2447, %2427 ], [ %2400, %2398 ]
  %2458 = phi float [ %2448, %2427 ], [ %2401, %2398 ]
  %2459 = phi float [ %2452, %2427 ], [ %2402, %2398 ]
  %2460 = phi float [ %2453, %2427 ], [ %2403, %2398 ]
  %2461 = phi float [ %2454, %2427 ], [ %2404, %2398 ]
  %2462 = add nuw i32 %2405, 1
  %2463 = icmp eq i32 %2462, %2387
  br i1 %2463, label %2464, label %2398

; <label>:2464                                    ; preds = %2455
  br label %2465

; <label>:2465                                    ; preds = %2464, %2328
  %2466 = phi float [ 0.000000e+00, %2328 ], [ %2456, %2464 ]
  %2467 = phi float [ 0.000000e+00, %2328 ], [ %2457, %2464 ]
  %2468 = phi float [ 0.000000e+00, %2328 ], [ %2458, %2464 ]
  %2469 = phi float [ 0.000000e+00, %2328 ], [ %2459, %2464 ]
  %2470 = phi float [ 0.000000e+00, %2328 ], [ %2460, %2464 ]
  %2471 = phi float [ 0.000000e+00, %2328 ], [ %2461, %2464 ]
  %2472 = fadd fast float %2469, %2466
  %2473 = fmul fast float %2472, 0x3F847AE140000000
  %2474 = fadd fast float %2470, %2467
  %2475 = fmul fast float %2474, 0x3F847AE140000000
  %2476 = fadd fast float %2471, %2468
  %2477 = fmul fast float %2476, 0x3F847AE140000000
  br label %2478

; <label>:2478                                    ; preds = %2465, %2262, %2207, %2204, %2175, %2137
  %2479 = phi float [ %2189, %2175 ], [ -1.310720e+05, %2137 ], [ %2381, %2465 ], [ -1.310720e+05, %2207 ], [ -1.310720e+05, %2262 ], [ -1.310720e+05, %2204 ]
  %2480 = phi float [ %2199, %2175 ], [ 0.000000e+00, %2137 ], [ %2473, %2465 ], [ 0.000000e+00, %2207 ], [ 0.000000e+00, %2262 ], [ 0.000000e+00, %2204 ]
  %2481 = phi float [ %2201, %2175 ], [ 0.000000e+00, %2137 ], [ %2475, %2465 ], [ 0.000000e+00, %2207 ], [ 0.000000e+00, %2262 ], [ 0.000000e+00, %2204 ]
  %2482 = phi float [ %2203, %2175 ], [ 0.000000e+00, %2137 ], [ %2477, %2465 ], [ 0.000000e+00, %2207 ], [ 0.000000e+00, %2262 ], [ 0.000000e+00, %2204 ]
  %2483 = phi i1 [ true, %2175 ], [ false, %2137 ], [ true, %2465 ], [ false, %2207 ], [ false, %2262 ], [ false, %2204 ]
  %2484 = and i32 %164, 3
  %2485 = icmp eq i32 %2484, 1
  %2486 = select i1 %2485, float 1.000000e+00, float 0.000000e+00
  %2487 = fsub fast float %2479, %119
  %2488 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2489 = select i1 %2483, float %2488, float 1.000000e+00
  %2490 = fmul fast float %2489, %2486
  %2491 = icmp eq i32 %2484, 3
  %2492 = select i1 %2491, float 1.000000e+00, float %2490
  %2493 = call float @dx.op.binary.f32(i32 35, float %2053, float %2492)  ; FMax(a,b)
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2495 = fcmp fast une float %2494, 0.000000e+00
  %2496 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2497 = call float @dx.op.unary.f32(i32 25, float %2496)  ; Rsqrt(value)
  br i1 %2495, label %2505, label %2498

; <label>:2498                                    ; preds = %2478
  %2499 = fmul fast float %2497, %117
  %2500 = fmul fast float %2497, %118
  %2501 = fmul fast float %2497, %119
  %2502 = fsub fast float -0.000000e+00, %2499
  %2503 = fsub fast float -0.000000e+00, %2500
  %2504 = fsub fast float -0.000000e+00, %2501
  br label %2673

; <label>:2505                                    ; preds = %2478
  %2506 = fmul fast float %117, %2497
  %2507 = fsub fast float -0.000000e+00, %2506
  %2508 = fmul fast float %118, %2497
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = fmul fast float %119, %2497
  %2511 = fsub fast float -0.000000e+00, %2510
  %2512 = call float @dx.op.dot3.f32(i32 55, float %2507, float %2509, float %2511, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2513 = fmul fast float %2494, 2.500000e+00
  %2514 = call float @dx.op.unary.f32(i32 7, float %2513)  ; Saturate(value)
  %2515 = fmul fast float %2494, 0x4013FFFFE0000000
  %2516 = fadd fast float %2515, 0xBFFFFFFFE0000000
  %2517 = call float @dx.op.unary.f32(i32 7, float %2516)  ; Saturate(value)
  %2518 = fmul fast float %2494, 0x4004000020000000
  %2519 = fadd fast float %2518, 0xBFF8000040000000
  %2520 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  %2521 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2522 = fmul fast float %2083, 1.000000e+01
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fmul fast float %2523, 2.000000e+00
  %2525 = fsub fast float 3.000000e+00, %2524
  %2526 = fmul fast float %2523, %2523
  %2527 = fmul fast float %2526, %2525
  %2528 = fsub fast float 1.000000e+00, %2527
  %2529 = fsub fast float 0x3FE3333340000000, %2104
  %2530 = fmul fast float %2529, 0x400AAAAAA0000000
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  %2532 = fmul fast float %2528, %2531
  %2533 = fmul fast float %2116, 0x3FEA2B8620000000
  %2534 = fmul fast float %2117, 0x3FEA2B8620000000
  %2535 = fmul fast float %2118, 0x3FEA2B8620000000
  %2536 = fadd fast float %2533, 0x3FC81DFBA0000000
  %2537 = fmul fast float %2536, %2116
  %2538 = fadd fast float %2537, 0x3F910E6020000000
  %2539 = fadd fast float %2534, 0x3FC81DFBA0000000
  %2540 = fmul fast float %2539, %2117
  %2541 = fadd fast float %2540, 0x3F910E6020000000
  %2542 = fadd fast float %2535, 0x3FC81DFBA0000000
  %2543 = fmul fast float %2542, %2118
  %2544 = fadd fast float %2543, 0x3F910E6020000000
  %2545 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2546 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2547 = call float @dx.op.unary.f32(i32 7, float %2544)  ; Saturate(value)
  %2548 = fsub fast float %2545, %2116
  %2549 = fsub fast float %2546, %2117
  %2550 = fsub fast float %2547, %2118
  %2551 = fmul fast float %2548, %2521
  %2552 = fmul fast float %2551, %2532
  %2553 = fmul fast float %2549, %2521
  %2554 = fmul fast float %2553, %2532
  %2555 = fmul fast float %2550, %2521
  %2556 = fmul fast float %2555, %2532
  %2557 = fadd fast float %2552, %2116
  %2558 = fadd fast float %2554, %2117
  %2559 = fadd fast float %2556, %2118
  %2560 = fmul fast float %2064, %2064
  %2561 = fmul fast float %2560, %2560
  %2562 = fadd fast float %2517, 1.000000e+00
  %2563 = fsub fast float %2562, %2532
  %2564 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2565 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2567 = fsub fast float 1.000000e+00, %2561
  %2568 = call float @dx.op.binary.f32(i32 36, float %2564, float %2567)  ; FMin(a,b)
  %2569 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2570 = call float @dx.op.binary.f32(i32 35, float %2568, float %2569)  ; FMax(a,b)
  %2571 = fadd fast float %2566, 0xBFE4CCCCC0000000
  %2572 = fmul fast float %2571, 0x4006DB6DA0000000
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = fmul fast float %2573, 2.000000e+00
  %2575 = fsub fast float 3.000000e+00, %2574
  %2576 = bitcast float %2101 to i32
  %2577 = ashr i32 %2576, 1
  %2578 = add nsw i32 %2577, 532487669
  %2579 = bitcast i32 %2578 to float
  %2580 = fsub fast float 1.000000e+00, %2579
  %2581 = bitcast float %2580 to i32
  %2582 = sub nsw i32 2129859010, %2581
  %2583 = bitcast i32 %2582 to float
  %2584 = fmul fast float %2583, 2.000000e+00
  %2585 = bitcast float %2102 to i32
  %2586 = ashr i32 %2585, 1
  %2587 = add nsw i32 %2586, 532487669
  %2588 = bitcast i32 %2587 to float
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = bitcast float %2589 to i32
  %2591 = sub nsw i32 2129859010, %2590
  %2592 = bitcast i32 %2591 to float
  %2593 = fmul fast float %2592, 2.000000e+00
  %2594 = bitcast float %2103 to i32
  %2595 = ashr i32 %2594, 1
  %2596 = add nsw i32 %2595, 532487669
  %2597 = bitcast i32 %2596 to float
  %2598 = fsub fast float 1.000000e+00, %2597
  %2599 = bitcast float %2598 to i32
  %2600 = sub nsw i32 2129859010, %2599
  %2601 = bitcast i32 %2600 to float
  %2602 = fmul fast float %2601, 2.000000e+00
  %2603 = fsub fast float 0x4002A9FBE0000000, %2584
  %2604 = fadd fast float %2584, 0x3FD54FDF00000000
  %2605 = bitcast float %2604 to i32
  %2606 = sub nsw i32 2129859010, %2605
  %2607 = bitcast i32 %2606 to float
  %2608 = fmul fast float %2607, %2603
  %2609 = fmul fast float %2608, %2608
  %2610 = fsub fast float 0x4002A9FBE0000000, %2593
  %2611 = fadd fast float %2593, 0x3FD54FDF00000000
  %2612 = bitcast float %2611 to i32
  %2613 = sub nsw i32 2129859010, %2612
  %2614 = bitcast i32 %2613 to float
  %2615 = fmul fast float %2614, %2610
  %2616 = fmul fast float %2615, %2615
  %2617 = fsub fast float 0x4002A9FBE0000000, %2602
  %2618 = fadd fast float %2602, 0x3FD54FDF00000000
  %2619 = bitcast float %2618 to i32
  %2620 = sub nsw i32 2129859010, %2619
  %2621 = bitcast i32 %2620 to float
  %2622 = fmul fast float %2621, %2617
  %2623 = fmul fast float %2622, %2622
  %2624 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2609)  ; FMax(a,b)
  %2625 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2616)  ; FMax(a,b)
  %2626 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2623)  ; FMax(a,b)
  %2627 = fsub fast float 1.000000e+00, %2512
  %2628 = fadd fast float %2627, %2528
  %2629 = call float @dx.op.unary.f32(i32 7, float %2628)  ; Saturate(value)
  %2630 = fsub fast float 1.000000e+00, %2492
  %2631 = fmul fast float %2570, %2630
  %2632 = fmul fast float %2573, %2573
  %2633 = fmul fast float %2632, %2631
  %2634 = fmul fast float %2633, %2575
  %2635 = fmul fast float %2630, 0xBFE99999A0000000
  %2636 = fmul fast float %2635, %2521
  %2637 = fmul fast float %2636, %2532
  %2638 = fadd fast float %2637, 1.000000e+00
  %2639 = fadd fast float %2104, -1.000000e+00
  %2640 = fmul fast float %2638, %2639
  %2641 = fadd fast float %2640, 1.000000e+00
  %2642 = fsub fast float %2624, %2101
  %2643 = fsub fast float %2625, %2102
  %2644 = fsub fast float %2626, %2103
  %2645 = fmul fast float %2634, %2642
  %2646 = fmul fast float %2634, %2643
  %2647 = fmul fast float %2634, %2644
  %2648 = fadd fast float %2645, %2101
  %2649 = fadd fast float %2646, %2102
  %2650 = fadd fast float %2647, %2103
  %2651 = fsub fast float %52, %2080
  %2652 = fsub fast float %53, %2081
  %2653 = fsub fast float %54, %2082
  %2654 = fmul fast float %2634, %2651
  %2655 = fmul fast float %2634, %2652
  %2656 = fmul fast float %2634, %2653
  %2657 = fadd fast float %2654, %2080
  %2658 = fadd fast float %2655, %2081
  %2659 = fadd fast float %2656, %2082
  %2660 = fmul fast float %2634, %2629
  %2661 = call float @dx.op.unary.f32(i32 7, float %2641)  ; Saturate(value)
  %2662 = fsub fast float 1.000000e+00, %2661
  %2663 = fmul fast float %2660, %2662
  %2664 = fadd fast float %2663, %2661
  %2665 = fsub fast float 1.000000e+00, %2064
  %2666 = fmul fast float %2634, %2665
  %2667 = fadd fast float %2666, %2064
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2657, float %2658, float %2659, float %2657, float %2658, float %2659)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = call float @dx.op.unary.f32(i32 25, float %2668)  ; Rsqrt(value)
  %2670 = fmul fast float %2657, %2669
  %2671 = fmul fast float %2658, %2669
  %2672 = fmul fast float %2659, %2669
  br label %2673

; <label>:2673                                    ; preds = %2505, %2498
  %2674 = phi float [ %2504, %2498 ], [ %2511, %2505 ]
  %2675 = phi float [ %2503, %2498 ], [ %2509, %2505 ]
  %2676 = phi float [ %2502, %2498 ], [ %2507, %2505 ]
  %2677 = phi float [ %2501, %2498 ], [ %2510, %2505 ]
  %2678 = phi float [ %2500, %2498 ], [ %2508, %2505 ]
  %2679 = phi float [ %2499, %2498 ], [ %2506, %2505 ]
  %2680 = phi float [ %2116, %2498 ], [ %2557, %2505 ]
  %2681 = phi float [ %2117, %2498 ], [ %2558, %2505 ]
  %2682 = phi float [ %2118, %2498 ], [ %2559, %2505 ]
  %2683 = phi float [ %2101, %2498 ], [ %2648, %2505 ]
  %2684 = phi float [ %2102, %2498 ], [ %2649, %2505 ]
  %2685 = phi float [ %2103, %2498 ], [ %2650, %2505 ]
  %2686 = phi float [ %2080, %2498 ], [ %2670, %2505 ]
  %2687 = phi float [ %2081, %2498 ], [ %2671, %2505 ]
  %2688 = phi float [ %2082, %2498 ], [ %2672, %2505 ]
  %2689 = phi float [ %2104, %2498 ], [ %2664, %2505 ]
  %2690 = phi float [ %2064, %2498 ], [ %2667, %2505 ]
  %2691 = select i1 %188, float 0.000000e+00, float %2685
  %2692 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2687, float %2688, float %2676, float %2675, float %2674)  ; Dot3(ax,ay,az,bx,by,bz)
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = call float @dx.op.dot3.f32(i32 55, float %2679, float %2678, float %2677, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = fmul fast float %2694, 2.000000e+00
  %2696 = fmul fast float %2695, %2686
  %2697 = fmul fast float %2695, %2687
  %2698 = fmul fast float %2695, %2688
  %2699 = fsub fast float %2679, %2696
  %2700 = fsub fast float %2678, %2697
  %2701 = fsub fast float %2677, %2698
  %2702 = call float @dx.op.binary.f32(i32 36, float %2690, float 1.000000e+00)  ; FMin(a,b)
  %2703 = fsub fast float 1.000000e+00, %2690
  %2704 = bitcast float %2703 to i32
  %2705 = sub nsw i32 2129859010, %2704
  %2706 = bitcast i32 %2705 to float
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2710 = fadd fast float %2708, %117
  %2711 = fadd fast float %2709, %118
  %2712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.i32 %2712, 0
  %2714 = icmp eq i32 %2713, 1
  br i1 %2714, label %2715, label %2750

; <label>:2715                                    ; preds = %2673
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = fsub fast float %2710, %2717
  %2720 = fsub fast float %2711, %2718
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2724 = fmul fast float %2719, %2722
  %2725 = fmul fast float %2720, %2723
  %2726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2724, float %2725, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = fcmp fast ogt float %2727, 0.000000e+00
  %2729 = extractvalue %dx.types.CBufRet.i32 %2712, 3
  %2730 = icmp ne i32 %2729, 0
  %2731 = and i1 %2728, %2730
  br i1 %2731, label %2732, label %2750, !dx.controlflow.hints !80

; <label>:2732                                    ; preds = %2715
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2736 = fsub fast float %2710, %2734
  %2737 = fsub fast float %2711, %2735
  %2738 = fmul fast float %2736, %2736
  %2739 = fmul fast float %2737, %2737
  %2740 = fadd fast float %2738, %2739
  %2741 = uitofp i32 %2729 to float
  %2742 = fmul fast float %2741, %2741
  %2743 = fcmp fast ogt float %2740, %2742
  br i1 %2743, label %2750, label %2744

; <label>:2744                                    ; preds = %2732
  %2745 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %2746 = fsub fast float %2741, %2745
  %2747 = fmul fast float %2746, 0x3F75555560000000
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = call float @dx.op.binary.f32(i32 36, float %2748, float %2727)  ; FMin(a,b)
  br label %2750

; <label>:2750                                    ; preds = %2744, %2732, %2715, %2673
  %2751 = phi float [ 1.000000e+00, %2673 ], [ %2749, %2744 ], [ %2727, %2715 ], [ 0.000000e+00, %2732 ]
  %2752 = fcmp fast ogt float %2751, 0.000000e+00
  br i1 %2752, label %2753, label %2851, !dx.controlflow.hints !81

; <label>:2753                                    ; preds = %2750
  %2754 = fadd fast float %148, 5.000000e-01
  %2755 = call float @dx.op.unary.f32(i32 27, float %2754)  ; Round_ni(value)
  %2756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %146, float %147, float %2755, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 3
  %2762 = fmul fast float %2761, %2757
  %2763 = fmul fast float %2761, %2758
  %2764 = fmul fast float %2761, %2759
  %2765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %146, float %147, float %2755, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %146, float %147, float %2755, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.ResRet.f32 %2767, 1
  %2770 = fmul fast float %2768, 2.000000e+00
  %2771 = fmul fast float %2769, 2.000000e+00
  %2772 = fadd fast float %2770, -1.000000e+00
  %2773 = fadd fast float %2771, -1.000000e+00
  %2774 = fadd fast float %2772, %2773
  %2775 = fmul fast float %2774, 5.000000e-01
  %2776 = fsub fast float %2772, %2773
  %2777 = fmul fast float %2776, 5.000000e-01
  %2778 = call float @dx.op.unary.f32(i32 6, float %2775)  ; FAbs(value)
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = call float @dx.op.unary.f32(i32 6, float %2777)  ; FAbs(value)
  %2781 = fsub fast float %2779, %2780
  %2782 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2781)  ; FMax(a,b)
  %2783 = call float @dx.op.dot3.f32(i32 55, float %2775, float %2777, float %2782, float %2775, float %2777, float %2782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2784 = bitcast float %2783 to i32
  %2785 = ashr i32 %2784, 1
  %2786 = sub nsw i32 1597250115, %2785
  %2787 = bitcast i32 %2786 to float
  %2788 = fmul fast float %2787, %2775
  %2789 = fmul fast float %2787, %2777
  %2790 = fmul fast float %2787, %2782
  %2791 = fsub fast float 1.000000e+00, %2766
  %2792 = fdiv fast float %2791, %2790
  %2793 = fmul fast float %2790, %52
  %2794 = fmul fast float %2790, %53
  %2795 = fmul fast float %2790, %54
  %2796 = fmul fast float %2788, %48
  %2797 = fmul fast float %2788, %49
  %2798 = fmul fast float %2788, %50
  %2799 = fadd fast float %2793, %2796
  %2800 = fadd fast float %2794, %2797
  %2801 = fadd fast float %2795, %2798
  %2802 = fmul fast float %2789, %81
  %2803 = fmul fast float %2789, %82
  %2804 = fmul fast float %2789, %83
  %2805 = fadd fast float %2799, %2802
  %2806 = fadd fast float %2800, %2803
  %2807 = fadd fast float %2801, %2804
  %2808 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %2809 = call float @dx.op.unary.f32(i32 25, float %2808)  ; Rsqrt(value)
  %2810 = fmul fast float %2805, %2809
  %2811 = fmul fast float %2806, %2809
  %2812 = fmul fast float %2807, %2809
  %2813 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2687, float %2688, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %2814 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2815 = fmul fast float %2814, 5.000000e-01
  %2816 = fadd fast float %2815, 5.000000e-01
  %2817 = fmul fast float %2816, %2766
  %2818 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2687, float %2688, float %2810, float %2811, float %2812)  ; Dot3(ax,ay,az,bx,by,bz)
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2820 = fmul fast float %2819, %2792
  %2821 = fadd fast float %2817, %2820
  %2822 = fsub fast float 5.000000e-01, %2815
  %2823 = fmul fast float %2822, %2680
  %2824 = fmul fast float %2822, %2681
  %2825 = fmul fast float %2822, %2682
  %2826 = fadd fast float %2821, %2823
  %2827 = fmul fast float %2826, %2762
  %2828 = fadd fast float %2821, %2824
  %2829 = fmul fast float %2828, %2763
  %2830 = fadd fast float %2821, %2825
  %2831 = fmul fast float %2830, %2764
  %2832 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2700, float %2701, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2834 = fmul fast float %2833, 5.000000e-01
  %2835 = fadd fast float %2834, 5.000000e-01
  %2836 = fmul fast float %2835, %2766
  %2837 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2700, float %2701, float %2810, float %2811, float %2812)  ; Dot3(ax,ay,az,bx,by,bz)
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = fmul fast float %2838, %2792
  %2840 = fadd fast float %2836, %2839
  %2841 = fsub fast float 5.000000e-01, %2834
  %2842 = fmul fast float %2841, %2680
  %2843 = fmul fast float %2841, %2681
  %2844 = fmul fast float %2841, %2682
  %2845 = fadd fast float %2840, %2842
  %2846 = fmul fast float %2845, %2762
  %2847 = fadd fast float %2840, %2843
  %2848 = fmul fast float %2847, %2763
  %2849 = fadd fast float %2840, %2844
  %2850 = fmul fast float %2849, %2764
  br label %2851

; <label>:2851                                    ; preds = %2753, %2750
  %2852 = phi float [ %2846, %2753 ], [ 0.000000e+00, %2750 ]
  %2853 = phi float [ %2848, %2753 ], [ 0.000000e+00, %2750 ]
  %2854 = phi float [ %2850, %2753 ], [ 0.000000e+00, %2750 ]
  %2855 = phi float [ %2827, %2753 ], [ 0.000000e+00, %2750 ]
  %2856 = phi float [ %2829, %2753 ], [ 0.000000e+00, %2750 ]
  %2857 = phi float [ %2831, %2753 ], [ 0.000000e+00, %2750 ]
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2860 = fcmp fast ogt float %2859, 0.000000e+00
  %2861 = and i1 %2752, %2860
  br i1 %2861, label %2862, label %3066, !dx.controlflow.hints !82

; <label>:2862                                    ; preds = %2851
  %2863 = extractvalue %dx.types.CBufRet.f32 %2707, 2
  %2864 = fadd fast float %2863, %119
  %2865 = fmul fast float %2686, 3.200000e+01
  %2866 = fmul fast float %2687, 3.200000e+01
  %2867 = fadd fast float %2710, %2865
  %2868 = fadd fast float %2711, %2866
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.CBufRet.f32 %2869, 1
  %2872 = fsub fast float %2867, %2870
  %2873 = fsub fast float %2868, %2871
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 0
  %2876 = extractvalue %dx.types.CBufRet.f32 %2874, 1
  %2877 = fmul fast float %2872, %2875
  %2878 = fmul fast float %2873, %2876
  %2879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2880 = extractvalue %dx.types.CBufRet.f32 %2879, 0
  %2881 = extractvalue %dx.types.CBufRet.f32 %2879, 1
  %2882 = fsub fast float %2710, %2880
  %2883 = fsub fast float %2711, %2881
  %2884 = fmul fast float %2882, %2882
  %2885 = fmul fast float %2883, %2883
  %2886 = fadd fast float %2884, %2885
  %2887 = call float @dx.op.unary.f32(i32 24, float %2886)  ; Sqrt(value)
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.CBufRet.f32 %2888, 1
  %2891 = fsub fast float %2887, %2889
  %2892 = fdiv fast float %2891, %2890
  %2893 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2894 = fmul fast float %2893, 2.000000e+00
  %2895 = fsub fast float 3.000000e+00, %2894
  %2896 = fmul fast float %2893, %2893
  %2897 = fmul fast float %2896, %2895
  %2898 = fcmp fast oge float %2877, 0.000000e+00
  %2899 = fcmp fast ole float %2877, 1.000000e+00
  %2900 = and i1 %2899, %2898
  %2901 = fcmp fast oge float %2878, 0.000000e+00
  %2902 = and i1 %2901, %2900
  %2903 = fcmp fast ole float %2878, 1.000000e+00
  %2904 = and i1 %2903, %2902
  %2905 = fcmp fast ogt float %2897, 0.000000e+00
  %2906 = and i1 %2905, %2904
  br i1 %2906, label %2907, label %3030, !dx.controlflow.hints !83

; <label>:2907                                    ; preds = %2862
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 2
  %2910 = extractvalue %dx.types.CBufRet.f32 %2908, 3
  %2911 = fmul fast float %2909, %2877
  %2912 = fmul fast float %2910, %2878
  %2913 = call float @dx.op.unary.f32(i32 27, float %2911)  ; Round_ni(value)
  %2914 = call float @dx.op.unary.f32(i32 27, float %2912)  ; Round_ni(value)
  %2915 = fptosi float %2913 to i32
  %2916 = fptosi float %2914 to i32
  %2917 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2915, i32 %2916, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = lshr i32 %2918, 16
  %2920 = icmp eq i32 %2919, 65535
  br i1 %2920, label %3030, label %2921

; <label>:2921                                    ; preds = %2907
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = fmul fast float %2923, %2877
  %2925 = extractvalue %dx.types.CBufRet.f32 %2922, 1
  %2926 = fadd fast float %2924, %2925
  %2927 = extractvalue %dx.types.CBufRet.f32 %2922, 2
  %2928 = fmul fast float %2927, %2878
  %2929 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2930 = fadd fast float %2928, %2929
  %2931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2926, float %2930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.ResRet.f32 %2931, 1
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 1
  %2936 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2937 = fsub fast float %2935, %2936
  %2938 = fmul fast float %2937, %2932
  %2939 = fadd fast float %2938, %2936
  %2940 = extractvalue %dx.types.CBufRet.f32 %2934, 3
  %2941 = extractvalue %dx.types.CBufRet.f32 %2934, 2
  %2942 = fsub fast float %2940, %2941
  %2943 = fmul fast float %2942, %2933
  %2944 = fadd fast float %2943, %2941
  %2945 = fsub fast float %2864, %2939
  %2946 = fsub fast float %2944, %2939
  %2947 = fdiv fast float %2945, %2946
  %2948 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2858, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2951 = extractvalue %dx.types.CBufRet.f32 %2908, 1
  %2952 = fmul fast float %2950, %2877
  %2953 = fmul fast float %2951, %2878
  %2954 = fmul fast float %2952, 1.250000e-01
  %2955 = fmul fast float %2953, 1.250000e-01
  %2956 = call float @dx.op.unary.f32(i32 27, float %2954)  ; Round_ni(value)
  %2957 = call float @dx.op.unary.f32(i32 27, float %2955)  ; Round_ni(value)
  %2958 = fmul fast float %2956, 8.000000e+00
  %2959 = fmul fast float %2957, 8.000000e+00
  %2960 = fsub fast float %2952, %2958
  %2961 = fsub fast float %2953, %2959
  %2962 = fadd fast float %2960, 5.000000e-01
  %2963 = fadd fast float %2961, 5.000000e-01
  %2964 = and i32 %2919, 255
  %2965 = lshr i32 %2918, 24
  %2966 = mul nuw nsw i32 %2964, 9
  %2967 = uitofp i32 %2966 to float
  %2968 = mul nuw nsw i32 %2965, 9
  %2969 = uitofp i32 %2968 to float
  %2970 = fadd fast float %2962, %2967
  %2971 = fadd fast float %2963, %2969
  %2972 = fdiv fast float %2970, %2859
  %2973 = fdiv fast float %2971, %2949
  %2974 = fmul fast float %2948, 4.375000e-01
  %2975 = fadd fast float %2974, 3.125000e-02
  %2976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %2972, float %2973, float %2975, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.ResRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.ResRet.f32 %2976, 2
  %2980 = fadd fast float %2974, 5.312500e-01
  %2981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %2972, float %2973, float %2980, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = fmul fast float %2982, 2.000000e+00
  %2986 = fmul fast float %2983, 2.000000e+00
  %2987 = fmul fast float %2984, 2.000000e+00
  %2988 = fadd fast float %2985, -1.000000e+00
  %2989 = fadd fast float %2986, -1.000000e+00
  %2990 = fadd fast float %2987, -1.000000e+00
  %2991 = fmul fast float %2988, %2988
  %2992 = fmul fast float %2989, %2989
  %2993 = fadd fast float %2991, %2992
  %2994 = fmul fast float %2990, %2990
  %2995 = fadd fast float %2993, %2994
  %2996 = call float @dx.op.unary.f32(i32 24, float %2995)  ; Sqrt(value)
  %2997 = fcmp fast ogt float %2996, 0.000000e+00
  br i1 %2997, label %2998, label %3002

; <label>:2998                                    ; preds = %2921
  %2999 = fdiv fast float %2988, %2996
  %3000 = fdiv fast float %2989, %2996
  %3001 = fdiv fast float %2990, %2996
  br label %3002

; <label>:3002                                    ; preds = %2998, %2921
  %3003 = phi float [ %2999, %2998 ], [ 0.000000e+00, %2921 ]
  %3004 = phi float [ %3000, %2998 ], [ 0.000000e+00, %2921 ]
  %3005 = phi float [ %3001, %2998 ], [ 0.000000e+00, %2921 ]
  %3006 = call float @dx.op.dot3.f32(i32 55, float %3003, float %3004, float %3005, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3006)  ; FMax(a,b)
  %3008 = fmul fast float %3007, 0x400C5BF8A0000000
  %3009 = fmul fast float %2977, %2897
  %3010 = fmul fast float %3009, %3008
  %3011 = fmul fast float %2978, %2897
  %3012 = fmul fast float %3011, %3008
  %3013 = fmul fast float %2979, %2897
  %3014 = fmul fast float %3013, %3008
  %3015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.f32 %3015, 3
  %3017 = fmul fast float %3010, %3016
  %3018 = fmul fast float %3012, %3016
  %3019 = fmul fast float %3014, %3016
  %3020 = fcmp fast ogt float %2864, %2944
  br i1 %3020, label %3021, label %3030

; <label>:3021                                    ; preds = %3002
  %3022 = fmul fast float %2946, 0x3FC24924A0000000
  %3023 = fsub fast float %2864, %2944
  %3024 = fdiv fast float %3023, %3022
  %3025 = call float @dx.op.unary.f32(i32 7, float %3024)  ; Saturate(value)
  %3026 = fsub fast float 1.000000e+00, %3025
  %3027 = fmul fast float %3026, %3017
  %3028 = fmul fast float %3026, %3018
  %3029 = fmul fast float %3026, %3019
  br label %3030

; <label>:3030                                    ; preds = %3021, %3002, %2907, %2862
  %3031 = phi float [ %3029, %3021 ], [ %3019, %3002 ], [ 0.000000e+00, %2907 ], [ 0.000000e+00, %2862 ]
  %3032 = phi float [ %3028, %3021 ], [ %3018, %3002 ], [ 0.000000e+00, %2907 ], [ 0.000000e+00, %2862 ]
  %3033 = phi float [ %3027, %3021 ], [ %3017, %3002 ], [ 0.000000e+00, %2907 ], [ 0.000000e+00, %2862 ]
  %3034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3033)  ; FMax(a,b)
  %3035 = fmul fast float %3034, 0x3FD20DD760000000
  %3036 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2699, float %2700, float %2701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3037 = fmul fast float %3036, 0x3FDF454380000000
  %3038 = fmul fast float %3036, %3036
  %3039 = fmul fast float %3038, 0x3FEE471020000000
  %3040 = fadd fast float %3039, 0xBFD42F6020000000
  %3041 = call float @dx.op.dot3.f32(i32 55, float %3034, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3037, float %3040)  ; Dot3(ax,ay,az,bx,by,bz)
  %3042 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3032)  ; FMax(a,b)
  %3043 = fmul fast float %3042, 0x3FD20DD760000000
  %3044 = call float @dx.op.dot3.f32(i32 55, float %3042, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3037, float %3040)  ; Dot3(ax,ay,az,bx,by,bz)
  %3045 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3031)  ; FMax(a,b)
  %3046 = fmul fast float %3045, 0x3FD20DD760000000
  %3047 = call float @dx.op.dot3.f32(i32 55, float %3045, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3037, float %3040)  ; Dot3(ax,ay,az,bx,by,bz)
  %3048 = call float @dx.op.binary.f32(i32 35, float %3035, float 0.000000e+00)  ; FMax(a,b)
  %3049 = call float @dx.op.binary.f32(i32 35, float %3043, float 0.000000e+00)  ; FMax(a,b)
  %3050 = call float @dx.op.binary.f32(i32 35, float %3046, float 0.000000e+00)  ; FMax(a,b)
  %3051 = call float @dx.op.binary.f32(i32 35, float %3041, float 0.000000e+00)  ; FMax(a,b)
  %3052 = call float @dx.op.binary.f32(i32 35, float %3044, float 0.000000e+00)  ; FMax(a,b)
  %3053 = call float @dx.op.binary.f32(i32 35, float %3047, float 0.000000e+00)  ; FMax(a,b)
  %3054 = fmul fast float %3048, %2751
  %3055 = fmul fast float %3049, %2751
  %3056 = fmul fast float %3050, %2751
  %3057 = fadd fast float %3054, %2855
  %3058 = fadd fast float %3055, %2856
  %3059 = fadd fast float %3056, %2857
  %3060 = fmul fast float %3051, %2751
  %3061 = fmul fast float %3052, %2751
  %3062 = fmul fast float %3053, %2751
  %3063 = fadd fast float %3060, %2852
  %3064 = fadd fast float %3061, %2853
  %3065 = fadd fast float %3062, %2854
  br label %3066

; <label>:3066                                    ; preds = %3030, %2851
  %3067 = phi float [ %3063, %3030 ], [ %2852, %2851 ]
  %3068 = phi float [ %3064, %3030 ], [ %2853, %2851 ]
  %3069 = phi float [ %3065, %3030 ], [ %2854, %2851 ]
  %3070 = phi float [ %3057, %3030 ], [ %2855, %2851 ]
  %3071 = phi float [ %3058, %3030 ], [ %2856, %2851 ]
  %3072 = phi float [ %3059, %3030 ], [ %2857, %2851 ]
  %3073 = fcmp fast olt float %2751, 1.000000e+00
  br i1 %3073, label %3074, label %3892, !dx.controlflow.hints !84

; <label>:3074                                    ; preds = %3066
  %3075 = extractvalue %dx.types.CBufRet.f32 %2707, 2
  %3076 = fadd fast float %3075, %119
  %3077 = fmul fast float %2686, 3.200000e+01
  %3078 = fmul fast float %2687, 3.200000e+01
  %3079 = fadd fast float %2710, %3077
  %3080 = fadd fast float %2711, %3078
  %3081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3081, 0
  %3083 = extractvalue %dx.types.CBufRet.f32 %3081, 1
  %3084 = fsub fast float %3079, %3082
  %3085 = fsub fast float %3080, %3083
  %3086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.f32 %3086, 0
  %3088 = extractvalue %dx.types.CBufRet.f32 %3086, 1
  %3089 = fmul fast float %3084, %3087
  %3090 = fmul fast float %3085, %3088
  %3091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3092 = extractvalue %dx.types.CBufRet.f32 %3091, 0
  %3093 = fmul fast float %3089, %3092
  %3094 = extractvalue %dx.types.CBufRet.f32 %3091, 1
  %3095 = fadd fast float %3093, %3094
  %3096 = extractvalue %dx.types.CBufRet.f32 %3091, 2
  %3097 = fmul fast float %3096, %3090
  %3098 = extractvalue %dx.types.CBufRet.f32 %3091, 3
  %3099 = fadd fast float %3097, %3098
  %3100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3095, float %3099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.ResRet.f32 %3100, 1
  %3103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.f32 %3103, 1
  %3105 = extractvalue %dx.types.CBufRet.f32 %3103, 0
  %3106 = fsub fast float %3104, %3105
  %3107 = fmul fast float %3106, %3101
  %3108 = fadd fast float %3107, %3105
  %3109 = extractvalue %dx.types.CBufRet.f32 %3103, 3
  %3110 = extractvalue %dx.types.CBufRet.f32 %3103, 2
  %3111 = fsub fast float %3109, %3110
  %3112 = fmul fast float %3111, %3102
  %3113 = fadd fast float %3112, %3110
  %3114 = fsub fast float %3076, %3108
  %3115 = fsub fast float %3113, %3108
  %3116 = fdiv fast float %3114, %3115
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 0
  %3120 = fmul fast float %3119, %3117
  %3121 = extractvalue %dx.types.CBufRet.f32 %3118, 1
  %3122 = fadd fast float %3120, %3121
  %3123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3095, float %3099, float %3122, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3128 = extractvalue %dx.types.CBufRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.CBufRet.f32 %3127, 1
  %3130 = extractvalue %dx.types.CBufRet.f32 %3127, 2
  %3131 = fmul fast float %3128, %3124
  %3132 = fmul fast float %3129, %3125
  %3133 = fmul fast float %3130, %3126
  %3134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3135 = extractvalue %dx.types.CBufRet.f32 %3134, 0
  %3136 = extractvalue %dx.types.CBufRet.f32 %3134, 1
  %3137 = extractvalue %dx.types.CBufRet.f32 %3134, 2
  %3138 = fadd fast float %3131, %3135
  %3139 = fadd fast float %3132, %3136
  %3140 = fadd fast float %3133, %3137
  %3141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3142 = extractvalue %dx.types.CBufRet.f32 %3141, 0
  %3143 = fmul fast float %3142, %3089
  %3144 = extractvalue %dx.types.CBufRet.f32 %3141, 1
  %3145 = fadd fast float %3143, %3144
  %3146 = extractvalue %dx.types.CBufRet.f32 %3141, 2
  %3147 = fmul fast float %3146, %3090
  %3148 = extractvalue %dx.types.CBufRet.f32 %3141, 3
  %3149 = fadd fast float %3147, %3148
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.CBufRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.CBufRet.f32 %3150, 2
  %3154 = extractvalue %dx.types.CBufRet.f32 %3150, 3
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.CBufRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.CBufRet.f32 %3155, 2
  %3159 = extractvalue %dx.types.CBufRet.f32 %3155, 3
  %3160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3145, float %3149, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.ResRet.f32 %3160, 2
  %3164 = extractvalue %dx.types.ResRet.f32 %3160, 3
  %3165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3145, float %3149, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.ResRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.ResRet.f32 %3165, 2
  %3169 = extractvalue %dx.types.ResRet.f32 %3165, 3
  %3170 = fmul fast float %3161, %3138
  %3171 = fmul fast float %3166, %3138
  %3172 = fmul fast float %3168, %3138
  %3173 = fmul fast float %3164, %3138
  %3174 = fadd fast float %3170, %3151
  %3175 = fadd fast float %3171, %3152
  %3176 = fadd fast float %3172, %3153
  %3177 = fadd fast float %3173, %3154
  %3178 = fmul fast float %3162, %3138
  %3179 = fmul fast float %3167, %3138
  %3180 = fadd fast float %3178, %3156
  %3181 = fadd fast float %3179, %3157
  %3182 = fmul fast float %3163, %3138
  %3183 = fmul fast float %3169, %3138
  %3184 = fadd fast float %3182, %3158
  %3185 = fadd fast float %3183, %3159
  %3186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3145, float %3149, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.ResRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.ResRet.f32 %3186, 2
  %3190 = extractvalue %dx.types.ResRet.f32 %3186, 3
  %3191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3145, float %3149, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  %3193 = extractvalue %dx.types.ResRet.f32 %3191, 1
  %3194 = extractvalue %dx.types.ResRet.f32 %3191, 2
  %3195 = extractvalue %dx.types.ResRet.f32 %3191, 3
  %3196 = fmul fast float %3187, %3139
  %3197 = fmul fast float %3192, %3139
  %3198 = fmul fast float %3194, %3139
  %3199 = fmul fast float %3190, %3139
  %3200 = fadd fast float %3174, %3196
  %3201 = fadd fast float %3175, %3197
  %3202 = fadd fast float %3176, %3198
  %3203 = fadd fast float %3177, %3199
  %3204 = fmul fast float %3188, %3139
  %3205 = fmul fast float %3193, %3139
  %3206 = fadd fast float %3180, %3204
  %3207 = fadd fast float %3181, %3205
  %3208 = fmul fast float %3189, %3139
  %3209 = fmul fast float %3195, %3139
  %3210 = fadd fast float %3184, %3208
  %3211 = fadd fast float %3185, %3209
  %3212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3145, float %3149, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = extractvalue %dx.types.ResRet.f32 %3212, 3
  %3217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3145, float %3149, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.ResRet.f32 %3217, 2
  %3221 = extractvalue %dx.types.ResRet.f32 %3217, 3
  %3222 = fmul fast float %3213, %3140
  %3223 = fmul fast float %3218, %3140
  %3224 = fmul fast float %3220, %3140
  %3225 = fmul fast float %3216, %3140
  %3226 = fadd fast float %3200, %3222
  %3227 = fadd fast float %3201, %3223
  %3228 = fadd fast float %3202, %3224
  %3229 = fadd fast float %3203, %3225
  %3230 = fmul fast float %3214, %3140
  %3231 = fmul fast float %3219, %3140
  %3232 = fadd fast float %3206, %3230
  %3233 = fadd fast float %3207, %3231
  %3234 = fmul fast float %3215, %3140
  %3235 = fmul fast float %3221, %3140
  %3236 = fadd fast float %3210, %3234
  %3237 = fadd fast float %3211, %3235
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = fsub fast float %2710, %3239
  %3241 = fsub fast float %3082, %2710
  %3242 = call float @dx.op.binary.f32(i32 35, float %3241, float %3240)  ; FMax(a,b)
  %3243 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3244 = fsub fast float %2711, %3243
  %3245 = fsub fast float %3083, %2711
  %3246 = call float @dx.op.binary.f32(i32 35, float %3245, float %3244)  ; FMax(a,b)
  %3247 = call float @dx.op.binary.f32(i32 35, float %3242, float %3246)  ; FMax(a,b)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3086, 3
  %3249 = fmul fast float %3248, %3247
  %3250 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3255 = extractvalue %dx.types.CBufRet.f32 %3251, 3
  %3256 = fsub fast float %3252, %3226
  %3257 = fsub fast float %3253, %3227
  %3258 = fsub fast float %3254, %3228
  %3259 = fsub fast float %3255, %3229
  %3260 = fmul fast float %3256, %3250
  %3261 = fmul fast float %3257, %3250
  %3262 = fmul fast float %3258, %3250
  %3263 = fmul fast float %3259, %3250
  %3264 = fadd fast float %3260, %3226
  %3265 = fadd fast float %3261, %3227
  %3266 = fadd fast float %3262, %3228
  %3267 = fadd fast float %3263, %3229
  %3268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.CBufRet.f32 %3268, 1
  %3271 = fsub fast float %3269, %3232
  %3272 = fsub fast float %3270, %3233
  %3273 = fmul fast float %3271, %3250
  %3274 = fmul fast float %3272, %3250
  %3275 = fadd fast float %3273, %3232
  %3276 = fadd fast float %3274, %3233
  %3277 = extractvalue %dx.types.CBufRet.f32 %3268, 2
  %3278 = extractvalue %dx.types.CBufRet.f32 %3268, 3
  %3279 = fsub fast float %3277, %3236
  %3280 = fsub fast float %3278, %3237
  %3281 = fmul fast float %3279, %3250
  %3282 = fmul fast float %3280, %3250
  %3283 = fadd fast float %3281, %3236
  %3284 = fadd fast float %3282, %3237
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3287 = fmul fast float %3286, %3264
  %3288 = fmul fast float %3286, %3265
  %3289 = fmul fast float %3286, %3266
  %3290 = fmul fast float %3286, %3267
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 0
  %3293 = fmul fast float %3292, %3275
  %3294 = fmul fast float %3292, %3276
  %3295 = fadd fast float %3293, %3287
  %3296 = fadd fast float %3294, %3289
  %3297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3297, 0
  %3299 = fmul fast float %3298, %3283
  %3300 = fmul fast float %3298, %3284
  %3301 = fadd fast float %3295, %3299
  %3302 = fadd fast float %3296, %3300
  %3303 = extractvalue %dx.types.CBufRet.f32 %3285, 1
  %3304 = fmul fast float %3303, %3264
  %3305 = fmul fast float %3303, %3265
  %3306 = fmul fast float %3303, %3266
  %3307 = fmul fast float %3303, %3267
  %3308 = extractvalue %dx.types.CBufRet.f32 %3291, 1
  %3309 = fmul fast float %3308, %3275
  %3310 = fmul fast float %3308, %3276
  %3311 = fadd fast float %3309, %3304
  %3312 = fadd fast float %3310, %3306
  %3313 = extractvalue %dx.types.CBufRet.f32 %3297, 1
  %3314 = fmul fast float %3313, %3283
  %3315 = fmul fast float %3313, %3284
  %3316 = fadd fast float %3311, %3314
  %3317 = fadd fast float %3312, %3315
  %3318 = extractvalue %dx.types.CBufRet.f32 %3285, 2
  %3319 = fmul fast float %3318, %3264
  %3320 = fmul fast float %3318, %3265
  %3321 = fmul fast float %3318, %3266
  %3322 = fmul fast float %3318, %3267
  %3323 = extractvalue %dx.types.CBufRet.f32 %3291, 2
  %3324 = fmul fast float %3323, %3275
  %3325 = fmul fast float %3323, %3276
  %3326 = fadd fast float %3324, %3319
  %3327 = fadd fast float %3325, %3321
  %3328 = extractvalue %dx.types.CBufRet.f32 %3297, 2
  %3329 = fmul fast float %3328, %3283
  %3330 = fmul fast float %3328, %3284
  %3331 = fadd fast float %3326, %3329
  %3332 = fadd fast float %3327, %3330
  %3333 = fmul fast float %3320, %3320
  %3334 = fmul fast float %3332, %3332
  %3335 = fmul fast float %3322, %3322
  %3336 = fadd fast float %3335, %3333
  %3337 = fadd fast float %3336, %3334
  %3338 = call float @dx.op.unary.f32(i32 24, float %3337)  ; Sqrt(value)
  %3339 = fcmp fast ugt float %3338, 0.000000e+00
  br i1 %3339, label %3340, label %3355

; <label>:3340                                    ; preds = %3074
  %3341 = fsub fast float -0.000000e+00, %3322
  %3342 = fdiv fast float %3341, %3338
  %3343 = fsub fast float -0.000000e+00, %3320
  %3344 = fdiv fast float %3343, %3338
  %3345 = fdiv fast float %3332, %3338
  %3346 = fmul fast float %3331, 0x3FE279A760000000
  %3347 = fmul fast float %3344, %3320
  %3348 = fmul fast float %3345, %3332
  %3349 = fmul fast float %3342, %3322
  %3350 = fadd fast float %3347, %3349
  %3351 = fsub fast float %3350, %3348
  %3352 = call float @dx.op.unary.f32(i32 6, float %3351)  ; FAbs(value)
  %3353 = fadd fast float %3352, 0x3DDB7CDFE0000000
  %3354 = fdiv fast float %3346, %3353
  br label %3355

; <label>:3355                                    ; preds = %3340, %3074
  %3356 = phi float [ %3354, %3340 ], [ 1.000000e+00, %3074 ]
  %3357 = fmul fast float %3305, %3305
  %3358 = fmul fast float %3317, %3317
  %3359 = fmul fast float %3307, %3307
  %3360 = fadd fast float %3359, %3357
  %3361 = fadd fast float %3360, %3358
  %3362 = call float @dx.op.unary.f32(i32 24, float %3361)  ; Sqrt(value)
  %3363 = fcmp fast ugt float %3362, 0.000000e+00
  br i1 %3363, label %3364, label %3379

; <label>:3364                                    ; preds = %3355
  %3365 = fsub fast float -0.000000e+00, %3307
  %3366 = fdiv fast float %3365, %3362
  %3367 = fsub fast float -0.000000e+00, %3305
  %3368 = fdiv fast float %3367, %3362
  %3369 = fdiv fast float %3317, %3362
  %3370 = fmul fast float %3316, 0x3FE279A760000000
  %3371 = fmul fast float %3368, %3305
  %3372 = fmul fast float %3369, %3317
  %3373 = fmul fast float %3366, %3307
  %3374 = fadd fast float %3371, %3373
  %3375 = fsub fast float %3374, %3372
  %3376 = call float @dx.op.unary.f32(i32 6, float %3375)  ; FAbs(value)
  %3377 = fadd fast float %3376, 0x3DDB7CDFE0000000
  %3378 = fdiv fast float %3370, %3377
  br label %3379

; <label>:3379                                    ; preds = %3364, %3355
  %3380 = phi float [ %3378, %3364 ], [ 1.000000e+00, %3355 ]
  %3381 = call float @dx.op.binary.f32(i32 36, float %3380, float %3356)  ; FMin(a,b)
  %3382 = fmul fast float %3288, %3288
  %3383 = fmul fast float %3302, %3302
  %3384 = fmul fast float %3290, %3290
  %3385 = fadd fast float %3384, %3382
  %3386 = fadd fast float %3385, %3383
  %3387 = call float @dx.op.unary.f32(i32 24, float %3386)  ; Sqrt(value)
  %3388 = fcmp fast ugt float %3387, 0.000000e+00
  br i1 %3388, label %3389, label %3404

; <label>:3389                                    ; preds = %3379
  %3390 = fsub fast float -0.000000e+00, %3290
  %3391 = fdiv fast float %3390, %3387
  %3392 = fsub fast float -0.000000e+00, %3288
  %3393 = fdiv fast float %3392, %3387
  %3394 = fdiv fast float %3302, %3387
  %3395 = fmul fast float %3301, 0x3FE279A760000000
  %3396 = fmul fast float %3393, %3288
  %3397 = fmul fast float %3394, %3302
  %3398 = fmul fast float %3391, %3290
  %3399 = fadd fast float %3396, %3398
  %3400 = fsub fast float %3399, %3397
  %3401 = call float @dx.op.unary.f32(i32 6, float %3400)  ; FAbs(value)
  %3402 = fadd fast float %3401, 0x3DDB7CDFE0000000
  %3403 = fdiv fast float %3395, %3402
  br label %3404

; <label>:3404                                    ; preds = %3389, %3379
  %3405 = phi float [ %3403, %3389 ], [ 1.000000e+00, %3379 ]
  %3406 = call float @dx.op.binary.f32(i32 36, float %3405, float %3381)  ; FMin(a,b)
  %3407 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3408 = fcmp fast olt float %3407, 1.000000e+00
  br i1 %3408, label %3409, label %3419

; <label>:3409                                    ; preds = %3404
  %3410 = fmul fast float %3407, %3288
  %3411 = fmul fast float %3407, %3302
  %3412 = fmul fast float %3407, %3290
  %3413 = fmul fast float %3407, %3305
  %3414 = fmul fast float %3407, %3317
  %3415 = fmul fast float %3407, %3307
  %3416 = fmul fast float %3407, %3320
  %3417 = fmul fast float %3407, %3332
  %3418 = fmul fast float %3407, %3322
  br label %3419

; <label>:3419                                    ; preds = %3409, %3404
  %3420 = phi float [ %3416, %3409 ], [ %3320, %3404 ]
  %3421 = phi float [ %3417, %3409 ], [ %3332, %3404 ]
  %3422 = phi float [ %3418, %3409 ], [ %3322, %3404 ]
  %3423 = phi float [ %3413, %3409 ], [ %3305, %3404 ]
  %3424 = phi float [ %3414, %3409 ], [ %3317, %3404 ]
  %3425 = phi float [ %3415, %3409 ], [ %3307, %3404 ]
  %3426 = phi float [ %3410, %3409 ], [ %3288, %3404 ]
  %3427 = phi float [ %3411, %3409 ], [ %3302, %3404 ]
  %3428 = phi float [ %3412, %3409 ], [ %3290, %3404 ]
  %3429 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3301)  ; FMax(a,b)
  %3430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3316)  ; FMax(a,b)
  %3431 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3331)  ; FMax(a,b)
  %3432 = fcmp fast oge float %3089, 0.000000e+00
  %3433 = and i1 %3432, %2860
  %3434 = fcmp fast ole float %3089, 1.000000e+00
  %3435 = and i1 %3434, %3433
  %3436 = fcmp fast oge float %3090, 0.000000e+00
  %3437 = and i1 %3436, %3435
  %3438 = fcmp fast ole float %3090, 1.000000e+00
  %3439 = and i1 %3438, %3437
  br i1 %3439, label %3440, label %3585, !dx.controlflow.hints !85

; <label>:3440                                    ; preds = %3419
  %3441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.f32 %3441, 2
  %3443 = extractvalue %dx.types.CBufRet.f32 %3441, 3
  %3444 = fmul fast float %3442, %3089
  %3445 = fmul fast float %3443, %3090
  %3446 = call float @dx.op.unary.f32(i32 27, float %3444)  ; Round_ni(value)
  %3447 = call float @dx.op.unary.f32(i32 27, float %3445)  ; Round_ni(value)
  %3448 = fptosi float %3446 to i32
  %3449 = fptosi float %3447 to i32
  %3450 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3448, i32 %3449, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = and i32 %3451, 65535
  %3453 = lshr i32 %3451, 16
  %3454 = icmp eq i32 %3452, 65535
  br i1 %3454, label %3491, label %3455

; <label>:3455                                    ; preds = %3440
  %3456 = extractvalue %dx.types.CBufRet.f32 %2858, 1
  %3457 = extractvalue %dx.types.CBufRet.f32 %3441, 0
  %3458 = extractvalue %dx.types.CBufRet.f32 %3441, 1
  %3459 = fmul fast float %3457, %3089
  %3460 = fmul fast float %3458, %3090
  %3461 = fmul fast float %3459, 1.250000e-01
  %3462 = fmul fast float %3460, 1.250000e-01
  %3463 = call float @dx.op.unary.f32(i32 27, float %3461)  ; Round_ni(value)
  %3464 = call float @dx.op.unary.f32(i32 27, float %3462)  ; Round_ni(value)
  %3465 = fmul fast float %3463, 8.000000e+00
  %3466 = fmul fast float %3464, 8.000000e+00
  %3467 = and i32 %3451, 255
  %3468 = lshr i32 %3451, 8
  %3469 = and i32 %3468, 255
  %3470 = mul nuw nsw i32 %3467, 9
  %3471 = uitofp i32 %3470 to float
  %3472 = mul nuw nsw i32 %3469, 9
  %3473 = uitofp i32 %3472 to float
  %3474 = fadd fast float %3471, 5.000000e-01
  %3475 = fadd fast float %3474, %3459
  %3476 = fsub fast float %3475, %3465
  %3477 = fadd fast float %3473, 5.000000e-01
  %3478 = fadd fast float %3477, %3460
  %3479 = fsub fast float %3478, %3466
  %3480 = fdiv fast float %3476, %2859
  %3481 = fdiv fast float %3479, %3456
  %3482 = fmul fast float %3117, 4.375000e-01
  %3483 = fadd fast float %3482, 3.125000e-02
  %3484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3480, float %3481, float %3483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3488 = fadd fast float %3485, %3429
  %3489 = fadd fast float %3486, %3430
  %3490 = fadd fast float %3487, %3431
  br label %3491

; <label>:3491                                    ; preds = %3455, %3440
  %3492 = phi float [ %3490, %3455 ], [ %3431, %3440 ]
  %3493 = phi float [ %3489, %3455 ], [ %3430, %3440 ]
  %3494 = phi float [ %3488, %3455 ], [ %3429, %3440 ]
  %3495 = icmp eq i32 %3453, 65535
  br i1 %3495, label %3585, label %3496

; <label>:3496                                    ; preds = %3491
  %3497 = extractvalue %dx.types.CBufRet.f32 %2858, 1
  %3498 = extractvalue %dx.types.CBufRet.f32 %3441, 0
  %3499 = extractvalue %dx.types.CBufRet.f32 %3441, 1
  %3500 = fmul fast float %3498, %3089
  %3501 = fmul fast float %3499, %3090
  %3502 = fmul fast float %3500, 1.250000e-01
  %3503 = fmul fast float %3501, 1.250000e-01
  %3504 = call float @dx.op.unary.f32(i32 27, float %3502)  ; Round_ni(value)
  %3505 = call float @dx.op.unary.f32(i32 27, float %3503)  ; Round_ni(value)
  %3506 = fmul fast float %3504, 8.000000e+00
  %3507 = fmul fast float %3505, 8.000000e+00
  %3508 = fsub fast float %3500, %3506
  %3509 = fsub fast float %3501, %3507
  %3510 = fadd fast float %3508, 5.000000e-01
  %3511 = fadd fast float %3509, 5.000000e-01
  %3512 = and i32 %3453, 255
  %3513 = lshr i32 %3451, 24
  %3514 = mul nuw nsw i32 %3512, 9
  %3515 = uitofp i32 %3514 to float
  %3516 = mul nuw nsw i32 %3513, 9
  %3517 = uitofp i32 %3516 to float
  %3518 = fadd fast float %3510, %3515
  %3519 = fadd fast float %3511, %3517
  %3520 = fdiv fast float %3518, %2859
  %3521 = fdiv fast float %3519, %3497
  %3522 = fmul fast float %3117, 4.375000e-01
  %3523 = fadd fast float %3522, 3.125000e-02
  %3524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3520, float %3521, float %3523, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3528 = fadd fast float %3522, 5.312500e-01
  %3529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3520, float %3521, float %3528, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = fmul fast float %3530, 2.000000e+00
  %3534 = fmul fast float %3531, 2.000000e+00
  %3535 = fmul fast float %3532, 2.000000e+00
  %3536 = fadd fast float %3533, -1.000000e+00
  %3537 = fadd fast float %3534, -1.000000e+00
  %3538 = fadd fast float %3535, -1.000000e+00
  %3539 = fmul fast float %3536, %3536
  %3540 = fmul fast float %3537, %3537
  %3541 = fadd fast float %3539, %3540
  %3542 = fmul fast float %3538, %3538
  %3543 = fadd fast float %3541, %3542
  %3544 = call float @dx.op.unary.f32(i32 24, float %3543)  ; Sqrt(value)
  %3545 = fcmp fast ogt float %3544, 0.000000e+00
  br i1 %3545, label %3546, label %3550

; <label>:3546                                    ; preds = %3496
  %3547 = fdiv fast float %3536, %3544
  %3548 = fdiv fast float %3537, %3544
  %3549 = fdiv fast float %3538, %3544
  br label %3550

; <label>:3550                                    ; preds = %3546, %3496
  %3551 = phi float [ %3547, %3546 ], [ 0.000000e+00, %3496 ]
  %3552 = phi float [ %3548, %3546 ], [ 0.000000e+00, %3496 ]
  %3553 = phi float [ %3549, %3546 ], [ 0.000000e+00, %3496 ]
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.CBufRet.f32 %3554, 1
  %3557 = fsub fast float %2710, %3555
  %3558 = fsub fast float %2711, %3556
  %3559 = fmul fast float %3557, %3557
  %3560 = fmul fast float %3558, %3558
  %3561 = fadd fast float %3559, %3560
  %3562 = call float @dx.op.unary.f32(i32 24, float %3561)  ; Sqrt(value)
  %3563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3563, 0
  %3565 = extractvalue %dx.types.CBufRet.f32 %3563, 1
  %3566 = fsub fast float %3562, %3564
  %3567 = fdiv fast float %3566, %3565
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3569 = fmul fast float %3568, 2.000000e+00
  %3570 = fsub fast float 3.000000e+00, %3569
  %3571 = fmul fast float %3568, %3568
  %3572 = fmul fast float %3571, %3570
  %3573 = call float @dx.op.dot3.f32(i32 55, float %3551, float %3552, float %3553, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %3574 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3573)  ; FMax(a,b)
  %3575 = fmul fast float %3574, 0x400C5BF8A0000000
  %3576 = fmul fast float %3572, %3525
  %3577 = fmul fast float %3576, %3575
  %3578 = fadd fast float %3577, %3494
  %3579 = fmul fast float %3572, %3526
  %3580 = fmul fast float %3579, %3575
  %3581 = fadd fast float %3580, %3493
  %3582 = fmul fast float %3572, %3527
  %3583 = fmul fast float %3582, %3575
  %3584 = fadd fast float %3583, %3492
  br label %3585

; <label>:3585                                    ; preds = %3550, %3491, %3419
  %3586 = phi float [ %3584, %3550 ], [ %3492, %3491 ], [ %3431, %3419 ]
  %3587 = phi float [ %3581, %3550 ], [ %3493, %3491 ], [ %3430, %3419 ]
  %3588 = phi float [ %3578, %3550 ], [ %3494, %3491 ], [ %3429, %3419 ]
  %3589 = fcmp fast ogt float %3076, %3113
  %3590 = and i1 %3432, %3589
  %3591 = and i1 %3434, %3590
  %3592 = and i1 %3436, %3591
  %3593 = and i1 %3438, %3592
  br i1 %3593, label %3594, label %3651, !dx.controlflow.hints !86

; <label>:3594                                    ; preds = %3585
  %3595 = fmul fast float %3115, 0x3FC24924A0000000
  %3596 = fsub fast float %3076, %3113
  %3597 = fdiv fast float %3596, %3595
  %3598 = call float @dx.op.unary.f32(i32 7, float %3597)  ; Saturate(value)
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 0
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3605 = fsub fast float %3600, %3588
  %3606 = fsub fast float %3602, %3426
  %3607 = fsub fast float %3603, %3427
  %3608 = fsub fast float %3604, %3428
  %3609 = fmul fast float %3605, %3598
  %3610 = fmul fast float %3606, %3598
  %3611 = fmul fast float %3607, %3598
  %3612 = fmul fast float %3608, %3598
  %3613 = fadd fast float %3609, %3588
  %3614 = fadd fast float %3610, %3426
  %3615 = fadd fast float %3611, %3427
  %3616 = fadd fast float %3612, %3428
  %3617 = extractvalue %dx.types.CBufRet.f32 %3599, 1
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.CBufRet.f32 %3618, 2
  %3622 = fsub fast float %3617, %3587
  %3623 = fsub fast float %3619, %3423
  %3624 = fsub fast float %3620, %3424
  %3625 = fsub fast float %3621, %3425
  %3626 = fmul fast float %3622, %3598
  %3627 = fmul fast float %3623, %3598
  %3628 = fmul fast float %3624, %3598
  %3629 = fmul fast float %3625, %3598
  %3630 = fadd fast float %3626, %3587
  %3631 = fadd fast float %3627, %3423
  %3632 = fadd fast float %3628, %3424
  %3633 = fadd fast float %3629, %3425
  %3634 = extractvalue %dx.types.CBufRet.f32 %3599, 2
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3635, 2
  %3639 = fsub fast float %3634, %3586
  %3640 = fsub fast float %3636, %3420
  %3641 = fsub fast float %3637, %3421
  %3642 = fsub fast float %3638, %3422
  %3643 = fmul fast float %3639, %3598
  %3644 = fmul fast float %3640, %3598
  %3645 = fmul fast float %3641, %3598
  %3646 = fmul fast float %3642, %3598
  %3647 = fadd fast float %3643, %3586
  %3648 = fadd fast float %3644, %3420
  %3649 = fadd fast float %3645, %3421
  %3650 = fadd fast float %3646, %3422
  br label %3651

; <label>:3651                                    ; preds = %3594, %3585
  %3652 = phi float [ %3647, %3594 ], [ %3586, %3585 ]
  %3653 = phi float [ %3648, %3594 ], [ %3420, %3585 ]
  %3654 = phi float [ %3649, %3594 ], [ %3421, %3585 ]
  %3655 = phi float [ %3650, %3594 ], [ %3422, %3585 ]
  %3656 = phi float [ %3630, %3594 ], [ %3587, %3585 ]
  %3657 = phi float [ %3631, %3594 ], [ %3423, %3585 ]
  %3658 = phi float [ %3632, %3594 ], [ %3424, %3585 ]
  %3659 = phi float [ %3633, %3594 ], [ %3425, %3585 ]
  %3660 = phi float [ %3613, %3594 ], [ %3588, %3585 ]
  %3661 = phi float [ %3614, %3594 ], [ %3426, %3585 ]
  %3662 = phi float [ %3615, %3594 ], [ %3427, %3585 ]
  %3663 = phi float [ %3616, %3594 ], [ %3428, %3585 ]
  %3664 = extractvalue %dx.types.CBufRet.f32 %3238, 3
  %3665 = fmul fast float %3664, %3660
  %3666 = fmul fast float %3664, %3656
  %3667 = fmul fast float %3664, %3652
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 3
  %3670 = fmul fast float %3665, %3669
  %3671 = fmul fast float %3666, %3669
  %3672 = fmul fast float %3667, %3669
  %3673 = fmul fast float %3661, 1.500000e+00
  %3674 = fmul fast float %3673, %3664
  %3675 = fmul fast float %3674, %3669
  %3676 = fmul fast float %3662, 1.500000e+00
  %3677 = fmul fast float %3676, %3664
  %3678 = fmul fast float %3677, %3669
  %3679 = fmul fast float %3663, 1.500000e+00
  %3680 = fmul fast float %3679, %3664
  %3681 = fmul fast float %3680, %3669
  %3682 = fmul fast float %3657, 1.500000e+00
  %3683 = fmul fast float %3682, %3664
  %3684 = fmul fast float %3683, %3669
  %3685 = fmul fast float %3658, 1.500000e+00
  %3686 = fmul fast float %3685, %3664
  %3687 = fmul fast float %3686, %3669
  %3688 = fmul fast float %3659, 1.500000e+00
  %3689 = fmul fast float %3688, %3664
  %3690 = fmul fast float %3689, %3669
  %3691 = fmul fast float %3653, 1.500000e+00
  %3692 = fmul fast float %3691, %3664
  %3693 = fmul fast float %3692, %3669
  %3694 = fmul fast float %3654, 1.500000e+00
  %3695 = fmul fast float %3694, %3664
  %3696 = fmul fast float %3695, %3669
  %3697 = fmul fast float %3655, 1.500000e+00
  %3698 = fmul fast float %3697, %3664
  %3699 = fmul fast float %3698, %3669
  %3700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3670)  ; FMax(a,b)
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3675, float %3678, float %3681, float %3675, float %3678, float %3681)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = fcmp fast oeq float %3701, 0.000000e+00
  %3703 = fcmp fast oeq float %3700, 0.000000e+00
  %3704 = or i1 %3703, %3702
  br i1 %3704, label %3734, label %3705

; <label>:3705                                    ; preds = %3651
  %3706 = fsub fast float -0.000000e+00, %3681
  %3707 = fsub fast float -0.000000e+00, %3675
  %3708 = call float @dx.op.unary.f32(i32 24, float %3701)  ; Sqrt(value)
  %3709 = fdiv fast float %3708, %3700
  %3710 = fcmp fast ogt float %3709, 0x3FFB6F8900000000
  %3711 = select i1 %3710, float 0x3FFB6F8900000000, float %3709
  %3712 = fmul fast float %3711, 0x3FE8A23460000000
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = call float @dx.op.binary.f32(i32 35, float %3711, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3715 = fmul fast float %3713, %3700
  %3716 = fmul fast float %3714, 0x3FF279A740000000
  %3717 = fadd fast float %3716, -1.000000e+00
  %3718 = call float @dx.op.dot3.f32(i32 55, float %3706, float %3707, float %3678, float %3706, float %3707, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3719 = call float @dx.op.unary.f32(i32 25, float %3718)  ; Rsqrt(value)
  %3720 = fmul fast float %3719, %3706
  %3721 = fmul fast float %3719, %3707
  %3722 = fmul fast float %3719, %3678
  %3723 = fmul fast float %3717, %3717
  %3724 = fsub fast float 1.000000e+00, %3723
  %3725 = fmul fast float %3714, 0x40005F8BE0000000
  %3726 = fsub fast float 0x400C5BF8A0000000, %3725
  %3727 = fdiv fast float %3715, %3726
  %3728 = fmul fast float %3727, 0x3FEE31C3C0000000
  %3729 = fmul fast float %3728, %3724
  %3730 = fmul fast float %3714, 0x3FDACB7480000000
  %3731 = fadd fast float %3730, 0xBFD7347680000000
  %3732 = fmul fast float %3731, %3727
  %3733 = fmul fast float %3732, %3724
  br label %3734

; <label>:3734                                    ; preds = %3705, %3651
  %3735 = phi float [ %3720, %3705 ], [ 0.000000e+00, %3651 ]
  %3736 = phi float [ %3721, %3705 ], [ 0.000000e+00, %3651 ]
  %3737 = phi float [ %3722, %3705 ], [ 0.000000e+00, %3651 ]
  %3738 = phi float [ %3729, %3705 ], [ 0.000000e+00, %3651 ]
  %3739 = phi float [ %3733, %3705 ], [ 0.000000e+00, %3651 ]
  %3740 = call float @dx.op.dot3.f32(i32 55, float %3735, float %3736, float %3737, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %3741 = fmul fast float %3740, %3740
  %3742 = fmul fast float %3741, 0x3FEE471020000000
  %3743 = fadd fast float %3742, 0xBFD42F6020000000
  %3744 = fmul fast float %3700, 0x3FD20DD760000000
  %3745 = fmul fast float %3743, %3739
  %3746 = fmul fast float %3738, 0x3FDF454380000000
  %3747 = fmul fast float %3746, %3740
  %3748 = fadd fast float %3747, %3744
  %3749 = fadd fast float %3748, %3745
  %3750 = call float @dx.op.dot3.f32(i32 55, float %3735, float %3736, float %3737, float %2699, float %2700, float %2701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3751 = fmul fast float %3750, 0x3FDF454380000000
  %3752 = fmul fast float %3750, %3750
  %3753 = fmul fast float %3752, 0x3FEE471020000000
  %3754 = fadd fast float %3753, 0xBFD42F6020000000
  %3755 = call float @dx.op.dot3.f32(i32 55, float %3700, float %3738, float %3739, float 0x3FD20DD760000000, float %3751, float %3754)  ; Dot3(ax,ay,az,bx,by,bz)
  %3756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3671)  ; FMax(a,b)
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3687, float %3690, float %3684, float %3687, float %3690)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = fcmp fast oeq float %3757, 0.000000e+00
  %3759 = fcmp fast oeq float %3756, 0.000000e+00
  %3760 = or i1 %3759, %3758
  br i1 %3760, label %3790, label %3761

; <label>:3761                                    ; preds = %3734
  %3762 = fsub fast float -0.000000e+00, %3690
  %3763 = fsub fast float -0.000000e+00, %3684
  %3764 = call float @dx.op.unary.f32(i32 24, float %3757)  ; Sqrt(value)
  %3765 = fdiv fast float %3764, %3756
  %3766 = fcmp fast ogt float %3765, 0x3FFB6F8900000000
  %3767 = select i1 %3766, float 0x3FFB6F8900000000, float %3765
  %3768 = fmul fast float %3767, 0x3FE8A23460000000
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = call float @dx.op.binary.f32(i32 35, float %3767, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3771 = fmul fast float %3769, %3756
  %3772 = fmul fast float %3770, 0x3FF279A740000000
  %3773 = fadd fast float %3772, -1.000000e+00
  %3774 = call float @dx.op.dot3.f32(i32 55, float %3762, float %3763, float %3687, float %3762, float %3763, float %3687)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = call float @dx.op.unary.f32(i32 25, float %3774)  ; Rsqrt(value)
  %3776 = fmul fast float %3775, %3762
  %3777 = fmul fast float %3775, %3763
  %3778 = fmul fast float %3775, %3687
  %3779 = fmul fast float %3773, %3773
  %3780 = fsub fast float 1.000000e+00, %3779
  %3781 = fmul fast float %3770, 0x40005F8BE0000000
  %3782 = fsub fast float 0x400C5BF8A0000000, %3781
  %3783 = fdiv fast float %3771, %3782
  %3784 = fmul fast float %3783, 0x3FEE31C3C0000000
  %3785 = fmul fast float %3784, %3780
  %3786 = fmul fast float %3770, 0x3FDACB7480000000
  %3787 = fadd fast float %3786, 0xBFD7347680000000
  %3788 = fmul fast float %3787, %3783
  %3789 = fmul fast float %3788, %3780
  br label %3790

; <label>:3790                                    ; preds = %3761, %3734
  %3791 = phi float [ %3776, %3761 ], [ 0.000000e+00, %3734 ]
  %3792 = phi float [ %3777, %3761 ], [ 0.000000e+00, %3734 ]
  %3793 = phi float [ %3778, %3761 ], [ 0.000000e+00, %3734 ]
  %3794 = phi float [ %3785, %3761 ], [ 0.000000e+00, %3734 ]
  %3795 = phi float [ %3789, %3761 ], [ 0.000000e+00, %3734 ]
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3791, float %3792, float %3793, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = fmul fast float %3796, %3796
  %3798 = fmul fast float %3797, 0x3FEE471020000000
  %3799 = fadd fast float %3798, 0xBFD42F6020000000
  %3800 = fmul fast float %3756, 0x3FD20DD760000000
  %3801 = fmul fast float %3799, %3795
  %3802 = fmul fast float %3794, 0x3FDF454380000000
  %3803 = fmul fast float %3802, %3796
  %3804 = fadd fast float %3803, %3800
  %3805 = fadd fast float %3804, %3801
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3791, float %3792, float %3793, float %2699, float %2700, float %2701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = fmul fast float %3806, 0x3FDF454380000000
  %3808 = fmul fast float %3806, %3806
  %3809 = fmul fast float %3808, 0x3FEE471020000000
  %3810 = fadd fast float %3809, 0xBFD42F6020000000
  %3811 = call float @dx.op.dot3.f32(i32 55, float %3756, float %3794, float %3795, float 0x3FD20DD760000000, float %3807, float %3810)  ; Dot3(ax,ay,az,bx,by,bz)
  %3812 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3672)  ; FMax(a,b)
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3693, float %3696, float %3699, float %3693, float %3696, float %3699)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = fcmp fast oeq float %3813, 0.000000e+00
  %3815 = fcmp fast oeq float %3812, 0.000000e+00
  %3816 = or i1 %3815, %3814
  br i1 %3816, label %3846, label %3817

; <label>:3817                                    ; preds = %3790
  %3818 = fsub fast float -0.000000e+00, %3699
  %3819 = fsub fast float -0.000000e+00, %3693
  %3820 = call float @dx.op.unary.f32(i32 24, float %3813)  ; Sqrt(value)
  %3821 = fdiv fast float %3820, %3812
  %3822 = fcmp fast ogt float %3821, 0x3FFB6F8900000000
  %3823 = select i1 %3822, float 0x3FFB6F8900000000, float %3821
  %3824 = fmul fast float %3823, 0x3FE8A23460000000
  %3825 = call float @dx.op.unary.f32(i32 7, float %3824)  ; Saturate(value)
  %3826 = call float @dx.op.binary.f32(i32 35, float %3823, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3827 = fmul fast float %3825, %3812
  %3828 = fmul fast float %3826, 0x3FF279A740000000
  %3829 = fadd fast float %3828, -1.000000e+00
  %3830 = call float @dx.op.dot3.f32(i32 55, float %3818, float %3819, float %3696, float %3818, float %3819, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3831 = call float @dx.op.unary.f32(i32 25, float %3830)  ; Rsqrt(value)
  %3832 = fmul fast float %3831, %3818
  %3833 = fmul fast float %3831, %3819
  %3834 = fmul fast float %3831, %3696
  %3835 = fmul fast float %3829, %3829
  %3836 = fsub fast float 1.000000e+00, %3835
  %3837 = fmul fast float %3826, 0x40005F8BE0000000
  %3838 = fsub fast float 0x400C5BF8A0000000, %3837
  %3839 = fdiv fast float %3827, %3838
  %3840 = fmul fast float %3839, 0x3FEE31C3C0000000
  %3841 = fmul fast float %3840, %3836
  %3842 = fmul fast float %3826, 0x3FDACB7480000000
  %3843 = fadd fast float %3842, 0xBFD7347680000000
  %3844 = fmul fast float %3843, %3839
  %3845 = fmul fast float %3844, %3836
  br label %3846

; <label>:3846                                    ; preds = %3817, %3790
  %3847 = phi float [ %3832, %3817 ], [ 0.000000e+00, %3790 ]
  %3848 = phi float [ %3833, %3817 ], [ 0.000000e+00, %3790 ]
  %3849 = phi float [ %3834, %3817 ], [ 0.000000e+00, %3790 ]
  %3850 = phi float [ %3841, %3817 ], [ 0.000000e+00, %3790 ]
  %3851 = phi float [ %3845, %3817 ], [ 0.000000e+00, %3790 ]
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = fmul fast float %3852, %3852
  %3854 = fmul fast float %3853, 0x3FEE471020000000
  %3855 = fadd fast float %3854, 0xBFD42F6020000000
  %3856 = fmul fast float %3812, 0x3FD20DD760000000
  %3857 = fmul fast float %3855, %3851
  %3858 = fmul fast float %3850, 0x3FDF454380000000
  %3859 = fmul fast float %3858, %3852
  %3860 = fadd fast float %3859, %3856
  %3861 = fadd fast float %3860, %3857
  %3862 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float %2699, float %2700, float %2701)  ; Dot3(ax,ay,az,bx,by,bz)
  %3863 = fmul fast float %3862, 0x3FDF454380000000
  %3864 = fmul fast float %3862, %3862
  %3865 = fmul fast float %3864, 0x3FEE471020000000
  %3866 = fadd fast float %3865, 0xBFD42F6020000000
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3812, float %3850, float %3851, float 0x3FD20DD760000000, float %3863, float %3866)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = call float @dx.op.binary.f32(i32 35, float %3749, float 0.000000e+00)  ; FMax(a,b)
  %3869 = call float @dx.op.binary.f32(i32 35, float %3805, float 0.000000e+00)  ; FMax(a,b)
  %3870 = call float @dx.op.binary.f32(i32 35, float %3861, float 0.000000e+00)  ; FMax(a,b)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3755, float 0.000000e+00)  ; FMax(a,b)
  %3872 = call float @dx.op.binary.f32(i32 35, float %3811, float 0.000000e+00)  ; FMax(a,b)
  %3873 = call float @dx.op.binary.f32(i32 35, float %3867, float 0.000000e+00)  ; FMax(a,b)
  %3874 = fsub fast float %3070, %3868
  %3875 = fsub fast float %3071, %3869
  %3876 = fsub fast float %3072, %3870
  %3877 = fmul fast float %3874, %2751
  %3878 = fmul fast float %3875, %2751
  %3879 = fmul fast float %3876, %2751
  %3880 = fadd fast float %3877, %3868
  %3881 = fadd fast float %3878, %3869
  %3882 = fadd fast float %3879, %3870
  %3883 = fsub fast float %3067, %3871
  %3884 = fsub fast float %3068, %3872
  %3885 = fsub fast float %3069, %3873
  %3886 = fmul fast float %3883, %2751
  %3887 = fmul fast float %3884, %2751
  %3888 = fmul fast float %3885, %2751
  %3889 = fadd fast float %3886, %3871
  %3890 = fadd fast float %3887, %3872
  %3891 = fadd fast float %3888, %3873
  br label %3892

; <label>:3892                                    ; preds = %3846, %3066
  %3893 = phi float [ %3889, %3846 ], [ %3067, %3066 ]
  %3894 = phi float [ %3890, %3846 ], [ %3068, %3066 ]
  %3895 = phi float [ %3891, %3846 ], [ %3069, %3066 ]
  %3896 = phi float [ %3880, %3846 ], [ %3070, %3066 ]
  %3897 = phi float [ %3881, %3846 ], [ %3071, %3066 ]
  %3898 = phi float [ %3882, %3846 ], [ %3072, %3066 ]
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3901 = call float @dx.op.binary.f32(i32 36, float %2680, float %3900)  ; FMin(a,b)
  %3902 = fsub fast float 1.000000e+00, %2702
  %3903 = fmul fast float %3901, %3902
  %3904 = fsub fast float 1.000000e+00, %3903
  %3905 = bitcast float %3904 to i32
  %3906 = sub nsw i32 2129859010, %3905
  %3907 = bitcast i32 %3906 to float
  %3908 = call float @dx.op.binary.f32(i32 36, float %2681, float %3900)  ; FMin(a,b)
  %3909 = fmul fast float %3908, %3902
  %3910 = fsub fast float 1.000000e+00, %3909
  %3911 = bitcast float %3910 to i32
  %3912 = sub nsw i32 2129859010, %3911
  %3913 = bitcast i32 %3912 to float
  %3914 = call float @dx.op.binary.f32(i32 36, float %2682, float %3900)  ; FMin(a,b)
  %3915 = fmul fast float %3914, %3902
  %3916 = fsub fast float 1.000000e+00, %3915
  %3917 = bitcast float %3916 to i32
  %3918 = sub nsw i32 2129859010, %3917
  %3919 = bitcast i32 %3918 to float
  %3920 = fmul fast float %3896, %2702
  %3921 = fmul fast float %3920, %3907
  %3922 = fmul fast float %3897, %2702
  %3923 = fmul fast float %3922, %3913
  %3924 = fmul fast float %3898, %2702
  %3925 = fmul fast float %3924, %3919
  %3926 = call float @dx.op.binary.f32(i32 36, float %2683, float %3900)  ; FMin(a,b)
  %3927 = fmul fast float %3926, %3902
  %3928 = fsub fast float 1.000000e+00, %3927
  %3929 = bitcast float %3928 to i32
  %3930 = sub nsw i32 2129859010, %3929
  %3931 = bitcast i32 %3930 to float
  %3932 = call float @dx.op.binary.f32(i32 36, float %2684, float %3900)  ; FMin(a,b)
  %3933 = fmul fast float %3932, %3902
  %3934 = fsub fast float 1.000000e+00, %3933
  %3935 = bitcast float %3934 to i32
  %3936 = sub nsw i32 2129859010, %3935
  %3937 = bitcast i32 %3936 to float
  %3938 = call float @dx.op.binary.f32(i32 36, float %2691, float %3900)  ; FMin(a,b)
  %3939 = fmul fast float %3938, %3902
  %3940 = fsub fast float 1.000000e+00, %3939
  %3941 = bitcast float %3940 to i32
  %3942 = sub nsw i32 2129859010, %3941
  %3943 = bitcast i32 %3942 to float
  %3944 = fmul fast float %3893, %2702
  %3945 = fmul fast float %3944, %3931
  %3946 = fmul fast float %3894, %2702
  %3947 = fmul fast float %3946, %3937
  %3948 = fmul fast float %3895, %2702
  %3949 = fmul fast float %3948, %3943
  %3950 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3923, float %3925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3951 = select i1 %188, float 0.000000e+00, float %3921
  %3952 = select i1 %188, float %3950, float %3923
  %3953 = select i1 %188, float 0.000000e+00, float %3925
  %3954 = call float @dx.op.dot3.f32(i32 55, float %3945, float %3947, float %3949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = select i1 %188, float 0.000000e+00, float %3945
  %3956 = select i1 %188, float %3954, float %3947
  %3957 = select i1 %188, float 0.000000e+00, float %3949
  %3958 = fmul fast float %2693, 9.843750e-01
  %3959 = fmul fast float %2689, 9.843750e-01
  %3960 = fadd fast float %3958, 7.812500e-03
  %3961 = fadd fast float %3959, 7.812500e-03
  %3962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %3960, float %3961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 2
  %3964 = extractvalue %dx.types.ResRet.f32 %3962, 3
  %3965 = fmul fast float %3963, %2683
  %3966 = fmul fast float %3963, %2684
  %3967 = fmul fast float %3963, %2691
  %3968 = fadd fast float %3965, %3964
  %3969 = fadd fast float %3966, %3964
  %3970 = fadd fast float %3967, %3964
  %3971 = fcmp fast ogt float %2057, 0.000000e+00
  br i1 %3971, label %3972, label %3998

; <label>:3972                                    ; preds = %3892
  %3973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2057, float %2693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3977 = fadd fast float %3974, -5.000000e-01
  %3978 = fadd fast float %3975, -5.000000e-01
  %3979 = fadd fast float %3976, -5.000000e-01
  %3980 = fsub fast float 1.000000e+00, %2683
  %3981 = fsub fast float 1.000000e+00, %2684
  %3982 = fsub fast float 1.000000e+00, %2691
  %3983 = fmul fast float %2683, 4.000000e+00
  %3984 = fmul fast float %3983, %3980
  %3985 = fmul fast float %3984, %3977
  %3986 = fmul fast float %2684, 4.000000e+00
  %3987 = fmul fast float %3986, %3981
  %3988 = fmul fast float %3987, %3978
  %3989 = fmul fast float %2691, 4.000000e+00
  %3990 = fmul fast float %3989, %3982
  %3991 = fmul fast float %3990, %3979
  %3992 = fadd fast float %3985, %3968
  %3993 = fadd fast float %3988, %3969
  %3994 = fadd fast float %3991, %3970
  %3995 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3996 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3997 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  br label %3998

; <label>:3998                                    ; preds = %3972, %3892
  %3999 = phi float [ %3995, %3972 ], [ %3968, %3892 ]
  %4000 = phi float [ %3996, %3972 ], [ %3969, %3892 ]
  %4001 = phi float [ %3997, %3972 ], [ %3970, %3892 ]
  %4002 = call float @dx.op.binary.f32(i32 35, float %4000, float %4001)  ; FMax(a,b)
  %4003 = call float @dx.op.binary.f32(i32 35, float %3999, float %4002)  ; FMax(a,b)
  %4004 = fsub fast float 1.000000e+00, %4003
  %4005 = fmul fast float %4004, %3951
  %4006 = fmul fast float %4004, %3952
  %4007 = fmul fast float %4004, %3953
  %4008 = call float @dx.op.dot3.f32(i32 55, float %2680, float %2681, float %2682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = fcmp fast ogt float %4008, 0x3E7FF19E20000000
  %4010 = fdiv fast float 1.000000e+00, %4008
  %4011 = select i1 %4009, float %4010, float 0.000000e+00
  %4012 = fmul fast float %4011, %2680
  %4013 = fmul fast float %4011, %2681
  %4014 = fmul fast float %4011, %2682
  %4015 = fadd fast float %4012, -1.000000e+00
  %4016 = fadd fast float %4013, -1.000000e+00
  %4017 = fadd fast float %4014, -1.000000e+00
  %4018 = fmul fast float %4015, 5.000000e-01
  %4019 = fmul fast float %4016, 5.000000e-01
  %4020 = fmul fast float %4017, 5.000000e-01
  %4021 = fadd fast float %4018, 1.000000e+00
  %4022 = fadd fast float %4019, 1.000000e+00
  %4023 = fadd fast float %4020, 1.000000e+00
  %4024 = fmul fast float %3999, %3955
  %4025 = fmul fast float %4000, %3956
  %4026 = fmul fast float %4001, %3957
  %4027 = fsub fast float 1.000000e+00, %2693
  %4028 = bitcast float %4027 to i32
  %4029 = sitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 5.000000e+00
  %4031 = fadd fast float %4030, 0xC1EFBF8940000000
  %4032 = fptosi float %4031 to i32
  %4033 = bitcast i32 %4032 to float
  %4034 = fmul fast float %4033, %2056
  %4035 = fmul fast float %3951, %4034
  %4036 = fmul fast float %4035, %4004
  %4037 = fmul fast float %4036, %4021
  %4038 = fmul fast float %3952, %4034
  %4039 = fmul fast float %4038, %4004
  %4040 = fmul fast float %4039, %4022
  %4041 = fmul fast float %3953, %4034
  %4042 = fmul fast float %4041, %4004
  %4043 = fmul fast float %4042, %4023
  %4044 = fmul fast float %4005, %2077
  %4045 = fmul fast float %4006, %2077
  %4046 = fmul fast float %4007, %2077
  %4047 = fadd fast float %4024, %2058
  %4048 = fadd fast float %4047, %4037
  %4049 = fmul fast float %4048, %2077
  %4050 = fadd fast float %4025, %2059
  %4051 = fadd fast float %4050, %4040
  %4052 = fmul fast float %4051, %2077
  %4053 = fadd fast float %4026, %2060
  %4054 = fadd fast float %4053, %4043
  %4055 = fmul fast float %4054, %2077
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4058 = fcmp fast oeq float %4057, 0.000000e+00
  br i1 %4058, label %4286, label %4059

; <label>:4059                                    ; preds = %3998
  %4060 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4061 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4062 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4065, float %4066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = select i1 %188, float %4068, float %4064
  %4072 = select i1 %188, float %4070, float %4065
  %4073 = select i1 %188, float %4069, float %4066
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4076 = fcmp fast une float %4075, 0.000000e+00
  br i1 %4076, label %4077, label %4094

; <label>:4077                                    ; preds = %4059
  %4078 = fptoui float %70 to i32
  %4079 = fptoui float %71 to i32
  %4080 = lshr i32 %4078, 4
  %4081 = lshr i32 %4079, 4
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = fptoui float %4083 to i32
  %4085 = add i32 %4084, 15
  %4086 = lshr i32 %4085, 4
  %4087 = mul i32 %4086, %4081
  %4088 = add i32 %4087, %4080
  %4089 = shl i32 %4088, 3
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = and i32 %4091, -268435456
  %4093 = icmp eq i32 %4092, -1342177280
  br i1 %4093, label %4104, label %4094

; <label>:4094                                    ; preds = %4077, %4059
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4097 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4098 = fmul fast float %4096, %70
  %4099 = fmul fast float %4097, %71
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4098, float %4099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  br label %4104

; <label>:4104                                    ; preds = %4094, %4077
  %4105 = phi float [ %4101, %4094 ], [ 0.000000e+00, %4077 ]
  %4106 = phi float [ %4102, %4094 ], [ 0.000000e+00, %4077 ]
  %4107 = phi float [ %4103, %4094 ], [ 0.000000e+00, %4077 ]
  %4108 = call float @dx.op.binary.f32(i32 36, float %4106, float %4107)  ; FMin(a,b)
  %4109 = call float @dx.op.binary.f32(i32 36, float %4105, float %4108)  ; FMin(a,b)
  %4110 = fcmp fast ogt float %4109, 0.000000e+00
  br i1 %4110, label %4111, label %4286, !dx.controlflow.hints !87

; <label>:4111                                    ; preds = %4104
  %4112 = fmul fast float %4105, %4071
  %4113 = fmul fast float %4106, %4072
  %4114 = fmul fast float %4107, %4073
  %4115 = fsub fast float %4060, %2679
  %4116 = fsub fast float %4061, %2678
  %4117 = fsub fast float %4062, %2677
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4115, float %4116, float %4117, float %4115, float %4116, float %4117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = call float @dx.op.unary.f32(i32 25, float %4118)  ; Rsqrt(value)
  %4120 = fmul fast float %4119, %4115
  %4121 = fmul fast float %4119, %4116
  %4122 = fmul fast float %4119, %4117
  %4123 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2675, float %2674, float %4120, float %4121, float %4122)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4126 = fmul fast float %4125, %4125
  %4127 = fmul fast float %4126, %2706
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = fmul fast float %4128, %4125
  %4130 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2687, float %2688, float %4120, float %4121, float %4122)  ; Dot3(ax,ay,az,bx,by,bz)
  %4131 = fmul fast float %4130, %4130
  %4132 = call float @dx.op.unary.f32(i32 6, float %4123)  ; FAbs(value)
  %4133 = fsub fast float 1.000000e+00, %2689
  %4134 = call float @dx.op.binary.f32(i32 35, float %4133, float 0x3F847AE140000000)  ; FMax(a,b)
  %4135 = fmul fast float %4134, %4134
  %4136 = fmul fast float %4135, %4135
  %4137 = fsub fast float 1.000000e+00, %4136
  %4138 = fmul fast float %2693, %2693
  %4139 = fmul fast float %4138, %4137
  %4140 = fadd fast float %4139, %4136
  %4141 = bitcast float %4140 to i32
  %4142 = ashr i32 %4141, 1
  %4143 = add nsw i32 %4142, 532487669
  %4144 = bitcast i32 %4143 to float
  %4145 = fadd fast float %4144, %2693
  %4146 = fmul fast float %4136, %4131
  %4147 = fsub fast float 1.000000e+00, %4131
  %4148 = fadd fast float %4147, %4146
  %4149 = fmul fast float %4132, %4132
  %4150 = fmul fast float %4149, %4137
  %4151 = fadd fast float %4150, %4136
  %4152 = bitcast float %4151 to i32
  %4153 = ashr i32 %4152, 1
  %4154 = add nsw i32 %4153, 532487669
  %4155 = bitcast i32 %4154 to float
  %4156 = fadd fast float %4155, %4132
  %4157 = fmul fast float %4148, %4148
  %4158 = fmul fast float %4157, %4145
  %4159 = fmul fast float %4158, %4156
  %4160 = fdiv fast float 0x3FF0A00000000000, %4159
  %4161 = fmul fast float %4160, %4136
  %4162 = call float @dx.op.unary.f32(i32 6, float %4124)  ; FAbs(value)
  %4163 = fsub fast float 1.000000e+00, %4162
  %4164 = bitcast float %4163 to i32
  %4165 = sitofp i32 %4164 to float
  %4166 = fmul fast float %4165, 5.000000e+00
  %4167 = fadd fast float %4166, 0xC1EFBF8940000000
  %4168 = fptosi float %4167 to i32
  %4169 = bitcast i32 %4168 to float
  %4170 = fsub fast float 1.000000e+00, %2683
  %4171 = fsub fast float 1.000000e+00, %2684
  %4172 = fsub fast float 1.000000e+00, %2691
  %4173 = fmul fast float %4169, %4170
  %4174 = fmul fast float %4169, %4171
  %4175 = fmul fast float %4169, %4172
  %4176 = fadd fast float %4173, %2683
  %4177 = fadd fast float %4174, %2684
  %4178 = fadd fast float %4175, %2691
  br i1 %3971, label %4179, label %4202

; <label>:4179                                    ; preds = %4111
  %4180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2057, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4184 = fadd fast float %4181, -5.000000e-01
  %4185 = fadd fast float %4182, -5.000000e-01
  %4186 = fadd fast float %4183, -5.000000e-01
  %4187 = fmul fast float %2683, 4.000000e+00
  %4188 = fmul fast float %4187, %4170
  %4189 = fmul fast float %4188, %4184
  %4190 = fmul fast float %2684, 4.000000e+00
  %4191 = fmul fast float %4190, %4171
  %4192 = fmul fast float %4191, %4185
  %4193 = fmul fast float %2691, 4.000000e+00
  %4194 = fmul fast float %4193, %4172
  %4195 = fmul fast float %4194, %4186
  %4196 = fadd fast float %4189, %4176
  %4197 = fadd fast float %4192, %4177
  %4198 = fadd fast float %4195, %4178
  %4199 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4200 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  br label %4202

; <label>:4202                                    ; preds = %4179, %4111
  %4203 = phi float [ %4199, %4179 ], [ %4176, %4111 ]
  %4204 = phi float [ %4200, %4179 ], [ %4177, %4111 ]
  %4205 = phi float [ %4201, %4179 ], [ %4178, %4111 ]
  %4206 = fmul fast float %4123, 9.843750e-01
  %4207 = fadd fast float %4206, 7.812500e-03
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4207, float %3961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4211 = fmul fast float %4209, %2683
  %4212 = fmul fast float %4209, %2684
  %4213 = fmul fast float %4209, %2691
  %4214 = fadd fast float %4211, %4210
  %4215 = fadd fast float %4212, %4210
  %4216 = fadd fast float %4213, %4210
  br i1 %3971, label %4217, label %4240

; <label>:4217                                    ; preds = %4202
  %4218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2057, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4222 = fadd fast float %4219, -5.000000e-01
  %4223 = fadd fast float %4220, -5.000000e-01
  %4224 = fadd fast float %4221, -5.000000e-01
  %4225 = fmul fast float %2683, 4.000000e+00
  %4226 = fmul fast float %4225, %4170
  %4227 = fmul fast float %4226, %4222
  %4228 = fmul fast float %2684, 4.000000e+00
  %4229 = fmul fast float %4228, %4171
  %4230 = fmul fast float %4229, %4223
  %4231 = fmul fast float %2691, 4.000000e+00
  %4232 = fmul fast float %4231, %4172
  %4233 = fmul fast float %4232, %4224
  %4234 = fadd fast float %4227, %4214
  %4235 = fadd fast float %4230, %4215
  %4236 = fadd fast float %4233, %4216
  %4237 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  br label %4240

; <label>:4240                                    ; preds = %4217, %4202
  %4241 = phi float [ %4237, %4217 ], [ %4214, %4202 ]
  %4242 = phi float [ %4238, %4217 ], [ %4215, %4202 ]
  %4243 = phi float [ %4239, %4217 ], [ %4216, %4202 ]
  %4244 = call float @dx.op.binary.f32(i32 35, float %4242, float %4243)  ; FMax(a,b)
  %4245 = call float @dx.op.binary.f32(i32 35, float %4241, float %4244)  ; FMax(a,b)
  %4246 = fsub fast float 1.000000e+00, %4245
  %4247 = fmul fast float %4203, %4161
  %4248 = fmul fast float %4204, %4161
  %4249 = fmul fast float %4205, %4161
  %4250 = fsub fast float 1.000000e+00, %4124
  %4251 = bitcast float %4250 to i32
  %4252 = sitofp i32 %4251 to float
  %4253 = fmul fast float %4252, 5.000000e+00
  %4254 = fadd fast float %4253, 0xC1EFBF8940000000
  %4255 = fptosi float %4254 to i32
  %4256 = bitcast i32 %4255 to float
  %4257 = fmul fast float %4256, %2056
  %4258 = fmul fast float %4246, %4257
  %4259 = fmul fast float %4258, %4021
  %4260 = fmul fast float %4258, %4022
  %4261 = fmul fast float %4258, %4023
  %4262 = fadd fast float %4259, %4247
  %4263 = fadd fast float %4260, %4248
  %4264 = fadd fast float %4261, %4249
  %4265 = fmul fast float %4129, %4112
  %4266 = fmul fast float %4265, %4246
  %4267 = fmul fast float %4129, %4113
  %4268 = fmul fast float %4267, %4246
  %4269 = fmul fast float %4129, %4114
  %4270 = fmul fast float %4269, %4246
  %4271 = fmul fast float %4265, %4262
  %4272 = fmul fast float %4267, %4263
  %4273 = fmul fast float %4269, %4264
  %4274 = fadd fast float %4266, %4005
  %4275 = fmul fast float %4274, %2077
  %4276 = fadd fast float %4268, %4006
  %4277 = fmul fast float %4276, %2077
  %4278 = fadd fast float %4270, %4007
  %4279 = fmul fast float %4278, %2077
  %4280 = fadd fast float %4271, %4048
  %4281 = fmul fast float %4280, %2077
  %4282 = fadd fast float %4272, %4051
  %4283 = fmul fast float %4282, %2077
  %4284 = fadd fast float %4273, %4054
  %4285 = fmul fast float %4284, %2077
  br label %4286

; <label>:4286                                    ; preds = %4240, %4104, %3998
  %4287 = phi float [ %4049, %3998 ], [ %4049, %4104 ], [ %4281, %4240 ]
  %4288 = phi float [ %4052, %3998 ], [ %4052, %4104 ], [ %4283, %4240 ]
  %4289 = phi float [ %4055, %3998 ], [ %4055, %4104 ], [ %4285, %4240 ]
  %4290 = phi float [ %4044, %3998 ], [ %4044, %4104 ], [ %4275, %4240 ]
  %4291 = phi float [ %4045, %3998 ], [ %4045, %4104 ], [ %4277, %4240 ]
  %4292 = phi float [ %4046, %3998 ], [ %4046, %4104 ], [ %4279, %4240 ]
  %4293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.i32 %4293, 0
  %4295 = icmp eq i32 %4294, 0
  br i1 %4295, label %4730, label %4296

; <label>:4296                                    ; preds = %4286
  %4297 = fptoui float %70 to i32
  %4298 = fptoui float %71 to i32
  %4299 = lshr i32 %4297, 4
  %4300 = lshr i32 %4298, 4
  %4301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.i32 %4301, 0
  %4303 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4300, i32 %4302, i32 %4299)  ; UMad(a,b,c)
  %4304 = add nsw i32 %4294, -1
  %4305 = call i32 @dx.op.binary.i32(i32 37, i32 %4304, i32 0)  ; IMax(a,b)
  %4306 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %4307 = fptoui float %4306 to i32
  %4308 = lshr i32 %4307, 5
  %4309 = call i32 @dx.op.binary.i32(i32 40, i32 %4308, i32 8191)  ; UMin(a,b)
  %4310 = shl i32 %4309, 2
  %4311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4310, i32 undef)  ; BufferLoad(srv,index,wot)
  %4312 = extractvalue %dx.types.ResRet.i32 %4311, 0
  %4313 = lshr i32 %4312, 16
  %4314 = and i32 %4312, 65535
  %4315 = lshr i32 %4312, 21
  %4316 = lshr i32 %4314, 5
  %4317 = call i32 @dx.op.binary.i32(i32 40, i32 %4316, i32 %4305)  ; UMin(a,b)
  %4318 = icmp ugt i32 %4315, %4317
  br i1 %4318, label %4730, label %4319

; <label>:4319                                    ; preds = %4296
  br label %4320

; <label>:4320                                    ; preds = %4720, %4319
  %4321 = phi i32 [ %4727, %4720 ], [ %4315, %4319 ]
  %4322 = phi float [ %4721, %4720 ], [ %4287, %4319 ]
  %4323 = phi float [ %4722, %4720 ], [ %4288, %4319 ]
  %4324 = phi float [ %4723, %4720 ], [ %4289, %4319 ]
  %4325 = phi float [ %4724, %4720 ], [ %4290, %4319 ]
  %4326 = phi float [ %4725, %4720 ], [ %4291, %4319 ]
  %4327 = phi float [ %4726, %4720 ], [ %4292, %4319 ]
  %4328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.i32 %4328, 0
  %4330 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4303, i32 %4329, i32 %4321)  ; UMad(a,b,c)
  %4331 = shl i32 %4330, 2
  %4332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4331, i32 undef)  ; BufferLoad(srv,index,wot)
  %4333 = extractvalue %dx.types.ResRet.i32 %4332, 0
  %4334 = shl i32 %4321, 5
  %4335 = sub nsw i32 %4313, %4334
  %4336 = call i32 @dx.op.binary.i32(i32 37, i32 %4335, i32 0)  ; IMax(a,b)
  %4337 = call i32 @dx.op.binary.i32(i32 38, i32 %4336, i32 31)  ; IMin(a,b)
  %4338 = sub nsw i32 1, %4313
  %4339 = add nsw i32 %4338, %4314
  %4340 = call i32 @dx.op.binary.i32(i32 37, i32 %4339, i32 0)  ; IMax(a,b)
  %4341 = call i32 @dx.op.binary.i32(i32 38, i32 %4340, i32 32)  ; IMin(a,b)
  %4342 = and i32 %4341, 31
  %4343 = shl i32 -1, %4342
  %4344 = xor i32 %4343, -1
  %4345 = and i32 %4337, 31
  %4346 = shl i32 %4344, %4345
  %4347 = icmp eq i32 %4341, 32
  %4348 = select i1 %4347, i32 -1, i32 %4346
  %4349 = and i32 %4348, %4333
  %4350 = icmp eq i32 %4349, 0
  br i1 %4350, label %4720, label %4351

; <label>:4351                                    ; preds = %4320
  br label %4352

; <label>:4352                                    ; preds = %4432, %4351
  %4353 = phi i32 [ %4364, %4432 ], [ %4349, %4351 ]
  %4354 = phi float [ %4433, %4432 ], [ %4322, %4351 ]
  %4355 = phi float [ %4434, %4432 ], [ %4323, %4351 ]
  %4356 = phi float [ %4435, %4432 ], [ %4324, %4351 ]
  %4357 = phi float [ %4436, %4432 ], [ %4325, %4351 ]
  %4358 = phi float [ %4437, %4432 ], [ %4326, %4351 ]
  %4359 = phi float [ %4438, %4432 ], [ %4327, %4351 ]
  %4360 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4353)  ; FirstbitLo(value)
  %4361 = add i32 %4360, %4334
  %4362 = and i32 %4360, 31
  %4363 = shl i32 1, %4362
  %4364 = xor i32 %4363, %4353
  %4365 = mul i32 %4361, 112
  %4366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = or i32 %4365, 12
  %4371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = add i32 %4365, 44
  %4374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = add i32 %4365, 48
  %4377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.ResRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.ResRet.f32 %4377, 2
  %4381 = add i32 %4365, 80
  %4382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 1
  %4384 = extractvalue %dx.types.ResRet.f32 %4382, 2
  %4385 = call float @dx.op.dot3.f32(i32 55, float %4367, float %4368, float %4369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = select i1 %188, float %4383, float %4367
  %4387 = select i1 %188, float %4385, float %4368
  %4388 = select i1 %188, float %4384, float %4369
  %4389 = fsub fast float %4378, %117
  %4390 = fsub fast float %4379, %118
  %4391 = fsub fast float %4380, %119
  %4392 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4391, float %4389, float %4390, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.unary.f32(i32 24, float %4392)  ; Sqrt(value)
  %4394 = fdiv fast float 1.000000e+00, %4393
  %4395 = fmul fast float %4394, %4389
  %4396 = fmul fast float %4394, %4390
  %4397 = fmul fast float %4394, %4391
  %4398 = fadd fast float %4393, %4372
  %4399 = fdiv fast float 1.000000e+00, %4398
  %4400 = fmul float %4375, %4399
  %4401 = fmul float %4400, %4400
  %4402 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4403 = and i32 %4363, %4349
  %4404 = icmp eq i32 %4403, 0
  br i1 %4404, label %4427, label %4405, !dx.controlflow.hints !88

; <label>:4405                                    ; preds = %4352
  %4406 = lshr i32 %4297, 5
  %4407 = lshr i32 %4298, 5
  %4408 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4406, i32 %4407, i32 %4361, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = and i32 %4409, 3
  %4411 = icmp eq i32 %4410, 0
  %4412 = select i1 %4411, float 1.000000e+00, float 0.000000e+00
  %4413 = icmp eq i32 %4410, 3
  br i1 %4413, label %4414, label %4427

; <label>:4414                                    ; preds = %4405
  %4415 = lshr i32 %4409, 10
  %4416 = and i32 %4415, 8160
  %4417 = and i32 %4298, 31
  %4418 = or i32 %4416, %4417
  %4419 = lshr i32 %4409, 1
  %4420 = and i32 %4419, 16352
  %4421 = and i32 %4297, 31
  %4422 = or i32 %4420, %4421
  %4423 = lshr i32 %4409, 23
  %4424 = and i32 %4423, 255
  %4425 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4422, i32 %4418, i32 %4424, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  br label %4427

; <label>:4427                                    ; preds = %4414, %4405, %4352
  %4428 = phi float [ %4426, %4414 ], [ %4412, %4405 ], [ 0.000000e+00, %4352 ]
  %4429 = call float @dx.op.binary.f32(i32 36, float %4428, float %4428)  ; FMin(a,b)
  %4430 = call float @dx.op.binary.f32(i32 36, float %4428, float %4429)  ; FMin(a,b)
  %4431 = fcmp fast ogt float %4430, 0.000000e+00
  br i1 %4431, label %4440, label %4432, !dx.controlflow.hints !89

; <label>:4432                                    ; preds = %4676, %4427
  %4433 = phi float [ %4354, %4427 ], [ %4716, %4676 ]
  %4434 = phi float [ %4355, %4427 ], [ %4717, %4676 ]
  %4435 = phi float [ %4356, %4427 ], [ %4718, %4676 ]
  %4436 = phi float [ %4357, %4427 ], [ %4710, %4676 ]
  %4437 = phi float [ %4358, %4427 ], [ %4711, %4676 ]
  %4438 = phi float [ %4359, %4427 ], [ %4712, %4676 ]
  %4439 = icmp eq i32 %4353, %4363
  br i1 %4439, label %4719, label %4352

; <label>:4440                                    ; preds = %4427
  %4441 = fmul fast float %4428, %4386
  %4442 = fmul fast float %4428, %4387
  %4443 = fmul fast float %4428, %4388
  %4444 = fsub fast float %4380, %2479
  %4445 = fcmp fast ogt float %4444, 0.000000e+00
  %4446 = fsub fast float %119, %2479
  %4447 = fcmp fast ogt float %4446, 0.000000e+00
  %4448 = xor i1 %4447, %4445
  %4449 = fsub fast float %2479, %4380
  %4450 = fmul fast float %4449, 2.000000e+00
  %4451 = fadd fast float %4450, %4380
  %4452 = select i1 %4448, float %4380, float %4451
  %4453 = fsub fast float %4452, %119
  %4454 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4453, float %4389, float %4390, float %4453)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = call float @dx.op.unary.f32(i32 25, float %4454)  ; Rsqrt(value)
  %4456 = fmul fast float %4455, %4389
  %4457 = fmul fast float %4455, %4390
  %4458 = fmul fast float %4455, %4453
  %4459 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2487)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4456, float %4457, float %4458)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = fdiv fast float 1.000000e+00, %4460
  %4462 = fmul fast float %4461, %4459
  %4463 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4446, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4464 = fcmp fast ogt float %4463, 0.000000e+00
  %4465 = fcmp fast olt float %4463, 0.000000e+00
  %4466 = zext i1 %4464 to i32
  %4467 = zext i1 %4465 to i32
  %4468 = sub nsw i32 %4466, %4467
  %4469 = sitofp i32 %4468 to float
  %4470 = fsub fast float %4452, %2479
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4470, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = fcmp fast ogt float %4471, 0.000000e+00
  %4473 = fcmp fast olt float %4471, 0.000000e+00
  %4474 = zext i1 %4472 to i32
  %4475 = zext i1 %4473 to i32
  %4476 = sub nsw i32 %4474, %4475
  %4477 = sitofp i32 %4476 to float
  %4478 = fcmp fast une float %4469, %4477
  br i1 %4478, label %4479, label %4489

; <label>:4479                                    ; preds = %4440
  %4480 = fmul fast float %4462, %4458
  %4481 = fmul fast float %4462, %4457
  %4482 = fmul fast float %4462, %4456
  %4483 = fmul fast float %4482, %4482
  %4484 = fmul fast float %4481, %4481
  %4485 = fadd fast float %4483, %4484
  %4486 = fmul fast float %4480, %4480
  %4487 = fadd fast float %4485, %4486
  %4488 = call float @dx.op.unary.f32(i32 24, float %4487)  ; Sqrt(value)
  br label %4501

; <label>:4489                                    ; preds = %4440
  %4490 = icmp slt i32 %4468, 0
  br i1 %4490, label %4491, label %4501

; <label>:4491                                    ; preds = %4489
  %4492 = fsub fast float %117, %4378
  %4493 = fsub fast float %118, %4379
  %4494 = fsub fast float %119, %4452
  %4495 = fmul fast float %4492, %4492
  %4496 = fmul fast float %4493, %4493
  %4497 = fadd fast float %4495, %4496
  %4498 = fmul fast float %4494, %4494
  %4499 = fadd fast float %4497, %4498
  %4500 = call float @dx.op.unary.f32(i32 24, float %4499)  ; Sqrt(value)
  br label %4501

; <label>:4501                                    ; preds = %4491, %4489, %4479
  %4502 = phi float [ %4488, %4479 ], [ %4500, %4491 ], [ 0.000000e+00, %4489 ]
  %4503 = and i1 %4447, %4445
  %4504 = fsub fast float -0.000000e+00, %4502
  %4505 = select i1 %4503, float -0.000000e+00, float %4504
  %4506 = fmul fast float %2480, 0x3FF7154760000000
  %4507 = fmul fast float %4506, %4505
  %4508 = fmul fast float %2481, 0x3FF7154760000000
  %4509 = fmul fast float %4508, %4505
  %4510 = fmul fast float %2482, 0x3FF7154760000000
  %4511 = fmul fast float %4510, %4505
  %4512 = call float @dx.op.unary.f32(i32 21, float %4507)  ; Exp(value)
  %4513 = call float @dx.op.unary.f32(i32 21, float %4509)  ; Exp(value)
  %4514 = call float @dx.op.unary.f32(i32 21, float %4511)  ; Exp(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = fmul fast float %4441, %4515
  %4519 = fmul fast float %4442, %4516
  %4520 = fmul fast float %4443, %4517
  %4521 = fsub fast float %4395, %2679
  %4522 = fsub fast float %4396, %2678
  %4523 = fsub fast float %4397, %2677
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4521, float %4522, float %4523, float %4521, float %4522, float %4523)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = call float @dx.op.unary.f32(i32 25, float %4524)  ; Rsqrt(value)
  %4526 = fmul fast float %4525, %4521
  %4527 = fmul fast float %4525, %4522
  %4528 = fmul fast float %4525, %4523
  %4529 = call float @dx.op.dot3.f32(i32 55, float %4395, float %4396, float %4397, float %2686, float %2687, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %4530 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2675, float %2674, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4532 = fmul fast float %4531, %4402
  %4533 = fmul fast float %4531, %4531
  %4534 = fmul fast float %4533, %2706
  %4535 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4536 = fmul fast float %4532, %4535
  %4537 = bitcast float %4392 to i32
  %4538 = ashr i32 %4537, 1
  %4539 = sub nsw i32 1597463007, %4538
  %4540 = bitcast i32 %4539 to float
  %4541 = fmul fast float %4540, %4389
  %4542 = fmul fast float %4540, %4390
  %4543 = fmul fast float %4540, %4391
  %4544 = fsub fast float %4541, %2679
  %4545 = fsub fast float %4542, %2678
  %4546 = fsub fast float %4543, %2677
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float %4544, float %4545, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = call float @dx.op.unary.f32(i32 25, float %4547)  ; Rsqrt(value)
  %4549 = fmul fast float %4544, %4548
  %4550 = fmul fast float %4545, %4548
  %4551 = fmul fast float %4546, %4548
  %4552 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2687, float %2688, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = fmul fast float %4552, %4552
  %4554 = call float @dx.op.unary.f32(i32 6, float %4529)  ; FAbs(value)
  %4555 = fsub fast float 1.000000e+00, %2689
  %4556 = call float @dx.op.binary.f32(i32 35, float %4555, float 0x3F847AE140000000)  ; FMax(a,b)
  %4557 = fmul fast float %4556, %4556
  %4558 = fmul fast float %4557, %4557
  %4559 = fsub fast float 1.000000e+00, %4558
  %4560 = fmul fast float %2693, %2693
  %4561 = fmul fast float %4560, %4559
  %4562 = fadd fast float %4561, %4558
  %4563 = bitcast float %4562 to i32
  %4564 = ashr i32 %4563, 1
  %4565 = add nsw i32 %4564, 532487669
  %4566 = bitcast i32 %4565 to float
  %4567 = fadd fast float %4566, %2693
  %4568 = fmul fast float %4558, %4553
  %4569 = fsub fast float 1.000000e+00, %4553
  %4570 = fadd fast float %4569, %4568
  %4571 = fmul fast float %4554, %4554
  %4572 = fmul fast float %4571, %4559
  %4573 = fadd fast float %4572, %4558
  %4574 = bitcast float %4573 to i32
  %4575 = ashr i32 %4574, 1
  %4576 = add nsw i32 %4575, 532487669
  %4577 = bitcast i32 %4576 to float
  %4578 = fadd fast float %4577, %4554
  %4579 = fmul fast float %4570, %4570
  %4580 = fmul fast float %4579, %4567
  %4581 = fmul fast float %4580, %4578
  %4582 = fdiv fast float 1.000000e+00, %4581
  %4583 = bitcast float %4558 to i32
  %4584 = sitofp i32 %4583 to float
  %4585 = fmul fast float %4584, 0x3FE7F73180000000
  %4586 = fadd fast float %4585, 0x41AFE27C40000000
  %4587 = fptosi float %4586 to i32
  %4588 = bitcast i32 %4587 to float
  %4589 = fmul fast float %4375, 0x3FD80E9D60000000
  %4590 = fmul fast float %4589, %4540
  %4591 = fadd fast float %4588, %4590
  %4592 = bitcast float %4591 to i32
  %4593 = sub nsw i32 2129859010, %4592
  %4594 = bitcast i32 %4593 to float
  %4595 = fmul fast float %4558, %4582
  %4596 = fmul fast float %4595, %4588
  %4597 = fmul fast float %4596, %4594
  %4598 = call float @dx.op.unary.f32(i32 6, float %4530)  ; FAbs(value)
  %4599 = fsub fast float 1.000000e+00, %4598
  %4600 = bitcast float %4599 to i32
  %4601 = sitofp i32 %4600 to float
  %4602 = fmul fast float %4601, 5.000000e+00
  %4603 = fadd fast float %4602, 0xC1EFBF8940000000
  %4604 = fptosi float %4603 to i32
  %4605 = bitcast i32 %4604 to float
  %4606 = fsub fast float 1.000000e+00, %2683
  %4607 = fsub fast float 1.000000e+00, %2684
  %4608 = fsub fast float 1.000000e+00, %2691
  %4609 = fmul fast float %4605, %4606
  %4610 = fmul fast float %4605, %4607
  %4611 = fmul fast float %4605, %4608
  %4612 = fadd fast float %4609, %2683
  %4613 = fadd fast float %4610, %2684
  %4614 = fadd fast float %4611, %2691
  br i1 %3971, label %4615, label %4638

; <label>:4615                                    ; preds = %4501
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2057, float %4598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = fadd fast float %4617, -5.000000e-01
  %4621 = fadd fast float %4618, -5.000000e-01
  %4622 = fadd fast float %4619, -5.000000e-01
  %4623 = fmul fast float %2683, 4.000000e+00
  %4624 = fmul fast float %4623, %4606
  %4625 = fmul fast float %4624, %4620
  %4626 = fmul fast float %2684, 4.000000e+00
  %4627 = fmul fast float %4626, %4607
  %4628 = fmul fast float %4627, %4621
  %4629 = fmul fast float %2691, 4.000000e+00
  %4630 = fmul fast float %4629, %4608
  %4631 = fmul fast float %4630, %4622
  %4632 = fadd fast float %4625, %4612
  %4633 = fadd fast float %4628, %4613
  %4634 = fadd fast float %4631, %4614
  %4635 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4636 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  br label %4638

; <label>:4638                                    ; preds = %4615, %4501
  %4639 = phi float [ %4635, %4615 ], [ %4612, %4501 ]
  %4640 = phi float [ %4636, %4615 ], [ %4613, %4501 ]
  %4641 = phi float [ %4637, %4615 ], [ %4614, %4501 ]
  %4642 = fmul fast float %4529, 9.843750e-01
  %4643 = fadd fast float %4642, 7.812500e-03
  %4644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4643, float %3961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 3
  %4647 = fmul fast float %4645, %2683
  %4648 = fmul fast float %4645, %2684
  %4649 = fmul fast float %4645, %2691
  %4650 = fadd fast float %4647, %4646
  %4651 = fadd fast float %4648, %4646
  %4652 = fadd fast float %4649, %4646
  br i1 %3971, label %4653, label %4676

; <label>:4653                                    ; preds = %4638
  %4654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2057, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = extractvalue %dx.types.ResRet.f32 %4654, 1
  %4657 = extractvalue %dx.types.ResRet.f32 %4654, 2
  %4658 = fadd fast float %4655, -5.000000e-01
  %4659 = fadd fast float %4656, -5.000000e-01
  %4660 = fadd fast float %4657, -5.000000e-01
  %4661 = fmul fast float %2683, 4.000000e+00
  %4662 = fmul fast float %4661, %4606
  %4663 = fmul fast float %4662, %4658
  %4664 = fmul fast float %2684, 4.000000e+00
  %4665 = fmul fast float %4664, %4607
  %4666 = fmul fast float %4665, %4659
  %4667 = fmul fast float %2691, 4.000000e+00
  %4668 = fmul fast float %4667, %4608
  %4669 = fmul fast float %4668, %4660
  %4670 = fadd fast float %4663, %4650
  %4671 = fadd fast float %4666, %4651
  %4672 = fadd fast float %4669, %4652
  %4673 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4675 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  br label %4676

; <label>:4676                                    ; preds = %4653, %4638
  %4677 = phi float [ %4673, %4653 ], [ %4650, %4638 ]
  %4678 = phi float [ %4674, %4653 ], [ %4651, %4638 ]
  %4679 = phi float [ %4675, %4653 ], [ %4652, %4638 ]
  %4680 = call float @dx.op.binary.f32(i32 35, float %4678, float %4679)  ; FMax(a,b)
  %4681 = call float @dx.op.binary.f32(i32 35, float %4677, float %4680)  ; FMax(a,b)
  %4682 = fsub fast float 1.000000e+00, %4681
  %4683 = fmul fast float %4639, %4597
  %4684 = fmul fast float %4640, %4597
  %4685 = fmul fast float %4641, %4597
  %4686 = fsub fast float 1.000000e+00, %4530
  %4687 = bitcast float %4686 to i32
  %4688 = sitofp i32 %4687 to float
  %4689 = fmul fast float %4688, 5.000000e+00
  %4690 = fadd fast float %4689, 0xC1EFBF8940000000
  %4691 = fptosi float %4690 to i32
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4692, %2056
  %4694 = fmul fast float %4682, %4693
  %4695 = fmul fast float %4694, %4021
  %4696 = fmul fast float %4694, %4022
  %4697 = fmul fast float %4694, %4023
  %4698 = fadd fast float %4695, %4683
  %4699 = fadd fast float %4696, %4684
  %4700 = fadd fast float %4697, %4685
  %4701 = fmul fast float %4518, %2077
  %4702 = fmul fast float %4701, %4536
  %4703 = fmul fast float %4702, %4682
  %4704 = fmul fast float %4519, %2077
  %4705 = fmul fast float %4704, %4536
  %4706 = fmul fast float %4705, %4682
  %4707 = fmul fast float %4520, %2077
  %4708 = fmul fast float %4707, %4536
  %4709 = fmul fast float %4708, %4682
  %4710 = fadd fast float %4703, %4357
  %4711 = fadd fast float %4706, %4358
  %4712 = fadd fast float %4709, %4359
  %4713 = fmul fast float %4702, %4698
  %4714 = fmul fast float %4705, %4699
  %4715 = fmul fast float %4708, %4700
  %4716 = fadd fast float %4713, %4354
  %4717 = fadd fast float %4714, %4355
  %4718 = fadd fast float %4715, %4356
  br label %4432

; <label>:4719                                    ; preds = %4432
  br label %4720

; <label>:4720                                    ; preds = %4719, %4320
  %4721 = phi float [ %4322, %4320 ], [ %4433, %4719 ]
  %4722 = phi float [ %4323, %4320 ], [ %4434, %4719 ]
  %4723 = phi float [ %4324, %4320 ], [ %4435, %4719 ]
  %4724 = phi float [ %4325, %4320 ], [ %4436, %4719 ]
  %4725 = phi float [ %4326, %4320 ], [ %4437, %4719 ]
  %4726 = phi float [ %4327, %4320 ], [ %4438, %4719 ]
  %4727 = add i32 %4321, 1
  %4728 = icmp ugt i32 %4727, %4317
  br i1 %4728, label %4729, label %4320

; <label>:4729                                    ; preds = %4720
  br label %4730

; <label>:4730                                    ; preds = %4729, %4296, %4286
  %4731 = phi float [ %4287, %4286 ], [ %4287, %4296 ], [ %4721, %4729 ]
  %4732 = phi float [ %4288, %4286 ], [ %4288, %4296 ], [ %4722, %4729 ]
  %4733 = phi float [ %4289, %4286 ], [ %4289, %4296 ], [ %4723, %4729 ]
  %4734 = phi float [ %4290, %4286 ], [ %4290, %4296 ], [ %4724, %4729 ]
  %4735 = phi float [ %4291, %4286 ], [ %4291, %4296 ], [ %4725, %4729 ]
  %4736 = phi float [ %4292, %4286 ], [ %4292, %4296 ], [ %4726, %4729 ]
  %4737 = call float @dx.op.unary.f32(i32 24, float %2680)  ; Sqrt(value)
  %4738 = call float @dx.op.unary.f32(i32 24, float %2681)  ; Sqrt(value)
  %4739 = call float @dx.op.unary.f32(i32 24, float %2682)  ; Sqrt(value)
  %4740 = fmul fast float %4737, %4734
  %4741 = fmul fast float %4738, %4735
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  br i1 %188, label %4744, label %4764

; <label>:4744                                    ; preds = %4730
  %4745 = fadd fast float %4736, %2054
  %4746 = fmul fast float %4745, %2055
  %4747 = fsub fast float 1.000000e+00, %2055
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 3
  %4751 = fmul fast float %4750, %4748
  %4752 = fadd fast float %4751, %4746
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = fmul fast float %4754, %4027
  %4756 = fsub fast float %4752, %4755
  %4757 = fadd fast float %4741, %4740
  %4758 = fmul fast float %4743, %4757
  %4759 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %4760 = fsub fast float %4756, %4759
  %4761 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %4762 = fmul fast float %4760, %4761
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  br label %4779

; <label>:4764                                    ; preds = %4730
  %4765 = fmul fast float %4739, %4736
  %4766 = fmul fast float %4743, %4740
  %4767 = fmul fast float %4743, %4741
  %4768 = fmul fast float %4765, %4743
  %4769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4770 = extractvalue %dx.types.ResRet.i32 %4769, 0
  %4771 = and i32 %4770, 32
  %4772 = icmp eq i32 %4771, 0
  br i1 %4772, label %4779, label %4773

; <label>:4773                                    ; preds = %4764
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 0
  %4776 = fmul fast float %4775, 0x3FE99999A0000000
  %4777 = fadd fast float %4775, %4766
  %4778 = fadd fast float %4776, %4768
  br label %4779

; <label>:4779                                    ; preds = %4773, %4764, %4744
  %4780 = phi float [ %4758, %4744 ], [ %4777, %4773 ], [ %4766, %4764 ]
  %4781 = phi float [ %4763, %4744 ], [ %4767, %4773 ], [ %4767, %4764 ]
  %4782 = phi float [ 1.000000e+00, %4744 ], [ %4778, %4773 ], [ %4768, %4764 ]
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = fmul fast float %4784, %4732
  %4786 = fmul fast float %4784, %4733
  %4787 = fadd fast float %4732, %4731
  %4788 = select i1 %188, float %4787, float %4731
  %4789 = fmul float %4788, %4784
  %4790 = select i1 %188, float 0.000000e+00, float %4785
  %4791 = select i1 %188, float 0.000000e+00, float %4786
  %4792 = fmul fast float %4780, %4737
  %4793 = fmul fast float %4781, %4738
  %4794 = fmul fast float %4782, %4739
  %4795 = fadd fast float %4789, %4792
  %4796 = fadd fast float %4790, %4793
  %4797 = fadd fast float %4791, %4794
  %4798 = select i1 %188, float %4781, float %4796
  %4799 = select i1 %188, float %4782, float %4797
  %4800 = call float @dx.op.binary.f32(i32 36, float %4795, float 3.225500e+04)  ; FMin(a,b)
  %4801 = call float @dx.op.binary.f32(i32 36, float %4798, float 3.225500e+04)  ; FMin(a,b)
  %4802 = call float @dx.op.binary.f32(i32 36, float %4799, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4800)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4801)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4802)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
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
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[31 x i32] [i32 29, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !79}
!59 = !{!60, !77, null}
!60 = !{!61, !64, !66, !68, !70, !71, !72, !74, !76}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 2}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 4, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !69}
!71 = !{i32 5, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!72 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!73 = !{i32 1}
!74 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 7, i8 0, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!77 = !{!78}
!78 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!79 = !{i32 0, i64 24}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}

