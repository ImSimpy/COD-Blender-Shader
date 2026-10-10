;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                1   xyzw        3     NONE   float   xyzw
; LMAPCOORDS               0   xyz         4     NONE   float   xyz 
; NORMAL                   0   xyz         5     NONE   float   xyz 
; TANGENT                  0   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        7     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        8     NONE   float   xyzw
; NORMAL_TRANSFORM         3   xyzw        9     NONE   float   xyzw
; TRANSIENT_INDEX          0   x          10     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f0c36e352791020859fe732f5e4086da
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
; TEXCOORDS                1                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
; NORMAL_TRANSFORM         2                 linear       
; NORMAL_TRANSFORM         3                 linear       
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
; Number of inputs: 41, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = fmul fast float %83, %77
  %85 = fmul fast float %83, %78
  %86 = fmul fast float %61, %58
  %87 = fmul fast float %62, %57
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %62, %56
  %90 = fmul fast float %60, %58
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %60, %57
  %93 = fmul fast float %61, %56
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %88, %59
  %96 = fmul fast float %91, %59
  %97 = fmul fast float %94, %59
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %101 = fmul fast float %99, 2.000000e+00
  %102 = fmul fast float %101, %84
  %103 = fmul fast float %100, 2.000000e+00
  %104 = fmul fast float %103, %85
  %105 = fsub fast float 1.000000e+00, %102
  %106 = fsub fast float 1.000000e+00, %104
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %105, %108
  %112 = fmul fast float %105, %109
  %113 = fmul fast float %105, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fmul fast float %106, %115
  %119 = fmul fast float %106, %116
  %120 = fmul fast float %106, %117
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fadd fast float %118, %122
  %126 = fadd fast float %125, %111
  %127 = fadd fast float %119, %123
  %128 = fadd fast float %127, %112
  %129 = fadd fast float %120, %124
  %130 = fadd fast float %129, %113
  %131 = fmul fast float %126, %79
  %132 = fmul fast float %128, %79
  %133 = fmul fast float %130, %79
  %134 = fadd fast float %65, 5.000000e-01
  %135 = fptoui float %134 to i32
  %136 = shl i32 %135, 3
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = or i32 %136, 4
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %139, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %138, 8191
  %143 = lshr i32 %138, 13
  %144 = and i32 %143, 8191
  %145 = lshr i32 %138, 26
  %146 = and i32 %141, 65535
  %147 = lshr i32 %141, 16
  %148 = uitofp i32 %146 to float
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %151 = uitofp i32 %147 to float
  %152 = uitofp i32 %142 to float
  %153 = fmul fast float %150, %152
  %154 = uitofp i32 %144 to float
  %155 = fmul fast float %150, %154
  %156 = fmul fast float %150, %63
  %157 = fmul fast float %156, %148
  %158 = fmul fast float %150, %64
  %159 = fmul fast float %158, %151
  %160 = fadd fast float %157, %153
  %161 = fadd fast float %155, %159
  %162 = uitofp i32 %145 to float
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %166 = fmul fast float %164, %84
  %167 = fmul fast float %165, %85
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = and i32 %169, 114688
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float %166, float 0.000000e+00
  %173 = select i1 %171, float %167, float 0.000000e+00
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, 2.550000e+02
  %177 = fptoui float %176 to i32
  %178 = select i1 %171, i32 %177, i32 0
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.i32 %180, 3
  %182 = and i32 %181, 3
  %183 = icmp ne i32 %182, 0
  %184 = and i32 %181, 4
  %185 = icmp ne i32 %184, 0
  %186 = and i1 %183, %185
  br i1 %186, label %187, label %198

; <label>:187                                     ; preds = %0
  %188 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %189 = fmul fast float %188, %85
  %190 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %191 = fmul fast float %190, %84
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %191, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fsub fast float 1.000000e+00, %193
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = fcmp fast olt float %194, %196
  br label %201

; <label>:198                                     ; preds = %0
  %199 = icmp eq i32 %184, 0
  %200 = and i1 %183, %199
  br label %201

; <label>:201                                     ; preds = %198, %187
  %202 = phi i1 [ %197, %187 ], [ %200, %198 ]
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = shl i32 %204, 4
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %204, 7
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %204, 22
  %212 = shl nuw nsw i32 %211, 5
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %215, 8
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 288, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = shl i32 %232, 4
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %232, 7
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %232, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 304, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = fmul fast float %264, 0x3F50624DE0000000
  %268 = fmul fast float %266, 0x3F50624DE0000000
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = shl i32 %270, 4
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %270, 7
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %270, 22
  %278 = shl nuw nsw i32 %277, 5
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 248, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %281, 8
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %281, 16
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 68, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 320, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = fmul fast float %302, 0x3F50624DE0000000
  %306 = fmul fast float %304, 0x3F50624DE0000000
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = shl i32 %308, 4
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %308, 7
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %308, 22
  %316 = shl nuw nsw i32 %315, 5
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %319, 8
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %319, 16
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %340, 0x3F50624DE0000000
  %344 = fmul fast float %342, 0x3F50624DE0000000
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 364, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = lshr i32 %346, 20
  %348 = and i32 %347, 3
  %349 = add nuw nsw i32 %348, 1
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = or i32 %353, %351
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %799, label %356

; <label>:356                                     ; preds = %201
  %357 = lshr i32 %230, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %358, 0x3F50624DE0000000
  %360 = and i32 %230, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fmul fast float %361, 0x3F50624DE0000000
  %363 = lshr i32 %228, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = and i32 %228, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 284, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = lshr i32 %368, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = fmul fast float %370, 0x3F50624DE0000000
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 16
  %375 = and i32 %374, 255
  %376 = lshr i32 %373, 24
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = lshr i32 %384, 22
  %386 = shl nuw nsw i32 %385, 5
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = shl i32 %384, 4
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %384, 7
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 3
  %396 = fmul fast float %395, 1.000000e+03
  %397 = fmul fast float %362, %396
  %398 = call float @dx.op.unary.f32(i32 22, float %397)  ; Frc(value)
  %399 = fadd fast float %398, %366
  %400 = fmul fast float %359, %396
  %401 = call float @dx.op.unary.f32(i32 22, float %400)  ; Frc(value)
  %402 = fadd fast float %401, %364
  %403 = fmul fast float %371, %396
  %404 = call float @dx.op.unary.f32(i32 22, float %403)  ; Frc(value)
  %405 = fmul fast float %404, 0x401921FB60000000
  %406 = fadd fast float %405, %387
  %407 = call float @dx.op.unary.f32(i32 13, float %406)  ; Sin(value)
  %408 = call float @dx.op.unary.f32(i32 12, float %406)  ; Cos(value)
  %409 = fsub fast float -0.000000e+00, %407
  %410 = fadd fast float %70, -5.000000e-01
  %411 = fadd fast float %71, -5.000000e-01
  %412 = fmul fast float %380, %410
  %413 = fmul fast float %382, %411
  %414 = fadd fast float %412, 5.000000e-01
  %415 = fadd fast float %413, 5.000000e-01
  %416 = fmul fast float %390, %414
  %417 = fmul fast float %393, %415
  %418 = fmul fast float %408, %416
  %419 = call float @dx.op.tertiary.f32(i32 46, float %409, float %417, float %418)  ; FMad(a,b,c)
  %420 = fmul fast float %407, %416
  %421 = call float @dx.op.tertiary.f32(i32 46, float %408, float %417, float %420)  ; FMad(a,b,c)
  %422 = fadd fast float %399, %419
  %423 = fadd fast float %402, %421
  %424 = icmp ugt i32 %375, 1
  %425 = icmp ugt i32 %373, 33554431
  %426 = or i1 %425, %424
  br i1 %426, label %427, label %451

; <label>:427                                     ; preds = %356
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = lshr i32 %429, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = fmul fast float %395, %431
  %433 = call float @dx.op.unary.f32(i32 22, float %432)  ; Frc(value)
  %434 = mul nuw nsw i32 %375, %376
  %435 = uitofp i32 %434 to float
  %436 = fmul fast float %433, %435
  %437 = call float @dx.op.unary.f32(i32 27, float %436)  ; Round_ni(value)
  %438 = fptoui float %437 to i32
  %439 = urem i32 %438, %375
  %440 = udiv i32 %438, %376
  %441 = call float @dx.op.unary.f32(i32 22, float %422)  ; Frc(value)
  %442 = call float @dx.op.unary.f32(i32 22, float %423)  ; Frc(value)
  %443 = uitofp i32 %439 to float
  %444 = uitofp i32 %440 to float
  %445 = fadd fast float %441, %443
  %446 = fadd fast float %442, %444
  %447 = uitofp i32 %375 to float
  %448 = uitofp i32 %376 to float
  %449 = fdiv fast float %445, %447
  %450 = fdiv fast float %446, %448
  br label %451

; <label>:451                                     ; preds = %427, %356
  %452 = phi float [ %449, %427 ], [ %422, %356 ]
  %453 = phi float [ %450, %427 ], [ %423, %356 ]
  %454 = and i32 %351, 16
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %647, label %456

; <label>:456                                     ; preds = %451
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 376, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %460, %dx.types.Handle %80, float %452, float %453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = and i32 %373, 255
  %467 = uitofp i32 %466 to float
  %468 = lshr i32 %373, 8
  %469 = and i32 %468, 255
  %470 = uitofp i32 %469 to float
  %471 = fmul fast float %465, %467
  %472 = fadd fast float %471, %470
  %473 = fmul fast float %472, 0x3F70101000000000
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 512
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %485, label %478

; <label>:478                                     ; preds = %456
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 456, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = add i32 %480, 0
  %482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %482, %dx.types.Handle %81, float %452, float %453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  br label %485

; <label>:485                                     ; preds = %478, %456
  %486 = phi float [ %484, %478 ], [ 1.000000e+00, %456 ]
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 33554432
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %594, label %491

; <label>:491                                     ; preds = %485
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 224, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 65535
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = lshr i32 %493, 16
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 65535
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = lshr i32 %503, 24
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = and i32 %503, 255
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = lshr i32 %503, 8
  %511 = and i32 %510, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = lshr i32 %503, 16
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %516, 0x3F70101020000000
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = lshr i32 %519, 24
  %521 = uitofp i32 %520 to float
  %522 = fmul fast float %521, 0x3F70101020000000
  %523 = and i32 %519, 255
  %524 = uitofp i32 %523 to float
  %525 = fmul fast float %524, 0x3F70101020000000
  %526 = lshr i32 %519, 8
  %527 = and i32 %526, 255
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %528, 0x3F70101020000000
  %530 = lshr i32 %519, 16
  %531 = and i32 %530, 255
  %532 = uitofp i32 %531 to float
  %533 = fmul fast float %532, 0x3F70101020000000
  %534 = bitcast float %462 to i32
  %535 = ashr i32 %534, 1
  %536 = sub nsw i32 1597463174, %535
  %537 = bitcast i32 %536 to float
  %538 = fmul fast float %462, 5.000000e-01
  %539 = fmul fast float %537, %537
  %540 = fmul fast float %539, %538
  %541 = fsub fast float 1.500000e+00, %540
  %542 = fmul fast float %537, %462
  %543 = fmul fast float %542, %541
  %544 = bitcast float %463 to i32
  %545 = ashr i32 %544, 1
  %546 = sub nsw i32 1597463174, %545
  %547 = bitcast i32 %546 to float
  %548 = fmul fast float %463, 5.000000e-01
  %549 = fmul fast float %547, %547
  %550 = fmul fast float %549, %548
  %551 = fsub fast float 1.500000e+00, %550
  %552 = fmul fast float %547, %463
  %553 = fmul fast float %552, %551
  %554 = bitcast float %464 to i32
  %555 = ashr i32 %554, 1
  %556 = sub nsw i32 1597463174, %555
  %557 = bitcast i32 %556 to float
  %558 = fmul fast float %464, 5.000000e-01
  %559 = fmul fast float %557, %557
  %560 = fmul fast float %559, %558
  %561 = fsub fast float 1.500000e+00, %560
  %562 = fmul fast float %557, %464
  %563 = fmul fast float %562, %561
  %564 = fsub fast float %543, %525
  %565 = fsub fast float %553, %529
  %566 = fsub fast float %563, %533
  %567 = fmul fast float %564, %495
  %568 = fmul fast float %565, %497
  %569 = fmul fast float %566, %501
  %570 = fadd fast float %567, %509
  %571 = fadd fast float %568, %513
  %572 = fadd fast float %569, %517
  %573 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %574 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %575 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  %576 = fmul fast float %573, %573
  %577 = fmul fast float %574, %574
  %578 = fmul fast float %575, %575
  %579 = fsub fast float %576, %462
  %580 = fsub fast float %577, %463
  %581 = fsub fast float %578, %464
  %582 = fmul fast float %579, %486
  %583 = fmul fast float %580, %486
  %584 = fmul fast float %581, %486
  %585 = fadd fast float %582, %462
  %586 = fadd fast float %583, %463
  %587 = fadd fast float %584, %464
  %588 = fadd fast float %506, %473
  %589 = fsub fast float %588, %522
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fsub fast float %590, %473
  %592 = fmul fast float %591, %486
  %593 = fadd fast float %592, %473
  br label %647

; <label>:594                                     ; preds = %485
  %595 = and i32 %488, 134217728
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %631, label %597

; <label>:597                                     ; preds = %594
  %598 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %599 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %600 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %601 = fadd fast float %598, -5.000000e-01
  %602 = fadd fast float %599, -5.000000e-01
  %603 = fadd fast float %600, -5.000000e-01
  %604 = fmul fast float %601, %486
  %605 = fmul fast float %602, %486
  %606 = fmul fast float %603, %486
  %607 = fadd fast float %604, 5.000000e-01
  %608 = fadd fast float %605, 5.000000e-01
  %609 = fadd fast float %606, 5.000000e-01
  %610 = call float @dx.op.unary.f32(i32 24, float %462)  ; Sqrt(value)
  %611 = call float @dx.op.unary.f32(i32 24, float %463)  ; Sqrt(value)
  %612 = call float @dx.op.unary.f32(i32 24, float %464)  ; Sqrt(value)
  %613 = fmul fast float %607, 2.000000e+00
  %614 = fsub fast float 1.000000e+00, %613
  %615 = fmul fast float %614, %610
  %616 = fadd fast float %615, %613
  %617 = fmul fast float %616, %610
  %618 = fmul fast float %608, 2.000000e+00
  %619 = fsub fast float 1.000000e+00, %618
  %620 = fmul fast float %619, %611
  %621 = fadd fast float %620, %618
  %622 = fmul fast float %621, %611
  %623 = fmul fast float %609, 2.000000e+00
  %624 = fsub fast float 1.000000e+00, %623
  %625 = fmul fast float %624, %612
  %626 = fadd fast float %625, %623
  %627 = fmul fast float %626, %612
  %628 = fmul fast float %617, %617
  %629 = fmul fast float %622, %622
  %630 = fmul fast float %627, %627
  br label %647

; <label>:631                                     ; preds = %594
  %632 = fmul fast float %218, %218
  %633 = fmul fast float %222, %222
  %634 = fmul fast float %226, %226
  %635 = fadd fast float %632, -1.000000e+00
  %636 = fadd fast float %633, -1.000000e+00
  %637 = fadd fast float %634, -1.000000e+00
  %638 = fmul fast float %486, %635
  %639 = fmul fast float %486, %636
  %640 = fmul fast float %486, %637
  %641 = fadd fast float %638, 1.000000e+00
  %642 = fadd fast float %639, 1.000000e+00
  %643 = fadd fast float %640, 1.000000e+00
  %644 = fmul fast float %641, %462
  %645 = fmul fast float %642, %463
  %646 = fmul fast float %643, %464
  br label %647

; <label>:647                                     ; preds = %631, %597, %491, %451
  %648 = phi float [ %593, %491 ], [ %473, %597 ], [ %473, %631 ], [ 0x3FA23C0BE0000000, %451 ]
  %649 = phi float [ %585, %491 ], [ %628, %597 ], [ %644, %631 ], [ 1.000000e+00, %451 ]
  %650 = phi float [ %586, %491 ], [ %629, %597 ], [ %645, %631 ], [ 1.000000e+00, %451 ]
  %651 = phi float [ %587, %491 ], [ %630, %597 ], [ %646, %631 ], [ 1.000000e+00, %451 ]
  %652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.i32 %652, 1
  %654 = and i32 %653, 1
  %655 = icmp ne i32 %654, 0
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 372, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 32
  %659 = icmp ne i32 %658, 0
  %660 = and i1 %655, %659
  %661 = select i1 %660, float 1.000000e+00, float %649
  %662 = select i1 %660, float 0x3FD3333340000000, float %650
  %663 = select i1 %660, float 0x3FD3333340000000, float %651
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 32
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %737, label %668

; <label>:668                                     ; preds = %647
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 392, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add i32 %672, 0
  %674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %674, %dx.types.Handle %80, float %452, float %453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = extractvalue %dx.types.ResRet.f32 %675, 1
  %678 = extractvalue %dx.types.ResRet.f32 %675, 2
  %679 = extractvalue %dx.types.ResRet.f32 %675, 3
  %680 = and i32 %670, 255
  %681 = uitofp i32 %680 to float
  %682 = lshr i32 %670, 8
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = lshr i32 %670, 16
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101000000000
  %689 = fmul fast float %676, %681
  %690 = fadd fast float %689, %684
  %691 = fmul fast float %690, 0x3F70101000000000
  %692 = fadd fast float %677, -5.000000e-01
  %693 = fadd fast float %679, -5.000000e-01
  %694 = fmul fast float %692, %688
  %695 = fmul fast float %693, %688
  %696 = fadd fast float %694, 5.000000e-01
  %697 = fadd fast float %695, 5.000000e-01
  %698 = fmul fast float %696, 2.000000e+00
  %699 = fadd fast float %698, -1.000000e+00
  %700 = fmul fast float %697, 2.000000e+00
  %701 = fadd fast float %700, -1.000000e+00
  %702 = fadd fast float %699, %701
  %703 = fmul fast float %702, 5.000000e-01
  %704 = fsub fast float %699, %701
  %705 = fmul fast float %704, 5.000000e-01
  %706 = call float @dx.op.unary.f32(i32 6, float %703)  ; FAbs(value)
  %707 = fsub fast float 1.000000e+00, %706
  %708 = call float @dx.op.unary.f32(i32 6, float %705)  ; FAbs(value)
  %709 = fsub fast float %707, %708
  %710 = call float @dx.op.dot3.f32(i32 55, float %703, float %705, float %709, float %703, float %705, float %709)  ; Dot3(ax,ay,az,bx,by,bz)
  %711 = call float @dx.op.unary.f32(i32 25, float %710)  ; Rsqrt(value)
  %712 = fmul fast float %703, %711
  %713 = fmul fast float %705, %711
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 67108864
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %733, label %718

; <label>:718                                     ; preds = %668
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 65535
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 284, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 65535
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = lshr i32 %720, 16
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = fsub fast float %691, %728
  %730 = fmul fast float %729, %722
  %731 = fadd fast float %730, %726
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  br label %733

; <label>:733                                     ; preds = %718, %668
  %734 = phi float [ %732, %718 ], [ %691, %668 ]
  %735 = call float @dx.op.dot2.f32(i32 54, float %712, float %713, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %736 = call float @dx.op.dot2.f32(i32 54, float %712, float %713, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %737

; <label>:737                                     ; preds = %733, %647
  %738 = phi float [ %734, %733 ], [ 0x3FD6666660000000, %647 ]
  %739 = phi float [ %735, %733 ], [ 0.000000e+00, %647 ]
  %740 = phi float [ %736, %733 ], [ 0.000000e+00, %647 ]
  %741 = phi float [ %678, %733 ], [ 1.000000e+00, %647 ]
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = lshr i32 %743, 22
  %745 = shl nuw nsw i32 %744, 5
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 64
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %783, label %751

; <label>:751                                     ; preds = %737
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 408, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = add i32 %753, 0
  %755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 131072
  %759 = icmp eq i32 %758, 0
  %760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %755, %dx.types.Handle %80, float %452, float %453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = fmul fast float %761, %207
  %765 = fmul fast float %762, %210
  %766 = fmul fast float %763, %213
  br i1 %759, label %773, label %767

; <label>:767                                     ; preds = %751
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = fmul fast float %769, %764
  %771 = fmul fast float %769, %765
  %772 = fmul fast float %769, %766
  br label %773

; <label>:773                                     ; preds = %767, %751
  %774 = phi float [ %770, %767 ], [ %764, %751 ]
  %775 = phi float [ %771, %767 ], [ %765, %751 ]
  %776 = phi float [ %772, %767 ], [ %766, %751 ]
  %777 = fmul fast float %774, %746
  %778 = select i1 %202, float %777, float %774
  %779 = call float @dx.op.dot3.f32(i32 55, float %778, float %775, float %776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = select i1 %202, float 0.000000e+00, float %774
  %781 = select i1 %202, float %779, float %775
  %782 = select i1 %202, float 0.000000e+00, float %776
  br label %783

; <label>:783                                     ; preds = %773, %737
  %784 = phi float [ %780, %773 ], [ 0.000000e+00, %737 ]
  %785 = phi float [ %781, %773 ], [ 0.000000e+00, %737 ]
  %786 = phi float [ %782, %773 ], [ 0.000000e+00, %737 ]
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = lshr i32 %788, 8
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = call float @dx.op.dot3.f32(i32 55, float %661, float %662, float %663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = fmul fast float %793, %794
  %796 = fadd fast float %795, %790
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  br label %799

; <label>:799                                     ; preds = %783, %201
  %800 = phi float [ %739, %783 ], [ 0.000000e+00, %201 ]
  %801 = phi float [ %740, %783 ], [ 0.000000e+00, %201 ]
  %802 = phi float [ %784, %783 ], [ 0.000000e+00, %201 ]
  %803 = phi float [ %785, %783 ], [ 0.000000e+00, %201 ]
  %804 = phi float [ %786, %783 ], [ 0.000000e+00, %201 ]
  %805 = phi float [ %661, %783 ], [ 0.000000e+00, %201 ]
  %806 = phi float [ %662, %783 ], [ 0.000000e+00, %201 ]
  %807 = phi float [ %663, %783 ], [ 0.000000e+00, %201 ]
  %808 = phi float [ %648, %783 ], [ 0.000000e+00, %201 ]
  %809 = phi float [ 1.000000e+00, %783 ], [ 0.000000e+00, %201 ]
  %810 = phi float [ %738, %783 ], [ 0.000000e+00, %201 ]
  %811 = phi float [ %741, %783 ], [ 0.000000e+00, %201 ]
  %812 = phi float [ %798, %783 ], [ 0.000000e+00, %201 ]
  %813 = icmp ult i32 %349, 2
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = or i32 %817, %815
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %1623, label %820

; <label>:820                                     ; preds = %799
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 300, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = lshr i32 %822, 16
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = fmul fast float %824, 0x3F50624DE0000000
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 16
  %829 = and i32 %828, 255
  %830 = lshr i32 %827, 24
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 308, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 65535
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = lshr i32 %832, 16
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = lshr i32 %838, 22
  %840 = shl nuw nsw i32 %839, 5
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = shl i32 %838, 4
  %843 = and i32 %842, 32752
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = lshr i32 %838, 7
  %846 = and i32 %845, 32752
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %850 = fmul fast float %849, 1.000000e+03
  %851 = fmul fast float %267, %850
  %852 = call float @dx.op.unary.f32(i32 22, float %851)  ; Frc(value)
  %853 = fadd fast float %852, %258
  %854 = fmul fast float %268, %850
  %855 = call float @dx.op.unary.f32(i32 22, float %854)  ; Frc(value)
  %856 = fadd fast float %855, %260
  %857 = fmul fast float %825, %850
  %858 = call float @dx.op.unary.f32(i32 22, float %857)  ; Frc(value)
  %859 = fmul fast float %858, 0x401921FB60000000
  %860 = fadd fast float %859, %841
  %861 = call float @dx.op.unary.f32(i32 13, float %860)  ; Sin(value)
  %862 = call float @dx.op.unary.f32(i32 12, float %860)  ; Cos(value)
  %863 = fsub fast float -0.000000e+00, %861
  %864 = fadd fast float %72, -5.000000e-01
  %865 = fadd fast float %73, -5.000000e-01
  %866 = fmul fast float %834, %864
  %867 = fmul fast float %836, %865
  %868 = fadd fast float %866, 5.000000e-01
  %869 = fadd fast float %867, 5.000000e-01
  %870 = fmul fast float %844, %868
  %871 = fmul fast float %847, %869
  %872 = fmul fast float %862, %870
  %873 = call float @dx.op.tertiary.f32(i32 46, float %863, float %871, float %872)  ; FMad(a,b,c)
  %874 = fmul fast float %861, %870
  %875 = call float @dx.op.tertiary.f32(i32 46, float %862, float %871, float %874)  ; FMad(a,b,c)
  %876 = fadd fast float %853, %873
  %877 = fadd fast float %856, %875
  %878 = icmp ugt i32 %829, 1
  %879 = icmp ugt i32 %827, 33554431
  %880 = or i1 %879, %878
  br i1 %880, label %881, label %905

; <label>:881                                     ; preds = %820
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = lshr i32 %883, 16
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = fmul fast float %849, %885
  %887 = call float @dx.op.unary.f32(i32 22, float %886)  ; Frc(value)
  %888 = mul nuw nsw i32 %829, %830
  %889 = uitofp i32 %888 to float
  %890 = fmul fast float %887, %889
  %891 = call float @dx.op.unary.f32(i32 27, float %890)  ; Round_ni(value)
  %892 = fptoui float %891 to i32
  %893 = urem i32 %892, %829
  %894 = udiv i32 %892, %830
  %895 = call float @dx.op.unary.f32(i32 22, float %876)  ; Frc(value)
  %896 = call float @dx.op.unary.f32(i32 22, float %877)  ; Frc(value)
  %897 = uitofp i32 %893 to float
  %898 = uitofp i32 %894 to float
  %899 = fadd fast float %895, %897
  %900 = fadd fast float %896, %898
  %901 = uitofp i32 %829 to float
  %902 = uitofp i32 %830 to float
  %903 = fdiv fast float %899, %901
  %904 = fdiv fast float %900, %902
  br label %905

; <label>:905                                     ; preds = %881, %820
  %906 = phi float [ %903, %881 ], [ %876, %820 ]
  %907 = phi float [ %904, %881 ], [ %877, %820 ]
  %908 = and i32 %815, 16777216
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %1019, label %910

; <label>:910                                     ; preds = %905
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = fadd fast float %912, %131
  %916 = fadd fast float %913, %132
  %917 = fadd fast float %914, %133
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = icmp eq i32 %43, 65535
  br i1 %921, label %1016, label %922

; <label>:922                                     ; preds = %910
  %923 = lshr i32 %43, 1
  %924 = shl i32 %923, 2
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %43, 1
  %928 = icmp ne i32 %927, 0
  %929 = lshr i32 %926, 16
  %930 = and i32 %926, 65535
  %931 = select i1 %928, i32 %929, i32 %930
  %932 = icmp eq i32 %931, 65535
  br i1 %932, label %1012, label %933

; <label>:933                                     ; preds = %922
  %934 = mul nuw nsw i32 %931, 40
  %935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = add nuw nsw i32 %934, 12
  %940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.f32 %940, 0
  %942 = extractvalue %dx.types.ResRet.f32 %940, 1
  %943 = extractvalue %dx.types.ResRet.f32 %940, 2
  %944 = add nuw nsw i32 %934, 24
  %945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = extractvalue %dx.types.ResRet.f32 %945, 2
  %949 = add nuw nsw i32 %934, 36
  %950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = fsub fast float %915, %936
  %953 = fsub fast float %916, %937
  %954 = fsub fast float %917, %938
  %955 = fmul fast float %951, %952
  %956 = fmul fast float %951, %953
  %957 = fmul fast float %951, %954
  %958 = call float @dx.op.unary.f32(i32 27, float %955)  ; Round_ni(value)
  %959 = call float @dx.op.unary.f32(i32 27, float %956)  ; Round_ni(value)
  %960 = call float @dx.op.unary.f32(i32 27, float %957)  ; Round_ni(value)
  %961 = fadd fast float %958, 5.000000e-01
  %962 = fadd fast float %959, 5.000000e-01
  %963 = fadd fast float %960, 5.000000e-01
  %964 = fmul fast float %961, %941
  %965 = fmul fast float %962, %942
  %966 = fmul fast float %963, %943
  %967 = shl i32 %43, 2
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = add i32 %969, 0
  %971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %972 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %973 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %974 = call float @dx.op.unary.f32(i32 22, float %966)  ; Frc(value)
  %975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %971, %dx.types.Handle %40, float %972, float %973, float %974, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = fmul fast float %976, 1.023000e+03
  %980 = fmul fast float %977, 1.023000e+03
  %981 = fmul fast float %978, 1.023000e+03
  %982 = fadd fast float %979, 5.000000e-01
  %983 = fadd fast float %980, 5.000000e-01
  %984 = fadd fast float %981, 5.000000e-01
  %985 = call float @dx.op.unary.f32(i32 27, float %982)  ; Round_ni(value)
  %986 = call float @dx.op.unary.f32(i32 27, float %983)  ; Round_ni(value)
  %987 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %988 = fsub fast float %955, %958
  %989 = fsub fast float %956, %959
  %990 = fsub fast float %957, %960
  %991 = fmul fast float %988, 7.500000e-01
  %992 = fmul fast float %989, 7.500000e-01
  %993 = fmul fast float %990, 7.500000e-01
  %994 = fadd fast float %958, 1.250000e-01
  %995 = fadd fast float %994, %991
  %996 = fadd fast float %995, %985
  %997 = fadd fast float %959, 1.250000e-01
  %998 = fadd fast float %997, %992
  %999 = fadd fast float %998, %986
  %1000 = fadd fast float %960, 1.250000e-01
  %1001 = fadd fast float %1000, %993
  %1002 = fadd fast float %1001, %987
  %1003 = fmul fast float %996, %946
  %1004 = fmul fast float %999, %947
  %1005 = fmul fast float %1002, %948
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %1007, 0
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1009, %dx.types.Handle %38, float %1003, float %1004, float %1005, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  br label %1012

; <label>:1012                                    ; preds = %933, %922
  %1013 = phi float [ %1011, %933 ], [ -1.000000e+00, %922 ]
  %1014 = fadd fast float %1013, %920
  %1015 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  br label %1016

; <label>:1016                                    ; preds = %1012, %910
  %1017 = phi float [ %1015, %1012 ], [ %920, %910 ]
  %1018 = fmul fast float %1017, %74
  br label %1019

; <label>:1019                                    ; preds = %1016, %905
  %1020 = phi float [ %1018, %1016 ], [ %74, %905 ]
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = and i32 %1022, 256
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1069, label %1025

; <label>:1025                                    ; preds = %1019
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %1027, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1029, %dx.types.Handle %81, float %906, float %907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = shl i32 %1033, 4
  %1035 = and i32 %1034, 32752
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = lshr i32 %1033, 7
  %1038 = and i32 %1037, 32752
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = fsub fast float 1.000000e+00, %1020
  %1041 = call float @dx.op.binary.f32(i32 35, float %1040, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1042 = bitcast float %1020 to i32
  %1043 = sitofp i32 %1042 to float
  %1044 = fadd fast float %1043, 0xC1CFBF8940000000
  %1045 = fmul fast float %1039, %1044
  %1046 = fadd fast float %1045, 0x41CFBF8940000000
  %1047 = fptosi float %1046 to i32
  %1048 = bitcast i32 %1047 to float
  %1049 = bitcast float %1041 to i32
  %1050 = sitofp i32 %1049 to float
  %1051 = fadd fast float %1050, 0xC1CFBF8940000000
  %1052 = fmul fast float %1051, %1039
  %1053 = fadd fast float %1052, 0x41CFBF8940000000
  %1054 = fptosi float %1053 to i32
  %1055 = bitcast i32 %1054 to float
  %1056 = fmul fast float %1048, %1036
  %1057 = fmul fast float %1055, %1036
  %1058 = fsub fast float %1041, %1056
  %1059 = fadd fast float %1057, %1041
  %1060 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1061 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1062 = fsub fast float %1031, %1060
  %1063 = fsub fast float %1061, %1060
  %1064 = bitcast float %1063 to i32
  %1065 = sub nsw i32 2129859010, %1064
  %1066 = bitcast i32 %1065 to float
  %1067 = fmul fast float %1066, %1062
  %1068 = call float @dx.op.unary.f32(i32 7, float %1067)  ; Saturate(value)
  br label %1069

; <label>:1069                                    ; preds = %1025, %1019
  %1070 = phi float [ %1068, %1025 ], [ %1020, %1019 ]
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 128
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1090, label %1075

; <label>:1075                                    ; preds = %1069
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1077, 0
  %1079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1079, %dx.types.Handle %81, float %906, float %907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 524288
  %1085 = icmp ne i32 %1084, 0
  %1086 = fcmp fast ogt float %1081, 0x3FE0101020000000
  %1087 = select i1 %1086, float 1.000000e+00, float 0.000000e+00
  %1088 = select i1 %1085, float %1087, float %1081
  %1089 = fmul fast float %1088, %1070
  br label %1090

; <label>:1090                                    ; preds = %1075, %1069
  %1091 = phi float [ %1089, %1075 ], [ %1070, %1069 ]
  %1092 = fcmp fast ult float %1091, 0x3F70101020000000
  br i1 %1092, label %1623, label %1093

; <label>:1093                                    ; preds = %1090
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 16
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1291, label %1098

; <label>:1098                                    ; preds = %1093
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %80, float %906, float %907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = and i32 %1100, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1100, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1109, %1111
  %1116 = fadd fast float %1115, %1114
  %1117 = fmul fast float %1116, 0x3F70101000000000
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 512
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1129, label %1122

; <label>:1122                                    ; preds = %1098
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1126, %dx.types.Handle %81, float %906, float %907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  br label %1129

; <label>:1129                                    ; preds = %1122, %1098
  %1130 = phi float [ %1128, %1122 ], [ 1.000000e+00, %1098 ]
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = and i32 %1132, 33554432
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1238, label %1135

; <label>:1135                                    ; preds = %1129
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 65535
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = lshr i32 %1137, 16
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 65535
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = lshr i32 %1147, 24
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = and i32 %1147, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F70101020000000
  %1154 = lshr i32 %1147, 8
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1156, 0x3F70101020000000
  %1158 = lshr i32 %1147, 16
  %1159 = and i32 %1158, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F70101020000000
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 24
  %1165 = uitofp i32 %1164 to float
  %1166 = fmul fast float %1165, 0x3F70101020000000
  %1167 = and i32 %1163, 255
  %1168 = uitofp i32 %1167 to float
  %1169 = fmul fast float %1168, 0x3F70101020000000
  %1170 = lshr i32 %1163, 8
  %1171 = and i32 %1170, 255
  %1172 = uitofp i32 %1171 to float
  %1173 = fmul fast float %1172, 0x3F70101020000000
  %1174 = lshr i32 %1163, 16
  %1175 = and i32 %1174, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = fmul fast float %1176, 0x3F70101020000000
  %1178 = bitcast float %1106 to i32
  %1179 = ashr i32 %1178, 1
  %1180 = sub nsw i32 1597463174, %1179
  %1181 = bitcast i32 %1180 to float
  %1182 = fmul fast float %1106, 5.000000e-01
  %1183 = fmul fast float %1181, %1181
  %1184 = fmul fast float %1183, %1182
  %1185 = fsub fast float 1.500000e+00, %1184
  %1186 = fmul fast float %1181, %1106
  %1187 = fmul fast float %1186, %1185
  %1188 = bitcast float %1107 to i32
  %1189 = ashr i32 %1188, 1
  %1190 = sub nsw i32 1597463174, %1189
  %1191 = bitcast i32 %1190 to float
  %1192 = fmul fast float %1107, 5.000000e-01
  %1193 = fmul fast float %1191, %1191
  %1194 = fmul fast float %1193, %1192
  %1195 = fsub fast float 1.500000e+00, %1194
  %1196 = fmul fast float %1191, %1107
  %1197 = fmul fast float %1196, %1195
  %1198 = bitcast float %1108 to i32
  %1199 = ashr i32 %1198, 1
  %1200 = sub nsw i32 1597463174, %1199
  %1201 = bitcast i32 %1200 to float
  %1202 = fmul fast float %1108, 5.000000e-01
  %1203 = fmul fast float %1201, %1201
  %1204 = fmul fast float %1203, %1202
  %1205 = fsub fast float 1.500000e+00, %1204
  %1206 = fmul fast float %1201, %1108
  %1207 = fmul fast float %1206, %1205
  %1208 = fsub fast float %1187, %1169
  %1209 = fsub fast float %1197, %1173
  %1210 = fsub fast float %1207, %1177
  %1211 = fmul fast float %1208, %1139
  %1212 = fmul fast float %1209, %1141
  %1213 = fmul fast float %1210, %1145
  %1214 = fadd fast float %1211, %1153
  %1215 = fadd fast float %1212, %1157
  %1216 = fadd fast float %1213, %1161
  %1217 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1218 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1219 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1220 = fmul fast float %1217, %1217
  %1221 = fmul fast float %1218, %1218
  %1222 = fmul fast float %1219, %1219
  %1223 = fsub fast float %1220, %1106
  %1224 = fsub fast float %1221, %1107
  %1225 = fsub fast float %1222, %1108
  %1226 = fmul fast float %1223, %1130
  %1227 = fmul fast float %1224, %1130
  %1228 = fmul fast float %1225, %1130
  %1229 = fadd fast float %1226, %1106
  %1230 = fadd fast float %1227, %1107
  %1231 = fadd fast float %1228, %1108
  %1232 = fadd fast float %1150, %1117
  %1233 = fsub fast float %1232, %1166
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = fsub fast float %1234, %1117
  %1236 = fmul fast float %1235, %1130
  %1237 = fadd fast float %1236, %1117
  br label %1291

; <label>:1238                                    ; preds = %1129
  %1239 = and i32 %1132, 134217728
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1275, label %1241

; <label>:1241                                    ; preds = %1238
  %1242 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1243 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %1244 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %1245 = fadd fast float %1242, -5.000000e-01
  %1246 = fadd fast float %1243, -5.000000e-01
  %1247 = fadd fast float %1244, -5.000000e-01
  %1248 = fmul fast float %1245, %1130
  %1249 = fmul fast float %1246, %1130
  %1250 = fmul fast float %1247, %1130
  %1251 = fadd fast float %1248, 5.000000e-01
  %1252 = fadd fast float %1249, 5.000000e-01
  %1253 = fadd fast float %1250, 5.000000e-01
  %1254 = call float @dx.op.unary.f32(i32 24, float %1106)  ; Sqrt(value)
  %1255 = call float @dx.op.unary.f32(i32 24, float %1107)  ; Sqrt(value)
  %1256 = call float @dx.op.unary.f32(i32 24, float %1108)  ; Sqrt(value)
  %1257 = fmul fast float %1251, 2.000000e+00
  %1258 = fsub fast float 1.000000e+00, %1257
  %1259 = fmul fast float %1258, %1254
  %1260 = fadd fast float %1259, %1257
  %1261 = fmul fast float %1260, %1254
  %1262 = fmul fast float %1252, 2.000000e+00
  %1263 = fsub fast float 1.000000e+00, %1262
  %1264 = fmul fast float %1263, %1255
  %1265 = fadd fast float %1264, %1262
  %1266 = fmul fast float %1265, %1255
  %1267 = fmul fast float %1253, 2.000000e+00
  %1268 = fsub fast float 1.000000e+00, %1267
  %1269 = fmul fast float %1268, %1256
  %1270 = fadd fast float %1269, %1267
  %1271 = fmul fast float %1270, %1256
  %1272 = fmul fast float %1261, %1261
  %1273 = fmul fast float %1266, %1266
  %1274 = fmul fast float %1271, %1271
  br label %1291

; <label>:1275                                    ; preds = %1238
  %1276 = fmul fast float %246, %246
  %1277 = fmul fast float %250, %250
  %1278 = fmul fast float %254, %254
  %1279 = fadd fast float %1276, -1.000000e+00
  %1280 = fadd fast float %1277, -1.000000e+00
  %1281 = fadd fast float %1278, -1.000000e+00
  %1282 = fmul fast float %1130, %1279
  %1283 = fmul fast float %1130, %1280
  %1284 = fmul fast float %1130, %1281
  %1285 = fadd fast float %1282, 1.000000e+00
  %1286 = fadd fast float %1283, 1.000000e+00
  %1287 = fadd fast float %1284, 1.000000e+00
  %1288 = fmul fast float %1285, %1106
  %1289 = fmul fast float %1286, %1107
  %1290 = fmul fast float %1287, %1108
  br label %1291

; <label>:1291                                    ; preds = %1275, %1241, %1135, %1093
  %1292 = phi float [ %1237, %1135 ], [ %1117, %1241 ], [ %1117, %1275 ], [ 0x3FA23C0BE0000000, %1093 ]
  %1293 = phi float [ %1229, %1135 ], [ %1272, %1241 ], [ %1288, %1275 ], [ 1.000000e+00, %1093 ]
  %1294 = phi float [ %1230, %1135 ], [ %1273, %1241 ], [ %1289, %1275 ], [ 1.000000e+00, %1093 ]
  %1295 = phi float [ %1231, %1135 ], [ %1274, %1241 ], [ %1290, %1275 ], [ 1.000000e+00, %1093 ]
  %1296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.i32 %1296, 1
  %1298 = and i32 %1297, 1
  %1299 = icmp ne i32 %1298, 0
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 32
  %1303 = icmp ne i32 %1302, 0
  %1304 = and i1 %1299, %1303
  %1305 = select i1 %1304, float 1.000000e+00, float %1293
  %1306 = select i1 %1304, float 0x3FD3333340000000, float %1294
  %1307 = select i1 %1304, float 0x3FD3333340000000, float %1295
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 32
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1381, label %1312

; <label>:1312                                    ; preds = %1291
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = add i32 %1316, 0
  %1318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1318, %dx.types.Handle %80, float %906, float %907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1322 = extractvalue %dx.types.ResRet.f32 %1319, 2
  %1323 = extractvalue %dx.types.ResRet.f32 %1319, 3
  %1324 = and i32 %1314, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = lshr i32 %1314, 8
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = lshr i32 %1314, 16
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101000000000
  %1333 = fmul fast float %1320, %1325
  %1334 = fadd fast float %1333, %1328
  %1335 = fmul fast float %1334, 0x3F70101000000000
  %1336 = fadd fast float %1321, -5.000000e-01
  %1337 = fadd fast float %1323, -5.000000e-01
  %1338 = fmul fast float %1336, %1332
  %1339 = fmul fast float %1337, %1332
  %1340 = fadd fast float %1338, 5.000000e-01
  %1341 = fadd fast float %1339, 5.000000e-01
  %1342 = fmul fast float %1340, 2.000000e+00
  %1343 = fadd fast float %1342, -1.000000e+00
  %1344 = fmul fast float %1341, 2.000000e+00
  %1345 = fadd fast float %1344, -1.000000e+00
  %1346 = fadd fast float %1343, %1345
  %1347 = fmul fast float %1346, 5.000000e-01
  %1348 = fsub fast float %1343, %1345
  %1349 = fmul fast float %1348, 5.000000e-01
  %1350 = call float @dx.op.unary.f32(i32 6, float %1347)  ; FAbs(value)
  %1351 = fsub fast float 1.000000e+00, %1350
  %1352 = call float @dx.op.unary.f32(i32 6, float %1349)  ; FAbs(value)
  %1353 = fsub fast float %1351, %1352
  %1354 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1349, float %1353, float %1347, float %1349, float %1353)  ; Dot3(ax,ay,az,bx,by,bz)
  %1355 = call float @dx.op.unary.f32(i32 25, float %1354)  ; Rsqrt(value)
  %1356 = fmul fast float %1347, %1355
  %1357 = fmul fast float %1349, %1355
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = and i32 %1359, 67108864
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1377, label %1362

; <label>:1362                                    ; preds = %1312
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = and i32 %1364, 65535
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 65535
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = lshr i32 %1364, 16
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = fsub fast float %1335, %1372
  %1374 = fmul fast float %1373, %1366
  %1375 = fadd fast float %1374, %1370
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  br label %1377

; <label>:1377                                    ; preds = %1362, %1312
  %1378 = phi float [ %1376, %1362 ], [ %1335, %1312 ]
  %1379 = call float @dx.op.dot2.f32(i32 54, float %1356, float %1357, float %52, float %53)  ; Dot2(ax,ay,bx,by)
  %1380 = call float @dx.op.dot2.f32(i32 54, float %1356, float %1357, float %54, float %55)  ; Dot2(ax,ay,bx,by)
  br label %1381

; <label>:1381                                    ; preds = %1377, %1291
  %1382 = phi float [ %1378, %1377 ], [ 0x3FD6666660000000, %1291 ]
  %1383 = phi float [ %1379, %1377 ], [ 0.000000e+00, %1291 ]
  %1384 = phi float [ %1380, %1377 ], [ 0.000000e+00, %1291 ]
  %1385 = phi float [ %1322, %1377 ], [ 1.000000e+00, %1291 ]
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = lshr i32 %1387, 22
  %1389 = shl nuw nsw i32 %1388, 5
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 64
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1427, label %1395

; <label>:1395                                    ; preds = %1381
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 131072
  %1403 = icmp eq i32 %1402, 0
  %1404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1399, %dx.types.Handle %80, float %906, float %907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.ResRet.f32 %1404, 2
  %1408 = fmul fast float %1405, %235
  %1409 = fmul fast float %1406, %238
  %1410 = fmul fast float %1407, %241
  br i1 %1403, label %1417, label %1411

; <label>:1411                                    ; preds = %1395
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = fmul fast float %1413, %1408
  %1415 = fmul fast float %1413, %1409
  %1416 = fmul fast float %1413, %1410
  br label %1417

; <label>:1417                                    ; preds = %1411, %1395
  %1418 = phi float [ %1414, %1411 ], [ %1408, %1395 ]
  %1419 = phi float [ %1415, %1411 ], [ %1409, %1395 ]
  %1420 = phi float [ %1416, %1411 ], [ %1410, %1395 ]
  %1421 = fmul fast float %1418, %1390
  %1422 = select i1 %202, float %1421, float %1418
  %1423 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1419, float %1420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1424 = select i1 %202, float 0.000000e+00, float %1418
  %1425 = select i1 %202, float %1423, float %1419
  %1426 = select i1 %202, float 0.000000e+00, float %1420
  br label %1427

; <label>:1427                                    ; preds = %1417, %1381
  %1428 = phi float [ %1424, %1417 ], [ 0.000000e+00, %1381 ]
  %1429 = phi float [ %1425, %1417 ], [ 0.000000e+00, %1381 ]
  %1430 = phi float [ %1426, %1417 ], [ 0.000000e+00, %1381 ]
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = lshr i32 %1432, 8
  %1436 = and i32 %1435, 255
  %1437 = uitofp i32 %1436 to float
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1305, float %1306, float %1307, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = fmul fast float %1437, %1438
  %1440 = fadd fast float %1439, %1434
  %1441 = fmul fast float %1440, 0x3F70101020000000
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  br i1 %813, label %1443, label %1451

; <label>:1443                                    ; preds = %1427
  %1444 = fsub fast float 1.000000e+00, %1091
  %1445 = fmul fast float %1444, %805
  %1446 = fmul fast float %1444, %806
  %1447 = fmul fast float %1444, %807
  %1448 = fmul fast float %1444, %802
  %1449 = fmul fast float %1444, %803
  %1450 = fmul fast float %1444, %804
  br label %1451

; <label>:1451                                    ; preds = %1443, %1427
  %1452 = phi float [ %1448, %1443 ], [ %802, %1427 ]
  %1453 = phi float [ %1449, %1443 ], [ %803, %1427 ]
  %1454 = phi float [ %1450, %1443 ], [ %804, %1427 ]
  %1455 = phi float [ %1445, %1443 ], [ %805, %1427 ]
  %1456 = phi float [ %1446, %1443 ], [ %806, %1427 ]
  %1457 = phi float [ %1447, %1443 ], [ %807, %1427 ]
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 3
  %1461 = icmp eq i32 %1460, 3
  br i1 %1461, label %1540, label %1462

; <label>:1462                                    ; preds = %1451
  %1463 = and i32 %1459, 16
  %1464 = icmp ne i32 %1463, 0
  %1465 = select i1 %1464, float %1091, float 0.000000e+00
  %1466 = icmp eq i32 %1460, 0
  br i1 %1466, label %1467, label %1495

; <label>:1467                                    ; preds = %1462
  %1468 = and i32 %1459, 64
  %1469 = icmp ne i32 %1468, 0
  %1470 = select i1 %1469, float %1091, float 0.000000e+00
  %1471 = fsub fast float %1305, %1455
  %1472 = fsub fast float %1306, %1456
  %1473 = fsub fast float %1307, %1457
  %1474 = fmul fast float %1465, %1471
  %1475 = fmul fast float %1465, %1472
  %1476 = fmul fast float %1465, %1473
  %1477 = fadd fast float %1474, %1455
  %1478 = fadd fast float %1475, %1456
  %1479 = fadd fast float %1476, %1457
  %1480 = fsub fast float %1292, %808
  %1481 = fmul fast float %1465, %1480
  %1482 = fadd fast float %1481, %808
  %1483 = fsub fast float %1428, %1452
  %1484 = fsub fast float %1429, %1453
  %1485 = fsub fast float %1430, %1454
  %1486 = fmul fast float %1470, %1483
  %1487 = fmul fast float %1470, %1484
  %1488 = fmul fast float %1470, %1485
  %1489 = fadd fast float %1486, %1452
  %1490 = fadd fast float %1487, %1453
  %1491 = fadd fast float %1488, %1454
  %1492 = fsub fast float %1442, %812
  %1493 = fmul fast float %1465, %1492
  %1494 = fadd fast float %1493, %812
  br label %1540

; <label>:1495                                    ; preds = %1462
  %1496 = icmp eq i32 %1460, 1
  br i1 %1496, label %1497, label %1510

; <label>:1497                                    ; preds = %1495
  %1498 = fadd fast float %1305, -1.000000e+00
  %1499 = fadd fast float %1306, -1.000000e+00
  %1500 = fadd fast float %1307, -1.000000e+00
  %1501 = fmul fast float %1465, %1498
  %1502 = fmul fast float %1465, %1499
  %1503 = fmul fast float %1465, %1500
  %1504 = fadd fast float %1501, 1.000000e+00
  %1505 = fadd fast float %1502, 1.000000e+00
  %1506 = fadd fast float %1503, 1.000000e+00
  %1507 = fmul fast float %1504, %1455
  %1508 = fmul fast float %1505, %1456
  %1509 = fmul fast float %1506, %1457
  br label %1540

; <label>:1510                                    ; preds = %1495
  %1511 = icmp eq i32 %1460, 2
  br i1 %1511, label %1512, label %1540

; <label>:1512                                    ; preds = %1510
  %1513 = call float @dx.op.unary.f32(i32 24, float %1305)  ; Sqrt(value)
  %1514 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1515 = call float @dx.op.unary.f32(i32 24, float %1307)  ; Sqrt(value)
  %1516 = fadd fast float %1513, -5.000000e-01
  %1517 = fadd fast float %1514, -5.000000e-01
  %1518 = fadd fast float %1515, -5.000000e-01
  %1519 = fmul fast float %1516, %1465
  %1520 = fmul fast float %1517, %1465
  %1521 = fmul fast float %1518, %1465
  %1522 = fadd fast float %1519, 5.000000e-01
  %1523 = fadd fast float %1520, 5.000000e-01
  %1524 = fadd fast float %1521, 5.000000e-01
  %1525 = fmul fast float %1522, 2.000000e+00
  %1526 = fsub fast float 1.000000e+00, %1525
  %1527 = fmul fast float %1526, %1455
  %1528 = fadd fast float %1527, %1525
  %1529 = fmul fast float %1528, %1455
  %1530 = fmul fast float %1523, 2.000000e+00
  %1531 = fsub fast float 1.000000e+00, %1530
  %1532 = fmul fast float %1531, %1456
  %1533 = fadd fast float %1532, %1530
  %1534 = fmul fast float %1533, %1456
  %1535 = fmul fast float %1524, 2.000000e+00
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1536, %1457
  %1538 = fadd fast float %1537, %1535
  %1539 = fmul fast float %1538, %1457
  br label %1540

; <label>:1540                                    ; preds = %1512, %1510, %1497, %1467, %1451
  %1541 = phi float [ %1452, %1451 ], [ %1452, %1512 ], [ %1452, %1510 ], [ %1452, %1497 ], [ %1489, %1467 ]
  %1542 = phi float [ %1453, %1451 ], [ %1453, %1512 ], [ %1453, %1510 ], [ %1453, %1497 ], [ %1490, %1467 ]
  %1543 = phi float [ %1454, %1451 ], [ %1454, %1512 ], [ %1454, %1510 ], [ %1454, %1497 ], [ %1491, %1467 ]
  %1544 = phi float [ %1455, %1451 ], [ %1529, %1512 ], [ %1455, %1510 ], [ %1507, %1497 ], [ %1477, %1467 ]
  %1545 = phi float [ %1456, %1451 ], [ %1534, %1512 ], [ %1456, %1510 ], [ %1508, %1497 ], [ %1478, %1467 ]
  %1546 = phi float [ %1457, %1451 ], [ %1539, %1512 ], [ %1457, %1510 ], [ %1509, %1497 ], [ %1479, %1467 ]
  %1547 = phi float [ %808, %1451 ], [ %808, %1512 ], [ %808, %1510 ], [ %808, %1497 ], [ %1482, %1467 ]
  %1548 = phi float [ %812, %1451 ], [ %812, %1512 ], [ %812, %1510 ], [ %812, %1497 ], [ %1494, %1467 ]
  %1549 = and i32 %1459, 12
  %1550 = icmp eq i32 %1549, 12
  br i1 %1550, label %1623, label %1551

; <label>:1551                                    ; preds = %1540
  %1552 = and i32 %1459, 2097184
  %1553 = icmp eq i32 %1552, 2097184
  %1554 = select i1 %1553, float %1091, float 0.000000e+00
  %1555 = and i32 %1459, 4194336
  %1556 = icmp eq i32 %1555, 4194336
  %1557 = select i1 %1556, float %1091, float 0.000000e+00
  %1558 = and i32 %1459, 8388640
  %1559 = icmp eq i32 %1558, 8388640
  %1560 = select i1 %1559, float %1091, float 0.000000e+00
  %1561 = icmp eq i32 %1549, 0
  br i1 %1561, label %1562, label %1575

; <label>:1562                                    ; preds = %1551
  %1563 = fsub fast float %1383, %800
  %1564 = fsub fast float %1384, %801
  %1565 = fmul fast float %1554, %1563
  %1566 = fmul fast float %1554, %1564
  %1567 = fadd fast float %1565, %800
  %1568 = fadd fast float %1566, %801
  %1569 = fsub fast float %1385, %811
  %1570 = fmul fast float %1557, %1569
  %1571 = fadd fast float %1570, %811
  %1572 = fsub fast float %1382, %810
  %1573 = fmul fast float %1560, %1572
  %1574 = fadd fast float %1573, %810
  br label %1623

; <label>:1575                                    ; preds = %1551
  %1576 = icmp eq i32 %1549, 4
  br i1 %1576, label %1577, label %1609

; <label>:1577                                    ; preds = %1575
  %1578 = fmul fast float %1554, %1383
  %1579 = fmul fast float %1554, %1384
  %1580 = fadd fast float %1578, %800
  %1581 = fadd fast float %1579, %801
  %1582 = call float @dx.op.binary.f32(i32 36, float %811, float %1385)  ; FMin(a,b)
  %1583 = fsub fast float %1582, %811
  %1584 = fmul fast float %1583, %1557
  %1585 = fadd fast float %1584, %811
  %1586 = fadd fast float %1382, %810
  %1587 = fmul fast float %1586, 0x3FF337FAE0000000
  %1588 = fmul fast float %810, %810
  %1589 = fmul fast float %1382, %1382
  %1590 = fadd fast float %1589, %1588
  %1591 = fmul fast float %1590, 0x3FE5152B00000000
  %1592 = fmul fast float %810, 0xBFCC1F85E0000000
  %1593 = fmul fast float %1592, %1382
  %1594 = fadd fast float %1593, 0xBFE1363700000000
  %1595 = fadd fast float %1594, %1587
  %1596 = fsub fast float %1595, %1591
  %1597 = fmul fast float %1586, 0x3FBA6F0D00000000
  %1598 = fmul fast float %1590, 0x3FD0432880000000
  %1599 = fmul fast float %810, 0xBFEF110800000000
  %1600 = fmul fast float %1599, %1382
  %1601 = fadd fast float %1600, 1.000000e+00
  %1602 = fsub fast float %1601, %1597
  %1603 = fadd fast float %1602, %1598
  %1604 = fdiv fast float %1596, %1603
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fsub fast float %1605, %810
  %1607 = fmul fast float %1606, %1560
  %1608 = fadd fast float %1607, %810
  br label %1623

; <label>:1609                                    ; preds = %1575
  %1610 = icmp eq i32 %1549, 8
  br i1 %1610, label %1611, label %1623

; <label>:1611                                    ; preds = %1609
  %1612 = fmul fast float %1554, %1383
  %1613 = fmul fast float %1554, %1384
  %1614 = fadd fast float %1612, %800
  %1615 = fadd fast float %1613, %801
  %1616 = call float @dx.op.binary.f32(i32 36, float %811, float %1385)  ; FMin(a,b)
  %1617 = fsub fast float %1616, %811
  %1618 = fmul fast float %1617, %1557
  %1619 = fadd fast float %1618, %811
  %1620 = fsub fast float %1382, %810
  %1621 = fmul fast float %1560, %1620
  %1622 = fadd fast float %1621, %810
  br label %1623

; <label>:1623                                    ; preds = %1611, %1609, %1577, %1562, %1540, %1090, %799
  %1624 = phi float [ %800, %1540 ], [ %800, %1090 ], [ %800, %799 ], [ %1567, %1562 ], [ %1580, %1577 ], [ %800, %1609 ], [ %1614, %1611 ]
  %1625 = phi float [ %801, %1540 ], [ %801, %1090 ], [ %801, %799 ], [ %1568, %1562 ], [ %1581, %1577 ], [ %801, %1609 ], [ %1615, %1611 ]
  %1626 = phi float [ %1541, %1540 ], [ %802, %1090 ], [ %802, %799 ], [ %1541, %1562 ], [ %1541, %1577 ], [ %1541, %1609 ], [ %1541, %1611 ]
  %1627 = phi float [ %1542, %1540 ], [ %803, %1090 ], [ %803, %799 ], [ %1542, %1562 ], [ %1542, %1577 ], [ %1542, %1609 ], [ %1542, %1611 ]
  %1628 = phi float [ %1543, %1540 ], [ %804, %1090 ], [ %804, %799 ], [ %1543, %1562 ], [ %1543, %1577 ], [ %1543, %1609 ], [ %1543, %1611 ]
  %1629 = phi float [ %1544, %1540 ], [ %805, %1090 ], [ %805, %799 ], [ %1544, %1562 ], [ %1544, %1577 ], [ %1544, %1609 ], [ %1544, %1611 ]
  %1630 = phi float [ %1545, %1540 ], [ %806, %1090 ], [ %806, %799 ], [ %1545, %1562 ], [ %1545, %1577 ], [ %1545, %1609 ], [ %1545, %1611 ]
  %1631 = phi float [ %1546, %1540 ], [ %807, %1090 ], [ %807, %799 ], [ %1546, %1562 ], [ %1546, %1577 ], [ %1546, %1609 ], [ %1546, %1611 ]
  %1632 = phi float [ %1547, %1540 ], [ %808, %1090 ], [ %808, %799 ], [ %1547, %1562 ], [ %1547, %1577 ], [ %1547, %1609 ], [ %1547, %1611 ]
  %1633 = phi float [ %810, %1540 ], [ %810, %1090 ], [ %810, %799 ], [ %1574, %1562 ], [ %1608, %1577 ], [ %810, %1609 ], [ %1622, %1611 ]
  %1634 = phi float [ %811, %1540 ], [ %811, %1090 ], [ %811, %799 ], [ %1571, %1562 ], [ %1585, %1577 ], [ %811, %1609 ], [ %1619, %1611 ]
  %1635 = phi float [ %1548, %1540 ], [ %812, %1090 ], [ %812, %799 ], [ %1548, %1562 ], [ %1548, %1577 ], [ %1548, %1609 ], [ %1548, %1611 ]
  %1636 = icmp ult i32 %349, 3
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = or i32 %1640, %1638
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %2446, label %1643

; <label>:1643                                    ; preds = %1623
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = lshr i32 %1645, 16
  %1647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1646)  ; LegacyF16ToF32(value)
  %1648 = fmul fast float %1647, 0x3F50624DE0000000
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = lshr i32 %1650, 16
  %1652 = and i32 %1651, 255
  %1653 = lshr i32 %1650, 24
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 65535
  %1657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1656)  ; LegacyF16ToF32(value)
  %1658 = lshr i32 %1655, 16
  %1659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1658)  ; LegacyF16ToF32(value)
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = lshr i32 %1661, 22
  %1663 = shl nuw nsw i32 %1662, 5
  %1664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1663)  ; LegacyF16ToF32(value)
  %1665 = shl i32 %1661, 4
  %1666 = and i32 %1665, 32752
  %1667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1666)  ; LegacyF16ToF32(value)
  %1668 = lshr i32 %1661, 7
  %1669 = and i32 %1668, 32752
  %1670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1669)  ; LegacyF16ToF32(value)
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 3
  %1673 = fmul fast float %1672, 1.000000e+03
  %1674 = fmul fast float %305, %1673
  %1675 = call float @dx.op.unary.f32(i32 22, float %1674)  ; Frc(value)
  %1676 = fadd fast float %1675, %296
  %1677 = fmul fast float %306, %1673
  %1678 = call float @dx.op.unary.f32(i32 22, float %1677)  ; Frc(value)
  %1679 = fadd fast float %1678, %298
  %1680 = fmul fast float %1648, %1673
  %1681 = call float @dx.op.unary.f32(i32 22, float %1680)  ; Frc(value)
  %1682 = fmul fast float %1681, 0x401921FB60000000
  %1683 = fadd fast float %1682, %1664
  %1684 = call float @dx.op.unary.f32(i32 13, float %1683)  ; Sin(value)
  %1685 = call float @dx.op.unary.f32(i32 12, float %1683)  ; Cos(value)
  %1686 = fsub fast float -0.000000e+00, %1684
  %1687 = fadd fast float %66, -5.000000e-01
  %1688 = fadd fast float %67, -5.000000e-01
  %1689 = fmul fast float %1657, %1687
  %1690 = fmul fast float %1659, %1688
  %1691 = fadd fast float %1689, 5.000000e-01
  %1692 = fadd fast float %1690, 5.000000e-01
  %1693 = fmul fast float %1667, %1691
  %1694 = fmul fast float %1670, %1692
  %1695 = fmul fast float %1685, %1693
  %1696 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1694, float %1695)  ; FMad(a,b,c)
  %1697 = fmul fast float %1684, %1693
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1694, float %1697)  ; FMad(a,b,c)
  %1699 = fadd fast float %1676, %1696
  %1700 = fadd fast float %1679, %1698
  %1701 = icmp ugt i32 %1652, 1
  %1702 = icmp ugt i32 %1650, 33554431
  %1703 = or i1 %1702, %1701
  br i1 %1703, label %1704, label %1728

; <label>:1704                                    ; preds = %1643
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = lshr i32 %1706, 16
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = fmul fast float %1672, %1708
  %1710 = call float @dx.op.unary.f32(i32 22, float %1709)  ; Frc(value)
  %1711 = mul nuw nsw i32 %1652, %1653
  %1712 = uitofp i32 %1711 to float
  %1713 = fmul fast float %1710, %1712
  %1714 = call float @dx.op.unary.f32(i32 27, float %1713)  ; Round_ni(value)
  %1715 = fptoui float %1714 to i32
  %1716 = urem i32 %1715, %1652
  %1717 = udiv i32 %1715, %1653
  %1718 = call float @dx.op.unary.f32(i32 22, float %1699)  ; Frc(value)
  %1719 = call float @dx.op.unary.f32(i32 22, float %1700)  ; Frc(value)
  %1720 = uitofp i32 %1716 to float
  %1721 = uitofp i32 %1717 to float
  %1722 = fadd fast float %1718, %1720
  %1723 = fadd fast float %1719, %1721
  %1724 = uitofp i32 %1652 to float
  %1725 = uitofp i32 %1653 to float
  %1726 = fdiv fast float %1722, %1724
  %1727 = fdiv fast float %1723, %1725
  br label %1728

; <label>:1728                                    ; preds = %1704, %1643
  %1729 = phi float [ %1726, %1704 ], [ %1699, %1643 ]
  %1730 = phi float [ %1727, %1704 ], [ %1700, %1643 ]
  %1731 = and i32 %1638, 16777216
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %1842, label %1733

; <label>:1733                                    ; preds = %1728
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.CBufRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.CBufRet.f32 %1734, 2
  %1738 = fadd fast float %1735, %131
  %1739 = fadd fast float %1736, %132
  %1740 = fadd fast float %1737, %133
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1744 = icmp eq i32 %43, 65535
  br i1 %1744, label %1839, label %1745

; <label>:1745                                    ; preds = %1733
  %1746 = lshr i32 %43, 1
  %1747 = shl i32 %1746, 2
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %43, 1
  %1751 = icmp ne i32 %1750, 0
  %1752 = lshr i32 %1749, 16
  %1753 = and i32 %1749, 65535
  %1754 = select i1 %1751, i32 %1752, i32 %1753
  %1755 = icmp eq i32 %1754, 65535
  br i1 %1755, label %1835, label %1756

; <label>:1756                                    ; preds = %1745
  %1757 = mul nuw nsw i32 %1754, 40
  %1758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.ResRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.ResRet.f32 %1758, 2
  %1762 = add nuw nsw i32 %1757, 12
  %1763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = add nuw nsw i32 %1757, 24
  %1768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.ResRet.f32 %1768, 2
  %1772 = add nuw nsw i32 %1757, 36
  %1773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = fsub fast float %1738, %1759
  %1776 = fsub fast float %1739, %1760
  %1777 = fsub fast float %1740, %1761
  %1778 = fmul fast float %1774, %1775
  %1779 = fmul fast float %1774, %1776
  %1780 = fmul fast float %1774, %1777
  %1781 = call float @dx.op.unary.f32(i32 27, float %1778)  ; Round_ni(value)
  %1782 = call float @dx.op.unary.f32(i32 27, float %1779)  ; Round_ni(value)
  %1783 = call float @dx.op.unary.f32(i32 27, float %1780)  ; Round_ni(value)
  %1784 = fadd fast float %1781, 5.000000e-01
  %1785 = fadd fast float %1782, 5.000000e-01
  %1786 = fadd fast float %1783, 5.000000e-01
  %1787 = fmul fast float %1784, %1764
  %1788 = fmul fast float %1785, %1765
  %1789 = fmul fast float %1786, %1766
  %1790 = shl i32 %43, 2
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %1792, 0
  %1794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1795 = call float @dx.op.unary.f32(i32 22, float %1787)  ; Frc(value)
  %1796 = call float @dx.op.unary.f32(i32 22, float %1788)  ; Frc(value)
  %1797 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1794, %dx.types.Handle %40, float %1795, float %1796, float %1797, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.ResRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.ResRet.f32 %1798, 2
  %1802 = fmul fast float %1799, 1.023000e+03
  %1803 = fmul fast float %1800, 1.023000e+03
  %1804 = fmul fast float %1801, 1.023000e+03
  %1805 = fadd fast float %1802, 5.000000e-01
  %1806 = fadd fast float %1803, 5.000000e-01
  %1807 = fadd fast float %1804, 5.000000e-01
  %1808 = call float @dx.op.unary.f32(i32 27, float %1805)  ; Round_ni(value)
  %1809 = call float @dx.op.unary.f32(i32 27, float %1806)  ; Round_ni(value)
  %1810 = call float @dx.op.unary.f32(i32 27, float %1807)  ; Round_ni(value)
  %1811 = fsub fast float %1778, %1781
  %1812 = fsub fast float %1779, %1782
  %1813 = fsub fast float %1780, %1783
  %1814 = fmul fast float %1811, 7.500000e-01
  %1815 = fmul fast float %1812, 7.500000e-01
  %1816 = fmul fast float %1813, 7.500000e-01
  %1817 = fadd fast float %1781, 1.250000e-01
  %1818 = fadd fast float %1817, %1814
  %1819 = fadd fast float %1818, %1808
  %1820 = fadd fast float %1782, 1.250000e-01
  %1821 = fadd fast float %1820, %1815
  %1822 = fadd fast float %1821, %1809
  %1823 = fadd fast float %1783, 1.250000e-01
  %1824 = fadd fast float %1823, %1816
  %1825 = fadd fast float %1824, %1810
  %1826 = fmul fast float %1819, %1769
  %1827 = fmul fast float %1822, %1770
  %1828 = fmul fast float %1825, %1771
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = add i32 %1830, 0
  %1832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1832, %dx.types.Handle %38, float %1826, float %1827, float %1828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  br label %1835

; <label>:1835                                    ; preds = %1756, %1745
  %1836 = phi float [ %1834, %1756 ], [ -1.000000e+00, %1745 ]
  %1837 = fadd fast float %1836, %1743
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  br label %1839

; <label>:1839                                    ; preds = %1835, %1733
  %1840 = phi float [ %1838, %1835 ], [ %1743, %1733 ]
  %1841 = fmul fast float %1840, %75
  br label %1842

; <label>:1842                                    ; preds = %1839, %1728
  %1843 = phi float [ %1841, %1839 ], [ %75, %1728 ]
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 256
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1892, label %1848

; <label>:1848                                    ; preds = %1842
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = add i32 %1850, 0
  %1852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1851, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1853 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1852, %dx.types.Handle %81, float %1729, float %1730, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = shl i32 %1856, 4
  %1858 = and i32 %1857, 32752
  %1859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1858)  ; LegacyF16ToF32(value)
  %1860 = lshr i32 %1856, 7
  %1861 = and i32 %1860, 32752
  %1862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1861)  ; LegacyF16ToF32(value)
  %1863 = fsub fast float 1.000000e+00, %1843
  %1864 = call float @dx.op.binary.f32(i32 35, float %1863, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1865 = bitcast float %1843 to i32
  %1866 = sitofp i32 %1865 to float
  %1867 = fadd fast float %1866, 0xC1CFBF8940000000
  %1868 = fmul fast float %1862, %1867
  %1869 = fadd fast float %1868, 0x41CFBF8940000000
  %1870 = fptosi float %1869 to i32
  %1871 = bitcast i32 %1870 to float
  %1872 = bitcast float %1864 to i32
  %1873 = sitofp i32 %1872 to float
  %1874 = fadd fast float %1873, 0xC1CFBF8940000000
  %1875 = fmul fast float %1874, %1862
  %1876 = fadd fast float %1875, 0x41CFBF8940000000
  %1877 = fptosi float %1876 to i32
  %1878 = bitcast i32 %1877 to float
  %1879 = fmul fast float %1871, %1859
  %1880 = fmul fast float %1878, %1859
  %1881 = fsub fast float %1864, %1879
  %1882 = fadd fast float %1880, %1864
  %1883 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1884 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1885 = fsub fast float %1854, %1883
  %1886 = fsub fast float %1884, %1883
  %1887 = bitcast float %1886 to i32
  %1888 = sub nsw i32 2129859010, %1887
  %1889 = bitcast i32 %1888 to float
  %1890 = fmul fast float %1889, %1885
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  br label %1892

; <label>:1892                                    ; preds = %1848, %1842
  %1893 = phi float [ %1891, %1848 ], [ %1843, %1842 ]
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = and i32 %1895, 128
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1913, label %1898

; <label>:1898                                    ; preds = %1892
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = add i32 %1900, 0
  %1902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1902, %dx.types.Handle %81, float %1729, float %1730, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 524288
  %1908 = icmp ne i32 %1907, 0
  %1909 = fcmp fast ogt float %1904, 0x3FE0101020000000
  %1910 = select i1 %1909, float 1.000000e+00, float 0.000000e+00
  %1911 = select i1 %1908, float %1910, float %1904
  %1912 = fmul fast float %1911, %1893
  br label %1913

; <label>:1913                                    ; preds = %1898, %1892
  %1914 = phi float [ %1912, %1898 ], [ %1893, %1892 ]
  %1915 = fcmp fast ult float %1914, 0x3F70101020000000
  br i1 %1915, label %2446, label %1916

; <label>:1916                                    ; preds = %1913
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = and i32 %1918, 16
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %2114, label %1921

; <label>:1921                                    ; preds = %1916
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = add i32 %1925, 0
  %1927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1927, %dx.types.Handle %80, float %1729, float %1730, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = extractvalue %dx.types.ResRet.f32 %1928, 1
  %1931 = extractvalue %dx.types.ResRet.f32 %1928, 2
  %1932 = extractvalue %dx.types.ResRet.f32 %1928, 3
  %1933 = and i32 %1923, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = lshr i32 %1923, 8
  %1936 = and i32 %1935, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1932, %1934
  %1939 = fadd fast float %1938, %1937
  %1940 = fmul fast float %1939, 0x3F70101000000000
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = and i32 %1942, 512
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %1952, label %1945

; <label>:1945                                    ; preds = %1921
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = add i32 %1947, 0
  %1949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1950 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1949, %dx.types.Handle %81, float %1729, float %1730, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  br label %1952

; <label>:1952                                    ; preds = %1945, %1921
  %1953 = phi float [ %1951, %1945 ], [ 1.000000e+00, %1921 ]
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = and i32 %1955, 33554432
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2061, label %1958

; <label>:1958                                    ; preds = %1952
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 65535
  %1962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1961)  ; LegacyF16ToF32(value)
  %1963 = lshr i32 %1960, 16
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 65535
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = lshr i32 %1970, 24
  %1972 = uitofp i32 %1971 to float
  %1973 = fmul fast float %1972, 0x3F70101020000000
  %1974 = and i32 %1970, 255
  %1975 = uitofp i32 %1974 to float
  %1976 = fmul fast float %1975, 0x3F70101020000000
  %1977 = lshr i32 %1970, 8
  %1978 = and i32 %1977, 255
  %1979 = uitofp i32 %1978 to float
  %1980 = fmul fast float %1979, 0x3F70101020000000
  %1981 = lshr i32 %1970, 16
  %1982 = and i32 %1981, 255
  %1983 = uitofp i32 %1982 to float
  %1984 = fmul fast float %1983, 0x3F70101020000000
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = lshr i32 %1986, 24
  %1988 = uitofp i32 %1987 to float
  %1989 = fmul fast float %1988, 0x3F70101020000000
  %1990 = and i32 %1986, 255
  %1991 = uitofp i32 %1990 to float
  %1992 = fmul fast float %1991, 0x3F70101020000000
  %1993 = lshr i32 %1986, 8
  %1994 = and i32 %1993, 255
  %1995 = uitofp i32 %1994 to float
  %1996 = fmul fast float %1995, 0x3F70101020000000
  %1997 = lshr i32 %1986, 16
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = fmul fast float %1999, 0x3F70101020000000
  %2001 = bitcast float %1929 to i32
  %2002 = ashr i32 %2001, 1
  %2003 = sub nsw i32 1597463174, %2002
  %2004 = bitcast i32 %2003 to float
  %2005 = fmul fast float %1929, 5.000000e-01
  %2006 = fmul fast float %2004, %2004
  %2007 = fmul fast float %2006, %2005
  %2008 = fsub fast float 1.500000e+00, %2007
  %2009 = fmul fast float %2004, %1929
  %2010 = fmul fast float %2009, %2008
  %2011 = bitcast float %1930 to i32
  %2012 = ashr i32 %2011, 1
  %2013 = sub nsw i32 1597463174, %2012
  %2014 = bitcast i32 %2013 to float
  %2015 = fmul fast float %1930, 5.000000e-01
  %2016 = fmul fast float %2014, %2014
  %2017 = fmul fast float %2016, %2015
  %2018 = fsub fast float 1.500000e+00, %2017
  %2019 = fmul fast float %2014, %1930
  %2020 = fmul fast float %2019, %2018
  %2021 = bitcast float %1931 to i32
  %2022 = ashr i32 %2021, 1
  %2023 = sub nsw i32 1597463174, %2022
  %2024 = bitcast i32 %2023 to float
  %2025 = fmul fast float %1931, 5.000000e-01
  %2026 = fmul fast float %2024, %2024
  %2027 = fmul fast float %2026, %2025
  %2028 = fsub fast float 1.500000e+00, %2027
  %2029 = fmul fast float %2024, %1931
  %2030 = fmul fast float %2029, %2028
  %2031 = fsub fast float %2010, %1992
  %2032 = fsub fast float %2020, %1996
  %2033 = fsub fast float %2030, %2000
  %2034 = fmul fast float %2031, %1962
  %2035 = fmul fast float %2032, %1964
  %2036 = fmul fast float %2033, %1968
  %2037 = fadd fast float %2034, %1976
  %2038 = fadd fast float %2035, %1980
  %2039 = fadd fast float %2036, %1984
  %2040 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2041 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2042 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2043 = fmul fast float %2040, %2040
  %2044 = fmul fast float %2041, %2041
  %2045 = fmul fast float %2042, %2042
  %2046 = fsub fast float %2043, %1929
  %2047 = fsub fast float %2044, %1930
  %2048 = fsub fast float %2045, %1931
  %2049 = fmul fast float %2046, %1953
  %2050 = fmul fast float %2047, %1953
  %2051 = fmul fast float %2048, %1953
  %2052 = fadd fast float %2049, %1929
  %2053 = fadd fast float %2050, %1930
  %2054 = fadd fast float %2051, %1931
  %2055 = fadd fast float %1973, %1940
  %2056 = fsub fast float %2055, %1989
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fsub fast float %2057, %1940
  %2059 = fmul fast float %2058, %1953
  %2060 = fadd fast float %2059, %1940
  br label %2114

; <label>:2061                                    ; preds = %1952
  %2062 = and i32 %1955, 134217728
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2098, label %2064

; <label>:2064                                    ; preds = %2061
  %2065 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %2066 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2067 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %2068 = fadd fast float %2065, -5.000000e-01
  %2069 = fadd fast float %2066, -5.000000e-01
  %2070 = fadd fast float %2067, -5.000000e-01
  %2071 = fmul fast float %2068, %1953
  %2072 = fmul fast float %2069, %1953
  %2073 = fmul fast float %2070, %1953
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = fadd fast float %2072, 5.000000e-01
  %2076 = fadd fast float %2073, 5.000000e-01
  %2077 = call float @dx.op.unary.f32(i32 24, float %1929)  ; Sqrt(value)
  %2078 = call float @dx.op.unary.f32(i32 24, float %1930)  ; Sqrt(value)
  %2079 = call float @dx.op.unary.f32(i32 24, float %1931)  ; Sqrt(value)
  %2080 = fmul fast float %2074, 2.000000e+00
  %2081 = fsub fast float 1.000000e+00, %2080
  %2082 = fmul fast float %2081, %2077
  %2083 = fadd fast float %2082, %2080
  %2084 = fmul fast float %2083, %2077
  %2085 = fmul fast float %2075, 2.000000e+00
  %2086 = fsub fast float 1.000000e+00, %2085
  %2087 = fmul fast float %2086, %2078
  %2088 = fadd fast float %2087, %2085
  %2089 = fmul fast float %2088, %2078
  %2090 = fmul fast float %2076, 2.000000e+00
  %2091 = fsub fast float 1.000000e+00, %2090
  %2092 = fmul fast float %2091, %2079
  %2093 = fadd fast float %2092, %2090
  %2094 = fmul fast float %2093, %2079
  %2095 = fmul fast float %2084, %2084
  %2096 = fmul fast float %2089, %2089
  %2097 = fmul fast float %2094, %2094
  br label %2114

; <label>:2098                                    ; preds = %2061
  %2099 = fmul fast float %284, %284
  %2100 = fmul fast float %288, %288
  %2101 = fmul fast float %292, %292
  %2102 = fadd fast float %2099, -1.000000e+00
  %2103 = fadd fast float %2100, -1.000000e+00
  %2104 = fadd fast float %2101, -1.000000e+00
  %2105 = fmul fast float %1953, %2102
  %2106 = fmul fast float %1953, %2103
  %2107 = fmul fast float %1953, %2104
  %2108 = fadd fast float %2105, 1.000000e+00
  %2109 = fadd fast float %2106, 1.000000e+00
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fmul fast float %2108, %1929
  %2112 = fmul fast float %2109, %1930
  %2113 = fmul fast float %2110, %1931
  br label %2114

; <label>:2114                                    ; preds = %2098, %2064, %1958, %1916
  %2115 = phi float [ %2060, %1958 ], [ %1940, %2064 ], [ %1940, %2098 ], [ 0x3FA23C0BE0000000, %1916 ]
  %2116 = phi float [ %2052, %1958 ], [ %2095, %2064 ], [ %2111, %2098 ], [ 1.000000e+00, %1916 ]
  %2117 = phi float [ %2053, %1958 ], [ %2096, %2064 ], [ %2112, %2098 ], [ 1.000000e+00, %1916 ]
  %2118 = phi float [ %2054, %1958 ], [ %2097, %2064 ], [ %2113, %2098 ], [ 1.000000e+00, %1916 ]
  %2119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.i32 %2119, 1
  %2121 = and i32 %2120, 1
  %2122 = icmp ne i32 %2121, 0
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = and i32 %2124, 32
  %2126 = icmp ne i32 %2125, 0
  %2127 = and i1 %2122, %2126
  %2128 = select i1 %2127, float 1.000000e+00, float %2116
  %2129 = select i1 %2127, float 0x3FD3333340000000, float %2117
  %2130 = select i1 %2127, float 0x3FD3333340000000, float %2118
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 32
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2204, label %2135

; <label>:2135                                    ; preds = %2114
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = add i32 %2139, 0
  %2141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2141, %dx.types.Handle %80, float %1729, float %1730, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.ResRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.ResRet.f32 %2142, 2
  %2146 = extractvalue %dx.types.ResRet.f32 %2142, 3
  %2147 = and i32 %2137, 255
  %2148 = uitofp i32 %2147 to float
  %2149 = lshr i32 %2137, 8
  %2150 = and i32 %2149, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = lshr i32 %2137, 16
  %2153 = and i32 %2152, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2154, 0x3F70101000000000
  %2156 = fmul fast float %2143, %2148
  %2157 = fadd fast float %2156, %2151
  %2158 = fmul fast float %2157, 0x3F70101000000000
  %2159 = fadd fast float %2144, -5.000000e-01
  %2160 = fadd fast float %2146, -5.000000e-01
  %2161 = fmul fast float %2159, %2155
  %2162 = fmul fast float %2160, %2155
  %2163 = fadd fast float %2161, 5.000000e-01
  %2164 = fadd fast float %2162, 5.000000e-01
  %2165 = fmul fast float %2163, 2.000000e+00
  %2166 = fadd fast float %2165, -1.000000e+00
  %2167 = fmul fast float %2164, 2.000000e+00
  %2168 = fadd fast float %2167, -1.000000e+00
  %2169 = fadd fast float %2166, %2168
  %2170 = fmul fast float %2169, 5.000000e-01
  %2171 = fsub fast float %2166, %2168
  %2172 = fmul fast float %2171, 5.000000e-01
  %2173 = call float @dx.op.unary.f32(i32 6, float %2170)  ; FAbs(value)
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = call float @dx.op.unary.f32(i32 6, float %2172)  ; FAbs(value)
  %2176 = fsub fast float %2174, %2175
  %2177 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2172, float %2176, float %2170, float %2172, float %2176)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = call float @dx.op.unary.f32(i32 25, float %2177)  ; Rsqrt(value)
  %2179 = fmul fast float %2170, %2178
  %2180 = fmul fast float %2172, %2178
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = and i32 %2182, 67108864
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2200, label %2185

; <label>:2185                                    ; preds = %2135
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 65535
  %2189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2188)  ; LegacyF16ToF32(value)
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 65535
  %2193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2192)  ; LegacyF16ToF32(value)
  %2194 = lshr i32 %2187, 16
  %2195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2194)  ; LegacyF16ToF32(value)
  %2196 = fsub fast float %2158, %2195
  %2197 = fmul fast float %2196, %2189
  %2198 = fadd fast float %2197, %2193
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  br label %2200

; <label>:2200                                    ; preds = %2185, %2135
  %2201 = phi float [ %2199, %2185 ], [ %2158, %2135 ]
  %2202 = call float @dx.op.dot2.f32(i32 54, float %2179, float %2180, float %48, float %49)  ; Dot2(ax,ay,bx,by)
  %2203 = call float @dx.op.dot2.f32(i32 54, float %2179, float %2180, float %50, float %51)  ; Dot2(ax,ay,bx,by)
  br label %2204

; <label>:2204                                    ; preds = %2200, %2114
  %2205 = phi float [ %2201, %2200 ], [ 0x3FD6666660000000, %2114 ]
  %2206 = phi float [ %2202, %2200 ], [ 0.000000e+00, %2114 ]
  %2207 = phi float [ %2203, %2200 ], [ 0.000000e+00, %2114 ]
  %2208 = phi float [ %2145, %2200 ], [ 1.000000e+00, %2114 ]
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = lshr i32 %2210, 22
  %2212 = shl nuw nsw i32 %2211, 5
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = and i32 %2215, 64
  %2217 = icmp eq i32 %2216, 0
  br i1 %2217, label %2250, label %2218

; <label>:2218                                    ; preds = %2204
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = add i32 %2220, 0
  %2222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 131072
  %2226 = icmp eq i32 %2225, 0
  %2227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2222, %dx.types.Handle %80, float %1729, float %1730, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = extractvalue %dx.types.ResRet.f32 %2227, 1
  %2230 = extractvalue %dx.types.ResRet.f32 %2227, 2
  %2231 = fmul fast float %2228, %273
  %2232 = fmul fast float %2229, %276
  %2233 = fmul fast float %2230, %279
  br i1 %2226, label %2240, label %2234

; <label>:2234                                    ; preds = %2218
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = fmul fast float %2236, %2231
  %2238 = fmul fast float %2236, %2232
  %2239 = fmul fast float %2236, %2233
  br label %2240

; <label>:2240                                    ; preds = %2234, %2218
  %2241 = phi float [ %2237, %2234 ], [ %2231, %2218 ]
  %2242 = phi float [ %2238, %2234 ], [ %2232, %2218 ]
  %2243 = phi float [ %2239, %2234 ], [ %2233, %2218 ]
  %2244 = fmul fast float %2241, %2213
  %2245 = select i1 %202, float %2244, float %2241
  %2246 = call float @dx.op.dot3.f32(i32 55, float %2245, float %2242, float %2243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = select i1 %202, float 0.000000e+00, float %2241
  %2248 = select i1 %202, float %2246, float %2242
  %2249 = select i1 %202, float 0.000000e+00, float %2243
  br label %2250

; <label>:2250                                    ; preds = %2240, %2204
  %2251 = phi float [ %2247, %2240 ], [ 0.000000e+00, %2204 ]
  %2252 = phi float [ %2248, %2240 ], [ 0.000000e+00, %2204 ]
  %2253 = phi float [ %2249, %2240 ], [ 0.000000e+00, %2204 ]
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = lshr i32 %2255, 8
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = call float @dx.op.dot3.f32(i32 55, float %2128, float %2129, float %2130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2262 = fmul fast float %2260, %2261
  %2263 = fadd fast float %2262, %2257
  %2264 = fmul fast float %2263, 0x3F70101020000000
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  br i1 %1636, label %2266, label %2274

; <label>:2266                                    ; preds = %2250
  %2267 = fsub fast float 1.000000e+00, %1914
  %2268 = fmul fast float %2267, %1629
  %2269 = fmul fast float %2267, %1630
  %2270 = fmul fast float %2267, %1631
  %2271 = fmul fast float %2267, %1626
  %2272 = fmul fast float %2267, %1627
  %2273 = fmul fast float %2267, %1628
  br label %2274

; <label>:2274                                    ; preds = %2266, %2250
  %2275 = phi float [ %2271, %2266 ], [ %1626, %2250 ]
  %2276 = phi float [ %2272, %2266 ], [ %1627, %2250 ]
  %2277 = phi float [ %2273, %2266 ], [ %1628, %2250 ]
  %2278 = phi float [ %2268, %2266 ], [ %1629, %2250 ]
  %2279 = phi float [ %2269, %2266 ], [ %1630, %2250 ]
  %2280 = phi float [ %2270, %2266 ], [ %1631, %2250 ]
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 3
  %2284 = icmp eq i32 %2283, 3
  br i1 %2284, label %2363, label %2285

; <label>:2285                                    ; preds = %2274
  %2286 = and i32 %2282, 16
  %2287 = icmp ne i32 %2286, 0
  %2288 = select i1 %2287, float %1914, float 0.000000e+00
  %2289 = icmp eq i32 %2283, 0
  br i1 %2289, label %2290, label %2318

; <label>:2290                                    ; preds = %2285
  %2291 = and i32 %2282, 64
  %2292 = icmp ne i32 %2291, 0
  %2293 = select i1 %2292, float %1914, float 0.000000e+00
  %2294 = fsub fast float %2128, %2278
  %2295 = fsub fast float %2129, %2279
  %2296 = fsub fast float %2130, %2280
  %2297 = fmul fast float %2288, %2294
  %2298 = fmul fast float %2288, %2295
  %2299 = fmul fast float %2288, %2296
  %2300 = fadd fast float %2297, %2278
  %2301 = fadd fast float %2298, %2279
  %2302 = fadd fast float %2299, %2280
  %2303 = fsub fast float %2115, %1632
  %2304 = fmul fast float %2288, %2303
  %2305 = fadd fast float %2304, %1632
  %2306 = fsub fast float %2251, %2275
  %2307 = fsub fast float %2252, %2276
  %2308 = fsub fast float %2253, %2277
  %2309 = fmul fast float %2293, %2306
  %2310 = fmul fast float %2293, %2307
  %2311 = fmul fast float %2293, %2308
  %2312 = fadd fast float %2309, %2275
  %2313 = fadd fast float %2310, %2276
  %2314 = fadd fast float %2311, %2277
  %2315 = fsub fast float %2265, %1635
  %2316 = fmul fast float %2288, %2315
  %2317 = fadd fast float %2316, %1635
  br label %2363

; <label>:2318                                    ; preds = %2285
  %2319 = icmp eq i32 %2283, 1
  br i1 %2319, label %2320, label %2333

; <label>:2320                                    ; preds = %2318
  %2321 = fadd fast float %2128, -1.000000e+00
  %2322 = fadd fast float %2129, -1.000000e+00
  %2323 = fadd fast float %2130, -1.000000e+00
  %2324 = fmul fast float %2288, %2321
  %2325 = fmul fast float %2288, %2322
  %2326 = fmul fast float %2288, %2323
  %2327 = fadd fast float %2324, 1.000000e+00
  %2328 = fadd fast float %2325, 1.000000e+00
  %2329 = fadd fast float %2326, 1.000000e+00
  %2330 = fmul fast float %2327, %2278
  %2331 = fmul fast float %2328, %2279
  %2332 = fmul fast float %2329, %2280
  br label %2363

; <label>:2333                                    ; preds = %2318
  %2334 = icmp eq i32 %2283, 2
  br i1 %2334, label %2335, label %2363

; <label>:2335                                    ; preds = %2333
  %2336 = call float @dx.op.unary.f32(i32 24, float %2128)  ; Sqrt(value)
  %2337 = call float @dx.op.unary.f32(i32 24, float %2129)  ; Sqrt(value)
  %2338 = call float @dx.op.unary.f32(i32 24, float %2130)  ; Sqrt(value)
  %2339 = fadd fast float %2336, -5.000000e-01
  %2340 = fadd fast float %2337, -5.000000e-01
  %2341 = fadd fast float %2338, -5.000000e-01
  %2342 = fmul fast float %2339, %2288
  %2343 = fmul fast float %2340, %2288
  %2344 = fmul fast float %2341, %2288
  %2345 = fadd fast float %2342, 5.000000e-01
  %2346 = fadd fast float %2343, 5.000000e-01
  %2347 = fadd fast float %2344, 5.000000e-01
  %2348 = fmul fast float %2345, 2.000000e+00
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2349, %2278
  %2351 = fadd fast float %2350, %2348
  %2352 = fmul fast float %2351, %2278
  %2353 = fmul fast float %2346, 2.000000e+00
  %2354 = fsub fast float 1.000000e+00, %2353
  %2355 = fmul fast float %2354, %2279
  %2356 = fadd fast float %2355, %2353
  %2357 = fmul fast float %2356, %2279
  %2358 = fmul fast float %2347, 2.000000e+00
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2359, %2280
  %2361 = fadd fast float %2360, %2358
  %2362 = fmul fast float %2361, %2280
  br label %2363

; <label>:2363                                    ; preds = %2335, %2333, %2320, %2290, %2274
  %2364 = phi float [ %2275, %2274 ], [ %2275, %2335 ], [ %2275, %2333 ], [ %2275, %2320 ], [ %2312, %2290 ]
  %2365 = phi float [ %2276, %2274 ], [ %2276, %2335 ], [ %2276, %2333 ], [ %2276, %2320 ], [ %2313, %2290 ]
  %2366 = phi float [ %2277, %2274 ], [ %2277, %2335 ], [ %2277, %2333 ], [ %2277, %2320 ], [ %2314, %2290 ]
  %2367 = phi float [ %2278, %2274 ], [ %2352, %2335 ], [ %2278, %2333 ], [ %2330, %2320 ], [ %2300, %2290 ]
  %2368 = phi float [ %2279, %2274 ], [ %2357, %2335 ], [ %2279, %2333 ], [ %2331, %2320 ], [ %2301, %2290 ]
  %2369 = phi float [ %2280, %2274 ], [ %2362, %2335 ], [ %2280, %2333 ], [ %2332, %2320 ], [ %2302, %2290 ]
  %2370 = phi float [ %1632, %2274 ], [ %1632, %2335 ], [ %1632, %2333 ], [ %1632, %2320 ], [ %2305, %2290 ]
  %2371 = phi float [ %1635, %2274 ], [ %1635, %2335 ], [ %1635, %2333 ], [ %1635, %2320 ], [ %2317, %2290 ]
  %2372 = and i32 %2282, 12
  %2373 = icmp eq i32 %2372, 12
  br i1 %2373, label %2446, label %2374

; <label>:2374                                    ; preds = %2363
  %2375 = and i32 %2282, 2097184
  %2376 = icmp eq i32 %2375, 2097184
  %2377 = select i1 %2376, float %1914, float 0.000000e+00
  %2378 = and i32 %2282, 4194336
  %2379 = icmp eq i32 %2378, 4194336
  %2380 = select i1 %2379, float %1914, float 0.000000e+00
  %2381 = and i32 %2282, 8388640
  %2382 = icmp eq i32 %2381, 8388640
  %2383 = select i1 %2382, float %1914, float 0.000000e+00
  %2384 = icmp eq i32 %2372, 0
  br i1 %2384, label %2385, label %2398

; <label>:2385                                    ; preds = %2374
  %2386 = fsub fast float %2206, %1624
  %2387 = fsub fast float %2207, %1625
  %2388 = fmul fast float %2377, %2386
  %2389 = fmul fast float %2377, %2387
  %2390 = fadd fast float %2388, %1624
  %2391 = fadd fast float %2389, %1625
  %2392 = fsub fast float %2208, %1634
  %2393 = fmul fast float %2380, %2392
  %2394 = fadd fast float %2393, %1634
  %2395 = fsub fast float %2205, %1633
  %2396 = fmul fast float %2383, %2395
  %2397 = fadd fast float %2396, %1633
  br label %2446

; <label>:2398                                    ; preds = %2374
  %2399 = icmp eq i32 %2372, 4
  br i1 %2399, label %2400, label %2432

; <label>:2400                                    ; preds = %2398
  %2401 = fmul fast float %2377, %2206
  %2402 = fmul fast float %2377, %2207
  %2403 = fadd fast float %2401, %1624
  %2404 = fadd fast float %2402, %1625
  %2405 = call float @dx.op.binary.f32(i32 36, float %1634, float %2208)  ; FMin(a,b)
  %2406 = fsub fast float %2405, %1634
  %2407 = fmul fast float %2406, %2380
  %2408 = fadd fast float %2407, %1634
  %2409 = fadd fast float %2205, %1633
  %2410 = fmul fast float %2409, 0x3FF337FAE0000000
  %2411 = fmul fast float %1633, %1633
  %2412 = fmul fast float %2205, %2205
  %2413 = fadd fast float %2412, %2411
  %2414 = fmul fast float %2413, 0x3FE5152B00000000
  %2415 = fmul fast float %1633, 0xBFCC1F85E0000000
  %2416 = fmul fast float %2415, %2205
  %2417 = fadd fast float %2416, 0xBFE1363700000000
  %2418 = fadd fast float %2417, %2410
  %2419 = fsub fast float %2418, %2414
  %2420 = fmul fast float %2409, 0x3FBA6F0D00000000
  %2421 = fmul fast float %2413, 0x3FD0432880000000
  %2422 = fmul fast float %1633, 0xBFEF110800000000
  %2423 = fmul fast float %2422, %2205
  %2424 = fadd fast float %2423, 1.000000e+00
  %2425 = fsub fast float %2424, %2420
  %2426 = fadd fast float %2425, %2421
  %2427 = fdiv fast float %2419, %2426
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  %2429 = fsub fast float %2428, %1633
  %2430 = fmul fast float %2429, %2383
  %2431 = fadd fast float %2430, %1633
  br label %2446

; <label>:2432                                    ; preds = %2398
  %2433 = icmp eq i32 %2372, 8
  br i1 %2433, label %2434, label %2446

; <label>:2434                                    ; preds = %2432
  %2435 = fmul fast float %2377, %2206
  %2436 = fmul fast float %2377, %2207
  %2437 = fadd fast float %2435, %1624
  %2438 = fadd fast float %2436, %1625
  %2439 = call float @dx.op.binary.f32(i32 36, float %1634, float %2208)  ; FMin(a,b)
  %2440 = fsub fast float %2439, %1634
  %2441 = fmul fast float %2440, %2380
  %2442 = fadd fast float %2441, %1634
  %2443 = fsub fast float %2205, %1633
  %2444 = fmul fast float %2383, %2443
  %2445 = fadd fast float %2444, %1633
  br label %2446

; <label>:2446                                    ; preds = %2434, %2432, %2400, %2385, %2363, %1913, %1623
  %2447 = phi float [ %1624, %2363 ], [ %1624, %1913 ], [ %1624, %1623 ], [ %2390, %2385 ], [ %2403, %2400 ], [ %1624, %2432 ], [ %2437, %2434 ]
  %2448 = phi float [ %1625, %2363 ], [ %1625, %1913 ], [ %1625, %1623 ], [ %2391, %2385 ], [ %2404, %2400 ], [ %1625, %2432 ], [ %2438, %2434 ]
  %2449 = phi float [ %2364, %2363 ], [ %1626, %1913 ], [ %1626, %1623 ], [ %2364, %2385 ], [ %2364, %2400 ], [ %2364, %2432 ], [ %2364, %2434 ]
  %2450 = phi float [ %2365, %2363 ], [ %1627, %1913 ], [ %1627, %1623 ], [ %2365, %2385 ], [ %2365, %2400 ], [ %2365, %2432 ], [ %2365, %2434 ]
  %2451 = phi float [ %2366, %2363 ], [ %1628, %1913 ], [ %1628, %1623 ], [ %2366, %2385 ], [ %2366, %2400 ], [ %2366, %2432 ], [ %2366, %2434 ]
  %2452 = phi float [ %2367, %2363 ], [ %1629, %1913 ], [ %1629, %1623 ], [ %2367, %2385 ], [ %2367, %2400 ], [ %2367, %2432 ], [ %2367, %2434 ]
  %2453 = phi float [ %2368, %2363 ], [ %1630, %1913 ], [ %1630, %1623 ], [ %2368, %2385 ], [ %2368, %2400 ], [ %2368, %2432 ], [ %2368, %2434 ]
  %2454 = phi float [ %2369, %2363 ], [ %1631, %1913 ], [ %1631, %1623 ], [ %2369, %2385 ], [ %2369, %2400 ], [ %2369, %2432 ], [ %2369, %2434 ]
  %2455 = phi float [ %2370, %2363 ], [ %1632, %1913 ], [ %1632, %1623 ], [ %2370, %2385 ], [ %2370, %2400 ], [ %2370, %2432 ], [ %2370, %2434 ]
  %2456 = phi float [ %1633, %2363 ], [ %1633, %1913 ], [ %1633, %1623 ], [ %2397, %2385 ], [ %2431, %2400 ], [ %1633, %2432 ], [ %2445, %2434 ]
  %2457 = phi float [ %1634, %2363 ], [ %1634, %1913 ], [ %1634, %1623 ], [ %2394, %2385 ], [ %2408, %2400 ], [ %1634, %2432 ], [ %2442, %2434 ]
  %2458 = phi float [ %2371, %2363 ], [ %1635, %1913 ], [ %1635, %1623 ], [ %2371, %2385 ], [ %2371, %2400 ], [ %2371, %2432 ], [ %2371, %2434 ]
  %2459 = icmp ult i32 %349, 4
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = or i32 %2463, %2461
  %2465 = icmp eq i32 %2464, 0
  br i1 %2465, label %3269, label %2466

; <label>:2466                                    ; preds = %2446
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = lshr i32 %2468, 16
  %2470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2469)  ; LegacyF16ToF32(value)
  %2471 = fmul fast float %2470, 0x3F50624DE0000000
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = lshr i32 %2473, 16
  %2475 = and i32 %2474, 255
  %2476 = lshr i32 %2473, 24
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 65535
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = lshr i32 %2478, 16
  %2482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2481)  ; LegacyF16ToF32(value)
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = lshr i32 %2484, 22
  %2486 = shl nuw nsw i32 %2485, 5
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = shl i32 %2484, 4
  %2489 = and i32 %2488, 32752
  %2490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2489)  ; LegacyF16ToF32(value)
  %2491 = lshr i32 %2484, 7
  %2492 = and i32 %2491, 32752
  %2493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2492)  ; LegacyF16ToF32(value)
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 3
  %2496 = fmul fast float %2495, 1.000000e+03
  %2497 = fmul fast float %343, %2496
  %2498 = call float @dx.op.unary.f32(i32 22, float %2497)  ; Frc(value)
  %2499 = fadd fast float %2498, %334
  %2500 = fmul fast float %344, %2496
  %2501 = call float @dx.op.unary.f32(i32 22, float %2500)  ; Frc(value)
  %2502 = fadd fast float %2501, %336
  %2503 = fmul fast float %2471, %2496
  %2504 = call float @dx.op.unary.f32(i32 22, float %2503)  ; Frc(value)
  %2505 = fmul fast float %2504, 0x401921FB60000000
  %2506 = fadd fast float %2505, %2487
  %2507 = call float @dx.op.unary.f32(i32 13, float %2506)  ; Sin(value)
  %2508 = call float @dx.op.unary.f32(i32 12, float %2506)  ; Cos(value)
  %2509 = fsub fast float -0.000000e+00, %2507
  %2510 = fadd fast float %68, -5.000000e-01
  %2511 = fadd fast float %69, -5.000000e-01
  %2512 = fmul fast float %2480, %2510
  %2513 = fmul fast float %2482, %2511
  %2514 = fadd fast float %2512, 5.000000e-01
  %2515 = fadd fast float %2513, 5.000000e-01
  %2516 = fmul fast float %2490, %2514
  %2517 = fmul fast float %2493, %2515
  %2518 = fmul fast float %2508, %2516
  %2519 = call float @dx.op.tertiary.f32(i32 46, float %2509, float %2517, float %2518)  ; FMad(a,b,c)
  %2520 = fmul fast float %2507, %2516
  %2521 = call float @dx.op.tertiary.f32(i32 46, float %2508, float %2517, float %2520)  ; FMad(a,b,c)
  %2522 = fadd fast float %2499, %2519
  %2523 = fadd fast float %2502, %2521
  %2524 = icmp ugt i32 %2475, 1
  %2525 = icmp ugt i32 %2473, 33554431
  %2526 = or i1 %2525, %2524
  br i1 %2526, label %2527, label %2551

; <label>:2527                                    ; preds = %2466
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = lshr i32 %2529, 16
  %2531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2530)  ; LegacyF16ToF32(value)
  %2532 = fmul fast float %2495, %2531
  %2533 = call float @dx.op.unary.f32(i32 22, float %2532)  ; Frc(value)
  %2534 = mul nuw nsw i32 %2475, %2476
  %2535 = uitofp i32 %2534 to float
  %2536 = fmul fast float %2533, %2535
  %2537 = call float @dx.op.unary.f32(i32 27, float %2536)  ; Round_ni(value)
  %2538 = fptoui float %2537 to i32
  %2539 = urem i32 %2538, %2475
  %2540 = udiv i32 %2538, %2476
  %2541 = call float @dx.op.unary.f32(i32 22, float %2522)  ; Frc(value)
  %2542 = call float @dx.op.unary.f32(i32 22, float %2523)  ; Frc(value)
  %2543 = uitofp i32 %2539 to float
  %2544 = uitofp i32 %2540 to float
  %2545 = fadd fast float %2541, %2543
  %2546 = fadd fast float %2542, %2544
  %2547 = uitofp i32 %2475 to float
  %2548 = uitofp i32 %2476 to float
  %2549 = fdiv fast float %2545, %2547
  %2550 = fdiv fast float %2546, %2548
  br label %2551

; <label>:2551                                    ; preds = %2527, %2466
  %2552 = phi float [ %2549, %2527 ], [ %2522, %2466 ]
  %2553 = phi float [ %2550, %2527 ], [ %2523, %2466 ]
  %2554 = and i32 %2461, 16777216
  %2555 = icmp eq i32 %2554, 0
  br i1 %2555, label %2665, label %2556

; <label>:2556                                    ; preds = %2551
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.CBufRet.f32 %2557, 2
  %2561 = fadd fast float %2558, %131
  %2562 = fadd fast float %2559, %132
  %2563 = fadd fast float %2560, %133
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2567 = icmp eq i32 %43, 65535
  br i1 %2567, label %2662, label %2568

; <label>:2568                                    ; preds = %2556
  %2569 = lshr i32 %43, 1
  %2570 = shl i32 %2569, 2
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %43, 1
  %2574 = icmp ne i32 %2573, 0
  %2575 = lshr i32 %2572, 16
  %2576 = and i32 %2572, 65535
  %2577 = select i1 %2574, i32 %2575, i32 %2576
  %2578 = icmp eq i32 %2577, 65535
  br i1 %2578, label %2658, label %2579

; <label>:2579                                    ; preds = %2568
  %2580 = mul nuw nsw i32 %2577, 40
  %2581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = extractvalue %dx.types.ResRet.f32 %2581, 1
  %2584 = extractvalue %dx.types.ResRet.f32 %2581, 2
  %2585 = add nuw nsw i32 %2580, 12
  %2586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = extractvalue %dx.types.ResRet.f32 %2586, 1
  %2589 = extractvalue %dx.types.ResRet.f32 %2586, 2
  %2590 = add nuw nsw i32 %2580, 24
  %2591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.ResRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.ResRet.f32 %2591, 2
  %2595 = add nuw nsw i32 %2580, 36
  %2596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.f32 %2596, 0
  %2598 = fsub fast float %2561, %2582
  %2599 = fsub fast float %2562, %2583
  %2600 = fsub fast float %2563, %2584
  %2601 = fmul fast float %2597, %2598
  %2602 = fmul fast float %2597, %2599
  %2603 = fmul fast float %2597, %2600
  %2604 = call float @dx.op.unary.f32(i32 27, float %2601)  ; Round_ni(value)
  %2605 = call float @dx.op.unary.f32(i32 27, float %2602)  ; Round_ni(value)
  %2606 = call float @dx.op.unary.f32(i32 27, float %2603)  ; Round_ni(value)
  %2607 = fadd fast float %2604, 5.000000e-01
  %2608 = fadd fast float %2605, 5.000000e-01
  %2609 = fadd fast float %2606, 5.000000e-01
  %2610 = fmul fast float %2607, %2587
  %2611 = fmul fast float %2608, %2588
  %2612 = fmul fast float %2609, %2589
  %2613 = shl i32 %43, 2
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = add i32 %2615, 0
  %2617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2618 = call float @dx.op.unary.f32(i32 22, float %2610)  ; Frc(value)
  %2619 = call float @dx.op.unary.f32(i32 22, float %2611)  ; Frc(value)
  %2620 = call float @dx.op.unary.f32(i32 22, float %2612)  ; Frc(value)
  %2621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2617, %dx.types.Handle %40, float %2618, float %2619, float %2620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.ResRet.f32 %2621, 2
  %2625 = fmul fast float %2622, 1.023000e+03
  %2626 = fmul fast float %2623, 1.023000e+03
  %2627 = fmul fast float %2624, 1.023000e+03
  %2628 = fadd fast float %2625, 5.000000e-01
  %2629 = fadd fast float %2626, 5.000000e-01
  %2630 = fadd fast float %2627, 5.000000e-01
  %2631 = call float @dx.op.unary.f32(i32 27, float %2628)  ; Round_ni(value)
  %2632 = call float @dx.op.unary.f32(i32 27, float %2629)  ; Round_ni(value)
  %2633 = call float @dx.op.unary.f32(i32 27, float %2630)  ; Round_ni(value)
  %2634 = fsub fast float %2601, %2604
  %2635 = fsub fast float %2602, %2605
  %2636 = fsub fast float %2603, %2606
  %2637 = fmul fast float %2634, 7.500000e-01
  %2638 = fmul fast float %2635, 7.500000e-01
  %2639 = fmul fast float %2636, 7.500000e-01
  %2640 = fadd fast float %2604, 1.250000e-01
  %2641 = fadd fast float %2640, %2637
  %2642 = fadd fast float %2641, %2631
  %2643 = fadd fast float %2605, 1.250000e-01
  %2644 = fadd fast float %2643, %2638
  %2645 = fadd fast float %2644, %2632
  %2646 = fadd fast float %2606, 1.250000e-01
  %2647 = fadd fast float %2646, %2639
  %2648 = fadd fast float %2647, %2633
  %2649 = fmul fast float %2642, %2592
  %2650 = fmul fast float %2645, %2593
  %2651 = fmul fast float %2648, %2594
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2655, %dx.types.Handle %38, float %2649, float %2650, float %2651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  br label %2658

; <label>:2658                                    ; preds = %2579, %2568
  %2659 = phi float [ %2657, %2579 ], [ -1.000000e+00, %2568 ]
  %2660 = fadd fast float %2659, %2566
  %2661 = call float @dx.op.unary.f32(i32 7, float %2660)  ; Saturate(value)
  br label %2662

; <label>:2662                                    ; preds = %2658, %2556
  %2663 = phi float [ %2661, %2658 ], [ %2566, %2556 ]
  %2664 = fmul fast float %2663, %76
  br label %2665

; <label>:2665                                    ; preds = %2662, %2551
  %2666 = phi float [ %2664, %2662 ], [ %76, %2551 ]
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 256
  %2670 = icmp eq i32 %2669, 0
  br i1 %2670, label %2715, label %2671

; <label>:2671                                    ; preds = %2665
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = add i32 %2673, 0
  %2675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2675, %dx.types.Handle %81, float %2552, float %2553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2677 = extractvalue %dx.types.ResRet.f32 %2676, 0
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = shl i32 %2679, 4
  %2681 = and i32 %2680, 32752
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = lshr i32 %2679, 7
  %2684 = and i32 %2683, 32752
  %2685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2684)  ; LegacyF16ToF32(value)
  %2686 = fsub fast float 1.000000e+00, %2666
  %2687 = call float @dx.op.binary.f32(i32 35, float %2686, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2688 = bitcast float %2666 to i32
  %2689 = sitofp i32 %2688 to float
  %2690 = fadd fast float %2689, 0xC1CFBF8940000000
  %2691 = fmul fast float %2685, %2690
  %2692 = fadd fast float %2691, 0x41CFBF8940000000
  %2693 = fptosi float %2692 to i32
  %2694 = bitcast i32 %2693 to float
  %2695 = bitcast float %2687 to i32
  %2696 = sitofp i32 %2695 to float
  %2697 = fadd fast float %2696, 0xC1CFBF8940000000
  %2698 = fmul fast float %2697, %2685
  %2699 = fadd fast float %2698, 0x41CFBF8940000000
  %2700 = fptosi float %2699 to i32
  %2701 = bitcast i32 %2700 to float
  %2702 = fmul fast float %2694, %2682
  %2703 = fmul fast float %2701, %2682
  %2704 = fsub fast float %2687, %2702
  %2705 = fadd fast float %2703, %2687
  %2706 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2707 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2708 = fsub fast float %2677, %2706
  %2709 = fsub fast float %2707, %2706
  %2710 = bitcast float %2709 to i32
  %2711 = sub nsw i32 2129859010, %2710
  %2712 = bitcast i32 %2711 to float
  %2713 = fmul fast float %2712, %2708
  %2714 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  br label %2715

; <label>:2715                                    ; preds = %2671, %2665
  %2716 = phi float [ %2714, %2671 ], [ %2666, %2665 ]
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 128
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2736, label %2721

; <label>:2721                                    ; preds = %2715
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = add i32 %2723, 0
  %2725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2725, %dx.types.Handle %81, float %2552, float %2553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = and i32 %2729, 524288
  %2731 = icmp ne i32 %2730, 0
  %2732 = fcmp fast ogt float %2727, 0x3FE0101020000000
  %2733 = select i1 %2732, float 1.000000e+00, float 0.000000e+00
  %2734 = select i1 %2731, float %2733, float %2727
  %2735 = fmul fast float %2734, %2716
  br label %2736

; <label>:2736                                    ; preds = %2721, %2715
  %2737 = phi float [ %2735, %2721 ], [ %2716, %2715 ]
  %2738 = fcmp fast ult float %2737, 0x3F70101020000000
  br i1 %2738, label %3269, label %2739

; <label>:2739                                    ; preds = %2736
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 16
  %2743 = icmp eq i32 %2742, 0
  br i1 %2743, label %2937, label %2744

; <label>:2744                                    ; preds = %2739
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = add i32 %2748, 0
  %2750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2750, %dx.types.Handle %80, float %2552, float %2553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = extractvalue %dx.types.ResRet.f32 %2751, 3
  %2756 = and i32 %2746, 255
  %2757 = uitofp i32 %2756 to float
  %2758 = lshr i32 %2746, 8
  %2759 = and i32 %2758, 255
  %2760 = uitofp i32 %2759 to float
  %2761 = fmul fast float %2755, %2757
  %2762 = fadd fast float %2761, %2760
  %2763 = fmul fast float %2762, 0x3F70101000000000
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = and i32 %2765, 512
  %2767 = icmp eq i32 %2766, 0
  br i1 %2767, label %2775, label %2768

; <label>:2768                                    ; preds = %2744
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = add i32 %2770, 0
  %2772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2772, %dx.types.Handle %81, float %2552, float %2553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  br label %2775

; <label>:2775                                    ; preds = %2768, %2744
  %2776 = phi float [ %2774, %2768 ], [ 1.000000e+00, %2744 ]
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = and i32 %2778, 33554432
  %2780 = icmp eq i32 %2779, 0
  br i1 %2780, label %2884, label %2781

; <label>:2781                                    ; preds = %2775
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = lshr i32 %2783, 16
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = and i32 %2789, 65535
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = lshr i32 %2793, 24
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101020000000
  %2797 = and i32 %2793, 255
  %2798 = uitofp i32 %2797 to float
  %2799 = fmul fast float %2798, 0x3F70101020000000
  %2800 = lshr i32 %2793, 8
  %2801 = and i32 %2800, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = fmul fast float %2802, 0x3F70101020000000
  %2804 = lshr i32 %2793, 16
  %2805 = and i32 %2804, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = fmul fast float %2806, 0x3F70101020000000
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = lshr i32 %2809, 24
  %2811 = uitofp i32 %2810 to float
  %2812 = fmul fast float %2811, 0x3F70101020000000
  %2813 = and i32 %2809, 255
  %2814 = uitofp i32 %2813 to float
  %2815 = fmul fast float %2814, 0x3F70101020000000
  %2816 = lshr i32 %2809, 8
  %2817 = and i32 %2816, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = fmul fast float %2818, 0x3F70101020000000
  %2820 = lshr i32 %2809, 16
  %2821 = and i32 %2820, 255
  %2822 = uitofp i32 %2821 to float
  %2823 = fmul fast float %2822, 0x3F70101020000000
  %2824 = bitcast float %2752 to i32
  %2825 = ashr i32 %2824, 1
  %2826 = sub nsw i32 1597463174, %2825
  %2827 = bitcast i32 %2826 to float
  %2828 = fmul fast float %2752, 5.000000e-01
  %2829 = fmul fast float %2827, %2827
  %2830 = fmul fast float %2829, %2828
  %2831 = fsub fast float 1.500000e+00, %2830
  %2832 = fmul fast float %2827, %2752
  %2833 = fmul fast float %2832, %2831
  %2834 = bitcast float %2753 to i32
  %2835 = ashr i32 %2834, 1
  %2836 = sub nsw i32 1597463174, %2835
  %2837 = bitcast i32 %2836 to float
  %2838 = fmul fast float %2753, 5.000000e-01
  %2839 = fmul fast float %2837, %2837
  %2840 = fmul fast float %2839, %2838
  %2841 = fsub fast float 1.500000e+00, %2840
  %2842 = fmul fast float %2837, %2753
  %2843 = fmul fast float %2842, %2841
  %2844 = bitcast float %2754 to i32
  %2845 = ashr i32 %2844, 1
  %2846 = sub nsw i32 1597463174, %2845
  %2847 = bitcast i32 %2846 to float
  %2848 = fmul fast float %2754, 5.000000e-01
  %2849 = fmul fast float %2847, %2847
  %2850 = fmul fast float %2849, %2848
  %2851 = fsub fast float 1.500000e+00, %2850
  %2852 = fmul fast float %2847, %2754
  %2853 = fmul fast float %2852, %2851
  %2854 = fsub fast float %2833, %2815
  %2855 = fsub fast float %2843, %2819
  %2856 = fsub fast float %2853, %2823
  %2857 = fmul fast float %2854, %2785
  %2858 = fmul fast float %2855, %2787
  %2859 = fmul fast float %2856, %2791
  %2860 = fadd fast float %2857, %2799
  %2861 = fadd fast float %2858, %2803
  %2862 = fadd fast float %2859, %2807
  %2863 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2864 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2865 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2866 = fmul fast float %2863, %2863
  %2867 = fmul fast float %2864, %2864
  %2868 = fmul fast float %2865, %2865
  %2869 = fsub fast float %2866, %2752
  %2870 = fsub fast float %2867, %2753
  %2871 = fsub fast float %2868, %2754
  %2872 = fmul fast float %2869, %2776
  %2873 = fmul fast float %2870, %2776
  %2874 = fmul fast float %2871, %2776
  %2875 = fadd fast float %2872, %2752
  %2876 = fadd fast float %2873, %2753
  %2877 = fadd fast float %2874, %2754
  %2878 = fadd fast float %2796, %2763
  %2879 = fsub fast float %2878, %2812
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2881 = fsub fast float %2880, %2763
  %2882 = fmul fast float %2881, %2776
  %2883 = fadd fast float %2882, %2763
  br label %2937

; <label>:2884                                    ; preds = %2775
  %2885 = and i32 %2778, 134217728
  %2886 = icmp eq i32 %2885, 0
  br i1 %2886, label %2921, label %2887

; <label>:2887                                    ; preds = %2884
  %2888 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2889 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2890 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2891 = fadd fast float %2888, -5.000000e-01
  %2892 = fadd fast float %2889, -5.000000e-01
  %2893 = fadd fast float %2890, -5.000000e-01
  %2894 = fmul fast float %2891, %2776
  %2895 = fmul fast float %2892, %2776
  %2896 = fmul fast float %2893, %2776
  %2897 = fadd fast float %2894, 5.000000e-01
  %2898 = fadd fast float %2895, 5.000000e-01
  %2899 = fadd fast float %2896, 5.000000e-01
  %2900 = call float @dx.op.unary.f32(i32 24, float %2752)  ; Sqrt(value)
  %2901 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %2902 = call float @dx.op.unary.f32(i32 24, float %2754)  ; Sqrt(value)
  %2903 = fmul fast float %2897, 2.000000e+00
  %2904 = fsub fast float 1.000000e+00, %2903
  %2905 = fmul fast float %2904, %2900
  %2906 = fadd fast float %2905, %2903
  %2907 = fmul fast float %2906, %2900
  %2908 = fmul fast float %2898, 2.000000e+00
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2909, %2901
  %2911 = fadd fast float %2910, %2908
  %2912 = fmul fast float %2911, %2901
  %2913 = fmul fast float %2899, 2.000000e+00
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fmul fast float %2914, %2902
  %2916 = fadd fast float %2915, %2913
  %2917 = fmul fast float %2916, %2902
  %2918 = fmul fast float %2907, %2907
  %2919 = fmul fast float %2912, %2912
  %2920 = fmul fast float %2917, %2917
  br label %2937

; <label>:2921                                    ; preds = %2884
  %2922 = fmul fast float %322, %322
  %2923 = fmul fast float %326, %326
  %2924 = fmul fast float %330, %330
  %2925 = fadd fast float %2922, -1.000000e+00
  %2926 = fadd fast float %2923, -1.000000e+00
  %2927 = fadd fast float %2924, -1.000000e+00
  %2928 = fmul fast float %2776, %2925
  %2929 = fmul fast float %2776, %2926
  %2930 = fmul fast float %2776, %2927
  %2931 = fadd fast float %2928, 1.000000e+00
  %2932 = fadd fast float %2929, 1.000000e+00
  %2933 = fadd fast float %2930, 1.000000e+00
  %2934 = fmul fast float %2931, %2752
  %2935 = fmul fast float %2932, %2753
  %2936 = fmul fast float %2933, %2754
  br label %2937

; <label>:2937                                    ; preds = %2921, %2887, %2781, %2739
  %2938 = phi float [ %2883, %2781 ], [ %2763, %2887 ], [ %2763, %2921 ], [ 0x3FA23C0BE0000000, %2739 ]
  %2939 = phi float [ %2875, %2781 ], [ %2918, %2887 ], [ %2934, %2921 ], [ 1.000000e+00, %2739 ]
  %2940 = phi float [ %2876, %2781 ], [ %2919, %2887 ], [ %2935, %2921 ], [ 1.000000e+00, %2739 ]
  %2941 = phi float [ %2877, %2781 ], [ %2920, %2887 ], [ %2936, %2921 ], [ 1.000000e+00, %2739 ]
  %2942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.i32 %2942, 1
  %2944 = and i32 %2943, 1
  %2945 = icmp ne i32 %2944, 0
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 32
  %2949 = icmp ne i32 %2948, 0
  %2950 = and i1 %2945, %2949
  %2951 = select i1 %2950, float 1.000000e+00, float %2939
  %2952 = select i1 %2950, float 0x3FD3333340000000, float %2940
  %2953 = select i1 %2950, float 0x3FD3333340000000, float %2941
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 32
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %3027, label %2958

; <label>:2958                                    ; preds = %2937
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = add i32 %2962, 0
  %2964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2964, %dx.types.Handle %80, float %2552, float %2553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = extractvalue %dx.types.ResRet.f32 %2965, 3
  %2970 = and i32 %2960, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = lshr i32 %2960, 8
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = lshr i32 %2960, 16
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101000000000
  %2979 = fmul fast float %2966, %2971
  %2980 = fadd fast float %2979, %2974
  %2981 = fmul fast float %2980, 0x3F70101000000000
  %2982 = fadd fast float %2967, -5.000000e-01
  %2983 = fadd fast float %2969, -5.000000e-01
  %2984 = fmul fast float %2982, %2978
  %2985 = fmul fast float %2983, %2978
  %2986 = fadd fast float %2984, 5.000000e-01
  %2987 = fadd fast float %2985, 5.000000e-01
  %2988 = fmul fast float %2986, 2.000000e+00
  %2989 = fadd fast float %2988, -1.000000e+00
  %2990 = fmul fast float %2987, 2.000000e+00
  %2991 = fadd fast float %2990, -1.000000e+00
  %2992 = fadd fast float %2989, %2991
  %2993 = fmul fast float %2992, 5.000000e-01
  %2994 = fsub fast float %2989, %2991
  %2995 = fmul fast float %2994, 5.000000e-01
  %2996 = call float @dx.op.unary.f32(i32 6, float %2993)  ; FAbs(value)
  %2997 = fsub fast float 1.000000e+00, %2996
  %2998 = call float @dx.op.unary.f32(i32 6, float %2995)  ; FAbs(value)
  %2999 = fsub fast float %2997, %2998
  %3000 = call float @dx.op.dot3.f32(i32 55, float %2993, float %2995, float %2999, float %2993, float %2995, float %2999)  ; Dot3(ax,ay,az,bx,by,bz)
  %3001 = call float @dx.op.unary.f32(i32 25, float %3000)  ; Rsqrt(value)
  %3002 = fmul fast float %2993, %3001
  %3003 = fmul fast float %2995, %3001
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = and i32 %3005, 67108864
  %3007 = icmp eq i32 %3006, 0
  br i1 %3007, label %3023, label %3008

; <label>:3008                                    ; preds = %2958
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 65535
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 65535
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = lshr i32 %3010, 16
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = fsub fast float %2981, %3018
  %3020 = fmul fast float %3019, %3012
  %3021 = fadd fast float %3020, %3016
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  br label %3023

; <label>:3023                                    ; preds = %3008, %2958
  %3024 = phi float [ %3022, %3008 ], [ %2981, %2958 ]
  %3025 = call float @dx.op.dot2.f32(i32 54, float %3002, float %3003, float %44, float %45)  ; Dot2(ax,ay,bx,by)
  %3026 = call float @dx.op.dot2.f32(i32 54, float %3002, float %3003, float %46, float %47)  ; Dot2(ax,ay,bx,by)
  br label %3027

; <label>:3027                                    ; preds = %3023, %2937
  %3028 = phi float [ %3024, %3023 ], [ 0x3FD6666660000000, %2937 ]
  %3029 = phi float [ %3025, %3023 ], [ 0.000000e+00, %2937 ]
  %3030 = phi float [ %3026, %3023 ], [ 0.000000e+00, %2937 ]
  %3031 = phi float [ %2968, %3023 ], [ 1.000000e+00, %2937 ]
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = lshr i32 %3033, 22
  %3035 = shl nuw nsw i32 %3034, 5
  %3036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3035)  ; LegacyF16ToF32(value)
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 64
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3073, label %3041

; <label>:3041                                    ; preds = %3027
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = add i32 %3043, 0
  %3045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = and i32 %3047, 131072
  %3049 = icmp eq i32 %3048, 0
  %3050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3045, %dx.types.Handle %80, float %2552, float %2553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.ResRet.f32 %3050, 1
  %3053 = extractvalue %dx.types.ResRet.f32 %3050, 2
  %3054 = fmul fast float %3051, %311
  %3055 = fmul fast float %3052, %314
  %3056 = fmul fast float %3053, %317
  br i1 %3049, label %3063, label %3057

; <label>:3057                                    ; preds = %3041
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 0
  %3060 = fmul fast float %3059, %3054
  %3061 = fmul fast float %3059, %3055
  %3062 = fmul fast float %3059, %3056
  br label %3063

; <label>:3063                                    ; preds = %3057, %3041
  %3064 = phi float [ %3060, %3057 ], [ %3054, %3041 ]
  %3065 = phi float [ %3061, %3057 ], [ %3055, %3041 ]
  %3066 = phi float [ %3062, %3057 ], [ %3056, %3041 ]
  %3067 = fmul fast float %3064, %3036
  %3068 = select i1 %202, float %3067, float %3064
  %3069 = call float @dx.op.dot3.f32(i32 55, float %3068, float %3065, float %3066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3070 = select i1 %202, float 0.000000e+00, float %3064
  %3071 = select i1 %202, float %3069, float %3065
  %3072 = select i1 %202, float 0.000000e+00, float %3066
  br label %3073

; <label>:3073                                    ; preds = %3063, %3027
  %3074 = phi float [ %3070, %3063 ], [ 0.000000e+00, %3027 ]
  %3075 = phi float [ %3071, %3063 ], [ 0.000000e+00, %3027 ]
  %3076 = phi float [ %3072, %3063 ], [ 0.000000e+00, %3027 ]
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = lshr i32 %3078, 8
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = call float @dx.op.dot3.f32(i32 55, float %2951, float %2952, float %2953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3085 = fmul fast float %3083, %3084
  %3086 = fadd fast float %3085, %3080
  %3087 = fmul fast float %3086, 0x3F70101020000000
  %3088 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  br i1 %2459, label %3089, label %3097

; <label>:3089                                    ; preds = %3073
  %3090 = fsub fast float 1.000000e+00, %2737
  %3091 = fmul fast float %3090, %2452
  %3092 = fmul fast float %3090, %2453
  %3093 = fmul fast float %3090, %2454
  %3094 = fmul fast float %3090, %2449
  %3095 = fmul fast float %3090, %2450
  %3096 = fmul fast float %3090, %2451
  br label %3097

; <label>:3097                                    ; preds = %3089, %3073
  %3098 = phi float [ %3094, %3089 ], [ %2449, %3073 ]
  %3099 = phi float [ %3095, %3089 ], [ %2450, %3073 ]
  %3100 = phi float [ %3096, %3089 ], [ %2451, %3073 ]
  %3101 = phi float [ %3091, %3089 ], [ %2452, %3073 ]
  %3102 = phi float [ %3092, %3089 ], [ %2453, %3073 ]
  %3103 = phi float [ %3093, %3089 ], [ %2454, %3073 ]
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = and i32 %3105, 3
  %3107 = icmp eq i32 %3106, 3
  br i1 %3107, label %3186, label %3108

; <label>:3108                                    ; preds = %3097
  %3109 = and i32 %3105, 16
  %3110 = icmp ne i32 %3109, 0
  %3111 = select i1 %3110, float %2737, float 0.000000e+00
  %3112 = icmp eq i32 %3106, 0
  br i1 %3112, label %3113, label %3141

; <label>:3113                                    ; preds = %3108
  %3114 = and i32 %3105, 64
  %3115 = icmp ne i32 %3114, 0
  %3116 = select i1 %3115, float %2737, float 0.000000e+00
  %3117 = fsub fast float %2951, %3101
  %3118 = fsub fast float %2952, %3102
  %3119 = fsub fast float %2953, %3103
  %3120 = fmul fast float %3111, %3117
  %3121 = fmul fast float %3111, %3118
  %3122 = fmul fast float %3111, %3119
  %3123 = fadd fast float %3120, %3101
  %3124 = fadd fast float %3121, %3102
  %3125 = fadd fast float %3122, %3103
  %3126 = fsub fast float %2938, %2455
  %3127 = fmul fast float %3111, %3126
  %3128 = fadd fast float %3127, %2455
  %3129 = fsub fast float %3074, %3098
  %3130 = fsub fast float %3075, %3099
  %3131 = fsub fast float %3076, %3100
  %3132 = fmul fast float %3116, %3129
  %3133 = fmul fast float %3116, %3130
  %3134 = fmul fast float %3116, %3131
  %3135 = fadd fast float %3132, %3098
  %3136 = fadd fast float %3133, %3099
  %3137 = fadd fast float %3134, %3100
  %3138 = fsub fast float %3088, %2458
  %3139 = fmul fast float %3111, %3138
  %3140 = fadd fast float %3139, %2458
  br label %3186

; <label>:3141                                    ; preds = %3108
  %3142 = icmp eq i32 %3106, 1
  br i1 %3142, label %3143, label %3156

; <label>:3143                                    ; preds = %3141
  %3144 = fadd fast float %2951, -1.000000e+00
  %3145 = fadd fast float %2952, -1.000000e+00
  %3146 = fadd fast float %2953, -1.000000e+00
  %3147 = fmul fast float %3111, %3144
  %3148 = fmul fast float %3111, %3145
  %3149 = fmul fast float %3111, %3146
  %3150 = fadd fast float %3147, 1.000000e+00
  %3151 = fadd fast float %3148, 1.000000e+00
  %3152 = fadd fast float %3149, 1.000000e+00
  %3153 = fmul fast float %3150, %3101
  %3154 = fmul fast float %3151, %3102
  %3155 = fmul fast float %3152, %3103
  br label %3186

; <label>:3156                                    ; preds = %3141
  %3157 = icmp eq i32 %3106, 2
  br i1 %3157, label %3158, label %3186

; <label>:3158                                    ; preds = %3156
  %3159 = call float @dx.op.unary.f32(i32 24, float %2951)  ; Sqrt(value)
  %3160 = call float @dx.op.unary.f32(i32 24, float %2952)  ; Sqrt(value)
  %3161 = call float @dx.op.unary.f32(i32 24, float %2953)  ; Sqrt(value)
  %3162 = fadd fast float %3159, -5.000000e-01
  %3163 = fadd fast float %3160, -5.000000e-01
  %3164 = fadd fast float %3161, -5.000000e-01
  %3165 = fmul fast float %3162, %3111
  %3166 = fmul fast float %3163, %3111
  %3167 = fmul fast float %3164, %3111
  %3168 = fadd fast float %3165, 5.000000e-01
  %3169 = fadd fast float %3166, 5.000000e-01
  %3170 = fadd fast float %3167, 5.000000e-01
  %3171 = fmul fast float %3168, 2.000000e+00
  %3172 = fsub fast float 1.000000e+00, %3171
  %3173 = fmul fast float %3172, %3101
  %3174 = fadd fast float %3173, %3171
  %3175 = fmul fast float %3174, %3101
  %3176 = fmul fast float %3169, 2.000000e+00
  %3177 = fsub fast float 1.000000e+00, %3176
  %3178 = fmul fast float %3177, %3102
  %3179 = fadd fast float %3178, %3176
  %3180 = fmul fast float %3179, %3102
  %3181 = fmul fast float %3170, 2.000000e+00
  %3182 = fsub fast float 1.000000e+00, %3181
  %3183 = fmul fast float %3182, %3103
  %3184 = fadd fast float %3183, %3181
  %3185 = fmul fast float %3184, %3103
  br label %3186

; <label>:3186                                    ; preds = %3158, %3156, %3143, %3113, %3097
  %3187 = phi float [ %3098, %3097 ], [ %3098, %3158 ], [ %3098, %3156 ], [ %3098, %3143 ], [ %3135, %3113 ]
  %3188 = phi float [ %3099, %3097 ], [ %3099, %3158 ], [ %3099, %3156 ], [ %3099, %3143 ], [ %3136, %3113 ]
  %3189 = phi float [ %3100, %3097 ], [ %3100, %3158 ], [ %3100, %3156 ], [ %3100, %3143 ], [ %3137, %3113 ]
  %3190 = phi float [ %3101, %3097 ], [ %3175, %3158 ], [ %3101, %3156 ], [ %3153, %3143 ], [ %3123, %3113 ]
  %3191 = phi float [ %3102, %3097 ], [ %3180, %3158 ], [ %3102, %3156 ], [ %3154, %3143 ], [ %3124, %3113 ]
  %3192 = phi float [ %3103, %3097 ], [ %3185, %3158 ], [ %3103, %3156 ], [ %3155, %3143 ], [ %3125, %3113 ]
  %3193 = phi float [ %2455, %3097 ], [ %2455, %3158 ], [ %2455, %3156 ], [ %2455, %3143 ], [ %3128, %3113 ]
  %3194 = phi float [ %2458, %3097 ], [ %2458, %3158 ], [ %2458, %3156 ], [ %2458, %3143 ], [ %3140, %3113 ]
  %3195 = and i32 %3105, 12
  %3196 = icmp eq i32 %3195, 12
  br i1 %3196, label %3269, label %3197

; <label>:3197                                    ; preds = %3186
  %3198 = and i32 %3105, 2097184
  %3199 = icmp eq i32 %3198, 2097184
  %3200 = select i1 %3199, float %2737, float 0.000000e+00
  %3201 = and i32 %3105, 4194336
  %3202 = icmp eq i32 %3201, 4194336
  %3203 = select i1 %3202, float %2737, float 0.000000e+00
  %3204 = and i32 %3105, 8388640
  %3205 = icmp eq i32 %3204, 8388640
  %3206 = select i1 %3205, float %2737, float 0.000000e+00
  %3207 = icmp eq i32 %3195, 0
  br i1 %3207, label %3208, label %3221

; <label>:3208                                    ; preds = %3197
  %3209 = fsub fast float %3029, %2447
  %3210 = fsub fast float %3030, %2448
  %3211 = fmul fast float %3200, %3209
  %3212 = fmul fast float %3200, %3210
  %3213 = fadd fast float %3211, %2447
  %3214 = fadd fast float %3212, %2448
  %3215 = fsub fast float %3031, %2457
  %3216 = fmul fast float %3203, %3215
  %3217 = fadd fast float %3216, %2457
  %3218 = fsub fast float %3028, %2456
  %3219 = fmul fast float %3206, %3218
  %3220 = fadd fast float %3219, %2456
  br label %3269

; <label>:3221                                    ; preds = %3197
  %3222 = icmp eq i32 %3195, 4
  br i1 %3222, label %3223, label %3255

; <label>:3223                                    ; preds = %3221
  %3224 = fmul fast float %3200, %3029
  %3225 = fmul fast float %3200, %3030
  %3226 = fadd fast float %3224, %2447
  %3227 = fadd fast float %3225, %2448
  %3228 = call float @dx.op.binary.f32(i32 36, float %2457, float %3031)  ; FMin(a,b)
  %3229 = fsub fast float %3228, %2457
  %3230 = fmul fast float %3229, %3203
  %3231 = fadd fast float %3230, %2457
  %3232 = fadd fast float %3028, %2456
  %3233 = fmul fast float %3232, 0x3FF337FAE0000000
  %3234 = fmul fast float %2456, %2456
  %3235 = fmul fast float %3028, %3028
  %3236 = fadd fast float %3235, %3234
  %3237 = fmul fast float %3236, 0x3FE5152B00000000
  %3238 = fmul fast float %2456, 0xBFCC1F85E0000000
  %3239 = fmul fast float %3238, %3028
  %3240 = fadd fast float %3239, 0xBFE1363700000000
  %3241 = fadd fast float %3240, %3233
  %3242 = fsub fast float %3241, %3237
  %3243 = fmul fast float %3232, 0x3FBA6F0D00000000
  %3244 = fmul fast float %3236, 0x3FD0432880000000
  %3245 = fmul fast float %2456, 0xBFEF110800000000
  %3246 = fmul fast float %3245, %3028
  %3247 = fadd fast float %3246, 1.000000e+00
  %3248 = fsub fast float %3247, %3243
  %3249 = fadd fast float %3248, %3244
  %3250 = fdiv fast float %3242, %3249
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3252 = fsub fast float %3251, %2456
  %3253 = fmul fast float %3252, %3206
  %3254 = fadd fast float %3253, %2456
  br label %3269

; <label>:3255                                    ; preds = %3221
  %3256 = icmp eq i32 %3195, 8
  br i1 %3256, label %3257, label %3269

; <label>:3257                                    ; preds = %3255
  %3258 = fmul fast float %3200, %3029
  %3259 = fmul fast float %3200, %3030
  %3260 = fadd fast float %3258, %2447
  %3261 = fadd fast float %3259, %2448
  %3262 = call float @dx.op.binary.f32(i32 36, float %2457, float %3031)  ; FMin(a,b)
  %3263 = fsub fast float %3262, %2457
  %3264 = fmul fast float %3263, %3203
  %3265 = fadd fast float %3264, %2457
  %3266 = fsub fast float %3028, %2456
  %3267 = fmul fast float %3206, %3266
  %3268 = fadd fast float %3267, %2456
  br label %3269

; <label>:3269                                    ; preds = %3257, %3255, %3223, %3208, %3186, %2736, %2446
  %3270 = phi float [ %2447, %3186 ], [ %2447, %2736 ], [ %2447, %2446 ], [ %3213, %3208 ], [ %3226, %3223 ], [ %2447, %3255 ], [ %3260, %3257 ]
  %3271 = phi float [ %2448, %3186 ], [ %2448, %2736 ], [ %2448, %2446 ], [ %3214, %3208 ], [ %3227, %3223 ], [ %2448, %3255 ], [ %3261, %3257 ]
  %3272 = phi float [ %3187, %3186 ], [ %2449, %2736 ], [ %2449, %2446 ], [ %3187, %3208 ], [ %3187, %3223 ], [ %3187, %3255 ], [ %3187, %3257 ]
  %3273 = phi float [ %3188, %3186 ], [ %2450, %2736 ], [ %2450, %2446 ], [ %3188, %3208 ], [ %3188, %3223 ], [ %3188, %3255 ], [ %3188, %3257 ]
  %3274 = phi float [ %3189, %3186 ], [ %2451, %2736 ], [ %2451, %2446 ], [ %3189, %3208 ], [ %3189, %3223 ], [ %3189, %3255 ], [ %3189, %3257 ]
  %3275 = phi float [ %3190, %3186 ], [ %2452, %2736 ], [ %2452, %2446 ], [ %3190, %3208 ], [ %3190, %3223 ], [ %3190, %3255 ], [ %3190, %3257 ]
  %3276 = phi float [ %3191, %3186 ], [ %2453, %2736 ], [ %2453, %2446 ], [ %3191, %3208 ], [ %3191, %3223 ], [ %3191, %3255 ], [ %3191, %3257 ]
  %3277 = phi float [ %3192, %3186 ], [ %2454, %2736 ], [ %2454, %2446 ], [ %3192, %3208 ], [ %3192, %3223 ], [ %3192, %3255 ], [ %3192, %3257 ]
  %3278 = phi float [ %3193, %3186 ], [ %2455, %2736 ], [ %2455, %2446 ], [ %3193, %3208 ], [ %3193, %3223 ], [ %3193, %3255 ], [ %3193, %3257 ]
  %3279 = phi float [ %2456, %3186 ], [ %2456, %2736 ], [ %2456, %2446 ], [ %3220, %3208 ], [ %3254, %3223 ], [ %2456, %3255 ], [ %3268, %3257 ]
  %3280 = phi float [ %2457, %3186 ], [ %2457, %2736 ], [ %2457, %2446 ], [ %3217, %3208 ], [ %3231, %3223 ], [ %2457, %3255 ], [ %3265, %3257 ]
  %3281 = phi float [ %3194, %3186 ], [ %2458, %2736 ], [ %2458, %2446 ], [ %3194, %3208 ], [ %3194, %3223 ], [ %3194, %3255 ], [ %3194, %3257 ]
  %3282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3283 = extractvalue %dx.types.CBufRet.f32 %3282, 0
  %3284 = call float @dx.op.dot2.f32(i32 54, float %3270, float %3271, float %3270, float %3271)  ; Dot2(ax,ay,bx,by)
  %3285 = fmul fast float %3284, 0x3FE3333340000000
  %3286 = fsub fast float 1.000000e+00, %3285
  %3287 = call float @dx.op.dot3.f32(i32 55, float %3270, float %3271, float %3286, float %3270, float %3271, float %3286)  ; Dot3(ax,ay,az,bx,by,bz)
  %3288 = call float @dx.op.unary.f32(i32 25, float %3287)  ; Rsqrt(value)
  %3289 = fmul fast float %3288, %3270
  %3290 = fmul fast float %3288, %3271
  %3291 = fmul fast float %3286, %3288
  %3292 = fmul fast float %3291, %60
  %3293 = fmul fast float %3291, %61
  %3294 = fmul fast float %3291, %62
  %3295 = fmul fast float %3289, %56
  %3296 = fmul fast float %3289, %57
  %3297 = fmul fast float %3289, %58
  %3298 = fadd fast float %3292, %3295
  %3299 = fadd fast float %3293, %3296
  %3300 = fadd fast float %3294, %3297
  %3301 = fmul fast float %3290, %95
  %3302 = fmul fast float %3290, %96
  %3303 = fmul fast float %3290, %97
  %3304 = fadd fast float %3298, %3301
  %3305 = fadd fast float %3299, %3302
  %3306 = fadd fast float %3300, %3303
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3304, float %3305, float %3306, float %3304, float %3305, float %3306)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = call float @dx.op.unary.f32(i32 25, float %3307)  ; Rsqrt(value)
  %3309 = fmul fast float %3304, %3308
  %3310 = fmul fast float %3305, %3308
  %3311 = fmul fast float %3306, %3308
  %3312 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3313 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3314 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3315 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3316 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3317 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3318 = fadd fast float %3312, %131
  %3319 = fadd fast float %3313, %132
  %3320 = fadd fast float %3314, %133
  %3321 = fadd fast float %3315, %131
  %3322 = fadd fast float %3316, %132
  %3323 = fadd fast float %3317, %133
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.CBufRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.CBufRet.f32 %3324, 2
  %3328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.f32 %3328, 2
  %3330 = extractvalue %dx.types.CBufRet.f32 %3328, 3
  %3331 = fmul fast float %3325, %84
  %3332 = fmul fast float %3331, %3329
  %3333 = fmul fast float %3326, %85
  %3334 = fmul fast float %3333, %3330
  %3335 = fptoui float %3332 to i32
  %3336 = fptoui float %3334 to i32
  %3337 = fadd fast float %3325, -1.000000e+00
  %3338 = fadd fast float %3326, -1.000000e+00
  %3339 = fptoui float %3337 to i32
  %3340 = fptoui float %3338 to i32
  %3341 = call i32 @dx.op.binary.i32(i32 40, i32 %3335, i32 %3339)  ; UMin(a,b)
  %3342 = call i32 @dx.op.binary.i32(i32 40, i32 %3336, i32 %3340)  ; UMin(a,b)
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 2
  %3345 = extractvalue %dx.types.CBufRet.f32 %3343, 3
  %3346 = fmul fast float %3344, %79
  %3347 = fsub fast float %3346, %3345
  %3348 = fadd fast float %3327, -1.000000e+00
  %3349 = call float @dx.op.binary.f32(i32 36, float %3347, float %3348)  ; FMin(a,b)
  %3350 = fptoui float %3349 to i32
  %3351 = fptoui float %3325 to i32
  %3352 = fptoui float %3326 to i32
  %3353 = mul i32 %3350, %3352
  %3354 = add i32 %3353, %3342
  %3355 = mul i32 %3354, %3351
  %3356 = add i32 %3355, %3341
  %3357 = shl i32 %3356, 2
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 1023
  %3361 = lshr i32 %3359, 10
  %3362 = icmp eq i32 %3360, 0
  br i1 %3362, label %3788, label %3363

; <label>:3363                                    ; preds = %3269
  %3364 = and i32 %3359, 1023
  br label %3365

; <label>:3365                                    ; preds = %3491, %3363
  %3366 = phi i32 [ %3441, %3491 ], [ 0, %3363 ]
  %3367 = phi float [ %3492, %3491 ], [ 0.000000e+00, %3363 ]
  %3368 = phi float [ %3493, %3491 ], [ %3283, %3363 ]
  %3369 = phi float [ %3494, %3491 ], [ %3281, %3363 ]
  %3370 = phi float [ %3495, %3491 ], [ 0.000000e+00, %3363 ]
  %3371 = phi float [ %3496, %3491 ], [ 0.000000e+00, %3363 ]
  %3372 = phi float [ %3497, %3491 ], [ %3272, %3363 ]
  %3373 = phi float [ %3498, %3491 ], [ %3273, %3363 ]
  %3374 = phi float [ %3499, %3491 ], [ %3274, %3363 ]
  %3375 = phi float [ %3500, %3491 ], [ %3309, %3363 ]
  %3376 = phi float [ %3501, %3491 ], [ %3310, %3363 ]
  %3377 = phi float [ %3502, %3491 ], [ %3311, %3363 ]
  %3378 = phi float [ %3503, %3491 ], [ %3280, %3363 ]
  %3379 = phi float [ %3504, %3491 ], [ %3279, %3363 ]
  %3380 = phi float [ %3505, %3491 ], [ 0.000000e+00, %3363 ]
  %3381 = phi float [ %3506, %3491 ], [ %3278, %3363 ]
  %3382 = phi float [ %3507, %3491 ], [ %3275, %3363 ]
  %3383 = phi float [ %3508, %3491 ], [ %3276, %3363 ]
  %3384 = phi float [ %3509, %3491 ], [ %3277, %3363 ]
  %3385 = add nuw nsw i32 %3366, %3361
  %3386 = shl i32 %3385, 2
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = shl i32 %3388, 8
  %3390 = or i32 %3389, 48
  %3391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3396 = or i32 %3389, 64
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = extractvalue %dx.types.ResRet.i32 %3397, 1
  %3400 = or i32 %3389, 80
  %3401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3401, 3
  %3404 = or i32 %3389, 96
  %3405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.f32 %3405, 1
  %3408 = extractvalue %dx.types.ResRet.f32 %3405, 2
  %3409 = extractvalue %dx.types.ResRet.f32 %3405, 3
  %3410 = or i32 %3389, 112
  %3411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 2
  %3413 = or i32 %3389, 128
  %3414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.ResRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.ResRet.f32 %3414, 2
  %3418 = extractvalue %dx.types.ResRet.f32 %3414, 3
  %3419 = or i32 %3389, 144
  %3420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3424 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3425 = or i32 %3389, 160
  %3426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.f32 %3426, 0
  %3428 = extractvalue %dx.types.ResRet.f32 %3426, 1
  %3429 = extractvalue %dx.types.ResRet.f32 %3426, 2
  %3430 = extractvalue %dx.types.ResRet.f32 %3426, 3
  %3431 = or i32 %3389, 192
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = or i32 %3389, 208
  %3435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = or i32 %3389, 248
  %3438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3441 = add nuw nsw i32 %3366, 1
  %3442 = bitcast float %3395 to i32
  %3443 = and i32 %3442, 2560
  %3444 = icmp eq i32 %3443, 0
  %3445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = extractvalue %dx.types.ResRet.f32 %3445, 3
  %3450 = call float @dx.op.dot4.f32(i32 56, float %3446, float %3447, float %3448, float %3449, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3451 = or i32 %3389, 16
  %3452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3454 = extractvalue %dx.types.ResRet.f32 %3452, 1
  %3455 = extractvalue %dx.types.ResRet.f32 %3452, 2
  %3456 = extractvalue %dx.types.ResRet.f32 %3452, 3
  %3457 = call float @dx.op.dot4.f32(i32 56, float %3453, float %3454, float %3455, float %3456, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3458 = or i32 %3389, 32
  %3459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.ResRet.f32 %3459, 2
  %3463 = extractvalue %dx.types.ResRet.f32 %3459, 3
  %3464 = call float @dx.op.dot4.f32(i32 56, float %3460, float %3461, float %3462, float %3463, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3465 = call float @dx.op.unary.f32(i32 27, float %3450)  ; Round_ni(value)
  %3466 = call float @dx.op.unary.f32(i32 6, float %3465)  ; FAbs(value)
  %3467 = call float @dx.op.unary.f32(i32 27, float %3457)  ; Round_ni(value)
  %3468 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3469 = call float @dx.op.unary.f32(i32 6, float %3464)  ; FAbs(value)
  %3470 = call float @dx.op.unary.f32(i32 27, float %3469)  ; Round_ni(value)
  %3471 = fadd fast float %3468, %3466
  %3472 = fadd fast float %3471, %3470
  %3473 = fcmp fast oeq float %3472, 0.000000e+00
  %3474 = call float @dx.op.dot4.f32(i32 56, float %3446, float %3447, float %3448, float %3449, float %3318, float %3319, float %3320, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3475 = call float @dx.op.dot4.f32(i32 56, float %3453, float %3454, float %3455, float %3456, float %3318, float %3319, float %3320, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3476 = call float @dx.op.dot4.f32(i32 56, float %3446, float %3447, float %3448, float %3449, float %3321, float %3322, float %3323, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3477 = call float @dx.op.dot4.f32(i32 56, float %3453, float %3454, float %3455, float %3456, float %3321, float %3322, float %3323, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3478 = fsub fast float %3474, %3450
  %3479 = fsub fast float %3476, %3450
  %3480 = fsub fast float %3475, %3457
  %3481 = fsub fast float %3477, %3457
  %3482 = call float @dx.op.dot3.f32(i32 55, float %3392, float %3393, float %3394, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3485 = fadd fast float %3484, %3482
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3488 = fcmp fast ogt float %3486, %3487
  %3489 = and i1 %3473, %3488
  %3490 = and i1 %3444, %3489
  br i1 %3490, label %3511, label %3491

; <label>:3491                                    ; preds = %3774, %3592, %3511, %3365
  %3492 = phi float [ %3367, %3511 ], [ %3595, %3592 ], [ %3595, %3774 ], [ %3367, %3365 ]
  %3493 = phi float [ %3368, %3511 ], [ %3368, %3592 ], [ %3749, %3774 ], [ %3368, %3365 ]
  %3494 = phi float [ %3369, %3511 ], [ %3369, %3592 ], [ %3747, %3774 ], [ %3369, %3365 ]
  %3495 = phi float [ %3370, %3511 ], [ %3370, %3592 ], [ %3719, %3774 ], [ %3370, %3365 ]
  %3496 = phi float [ %3371, %3511 ], [ %3371, %3592 ], [ %3717, %3774 ], [ %3371, %3365 ]
  %3497 = phi float [ %3372, %3511 ], [ %3372, %3592 ], [ %3784, %3774 ], [ %3372, %3365 ]
  %3498 = phi float [ %3373, %3511 ], [ %3373, %3592 ], [ %3785, %3774 ], [ %3373, %3365 ]
  %3499 = phi float [ %3374, %3511 ], [ %3374, %3592 ], [ %3786, %3774 ], [ %3374, %3365 ]
  %3500 = phi float [ %3375, %3511 ], [ %3375, %3592 ], [ %3698, %3774 ], [ %3375, %3365 ]
  %3501 = phi float [ %3376, %3511 ], [ %3376, %3592 ], [ %3699, %3774 ], [ %3376, %3365 ]
  %3502 = phi float [ %3377, %3511 ], [ %3377, %3592 ], [ %3700, %3774 ], [ %3377, %3365 ]
  %3503 = phi float [ %3378, %3511 ], [ %3378, %3592 ], [ %3727, %3774 ], [ %3378, %3365 ]
  %3504 = phi float [ %3379, %3511 ], [ %3379, %3592 ], [ %3724, %3774 ], [ %3379, %3365 ]
  %3505 = phi float [ %3380, %3511 ], [ %3380, %3592 ], [ %3721, %3774 ], [ %3380, %3365 ]
  %3506 = phi float [ %3381, %3511 ], [ %3381, %3592 ], [ %3715, %3774 ], [ %3381, %3365 ]
  %3507 = phi float [ %3382, %3511 ], [ %3382, %3592 ], [ %3710, %3774 ], [ %3382, %3365 ]
  %3508 = phi float [ %3383, %3511 ], [ %3383, %3592 ], [ %3711, %3774 ], [ %3383, %3365 ]
  %3509 = phi float [ %3384, %3511 ], [ %3384, %3592 ], [ %3712, %3774 ], [ %3384, %3365 ]
  %3510 = icmp eq i32 %3441, %3364
  br i1 %3510, label %3787, label %3365

; <label>:3511                                    ; preds = %3365
  %3512 = extractvalue %dx.types.ResRet.f32 %3411, 3
  %3513 = extractvalue %dx.types.ResRet.f32 %3411, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3401, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3517 = extractvalue %dx.types.ResRet.i32 %3397, 3
  %3518 = extractvalue %dx.types.ResRet.i32 %3397, 2
  %3519 = add i32 %3517, 0
  %3520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3519, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3522 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3520, %dx.types.Handle %3521, float %3450, float %3457, float undef, float undef, i32 0, i32 0, i32 undef, float %3478, float %3480, float undef, float %3479, float %3481, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = fmul fast float %3523, %3516
  %3525 = fadd fast float %3524, %3515
  %3526 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3527 = fmul fast float %3450, %3406
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %3407, float %3457, float %3527)  ; FMad(a,b,c)
  %3529 = fadd fast float %3528, %3514
  %3530 = fmul fast float %3450, %3408
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3409, float %3457, float %3530)  ; FMad(a,b,c)
  %3532 = fadd fast float %3531, %3513
  %3533 = fmul fast float %3478, %3406
  %3534 = call float @dx.op.tertiary.f32(i32 46, float %3407, float %3480, float %3533)  ; FMad(a,b,c)
  %3535 = fmul fast float %3478, %3408
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %3409, float %3480, float %3535)  ; FMad(a,b,c)
  %3537 = fmul fast float %3479, %3406
  %3538 = call float @dx.op.tertiary.f32(i32 46, float %3407, float %3481, float %3537)  ; FMad(a,b,c)
  %3539 = fmul fast float %3479, %3408
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3409, float %3481, float %3539)  ; FMad(a,b,c)
  %3541 = add i32 %3518, 0
  %3542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3541, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3543 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3542, %dx.types.Handle %3521, float %3529, float %3532, float undef, float undef, i32 0, i32 0, i32 undef, float %3534, float %3536, float undef, float %3538, float %3540, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = and i32 %3442, 1024
  %3546 = icmp ne i32 %3545, 0
  %3547 = fcmp fast ogt float %3544, 0x3FE0101020000000
  %3548 = uitofp i1 %3547 to float
  %3549 = select i1 %3546, float %3548, float %3544
  %3550 = and i32 %3442, 8192
  %3551 = icmp ne i32 %3550, 0
  %3552 = select i1 %3551, float %3512, float 1.000000e+00
  %3553 = fmul fast float %3450, 2.000000e+00
  %3554 = fadd fast float %3553, -1.000000e+00
  %3555 = call float @dx.op.unary.f32(i32 6, float %3554)  ; FAbs(value)
  %3556 = fmul fast float %3555, %3439
  %3557 = fsub fast float %3556, %3439
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = fmul fast float %3457, 2.000000e+00
  %3560 = fadd fast float %3559, -1.000000e+00
  %3561 = call float @dx.op.unary.f32(i32 6, float %3560)  ; FAbs(value)
  %3562 = fmul fast float %3561, %3440
  %3563 = fsub fast float %3562, %3440
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = fmul fast float %3469, %3402
  %3566 = fsub fast float %3565, %3402
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fmul fast float %3526, %3552
  %3569 = fmul fast float %3568, %3523
  %3570 = fmul fast float %3569, %3558
  %3571 = fmul fast float %3570, %3549
  %3572 = fmul fast float %3571, %3564
  %3573 = fmul fast float %3572, %3567
  %3574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3574, 1
  %3576 = extractvalue %dx.types.CBufRet.f32 %3574, 0
  %3577 = fsub fast float %3486, %3576
  %3578 = fmul fast float %3577, %3575
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = fmul fast float %3573, %3403
  %3581 = fadd fast float %3573, %3403
  %3582 = fmul fast float %3581, %3412
  %3583 = fsub fast float %3582, %3412
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = and i32 %3442, 128
  %3586 = icmp ne i32 %3585, 0
  %3587 = select i1 %3586, float %3584, float %3580
  %3588 = fmul fast float %3587, %3579
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 0
  %3591 = fcmp fast ugt float %3588, %3590
  br i1 %3591, label %3592, label %3491

; <label>:3592                                    ; preds = %3511
  %3593 = select i1 %3551, float %3588, float 0.000000e+00
  %3594 = fadd fast float %3593, %3367
  %3595 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  br i1 %3551, label %3491, label %3596

; <label>:3596                                    ; preds = %3592
  %3597 = and i32 %3442, 4
  %3598 = and i32 %3442, 8
  %3599 = add i32 %3398, 0
  %3600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3599, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3600, %dx.types.Handle %3601, float %3529, float %3532, float undef, float undef, i32 0, i32 0, i32 undef, float %3534, float %3536, float undef, float %3538, float %3540, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3607 = bitcast float %3424 to i32
  %3608 = and i32 %3607, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = lshr i32 %3607, 8
  %3611 = and i32 %3610, 255
  %3612 = uitofp i32 %3611 to float
  %3613 = fmul fast float %3606, %3609
  %3614 = fadd fast float %3613, %3612
  %3615 = fmul fast float %3614, 0x3F70101000000000
  %3616 = add i32 %3399, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3616, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3617, %dx.types.Handle %3601, float %3529, float %3532, float undef, float undef, i32 0, i32 0, i32 undef, float %3534, float %3536, float undef, float %3538, float %3540, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = bitcast float %3418 to i32
  %3624 = and i32 %3623, 255
  %3625 = uitofp i32 %3624 to float
  %3626 = lshr i32 %3623, 8
  %3627 = and i32 %3626, 255
  %3628 = uitofp i32 %3627 to float
  %3629 = lshr i32 %3623, 16
  %3630 = and i32 %3629, 255
  %3631 = uitofp i32 %3630 to float
  %3632 = fmul fast float %3631, 0x3F70101000000000
  %3633 = fmul fast float %3619, %3625
  %3634 = fadd fast float %3633, %3628
  %3635 = fmul fast float %3634, 0x3F70101000000000
  %3636 = fadd fast float %3620, -5.000000e-01
  %3637 = fadd fast float %3622, -5.000000e-01
  %3638 = fmul fast float %3636, %3632
  %3639 = fmul fast float %3637, %3632
  %3640 = fadd fast float %3638, 5.000000e-01
  %3641 = fadd fast float %3639, 5.000000e-01
  %3642 = fmul fast float %3603, %3427
  %3643 = fmul fast float %3604, %3428
  %3644 = fmul fast float %3605, %3429
  %3645 = fmul fast float %3640, 2.000000e+00
  %3646 = fadd fast float %3645, -1.000000e+00
  %3647 = fmul fast float %3641, 2.000000e+00
  %3648 = fadd fast float %3647, -1.000000e+00
  %3649 = fadd fast float %3646, %3648
  %3650 = fmul fast float %3649, 5.000000e-01
  %3651 = fsub fast float %3646, %3648
  %3652 = fmul fast float %3651, 5.000000e-01
  %3653 = call float @dx.op.unary.f32(i32 6, float %3650)  ; FAbs(value)
  %3654 = fsub fast float 1.000000e+00, %3653
  %3655 = call float @dx.op.unary.f32(i32 6, float %3652)  ; FAbs(value)
  %3656 = fsub fast float %3654, %3655
  %3657 = call float @dx.op.dot3.f32(i32 55, float %3650, float %3652, float %3656, float %3650, float %3652, float %3656)  ; Dot3(ax,ay,az,bx,by,bz)
  %3658 = call float @dx.op.unary.f32(i32 25, float %3657)  ; Rsqrt(value)
  %3659 = fmul fast float %3650, %3658
  %3660 = fmul fast float %3652, %3658
  %3661 = fmul fast float %3658, %3656
  %3662 = fmul fast float %3661, %3392
  %3663 = fmul fast float %3661, %3393
  %3664 = fmul fast float %3661, %3394
  %3665 = fmul fast float %3659, %3415
  %3666 = fmul fast float %3659, %3416
  %3667 = fmul fast float %3659, %3417
  %3668 = fadd fast float %3665, %3662
  %3669 = fadd fast float %3666, %3663
  %3670 = fadd fast float %3667, %3664
  %3671 = fmul fast float %3660, %3421
  %3672 = fmul fast float %3660, %3422
  %3673 = fmul fast float %3660, %3423
  %3674 = fadd fast float %3668, %3671
  %3675 = fadd fast float %3669, %3672
  %3676 = fadd fast float %3670, %3673
  %3677 = call float @dx.op.dot3.f32(i32 55, float %3674, float %3675, float %3676, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %3678 = call float @dx.op.unary.f32(i32 25, float %3677)  ; Rsqrt(value)
  %3679 = fmul fast float %3674, %3678
  %3680 = fmul fast float %3675, %3678
  %3681 = fmul fast float %3676, %3678
  %3682 = icmp ne i32 %3598, 0
  %3683 = select i1 %3682, float 1.000000e+00, float 0.000000e+00
  %3684 = fmul fast float %3588, %3683
  %3685 = and i32 %3442, 1
  %3686 = icmp eq i32 %3685, 0
  br i1 %3686, label %3687, label %3691

; <label>:3687                                    ; preds = %3596
  %3688 = fsub fast float %3679, %3375
  %3689 = fsub fast float %3680, %3376
  %3690 = fsub fast float %3681, %3377
  br label %3691

; <label>:3691                                    ; preds = %3687, %3596
  %3692 = phi float [ %3688, %3687 ], [ %3679, %3596 ]
  %3693 = phi float [ %3689, %3687 ], [ %3680, %3596 ]
  %3694 = phi float [ %3690, %3687 ], [ %3681, %3596 ]
  %3695 = fmul float %3694, %3684
  %3696 = fmul float %3693, %3684
  %3697 = fmul float %3692, %3684
  %3698 = fadd fast float %3697, %3375
  %3699 = fadd fast float %3696, %3376
  %3700 = fadd fast float %3695, %3377
  %3701 = icmp ne i32 %3597, 0
  %3702 = select i1 %3701, float 1.000000e+00, float 0.000000e+00
  %3703 = fmul fast float %3588, %3702
  %3704 = fsub fast float %3642, %3382
  %3705 = fsub fast float %3643, %3383
  %3706 = fsub fast float %3644, %3384
  %3707 = fmul fast float %3704, %3703
  %3708 = fmul fast float %3705, %3703
  %3709 = fmul fast float %3706, %3703
  %3710 = fadd fast float %3707, %3382
  %3711 = fadd fast float %3708, %3383
  %3712 = fadd fast float %3709, %3384
  %3713 = fsub fast float %3615, %3381
  %3714 = fmul fast float %3713, %3703
  %3715 = fadd fast float %3714, %3381
  %3716 = fmul fast float %3703, %3371
  %3717 = fsub fast float %3371, %3716
  %3718 = fmul fast float %3703, %3370
  %3719 = fsub fast float %3370, %3718
  %3720 = fadd fast float %3588, %3380
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fsub fast float %3635, %3379
  %3723 = fmul fast float %3722, %3684
  %3724 = fadd fast float %3723, %3379
  %3725 = fsub fast float %3621, %3378
  %3726 = fmul fast float %3725, %3684
  %3727 = fadd fast float %3726, %3378
  %3728 = call float @dx.op.dot3.f32(i32 55, float %3642, float %3643, float %3644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 0
  %3731 = extractvalue %dx.types.CBufRet.f32 %3729, 1
  %3732 = fmul fast float %3731, %3728
  %3733 = fadd fast float %3732, %3730
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = bitcast float %3430 to i32
  %3736 = and i32 %3735, 65535
  %3737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3736)  ; LegacyF16ToF32(value)
  %3738 = lshr i32 %3735, 16
  %3739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3738)  ; LegacyF16ToF32(value)
  %3740 = fcmp fast oge float %3737, 0.000000e+00
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 0
  %3743 = select i1 %3740, float %3737, float %3742
  %3744 = fadd fast float %3743, %3739
  %3745 = fsub fast float %3734, %3369
  %3746 = fmul fast float %3745, %3588
  %3747 = fadd fast float %3746, %3369
  %3748 = fmul fast float %3744, %3588
  %3749 = call float @dx.op.binary.f32(i32 35, float %3368, float %3748)  ; FMax(a,b)
  %3750 = and i32 %3442, 16
  %3751 = icmp eq i32 %3750, 0
  br i1 %3751, label %3774, label %3752

; <label>:3752                                    ; preds = %3691
  %3753 = bitcast float %3436 to i32
  %3754 = add i32 %3433, 0
  %3755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3754, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3756 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3755, %dx.types.Handle %3601, float %3529, float %3532, float undef, float undef, i32 0, i32 0, i32 undef, float %3534, float %3536, float undef, float %3538, float %3540, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3759 = extractvalue %dx.types.ResRet.f32 %3756, 2
  %3760 = and i32 %3753, 65535
  %3761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3760)  ; LegacyF16ToF32(value)
  %3762 = fmul fast float %3757, %3427
  %3763 = fmul fast float %3758, %3428
  %3764 = fmul fast float %3759, %3429
  %3765 = and i32 %3442, 16384
  %3766 = icmp ne i32 %3765, 0
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = select i1 %3766, float %3768, float 1.000000e+00
  %3770 = fmul fast float %3769, %3761
  %3771 = fmul fast float %3762, %3770
  %3772 = fmul fast float %3763, %3770
  %3773 = fmul fast float %3764, %3770
  br label %3774

; <label>:3774                                    ; preds = %3752, %3691
  %3775 = phi float [ %3771, %3752 ], [ 0.000000e+00, %3691 ]
  %3776 = phi float [ %3772, %3752 ], [ 0.000000e+00, %3691 ]
  %3777 = phi float [ %3773, %3752 ], [ 0.000000e+00, %3691 ]
  %3778 = fsub fast float %3775, %3372
  %3779 = fsub fast float %3776, %3373
  %3780 = fsub fast float %3777, %3374
  %3781 = fmul fast float %3778, %3588
  %3782 = fmul fast float %3779, %3588
  %3783 = fmul fast float %3780, %3588
  %3784 = fadd fast float %3781, %3372
  %3785 = fadd fast float %3782, %3373
  %3786 = fadd fast float %3783, %3374
  br label %3491

; <label>:3787                                    ; preds = %3491
  br label %3788

; <label>:3788                                    ; preds = %3787, %3269
  %3789 = phi float [ 0.000000e+00, %3269 ], [ %3492, %3787 ]
  %3790 = phi float [ %3283, %3269 ], [ %3493, %3787 ]
  %3791 = phi float [ %3281, %3269 ], [ %3494, %3787 ]
  %3792 = phi float [ 0.000000e+00, %3269 ], [ %3495, %3787 ]
  %3793 = phi float [ 0.000000e+00, %3269 ], [ %3496, %3787 ]
  %3794 = phi float [ %3272, %3269 ], [ %3497, %3787 ]
  %3795 = phi float [ %3273, %3269 ], [ %3498, %3787 ]
  %3796 = phi float [ %3274, %3269 ], [ %3499, %3787 ]
  %3797 = phi float [ %3309, %3269 ], [ %3500, %3787 ]
  %3798 = phi float [ %3310, %3269 ], [ %3501, %3787 ]
  %3799 = phi float [ %3311, %3269 ], [ %3502, %3787 ]
  %3800 = phi float [ %3280, %3269 ], [ %3503, %3787 ]
  %3801 = phi float [ %3279, %3269 ], [ %3504, %3787 ]
  %3802 = phi float [ 0.000000e+00, %3269 ], [ %3505, %3787 ]
  %3803 = phi float [ %3278, %3269 ], [ %3506, %3787 ]
  %3804 = phi float [ %3275, %3269 ], [ %3507, %3787 ]
  %3805 = phi float [ %3276, %3269 ], [ %3508, %3787 ]
  %3806 = phi float [ %3277, %3269 ], [ %3509, %3787 ]
  %3807 = call float @dx.op.dot3.f32(i32 55, float %3797, float %3798, float %3799, float %3797, float %3798, float %3799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3808 = call float @dx.op.unary.f32(i32 25, float %3807)  ; Rsqrt(value)
  %3809 = fmul fast float %3808, %3797
  %3810 = fmul fast float %3808, %3798
  %3811 = fmul fast float %3808, %3799
  %3812 = fadd fast float %3802, %809
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = call float @dx.op.dot3.f32(i32 55, float %3809, float %3810, float %3811, float %3809, float %3810, float %3811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3815 = call float @dx.op.unary.f32(i32 25, float %3814)  ; Rsqrt(value)
  %3816 = fmul fast float %3815, %3809
  %3817 = fmul fast float %3815, %3810
  %3818 = fmul fast float %3815, %3811
  %3819 = fadd fast float %3803, 0xBFB99999A0000000
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = fmul fast float %3820, 0x3FF1C71C80000000
  %3822 = call float @dx.op.binary.f32(i32 36, float %3803, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3823 = fsub fast float 1.000000e+00, %3821
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3825 = fmul fast float %3824, %3804
  %3826 = fmul fast float %3824, %3805
  %3827 = fmul fast float %3824, %3806
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3830 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3831 = fmul fast float %3821, %3804
  %3832 = fmul fast float %3821, %3805
  %3833 = fmul fast float %3821, %3806
  %3834 = fadd fast float %3831, %3822
  %3835 = fadd fast float %3832, %3822
  %3836 = fadd fast float %3833, %3822
  %3837 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3838 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3839 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3840 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.i32 %3841, 3
  %3843 = and i32 %3842, 8
  %3844 = icmp ne i32 %3843, 0
  %3845 = call float @dx.op.binary.f32(i32 35, float %3828, float %3804)  ; FMax(a,b)
  %3846 = call float @dx.op.binary.f32(i32 35, float %3829, float %3804)  ; FMax(a,b)
  %3847 = call float @dx.op.binary.f32(i32 35, float %3830, float %3804)  ; FMax(a,b)
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3828, float %3829, float %3830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = select i1 %202, float %3804, float %3828
  %3850 = select i1 %202, float %3848, float %3829
  %3851 = select i1 %202, float 1.000000e+00, float %3830
  %3852 = select i1 %3844, float %3845, float %3849
  %3853 = select i1 %3844, float %3846, float %3850
  %3854 = select i1 %3844, float %3847, float %3851
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.CBufRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.CBufRet.f32 %3855, 2
  %3859 = fadd fast float %3856, %131
  %3860 = fadd fast float %3857, %132
  %3861 = fadd fast float %3858, %133
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.CBufRet.f32 %3862, 1
  %3865 = fsub fast float %3859, %3863
  %3866 = fsub fast float %3860, %3864
  %3867 = fmul fast float %3865, %3865
  %3868 = fmul fast float %3866, %3866
  %3869 = fadd fast float %3867, %3868
  %3870 = call float @dx.op.unary.f32(i32 24, float %3869)  ; Sqrt(value)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3862, 2
  %3872 = fcmp fast olt float %3870, %3871
  br i1 %3872, label %3873, label %3940

; <label>:3873                                    ; preds = %3788
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 0
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.CBufRet.f32 %3874, 1
  %3881 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3882 = extractvalue %dx.types.CBufRet.f32 %3878, 1
  %3883 = extractvalue %dx.types.CBufRet.f32 %3874, 3
  %3884 = extractvalue %dx.types.CBufRet.f32 %3876, 3
  %3885 = extractvalue %dx.types.CBufRet.f32 %3878, 3
  %3886 = fadd fast float %3883, %3859
  %3887 = fadd fast float %3884, %3860
  %3888 = fadd fast float %3885, %3861
  %3889 = fmul fast float %3886, %3875
  %3890 = call float @dx.op.tertiary.f32(i32 46, float %3887, float %3877, float %3889)  ; FMad(a,b,c)
  %3891 = call float @dx.op.tertiary.f32(i32 46, float %3888, float %3879, float %3890)  ; FMad(a,b,c)
  %3892 = fmul fast float %3886, %3880
  %3893 = call float @dx.op.tertiary.f32(i32 46, float %3887, float %3881, float %3892)  ; FMad(a,b,c)
  %3894 = call float @dx.op.tertiary.f32(i32 46, float %3888, float %3882, float %3893)  ; FMad(a,b,c)
  %3895 = fsub fast float %3891, %3883
  %3896 = fsub fast float %3894, %3884
  %3897 = fsub fast float %3895, %3863
  %3898 = fadd fast float %3897, %3871
  %3899 = fsub fast float %3896, %3864
  %3900 = fadd fast float %3899, %3871
  %3901 = extractvalue %dx.types.CBufRet.f32 %3862, 3
  %3902 = fmul fast float %3898, %3901
  %3903 = fmul fast float %3900, %3901
  %3904 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3906 = fsub fast float 1.000000e+00, %3904
  %3907 = fsub fast float 1.000000e+00, %3905
  %3908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3906, float %3907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = fcmp fast ugt float %3909, 0.000000e+00
  br i1 %3910, label %3911, label %4214

; <label>:3911                                    ; preds = %3873
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 2
  %3914 = fmul fast float %3913, %3909
  %3915 = extractvalue %dx.types.CBufRet.f32 %3912, 3
  %3916 = fadd fast float %3915, %3914
  %3917 = extractvalue %dx.types.CBufRet.f32 %3878, 2
  %3918 = fadd fast float %3916, %3885
  %3919 = fmul fast float %3891, %3879
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %3894, float %3882, float %3919)  ; FMad(a,b,c)
  %3921 = call float @dx.op.tertiary.f32(i32 46, float %3918, float %3917, float %3920)  ; FMad(a,b,c)
  %3922 = fsub fast float %3921, %3885
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 2
  %3925 = fsub fast float %3922, %3924
  %3926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3906, float %3907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3926, 2
  %3930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3906, float %3907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3930, 2
  %3934 = fadd fast float %3931, %3927
  %3935 = fmul fast float %3934, 0x3F847AE140000000
  %3936 = fadd fast float %3932, %3928
  %3937 = fmul fast float %3936, 0x3F847AE140000000
  %3938 = fadd fast float %3933, %3929
  %3939 = fmul fast float %3938, 0x3F847AE140000000
  br label %4214

; <label>:3940                                    ; preds = %3788
  %3941 = and i32 %178, 1
  %3942 = icmp eq i32 %3941, 0
  br i1 %3942, label %4214, label %3943

; <label>:3943                                    ; preds = %3940
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3951 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3953 = extractvalue %dx.types.CBufRet.f32 %3944, 3
  %3954 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3955 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3956 = fadd fast float %3953, %3859
  %3957 = fadd fast float %3954, %3860
  %3958 = fadd fast float %3955, %3861
  %3959 = fmul fast float %3956, %3945
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3947, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3949, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3956, %3950
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3951, float %3962)  ; FMad(a,b,c)
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3952, float %3963)  ; FMad(a,b,c)
  %3965 = fsub fast float %3961, %3953
  %3966 = fsub fast float %3964, %3954
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.CBufRet.f32 %3967, 2
  %3971 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.i32 %3974, 0
  %3976 = extractvalue %dx.types.CBufRet.i32 %3974, 1
  %3977 = udiv i32 %3976, %3975
  %3978 = fsub fast float %3965, %3968
  %3979 = fsub fast float %3966, %3969
  %3980 = call float @dx.op.binary.f32(i32 35, float %3978, float 0.000000e+00)  ; FMax(a,b)
  %3981 = call float @dx.op.binary.f32(i32 35, float %3979, float 0.000000e+00)  ; FMax(a,b)
  %3982 = call float @dx.op.binary.f32(i32 36, float %3980, float %3970)  ; FMin(a,b)
  %3983 = call float @dx.op.binary.f32(i32 36, float %3981, float %3971)  ; FMin(a,b)
  %3984 = add i32 %3975, -1
  %3985 = add i32 %3977, -1
  %3986 = fmul fast float %3982, %3973
  %3987 = fmul fast float %3983, %3973
  %3988 = fptoui float %3986 to i32
  %3989 = fptoui float %3987 to i32
  %3990 = call i32 @dx.op.binary.i32(i32 40, i32 %3988, i32 %3984)  ; UMin(a,b)
  %3991 = call i32 @dx.op.binary.i32(i32 40, i32 %3989, i32 %3985)  ; UMin(a,b)
  %3992 = mul i32 %3991, %3975
  %3993 = add i32 %3992, %3990
  %3994 = shl i32 %3993, 2
  %3995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3994, i32 undef)  ; BufferLoad(srv,index,wot)
  %3996 = extractvalue %dx.types.ResRet.i32 %3995, 0
  %3997 = icmp eq i32 %3996, -1
  br i1 %3997, label %4214, label %3998

; <label>:3998                                    ; preds = %3943
  %3999 = mul i32 %3996, 148
  %4000 = add i32 %3999, 4
  %4001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = add i32 %3999, 8
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = add i32 %3999, 36
  %4007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = add i32 %3999, 60
  %4010 = add i32 %3999, 92
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = add i32 %3999, 116
  %4014 = fsub fast float %3965, %4002
  %4015 = fsub fast float %3966, %4005
  %4016 = fmul fast float %3973, %4014
  %4017 = fmul fast float %3973, %4015
  %4018 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4019 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4020 = fsub fast float 1.000000e+00, %4019
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4023 = call float @dx.op.unary.f32(i32 83, float %4018)  ; DerivCoarseX(value)
  %4024 = call float @dx.op.unary.f32(i32 83, float %4020)  ; DerivCoarseX(value)
  %4025 = call float @dx.op.unary.f32(i32 84, float %4018)  ; DerivCoarseY(value)
  %4026 = call float @dx.op.unary.f32(i32 84, float %4020)  ; DerivCoarseY(value)
  %4027 = fmul fast float %4023, %4022
  %4028 = fmul fast float %4024, %4022
  %4029 = fmul fast float %4025, %4022
  %4030 = fmul fast float %4026, %4022
  %4031 = call float @dx.op.dot2.f32(i32 54, float %4029, float %4030, float %4029, float %4030)  ; Dot2(ax,ay,bx,by)
  %4032 = call float @dx.op.dot2.f32(i32 54, float %4027, float %4028, float %4027, float %4028)  ; Dot2(ax,ay,bx,by)
  %4033 = call float @dx.op.binary.f32(i32 35, float %4032, float %4031)  ; FMax(a,b)
  %4034 = call float @dx.op.unary.f32(i32 23, float %4033)  ; Log(value)
  %4035 = fmul fast float %4034, 5.000000e-01
  %4036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.f32 %4036, 1
  %4038 = fadd fast float %4037, %4035
  %4039 = call float @dx.op.binary.f32(i32 35, float %4038, float 0.000000e+00)  ; FMax(a,b)
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 3
  %4042 = fadd fast float %4041, %4039
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4045 = fadd fast float %4042, %4044
  %4046 = add i32 %4012, 0
  %4047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4046, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4048 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4047, i32 0)  ; GetDimensions(handle,mipLevel)
  %4049 = extractvalue %dx.types.Dimensions %4048, 0
  %4050 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4049)  ; FirstbitLo(value)
  %4051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.i32 %4051, 1
  %4053 = sub nsw i32 %4052, %4050
  %4054 = sitofp i32 %4053 to float
  %4055 = fsub fast float %4045, %4054
  %4056 = call float @dx.op.binary.f32(i32 35, float %4055, float 0.000000e+00)  ; FMax(a,b)
  %4057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4047, %dx.types.Handle %37, float %4018, float %4020, float %4008, float undef, i32 0, i32 0, i32 undef, float %4056)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4058 = extractvalue %dx.types.ResRet.f32 %4057, 0
  %4059 = fcmp ule float %4058, 0x3FE0101020000000
  %4060 = extractvalue %dx.types.CBufRet.i32 %4051, 0
  %4061 = and i32 %4060, 128
  %4062 = icmp ne i32 %4061, 0
  %4063 = and i1 %4059, %4062
  br i1 %4063, label %4214, label %4064

; <label>:4064                                    ; preds = %3998
  %4065 = add i32 %3999, 20
  %4066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4065, i32 undef)  ; BufferLoad(srv,index,wot)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = add i32 %3999, 24
  %4069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = add i32 %3999, 40
  %4072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4071, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = add i32 %3999, 96
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4074, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4079 = fmul fast float %4078, %4018
  %4080 = fmul fast float %4078, %4020
  %4081 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4082 = fadd fast float %4079, %4081
  %4083 = fadd fast float %4080, %4081
  %4084 = add i32 %4076, 0
  %4085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4084, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4086 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4085, i32 0)  ; GetDimensions(handle,mipLevel)
  %4087 = extractvalue %dx.types.Dimensions %4086, 0
  %4088 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4087)  ; FirstbitLo(value)
  %4089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.i32 %4089, 1
  %4091 = sub nsw i32 %4090, %4088
  %4092 = sitofp i32 %4091 to float
  %4093 = fsub fast float %4042, %4092
  %4094 = call float @dx.op.binary.f32(i32 35, float %4093, float 0.000000e+00)  ; FMax(a,b)
  %4095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4085, %dx.types.Handle %37, float %4082, float %4083, float %4073, float undef, i32 0, i32 0, i32 undef, float %4094)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = fmul fast float %4096, %4067
  %4098 = fadd fast float %4097, %4070
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.CBufRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 3
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4107 = extractvalue %dx.types.CBufRet.f32 %4099, 3
  %4108 = fadd fast float %4104, %3965
  %4109 = fadd fast float %4106, %3966
  %4110 = fadd fast float %4098, %4107
  %4111 = fmul fast float %4108, %4100
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4109, float %4101, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4102, float %4112)  ; FMad(a,b,c)
  %4114 = fsub fast float %4113, %4107
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4117 = fsub fast float %4114, %4116
  %4118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.i32 %4118, 0
  %4120 = call i32 @dx.op.binary.i32(i32 40, i32 %3996, i32 %4119)  ; UMin(a,b)
  %4121 = mul i32 %4120, 36
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = add i32 %4121, 4
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = fmul fast float %4126, %4018
  %4128 = fmul fast float %4126, %4020
  %4129 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4130 = fadd fast float %4127, %4129
  %4131 = fadd fast float %4128, %4129
  %4132 = icmp eq i32 %4123, 0
  br i1 %4132, label %4201, label %4133

; <label>:4133                                    ; preds = %4064
  br label %4134

; <label>:4134                                    ; preds = %4191, %4133
  %4135 = phi float [ %4192, %4191 ], [ 0.000000e+00, %4133 ]
  %4136 = phi float [ %4193, %4191 ], [ 0.000000e+00, %4133 ]
  %4137 = phi float [ %4194, %4191 ], [ 0.000000e+00, %4133 ]
  %4138 = phi float [ %4195, %4191 ], [ 0.000000e+00, %4133 ]
  %4139 = phi float [ %4196, %4191 ], [ 0.000000e+00, %4133 ]
  %4140 = phi float [ %4197, %4191 ], [ 0.000000e+00, %4133 ]
  %4141 = phi i32 [ %4198, %4191 ], [ 0, %4133 ]
  %4142 = shl i32 %4141, 2
  %4143 = add i32 %4009, %4142
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = add i32 %4013, %4142
  %4147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.i32 %4147, 0
  %4149 = add i32 %4148, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4150, i32 0)  ; GetDimensions(handle,mipLevel)
  %4152 = extractvalue %dx.types.Dimensions %4151, 0
  %4153 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4152)  ; FirstbitLo(value)
  %4154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.i32 %4154, 1
  %4156 = sub nsw i32 %4155, %4153
  %4157 = sitofp i32 %4156 to float
  %4158 = fsub fast float %4042, %4157
  %4159 = call float @dx.op.binary.f32(i32 35, float %4158, float 0.000000e+00)  ; FMax(a,b)
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4150, %dx.types.Handle %37, float %4130, float %4131, float %4145, float undef, i32 0, i32 0, i32 undef, float %4159)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = fcmp fast ogt float %4161, 0.000000e+00
  br i1 %4162, label %4163, label %4191

; <label>:4163                                    ; preds = %4134
  %4164 = add i32 %4124, %4142
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = and i32 %4166, 32767
  %4168 = mul nuw nsw i32 %4167, 928
  %4169 = add nuw nsw i32 %4168, 48
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = add nuw nsw i32 %4168, 60
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4179 = fmul fast float %4171, %4161
  %4180 = fmul fast float %4172, %4161
  %4181 = fmul fast float %4173, %4161
  %4182 = fadd fast float %4179, %4135
  %4183 = fadd fast float %4180, %4136
  %4184 = fadd fast float %4181, %4137
  %4185 = fmul fast float %4176, %4161
  %4186 = fmul fast float %4177, %4161
  %4187 = fmul fast float %4178, %4161
  %4188 = fadd fast float %4185, %4138
  %4189 = fadd fast float %4186, %4139
  %4190 = fadd fast float %4187, %4140
  br label %4191

; <label>:4191                                    ; preds = %4163, %4134
  %4192 = phi float [ %4182, %4163 ], [ %4135, %4134 ]
  %4193 = phi float [ %4183, %4163 ], [ %4136, %4134 ]
  %4194 = phi float [ %4184, %4163 ], [ %4137, %4134 ]
  %4195 = phi float [ %4188, %4163 ], [ %4138, %4134 ]
  %4196 = phi float [ %4189, %4163 ], [ %4139, %4134 ]
  %4197 = phi float [ %4190, %4163 ], [ %4140, %4134 ]
  %4198 = add nuw i32 %4141, 1
  %4199 = icmp eq i32 %4198, %4123
  br i1 %4199, label %4200, label %4134

; <label>:4200                                    ; preds = %4191
  br label %4201

; <label>:4201                                    ; preds = %4200, %4064
  %4202 = phi float [ 0.000000e+00, %4064 ], [ %4192, %4200 ]
  %4203 = phi float [ 0.000000e+00, %4064 ], [ %4193, %4200 ]
  %4204 = phi float [ 0.000000e+00, %4064 ], [ %4194, %4200 ]
  %4205 = phi float [ 0.000000e+00, %4064 ], [ %4195, %4200 ]
  %4206 = phi float [ 0.000000e+00, %4064 ], [ %4196, %4200 ]
  %4207 = phi float [ 0.000000e+00, %4064 ], [ %4197, %4200 ]
  %4208 = fadd fast float %4205, %4202
  %4209 = fmul fast float %4208, 0x3F847AE140000000
  %4210 = fadd fast float %4206, %4203
  %4211 = fmul fast float %4210, 0x3F847AE140000000
  %4212 = fadd fast float %4207, %4204
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  br label %4214

; <label>:4214                                    ; preds = %4201, %3998, %3943, %3940, %3911, %3873
  %4215 = phi float [ %3925, %3911 ], [ -1.310720e+05, %3873 ], [ %4117, %4201 ], [ -1.310720e+05, %3943 ], [ -1.310720e+05, %3998 ], [ -1.310720e+05, %3940 ]
  %4216 = phi float [ %3935, %3911 ], [ 0.000000e+00, %3873 ], [ %4209, %4201 ], [ 0.000000e+00, %3943 ], [ 0.000000e+00, %3998 ], [ 0.000000e+00, %3940 ]
  %4217 = phi float [ %3937, %3911 ], [ 0.000000e+00, %3873 ], [ %4211, %4201 ], [ 0.000000e+00, %3943 ], [ 0.000000e+00, %3998 ], [ 0.000000e+00, %3940 ]
  %4218 = phi float [ %3939, %3911 ], [ 0.000000e+00, %3873 ], [ %4213, %4201 ], [ 0.000000e+00, %3943 ], [ 0.000000e+00, %3998 ], [ 0.000000e+00, %3940 ]
  %4219 = phi i1 [ true, %3911 ], [ false, %3873 ], [ true, %4201 ], [ false, %3943 ], [ false, %3998 ], [ false, %3940 ]
  %4220 = and i32 %178, 3
  %4221 = icmp eq i32 %4220, 1
  %4222 = select i1 %4221, float 1.000000e+00, float 0.000000e+00
  %4223 = fsub fast float %4215, %133
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4225 = select i1 %4219, float %4224, float 1.000000e+00
  %4226 = fmul fast float %4225, %4222
  %4227 = icmp eq i32 %4220, 3
  %4228 = select i1 %4227, float 1.000000e+00, float %4226
  %4229 = call float @dx.op.binary.f32(i32 35, float %3789, float %4228)  ; FMax(a,b)
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = fcmp fast une float %4230, 0.000000e+00
  %4232 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4233 = call float @dx.op.unary.f32(i32 25, float %4232)  ; Rsqrt(value)
  br i1 %4231, label %4241, label %4234

; <label>:4234                                    ; preds = %4214
  %4235 = fmul fast float %4233, %131
  %4236 = fmul fast float %4233, %132
  %4237 = fmul fast float %4233, %133
  %4238 = fsub fast float -0.000000e+00, %4235
  %4239 = fsub fast float -0.000000e+00, %4236
  %4240 = fsub fast float -0.000000e+00, %4237
  br label %4409

; <label>:4241                                    ; preds = %4214
  %4242 = fmul fast float %131, %4233
  %4243 = fsub fast float -0.000000e+00, %4242
  %4244 = fmul fast float %132, %4233
  %4245 = fsub fast float -0.000000e+00, %4244
  %4246 = fmul fast float %133, %4233
  %4247 = fsub fast float -0.000000e+00, %4246
  %4248 = call float @dx.op.dot3.f32(i32 55, float %4243, float %4245, float %4247, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %4249 = fmul fast float %4230, 2.500000e+00
  %4250 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4251 = fmul fast float %4230, 0x4013FFFFE0000000
  %4252 = fadd fast float %4251, 0xBFFFFFFFE0000000
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fmul fast float %4230, 0x4004000020000000
  %4255 = fadd fast float %4254, 0xBFF8000040000000
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4258 = fmul fast float %3819, 1.000000e+01
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4260 = fmul fast float %4259, 2.000000e+00
  %4261 = fsub fast float 3.000000e+00, %4260
  %4262 = fmul fast float %4259, %4259
  %4263 = fmul fast float %4262, %4261
  %4264 = fsub fast float 1.000000e+00, %4263
  %4265 = fsub fast float 0x3FE3333340000000, %3840
  %4266 = fmul fast float %4265, 0x400AAAAAA0000000
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = fmul fast float %4264, %4267
  %4269 = fmul fast float %3852, 0x3FEA2B8620000000
  %4270 = fmul fast float %3853, 0x3FEA2B8620000000
  %4271 = fmul fast float %3854, 0x3FEA2B8620000000
  %4272 = fadd fast float %4269, 0x3FC81DFBA0000000
  %4273 = fmul fast float %4272, %3852
  %4274 = fadd fast float %4273, 0x3F910E6020000000
  %4275 = fadd fast float %4270, 0x3FC81DFBA0000000
  %4276 = fmul fast float %4275, %3853
  %4277 = fadd fast float %4276, 0x3F910E6020000000
  %4278 = fadd fast float %4271, 0x3FC81DFBA0000000
  %4279 = fmul fast float %4278, %3854
  %4280 = fadd fast float %4279, 0x3F910E6020000000
  %4281 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = fsub fast float %4281, %3852
  %4285 = fsub fast float %4282, %3853
  %4286 = fsub fast float %4283, %3854
  %4287 = fmul fast float %4284, %4257
  %4288 = fmul fast float %4287, %4268
  %4289 = fmul fast float %4285, %4257
  %4290 = fmul fast float %4289, %4268
  %4291 = fmul fast float %4286, %4257
  %4292 = fmul fast float %4291, %4268
  %4293 = fadd fast float %4288, %3852
  %4294 = fadd fast float %4290, %3853
  %4295 = fadd fast float %4292, %3854
  %4296 = fmul fast float %3800, %3800
  %4297 = fmul fast float %4296, %4296
  %4298 = fadd fast float %4253, 1.000000e+00
  %4299 = fsub fast float %4298, %4268
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = fsub fast float 1.000000e+00, %4297
  %4304 = call float @dx.op.binary.f32(i32 36, float %4300, float %4303)  ; FMin(a,b)
  %4305 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4306 = call float @dx.op.binary.f32(i32 35, float %4304, float %4305)  ; FMax(a,b)
  %4307 = fadd fast float %4302, 0xBFE4CCCCC0000000
  %4308 = fmul fast float %4307, 0x4006DB6DA0000000
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = fmul fast float %4309, 2.000000e+00
  %4311 = fsub fast float 3.000000e+00, %4310
  %4312 = bitcast float %3837 to i32
  %4313 = ashr i32 %4312, 1
  %4314 = add nsw i32 %4313, 532487669
  %4315 = bitcast i32 %4314 to float
  %4316 = fsub fast float 1.000000e+00, %4315
  %4317 = bitcast float %4316 to i32
  %4318 = sub nsw i32 2129859010, %4317
  %4319 = bitcast i32 %4318 to float
  %4320 = fmul fast float %4319, 2.000000e+00
  %4321 = bitcast float %3838 to i32
  %4322 = ashr i32 %4321, 1
  %4323 = add nsw i32 %4322, 532487669
  %4324 = bitcast i32 %4323 to float
  %4325 = fsub fast float 1.000000e+00, %4324
  %4326 = bitcast float %4325 to i32
  %4327 = sub nsw i32 2129859010, %4326
  %4328 = bitcast i32 %4327 to float
  %4329 = fmul fast float %4328, 2.000000e+00
  %4330 = bitcast float %3839 to i32
  %4331 = ashr i32 %4330, 1
  %4332 = add nsw i32 %4331, 532487669
  %4333 = bitcast i32 %4332 to float
  %4334 = fsub fast float 1.000000e+00, %4333
  %4335 = bitcast float %4334 to i32
  %4336 = sub nsw i32 2129859010, %4335
  %4337 = bitcast i32 %4336 to float
  %4338 = fmul fast float %4337, 2.000000e+00
  %4339 = fsub fast float 0x4002A9FBE0000000, %4320
  %4340 = fadd fast float %4320, 0x3FD54FDF00000000
  %4341 = bitcast float %4340 to i32
  %4342 = sub nsw i32 2129859010, %4341
  %4343 = bitcast i32 %4342 to float
  %4344 = fmul fast float %4343, %4339
  %4345 = fmul fast float %4344, %4344
  %4346 = fsub fast float 0x4002A9FBE0000000, %4329
  %4347 = fadd fast float %4329, 0x3FD54FDF00000000
  %4348 = bitcast float %4347 to i32
  %4349 = sub nsw i32 2129859010, %4348
  %4350 = bitcast i32 %4349 to float
  %4351 = fmul fast float %4350, %4346
  %4352 = fmul fast float %4351, %4351
  %4353 = fsub fast float 0x4002A9FBE0000000, %4338
  %4354 = fadd fast float %4338, 0x3FD54FDF00000000
  %4355 = bitcast float %4354 to i32
  %4356 = sub nsw i32 2129859010, %4355
  %4357 = bitcast i32 %4356 to float
  %4358 = fmul fast float %4357, %4353
  %4359 = fmul fast float %4358, %4358
  %4360 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4345)  ; FMax(a,b)
  %4361 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4352)  ; FMax(a,b)
  %4362 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4359)  ; FMax(a,b)
  %4363 = fsub fast float 1.000000e+00, %4248
  %4364 = fadd fast float %4363, %4264
  %4365 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4366 = fsub fast float 1.000000e+00, %4228
  %4367 = fmul fast float %4306, %4366
  %4368 = fmul fast float %4309, %4309
  %4369 = fmul fast float %4368, %4367
  %4370 = fmul fast float %4369, %4311
  %4371 = fmul fast float %4366, 0xBFE99999A0000000
  %4372 = fmul fast float %4371, %4257
  %4373 = fmul fast float %4372, %4268
  %4374 = fadd fast float %4373, 1.000000e+00
  %4375 = fadd fast float %3840, -1.000000e+00
  %4376 = fmul fast float %4374, %4375
  %4377 = fadd fast float %4376, 1.000000e+00
  %4378 = fsub fast float %4360, %3837
  %4379 = fsub fast float %4361, %3838
  %4380 = fsub fast float %4362, %3839
  %4381 = fmul fast float %4370, %4378
  %4382 = fmul fast float %4370, %4379
  %4383 = fmul fast float %4370, %4380
  %4384 = fadd fast float %4381, %3837
  %4385 = fadd fast float %4382, %3838
  %4386 = fadd fast float %4383, %3839
  %4387 = fsub fast float %60, %3816
  %4388 = fsub fast float %61, %3817
  %4389 = fsub fast float %62, %3818
  %4390 = fmul fast float %4370, %4387
  %4391 = fmul fast float %4370, %4388
  %4392 = fmul fast float %4370, %4389
  %4393 = fadd fast float %4390, %3816
  %4394 = fadd fast float %4391, %3817
  %4395 = fadd fast float %4392, %3818
  %4396 = fmul fast float %4370, %4365
  %4397 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4398 = fsub fast float 1.000000e+00, %4397
  %4399 = fmul fast float %4396, %4398
  %4400 = fadd fast float %4399, %4397
  %4401 = fsub fast float 1.000000e+00, %3800
  %4402 = fmul fast float %4370, %4401
  %4403 = fadd fast float %4402, %3800
  %4404 = call float @dx.op.dot3.f32(i32 55, float %4393, float %4394, float %4395, float %4393, float %4394, float %4395)  ; Dot3(ax,ay,az,bx,by,bz)
  %4405 = call float @dx.op.unary.f32(i32 25, float %4404)  ; Rsqrt(value)
  %4406 = fmul fast float %4393, %4405
  %4407 = fmul fast float %4394, %4405
  %4408 = fmul fast float %4395, %4405
  br label %4409

; <label>:4409                                    ; preds = %4241, %4234
  %4410 = phi float [ %4240, %4234 ], [ %4247, %4241 ]
  %4411 = phi float [ %4239, %4234 ], [ %4245, %4241 ]
  %4412 = phi float [ %4238, %4234 ], [ %4243, %4241 ]
  %4413 = phi float [ %4237, %4234 ], [ %4246, %4241 ]
  %4414 = phi float [ %4236, %4234 ], [ %4244, %4241 ]
  %4415 = phi float [ %4235, %4234 ], [ %4242, %4241 ]
  %4416 = phi float [ %3837, %4234 ], [ %4384, %4241 ]
  %4417 = phi float [ %3838, %4234 ], [ %4385, %4241 ]
  %4418 = phi float [ %3839, %4234 ], [ %4386, %4241 ]
  %4419 = phi float [ %3816, %4234 ], [ %4406, %4241 ]
  %4420 = phi float [ %3817, %4234 ], [ %4407, %4241 ]
  %4421 = phi float [ %3818, %4234 ], [ %4408, %4241 ]
  %4422 = phi float [ %3852, %4234 ], [ %4293, %4241 ]
  %4423 = phi float [ %3853, %4234 ], [ %4294, %4241 ]
  %4424 = phi float [ %3854, %4234 ], [ %4295, %4241 ]
  %4425 = phi float [ %3840, %4234 ], [ %4400, %4241 ]
  %4426 = phi float [ %3800, %4234 ], [ %4403, %4241 ]
  %4427 = select i1 %202, float 0.000000e+00, float %4418
  %4428 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %4412, float %4411, float %4410)  ; Dot3(ax,ay,az,bx,by,bz)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4414, float %4413, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = fmul fast float %4430, 2.000000e+00
  %4432 = fmul fast float %4431, %4419
  %4433 = fmul fast float %4431, %4420
  %4434 = fmul fast float %4431, %4421
  %4435 = fsub fast float %4415, %4432
  %4436 = fsub fast float %4414, %4433
  %4437 = fsub fast float %4413, %4434
  %4438 = call float @dx.op.binary.f32(i32 36, float %4426, float 1.000000e+00)  ; FMin(a,b)
  %4439 = fsub fast float 1.000000e+00, %4426
  %4440 = bitcast float %4439 to i32
  %4441 = sub nsw i32 2129859010, %4440
  %4442 = bitcast i32 %4441 to float
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4446 = fadd fast float %4444, %131
  %4447 = fadd fast float %4445, %132
  %4448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.i32 %4448, 0
  %4450 = icmp eq i32 %4449, 1
  br i1 %4450, label %4451, label %4486

; <label>:4451                                    ; preds = %4409
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4455 = fsub fast float %4446, %4453
  %4456 = fsub fast float %4447, %4454
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = fmul fast float %4455, %4458
  %4461 = fmul fast float %4456, %4459
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %4460, float %4461, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = fcmp fast ogt float %4463, 0.000000e+00
  %4465 = extractvalue %dx.types.CBufRet.i32 %4448, 3
  %4466 = icmp ne i32 %4465, 0
  %4467 = and i1 %4464, %4466
  br i1 %4467, label %4468, label %4486, !dx.controlflow.hints !85

; <label>:4468                                    ; preds = %4451
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4472 = fsub fast float %4446, %4470
  %4473 = fsub fast float %4447, %4471
  %4474 = fmul fast float %4472, %4472
  %4475 = fmul fast float %4473, %4473
  %4476 = fadd fast float %4474, %4475
  %4477 = uitofp i32 %4465 to float
  %4478 = fmul fast float %4477, %4477
  %4479 = fcmp fast ogt float %4476, %4478
  br i1 %4479, label %4486, label %4480

; <label>:4480                                    ; preds = %4468
  %4481 = call float @dx.op.unary.f32(i32 24, float %4476)  ; Sqrt(value)
  %4482 = fsub fast float %4477, %4481
  %4483 = fmul fast float %4482, 0x3F75555560000000
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = call float @dx.op.binary.f32(i32 36, float %4484, float %4463)  ; FMin(a,b)
  br label %4486

; <label>:4486                                    ; preds = %4480, %4468, %4451, %4409
  %4487 = phi float [ 1.000000e+00, %4409 ], [ %4485, %4480 ], [ %4463, %4451 ], [ 0.000000e+00, %4468 ]
  %4488 = fcmp fast ogt float %4487, 0.000000e+00
  br i1 %4488, label %4489, label %4587, !dx.controlflow.hints !86

; <label>:4489                                    ; preds = %4486
  %4490 = fadd fast float %162, 5.000000e-01
  %4491 = call float @dx.op.unary.f32(i32 27, float %4490)  ; Round_ni(value)
  %4492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %160, float %161, float %4491, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = extractvalue %dx.types.ResRet.f32 %4492, 1
  %4495 = extractvalue %dx.types.ResRet.f32 %4492, 2
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4498 = fmul fast float %4497, %4493
  %4499 = fmul fast float %4497, %4494
  %4500 = fmul fast float %4497, %4495
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %160, float %161, float %4491, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %160, float %161, float %4491, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = fmul fast float %4504, 2.000000e+00
  %4507 = fmul fast float %4505, 2.000000e+00
  %4508 = fadd fast float %4506, -1.000000e+00
  %4509 = fadd fast float %4507, -1.000000e+00
  %4510 = fadd fast float %4508, %4509
  %4511 = fmul fast float %4510, 5.000000e-01
  %4512 = fsub fast float %4508, %4509
  %4513 = fmul fast float %4512, 5.000000e-01
  %4514 = call float @dx.op.unary.f32(i32 6, float %4511)  ; FAbs(value)
  %4515 = fsub fast float 1.000000e+00, %4514
  %4516 = call float @dx.op.unary.f32(i32 6, float %4513)  ; FAbs(value)
  %4517 = fsub fast float %4515, %4516
  %4518 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %4517)  ; FMax(a,b)
  %4519 = call float @dx.op.dot3.f32(i32 55, float %4511, float %4513, float %4518, float %4511, float %4513, float %4518)  ; Dot3(ax,ay,az,bx,by,bz)
  %4520 = bitcast float %4519 to i32
  %4521 = ashr i32 %4520, 1
  %4522 = sub nsw i32 1597250115, %4521
  %4523 = bitcast i32 %4522 to float
  %4524 = fmul fast float %4523, %4511
  %4525 = fmul fast float %4523, %4513
  %4526 = fmul fast float %4523, %4518
  %4527 = fsub fast float 1.000000e+00, %4502
  %4528 = fdiv fast float %4527, %4526
  %4529 = fmul fast float %4526, %60
  %4530 = fmul fast float %4526, %61
  %4531 = fmul fast float %4526, %62
  %4532 = fmul fast float %4524, %56
  %4533 = fmul fast float %4524, %57
  %4534 = fmul fast float %4524, %58
  %4535 = fadd fast float %4529, %4532
  %4536 = fadd fast float %4530, %4533
  %4537 = fadd fast float %4531, %4534
  %4538 = fmul fast float %4525, %95
  %4539 = fmul fast float %4525, %96
  %4540 = fmul fast float %4525, %97
  %4541 = fadd fast float %4535, %4538
  %4542 = fadd fast float %4536, %4539
  %4543 = fadd fast float %4537, %4540
  %4544 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %4545 = call float @dx.op.unary.f32(i32 25, float %4544)  ; Rsqrt(value)
  %4546 = fmul fast float %4541, %4545
  %4547 = fmul fast float %4542, %4545
  %4548 = fmul fast float %4543, %4545
  %4549 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = fmul fast float %4550, 5.000000e-01
  %4552 = fadd fast float %4551, 5.000000e-01
  %4553 = fmul fast float %4552, %4502
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %4546, float %4547, float %4548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = fmul fast float %4555, %4528
  %4557 = fadd fast float %4553, %4556
  %4558 = fsub fast float 5.000000e-01, %4551
  %4559 = fmul fast float %4558, %4422
  %4560 = fmul fast float %4558, %4423
  %4561 = fmul fast float %4558, %4424
  %4562 = fadd fast float %4557, %4559
  %4563 = fmul fast float %4562, %4498
  %4564 = fadd fast float %4557, %4560
  %4565 = fmul fast float %4564, %4499
  %4566 = fadd fast float %4557, %4561
  %4567 = fmul fast float %4566, %4500
  %4568 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4436, float %4437, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = fmul fast float %4569, 5.000000e-01
  %4571 = fadd fast float %4570, 5.000000e-01
  %4572 = fmul fast float %4571, %4502
  %4573 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4436, float %4437, float %4546, float %4547, float %4548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = fmul fast float %4574, %4528
  %4576 = fadd fast float %4572, %4575
  %4577 = fsub fast float 5.000000e-01, %4570
  %4578 = fmul fast float %4577, %4422
  %4579 = fmul fast float %4577, %4423
  %4580 = fmul fast float %4577, %4424
  %4581 = fadd fast float %4576, %4578
  %4582 = fmul fast float %4581, %4498
  %4583 = fadd fast float %4576, %4579
  %4584 = fmul fast float %4583, %4499
  %4585 = fadd fast float %4576, %4580
  %4586 = fmul fast float %4585, %4500
  br label %4587

; <label>:4587                                    ; preds = %4489, %4486
  %4588 = phi float [ %4582, %4489 ], [ 0.000000e+00, %4486 ]
  %4589 = phi float [ %4584, %4489 ], [ 0.000000e+00, %4486 ]
  %4590 = phi float [ %4586, %4489 ], [ 0.000000e+00, %4486 ]
  %4591 = phi float [ %4563, %4489 ], [ 0.000000e+00, %4486 ]
  %4592 = phi float [ %4565, %4489 ], [ 0.000000e+00, %4486 ]
  %4593 = phi float [ %4567, %4489 ], [ 0.000000e+00, %4486 ]
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = fcmp fast ogt float %4595, 0.000000e+00
  %4597 = and i1 %4488, %4596
  br i1 %4597, label %4598, label %4802, !dx.controlflow.hints !87

; <label>:4598                                    ; preds = %4587
  %4599 = extractvalue %dx.types.CBufRet.f32 %4443, 2
  %4600 = fadd fast float %4599, %133
  %4601 = fmul fast float %4419, 3.200000e+01
  %4602 = fmul fast float %4420, 3.200000e+01
  %4603 = fadd fast float %4446, %4601
  %4604 = fadd fast float %4447, %4602
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.CBufRet.f32 %4605, 1
  %4608 = fsub fast float %4603, %4606
  %4609 = fsub fast float %4604, %4607
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.CBufRet.f32 %4610, 1
  %4613 = fmul fast float %4608, %4611
  %4614 = fmul fast float %4609, %4612
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = fsub fast float %4446, %4616
  %4619 = fsub fast float %4447, %4617
  %4620 = fmul fast float %4618, %4618
  %4621 = fmul fast float %4619, %4619
  %4622 = fadd fast float %4620, %4621
  %4623 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4627 = fsub fast float %4623, %4625
  %4628 = fdiv fast float %4627, %4626
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = fmul fast float %4629, 2.000000e+00
  %4631 = fsub fast float 3.000000e+00, %4630
  %4632 = fmul fast float %4629, %4629
  %4633 = fmul fast float %4632, %4631
  %4634 = fcmp fast oge float %4613, 0.000000e+00
  %4635 = fcmp fast ole float %4613, 1.000000e+00
  %4636 = and i1 %4635, %4634
  %4637 = fcmp fast oge float %4614, 0.000000e+00
  %4638 = and i1 %4637, %4636
  %4639 = fcmp fast ole float %4614, 1.000000e+00
  %4640 = and i1 %4639, %4638
  %4641 = fcmp fast ogt float %4633, 0.000000e+00
  %4642 = and i1 %4641, %4640
  br i1 %4642, label %4643, label %4766, !dx.controlflow.hints !88

; <label>:4643                                    ; preds = %4598
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4646 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4647 = fmul fast float %4645, %4613
  %4648 = fmul fast float %4646, %4614
  %4649 = call float @dx.op.unary.f32(i32 27, float %4647)  ; Round_ni(value)
  %4650 = call float @dx.op.unary.f32(i32 27, float %4648)  ; Round_ni(value)
  %4651 = fptosi float %4649 to i32
  %4652 = fptosi float %4650 to i32
  %4653 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4651, i32 %4652, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4654 = extractvalue %dx.types.ResRet.i32 %4653, 0
  %4655 = lshr i32 %4654, 16
  %4656 = icmp eq i32 %4655, 65535
  br i1 %4656, label %4766, label %4657

; <label>:4657                                    ; preds = %4643
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 0
  %4660 = fmul fast float %4659, %4613
  %4661 = extractvalue %dx.types.CBufRet.f32 %4658, 1
  %4662 = fadd fast float %4660, %4661
  %4663 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4664 = fmul fast float %4663, %4614
  %4665 = extractvalue %dx.types.CBufRet.f32 %4658, 3
  %4666 = fadd fast float %4664, %4665
  %4667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4662, float %4666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4667, 1
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4672 = extractvalue %dx.types.CBufRet.f32 %4670, 0
  %4673 = fsub fast float %4671, %4672
  %4674 = fmul fast float %4673, %4668
  %4675 = fadd fast float %4674, %4672
  %4676 = extractvalue %dx.types.CBufRet.f32 %4670, 3
  %4677 = extractvalue %dx.types.CBufRet.f32 %4670, 2
  %4678 = fsub fast float %4676, %4677
  %4679 = fmul fast float %4678, %4669
  %4680 = fadd fast float %4679, %4677
  %4681 = fsub fast float %4600, %4675
  %4682 = fsub fast float %4680, %4675
  %4683 = fdiv fast float %4681, %4682
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4686 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4687 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4688 = fmul fast float %4686, %4613
  %4689 = fmul fast float %4687, %4614
  %4690 = fmul fast float %4688, 1.250000e-01
  %4691 = fmul fast float %4689, 1.250000e-01
  %4692 = call float @dx.op.unary.f32(i32 27, float %4690)  ; Round_ni(value)
  %4693 = call float @dx.op.unary.f32(i32 27, float %4691)  ; Round_ni(value)
  %4694 = fmul fast float %4692, 8.000000e+00
  %4695 = fmul fast float %4693, 8.000000e+00
  %4696 = fsub fast float %4688, %4694
  %4697 = fsub fast float %4689, %4695
  %4698 = fadd fast float %4696, 5.000000e-01
  %4699 = fadd fast float %4697, 5.000000e-01
  %4700 = and i32 %4655, 255
  %4701 = lshr i32 %4654, 24
  %4702 = mul nuw nsw i32 %4700, 9
  %4703 = uitofp i32 %4702 to float
  %4704 = mul nuw nsw i32 %4701, 9
  %4705 = uitofp i32 %4704 to float
  %4706 = fadd fast float %4698, %4703
  %4707 = fadd fast float %4699, %4705
  %4708 = fdiv fast float %4706, %4595
  %4709 = fdiv fast float %4707, %4685
  %4710 = fmul fast float %4684, 4.375000e-01
  %4711 = fadd fast float %4710, 3.125000e-02
  %4712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4708, float %4709, float %4711, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 1
  %4715 = extractvalue %dx.types.ResRet.f32 %4712, 2
  %4716 = fadd fast float %4710, 5.312500e-01
  %4717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4708, float %4709, float %4716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.ResRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.ResRet.f32 %4717, 2
  %4721 = fmul fast float %4718, 2.000000e+00
  %4722 = fmul fast float %4719, 2.000000e+00
  %4723 = fmul fast float %4720, 2.000000e+00
  %4724 = fadd fast float %4721, -1.000000e+00
  %4725 = fadd fast float %4722, -1.000000e+00
  %4726 = fadd fast float %4723, -1.000000e+00
  %4727 = fmul fast float %4724, %4724
  %4728 = fmul fast float %4725, %4725
  %4729 = fadd fast float %4727, %4728
  %4730 = fmul fast float %4726, %4726
  %4731 = fadd fast float %4729, %4730
  %4732 = call float @dx.op.unary.f32(i32 24, float %4731)  ; Sqrt(value)
  %4733 = fcmp fast ogt float %4732, 0.000000e+00
  br i1 %4733, label %4734, label %4738

; <label>:4734                                    ; preds = %4657
  %4735 = fdiv fast float %4724, %4732
  %4736 = fdiv fast float %4725, %4732
  %4737 = fdiv fast float %4726, %4732
  br label %4738

; <label>:4738                                    ; preds = %4734, %4657
  %4739 = phi float [ %4735, %4734 ], [ 0.000000e+00, %4657 ]
  %4740 = phi float [ %4736, %4734 ], [ 0.000000e+00, %4657 ]
  %4741 = phi float [ %4737, %4734 ], [ 0.000000e+00, %4657 ]
  %4742 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4742)  ; FMax(a,b)
  %4744 = fmul fast float %4743, 0x400C5BF8A0000000
  %4745 = fmul fast float %4713, %4633
  %4746 = fmul fast float %4745, %4744
  %4747 = fmul fast float %4714, %4633
  %4748 = fmul fast float %4747, %4744
  %4749 = fmul fast float %4715, %4633
  %4750 = fmul fast float %4749, %4744
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 3
  %4753 = fmul fast float %4746, %4752
  %4754 = fmul fast float %4748, %4752
  %4755 = fmul fast float %4750, %4752
  %4756 = fcmp fast ogt float %4600, %4680
  br i1 %4756, label %4757, label %4766

; <label>:4757                                    ; preds = %4738
  %4758 = fmul fast float %4682, 0x3FC24924A0000000
  %4759 = fsub fast float %4600, %4680
  %4760 = fdiv fast float %4759, %4758
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = fmul fast float %4762, %4753
  %4764 = fmul fast float %4762, %4754
  %4765 = fmul fast float %4762, %4755
  br label %4766

; <label>:4766                                    ; preds = %4757, %4738, %4643, %4598
  %4767 = phi float [ %4765, %4757 ], [ %4755, %4738 ], [ 0.000000e+00, %4643 ], [ 0.000000e+00, %4598 ]
  %4768 = phi float [ %4764, %4757 ], [ %4754, %4738 ], [ 0.000000e+00, %4643 ], [ 0.000000e+00, %4598 ]
  %4769 = phi float [ %4763, %4757 ], [ %4753, %4738 ], [ 0.000000e+00, %4643 ], [ 0.000000e+00, %4598 ]
  %4770 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4769)  ; FMax(a,b)
  %4771 = fmul fast float %4770, 0x3FD20DD760000000
  %4772 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4435, float %4436, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = fmul fast float %4772, 0x3FDF454380000000
  %4774 = fmul fast float %4772, %4772
  %4775 = fmul fast float %4774, 0x3FEE471020000000
  %4776 = fadd fast float %4775, 0xBFD42F6020000000
  %4777 = call float @dx.op.dot3.f32(i32 55, float %4770, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4773, float %4776)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4768)  ; FMax(a,b)
  %4779 = fmul fast float %4778, 0x3FD20DD760000000
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4778, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4773, float %4776)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4767)  ; FMax(a,b)
  %4782 = fmul fast float %4781, 0x3FD20DD760000000
  %4783 = call float @dx.op.dot3.f32(i32 55, float %4781, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4773, float %4776)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = call float @dx.op.binary.f32(i32 35, float %4771, float 0.000000e+00)  ; FMax(a,b)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4779, float 0.000000e+00)  ; FMax(a,b)
  %4786 = call float @dx.op.binary.f32(i32 35, float %4782, float 0.000000e+00)  ; FMax(a,b)
  %4787 = call float @dx.op.binary.f32(i32 35, float %4777, float 0.000000e+00)  ; FMax(a,b)
  %4788 = call float @dx.op.binary.f32(i32 35, float %4780, float 0.000000e+00)  ; FMax(a,b)
  %4789 = call float @dx.op.binary.f32(i32 35, float %4783, float 0.000000e+00)  ; FMax(a,b)
  %4790 = fmul fast float %4784, %4487
  %4791 = fmul fast float %4785, %4487
  %4792 = fmul fast float %4786, %4487
  %4793 = fadd fast float %4790, %4591
  %4794 = fadd fast float %4791, %4592
  %4795 = fadd fast float %4792, %4593
  %4796 = fmul fast float %4787, %4487
  %4797 = fmul fast float %4788, %4487
  %4798 = fmul fast float %4789, %4487
  %4799 = fadd fast float %4796, %4588
  %4800 = fadd fast float %4797, %4589
  %4801 = fadd fast float %4798, %4590
  br label %4802

; <label>:4802                                    ; preds = %4766, %4587
  %4803 = phi float [ %4799, %4766 ], [ %4588, %4587 ]
  %4804 = phi float [ %4800, %4766 ], [ %4589, %4587 ]
  %4805 = phi float [ %4801, %4766 ], [ %4590, %4587 ]
  %4806 = phi float [ %4793, %4766 ], [ %4591, %4587 ]
  %4807 = phi float [ %4794, %4766 ], [ %4592, %4587 ]
  %4808 = phi float [ %4795, %4766 ], [ %4593, %4587 ]
  %4809 = fcmp fast olt float %4487, 1.000000e+00
  br i1 %4809, label %4810, label %5628, !dx.controlflow.hints !89

; <label>:4810                                    ; preds = %4802
  %4811 = extractvalue %dx.types.CBufRet.f32 %4443, 2
  %4812 = fadd fast float %4811, %133
  %4813 = fmul fast float %4419, 3.200000e+01
  %4814 = fmul fast float %4420, 3.200000e+01
  %4815 = fadd fast float %4446, %4813
  %4816 = fadd fast float %4447, %4814
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4820 = fsub fast float %4815, %4818
  %4821 = fsub fast float %4816, %4819
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = fmul fast float %4820, %4823
  %4826 = fmul fast float %4821, %4824
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = fmul fast float %4825, %4828
  %4830 = extractvalue %dx.types.CBufRet.f32 %4827, 1
  %4831 = fadd fast float %4829, %4830
  %4832 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4833 = fmul fast float %4832, %4826
  %4834 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4835 = fadd fast float %4833, %4834
  %4836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4831, float %4835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4837 = extractvalue %dx.types.ResRet.f32 %4836, 0
  %4838 = extractvalue %dx.types.ResRet.f32 %4836, 1
  %4839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.f32 %4839, 1
  %4841 = extractvalue %dx.types.CBufRet.f32 %4839, 0
  %4842 = fsub fast float %4840, %4841
  %4843 = fmul fast float %4842, %4837
  %4844 = fadd fast float %4843, %4841
  %4845 = extractvalue %dx.types.CBufRet.f32 %4839, 3
  %4846 = extractvalue %dx.types.CBufRet.f32 %4839, 2
  %4847 = fsub fast float %4845, %4846
  %4848 = fmul fast float %4847, %4838
  %4849 = fadd fast float %4848, %4846
  %4850 = fsub fast float %4812, %4844
  %4851 = fsub fast float %4849, %4844
  %4852 = fdiv fast float %4850, %4851
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = fmul fast float %4855, %4853
  %4857 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4858 = fadd fast float %4856, %4857
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4831, float %4835, float %4858, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4866 = extractvalue %dx.types.CBufRet.f32 %4863, 2
  %4867 = fmul fast float %4864, %4860
  %4868 = fmul fast float %4865, %4861
  %4869 = fmul fast float %4866, %4862
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4874 = fadd fast float %4867, %4871
  %4875 = fadd fast float %4868, %4872
  %4876 = fadd fast float %4869, %4873
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = fmul fast float %4878, %4825
  %4880 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4881 = fadd fast float %4879, %4880
  %4882 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4883 = fmul fast float %4882, %4826
  %4884 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4885 = fadd fast float %4883, %4884
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4889 = extractvalue %dx.types.CBufRet.f32 %4886, 2
  %4890 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4895 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4881, float %4885, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = extractvalue %dx.types.ResRet.f32 %4896, 3
  %4901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4881, float %4885, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = extractvalue %dx.types.ResRet.f32 %4901, 3
  %4906 = fmul fast float %4897, %4874
  %4907 = fmul fast float %4902, %4874
  %4908 = fmul fast float %4904, %4874
  %4909 = fmul fast float %4900, %4874
  %4910 = fadd fast float %4906, %4887
  %4911 = fadd fast float %4907, %4888
  %4912 = fadd fast float %4908, %4889
  %4913 = fadd fast float %4909, %4890
  %4914 = fmul fast float %4898, %4874
  %4915 = fmul fast float %4903, %4874
  %4916 = fadd fast float %4914, %4892
  %4917 = fadd fast float %4915, %4893
  %4918 = fmul fast float %4899, %4874
  %4919 = fmul fast float %4905, %4874
  %4920 = fadd fast float %4918, %4894
  %4921 = fadd fast float %4919, %4895
  %4922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4881, float %4885, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.ResRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.ResRet.f32 %4922, 2
  %4926 = extractvalue %dx.types.ResRet.f32 %4922, 3
  %4927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4881, float %4885, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.ResRet.f32 %4927, 2
  %4931 = extractvalue %dx.types.ResRet.f32 %4927, 3
  %4932 = fmul fast float %4923, %4875
  %4933 = fmul fast float %4928, %4875
  %4934 = fmul fast float %4930, %4875
  %4935 = fmul fast float %4926, %4875
  %4936 = fadd fast float %4910, %4932
  %4937 = fadd fast float %4911, %4933
  %4938 = fadd fast float %4912, %4934
  %4939 = fadd fast float %4913, %4935
  %4940 = fmul fast float %4924, %4875
  %4941 = fmul fast float %4929, %4875
  %4942 = fadd fast float %4916, %4940
  %4943 = fadd fast float %4917, %4941
  %4944 = fmul fast float %4925, %4875
  %4945 = fmul fast float %4931, %4875
  %4946 = fadd fast float %4920, %4944
  %4947 = fadd fast float %4921, %4945
  %4948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4881, float %4885, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4949 = extractvalue %dx.types.ResRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.ResRet.f32 %4948, 1
  %4951 = extractvalue %dx.types.ResRet.f32 %4948, 2
  %4952 = extractvalue %dx.types.ResRet.f32 %4948, 3
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4881, float %4885, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.ResRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.ResRet.f32 %4953, 2
  %4957 = extractvalue %dx.types.ResRet.f32 %4953, 3
  %4958 = fmul fast float %4949, %4876
  %4959 = fmul fast float %4954, %4876
  %4960 = fmul fast float %4956, %4876
  %4961 = fmul fast float %4952, %4876
  %4962 = fadd fast float %4936, %4958
  %4963 = fadd fast float %4937, %4959
  %4964 = fadd fast float %4938, %4960
  %4965 = fadd fast float %4939, %4961
  %4966 = fmul fast float %4950, %4876
  %4967 = fmul fast float %4955, %4876
  %4968 = fadd fast float %4942, %4966
  %4969 = fadd fast float %4943, %4967
  %4970 = fmul fast float %4951, %4876
  %4971 = fmul fast float %4957, %4876
  %4972 = fadd fast float %4946, %4970
  %4973 = fadd fast float %4947, %4971
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = fsub fast float %4446, %4975
  %4977 = fsub fast float %4818, %4446
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float %4976)  ; FMax(a,b)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4980 = fsub fast float %4447, %4979
  %4981 = fsub fast float %4819, %4447
  %4982 = call float @dx.op.binary.f32(i32 35, float %4981, float %4980)  ; FMax(a,b)
  %4983 = call float @dx.op.binary.f32(i32 35, float %4978, float %4982)  ; FMax(a,b)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4822, 3
  %4985 = fmul fast float %4984, %4983
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = extractvalue %dx.types.CBufRet.f32 %4987, 1
  %4990 = extractvalue %dx.types.CBufRet.f32 %4987, 2
  %4991 = extractvalue %dx.types.CBufRet.f32 %4987, 3
  %4992 = fsub fast float %4988, %4962
  %4993 = fsub fast float %4989, %4963
  %4994 = fsub fast float %4990, %4964
  %4995 = fsub fast float %4991, %4965
  %4996 = fmul fast float %4992, %4986
  %4997 = fmul fast float %4993, %4986
  %4998 = fmul fast float %4994, %4986
  %4999 = fmul fast float %4995, %4986
  %5000 = fadd fast float %4996, %4962
  %5001 = fadd fast float %4997, %4963
  %5002 = fadd fast float %4998, %4964
  %5003 = fadd fast float %4999, %4965
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = fsub fast float %5005, %4968
  %5008 = fsub fast float %5006, %4969
  %5009 = fmul fast float %5007, %4986
  %5010 = fmul fast float %5008, %4986
  %5011 = fadd fast float %5009, %4968
  %5012 = fadd fast float %5010, %4969
  %5013 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5015 = fsub fast float %5013, %4972
  %5016 = fsub fast float %5014, %4973
  %5017 = fmul fast float %5015, %4986
  %5018 = fmul fast float %5016, %4986
  %5019 = fadd fast float %5017, %4972
  %5020 = fadd fast float %5018, %4973
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = fmul fast float %5022, %5000
  %5024 = fmul fast float %5022, %5001
  %5025 = fmul fast float %5022, %5002
  %5026 = fmul fast float %5022, %5003
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 0
  %5029 = fmul fast float %5028, %5011
  %5030 = fmul fast float %5028, %5012
  %5031 = fadd fast float %5029, %5023
  %5032 = fadd fast float %5030, %5025
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = fmul fast float %5034, %5019
  %5036 = fmul fast float %5034, %5020
  %5037 = fadd fast float %5031, %5035
  %5038 = fadd fast float %5032, %5036
  %5039 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5040 = fmul fast float %5039, %5000
  %5041 = fmul fast float %5039, %5001
  %5042 = fmul fast float %5039, %5002
  %5043 = fmul fast float %5039, %5003
  %5044 = extractvalue %dx.types.CBufRet.f32 %5027, 1
  %5045 = fmul fast float %5044, %5011
  %5046 = fmul fast float %5044, %5012
  %5047 = fadd fast float %5045, %5040
  %5048 = fadd fast float %5046, %5042
  %5049 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5050 = fmul fast float %5049, %5019
  %5051 = fmul fast float %5049, %5020
  %5052 = fadd fast float %5047, %5050
  %5053 = fadd fast float %5048, %5051
  %5054 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5055 = fmul fast float %5054, %5000
  %5056 = fmul fast float %5054, %5001
  %5057 = fmul fast float %5054, %5002
  %5058 = fmul fast float %5054, %5003
  %5059 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5060 = fmul fast float %5059, %5011
  %5061 = fmul fast float %5059, %5012
  %5062 = fadd fast float %5060, %5055
  %5063 = fadd fast float %5061, %5057
  %5064 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5065 = fmul fast float %5064, %5019
  %5066 = fmul fast float %5064, %5020
  %5067 = fadd fast float %5062, %5065
  %5068 = fadd fast float %5063, %5066
  %5069 = fmul fast float %5056, %5056
  %5070 = fmul fast float %5068, %5068
  %5071 = fmul fast float %5058, %5058
  %5072 = fadd fast float %5071, %5069
  %5073 = fadd fast float %5072, %5070
  %5074 = call float @dx.op.unary.f32(i32 24, float %5073)  ; Sqrt(value)
  %5075 = fcmp fast ugt float %5074, 0.000000e+00
  br i1 %5075, label %5076, label %5091

; <label>:5076                                    ; preds = %4810
  %5077 = fsub fast float -0.000000e+00, %5058
  %5078 = fdiv fast float %5077, %5074
  %5079 = fsub fast float -0.000000e+00, %5056
  %5080 = fdiv fast float %5079, %5074
  %5081 = fdiv fast float %5068, %5074
  %5082 = fmul fast float %5067, 0x3FE279A760000000
  %5083 = fmul fast float %5080, %5056
  %5084 = fmul fast float %5081, %5068
  %5085 = fmul fast float %5078, %5058
  %5086 = fadd fast float %5083, %5085
  %5087 = fsub fast float %5086, %5084
  %5088 = call float @dx.op.unary.f32(i32 6, float %5087)  ; FAbs(value)
  %5089 = fadd fast float %5088, 0x3DDB7CDFE0000000
  %5090 = fdiv fast float %5082, %5089
  br label %5091

; <label>:5091                                    ; preds = %5076, %4810
  %5092 = phi float [ %5090, %5076 ], [ 1.000000e+00, %4810 ]
  %5093 = fmul fast float %5041, %5041
  %5094 = fmul fast float %5053, %5053
  %5095 = fmul fast float %5043, %5043
  %5096 = fadd fast float %5095, %5093
  %5097 = fadd fast float %5096, %5094
  %5098 = call float @dx.op.unary.f32(i32 24, float %5097)  ; Sqrt(value)
  %5099 = fcmp fast ugt float %5098, 0.000000e+00
  br i1 %5099, label %5100, label %5115

; <label>:5100                                    ; preds = %5091
  %5101 = fsub fast float -0.000000e+00, %5043
  %5102 = fdiv fast float %5101, %5098
  %5103 = fsub fast float -0.000000e+00, %5041
  %5104 = fdiv fast float %5103, %5098
  %5105 = fdiv fast float %5053, %5098
  %5106 = fmul fast float %5052, 0x3FE279A760000000
  %5107 = fmul fast float %5104, %5041
  %5108 = fmul fast float %5105, %5053
  %5109 = fmul fast float %5102, %5043
  %5110 = fadd fast float %5107, %5109
  %5111 = fsub fast float %5110, %5108
  %5112 = call float @dx.op.unary.f32(i32 6, float %5111)  ; FAbs(value)
  %5113 = fadd fast float %5112, 0x3DDB7CDFE0000000
  %5114 = fdiv fast float %5106, %5113
  br label %5115

; <label>:5115                                    ; preds = %5100, %5091
  %5116 = phi float [ %5114, %5100 ], [ 1.000000e+00, %5091 ]
  %5117 = call float @dx.op.binary.f32(i32 36, float %5116, float %5092)  ; FMin(a,b)
  %5118 = fmul fast float %5024, %5024
  %5119 = fmul fast float %5038, %5038
  %5120 = fmul fast float %5026, %5026
  %5121 = fadd fast float %5120, %5118
  %5122 = fadd fast float %5121, %5119
  %5123 = call float @dx.op.unary.f32(i32 24, float %5122)  ; Sqrt(value)
  %5124 = fcmp fast ugt float %5123, 0.000000e+00
  br i1 %5124, label %5125, label %5140

; <label>:5125                                    ; preds = %5115
  %5126 = fsub fast float -0.000000e+00, %5026
  %5127 = fdiv fast float %5126, %5123
  %5128 = fsub fast float -0.000000e+00, %5024
  %5129 = fdiv fast float %5128, %5123
  %5130 = fdiv fast float %5038, %5123
  %5131 = fmul fast float %5037, 0x3FE279A760000000
  %5132 = fmul fast float %5129, %5024
  %5133 = fmul fast float %5130, %5038
  %5134 = fmul fast float %5127, %5026
  %5135 = fadd fast float %5132, %5134
  %5136 = fsub fast float %5135, %5133
  %5137 = call float @dx.op.unary.f32(i32 6, float %5136)  ; FAbs(value)
  %5138 = fadd fast float %5137, 0x3DDB7CDFE0000000
  %5139 = fdiv fast float %5131, %5138
  br label %5140

; <label>:5140                                    ; preds = %5125, %5115
  %5141 = phi float [ %5139, %5125 ], [ 1.000000e+00, %5115 ]
  %5142 = call float @dx.op.binary.f32(i32 36, float %5141, float %5117)  ; FMin(a,b)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fcmp fast olt float %5143, 1.000000e+00
  br i1 %5144, label %5145, label %5155

; <label>:5145                                    ; preds = %5140
  %5146 = fmul fast float %5143, %5024
  %5147 = fmul fast float %5143, %5038
  %5148 = fmul fast float %5143, %5026
  %5149 = fmul fast float %5143, %5041
  %5150 = fmul fast float %5143, %5053
  %5151 = fmul fast float %5143, %5043
  %5152 = fmul fast float %5143, %5056
  %5153 = fmul fast float %5143, %5068
  %5154 = fmul fast float %5143, %5058
  br label %5155

; <label>:5155                                    ; preds = %5145, %5140
  %5156 = phi float [ %5152, %5145 ], [ %5056, %5140 ]
  %5157 = phi float [ %5153, %5145 ], [ %5068, %5140 ]
  %5158 = phi float [ %5154, %5145 ], [ %5058, %5140 ]
  %5159 = phi float [ %5149, %5145 ], [ %5041, %5140 ]
  %5160 = phi float [ %5150, %5145 ], [ %5053, %5140 ]
  %5161 = phi float [ %5151, %5145 ], [ %5043, %5140 ]
  %5162 = phi float [ %5146, %5145 ], [ %5024, %5140 ]
  %5163 = phi float [ %5147, %5145 ], [ %5038, %5140 ]
  %5164 = phi float [ %5148, %5145 ], [ %5026, %5140 ]
  %5165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5037)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5052)  ; FMax(a,b)
  %5167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5067)  ; FMax(a,b)
  %5168 = fcmp fast oge float %4825, 0.000000e+00
  %5169 = and i1 %5168, %4596
  %5170 = fcmp fast ole float %4825, 1.000000e+00
  %5171 = and i1 %5170, %5169
  %5172 = fcmp fast oge float %4826, 0.000000e+00
  %5173 = and i1 %5172, %5171
  %5174 = fcmp fast ole float %4826, 1.000000e+00
  %5175 = and i1 %5174, %5173
  br i1 %5175, label %5176, label %5321, !dx.controlflow.hints !90

; <label>:5176                                    ; preds = %5155
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 2
  %5179 = extractvalue %dx.types.CBufRet.f32 %5177, 3
  %5180 = fmul fast float %5178, %4825
  %5181 = fmul fast float %5179, %4826
  %5182 = call float @dx.op.unary.f32(i32 27, float %5180)  ; Round_ni(value)
  %5183 = call float @dx.op.unary.f32(i32 27, float %5181)  ; Round_ni(value)
  %5184 = fptosi float %5182 to i32
  %5185 = fptosi float %5183 to i32
  %5186 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %5184, i32 %5185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5187 = extractvalue %dx.types.ResRet.i32 %5186, 0
  %5188 = and i32 %5187, 65535
  %5189 = lshr i32 %5187, 16
  %5190 = icmp eq i32 %5188, 65535
  br i1 %5190, label %5227, label %5191

; <label>:5191                                    ; preds = %5176
  %5192 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %5193 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5194 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5195 = fmul fast float %5193, %4825
  %5196 = fmul fast float %5194, %4826
  %5197 = fmul fast float %5195, 1.250000e-01
  %5198 = fmul fast float %5196, 1.250000e-01
  %5199 = call float @dx.op.unary.f32(i32 27, float %5197)  ; Round_ni(value)
  %5200 = call float @dx.op.unary.f32(i32 27, float %5198)  ; Round_ni(value)
  %5201 = fmul fast float %5199, 8.000000e+00
  %5202 = fmul fast float %5200, 8.000000e+00
  %5203 = and i32 %5187, 255
  %5204 = lshr i32 %5187, 8
  %5205 = and i32 %5204, 255
  %5206 = mul nuw nsw i32 %5203, 9
  %5207 = uitofp i32 %5206 to float
  %5208 = mul nuw nsw i32 %5205, 9
  %5209 = uitofp i32 %5208 to float
  %5210 = fadd fast float %5207, 5.000000e-01
  %5211 = fadd fast float %5210, %5195
  %5212 = fsub fast float %5211, %5201
  %5213 = fadd fast float %5209, 5.000000e-01
  %5214 = fadd fast float %5213, %5196
  %5215 = fsub fast float %5214, %5202
  %5216 = fdiv fast float %5212, %4595
  %5217 = fdiv fast float %5215, %5192
  %5218 = fmul fast float %4853, 4.375000e-01
  %5219 = fadd fast float %5218, 3.125000e-02
  %5220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5216, float %5217, float %5219, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = fadd fast float %5221, %5165
  %5225 = fadd fast float %5222, %5166
  %5226 = fadd fast float %5223, %5167
  br label %5227

; <label>:5227                                    ; preds = %5191, %5176
  %5228 = phi float [ %5226, %5191 ], [ %5167, %5176 ]
  %5229 = phi float [ %5225, %5191 ], [ %5166, %5176 ]
  %5230 = phi float [ %5224, %5191 ], [ %5165, %5176 ]
  %5231 = icmp eq i32 %5189, 65535
  br i1 %5231, label %5321, label %5232

; <label>:5232                                    ; preds = %5227
  %5233 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %5234 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5236 = fmul fast float %5234, %4825
  %5237 = fmul fast float %5235, %4826
  %5238 = fmul fast float %5236, 1.250000e-01
  %5239 = fmul fast float %5237, 1.250000e-01
  %5240 = call float @dx.op.unary.f32(i32 27, float %5238)  ; Round_ni(value)
  %5241 = call float @dx.op.unary.f32(i32 27, float %5239)  ; Round_ni(value)
  %5242 = fmul fast float %5240, 8.000000e+00
  %5243 = fmul fast float %5241, 8.000000e+00
  %5244 = fsub fast float %5236, %5242
  %5245 = fsub fast float %5237, %5243
  %5246 = fadd fast float %5244, 5.000000e-01
  %5247 = fadd fast float %5245, 5.000000e-01
  %5248 = and i32 %5189, 255
  %5249 = lshr i32 %5187, 24
  %5250 = mul nuw nsw i32 %5248, 9
  %5251 = uitofp i32 %5250 to float
  %5252 = mul nuw nsw i32 %5249, 9
  %5253 = uitofp i32 %5252 to float
  %5254 = fadd fast float %5246, %5251
  %5255 = fadd fast float %5247, %5253
  %5256 = fdiv fast float %5254, %4595
  %5257 = fdiv fast float %5255, %5233
  %5258 = fmul fast float %4853, 4.375000e-01
  %5259 = fadd fast float %5258, 3.125000e-02
  %5260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5256, float %5257, float %5259, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  %5262 = extractvalue %dx.types.ResRet.f32 %5260, 1
  %5263 = extractvalue %dx.types.ResRet.f32 %5260, 2
  %5264 = fadd fast float %5258, 5.312500e-01
  %5265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5256, float %5257, float %5264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = fmul fast float %5266, 2.000000e+00
  %5270 = fmul fast float %5267, 2.000000e+00
  %5271 = fmul fast float %5268, 2.000000e+00
  %5272 = fadd fast float %5269, -1.000000e+00
  %5273 = fadd fast float %5270, -1.000000e+00
  %5274 = fadd fast float %5271, -1.000000e+00
  %5275 = fmul fast float %5272, %5272
  %5276 = fmul fast float %5273, %5273
  %5277 = fadd fast float %5275, %5276
  %5278 = fmul fast float %5274, %5274
  %5279 = fadd fast float %5277, %5278
  %5280 = call float @dx.op.unary.f32(i32 24, float %5279)  ; Sqrt(value)
  %5281 = fcmp fast ogt float %5280, 0.000000e+00
  br i1 %5281, label %5282, label %5286

; <label>:5282                                    ; preds = %5232
  %5283 = fdiv fast float %5272, %5280
  %5284 = fdiv fast float %5273, %5280
  %5285 = fdiv fast float %5274, %5280
  br label %5286

; <label>:5286                                    ; preds = %5282, %5232
  %5287 = phi float [ %5283, %5282 ], [ 0.000000e+00, %5232 ]
  %5288 = phi float [ %5284, %5282 ], [ 0.000000e+00, %5232 ]
  %5289 = phi float [ %5285, %5282 ], [ 0.000000e+00, %5232 ]
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.CBufRet.f32 %5290, 1
  %5293 = fsub fast float %4446, %5291
  %5294 = fsub fast float %4447, %5292
  %5295 = fmul fast float %5293, %5293
  %5296 = fmul fast float %5294, %5294
  %5297 = fadd fast float %5295, %5296
  %5298 = call float @dx.op.unary.f32(i32 24, float %5297)  ; Sqrt(value)
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5302 = fsub fast float %5298, %5300
  %5303 = fdiv fast float %5302, %5301
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5304, 2.000000e+00
  %5306 = fsub fast float 3.000000e+00, %5305
  %5307 = fmul fast float %5304, %5304
  %5308 = fmul fast float %5307, %5306
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5309)  ; FMax(a,b)
  %5311 = fmul fast float %5310, 0x400C5BF8A0000000
  %5312 = fmul fast float %5308, %5261
  %5313 = fmul fast float %5312, %5311
  %5314 = fadd fast float %5313, %5230
  %5315 = fmul fast float %5308, %5262
  %5316 = fmul fast float %5315, %5311
  %5317 = fadd fast float %5316, %5229
  %5318 = fmul fast float %5308, %5263
  %5319 = fmul fast float %5318, %5311
  %5320 = fadd fast float %5319, %5228
  br label %5321

; <label>:5321                                    ; preds = %5286, %5227, %5155
  %5322 = phi float [ %5320, %5286 ], [ %5228, %5227 ], [ %5167, %5155 ]
  %5323 = phi float [ %5317, %5286 ], [ %5229, %5227 ], [ %5166, %5155 ]
  %5324 = phi float [ %5314, %5286 ], [ %5230, %5227 ], [ %5165, %5155 ]
  %5325 = fcmp fast ogt float %4812, %4849
  %5326 = and i1 %5168, %5325
  %5327 = and i1 %5170, %5326
  %5328 = and i1 %5172, %5327
  %5329 = and i1 %5174, %5328
  br i1 %5329, label %5330, label %5387, !dx.controlflow.hints !91

; <label>:5330                                    ; preds = %5321
  %5331 = fmul fast float %4851, 0x3FC24924A0000000
  %5332 = fsub fast float %4812, %4849
  %5333 = fdiv fast float %5332, %5331
  %5334 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5339 = extractvalue %dx.types.CBufRet.f32 %5337, 1
  %5340 = extractvalue %dx.types.CBufRet.f32 %5337, 2
  %5341 = fsub fast float %5336, %5324
  %5342 = fsub fast float %5338, %5162
  %5343 = fsub fast float %5339, %5163
  %5344 = fsub fast float %5340, %5164
  %5345 = fmul fast float %5341, %5334
  %5346 = fmul fast float %5342, %5334
  %5347 = fmul fast float %5343, %5334
  %5348 = fmul fast float %5344, %5334
  %5349 = fadd fast float %5345, %5324
  %5350 = fadd fast float %5346, %5162
  %5351 = fadd fast float %5347, %5163
  %5352 = fadd fast float %5348, %5164
  %5353 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 0
  %5356 = extractvalue %dx.types.CBufRet.f32 %5354, 1
  %5357 = extractvalue %dx.types.CBufRet.f32 %5354, 2
  %5358 = fsub fast float %5353, %5323
  %5359 = fsub fast float %5355, %5159
  %5360 = fsub fast float %5356, %5160
  %5361 = fsub fast float %5357, %5161
  %5362 = fmul fast float %5358, %5334
  %5363 = fmul fast float %5359, %5334
  %5364 = fmul fast float %5360, %5334
  %5365 = fmul fast float %5361, %5334
  %5366 = fadd fast float %5362, %5323
  %5367 = fadd fast float %5363, %5159
  %5368 = fadd fast float %5364, %5160
  %5369 = fadd fast float %5365, %5161
  %5370 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5375 = fsub fast float %5370, %5322
  %5376 = fsub fast float %5372, %5156
  %5377 = fsub fast float %5373, %5157
  %5378 = fsub fast float %5374, %5158
  %5379 = fmul fast float %5375, %5334
  %5380 = fmul fast float %5376, %5334
  %5381 = fmul fast float %5377, %5334
  %5382 = fmul fast float %5378, %5334
  %5383 = fadd fast float %5379, %5322
  %5384 = fadd fast float %5380, %5156
  %5385 = fadd fast float %5381, %5157
  %5386 = fadd fast float %5382, %5158
  br label %5387

; <label>:5387                                    ; preds = %5330, %5321
  %5388 = phi float [ %5383, %5330 ], [ %5322, %5321 ]
  %5389 = phi float [ %5384, %5330 ], [ %5156, %5321 ]
  %5390 = phi float [ %5385, %5330 ], [ %5157, %5321 ]
  %5391 = phi float [ %5386, %5330 ], [ %5158, %5321 ]
  %5392 = phi float [ %5366, %5330 ], [ %5323, %5321 ]
  %5393 = phi float [ %5367, %5330 ], [ %5159, %5321 ]
  %5394 = phi float [ %5368, %5330 ], [ %5160, %5321 ]
  %5395 = phi float [ %5369, %5330 ], [ %5161, %5321 ]
  %5396 = phi float [ %5349, %5330 ], [ %5324, %5321 ]
  %5397 = phi float [ %5350, %5330 ], [ %5162, %5321 ]
  %5398 = phi float [ %5351, %5330 ], [ %5163, %5321 ]
  %5399 = phi float [ %5352, %5330 ], [ %5164, %5321 ]
  %5400 = extractvalue %dx.types.CBufRet.f32 %4974, 3
  %5401 = fmul fast float %5400, %5396
  %5402 = fmul fast float %5400, %5392
  %5403 = fmul fast float %5400, %5388
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5406 = fmul fast float %5401, %5405
  %5407 = fmul fast float %5402, %5405
  %5408 = fmul fast float %5403, %5405
  %5409 = fmul fast float %5397, 1.500000e+00
  %5410 = fmul fast float %5409, %5400
  %5411 = fmul fast float %5410, %5405
  %5412 = fmul fast float %5398, 1.500000e+00
  %5413 = fmul fast float %5412, %5400
  %5414 = fmul fast float %5413, %5405
  %5415 = fmul fast float %5399, 1.500000e+00
  %5416 = fmul fast float %5415, %5400
  %5417 = fmul fast float %5416, %5405
  %5418 = fmul fast float %5393, 1.500000e+00
  %5419 = fmul fast float %5418, %5400
  %5420 = fmul fast float %5419, %5405
  %5421 = fmul fast float %5394, 1.500000e+00
  %5422 = fmul fast float %5421, %5400
  %5423 = fmul fast float %5422, %5405
  %5424 = fmul fast float %5395, 1.500000e+00
  %5425 = fmul fast float %5424, %5400
  %5426 = fmul fast float %5425, %5405
  %5427 = fmul fast float %5389, 1.500000e+00
  %5428 = fmul fast float %5427, %5400
  %5429 = fmul fast float %5428, %5405
  %5430 = fmul fast float %5390, 1.500000e+00
  %5431 = fmul fast float %5430, %5400
  %5432 = fmul fast float %5431, %5405
  %5433 = fmul fast float %5391, 1.500000e+00
  %5434 = fmul fast float %5433, %5400
  %5435 = fmul fast float %5434, %5405
  %5436 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5406)  ; FMax(a,b)
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5414, float %5417, float %5411, float %5414, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = fcmp fast oeq float %5437, 0.000000e+00
  %5439 = fcmp fast oeq float %5436, 0.000000e+00
  %5440 = or i1 %5439, %5438
  br i1 %5440, label %5470, label %5441

; <label>:5441                                    ; preds = %5387
  %5442 = fsub fast float -0.000000e+00, %5417
  %5443 = fsub fast float -0.000000e+00, %5411
  %5444 = call float @dx.op.unary.f32(i32 24, float %5437)  ; Sqrt(value)
  %5445 = fdiv fast float %5444, %5436
  %5446 = fcmp fast ogt float %5445, 0x3FFB6F8900000000
  %5447 = select i1 %5446, float 0x3FFB6F8900000000, float %5445
  %5448 = fmul fast float %5447, 0x3FE8A23460000000
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = call float @dx.op.binary.f32(i32 35, float %5447, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5451 = fmul fast float %5449, %5436
  %5452 = fmul fast float %5450, 0x3FF279A740000000
  %5453 = fadd fast float %5452, -1.000000e+00
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5414, float %5442, float %5443, float %5414)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = call float @dx.op.unary.f32(i32 25, float %5454)  ; Rsqrt(value)
  %5456 = fmul fast float %5455, %5442
  %5457 = fmul fast float %5455, %5443
  %5458 = fmul fast float %5455, %5414
  %5459 = fmul fast float %5453, %5453
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = fmul fast float %5450, 0x40005F8BE0000000
  %5462 = fsub fast float 0x400C5BF8A0000000, %5461
  %5463 = fdiv fast float %5451, %5462
  %5464 = fmul fast float %5463, 0x3FEE31C3C0000000
  %5465 = fmul fast float %5464, %5460
  %5466 = fmul fast float %5450, 0x3FDACB7480000000
  %5467 = fadd fast float %5466, 0xBFD7347680000000
  %5468 = fmul fast float %5467, %5463
  %5469 = fmul fast float %5468, %5460
  br label %5470

; <label>:5470                                    ; preds = %5441, %5387
  %5471 = phi float [ %5456, %5441 ], [ 0.000000e+00, %5387 ]
  %5472 = phi float [ %5457, %5441 ], [ 0.000000e+00, %5387 ]
  %5473 = phi float [ %5458, %5441 ], [ 0.000000e+00, %5387 ]
  %5474 = phi float [ %5465, %5441 ], [ 0.000000e+00, %5387 ]
  %5475 = phi float [ %5469, %5441 ], [ 0.000000e+00, %5387 ]
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = fmul fast float %5476, %5476
  %5478 = fmul fast float %5477, 0x3FEE471020000000
  %5479 = fadd fast float %5478, 0xBFD42F6020000000
  %5480 = fmul fast float %5436, 0x3FD20DD760000000
  %5481 = fmul fast float %5479, %5475
  %5482 = fmul fast float %5474, 0x3FDF454380000000
  %5483 = fmul fast float %5482, %5476
  %5484 = fadd fast float %5483, %5480
  %5485 = fadd fast float %5484, %5481
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %4435, float %4436, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fmul fast float %5486, 0x3FDF454380000000
  %5488 = fmul fast float %5486, %5486
  %5489 = fmul fast float %5488, 0x3FEE471020000000
  %5490 = fadd fast float %5489, 0xBFD42F6020000000
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5474, float %5475, float 0x3FD20DD760000000, float %5487, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5407)  ; FMax(a,b)
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5423, float %5426, float %5420, float %5423, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = fcmp fast oeq float %5493, 0.000000e+00
  %5495 = fcmp fast oeq float %5492, 0.000000e+00
  %5496 = or i1 %5495, %5494
  br i1 %5496, label %5526, label %5497

; <label>:5497                                    ; preds = %5470
  %5498 = fsub fast float -0.000000e+00, %5426
  %5499 = fsub fast float -0.000000e+00, %5420
  %5500 = call float @dx.op.unary.f32(i32 24, float %5493)  ; Sqrt(value)
  %5501 = fdiv fast float %5500, %5492
  %5502 = fcmp fast ogt float %5501, 0x3FFB6F8900000000
  %5503 = select i1 %5502, float 0x3FFB6F8900000000, float %5501
  %5504 = fmul fast float %5503, 0x3FE8A23460000000
  %5505 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5506 = call float @dx.op.binary.f32(i32 35, float %5503, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5507 = fmul fast float %5505, %5492
  %5508 = fmul fast float %5506, 0x3FF279A740000000
  %5509 = fadd fast float %5508, -1.000000e+00
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5423, float %5498, float %5499, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = call float @dx.op.unary.f32(i32 25, float %5510)  ; Rsqrt(value)
  %5512 = fmul fast float %5511, %5498
  %5513 = fmul fast float %5511, %5499
  %5514 = fmul fast float %5511, %5423
  %5515 = fmul fast float %5509, %5509
  %5516 = fsub fast float 1.000000e+00, %5515
  %5517 = fmul fast float %5506, 0x40005F8BE0000000
  %5518 = fsub fast float 0x400C5BF8A0000000, %5517
  %5519 = fdiv fast float %5507, %5518
  %5520 = fmul fast float %5519, 0x3FEE31C3C0000000
  %5521 = fmul fast float %5520, %5516
  %5522 = fmul fast float %5506, 0x3FDACB7480000000
  %5523 = fadd fast float %5522, 0xBFD7347680000000
  %5524 = fmul fast float %5523, %5519
  %5525 = fmul fast float %5524, %5516
  br label %5526

; <label>:5526                                    ; preds = %5497, %5470
  %5527 = phi float [ %5512, %5497 ], [ 0.000000e+00, %5470 ]
  %5528 = phi float [ %5513, %5497 ], [ 0.000000e+00, %5470 ]
  %5529 = phi float [ %5514, %5497 ], [ 0.000000e+00, %5470 ]
  %5530 = phi float [ %5521, %5497 ], [ 0.000000e+00, %5470 ]
  %5531 = phi float [ %5525, %5497 ], [ 0.000000e+00, %5470 ]
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %5529, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fmul fast float %5532, %5532
  %5534 = fmul fast float %5533, 0x3FEE471020000000
  %5535 = fadd fast float %5534, 0xBFD42F6020000000
  %5536 = fmul fast float %5492, 0x3FD20DD760000000
  %5537 = fmul fast float %5535, %5531
  %5538 = fmul fast float %5530, 0x3FDF454380000000
  %5539 = fmul fast float %5538, %5532
  %5540 = fadd fast float %5539, %5536
  %5541 = fadd fast float %5540, %5537
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %5529, float %4435, float %4436, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = fmul fast float %5542, 0x3FDF454380000000
  %5544 = fmul fast float %5542, %5542
  %5545 = fmul fast float %5544, 0x3FEE471020000000
  %5546 = fadd fast float %5545, 0xBFD42F6020000000
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5492, float %5530, float %5531, float 0x3FD20DD760000000, float %5543, float %5546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5408)  ; FMax(a,b)
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5432, float %5435, float %5429, float %5432, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = fcmp fast oeq float %5549, 0.000000e+00
  %5551 = fcmp fast oeq float %5548, 0.000000e+00
  %5552 = or i1 %5551, %5550
  br i1 %5552, label %5582, label %5553

; <label>:5553                                    ; preds = %5526
  %5554 = fsub fast float -0.000000e+00, %5435
  %5555 = fsub fast float -0.000000e+00, %5429
  %5556 = call float @dx.op.unary.f32(i32 24, float %5549)  ; Sqrt(value)
  %5557 = fdiv fast float %5556, %5548
  %5558 = fcmp fast ogt float %5557, 0x3FFB6F8900000000
  %5559 = select i1 %5558, float 0x3FFB6F8900000000, float %5557
  %5560 = fmul fast float %5559, 0x3FE8A23460000000
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = call float @dx.op.binary.f32(i32 35, float %5559, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5563 = fmul fast float %5561, %5548
  %5564 = fmul fast float %5562, 0x3FF279A740000000
  %5565 = fadd fast float %5564, -1.000000e+00
  %5566 = call float @dx.op.dot3.f32(i32 55, float %5554, float %5555, float %5432, float %5554, float %5555, float %5432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = call float @dx.op.unary.f32(i32 25, float %5566)  ; Rsqrt(value)
  %5568 = fmul fast float %5567, %5554
  %5569 = fmul fast float %5567, %5555
  %5570 = fmul fast float %5567, %5432
  %5571 = fmul fast float %5565, %5565
  %5572 = fsub fast float 1.000000e+00, %5571
  %5573 = fmul fast float %5562, 0x40005F8BE0000000
  %5574 = fsub fast float 0x400C5BF8A0000000, %5573
  %5575 = fdiv fast float %5563, %5574
  %5576 = fmul fast float %5575, 0x3FEE31C3C0000000
  %5577 = fmul fast float %5576, %5572
  %5578 = fmul fast float %5562, 0x3FDACB7480000000
  %5579 = fadd fast float %5578, 0xBFD7347680000000
  %5580 = fmul fast float %5579, %5575
  %5581 = fmul fast float %5580, %5572
  br label %5582

; <label>:5582                                    ; preds = %5553, %5526
  %5583 = phi float [ %5568, %5553 ], [ 0.000000e+00, %5526 ]
  %5584 = phi float [ %5569, %5553 ], [ 0.000000e+00, %5526 ]
  %5585 = phi float [ %5570, %5553 ], [ 0.000000e+00, %5526 ]
  %5586 = phi float [ %5577, %5553 ], [ 0.000000e+00, %5526 ]
  %5587 = phi float [ %5581, %5553 ], [ 0.000000e+00, %5526 ]
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = fmul fast float %5588, %5588
  %5590 = fmul fast float %5589, 0x3FEE471020000000
  %5591 = fadd fast float %5590, 0xBFD42F6020000000
  %5592 = fmul fast float %5548, 0x3FD20DD760000000
  %5593 = fmul fast float %5591, %5587
  %5594 = fmul fast float %5586, 0x3FDF454380000000
  %5595 = fmul fast float %5594, %5588
  %5596 = fadd fast float %5595, %5592
  %5597 = fadd fast float %5596, %5593
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %4435, float %4436, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = fmul fast float %5598, 0x3FDF454380000000
  %5600 = fmul fast float %5598, %5598
  %5601 = fmul fast float %5600, 0x3FEE471020000000
  %5602 = fadd fast float %5601, 0xBFD42F6020000000
  %5603 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5586, float %5587, float 0x3FD20DD760000000, float %5599, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5485, float 0.000000e+00)  ; FMax(a,b)
  %5605 = call float @dx.op.binary.f32(i32 35, float %5541, float 0.000000e+00)  ; FMax(a,b)
  %5606 = call float @dx.op.binary.f32(i32 35, float %5597, float 0.000000e+00)  ; FMax(a,b)
  %5607 = call float @dx.op.binary.f32(i32 35, float %5491, float 0.000000e+00)  ; FMax(a,b)
  %5608 = call float @dx.op.binary.f32(i32 35, float %5547, float 0.000000e+00)  ; FMax(a,b)
  %5609 = call float @dx.op.binary.f32(i32 35, float %5603, float 0.000000e+00)  ; FMax(a,b)
  %5610 = fsub fast float %4806, %5604
  %5611 = fsub fast float %4807, %5605
  %5612 = fsub fast float %4808, %5606
  %5613 = fmul fast float %5610, %4487
  %5614 = fmul fast float %5611, %4487
  %5615 = fmul fast float %5612, %4487
  %5616 = fadd fast float %5613, %5604
  %5617 = fadd fast float %5614, %5605
  %5618 = fadd fast float %5615, %5606
  %5619 = fsub fast float %4803, %5607
  %5620 = fsub fast float %4804, %5608
  %5621 = fsub fast float %4805, %5609
  %5622 = fmul fast float %5619, %4487
  %5623 = fmul fast float %5620, %4487
  %5624 = fmul fast float %5621, %4487
  %5625 = fadd fast float %5622, %5607
  %5626 = fadd fast float %5623, %5608
  %5627 = fadd fast float %5624, %5609
  br label %5628

; <label>:5628                                    ; preds = %5582, %4802
  %5629 = phi float [ %5625, %5582 ], [ %4803, %4802 ]
  %5630 = phi float [ %5626, %5582 ], [ %4804, %4802 ]
  %5631 = phi float [ %5627, %5582 ], [ %4805, %4802 ]
  %5632 = phi float [ %5616, %5582 ], [ %4806, %4802 ]
  %5633 = phi float [ %5617, %5582 ], [ %4807, %4802 ]
  %5634 = phi float [ %5618, %5582 ], [ %4808, %4802 ]
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5637 = call float @dx.op.binary.f32(i32 36, float %4422, float %5636)  ; FMin(a,b)
  %5638 = fsub fast float 1.000000e+00, %4438
  %5639 = fmul fast float %5637, %5638
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = bitcast float %5640 to i32
  %5642 = sub nsw i32 2129859010, %5641
  %5643 = bitcast i32 %5642 to float
  %5644 = call float @dx.op.binary.f32(i32 36, float %4423, float %5636)  ; FMin(a,b)
  %5645 = fmul fast float %5644, %5638
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = bitcast float %5646 to i32
  %5648 = sub nsw i32 2129859010, %5647
  %5649 = bitcast i32 %5648 to float
  %5650 = call float @dx.op.binary.f32(i32 36, float %4424, float %5636)  ; FMin(a,b)
  %5651 = fmul fast float %5650, %5638
  %5652 = fsub fast float 1.000000e+00, %5651
  %5653 = bitcast float %5652 to i32
  %5654 = sub nsw i32 2129859010, %5653
  %5655 = bitcast i32 %5654 to float
  %5656 = fmul fast float %5632, %4438
  %5657 = fmul fast float %5656, %5643
  %5658 = fmul fast float %5633, %4438
  %5659 = fmul fast float %5658, %5649
  %5660 = fmul fast float %5634, %4438
  %5661 = fmul fast float %5660, %5655
  %5662 = call float @dx.op.binary.f32(i32 36, float %4416, float %5636)  ; FMin(a,b)
  %5663 = fmul fast float %5662, %5638
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = bitcast float %5664 to i32
  %5666 = sub nsw i32 2129859010, %5665
  %5667 = bitcast i32 %5666 to float
  %5668 = call float @dx.op.binary.f32(i32 36, float %4417, float %5636)  ; FMin(a,b)
  %5669 = fmul fast float %5668, %5638
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = bitcast float %5670 to i32
  %5672 = sub nsw i32 2129859010, %5671
  %5673 = bitcast i32 %5672 to float
  %5674 = call float @dx.op.binary.f32(i32 36, float %4427, float %5636)  ; FMin(a,b)
  %5675 = fmul fast float %5674, %5638
  %5676 = fsub fast float 1.000000e+00, %5675
  %5677 = bitcast float %5676 to i32
  %5678 = sub nsw i32 2129859010, %5677
  %5679 = bitcast i32 %5678 to float
  %5680 = fmul fast float %5629, %4438
  %5681 = fmul fast float %5680, %5667
  %5682 = fmul fast float %5630, %4438
  %5683 = fmul fast float %5682, %5673
  %5684 = fmul fast float %5631, %4438
  %5685 = fmul fast float %5684, %5679
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5659, float %5661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = select i1 %202, float 0.000000e+00, float %5657
  %5688 = select i1 %202, float %5686, float %5659
  %5689 = select i1 %202, float 0.000000e+00, float %5661
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5683, float %5685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = select i1 %202, float 0.000000e+00, float %5681
  %5692 = select i1 %202, float %5690, float %5683
  %5693 = select i1 %202, float 0.000000e+00, float %5685
  %5694 = fmul fast float %4429, 9.843750e-01
  %5695 = fmul fast float %4425, 9.843750e-01
  %5696 = fadd fast float %5694, 7.812500e-03
  %5697 = fadd fast float %5695, 7.812500e-03
  %5698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5696, float %5697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5699 = extractvalue %dx.types.ResRet.f32 %5698, 2
  %5700 = extractvalue %dx.types.ResRet.f32 %5698, 3
  %5701 = fmul fast float %5699, %4416
  %5702 = fmul fast float %5699, %4417
  %5703 = fmul fast float %5699, %4427
  %5704 = fadd fast float %5701, %5700
  %5705 = fadd fast float %5702, %5700
  %5706 = fadd fast float %5703, %5700
  %5707 = fcmp fast ogt float %3793, 0.000000e+00
  br i1 %5707, label %5708, label %5734

; <label>:5708                                    ; preds = %5628
  %5709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3793, float %4429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.ResRet.f32 %5709, 1
  %5712 = extractvalue %dx.types.ResRet.f32 %5709, 2
  %5713 = fadd fast float %5710, -5.000000e-01
  %5714 = fadd fast float %5711, -5.000000e-01
  %5715 = fadd fast float %5712, -5.000000e-01
  %5716 = fsub fast float 1.000000e+00, %4416
  %5717 = fsub fast float 1.000000e+00, %4417
  %5718 = fsub fast float 1.000000e+00, %4427
  %5719 = fmul fast float %4416, 4.000000e+00
  %5720 = fmul fast float %5719, %5716
  %5721 = fmul fast float %5720, %5713
  %5722 = fmul fast float %4417, 4.000000e+00
  %5723 = fmul fast float %5722, %5717
  %5724 = fmul fast float %5723, %5714
  %5725 = fmul fast float %4427, 4.000000e+00
  %5726 = fmul fast float %5725, %5718
  %5727 = fmul fast float %5726, %5715
  %5728 = fadd fast float %5721, %5704
  %5729 = fadd fast float %5724, %5705
  %5730 = fadd fast float %5727, %5706
  %5731 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5732 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  br label %5734

; <label>:5734                                    ; preds = %5708, %5628
  %5735 = phi float [ %5731, %5708 ], [ %5704, %5628 ]
  %5736 = phi float [ %5732, %5708 ], [ %5705, %5628 ]
  %5737 = phi float [ %5733, %5708 ], [ %5706, %5628 ]
  %5738 = call float @dx.op.binary.f32(i32 35, float %5736, float %5737)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5735, float %5738)  ; FMax(a,b)
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5740, %5687
  %5742 = fmul fast float %5740, %5688
  %5743 = fmul fast float %5740, %5689
  %5744 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = fcmp fast ogt float %5744, 0x3E7FF19E20000000
  %5746 = fdiv fast float 1.000000e+00, %5744
  %5747 = select i1 %5745, float %5746, float 0.000000e+00
  %5748 = fmul fast float %5747, %4422
  %5749 = fmul fast float %5747, %4423
  %5750 = fmul fast float %5747, %4424
  %5751 = fadd fast float %5748, -1.000000e+00
  %5752 = fadd fast float %5749, -1.000000e+00
  %5753 = fadd fast float %5750, -1.000000e+00
  %5754 = fmul fast float %5751, 5.000000e-01
  %5755 = fmul fast float %5752, 5.000000e-01
  %5756 = fmul fast float %5753, 5.000000e-01
  %5757 = fadd fast float %5754, 1.000000e+00
  %5758 = fadd fast float %5755, 1.000000e+00
  %5759 = fadd fast float %5756, 1.000000e+00
  %5760 = fmul fast float %5735, %5691
  %5761 = fmul fast float %5736, %5692
  %5762 = fmul fast float %5737, %5693
  %5763 = fsub fast float 1.000000e+00, %4429
  %5764 = bitcast float %5763 to i32
  %5765 = sitofp i32 %5764 to float
  %5766 = fmul fast float %5765, 5.000000e+00
  %5767 = fadd fast float %5766, 0xC1EFBF8940000000
  %5768 = fptosi float %5767 to i32
  %5769 = bitcast i32 %5768 to float
  %5770 = fmul fast float %5769, %3792
  %5771 = fmul fast float %5687, %5770
  %5772 = fmul fast float %5771, %5740
  %5773 = fmul fast float %5772, %5757
  %5774 = fmul fast float %5688, %5770
  %5775 = fmul fast float %5774, %5740
  %5776 = fmul fast float %5775, %5758
  %5777 = fmul fast float %5689, %5770
  %5778 = fmul fast float %5777, %5740
  %5779 = fmul fast float %5778, %5759
  %5780 = fmul fast float %5741, %3813
  %5781 = fmul fast float %5742, %3813
  %5782 = fmul fast float %5743, %3813
  %5783 = fadd fast float %5760, %3794
  %5784 = fadd fast float %5783, %5773
  %5785 = fmul fast float %5784, %3813
  %5786 = fadd fast float %5761, %3795
  %5787 = fadd fast float %5786, %5776
  %5788 = fmul fast float %5787, %3813
  %5789 = fadd fast float %5762, %3796
  %5790 = fadd fast float %5789, %5779
  %5791 = fmul fast float %5790, %3813
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5794 = fcmp fast oeq float %5793, 0.000000e+00
  br i1 %5794, label %6022, label %5795

; <label>:5795                                    ; preds = %5734
  %5796 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = select i1 %202, float %5804, float %5800
  %5808 = select i1 %202, float %5806, float %5801
  %5809 = select i1 %202, float %5805, float %5802
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5812 = fcmp fast une float %5811, 0.000000e+00
  br i1 %5812, label %5813, label %5830

; <label>:5813                                    ; preds = %5795
  %5814 = fptoui float %84 to i32
  %5815 = fptoui float %85 to i32
  %5816 = lshr i32 %5814, 4
  %5817 = lshr i32 %5815, 4
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = fptoui float %5819 to i32
  %5821 = add i32 %5820, 15
  %5822 = lshr i32 %5821, 4
  %5823 = mul i32 %5822, %5817
  %5824 = add i32 %5823, %5816
  %5825 = shl i32 %5824, 3
  %5826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.i32 %5826, 0
  %5828 = and i32 %5827, -268435456
  %5829 = icmp eq i32 %5828, -1342177280
  br i1 %5829, label %5840, label %5830

; <label>:5830                                    ; preds = %5813, %5795
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 3
  %5834 = fmul fast float %5832, %84
  %5835 = fmul fast float %5833, %85
  %5836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5834, float %5835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5837 = extractvalue %dx.types.ResRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.ResRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.ResRet.f32 %5836, 2
  br label %5840

; <label>:5840                                    ; preds = %5830, %5813
  %5841 = phi float [ %5837, %5830 ], [ 0.000000e+00, %5813 ]
  %5842 = phi float [ %5838, %5830 ], [ 0.000000e+00, %5813 ]
  %5843 = phi float [ %5839, %5830 ], [ 0.000000e+00, %5813 ]
  %5844 = call float @dx.op.binary.f32(i32 36, float %5842, float %5843)  ; FMin(a,b)
  %5845 = call float @dx.op.binary.f32(i32 36, float %5841, float %5844)  ; FMin(a,b)
  %5846 = fcmp fast ogt float %5845, 0.000000e+00
  br i1 %5846, label %5847, label %6022, !dx.controlflow.hints !92

; <label>:5847                                    ; preds = %5840
  %5848 = fmul fast float %5841, %5807
  %5849 = fmul fast float %5842, %5808
  %5850 = fmul fast float %5843, %5809
  %5851 = fsub fast float %5796, %4415
  %5852 = fsub fast float %5797, %4414
  %5853 = fsub fast float %5798, %4413
  %5854 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %5853, float %5851, float %5852, float %5853)  ; Dot3(ax,ay,az,bx,by,bz)
  %5855 = call float @dx.op.unary.f32(i32 25, float %5854)  ; Rsqrt(value)
  %5856 = fmul fast float %5855, %5851
  %5857 = fmul fast float %5855, %5852
  %5858 = fmul fast float %5855, %5853
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5796, float %5797, float %5798, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4411, float %4410, float %5856, float %5857, float %5858)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5862 = fmul fast float %5861, %5861
  %5863 = fmul fast float %5862, %4442
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = fmul fast float %5864, %5861
  %5866 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %5856, float %5857, float %5858)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fmul fast float %5866, %5866
  %5868 = call float @dx.op.unary.f32(i32 6, float %5859)  ; FAbs(value)
  %5869 = fsub fast float 1.000000e+00, %4425
  %5870 = call float @dx.op.binary.f32(i32 35, float %5869, float 0x3F847AE140000000)  ; FMax(a,b)
  %5871 = fmul fast float %5870, %5870
  %5872 = fmul fast float %5871, %5871
  %5873 = fsub fast float 1.000000e+00, %5872
  %5874 = fmul fast float %4429, %4429
  %5875 = fmul fast float %5874, %5873
  %5876 = fadd fast float %5875, %5872
  %5877 = bitcast float %5876 to i32
  %5878 = ashr i32 %5877, 1
  %5879 = add nsw i32 %5878, 532487669
  %5880 = bitcast i32 %5879 to float
  %5881 = fadd fast float %5880, %4429
  %5882 = fmul fast float %5872, %5867
  %5883 = fsub fast float 1.000000e+00, %5867
  %5884 = fadd fast float %5883, %5882
  %5885 = fmul fast float %5868, %5868
  %5886 = fmul fast float %5885, %5873
  %5887 = fadd fast float %5886, %5872
  %5888 = bitcast float %5887 to i32
  %5889 = ashr i32 %5888, 1
  %5890 = add nsw i32 %5889, 532487669
  %5891 = bitcast i32 %5890 to float
  %5892 = fadd fast float %5891, %5868
  %5893 = fmul fast float %5884, %5884
  %5894 = fmul fast float %5893, %5881
  %5895 = fmul fast float %5894, %5892
  %5896 = fdiv fast float 0x3FF0A00000000000, %5895
  %5897 = fmul fast float %5896, %5872
  %5898 = call float @dx.op.unary.f32(i32 6, float %5860)  ; FAbs(value)
  %5899 = fsub fast float 1.000000e+00, %5898
  %5900 = bitcast float %5899 to i32
  %5901 = sitofp i32 %5900 to float
  %5902 = fmul fast float %5901, 5.000000e+00
  %5903 = fadd fast float %5902, 0xC1EFBF8940000000
  %5904 = fptosi float %5903 to i32
  %5905 = bitcast i32 %5904 to float
  %5906 = fsub fast float 1.000000e+00, %4416
  %5907 = fsub fast float 1.000000e+00, %4417
  %5908 = fsub fast float 1.000000e+00, %4427
  %5909 = fmul fast float %5905, %5906
  %5910 = fmul fast float %5905, %5907
  %5911 = fmul fast float %5905, %5908
  %5912 = fadd fast float %5909, %4416
  %5913 = fadd fast float %5910, %4417
  %5914 = fadd fast float %5911, %4427
  br i1 %5707, label %5915, label %5938

; <label>:5915                                    ; preds = %5847
  %5916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3793, float %5898, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.ResRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.ResRet.f32 %5916, 2
  %5920 = fadd fast float %5917, -5.000000e-01
  %5921 = fadd fast float %5918, -5.000000e-01
  %5922 = fadd fast float %5919, -5.000000e-01
  %5923 = fmul fast float %4416, 4.000000e+00
  %5924 = fmul fast float %5923, %5906
  %5925 = fmul fast float %5924, %5920
  %5926 = fmul fast float %4417, 4.000000e+00
  %5927 = fmul fast float %5926, %5907
  %5928 = fmul fast float %5927, %5921
  %5929 = fmul fast float %4427, 4.000000e+00
  %5930 = fmul fast float %5929, %5908
  %5931 = fmul fast float %5930, %5922
  %5932 = fadd fast float %5925, %5912
  %5933 = fadd fast float %5928, %5913
  %5934 = fadd fast float %5931, %5914
  %5935 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5936 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  %5937 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  br label %5938

; <label>:5938                                    ; preds = %5915, %5847
  %5939 = phi float [ %5935, %5915 ], [ %5912, %5847 ]
  %5940 = phi float [ %5936, %5915 ], [ %5913, %5847 ]
  %5941 = phi float [ %5937, %5915 ], [ %5914, %5847 ]
  %5942 = fmul fast float %5859, 9.843750e-01
  %5943 = fadd fast float %5942, 7.812500e-03
  %5944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5943, float %5697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 3
  %5947 = fmul fast float %5945, %4416
  %5948 = fmul fast float %5945, %4417
  %5949 = fmul fast float %5945, %4427
  %5950 = fadd fast float %5947, %5946
  %5951 = fadd fast float %5948, %5946
  %5952 = fadd fast float %5949, %5946
  br i1 %5707, label %5953, label %5976

; <label>:5953                                    ; preds = %5938
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3793, float %5859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5958 = fadd fast float %5955, -5.000000e-01
  %5959 = fadd fast float %5956, -5.000000e-01
  %5960 = fadd fast float %5957, -5.000000e-01
  %5961 = fmul fast float %4416, 4.000000e+00
  %5962 = fmul fast float %5961, %5906
  %5963 = fmul fast float %5962, %5958
  %5964 = fmul fast float %4417, 4.000000e+00
  %5965 = fmul fast float %5964, %5907
  %5966 = fmul fast float %5965, %5959
  %5967 = fmul fast float %4427, 4.000000e+00
  %5968 = fmul fast float %5967, %5908
  %5969 = fmul fast float %5968, %5960
  %5970 = fadd fast float %5963, %5950
  %5971 = fadd fast float %5966, %5951
  %5972 = fadd fast float %5969, %5952
  %5973 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5974 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5975 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  br label %5976

; <label>:5976                                    ; preds = %5953, %5938
  %5977 = phi float [ %5973, %5953 ], [ %5950, %5938 ]
  %5978 = phi float [ %5974, %5953 ], [ %5951, %5938 ]
  %5979 = phi float [ %5975, %5953 ], [ %5952, %5938 ]
  %5980 = call float @dx.op.binary.f32(i32 35, float %5978, float %5979)  ; FMax(a,b)
  %5981 = call float @dx.op.binary.f32(i32 35, float %5977, float %5980)  ; FMax(a,b)
  %5982 = fsub fast float 1.000000e+00, %5981
  %5983 = fmul fast float %5939, %5897
  %5984 = fmul fast float %5940, %5897
  %5985 = fmul fast float %5941, %5897
  %5986 = fsub fast float 1.000000e+00, %5860
  %5987 = bitcast float %5986 to i32
  %5988 = sitofp i32 %5987 to float
  %5989 = fmul fast float %5988, 5.000000e+00
  %5990 = fadd fast float %5989, 0xC1EFBF8940000000
  %5991 = fptosi float %5990 to i32
  %5992 = bitcast i32 %5991 to float
  %5993 = fmul fast float %5992, %3792
  %5994 = fmul fast float %5982, %5993
  %5995 = fmul fast float %5994, %5757
  %5996 = fmul fast float %5994, %5758
  %5997 = fmul fast float %5994, %5759
  %5998 = fadd fast float %5995, %5983
  %5999 = fadd fast float %5996, %5984
  %6000 = fadd fast float %5997, %5985
  %6001 = fmul fast float %5865, %5848
  %6002 = fmul fast float %6001, %5982
  %6003 = fmul fast float %5865, %5849
  %6004 = fmul fast float %6003, %5982
  %6005 = fmul fast float %5865, %5850
  %6006 = fmul fast float %6005, %5982
  %6007 = fmul fast float %6001, %5998
  %6008 = fmul fast float %6003, %5999
  %6009 = fmul fast float %6005, %6000
  %6010 = fadd fast float %6002, %5741
  %6011 = fmul fast float %6010, %3813
  %6012 = fadd fast float %6004, %5742
  %6013 = fmul fast float %6012, %3813
  %6014 = fadd fast float %6006, %5743
  %6015 = fmul fast float %6014, %3813
  %6016 = fadd fast float %6007, %5784
  %6017 = fmul fast float %6016, %3813
  %6018 = fadd fast float %6008, %5787
  %6019 = fmul fast float %6018, %3813
  %6020 = fadd fast float %6009, %5790
  %6021 = fmul fast float %6020, %3813
  br label %6022

; <label>:6022                                    ; preds = %5976, %5840, %5734
  %6023 = phi float [ %5785, %5734 ], [ %5785, %5840 ], [ %6017, %5976 ]
  %6024 = phi float [ %5788, %5734 ], [ %5788, %5840 ], [ %6019, %5976 ]
  %6025 = phi float [ %5791, %5734 ], [ %5791, %5840 ], [ %6021, %5976 ]
  %6026 = phi float [ %5780, %5734 ], [ %5780, %5840 ], [ %6011, %5976 ]
  %6027 = phi float [ %5781, %5734 ], [ %5781, %5840 ], [ %6013, %5976 ]
  %6028 = phi float [ %5782, %5734 ], [ %5782, %5840 ], [ %6015, %5976 ]
  %6029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.i32 %6029, 0
  %6031 = icmp eq i32 %6030, 0
  br i1 %6031, label %6466, label %6032

; <label>:6032                                    ; preds = %6022
  %6033 = fptoui float %84 to i32
  %6034 = fptoui float %85 to i32
  %6035 = lshr i32 %6033, 4
  %6036 = lshr i32 %6034, 4
  %6037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.i32 %6037, 0
  %6039 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6036, i32 %6038, i32 %6035)  ; UMad(a,b,c)
  %6040 = add nsw i32 %6030, -1
  %6041 = call i32 @dx.op.binary.i32(i32 37, i32 %6040, i32 0)  ; IMax(a,b)
  %6042 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %6043 = fptoui float %6042 to i32
  %6044 = lshr i32 %6043, 5
  %6045 = call i32 @dx.op.binary.i32(i32 40, i32 %6044, i32 8191)  ; UMin(a,b)
  %6046 = shl i32 %6045, 2
  %6047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6046, i32 undef)  ; BufferLoad(srv,index,wot)
  %6048 = extractvalue %dx.types.ResRet.i32 %6047, 0
  %6049 = lshr i32 %6048, 16
  %6050 = and i32 %6048, 65535
  %6051 = lshr i32 %6048, 21
  %6052 = lshr i32 %6050, 5
  %6053 = call i32 @dx.op.binary.i32(i32 40, i32 %6052, i32 %6041)  ; UMin(a,b)
  %6054 = icmp ugt i32 %6051, %6053
  br i1 %6054, label %6466, label %6055

; <label>:6055                                    ; preds = %6032
  br label %6056

; <label>:6056                                    ; preds = %6456, %6055
  %6057 = phi i32 [ %6463, %6456 ], [ %6051, %6055 ]
  %6058 = phi float [ %6457, %6456 ], [ %6023, %6055 ]
  %6059 = phi float [ %6458, %6456 ], [ %6024, %6055 ]
  %6060 = phi float [ %6459, %6456 ], [ %6025, %6055 ]
  %6061 = phi float [ %6460, %6456 ], [ %6026, %6055 ]
  %6062 = phi float [ %6461, %6456 ], [ %6027, %6055 ]
  %6063 = phi float [ %6462, %6456 ], [ %6028, %6055 ]
  %6064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.i32 %6064, 0
  %6066 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6039, i32 %6065, i32 %6057)  ; UMad(a,b,c)
  %6067 = shl i32 %6066, 2
  %6068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6067, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.i32 %6068, 0
  %6070 = shl i32 %6057, 5
  %6071 = sub nsw i32 %6049, %6070
  %6072 = call i32 @dx.op.binary.i32(i32 37, i32 %6071, i32 0)  ; IMax(a,b)
  %6073 = call i32 @dx.op.binary.i32(i32 38, i32 %6072, i32 31)  ; IMin(a,b)
  %6074 = sub nsw i32 1, %6049
  %6075 = add nsw i32 %6074, %6050
  %6076 = call i32 @dx.op.binary.i32(i32 37, i32 %6075, i32 0)  ; IMax(a,b)
  %6077 = call i32 @dx.op.binary.i32(i32 38, i32 %6076, i32 32)  ; IMin(a,b)
  %6078 = and i32 %6077, 31
  %6079 = shl i32 -1, %6078
  %6080 = xor i32 %6079, -1
  %6081 = and i32 %6073, 31
  %6082 = shl i32 %6080, %6081
  %6083 = icmp eq i32 %6077, 32
  %6084 = select i1 %6083, i32 -1, i32 %6082
  %6085 = and i32 %6084, %6069
  %6086 = icmp eq i32 %6085, 0
  br i1 %6086, label %6456, label %6087

; <label>:6087                                    ; preds = %6056
  br label %6088

; <label>:6088                                    ; preds = %6168, %6087
  %6089 = phi i32 [ %6100, %6168 ], [ %6085, %6087 ]
  %6090 = phi float [ %6169, %6168 ], [ %6058, %6087 ]
  %6091 = phi float [ %6170, %6168 ], [ %6059, %6087 ]
  %6092 = phi float [ %6171, %6168 ], [ %6060, %6087 ]
  %6093 = phi float [ %6172, %6168 ], [ %6061, %6087 ]
  %6094 = phi float [ %6173, %6168 ], [ %6062, %6087 ]
  %6095 = phi float [ %6174, %6168 ], [ %6063, %6087 ]
  %6096 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6089)  ; FirstbitLo(value)
  %6097 = add i32 %6096, %6070
  %6098 = and i32 %6096, 31
  %6099 = shl i32 1, %6098
  %6100 = xor i32 %6099, %6089
  %6101 = mul i32 %6097, 112
  %6102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6101, i32 undef)  ; BufferLoad(srv,index,wot)
  %6103 = extractvalue %dx.types.ResRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.ResRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.ResRet.f32 %6102, 2
  %6106 = or i32 %6101, 12
  %6107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6106, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = add i32 %6101, 44
  %6110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6109, i32 undef)  ; BufferLoad(srv,index,wot)
  %6111 = extractvalue %dx.types.ResRet.f32 %6110, 0
  %6112 = add i32 %6101, 48
  %6113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6112, i32 undef)  ; BufferLoad(srv,index,wot)
  %6114 = extractvalue %dx.types.ResRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.ResRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.ResRet.f32 %6113, 2
  %6117 = add i32 %6101, 80
  %6118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6117, i32 undef)  ; BufferLoad(srv,index,wot)
  %6119 = extractvalue %dx.types.ResRet.f32 %6118, 1
  %6120 = extractvalue %dx.types.ResRet.f32 %6118, 2
  %6121 = call float @dx.op.dot3.f32(i32 55, float %6103, float %6104, float %6105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = select i1 %202, float %6119, float %6103
  %6123 = select i1 %202, float %6121, float %6104
  %6124 = select i1 %202, float %6120, float %6105
  %6125 = fsub fast float %6114, %131
  %6126 = fsub fast float %6115, %132
  %6127 = fsub fast float %6116, %133
  %6128 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6127, float %6125, float %6126, float %6127)  ; Dot3(ax,ay,az,bx,by,bz)
  %6129 = call float @dx.op.unary.f32(i32 24, float %6128)  ; Sqrt(value)
  %6130 = fdiv fast float 1.000000e+00, %6129
  %6131 = fmul fast float %6130, %6125
  %6132 = fmul fast float %6130, %6126
  %6133 = fmul fast float %6130, %6127
  %6134 = fadd fast float %6129, %6108
  %6135 = fdiv fast float 1.000000e+00, %6134
  %6136 = fmul float %6111, %6135
  %6137 = fmul float %6136, %6136
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = and i32 %6099, %6085
  %6140 = icmp eq i32 %6139, 0
  br i1 %6140, label %6163, label %6141, !dx.controlflow.hints !93

; <label>:6141                                    ; preds = %6088
  %6142 = lshr i32 %6033, 5
  %6143 = lshr i32 %6034, 5
  %6144 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %6142, i32 %6143, i32 %6097, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6145 = extractvalue %dx.types.ResRet.i32 %6144, 0
  %6146 = and i32 %6145, 3
  %6147 = icmp eq i32 %6146, 0
  %6148 = select i1 %6147, float 1.000000e+00, float 0.000000e+00
  %6149 = icmp eq i32 %6146, 3
  br i1 %6149, label %6150, label %6163

; <label>:6150                                    ; preds = %6141
  %6151 = lshr i32 %6145, 10
  %6152 = and i32 %6151, 8160
  %6153 = and i32 %6034, 31
  %6154 = or i32 %6152, %6153
  %6155 = lshr i32 %6145, 1
  %6156 = and i32 %6155, 16352
  %6157 = and i32 %6033, 31
  %6158 = or i32 %6156, %6157
  %6159 = lshr i32 %6145, 23
  %6160 = and i32 %6159, 255
  %6161 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %6158, i32 %6154, i32 %6160, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6162 = extractvalue %dx.types.ResRet.f32 %6161, 0
  br label %6163

; <label>:6163                                    ; preds = %6150, %6141, %6088
  %6164 = phi float [ %6162, %6150 ], [ %6148, %6141 ], [ 0.000000e+00, %6088 ]
  %6165 = call float @dx.op.binary.f32(i32 36, float %6164, float %6164)  ; FMin(a,b)
  %6166 = call float @dx.op.binary.f32(i32 36, float %6164, float %6165)  ; FMin(a,b)
  %6167 = fcmp fast ogt float %6166, 0.000000e+00
  br i1 %6167, label %6176, label %6168, !dx.controlflow.hints !94

; <label>:6168                                    ; preds = %6412, %6163
  %6169 = phi float [ %6090, %6163 ], [ %6452, %6412 ]
  %6170 = phi float [ %6091, %6163 ], [ %6453, %6412 ]
  %6171 = phi float [ %6092, %6163 ], [ %6454, %6412 ]
  %6172 = phi float [ %6093, %6163 ], [ %6446, %6412 ]
  %6173 = phi float [ %6094, %6163 ], [ %6447, %6412 ]
  %6174 = phi float [ %6095, %6163 ], [ %6448, %6412 ]
  %6175 = icmp eq i32 %6089, %6099
  br i1 %6175, label %6455, label %6088

; <label>:6176                                    ; preds = %6163
  %6177 = fmul fast float %6164, %6122
  %6178 = fmul fast float %6164, %6123
  %6179 = fmul fast float %6164, %6124
  %6180 = fsub fast float %6116, %4215
  %6181 = fcmp fast ogt float %6180, 0.000000e+00
  %6182 = fsub fast float %133, %4215
  %6183 = fcmp fast ogt float %6182, 0.000000e+00
  %6184 = xor i1 %6183, %6181
  %6185 = fsub fast float %4215, %6116
  %6186 = fmul fast float %6185, 2.000000e+00
  %6187 = fadd fast float %6186, %6116
  %6188 = select i1 %6184, float %6116, float %6187
  %6189 = fsub fast float %6188, %133
  %6190 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6189, float %6125, float %6126, float %6189)  ; Dot3(ax,ay,az,bx,by,bz)
  %6191 = call float @dx.op.unary.f32(i32 25, float %6190)  ; Rsqrt(value)
  %6192 = fmul fast float %6191, %6125
  %6193 = fmul fast float %6191, %6126
  %6194 = fmul fast float %6191, %6189
  %6195 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4223)  ; Dot3(ax,ay,az,bx,by,bz)
  %6196 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6192, float %6193, float %6194)  ; Dot3(ax,ay,az,bx,by,bz)
  %6197 = fdiv fast float 1.000000e+00, %6196
  %6198 = fmul fast float %6197, %6195
  %6199 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6182, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6200 = fcmp fast ogt float %6199, 0.000000e+00
  %6201 = fcmp fast olt float %6199, 0.000000e+00
  %6202 = zext i1 %6200 to i32
  %6203 = zext i1 %6201 to i32
  %6204 = sub nsw i32 %6202, %6203
  %6205 = sitofp i32 %6204 to float
  %6206 = fsub fast float %6188, %4215
  %6207 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6206, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = fcmp fast ogt float %6207, 0.000000e+00
  %6209 = fcmp fast olt float %6207, 0.000000e+00
  %6210 = zext i1 %6208 to i32
  %6211 = zext i1 %6209 to i32
  %6212 = sub nsw i32 %6210, %6211
  %6213 = sitofp i32 %6212 to float
  %6214 = fcmp fast une float %6205, %6213
  br i1 %6214, label %6215, label %6225

; <label>:6215                                    ; preds = %6176
  %6216 = fmul fast float %6198, %6194
  %6217 = fmul fast float %6198, %6193
  %6218 = fmul fast float %6198, %6192
  %6219 = fmul fast float %6218, %6218
  %6220 = fmul fast float %6217, %6217
  %6221 = fadd fast float %6219, %6220
  %6222 = fmul fast float %6216, %6216
  %6223 = fadd fast float %6221, %6222
  %6224 = call float @dx.op.unary.f32(i32 24, float %6223)  ; Sqrt(value)
  br label %6237

; <label>:6225                                    ; preds = %6176
  %6226 = icmp slt i32 %6204, 0
  br i1 %6226, label %6227, label %6237

; <label>:6227                                    ; preds = %6225
  %6228 = fsub fast float %131, %6114
  %6229 = fsub fast float %132, %6115
  %6230 = fsub fast float %133, %6188
  %6231 = fmul fast float %6228, %6228
  %6232 = fmul fast float %6229, %6229
  %6233 = fadd fast float %6231, %6232
  %6234 = fmul fast float %6230, %6230
  %6235 = fadd fast float %6233, %6234
  %6236 = call float @dx.op.unary.f32(i32 24, float %6235)  ; Sqrt(value)
  br label %6237

; <label>:6237                                    ; preds = %6227, %6225, %6215
  %6238 = phi float [ %6224, %6215 ], [ %6236, %6227 ], [ 0.000000e+00, %6225 ]
  %6239 = and i1 %6183, %6181
  %6240 = fsub fast float -0.000000e+00, %6238
  %6241 = select i1 %6239, float -0.000000e+00, float %6240
  %6242 = fmul fast float %4216, 0x3FF7154760000000
  %6243 = fmul fast float %6242, %6241
  %6244 = fmul fast float %4217, 0x3FF7154760000000
  %6245 = fmul fast float %6244, %6241
  %6246 = fmul fast float %4218, 0x3FF7154760000000
  %6247 = fmul fast float %6246, %6241
  %6248 = call float @dx.op.unary.f32(i32 21, float %6243)  ; Exp(value)
  %6249 = call float @dx.op.unary.f32(i32 21, float %6245)  ; Exp(value)
  %6250 = call float @dx.op.unary.f32(i32 21, float %6247)  ; Exp(value)
  %6251 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6252 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  %6253 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6254 = fmul fast float %6177, %6251
  %6255 = fmul fast float %6178, %6252
  %6256 = fmul fast float %6179, %6253
  %6257 = fsub fast float %6131, %4415
  %6258 = fsub fast float %6132, %4414
  %6259 = fsub fast float %6133, %4413
  %6260 = call float @dx.op.dot3.f32(i32 55, float %6257, float %6258, float %6259, float %6257, float %6258, float %6259)  ; Dot3(ax,ay,az,bx,by,bz)
  %6261 = call float @dx.op.unary.f32(i32 25, float %6260)  ; Rsqrt(value)
  %6262 = fmul fast float %6261, %6257
  %6263 = fmul fast float %6261, %6258
  %6264 = fmul fast float %6261, %6259
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6131, float %6132, float %6133, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4411, float %4410, float %6262, float %6263, float %6264)  ; Dot3(ax,ay,az,bx,by,bz)
  %6267 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6268 = fmul fast float %6267, %6138
  %6269 = fmul fast float %6267, %6267
  %6270 = fmul fast float %6269, %4442
  %6271 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6272 = fmul fast float %6268, %6271
  %6273 = bitcast float %6128 to i32
  %6274 = ashr i32 %6273, 1
  %6275 = sub nsw i32 1597463007, %6274
  %6276 = bitcast i32 %6275 to float
  %6277 = fmul fast float %6276, %6125
  %6278 = fmul fast float %6276, %6126
  %6279 = fmul fast float %6276, %6127
  %6280 = fsub fast float %6277, %4415
  %6281 = fsub fast float %6278, %4414
  %6282 = fsub fast float %6279, %4413
  %6283 = call float @dx.op.dot3.f32(i32 55, float %6280, float %6281, float %6282, float %6280, float %6281, float %6282)  ; Dot3(ax,ay,az,bx,by,bz)
  %6284 = call float @dx.op.unary.f32(i32 25, float %6283)  ; Rsqrt(value)
  %6285 = fmul fast float %6280, %6284
  %6286 = fmul fast float %6281, %6284
  %6287 = fmul fast float %6282, %6284
  %6288 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %6285, float %6286, float %6287)  ; Dot3(ax,ay,az,bx,by,bz)
  %6289 = fmul fast float %6288, %6288
  %6290 = call float @dx.op.unary.f32(i32 6, float %6265)  ; FAbs(value)
  %6291 = fsub fast float 1.000000e+00, %4425
  %6292 = call float @dx.op.binary.f32(i32 35, float %6291, float 0x3F847AE140000000)  ; FMax(a,b)
  %6293 = fmul fast float %6292, %6292
  %6294 = fmul fast float %6293, %6293
  %6295 = fsub fast float 1.000000e+00, %6294
  %6296 = fmul fast float %4429, %4429
  %6297 = fmul fast float %6296, %6295
  %6298 = fadd fast float %6297, %6294
  %6299 = bitcast float %6298 to i32
  %6300 = ashr i32 %6299, 1
  %6301 = add nsw i32 %6300, 532487669
  %6302 = bitcast i32 %6301 to float
  %6303 = fadd fast float %6302, %4429
  %6304 = fmul fast float %6294, %6289
  %6305 = fsub fast float 1.000000e+00, %6289
  %6306 = fadd fast float %6305, %6304
  %6307 = fmul fast float %6290, %6290
  %6308 = fmul fast float %6307, %6295
  %6309 = fadd fast float %6308, %6294
  %6310 = bitcast float %6309 to i32
  %6311 = ashr i32 %6310, 1
  %6312 = add nsw i32 %6311, 532487669
  %6313 = bitcast i32 %6312 to float
  %6314 = fadd fast float %6313, %6290
  %6315 = fmul fast float %6306, %6306
  %6316 = fmul fast float %6315, %6303
  %6317 = fmul fast float %6316, %6314
  %6318 = fdiv fast float 1.000000e+00, %6317
  %6319 = bitcast float %6294 to i32
  %6320 = sitofp i32 %6319 to float
  %6321 = fmul fast float %6320, 0x3FE7F73180000000
  %6322 = fadd fast float %6321, 0x41AFE27C40000000
  %6323 = fptosi float %6322 to i32
  %6324 = bitcast i32 %6323 to float
  %6325 = fmul fast float %6111, 0x3FD80E9D60000000
  %6326 = fmul fast float %6325, %6276
  %6327 = fadd fast float %6324, %6326
  %6328 = bitcast float %6327 to i32
  %6329 = sub nsw i32 2129859010, %6328
  %6330 = bitcast i32 %6329 to float
  %6331 = fmul fast float %6294, %6318
  %6332 = fmul fast float %6331, %6324
  %6333 = fmul fast float %6332, %6330
  %6334 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6335 = fsub fast float 1.000000e+00, %6334
  %6336 = bitcast float %6335 to i32
  %6337 = sitofp i32 %6336 to float
  %6338 = fmul fast float %6337, 5.000000e+00
  %6339 = fadd fast float %6338, 0xC1EFBF8940000000
  %6340 = fptosi float %6339 to i32
  %6341 = bitcast i32 %6340 to float
  %6342 = fsub fast float 1.000000e+00, %4416
  %6343 = fsub fast float 1.000000e+00, %4417
  %6344 = fsub fast float 1.000000e+00, %4427
  %6345 = fmul fast float %6341, %6342
  %6346 = fmul fast float %6341, %6343
  %6347 = fmul fast float %6341, %6344
  %6348 = fadd fast float %6345, %4416
  %6349 = fadd fast float %6346, %4417
  %6350 = fadd fast float %6347, %4427
  br i1 %5707, label %6351, label %6374

; <label>:6351                                    ; preds = %6237
  %6352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3793, float %6334, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6353 = extractvalue %dx.types.ResRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.ResRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.ResRet.f32 %6352, 2
  %6356 = fadd fast float %6353, -5.000000e-01
  %6357 = fadd fast float %6354, -5.000000e-01
  %6358 = fadd fast float %6355, -5.000000e-01
  %6359 = fmul fast float %4416, 4.000000e+00
  %6360 = fmul fast float %6359, %6342
  %6361 = fmul fast float %6360, %6356
  %6362 = fmul fast float %4417, 4.000000e+00
  %6363 = fmul fast float %6362, %6343
  %6364 = fmul fast float %6363, %6357
  %6365 = fmul fast float %4427, 4.000000e+00
  %6366 = fmul fast float %6365, %6344
  %6367 = fmul fast float %6366, %6358
  %6368 = fadd fast float %6361, %6348
  %6369 = fadd fast float %6364, %6349
  %6370 = fadd fast float %6367, %6350
  %6371 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6372 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6373 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  br label %6374

; <label>:6374                                    ; preds = %6351, %6237
  %6375 = phi float [ %6371, %6351 ], [ %6348, %6237 ]
  %6376 = phi float [ %6372, %6351 ], [ %6349, %6237 ]
  %6377 = phi float [ %6373, %6351 ], [ %6350, %6237 ]
  %6378 = fmul fast float %6265, 9.843750e-01
  %6379 = fadd fast float %6378, 7.812500e-03
  %6380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6379, float %5697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6381 = extractvalue %dx.types.ResRet.f32 %6380, 2
  %6382 = extractvalue %dx.types.ResRet.f32 %6380, 3
  %6383 = fmul fast float %6381, %4416
  %6384 = fmul fast float %6381, %4417
  %6385 = fmul fast float %6381, %4427
  %6386 = fadd fast float %6383, %6382
  %6387 = fadd fast float %6384, %6382
  %6388 = fadd fast float %6385, %6382
  br i1 %5707, label %6389, label %6412

; <label>:6389                                    ; preds = %6374
  %6390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3793, float %6265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6391 = extractvalue %dx.types.ResRet.f32 %6390, 0
  %6392 = extractvalue %dx.types.ResRet.f32 %6390, 1
  %6393 = extractvalue %dx.types.ResRet.f32 %6390, 2
  %6394 = fadd fast float %6391, -5.000000e-01
  %6395 = fadd fast float %6392, -5.000000e-01
  %6396 = fadd fast float %6393, -5.000000e-01
  %6397 = fmul fast float %4416, 4.000000e+00
  %6398 = fmul fast float %6397, %6342
  %6399 = fmul fast float %6398, %6394
  %6400 = fmul fast float %4417, 4.000000e+00
  %6401 = fmul fast float %6400, %6343
  %6402 = fmul fast float %6401, %6395
  %6403 = fmul fast float %4427, 4.000000e+00
  %6404 = fmul fast float %6403, %6344
  %6405 = fmul fast float %6404, %6396
  %6406 = fadd fast float %6399, %6386
  %6407 = fadd fast float %6402, %6387
  %6408 = fadd fast float %6405, %6388
  %6409 = call float @dx.op.unary.f32(i32 7, float %6406)  ; Saturate(value)
  %6410 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6411 = call float @dx.op.unary.f32(i32 7, float %6408)  ; Saturate(value)
  br label %6412

; <label>:6412                                    ; preds = %6389, %6374
  %6413 = phi float [ %6409, %6389 ], [ %6386, %6374 ]
  %6414 = phi float [ %6410, %6389 ], [ %6387, %6374 ]
  %6415 = phi float [ %6411, %6389 ], [ %6388, %6374 ]
  %6416 = call float @dx.op.binary.f32(i32 35, float %6414, float %6415)  ; FMax(a,b)
  %6417 = call float @dx.op.binary.f32(i32 35, float %6413, float %6416)  ; FMax(a,b)
  %6418 = fsub fast float 1.000000e+00, %6417
  %6419 = fmul fast float %6375, %6333
  %6420 = fmul fast float %6376, %6333
  %6421 = fmul fast float %6377, %6333
  %6422 = fsub fast float 1.000000e+00, %6266
  %6423 = bitcast float %6422 to i32
  %6424 = sitofp i32 %6423 to float
  %6425 = fmul fast float %6424, 5.000000e+00
  %6426 = fadd fast float %6425, 0xC1EFBF8940000000
  %6427 = fptosi float %6426 to i32
  %6428 = bitcast i32 %6427 to float
  %6429 = fmul fast float %6428, %3792
  %6430 = fmul fast float %6418, %6429
  %6431 = fmul fast float %6430, %5757
  %6432 = fmul fast float %6430, %5758
  %6433 = fmul fast float %6430, %5759
  %6434 = fadd fast float %6431, %6419
  %6435 = fadd fast float %6432, %6420
  %6436 = fadd fast float %6433, %6421
  %6437 = fmul fast float %6254, %3813
  %6438 = fmul fast float %6437, %6272
  %6439 = fmul fast float %6438, %6418
  %6440 = fmul fast float %6255, %3813
  %6441 = fmul fast float %6440, %6272
  %6442 = fmul fast float %6441, %6418
  %6443 = fmul fast float %6256, %3813
  %6444 = fmul fast float %6443, %6272
  %6445 = fmul fast float %6444, %6418
  %6446 = fadd fast float %6439, %6093
  %6447 = fadd fast float %6442, %6094
  %6448 = fadd fast float %6445, %6095
  %6449 = fmul fast float %6438, %6434
  %6450 = fmul fast float %6441, %6435
  %6451 = fmul fast float %6444, %6436
  %6452 = fadd fast float %6449, %6090
  %6453 = fadd fast float %6450, %6091
  %6454 = fadd fast float %6451, %6092
  br label %6168

; <label>:6455                                    ; preds = %6168
  br label %6456

; <label>:6456                                    ; preds = %6455, %6056
  %6457 = phi float [ %6058, %6056 ], [ %6169, %6455 ]
  %6458 = phi float [ %6059, %6056 ], [ %6170, %6455 ]
  %6459 = phi float [ %6060, %6056 ], [ %6171, %6455 ]
  %6460 = phi float [ %6061, %6056 ], [ %6172, %6455 ]
  %6461 = phi float [ %6062, %6056 ], [ %6173, %6455 ]
  %6462 = phi float [ %6063, %6056 ], [ %6174, %6455 ]
  %6463 = add i32 %6057, 1
  %6464 = icmp ugt i32 %6463, %6053
  br i1 %6464, label %6465, label %6056

; <label>:6465                                    ; preds = %6456
  br label %6466

; <label>:6466                                    ; preds = %6465, %6032, %6022
  %6467 = phi float [ %6023, %6022 ], [ %6023, %6032 ], [ %6457, %6465 ]
  %6468 = phi float [ %6024, %6022 ], [ %6024, %6032 ], [ %6458, %6465 ]
  %6469 = phi float [ %6025, %6022 ], [ %6025, %6032 ], [ %6459, %6465 ]
  %6470 = phi float [ %6026, %6022 ], [ %6026, %6032 ], [ %6460, %6465 ]
  %6471 = phi float [ %6027, %6022 ], [ %6027, %6032 ], [ %6461, %6465 ]
  %6472 = phi float [ %6028, %6022 ], [ %6028, %6032 ], [ %6462, %6465 ]
  %6473 = call float @dx.op.unary.f32(i32 24, float %4422)  ; Sqrt(value)
  %6474 = call float @dx.op.unary.f32(i32 24, float %4423)  ; Sqrt(value)
  %6475 = call float @dx.op.unary.f32(i32 24, float %4424)  ; Sqrt(value)
  %6476 = fmul fast float %6473, %6470
  %6477 = fmul fast float %6474, %6471
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  br i1 %202, label %6480, label %6500

; <label>:6480                                    ; preds = %6466
  %6481 = fadd fast float %6472, %3790
  %6482 = fmul fast float %6481, %3791
  %6483 = fsub fast float 1.000000e+00, %3791
  %6484 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 3
  %6487 = fmul fast float %6486, %6484
  %6488 = fadd fast float %6487, %6482
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = fmul fast float %6490, %5763
  %6492 = fsub fast float %6488, %6491
  %6493 = fadd fast float %6477, %6476
  %6494 = fmul fast float %6479, %6493
  %6495 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6496 = fsub fast float %6492, %6495
  %6497 = extractvalue %dx.types.CBufRet.f32 %6485, 2
  %6498 = fmul fast float %6496, %6497
  %6499 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  br label %6515

; <label>:6500                                    ; preds = %6466
  %6501 = fmul fast float %6475, %6472
  %6502 = fmul fast float %6479, %6476
  %6503 = fmul fast float %6479, %6477
  %6504 = fmul fast float %6501, %6479
  %6505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 372, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.i32 %6505, 0
  %6507 = and i32 %6506, 32
  %6508 = icmp eq i32 %6507, 0
  br i1 %6508, label %6515, label %6509

; <label>:6509                                    ; preds = %6500
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = fmul fast float %6511, 0x3FE99999A0000000
  %6513 = fadd fast float %6511, %6502
  %6514 = fadd fast float %6512, %6504
  br label %6515

; <label>:6515                                    ; preds = %6509, %6500, %6480
  %6516 = phi float [ %6494, %6480 ], [ %6513, %6509 ], [ %6502, %6500 ]
  %6517 = phi float [ %6499, %6480 ], [ %6503, %6509 ], [ %6503, %6500 ]
  %6518 = phi float [ 1.000000e+00, %6480 ], [ %6514, %6509 ], [ %6504, %6500 ]
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 0
  %6521 = fmul fast float %6520, %6468
  %6522 = fmul fast float %6520, %6469
  %6523 = fadd fast float %6468, %6467
  %6524 = select i1 %202, float %6523, float %6467
  %6525 = fmul float %6524, %6520
  %6526 = select i1 %202, float 0.000000e+00, float %6521
  %6527 = select i1 %202, float 0.000000e+00, float %6522
  %6528 = fmul fast float %6516, %6473
  %6529 = fmul fast float %6517, %6474
  %6530 = fmul fast float %6518, %6475
  %6531 = fadd fast float %6525, %6528
  %6532 = fadd fast float %6526, %6529
  %6533 = fadd fast float %6527, %6530
  %6534 = select i1 %202, float %6517, float %6532
  %6535 = select i1 %202, float %6518, float %6533
  %6536 = call float @dx.op.binary.f32(i32 36, float %6531, float 3.225500e+04)  ; FMin(a,b)
  %6537 = call float @dx.op.binary.f32(i32 36, float %6534, float 3.225500e+04)  ; FMin(a,b)
  %6538 = call float @dx.op.binary.f32(i32 36, float %6535, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6537)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6538)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[43 x i32] [i32 41, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !84}
!59 = !{!60, !82, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 14}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 3, i8 0, !67}
!69 = !{i32 1}
!70 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !71}
!71 = !{i32 3, i32 7}
!72 = !{i32 5, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 5, i8 0, !71}
!73 = !{i32 6, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!74 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!75 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!76 = !{i32 2}
!77 = !{i32 9, !"NORMAL_TRANSFORM", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 9, i8 0, !67}
!78 = !{i32 3}
!79 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 10, i8 0, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!84 = !{i32 0, i64 24}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}

