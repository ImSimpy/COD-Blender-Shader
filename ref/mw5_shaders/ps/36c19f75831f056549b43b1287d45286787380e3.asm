;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yz 
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                1   xyzw        3     NONE   float   xy  
; LMAPCOORDS               0   xyz         4     NONE   float   xyz 
; NORMAL                   0   xyz         5     NONE   float   xyz 
; TANGENT                  0   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        7     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        8     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           9     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: cc8b4e5480181e33fff703b48127e15d
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
; Number of inputs: 37, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %70
  %78 = fmul fast float %76, %71
  %79 = fmul fast float %57, %54
  %80 = fmul fast float %58, %53
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %58, %52
  %83 = fmul fast float %56, %54
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %56, %53
  %86 = fmul fast float %57, %52
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %81, %55
  %89 = fmul fast float %84, %55
  %90 = fmul fast float %87, %55
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 3
  %94 = fmul fast float %92, 2.000000e+00
  %95 = fmul fast float %94, %77
  %96 = fmul fast float %93, 2.000000e+00
  %97 = fmul fast float %96, %78
  %98 = fsub fast float 1.000000e+00, %95
  %99 = fsub fast float 1.000000e+00, %97
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %98, %101
  %105 = fmul fast float %98, %102
  %106 = fmul fast float %98, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %99, %108
  %112 = fmul fast float %99, %109
  %113 = fmul fast float %99, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fadd fast float %111, %115
  %119 = fadd fast float %118, %104
  %120 = fadd fast float %112, %116
  %121 = fadd fast float %120, %105
  %122 = fadd fast float %113, %117
  %123 = fadd fast float %122, %106
  %124 = fmul fast float %119, %72
  %125 = fmul fast float %121, %72
  %126 = fmul fast float %123, %72
  %127 = fadd fast float %61, 5.000000e-01
  %128 = fptoui float %127 to i32
  %129 = shl i32 %128, 3
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = or i32 %129, 4
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = and i32 %131, 8191
  %136 = lshr i32 %131, 13
  %137 = and i32 %136, 8191
  %138 = lshr i32 %131, 26
  %139 = and i32 %134, 65535
  %140 = lshr i32 %134, 16
  %141 = uitofp i32 %139 to float
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %144 = uitofp i32 %140 to float
  %145 = uitofp i32 %135 to float
  %146 = fmul fast float %143, %145
  %147 = uitofp i32 %137 to float
  %148 = fmul fast float %143, %147
  %149 = fmul fast float %143, %59
  %150 = fmul fast float %149, %141
  %151 = fmul fast float %143, %60
  %152 = fmul fast float %151, %144
  %153 = fadd fast float %150, %146
  %154 = fadd fast float %148, %152
  %155 = uitofp i32 %138 to float
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %159 = fmul fast float %157, %77
  %160 = fmul fast float %158, %78
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %162, 114688
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %164, float %159, float 0.000000e+00
  %166 = select i1 %164, float %160, float 0.000000e+00
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = fmul fast float %168, 2.550000e+02
  %170 = fptoui float %169 to i32
  %171 = select i1 %164, i32 %170, i32 0
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 3
  %175 = and i32 %174, 3
  %176 = icmp ne i32 %175, 0
  %177 = and i32 %174, 4
  %178 = icmp ne i32 %177, 0
  %179 = and i1 %176, %178
  br i1 %179, label %180, label %191

; <label>:180                                     ; preds = %0
  %181 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %182 = fmul fast float %181, %78
  %183 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %184 = fmul fast float %183, %77
  %185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %184, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fsub fast float 1.000000e+00, %186
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = fcmp fast olt float %187, %189
  br label %194

; <label>:191                                     ; preds = %0
  %192 = icmp eq i32 %177, 0
  %193 = and i1 %176, %192
  br label %194

; <label>:194                                     ; preds = %191, %180
  %195 = phi i1 [ %190, %180 ], [ %193, %191 ]
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = shl i32 %197, 4
  %199 = and i32 %198, 32752
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = lshr i32 %197, 7
  %202 = and i32 %201, 32752
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %197, 22
  %205 = shl nuw nsw i32 %204, 5
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F70101020000000
  %212 = lshr i32 %208, 8
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F70101020000000
  %216 = lshr i32 %208, 16
  %217 = and i32 %216, 255
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F70101020000000
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 224, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = shl i32 %225, 4
  %227 = and i32 %226, 32752
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %225, 7
  %230 = and i32 %229, 32752
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %225, 22
  %233 = shl nuw nsw i32 %232, 5
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %236, 8
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %236, 16
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = fmul fast float %257, 0x3F50624DE0000000
  %261 = fmul fast float %259, 0x3F50624DE0000000
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %274, 8
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %274, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 68, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %295, 0x3F50624DE0000000
  %299 = fmul fast float %297, 0x3F50624DE0000000
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 300, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = lshr i32 %301, 20
  %303 = and i32 %302, 3
  %304 = add nuw nsw i32 %303, 1
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = or i32 %308, %306
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %754, label %311

; <label>:311                                     ; preds = %194
  %312 = lshr i32 %223, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %313, 0x3F50624DE0000000
  %315 = and i32 %223, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %316, 0x3F50624DE0000000
  %318 = lshr i32 %221, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = and i32 %221, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = lshr i32 %323, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = fmul fast float %325, 0x3F50624DE0000000
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = lshr i32 %328, 16
  %330 = and i32 %329, 255
  %331 = lshr i32 %328, 24
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %333, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = lshr i32 %339, 22
  %341 = shl nuw nsw i32 %340, 5
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = shl i32 %339, 4
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 7
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 3
  %351 = fmul fast float %350, 1.000000e+03
  %352 = fmul fast float %317, %351
  %353 = call float @dx.op.unary.f32(i32 22, float %352)  ; Frc(value)
  %354 = fadd fast float %353, %321
  %355 = fmul fast float %314, %351
  %356 = call float @dx.op.unary.f32(i32 22, float %355)  ; Frc(value)
  %357 = fadd fast float %356, %319
  %358 = fmul fast float %326, %351
  %359 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %360 = fmul fast float %359, 0x401921FB60000000
  %361 = fadd fast float %360, %342
  %362 = call float @dx.op.unary.f32(i32 13, float %361)  ; Sin(value)
  %363 = call float @dx.op.unary.f32(i32 12, float %361)  ; Cos(value)
  %364 = fsub fast float -0.000000e+00, %362
  %365 = fadd fast float %64, -5.000000e-01
  %366 = fadd fast float %65, -5.000000e-01
  %367 = fmul fast float %335, %365
  %368 = fmul fast float %337, %366
  %369 = fadd fast float %367, 5.000000e-01
  %370 = fadd fast float %368, 5.000000e-01
  %371 = fmul fast float %345, %369
  %372 = fmul fast float %348, %370
  %373 = fmul fast float %363, %371
  %374 = call float @dx.op.tertiary.f32(i32 46, float %364, float %372, float %373)  ; FMad(a,b,c)
  %375 = fmul fast float %362, %371
  %376 = call float @dx.op.tertiary.f32(i32 46, float %363, float %372, float %375)  ; FMad(a,b,c)
  %377 = fadd fast float %354, %374
  %378 = fadd fast float %357, %376
  %379 = icmp ugt i32 %330, 1
  %380 = icmp ugt i32 %328, 33554431
  %381 = or i1 %380, %379
  br i1 %381, label %382, label %406

; <label>:382                                     ; preds = %311
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = lshr i32 %384, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = fmul fast float %350, %386
  %388 = call float @dx.op.unary.f32(i32 22, float %387)  ; Frc(value)
  %389 = mul nuw nsw i32 %330, %331
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %388, %390
  %392 = call float @dx.op.unary.f32(i32 27, float %391)  ; Round_ni(value)
  %393 = fptoui float %392 to i32
  %394 = urem i32 %393, %330
  %395 = udiv i32 %393, %331
  %396 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %397 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %398 = uitofp i32 %394 to float
  %399 = uitofp i32 %395 to float
  %400 = fadd fast float %396, %398
  %401 = fadd fast float %397, %399
  %402 = uitofp i32 %330 to float
  %403 = uitofp i32 %331 to float
  %404 = fdiv fast float %400, %402
  %405 = fdiv fast float %401, %403
  br label %406

; <label>:406                                     ; preds = %382, %311
  %407 = phi float [ %404, %382 ], [ %377, %311 ]
  %408 = phi float [ %405, %382 ], [ %378, %311 ]
  %409 = and i32 %306, 16
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %602, label %411

; <label>:411                                     ; preds = %406
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 312, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %73, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = and i32 %328, 255
  %422 = uitofp i32 %421 to float
  %423 = lshr i32 %328, 8
  %424 = and i32 %423, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %420, %422
  %427 = fadd fast float %426, %425
  %428 = fmul fast float %427, 0x3F70101000000000
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 512
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %440, label %433

; <label>:433                                     ; preds = %411
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 372, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %435, 0
  %437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %437, %dx.types.Handle %74, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  br label %440

; <label>:440                                     ; preds = %433, %411
  %441 = phi float [ %439, %433 ], [ 1.000000e+00, %411 ]
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 33554432
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %549, label %446

; <label>:446                                     ; preds = %440
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 65535
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = lshr i32 %458, 24
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = and i32 %458, 255
  %463 = uitofp i32 %462 to float
  %464 = fmul fast float %463, 0x3F70101020000000
  %465 = lshr i32 %458, 8
  %466 = and i32 %465, 255
  %467 = uitofp i32 %466 to float
  %468 = fmul fast float %467, 0x3F70101020000000
  %469 = lshr i32 %458, 16
  %470 = and i32 %469, 255
  %471 = uitofp i32 %470 to float
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %474, 24
  %476 = uitofp i32 %475 to float
  %477 = fmul fast float %476, 0x3F70101020000000
  %478 = and i32 %474, 255
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = lshr i32 %474, 8
  %482 = and i32 %481, 255
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %483, 0x3F70101020000000
  %485 = lshr i32 %474, 16
  %486 = and i32 %485, 255
  %487 = uitofp i32 %486 to float
  %488 = fmul fast float %487, 0x3F70101020000000
  %489 = bitcast float %417 to i32
  %490 = ashr i32 %489, 1
  %491 = sub nsw i32 1597463174, %490
  %492 = bitcast i32 %491 to float
  %493 = fmul fast float %417, 5.000000e-01
  %494 = fmul fast float %492, %492
  %495 = fmul fast float %494, %493
  %496 = fsub fast float 1.500000e+00, %495
  %497 = fmul fast float %492, %417
  %498 = fmul fast float %497, %496
  %499 = bitcast float %418 to i32
  %500 = ashr i32 %499, 1
  %501 = sub nsw i32 1597463174, %500
  %502 = bitcast i32 %501 to float
  %503 = fmul fast float %418, 5.000000e-01
  %504 = fmul fast float %502, %502
  %505 = fmul fast float %504, %503
  %506 = fsub fast float 1.500000e+00, %505
  %507 = fmul fast float %502, %418
  %508 = fmul fast float %507, %506
  %509 = bitcast float %419 to i32
  %510 = ashr i32 %509, 1
  %511 = sub nsw i32 1597463174, %510
  %512 = bitcast i32 %511 to float
  %513 = fmul fast float %419, 5.000000e-01
  %514 = fmul fast float %512, %512
  %515 = fmul fast float %514, %513
  %516 = fsub fast float 1.500000e+00, %515
  %517 = fmul fast float %512, %419
  %518 = fmul fast float %517, %516
  %519 = fsub fast float %498, %480
  %520 = fsub fast float %508, %484
  %521 = fsub fast float %518, %488
  %522 = fmul fast float %519, %450
  %523 = fmul fast float %520, %452
  %524 = fmul fast float %521, %456
  %525 = fadd fast float %522, %464
  %526 = fadd fast float %523, %468
  %527 = fadd fast float %524, %472
  %528 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %529 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %530 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %531 = fmul fast float %528, %528
  %532 = fmul fast float %529, %529
  %533 = fmul fast float %530, %530
  %534 = fsub fast float %531, %417
  %535 = fsub fast float %532, %418
  %536 = fsub fast float %533, %419
  %537 = fmul fast float %534, %441
  %538 = fmul fast float %535, %441
  %539 = fmul fast float %536, %441
  %540 = fadd fast float %537, %417
  %541 = fadd fast float %538, %418
  %542 = fadd fast float %539, %419
  %543 = fadd fast float %461, %428
  %544 = fsub fast float %543, %477
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = fsub fast float %545, %428
  %547 = fmul fast float %546, %441
  %548 = fadd fast float %547, %428
  br label %602

; <label>:549                                     ; preds = %440
  %550 = and i32 %443, 134217728
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %586, label %552

; <label>:552                                     ; preds = %549
  %553 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %554 = call float @dx.op.unary.f32(i32 24, float %215)  ; Sqrt(value)
  %555 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %556 = fadd fast float %553, -5.000000e-01
  %557 = fadd fast float %554, -5.000000e-01
  %558 = fadd fast float %555, -5.000000e-01
  %559 = fmul fast float %556, %441
  %560 = fmul fast float %557, %441
  %561 = fmul fast float %558, %441
  %562 = fadd fast float %559, 5.000000e-01
  %563 = fadd fast float %560, 5.000000e-01
  %564 = fadd fast float %561, 5.000000e-01
  %565 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %566 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %567 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %568 = fmul fast float %562, 2.000000e+00
  %569 = fsub fast float 1.000000e+00, %568
  %570 = fmul fast float %569, %565
  %571 = fadd fast float %570, %568
  %572 = fmul fast float %571, %565
  %573 = fmul fast float %563, 2.000000e+00
  %574 = fsub fast float 1.000000e+00, %573
  %575 = fmul fast float %574, %566
  %576 = fadd fast float %575, %573
  %577 = fmul fast float %576, %566
  %578 = fmul fast float %564, 2.000000e+00
  %579 = fsub fast float 1.000000e+00, %578
  %580 = fmul fast float %579, %567
  %581 = fadd fast float %580, %578
  %582 = fmul fast float %581, %567
  %583 = fmul fast float %572, %572
  %584 = fmul fast float %577, %577
  %585 = fmul fast float %582, %582
  br label %602

; <label>:586                                     ; preds = %549
  %587 = fmul fast float %211, %211
  %588 = fmul fast float %215, %215
  %589 = fmul fast float %219, %219
  %590 = fadd fast float %587, -1.000000e+00
  %591 = fadd fast float %588, -1.000000e+00
  %592 = fadd fast float %589, -1.000000e+00
  %593 = fmul fast float %441, %590
  %594 = fmul fast float %441, %591
  %595 = fmul fast float %441, %592
  %596 = fadd fast float %593, 1.000000e+00
  %597 = fadd fast float %594, 1.000000e+00
  %598 = fadd fast float %595, 1.000000e+00
  %599 = fmul fast float %596, %417
  %600 = fmul fast float %597, %418
  %601 = fmul fast float %598, %419
  br label %602

; <label>:602                                     ; preds = %586, %552, %446, %406
  %603 = phi float [ %548, %446 ], [ %428, %552 ], [ %428, %586 ], [ 0x3FA23C0BE0000000, %406 ]
  %604 = phi float [ %540, %446 ], [ %583, %552 ], [ %599, %586 ], [ 1.000000e+00, %406 ]
  %605 = phi float [ %541, %446 ], [ %584, %552 ], [ %600, %586 ], [ 1.000000e+00, %406 ]
  %606 = phi float [ %542, %446 ], [ %585, %552 ], [ %601, %586 ], [ 1.000000e+00, %406 ]
  %607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.i32 %607, 1
  %609 = and i32 %608, 1
  %610 = icmp ne i32 %609, 0
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 308, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 32
  %614 = icmp ne i32 %613, 0
  %615 = and i1 %610, %614
  %616 = select i1 %615, float 1.000000e+00, float %604
  %617 = select i1 %615, float 0x3FD3333340000000, float %605
  %618 = select i1 %615, float 0x3FD3333340000000, float %606
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 32
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %692, label %623

; <label>:623                                     ; preds = %602
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 324, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = add i32 %627, 0
  %629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %73, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = extractvalue %dx.types.ResRet.f32 %630, 1
  %633 = extractvalue %dx.types.ResRet.f32 %630, 2
  %634 = extractvalue %dx.types.ResRet.f32 %630, 3
  %635 = and i32 %625, 255
  %636 = uitofp i32 %635 to float
  %637 = lshr i32 %625, 8
  %638 = and i32 %637, 255
  %639 = uitofp i32 %638 to float
  %640 = lshr i32 %625, 16
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101000000000
  %644 = fmul fast float %631, %636
  %645 = fadd fast float %644, %639
  %646 = fmul fast float %645, 0x3F70101000000000
  %647 = fadd fast float %632, -5.000000e-01
  %648 = fadd fast float %634, -5.000000e-01
  %649 = fmul fast float %647, %643
  %650 = fmul fast float %648, %643
  %651 = fadd fast float %649, 5.000000e-01
  %652 = fadd fast float %650, 5.000000e-01
  %653 = fmul fast float %651, 2.000000e+00
  %654 = fadd fast float %653, -1.000000e+00
  %655 = fmul fast float %652, 2.000000e+00
  %656 = fadd fast float %655, -1.000000e+00
  %657 = fadd fast float %654, %656
  %658 = fmul fast float %657, 5.000000e-01
  %659 = fsub fast float %654, %656
  %660 = fmul fast float %659, 5.000000e-01
  %661 = call float @dx.op.unary.f32(i32 6, float %658)  ; FAbs(value)
  %662 = fsub fast float 1.000000e+00, %661
  %663 = call float @dx.op.unary.f32(i32 6, float %660)  ; FAbs(value)
  %664 = fsub fast float %662, %663
  %665 = call float @dx.op.dot3.f32(i32 55, float %658, float %660, float %664, float %658, float %660, float %664)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = call float @dx.op.unary.f32(i32 25, float %665)  ; Rsqrt(value)
  %667 = fmul fast float %658, %666
  %668 = fmul fast float %660, %666
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 67108864
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %688, label %673

; <label>:673                                     ; preds = %623
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 65535
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 65535
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = lshr i32 %675, 16
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = fsub fast float %646, %683
  %685 = fmul fast float %684, %677
  %686 = fadd fast float %685, %681
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  br label %688

; <label>:688                                     ; preds = %673, %623
  %689 = phi float [ %687, %673 ], [ %646, %623 ]
  %690 = call float @dx.op.dot2.f32(i32 54, float %667, float %668, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %691 = call float @dx.op.dot2.f32(i32 54, float %667, float %668, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %692

; <label>:692                                     ; preds = %688, %602
  %693 = phi float [ %689, %688 ], [ 0x3FD6666660000000, %602 ]
  %694 = phi float [ %690, %688 ], [ 0.000000e+00, %602 ]
  %695 = phi float [ %691, %688 ], [ 0.000000e+00, %602 ]
  %696 = phi float [ %633, %688 ], [ 1.000000e+00, %602 ]
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = lshr i32 %698, 22
  %700 = shl nuw nsw i32 %699, 5
  %701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %700)  ; LegacyF16ToF32(value)
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 64
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %738, label %706

; <label>:706                                     ; preds = %692
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 336, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %708, 0
  %710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 131072
  %714 = icmp eq i32 %713, 0
  %715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %710, %dx.types.Handle %73, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = fmul fast float %716, %200
  %720 = fmul fast float %717, %203
  %721 = fmul fast float %718, %206
  br i1 %714, label %728, label %722

; <label>:722                                     ; preds = %706
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %725 = fmul fast float %724, %719
  %726 = fmul fast float %724, %720
  %727 = fmul fast float %724, %721
  br label %728

; <label>:728                                     ; preds = %722, %706
  %729 = phi float [ %725, %722 ], [ %719, %706 ]
  %730 = phi float [ %726, %722 ], [ %720, %706 ]
  %731 = phi float [ %727, %722 ], [ %721, %706 ]
  %732 = fmul fast float %729, %701
  %733 = select i1 %195, float %732, float %729
  %734 = call float @dx.op.dot3.f32(i32 55, float %733, float %730, float %731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = select i1 %195, float 0.000000e+00, float %729
  %736 = select i1 %195, float %734, float %730
  %737 = select i1 %195, float 0.000000e+00, float %731
  br label %738

; <label>:738                                     ; preds = %728, %692
  %739 = phi float [ %735, %728 ], [ 0.000000e+00, %692 ]
  %740 = phi float [ %736, %728 ], [ 0.000000e+00, %692 ]
  %741 = phi float [ %737, %728 ], [ 0.000000e+00, %692 ]
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 255
  %745 = uitofp i32 %744 to float
  %746 = lshr i32 %743, 8
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = call float @dx.op.dot3.f32(i32 55, float %616, float %617, float %618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = fmul fast float %748, %749
  %751 = fadd fast float %750, %745
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  br label %754

; <label>:754                                     ; preds = %738, %194
  %755 = phi float [ %694, %738 ], [ 0.000000e+00, %194 ]
  %756 = phi float [ %695, %738 ], [ 0.000000e+00, %194 ]
  %757 = phi float [ %739, %738 ], [ 0.000000e+00, %194 ]
  %758 = phi float [ %740, %738 ], [ 0.000000e+00, %194 ]
  %759 = phi float [ %741, %738 ], [ 0.000000e+00, %194 ]
  %760 = phi float [ %616, %738 ], [ 0.000000e+00, %194 ]
  %761 = phi float [ %617, %738 ], [ 0.000000e+00, %194 ]
  %762 = phi float [ %618, %738 ], [ 0.000000e+00, %194 ]
  %763 = phi float [ %603, %738 ], [ 0.000000e+00, %194 ]
  %764 = phi float [ 1.000000e+00, %738 ], [ 0.000000e+00, %194 ]
  %765 = phi float [ %693, %738 ], [ 0.000000e+00, %194 ]
  %766 = phi float [ %696, %738 ], [ 0.000000e+00, %194 ]
  %767 = phi float [ %753, %738 ], [ 0.000000e+00, %194 ]
  %768 = icmp ult i32 %304, 2
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = or i32 %772, %770
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %1578, label %775

; <label>:775                                     ; preds = %754
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = lshr i32 %777, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = fmul fast float %779, 0x3F50624DE0000000
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = lshr i32 %782, 16
  %784 = and i32 %783, 255
  %785 = lshr i32 %782, 24
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 65535
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = lshr i32 %787, 16
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = lshr i32 %793, 22
  %795 = shl nuw nsw i32 %794, 5
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = shl i32 %793, 4
  %798 = and i32 %797, 32752
  %799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %798)  ; LegacyF16ToF32(value)
  %800 = lshr i32 %793, 7
  %801 = and i32 %800, 32752
  %802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %801)  ; LegacyF16ToF32(value)
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 3
  %805 = fmul fast float %804, 1.000000e+03
  %806 = fmul fast float %260, %805
  %807 = call float @dx.op.unary.f32(i32 22, float %806)  ; Frc(value)
  %808 = fadd fast float %807, %251
  %809 = fmul fast float %261, %805
  %810 = call float @dx.op.unary.f32(i32 22, float %809)  ; Frc(value)
  %811 = fadd fast float %810, %253
  %812 = fmul fast float %780, %805
  %813 = call float @dx.op.unary.f32(i32 22, float %812)  ; Frc(value)
  %814 = fmul fast float %813, 0x401921FB60000000
  %815 = fadd fast float %814, %796
  %816 = call float @dx.op.unary.f32(i32 13, float %815)  ; Sin(value)
  %817 = call float @dx.op.unary.f32(i32 12, float %815)  ; Cos(value)
  %818 = fsub fast float -0.000000e+00, %816
  %819 = fadd fast float %66, -5.000000e-01
  %820 = fadd fast float %67, -5.000000e-01
  %821 = fmul fast float %789, %819
  %822 = fmul fast float %791, %820
  %823 = fadd fast float %821, 5.000000e-01
  %824 = fadd fast float %822, 5.000000e-01
  %825 = fmul fast float %799, %823
  %826 = fmul fast float %802, %824
  %827 = fmul fast float %817, %825
  %828 = call float @dx.op.tertiary.f32(i32 46, float %818, float %826, float %827)  ; FMad(a,b,c)
  %829 = fmul fast float %816, %825
  %830 = call float @dx.op.tertiary.f32(i32 46, float %817, float %826, float %829)  ; FMad(a,b,c)
  %831 = fadd fast float %808, %828
  %832 = fadd fast float %811, %830
  %833 = icmp ugt i32 %784, 1
  %834 = icmp ugt i32 %782, 33554431
  %835 = or i1 %834, %833
  br i1 %835, label %836, label %860

; <label>:836                                     ; preds = %775
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = lshr i32 %838, 16
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = fmul fast float %804, %840
  %842 = call float @dx.op.unary.f32(i32 22, float %841)  ; Frc(value)
  %843 = mul nuw nsw i32 %784, %785
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %842, %844
  %846 = call float @dx.op.unary.f32(i32 27, float %845)  ; Round_ni(value)
  %847 = fptoui float %846 to i32
  %848 = urem i32 %847, %784
  %849 = udiv i32 %847, %785
  %850 = call float @dx.op.unary.f32(i32 22, float %831)  ; Frc(value)
  %851 = call float @dx.op.unary.f32(i32 22, float %832)  ; Frc(value)
  %852 = uitofp i32 %848 to float
  %853 = uitofp i32 %849 to float
  %854 = fadd fast float %850, %852
  %855 = fadd fast float %851, %853
  %856 = uitofp i32 %784 to float
  %857 = uitofp i32 %785 to float
  %858 = fdiv fast float %854, %856
  %859 = fdiv fast float %855, %857
  br label %860

; <label>:860                                     ; preds = %836, %775
  %861 = phi float [ %858, %836 ], [ %831, %775 ]
  %862 = phi float [ %859, %836 ], [ %832, %775 ]
  %863 = and i32 %770, 16777216
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %974, label %865

; <label>:865                                     ; preds = %860
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %870 = fadd fast float %867, %124
  %871 = fadd fast float %868, %125
  %872 = fadd fast float %869, %126
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %876 = icmp eq i32 %43, 65535
  br i1 %876, label %971, label %877

; <label>:877                                     ; preds = %865
  %878 = lshr i32 %43, 1
  %879 = shl i32 %878, 2
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %43, 1
  %883 = icmp ne i32 %882, 0
  %884 = lshr i32 %881, 16
  %885 = and i32 %881, 65535
  %886 = select i1 %883, i32 %884, i32 %885
  %887 = icmp eq i32 %886, 65535
  br i1 %887, label %967, label %888

; <label>:888                                     ; preds = %877
  %889 = mul nuw nsw i32 %886, 40
  %890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = add nuw nsw i32 %889, 12
  %895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = add nuw nsw i32 %889, 24
  %900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = add nuw nsw i32 %889, 36
  %905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = fsub fast float %870, %891
  %908 = fsub fast float %871, %892
  %909 = fsub fast float %872, %893
  %910 = fmul fast float %906, %907
  %911 = fmul fast float %906, %908
  %912 = fmul fast float %906, %909
  %913 = call float @dx.op.unary.f32(i32 27, float %910)  ; Round_ni(value)
  %914 = call float @dx.op.unary.f32(i32 27, float %911)  ; Round_ni(value)
  %915 = call float @dx.op.unary.f32(i32 27, float %912)  ; Round_ni(value)
  %916 = fadd fast float %913, 5.000000e-01
  %917 = fadd fast float %914, 5.000000e-01
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fmul fast float %916, %896
  %920 = fmul fast float %917, %897
  %921 = fmul fast float %918, %898
  %922 = shl i32 %43, 2
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = add i32 %924, 0
  %926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %927 = call float @dx.op.unary.f32(i32 22, float %919)  ; Frc(value)
  %928 = call float @dx.op.unary.f32(i32 22, float %920)  ; Frc(value)
  %929 = call float @dx.op.unary.f32(i32 22, float %921)  ; Frc(value)
  %930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %926, %dx.types.Handle %40, float %927, float %928, float %929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = extractvalue %dx.types.ResRet.f32 %930, 1
  %933 = extractvalue %dx.types.ResRet.f32 %930, 2
  %934 = fmul fast float %931, 1.023000e+03
  %935 = fmul fast float %932, 1.023000e+03
  %936 = fmul fast float %933, 1.023000e+03
  %937 = fadd fast float %934, 5.000000e-01
  %938 = fadd fast float %935, 5.000000e-01
  %939 = fadd fast float %936, 5.000000e-01
  %940 = call float @dx.op.unary.f32(i32 27, float %937)  ; Round_ni(value)
  %941 = call float @dx.op.unary.f32(i32 27, float %938)  ; Round_ni(value)
  %942 = call float @dx.op.unary.f32(i32 27, float %939)  ; Round_ni(value)
  %943 = fsub fast float %910, %913
  %944 = fsub fast float %911, %914
  %945 = fsub fast float %912, %915
  %946 = fmul fast float %943, 7.500000e-01
  %947 = fmul fast float %944, 7.500000e-01
  %948 = fmul fast float %945, 7.500000e-01
  %949 = fadd fast float %913, 1.250000e-01
  %950 = fadd fast float %949, %946
  %951 = fadd fast float %950, %940
  %952 = fadd fast float %914, 1.250000e-01
  %953 = fadd fast float %952, %947
  %954 = fadd fast float %953, %941
  %955 = fadd fast float %915, 1.250000e-01
  %956 = fadd fast float %955, %948
  %957 = fadd fast float %956, %942
  %958 = fmul fast float %951, %901
  %959 = fmul fast float %954, %902
  %960 = fmul fast float %957, %903
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = add i32 %962, 0
  %964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %964, %dx.types.Handle %38, float %958, float %959, float %960, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  br label %967

; <label>:967                                     ; preds = %888, %877
  %968 = phi float [ %966, %888 ], [ -1.000000e+00, %877 ]
  %969 = fadd fast float %968, %875
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  br label %971

; <label>:971                                     ; preds = %967, %865
  %972 = phi float [ %970, %967 ], [ %875, %865 ]
  %973 = fmul fast float %972, %68
  br label %974

; <label>:974                                     ; preds = %971, %860
  %975 = phi float [ %973, %971 ], [ %68, %860 ]
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 256
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1024, label %980

; <label>:980                                     ; preds = %974
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 364, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = add i32 %982, 0
  %984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %984, %dx.types.Handle %74, float %861, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = shl i32 %988, 4
  %990 = and i32 %989, 32752
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %988, 7
  %993 = and i32 %992, 32752
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = fsub fast float 1.000000e+00, %975
  %996 = call float @dx.op.binary.f32(i32 35, float %995, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %997 = bitcast float %975 to i32
  %998 = sitofp i32 %997 to float
  %999 = fadd fast float %998, 0xC1CFBF8940000000
  %1000 = fmul fast float %994, %999
  %1001 = fadd fast float %1000, 0x41CFBF8940000000
  %1002 = fptosi float %1001 to i32
  %1003 = bitcast i32 %1002 to float
  %1004 = bitcast float %996 to i32
  %1005 = sitofp i32 %1004 to float
  %1006 = fadd fast float %1005, 0xC1CFBF8940000000
  %1007 = fmul fast float %1006, %994
  %1008 = fadd fast float %1007, 0x41CFBF8940000000
  %1009 = fptosi float %1008 to i32
  %1010 = bitcast i32 %1009 to float
  %1011 = fmul fast float %1003, %991
  %1012 = fmul fast float %1010, %991
  %1013 = fsub fast float %996, %1011
  %1014 = fadd fast float %1012, %996
  %1015 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1016 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1017 = fsub fast float %986, %1015
  %1018 = fsub fast float %1016, %1015
  %1019 = bitcast float %1018 to i32
  %1020 = sub nsw i32 2129859010, %1019
  %1021 = bitcast i32 %1020 to float
  %1022 = fmul fast float %1021, %1017
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  br label %1024

; <label>:1024                                    ; preds = %980, %974
  %1025 = phi float [ %1023, %980 ], [ %975, %974 ]
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 128
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1045, label %1030

; <label>:1030                                    ; preds = %1024
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1034, %dx.types.Handle %74, float %861, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 524288
  %1040 = icmp ne i32 %1039, 0
  %1041 = fcmp fast ogt float %1036, 0x3FE0101020000000
  %1042 = select i1 %1041, float 1.000000e+00, float 0.000000e+00
  %1043 = select i1 %1040, float %1042, float %1036
  %1044 = fmul fast float %1043, %1025
  br label %1045

; <label>:1045                                    ; preds = %1030, %1024
  %1046 = phi float [ %1044, %1030 ], [ %1025, %1024 ]
  %1047 = fcmp fast ult float %1046, 0x3F70101020000000
  br i1 %1047, label %1578, label %1048

; <label>:1048                                    ; preds = %1045
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 16
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1246, label %1053

; <label>:1053                                    ; preds = %1048
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = add i32 %1057, 0
  %1059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1060 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1059, %dx.types.Handle %73, float %861, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.f32 %1060, 3
  %1065 = and i32 %1055, 255
  %1066 = uitofp i32 %1065 to float
  %1067 = lshr i32 %1055, 8
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = fmul fast float %1064, %1066
  %1071 = fadd fast float %1070, %1069
  %1072 = fmul fast float %1071, 0x3F70101000000000
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 512
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1084, label %1077

; <label>:1077                                    ; preds = %1053
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = add i32 %1079, 0
  %1081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1081, %dx.types.Handle %74, float %861, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  br label %1084

; <label>:1084                                    ; preds = %1077, %1053
  %1085 = phi float [ %1083, %1077 ], [ 1.000000e+00, %1053 ]
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 33554432
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1193, label %1090

; <label>:1090                                    ; preds = %1084
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1092, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 65535
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = lshr i32 %1102, 24
  %1104 = uitofp i32 %1103 to float
  %1105 = fmul fast float %1104, 0x3F70101020000000
  %1106 = and i32 %1102, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = fmul fast float %1107, 0x3F70101020000000
  %1109 = lshr i32 %1102, 8
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = fmul fast float %1111, 0x3F70101020000000
  %1113 = lshr i32 %1102, 16
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F70101020000000
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1133 = bitcast float %1061 to i32
  %1134 = ashr i32 %1133, 1
  %1135 = sub nsw i32 1597463174, %1134
  %1136 = bitcast i32 %1135 to float
  %1137 = fmul fast float %1061, 5.000000e-01
  %1138 = fmul fast float %1136, %1136
  %1139 = fmul fast float %1138, %1137
  %1140 = fsub fast float 1.500000e+00, %1139
  %1141 = fmul fast float %1136, %1061
  %1142 = fmul fast float %1141, %1140
  %1143 = bitcast float %1062 to i32
  %1144 = ashr i32 %1143, 1
  %1145 = sub nsw i32 1597463174, %1144
  %1146 = bitcast i32 %1145 to float
  %1147 = fmul fast float %1062, 5.000000e-01
  %1148 = fmul fast float %1146, %1146
  %1149 = fmul fast float %1148, %1147
  %1150 = fsub fast float 1.500000e+00, %1149
  %1151 = fmul fast float %1146, %1062
  %1152 = fmul fast float %1151, %1150
  %1153 = bitcast float %1063 to i32
  %1154 = ashr i32 %1153, 1
  %1155 = sub nsw i32 1597463174, %1154
  %1156 = bitcast i32 %1155 to float
  %1157 = fmul fast float %1063, 5.000000e-01
  %1158 = fmul fast float %1156, %1156
  %1159 = fmul fast float %1158, %1157
  %1160 = fsub fast float 1.500000e+00, %1159
  %1161 = fmul fast float %1156, %1063
  %1162 = fmul fast float %1161, %1160
  %1163 = fsub fast float %1142, %1124
  %1164 = fsub fast float %1152, %1128
  %1165 = fsub fast float %1162, %1132
  %1166 = fmul fast float %1163, %1094
  %1167 = fmul fast float %1164, %1096
  %1168 = fmul fast float %1165, %1100
  %1169 = fadd fast float %1166, %1108
  %1170 = fadd fast float %1167, %1112
  %1171 = fadd fast float %1168, %1116
  %1172 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1173 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1174 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1175 = fmul fast float %1172, %1172
  %1176 = fmul fast float %1173, %1173
  %1177 = fmul fast float %1174, %1174
  %1178 = fsub fast float %1175, %1061
  %1179 = fsub fast float %1176, %1062
  %1180 = fsub fast float %1177, %1063
  %1181 = fmul fast float %1178, %1085
  %1182 = fmul fast float %1179, %1085
  %1183 = fmul fast float %1180, %1085
  %1184 = fadd fast float %1181, %1061
  %1185 = fadd fast float %1182, %1062
  %1186 = fadd fast float %1183, %1063
  %1187 = fadd fast float %1105, %1072
  %1188 = fsub fast float %1187, %1121
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = fsub fast float %1189, %1072
  %1191 = fmul fast float %1190, %1085
  %1192 = fadd fast float %1191, %1072
  br label %1246

; <label>:1193                                    ; preds = %1084
  %1194 = and i32 %1087, 134217728
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1230, label %1196

; <label>:1196                                    ; preds = %1193
  %1197 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1198 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1199 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1200 = fadd fast float %1197, -5.000000e-01
  %1201 = fadd fast float %1198, -5.000000e-01
  %1202 = fadd fast float %1199, -5.000000e-01
  %1203 = fmul fast float %1200, %1085
  %1204 = fmul fast float %1201, %1085
  %1205 = fmul fast float %1202, %1085
  %1206 = fadd fast float %1203, 5.000000e-01
  %1207 = fadd fast float %1204, 5.000000e-01
  %1208 = fadd fast float %1205, 5.000000e-01
  %1209 = call float @dx.op.unary.f32(i32 24, float %1061)  ; Sqrt(value)
  %1210 = call float @dx.op.unary.f32(i32 24, float %1062)  ; Sqrt(value)
  %1211 = call float @dx.op.unary.f32(i32 24, float %1063)  ; Sqrt(value)
  %1212 = fmul fast float %1206, 2.000000e+00
  %1213 = fsub fast float 1.000000e+00, %1212
  %1214 = fmul fast float %1213, %1209
  %1215 = fadd fast float %1214, %1212
  %1216 = fmul fast float %1215, %1209
  %1217 = fmul fast float %1207, 2.000000e+00
  %1218 = fsub fast float 1.000000e+00, %1217
  %1219 = fmul fast float %1218, %1210
  %1220 = fadd fast float %1219, %1217
  %1221 = fmul fast float %1220, %1210
  %1222 = fmul fast float %1208, 2.000000e+00
  %1223 = fsub fast float 1.000000e+00, %1222
  %1224 = fmul fast float %1223, %1211
  %1225 = fadd fast float %1224, %1222
  %1226 = fmul fast float %1225, %1211
  %1227 = fmul fast float %1216, %1216
  %1228 = fmul fast float %1221, %1221
  %1229 = fmul fast float %1226, %1226
  br label %1246

; <label>:1230                                    ; preds = %1193
  %1231 = fmul fast float %239, %239
  %1232 = fmul fast float %243, %243
  %1233 = fmul fast float %247, %247
  %1234 = fadd fast float %1231, -1.000000e+00
  %1235 = fadd fast float %1232, -1.000000e+00
  %1236 = fadd fast float %1233, -1.000000e+00
  %1237 = fmul fast float %1085, %1234
  %1238 = fmul fast float %1085, %1235
  %1239 = fmul fast float %1085, %1236
  %1240 = fadd fast float %1237, 1.000000e+00
  %1241 = fadd fast float %1238, 1.000000e+00
  %1242 = fadd fast float %1239, 1.000000e+00
  %1243 = fmul fast float %1240, %1061
  %1244 = fmul fast float %1241, %1062
  %1245 = fmul fast float %1242, %1063
  br label %1246

; <label>:1246                                    ; preds = %1230, %1196, %1090, %1048
  %1247 = phi float [ %1192, %1090 ], [ %1072, %1196 ], [ %1072, %1230 ], [ 0x3FA23C0BE0000000, %1048 ]
  %1248 = phi float [ %1184, %1090 ], [ %1227, %1196 ], [ %1243, %1230 ], [ 1.000000e+00, %1048 ]
  %1249 = phi float [ %1185, %1090 ], [ %1228, %1196 ], [ %1244, %1230 ], [ 1.000000e+00, %1048 ]
  %1250 = phi float [ %1186, %1090 ], [ %1229, %1196 ], [ %1245, %1230 ], [ 1.000000e+00, %1048 ]
  %1251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.i32 %1251, 1
  %1253 = and i32 %1252, 1
  %1254 = icmp ne i32 %1253, 0
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = and i32 %1256, 32
  %1258 = icmp ne i32 %1257, 0
  %1259 = and i1 %1254, %1258
  %1260 = select i1 %1259, float 1.000000e+00, float %1248
  %1261 = select i1 %1259, float 0x3FD3333340000000, float %1249
  %1262 = select i1 %1259, float 0x3FD3333340000000, float %1250
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 32
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1336, label %1267

; <label>:1267                                    ; preds = %1246
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %73, float %861, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.ResRet.f32 %1274, 3
  %1279 = and i32 %1269, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = lshr i32 %1269, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = lshr i32 %1269, 16
  %1285 = and i32 %1284, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1286, 0x3F70101000000000
  %1288 = fmul fast float %1275, %1280
  %1289 = fadd fast float %1288, %1283
  %1290 = fmul fast float %1289, 0x3F70101000000000
  %1291 = fadd fast float %1276, -5.000000e-01
  %1292 = fadd fast float %1278, -5.000000e-01
  %1293 = fmul fast float %1291, %1287
  %1294 = fmul fast float %1292, %1287
  %1295 = fadd fast float %1293, 5.000000e-01
  %1296 = fadd fast float %1294, 5.000000e-01
  %1297 = fmul fast float %1295, 2.000000e+00
  %1298 = fadd fast float %1297, -1.000000e+00
  %1299 = fmul fast float %1296, 2.000000e+00
  %1300 = fadd fast float %1299, -1.000000e+00
  %1301 = fadd fast float %1298, %1300
  %1302 = fmul fast float %1301, 5.000000e-01
  %1303 = fsub fast float %1298, %1300
  %1304 = fmul fast float %1303, 5.000000e-01
  %1305 = call float @dx.op.unary.f32(i32 6, float %1302)  ; FAbs(value)
  %1306 = fsub fast float 1.000000e+00, %1305
  %1307 = call float @dx.op.unary.f32(i32 6, float %1304)  ; FAbs(value)
  %1308 = fsub fast float %1306, %1307
  %1309 = call float @dx.op.dot3.f32(i32 55, float %1302, float %1304, float %1308, float %1302, float %1304, float %1308)  ; Dot3(ax,ay,az,bx,by,bz)
  %1310 = call float @dx.op.unary.f32(i32 25, float %1309)  ; Rsqrt(value)
  %1311 = fmul fast float %1302, %1310
  %1312 = fmul fast float %1304, %1310
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 67108864
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1332, label %1317

; <label>:1317                                    ; preds = %1267
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 65535
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 65535
  %1325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1324)  ; LegacyF16ToF32(value)
  %1326 = lshr i32 %1319, 16
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = fsub fast float %1290, %1327
  %1329 = fmul fast float %1328, %1321
  %1330 = fadd fast float %1329, %1325
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  br label %1332

; <label>:1332                                    ; preds = %1317, %1267
  %1333 = phi float [ %1331, %1317 ], [ %1290, %1267 ]
  %1334 = call float @dx.op.dot2.f32(i32 54, float %1311, float %1312, float %48, float %49)  ; Dot2(ax,ay,bx,by)
  %1335 = call float @dx.op.dot2.f32(i32 54, float %1311, float %1312, float %50, float %51)  ; Dot2(ax,ay,bx,by)
  br label %1336

; <label>:1336                                    ; preds = %1332, %1246
  %1337 = phi float [ %1333, %1332 ], [ 0x3FD6666660000000, %1246 ]
  %1338 = phi float [ %1334, %1332 ], [ 0.000000e+00, %1246 ]
  %1339 = phi float [ %1335, %1332 ], [ 0.000000e+00, %1246 ]
  %1340 = phi float [ %1277, %1332 ], [ 1.000000e+00, %1246 ]
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = lshr i32 %1342, 22
  %1344 = shl nuw nsw i32 %1343, 5
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %1347, 64
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1382, label %1350

; <label>:1350                                    ; preds = %1336
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 131072
  %1358 = icmp eq i32 %1357, 0
  %1359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1354, %dx.types.Handle %73, float %861, float %862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  %1363 = fmul fast float %1360, %228
  %1364 = fmul fast float %1361, %231
  %1365 = fmul fast float %1362, %234
  br i1 %1358, label %1372, label %1366

; <label>:1366                                    ; preds = %1350
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = fmul fast float %1368, %1363
  %1370 = fmul fast float %1368, %1364
  %1371 = fmul fast float %1368, %1365
  br label %1372

; <label>:1372                                    ; preds = %1366, %1350
  %1373 = phi float [ %1369, %1366 ], [ %1363, %1350 ]
  %1374 = phi float [ %1370, %1366 ], [ %1364, %1350 ]
  %1375 = phi float [ %1371, %1366 ], [ %1365, %1350 ]
  %1376 = fmul fast float %1373, %1345
  %1377 = select i1 %195, float %1376, float %1373
  %1378 = call float @dx.op.dot3.f32(i32 55, float %1377, float %1374, float %1375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1379 = select i1 %195, float 0.000000e+00, float %1373
  %1380 = select i1 %195, float %1378, float %1374
  %1381 = select i1 %195, float 0.000000e+00, float %1375
  br label %1382

; <label>:1382                                    ; preds = %1372, %1336
  %1383 = phi float [ %1379, %1372 ], [ 0.000000e+00, %1336 ]
  %1384 = phi float [ %1380, %1372 ], [ 0.000000e+00, %1336 ]
  %1385 = phi float [ %1381, %1372 ], [ 0.000000e+00, %1336 ]
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = lshr i32 %1387, 8
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = call float @dx.op.dot3.f32(i32 55, float %1260, float %1261, float %1262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1394 = fmul fast float %1392, %1393
  %1395 = fadd fast float %1394, %1389
  %1396 = fmul fast float %1395, 0x3F70101020000000
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  br i1 %768, label %1398, label %1406

; <label>:1398                                    ; preds = %1382
  %1399 = fsub fast float 1.000000e+00, %1046
  %1400 = fmul fast float %1399, %760
  %1401 = fmul fast float %1399, %761
  %1402 = fmul fast float %1399, %762
  %1403 = fmul fast float %1399, %757
  %1404 = fmul fast float %1399, %758
  %1405 = fmul fast float %1399, %759
  br label %1406

; <label>:1406                                    ; preds = %1398, %1382
  %1407 = phi float [ %1403, %1398 ], [ %757, %1382 ]
  %1408 = phi float [ %1404, %1398 ], [ %758, %1382 ]
  %1409 = phi float [ %1405, %1398 ], [ %759, %1382 ]
  %1410 = phi float [ %1400, %1398 ], [ %760, %1382 ]
  %1411 = phi float [ %1401, %1398 ], [ %761, %1382 ]
  %1412 = phi float [ %1402, %1398 ], [ %762, %1382 ]
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 3
  %1416 = icmp eq i32 %1415, 3
  br i1 %1416, label %1495, label %1417

; <label>:1417                                    ; preds = %1406
  %1418 = and i32 %1414, 16
  %1419 = icmp ne i32 %1418, 0
  %1420 = select i1 %1419, float %1046, float 0.000000e+00
  %1421 = icmp eq i32 %1415, 0
  br i1 %1421, label %1422, label %1450

; <label>:1422                                    ; preds = %1417
  %1423 = and i32 %1414, 64
  %1424 = icmp ne i32 %1423, 0
  %1425 = select i1 %1424, float %1046, float 0.000000e+00
  %1426 = fsub fast float %1260, %1410
  %1427 = fsub fast float %1261, %1411
  %1428 = fsub fast float %1262, %1412
  %1429 = fmul fast float %1420, %1426
  %1430 = fmul fast float %1420, %1427
  %1431 = fmul fast float %1420, %1428
  %1432 = fadd fast float %1429, %1410
  %1433 = fadd fast float %1430, %1411
  %1434 = fadd fast float %1431, %1412
  %1435 = fsub fast float %1247, %763
  %1436 = fmul fast float %1420, %1435
  %1437 = fadd fast float %1436, %763
  %1438 = fsub fast float %1383, %1407
  %1439 = fsub fast float %1384, %1408
  %1440 = fsub fast float %1385, %1409
  %1441 = fmul fast float %1425, %1438
  %1442 = fmul fast float %1425, %1439
  %1443 = fmul fast float %1425, %1440
  %1444 = fadd fast float %1441, %1407
  %1445 = fadd fast float %1442, %1408
  %1446 = fadd fast float %1443, %1409
  %1447 = fsub fast float %1397, %767
  %1448 = fmul fast float %1420, %1447
  %1449 = fadd fast float %1448, %767
  br label %1495

; <label>:1450                                    ; preds = %1417
  %1451 = icmp eq i32 %1415, 1
  br i1 %1451, label %1452, label %1465

; <label>:1452                                    ; preds = %1450
  %1453 = fadd fast float %1260, -1.000000e+00
  %1454 = fadd fast float %1261, -1.000000e+00
  %1455 = fadd fast float %1262, -1.000000e+00
  %1456 = fmul fast float %1420, %1453
  %1457 = fmul fast float %1420, %1454
  %1458 = fmul fast float %1420, %1455
  %1459 = fadd fast float %1456, 1.000000e+00
  %1460 = fadd fast float %1457, 1.000000e+00
  %1461 = fadd fast float %1458, 1.000000e+00
  %1462 = fmul fast float %1459, %1410
  %1463 = fmul fast float %1460, %1411
  %1464 = fmul fast float %1461, %1412
  br label %1495

; <label>:1465                                    ; preds = %1450
  %1466 = icmp eq i32 %1415, 2
  br i1 %1466, label %1467, label %1495

; <label>:1467                                    ; preds = %1465
  %1468 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1469 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1470 = call float @dx.op.unary.f32(i32 24, float %1262)  ; Sqrt(value)
  %1471 = fadd fast float %1468, -5.000000e-01
  %1472 = fadd fast float %1469, -5.000000e-01
  %1473 = fadd fast float %1470, -5.000000e-01
  %1474 = fmul fast float %1471, %1420
  %1475 = fmul fast float %1472, %1420
  %1476 = fmul fast float %1473, %1420
  %1477 = fadd fast float %1474, 5.000000e-01
  %1478 = fadd fast float %1475, 5.000000e-01
  %1479 = fadd fast float %1476, 5.000000e-01
  %1480 = fmul fast float %1477, 2.000000e+00
  %1481 = fsub fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1481, %1410
  %1483 = fadd fast float %1482, %1480
  %1484 = fmul fast float %1483, %1410
  %1485 = fmul fast float %1478, 2.000000e+00
  %1486 = fsub fast float 1.000000e+00, %1485
  %1487 = fmul fast float %1486, %1411
  %1488 = fadd fast float %1487, %1485
  %1489 = fmul fast float %1488, %1411
  %1490 = fmul fast float %1479, 2.000000e+00
  %1491 = fsub fast float 1.000000e+00, %1490
  %1492 = fmul fast float %1491, %1412
  %1493 = fadd fast float %1492, %1490
  %1494 = fmul fast float %1493, %1412
  br label %1495

; <label>:1495                                    ; preds = %1467, %1465, %1452, %1422, %1406
  %1496 = phi float [ %1407, %1406 ], [ %1407, %1467 ], [ %1407, %1465 ], [ %1407, %1452 ], [ %1444, %1422 ]
  %1497 = phi float [ %1408, %1406 ], [ %1408, %1467 ], [ %1408, %1465 ], [ %1408, %1452 ], [ %1445, %1422 ]
  %1498 = phi float [ %1409, %1406 ], [ %1409, %1467 ], [ %1409, %1465 ], [ %1409, %1452 ], [ %1446, %1422 ]
  %1499 = phi float [ %1410, %1406 ], [ %1484, %1467 ], [ %1410, %1465 ], [ %1462, %1452 ], [ %1432, %1422 ]
  %1500 = phi float [ %1411, %1406 ], [ %1489, %1467 ], [ %1411, %1465 ], [ %1463, %1452 ], [ %1433, %1422 ]
  %1501 = phi float [ %1412, %1406 ], [ %1494, %1467 ], [ %1412, %1465 ], [ %1464, %1452 ], [ %1434, %1422 ]
  %1502 = phi float [ %763, %1406 ], [ %763, %1467 ], [ %763, %1465 ], [ %763, %1452 ], [ %1437, %1422 ]
  %1503 = phi float [ %767, %1406 ], [ %767, %1467 ], [ %767, %1465 ], [ %767, %1452 ], [ %1449, %1422 ]
  %1504 = and i32 %1414, 12
  %1505 = icmp eq i32 %1504, 12
  br i1 %1505, label %1578, label %1506

; <label>:1506                                    ; preds = %1495
  %1507 = and i32 %1414, 2097184
  %1508 = icmp eq i32 %1507, 2097184
  %1509 = select i1 %1508, float %1046, float 0.000000e+00
  %1510 = and i32 %1414, 4194336
  %1511 = icmp eq i32 %1510, 4194336
  %1512 = select i1 %1511, float %1046, float 0.000000e+00
  %1513 = and i32 %1414, 8388640
  %1514 = icmp eq i32 %1513, 8388640
  %1515 = select i1 %1514, float %1046, float 0.000000e+00
  %1516 = icmp eq i32 %1504, 0
  br i1 %1516, label %1517, label %1530

; <label>:1517                                    ; preds = %1506
  %1518 = fsub fast float %1338, %755
  %1519 = fsub fast float %1339, %756
  %1520 = fmul fast float %1509, %1518
  %1521 = fmul fast float %1509, %1519
  %1522 = fadd fast float %1520, %755
  %1523 = fadd fast float %1521, %756
  %1524 = fsub fast float %1340, %766
  %1525 = fmul fast float %1512, %1524
  %1526 = fadd fast float %1525, %766
  %1527 = fsub fast float %1337, %765
  %1528 = fmul fast float %1515, %1527
  %1529 = fadd fast float %1528, %765
  br label %1578

; <label>:1530                                    ; preds = %1506
  %1531 = icmp eq i32 %1504, 4
  br i1 %1531, label %1532, label %1564

; <label>:1532                                    ; preds = %1530
  %1533 = fmul fast float %1509, %1338
  %1534 = fmul fast float %1509, %1339
  %1535 = fadd fast float %1533, %755
  %1536 = fadd fast float %1534, %756
  %1537 = call float @dx.op.binary.f32(i32 36, float %766, float %1340)  ; FMin(a,b)
  %1538 = fsub fast float %1537, %766
  %1539 = fmul fast float %1538, %1512
  %1540 = fadd fast float %1539, %766
  %1541 = fadd fast float %1337, %765
  %1542 = fmul fast float %1541, 0x3FF337FAE0000000
  %1543 = fmul fast float %765, %765
  %1544 = fmul fast float %1337, %1337
  %1545 = fadd fast float %1544, %1543
  %1546 = fmul fast float %1545, 0x3FE5152B00000000
  %1547 = fmul fast float %765, 0xBFCC1F85E0000000
  %1548 = fmul fast float %1547, %1337
  %1549 = fadd fast float %1548, 0xBFE1363700000000
  %1550 = fadd fast float %1549, %1542
  %1551 = fsub fast float %1550, %1546
  %1552 = fmul fast float %1541, 0x3FBA6F0D00000000
  %1553 = fmul fast float %1545, 0x3FD0432880000000
  %1554 = fmul fast float %765, 0xBFEF110800000000
  %1555 = fmul fast float %1554, %1337
  %1556 = fadd fast float %1555, 1.000000e+00
  %1557 = fsub fast float %1556, %1552
  %1558 = fadd fast float %1557, %1553
  %1559 = fdiv fast float %1551, %1558
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = fsub fast float %1560, %765
  %1562 = fmul fast float %1561, %1515
  %1563 = fadd fast float %1562, %765
  br label %1578

; <label>:1564                                    ; preds = %1530
  %1565 = icmp eq i32 %1504, 8
  br i1 %1565, label %1566, label %1578

; <label>:1566                                    ; preds = %1564
  %1567 = fmul fast float %1509, %1338
  %1568 = fmul fast float %1509, %1339
  %1569 = fadd fast float %1567, %755
  %1570 = fadd fast float %1568, %756
  %1571 = call float @dx.op.binary.f32(i32 36, float %766, float %1340)  ; FMin(a,b)
  %1572 = fsub fast float %1571, %766
  %1573 = fmul fast float %1572, %1512
  %1574 = fadd fast float %1573, %766
  %1575 = fsub fast float %1337, %765
  %1576 = fmul fast float %1515, %1575
  %1577 = fadd fast float %1576, %765
  br label %1578

; <label>:1578                                    ; preds = %1566, %1564, %1532, %1517, %1495, %1045, %754
  %1579 = phi float [ %755, %1495 ], [ %755, %1045 ], [ %755, %754 ], [ %1522, %1517 ], [ %1535, %1532 ], [ %755, %1564 ], [ %1569, %1566 ]
  %1580 = phi float [ %756, %1495 ], [ %756, %1045 ], [ %756, %754 ], [ %1523, %1517 ], [ %1536, %1532 ], [ %756, %1564 ], [ %1570, %1566 ]
  %1581 = phi float [ %1496, %1495 ], [ %757, %1045 ], [ %757, %754 ], [ %1496, %1517 ], [ %1496, %1532 ], [ %1496, %1564 ], [ %1496, %1566 ]
  %1582 = phi float [ %1497, %1495 ], [ %758, %1045 ], [ %758, %754 ], [ %1497, %1517 ], [ %1497, %1532 ], [ %1497, %1564 ], [ %1497, %1566 ]
  %1583 = phi float [ %1498, %1495 ], [ %759, %1045 ], [ %759, %754 ], [ %1498, %1517 ], [ %1498, %1532 ], [ %1498, %1564 ], [ %1498, %1566 ]
  %1584 = phi float [ %1499, %1495 ], [ %760, %1045 ], [ %760, %754 ], [ %1499, %1517 ], [ %1499, %1532 ], [ %1499, %1564 ], [ %1499, %1566 ]
  %1585 = phi float [ %1500, %1495 ], [ %761, %1045 ], [ %761, %754 ], [ %1500, %1517 ], [ %1500, %1532 ], [ %1500, %1564 ], [ %1500, %1566 ]
  %1586 = phi float [ %1501, %1495 ], [ %762, %1045 ], [ %762, %754 ], [ %1501, %1517 ], [ %1501, %1532 ], [ %1501, %1564 ], [ %1501, %1566 ]
  %1587 = phi float [ %1502, %1495 ], [ %763, %1045 ], [ %763, %754 ], [ %1502, %1517 ], [ %1502, %1532 ], [ %1502, %1564 ], [ %1502, %1566 ]
  %1588 = phi float [ %765, %1495 ], [ %765, %1045 ], [ %765, %754 ], [ %1529, %1517 ], [ %1563, %1532 ], [ %765, %1564 ], [ %1577, %1566 ]
  %1589 = phi float [ %766, %1495 ], [ %766, %1045 ], [ %766, %754 ], [ %1526, %1517 ], [ %1540, %1532 ], [ %766, %1564 ], [ %1574, %1566 ]
  %1590 = phi float [ %1503, %1495 ], [ %767, %1045 ], [ %767, %754 ], [ %1503, %1517 ], [ %1503, %1532 ], [ %1503, %1564 ], [ %1503, %1566 ]
  %1591 = icmp ult i32 %304, 3
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = or i32 %1595, %1593
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %2401, label %1598

; <label>:1598                                    ; preds = %1578
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = lshr i32 %1600, 16
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = fmul fast float %1602, 0x3F50624DE0000000
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 16
  %1607 = and i32 %1606, 255
  %1608 = lshr i32 %1605, 24
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 65535
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = lshr i32 %1610, 16
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = lshr i32 %1616, 22
  %1618 = shl nuw nsw i32 %1617, 5
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = shl i32 %1616, 4
  %1621 = and i32 %1620, 32752
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = lshr i32 %1616, 7
  %1624 = and i32 %1623, 32752
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1628 = fmul fast float %1627, 1.000000e+03
  %1629 = fmul fast float %298, %1628
  %1630 = call float @dx.op.unary.f32(i32 22, float %1629)  ; Frc(value)
  %1631 = fadd fast float %1630, %289
  %1632 = fmul fast float %299, %1628
  %1633 = call float @dx.op.unary.f32(i32 22, float %1632)  ; Frc(value)
  %1634 = fadd fast float %1633, %291
  %1635 = fmul fast float %1603, %1628
  %1636 = call float @dx.op.unary.f32(i32 22, float %1635)  ; Frc(value)
  %1637 = fmul fast float %1636, 0x401921FB60000000
  %1638 = fadd fast float %1637, %1619
  %1639 = call float @dx.op.unary.f32(i32 13, float %1638)  ; Sin(value)
  %1640 = call float @dx.op.unary.f32(i32 12, float %1638)  ; Cos(value)
  %1641 = fsub fast float -0.000000e+00, %1639
  %1642 = fadd fast float %62, -5.000000e-01
  %1643 = fadd fast float %63, -5.000000e-01
  %1644 = fmul fast float %1612, %1642
  %1645 = fmul fast float %1614, %1643
  %1646 = fadd fast float %1644, 5.000000e-01
  %1647 = fadd fast float %1645, 5.000000e-01
  %1648 = fmul fast float %1622, %1646
  %1649 = fmul fast float %1625, %1647
  %1650 = fmul fast float %1640, %1648
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1641, float %1649, float %1650)  ; FMad(a,b,c)
  %1652 = fmul fast float %1639, %1648
  %1653 = call float @dx.op.tertiary.f32(i32 46, float %1640, float %1649, float %1652)  ; FMad(a,b,c)
  %1654 = fadd fast float %1631, %1651
  %1655 = fadd fast float %1634, %1653
  %1656 = icmp ugt i32 %1607, 1
  %1657 = icmp ugt i32 %1605, 33554431
  %1658 = or i1 %1657, %1656
  br i1 %1658, label %1659, label %1683

; <label>:1659                                    ; preds = %1598
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = lshr i32 %1661, 16
  %1663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1662)  ; LegacyF16ToF32(value)
  %1664 = fmul fast float %1627, %1663
  %1665 = call float @dx.op.unary.f32(i32 22, float %1664)  ; Frc(value)
  %1666 = mul nuw nsw i32 %1607, %1608
  %1667 = uitofp i32 %1666 to float
  %1668 = fmul fast float %1665, %1667
  %1669 = call float @dx.op.unary.f32(i32 27, float %1668)  ; Round_ni(value)
  %1670 = fptoui float %1669 to i32
  %1671 = urem i32 %1670, %1607
  %1672 = udiv i32 %1670, %1608
  %1673 = call float @dx.op.unary.f32(i32 22, float %1654)  ; Frc(value)
  %1674 = call float @dx.op.unary.f32(i32 22, float %1655)  ; Frc(value)
  %1675 = uitofp i32 %1671 to float
  %1676 = uitofp i32 %1672 to float
  %1677 = fadd fast float %1673, %1675
  %1678 = fadd fast float %1674, %1676
  %1679 = uitofp i32 %1607 to float
  %1680 = uitofp i32 %1608 to float
  %1681 = fdiv fast float %1677, %1679
  %1682 = fdiv fast float %1678, %1680
  br label %1683

; <label>:1683                                    ; preds = %1659, %1598
  %1684 = phi float [ %1681, %1659 ], [ %1654, %1598 ]
  %1685 = phi float [ %1682, %1659 ], [ %1655, %1598 ]
  %1686 = and i32 %1593, 16777216
  %1687 = icmp eq i32 %1686, 0
  br i1 %1687, label %1797, label %1688

; <label>:1688                                    ; preds = %1683
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1692 = extractvalue %dx.types.CBufRet.f32 %1689, 2
  %1693 = fadd fast float %1690, %124
  %1694 = fadd fast float %1691, %125
  %1695 = fadd fast float %1692, %126
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1699 = icmp eq i32 %43, 65535
  br i1 %1699, label %1794, label %1700

; <label>:1700                                    ; preds = %1688
  %1701 = lshr i32 %43, 1
  %1702 = shl i32 %1701, 2
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %43, 1
  %1706 = icmp ne i32 %1705, 0
  %1707 = lshr i32 %1704, 16
  %1708 = and i32 %1704, 65535
  %1709 = select i1 %1706, i32 %1707, i32 %1708
  %1710 = icmp eq i32 %1709, 65535
  br i1 %1710, label %1790, label %1711

; <label>:1711                                    ; preds = %1700
  %1712 = mul nuw nsw i32 %1709, 40
  %1713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.ResRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.ResRet.f32 %1713, 2
  %1717 = add nuw nsw i32 %1712, 12
  %1718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = add nuw nsw i32 %1712, 24
  %1723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = add nuw nsw i32 %1712, 36
  %1728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.f32 %1728, 0
  %1730 = fsub fast float %1693, %1714
  %1731 = fsub fast float %1694, %1715
  %1732 = fsub fast float %1695, %1716
  %1733 = fmul fast float %1729, %1730
  %1734 = fmul fast float %1729, %1731
  %1735 = fmul fast float %1729, %1732
  %1736 = call float @dx.op.unary.f32(i32 27, float %1733)  ; Round_ni(value)
  %1737 = call float @dx.op.unary.f32(i32 27, float %1734)  ; Round_ni(value)
  %1738 = call float @dx.op.unary.f32(i32 27, float %1735)  ; Round_ni(value)
  %1739 = fadd fast float %1736, 5.000000e-01
  %1740 = fadd fast float %1737, 5.000000e-01
  %1741 = fadd fast float %1738, 5.000000e-01
  %1742 = fmul fast float %1739, %1719
  %1743 = fmul fast float %1740, %1720
  %1744 = fmul fast float %1741, %1721
  %1745 = shl i32 %43, 2
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = add i32 %1747, 0
  %1749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1750 = call float @dx.op.unary.f32(i32 22, float %1742)  ; Frc(value)
  %1751 = call float @dx.op.unary.f32(i32 22, float %1743)  ; Frc(value)
  %1752 = call float @dx.op.unary.f32(i32 22, float %1744)  ; Frc(value)
  %1753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1749, %dx.types.Handle %40, float %1750, float %1751, float %1752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = fmul fast float %1754, 1.023000e+03
  %1758 = fmul fast float %1755, 1.023000e+03
  %1759 = fmul fast float %1756, 1.023000e+03
  %1760 = fadd fast float %1757, 5.000000e-01
  %1761 = fadd fast float %1758, 5.000000e-01
  %1762 = fadd fast float %1759, 5.000000e-01
  %1763 = call float @dx.op.unary.f32(i32 27, float %1760)  ; Round_ni(value)
  %1764 = call float @dx.op.unary.f32(i32 27, float %1761)  ; Round_ni(value)
  %1765 = call float @dx.op.unary.f32(i32 27, float %1762)  ; Round_ni(value)
  %1766 = fsub fast float %1733, %1736
  %1767 = fsub fast float %1734, %1737
  %1768 = fsub fast float %1735, %1738
  %1769 = fmul fast float %1766, 7.500000e-01
  %1770 = fmul fast float %1767, 7.500000e-01
  %1771 = fmul fast float %1768, 7.500000e-01
  %1772 = fadd fast float %1736, 1.250000e-01
  %1773 = fadd fast float %1772, %1769
  %1774 = fadd fast float %1773, %1763
  %1775 = fadd fast float %1737, 1.250000e-01
  %1776 = fadd fast float %1775, %1770
  %1777 = fadd fast float %1776, %1764
  %1778 = fadd fast float %1738, 1.250000e-01
  %1779 = fadd fast float %1778, %1771
  %1780 = fadd fast float %1779, %1765
  %1781 = fmul fast float %1774, %1724
  %1782 = fmul fast float %1777, %1725
  %1783 = fmul fast float %1780, %1726
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = add i32 %1785, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1787, %dx.types.Handle %38, float %1781, float %1782, float %1783, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  br label %1790

; <label>:1790                                    ; preds = %1711, %1700
  %1791 = phi float [ %1789, %1711 ], [ -1.000000e+00, %1700 ]
  %1792 = fadd fast float %1791, %1698
  %1793 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  br label %1794

; <label>:1794                                    ; preds = %1790, %1688
  %1795 = phi float [ %1793, %1790 ], [ %1698, %1688 ]
  %1796 = fmul fast float %1795, %69
  br label %1797

; <label>:1797                                    ; preds = %1794, %1683
  %1798 = phi float [ %1796, %1794 ], [ %69, %1683 ]
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 256
  %1802 = icmp eq i32 %1801, 0
  br i1 %1802, label %1847, label %1803

; <label>:1803                                    ; preds = %1797
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = add i32 %1805, 0
  %1807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1806, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1808 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1807, %dx.types.Handle %74, float %1684, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1809 = extractvalue %dx.types.ResRet.f32 %1808, 0
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = shl i32 %1811, 4
  %1813 = and i32 %1812, 32752
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = lshr i32 %1811, 7
  %1816 = and i32 %1815, 32752
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = fsub fast float 1.000000e+00, %1798
  %1819 = call float @dx.op.binary.f32(i32 35, float %1818, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1820 = bitcast float %1798 to i32
  %1821 = sitofp i32 %1820 to float
  %1822 = fadd fast float %1821, 0xC1CFBF8940000000
  %1823 = fmul fast float %1817, %1822
  %1824 = fadd fast float %1823, 0x41CFBF8940000000
  %1825 = fptosi float %1824 to i32
  %1826 = bitcast i32 %1825 to float
  %1827 = bitcast float %1819 to i32
  %1828 = sitofp i32 %1827 to float
  %1829 = fadd fast float %1828, 0xC1CFBF8940000000
  %1830 = fmul fast float %1829, %1817
  %1831 = fadd fast float %1830, 0x41CFBF8940000000
  %1832 = fptosi float %1831 to i32
  %1833 = bitcast i32 %1832 to float
  %1834 = fmul fast float %1826, %1814
  %1835 = fmul fast float %1833, %1814
  %1836 = fsub fast float %1819, %1834
  %1837 = fadd fast float %1835, %1819
  %1838 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1839 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1840 = fsub fast float %1809, %1838
  %1841 = fsub fast float %1839, %1838
  %1842 = bitcast float %1841 to i32
  %1843 = sub nsw i32 2129859010, %1842
  %1844 = bitcast i32 %1843 to float
  %1845 = fmul fast float %1844, %1840
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  br label %1847

; <label>:1847                                    ; preds = %1803, %1797
  %1848 = phi float [ %1846, %1803 ], [ %1798, %1797 ]
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 128
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1868, label %1853

; <label>:1853                                    ; preds = %1847
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = add i32 %1855, 0
  %1857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1857, %dx.types.Handle %74, float %1684, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = and i32 %1861, 524288
  %1863 = icmp ne i32 %1862, 0
  %1864 = fcmp fast ogt float %1859, 0x3FE0101020000000
  %1865 = select i1 %1864, float 1.000000e+00, float 0.000000e+00
  %1866 = select i1 %1863, float %1865, float %1859
  %1867 = fmul fast float %1866, %1848
  br label %1868

; <label>:1868                                    ; preds = %1853, %1847
  %1869 = phi float [ %1867, %1853 ], [ %1848, %1847 ]
  %1870 = fcmp fast ult float %1869, 0x3F70101020000000
  br i1 %1870, label %2401, label %1871

; <label>:1871                                    ; preds = %1868
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 16
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %2069, label %1876

; <label>:1876                                    ; preds = %1871
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = add i32 %1880, 0
  %1882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1882, %dx.types.Handle %73, float %1684, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.ResRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.ResRet.f32 %1883, 2
  %1887 = extractvalue %dx.types.ResRet.f32 %1883, 3
  %1888 = and i32 %1878, 255
  %1889 = uitofp i32 %1888 to float
  %1890 = lshr i32 %1878, 8
  %1891 = and i32 %1890, 255
  %1892 = uitofp i32 %1891 to float
  %1893 = fmul fast float %1887, %1889
  %1894 = fadd fast float %1893, %1892
  %1895 = fmul fast float %1894, 0x3F70101000000000
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %1897, 512
  %1899 = icmp eq i32 %1898, 0
  br i1 %1899, label %1907, label %1900

; <label>:1900                                    ; preds = %1876
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = add i32 %1902, 0
  %1904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1904, %dx.types.Handle %74, float %1684, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  br label %1907

; <label>:1907                                    ; preds = %1900, %1876
  %1908 = phi float [ %1906, %1900 ], [ 1.000000e+00, %1876 ]
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 33554432
  %1912 = icmp eq i32 %1911, 0
  br i1 %1912, label %2016, label %1913

; <label>:1913                                    ; preds = %1907
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = and i32 %1915, 65535
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = lshr i32 %1915, 16
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %1921, 65535
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = lshr i32 %1925, 24
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = and i32 %1925, 255
  %1930 = uitofp i32 %1929 to float
  %1931 = fmul fast float %1930, 0x3F70101020000000
  %1932 = lshr i32 %1925, 8
  %1933 = and i32 %1932, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = fmul fast float %1934, 0x3F70101020000000
  %1936 = lshr i32 %1925, 16
  %1937 = and i32 %1936, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = lshr i32 %1941, 24
  %1943 = uitofp i32 %1942 to float
  %1944 = fmul fast float %1943, 0x3F70101020000000
  %1945 = and i32 %1941, 255
  %1946 = uitofp i32 %1945 to float
  %1947 = fmul fast float %1946, 0x3F70101020000000
  %1948 = lshr i32 %1941, 8
  %1949 = and i32 %1948, 255
  %1950 = uitofp i32 %1949 to float
  %1951 = fmul fast float %1950, 0x3F70101020000000
  %1952 = lshr i32 %1941, 16
  %1953 = and i32 %1952, 255
  %1954 = uitofp i32 %1953 to float
  %1955 = fmul fast float %1954, 0x3F70101020000000
  %1956 = bitcast float %1884 to i32
  %1957 = ashr i32 %1956, 1
  %1958 = sub nsw i32 1597463174, %1957
  %1959 = bitcast i32 %1958 to float
  %1960 = fmul fast float %1884, 5.000000e-01
  %1961 = fmul fast float %1959, %1959
  %1962 = fmul fast float %1961, %1960
  %1963 = fsub fast float 1.500000e+00, %1962
  %1964 = fmul fast float %1959, %1884
  %1965 = fmul fast float %1964, %1963
  %1966 = bitcast float %1885 to i32
  %1967 = ashr i32 %1966, 1
  %1968 = sub nsw i32 1597463174, %1967
  %1969 = bitcast i32 %1968 to float
  %1970 = fmul fast float %1885, 5.000000e-01
  %1971 = fmul fast float %1969, %1969
  %1972 = fmul fast float %1971, %1970
  %1973 = fsub fast float 1.500000e+00, %1972
  %1974 = fmul fast float %1969, %1885
  %1975 = fmul fast float %1974, %1973
  %1976 = bitcast float %1886 to i32
  %1977 = ashr i32 %1976, 1
  %1978 = sub nsw i32 1597463174, %1977
  %1979 = bitcast i32 %1978 to float
  %1980 = fmul fast float %1886, 5.000000e-01
  %1981 = fmul fast float %1979, %1979
  %1982 = fmul fast float %1981, %1980
  %1983 = fsub fast float 1.500000e+00, %1982
  %1984 = fmul fast float %1979, %1886
  %1985 = fmul fast float %1984, %1983
  %1986 = fsub fast float %1965, %1947
  %1987 = fsub fast float %1975, %1951
  %1988 = fsub fast float %1985, %1955
  %1989 = fmul fast float %1986, %1917
  %1990 = fmul fast float %1987, %1919
  %1991 = fmul fast float %1988, %1923
  %1992 = fadd fast float %1989, %1931
  %1993 = fadd fast float %1990, %1935
  %1994 = fadd fast float %1991, %1939
  %1995 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1998 = fmul fast float %1995, %1995
  %1999 = fmul fast float %1996, %1996
  %2000 = fmul fast float %1997, %1997
  %2001 = fsub fast float %1998, %1884
  %2002 = fsub fast float %1999, %1885
  %2003 = fsub fast float %2000, %1886
  %2004 = fmul fast float %2001, %1908
  %2005 = fmul fast float %2002, %1908
  %2006 = fmul fast float %2003, %1908
  %2007 = fadd fast float %2004, %1884
  %2008 = fadd fast float %2005, %1885
  %2009 = fadd fast float %2006, %1886
  %2010 = fadd fast float %1928, %1895
  %2011 = fsub fast float %2010, %1944
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2013 = fsub fast float %2012, %1895
  %2014 = fmul fast float %2013, %1908
  %2015 = fadd fast float %2014, %1895
  br label %2069

; <label>:2016                                    ; preds = %1907
  %2017 = and i32 %1910, 134217728
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2053, label %2019

; <label>:2019                                    ; preds = %2016
  %2020 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2021 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %2022 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %2023 = fadd fast float %2020, -5.000000e-01
  %2024 = fadd fast float %2021, -5.000000e-01
  %2025 = fadd fast float %2022, -5.000000e-01
  %2026 = fmul fast float %2023, %1908
  %2027 = fmul fast float %2024, %1908
  %2028 = fmul fast float %2025, %1908
  %2029 = fadd fast float %2026, 5.000000e-01
  %2030 = fadd fast float %2027, 5.000000e-01
  %2031 = fadd fast float %2028, 5.000000e-01
  %2032 = call float @dx.op.unary.f32(i32 24, float %1884)  ; Sqrt(value)
  %2033 = call float @dx.op.unary.f32(i32 24, float %1885)  ; Sqrt(value)
  %2034 = call float @dx.op.unary.f32(i32 24, float %1886)  ; Sqrt(value)
  %2035 = fmul fast float %2029, 2.000000e+00
  %2036 = fsub fast float 1.000000e+00, %2035
  %2037 = fmul fast float %2036, %2032
  %2038 = fadd fast float %2037, %2035
  %2039 = fmul fast float %2038, %2032
  %2040 = fmul fast float %2030, 2.000000e+00
  %2041 = fsub fast float 1.000000e+00, %2040
  %2042 = fmul fast float %2041, %2033
  %2043 = fadd fast float %2042, %2040
  %2044 = fmul fast float %2043, %2033
  %2045 = fmul fast float %2031, 2.000000e+00
  %2046 = fsub fast float 1.000000e+00, %2045
  %2047 = fmul fast float %2046, %2034
  %2048 = fadd fast float %2047, %2045
  %2049 = fmul fast float %2048, %2034
  %2050 = fmul fast float %2039, %2039
  %2051 = fmul fast float %2044, %2044
  %2052 = fmul fast float %2049, %2049
  br label %2069

; <label>:2053                                    ; preds = %2016
  %2054 = fmul fast float %277, %277
  %2055 = fmul fast float %281, %281
  %2056 = fmul fast float %285, %285
  %2057 = fadd fast float %2054, -1.000000e+00
  %2058 = fadd fast float %2055, -1.000000e+00
  %2059 = fadd fast float %2056, -1.000000e+00
  %2060 = fmul fast float %1908, %2057
  %2061 = fmul fast float %1908, %2058
  %2062 = fmul fast float %1908, %2059
  %2063 = fadd fast float %2060, 1.000000e+00
  %2064 = fadd fast float %2061, 1.000000e+00
  %2065 = fadd fast float %2062, 1.000000e+00
  %2066 = fmul fast float %2063, %1884
  %2067 = fmul fast float %2064, %1885
  %2068 = fmul fast float %2065, %1886
  br label %2069

; <label>:2069                                    ; preds = %2053, %2019, %1913, %1871
  %2070 = phi float [ %2015, %1913 ], [ %1895, %2019 ], [ %1895, %2053 ], [ 0x3FA23C0BE0000000, %1871 ]
  %2071 = phi float [ %2007, %1913 ], [ %2050, %2019 ], [ %2066, %2053 ], [ 1.000000e+00, %1871 ]
  %2072 = phi float [ %2008, %1913 ], [ %2051, %2019 ], [ %2067, %2053 ], [ 1.000000e+00, %1871 ]
  %2073 = phi float [ %2009, %1913 ], [ %2052, %2019 ], [ %2068, %2053 ], [ 1.000000e+00, %1871 ]
  %2074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.i32 %2074, 1
  %2076 = and i32 %2075, 1
  %2077 = icmp ne i32 %2076, 0
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = and i32 %2079, 32
  %2081 = icmp ne i32 %2080, 0
  %2082 = and i1 %2077, %2081
  %2083 = select i1 %2082, float 1.000000e+00, float %2071
  %2084 = select i1 %2082, float 0x3FD3333340000000, float %2072
  %2085 = select i1 %2082, float 0x3FD3333340000000, float %2073
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 32
  %2089 = icmp eq i32 %2088, 0
  br i1 %2089, label %2159, label %2090

; <label>:2090                                    ; preds = %2069
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = add i32 %2094, 0
  %2096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2096, %dx.types.Handle %73, float %1684, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.ResRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.ResRet.f32 %2097, 2
  %2101 = extractvalue %dx.types.ResRet.f32 %2097, 3
  %2102 = and i32 %2092, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = lshr i32 %2092, 8
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = lshr i32 %2092, 16
  %2108 = and i32 %2107, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101000000000
  %2111 = fmul fast float %2098, %2103
  %2112 = fadd fast float %2111, %2106
  %2113 = fmul fast float %2112, 0x3F70101000000000
  %2114 = fadd fast float %2099, -5.000000e-01
  %2115 = fadd fast float %2101, -5.000000e-01
  %2116 = fmul fast float %2114, %2110
  %2117 = fmul fast float %2115, %2110
  %2118 = fadd fast float %2116, 5.000000e-01
  %2119 = fadd fast float %2117, 5.000000e-01
  %2120 = fmul fast float %2118, 2.000000e+00
  %2121 = fadd fast float %2120, -1.000000e+00
  %2122 = fmul fast float %2119, 2.000000e+00
  %2123 = fadd fast float %2122, -1.000000e+00
  %2124 = fadd fast float %2121, %2123
  %2125 = fmul fast float %2124, 5.000000e-01
  %2126 = fsub fast float %2121, %2123
  %2127 = fmul fast float %2126, 5.000000e-01
  %2128 = call float @dx.op.unary.f32(i32 6, float %2125)  ; FAbs(value)
  %2129 = fsub fast float 1.000000e+00, %2128
  %2130 = call float @dx.op.unary.f32(i32 6, float %2127)  ; FAbs(value)
  %2131 = fsub fast float %2129, %2130
  %2132 = call float @dx.op.dot3.f32(i32 55, float %2125, float %2127, float %2131, float %2125, float %2127, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %2133 = call float @dx.op.unary.f32(i32 25, float %2132)  ; Rsqrt(value)
  %2134 = fmul fast float %2125, %2133
  %2135 = fmul fast float %2127, %2133
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = and i32 %2137, 67108864
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2155, label %2140

; <label>:2140                                    ; preds = %2090
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 65535
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = and i32 %2146, 65535
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = lshr i32 %2142, 16
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = fsub fast float %2113, %2150
  %2152 = fmul fast float %2151, %2144
  %2153 = fadd fast float %2152, %2148
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  br label %2155

; <label>:2155                                    ; preds = %2140, %2090
  %2156 = phi float [ %2154, %2140 ], [ %2113, %2090 ]
  %2157 = call float @dx.op.dot2.f32(i32 54, float %2134, float %2135, float %44, float %45)  ; Dot2(ax,ay,bx,by)
  %2158 = call float @dx.op.dot2.f32(i32 54, float %2134, float %2135, float %46, float %47)  ; Dot2(ax,ay,bx,by)
  br label %2159

; <label>:2159                                    ; preds = %2155, %2069
  %2160 = phi float [ %2156, %2155 ], [ 0x3FD6666660000000, %2069 ]
  %2161 = phi float [ %2157, %2155 ], [ 0.000000e+00, %2069 ]
  %2162 = phi float [ %2158, %2155 ], [ 0.000000e+00, %2069 ]
  %2163 = phi float [ %2100, %2155 ], [ 1.000000e+00, %2069 ]
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = lshr i32 %2165, 22
  %2167 = shl nuw nsw i32 %2166, 5
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 64
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2205, label %2173

; <label>:2173                                    ; preds = %2159
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = add i32 %2175, 0
  %2177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 131072
  %2181 = icmp eq i32 %2180, 0
  %2182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2177, %dx.types.Handle %73, float %1684, float %1685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = extractvalue %dx.types.ResRet.f32 %2182, 1
  %2185 = extractvalue %dx.types.ResRet.f32 %2182, 2
  %2186 = fmul fast float %2183, %266
  %2187 = fmul fast float %2184, %269
  %2188 = fmul fast float %2185, %272
  br i1 %2181, label %2195, label %2189

; <label>:2189                                    ; preds = %2173
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = fmul fast float %2191, %2186
  %2193 = fmul fast float %2191, %2187
  %2194 = fmul fast float %2191, %2188
  br label %2195

; <label>:2195                                    ; preds = %2189, %2173
  %2196 = phi float [ %2192, %2189 ], [ %2186, %2173 ]
  %2197 = phi float [ %2193, %2189 ], [ %2187, %2173 ]
  %2198 = phi float [ %2194, %2189 ], [ %2188, %2173 ]
  %2199 = fmul fast float %2196, %2168
  %2200 = select i1 %195, float %2199, float %2196
  %2201 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2197, float %2198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = select i1 %195, float 0.000000e+00, float %2196
  %2203 = select i1 %195, float %2201, float %2197
  %2204 = select i1 %195, float 0.000000e+00, float %2198
  br label %2205

; <label>:2205                                    ; preds = %2195, %2159
  %2206 = phi float [ %2202, %2195 ], [ 0.000000e+00, %2159 ]
  %2207 = phi float [ %2203, %2195 ], [ 0.000000e+00, %2159 ]
  %2208 = phi float [ %2204, %2195 ], [ 0.000000e+00, %2159 ]
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = lshr i32 %2210, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = call float @dx.op.dot3.f32(i32 55, float %2083, float %2084, float %2085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2217 = fmul fast float %2215, %2216
  %2218 = fadd fast float %2217, %2212
  %2219 = fmul fast float %2218, 0x3F70101020000000
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  br i1 %1591, label %2221, label %2229

; <label>:2221                                    ; preds = %2205
  %2222 = fsub fast float 1.000000e+00, %1869
  %2223 = fmul fast float %2222, %1584
  %2224 = fmul fast float %2222, %1585
  %2225 = fmul fast float %2222, %1586
  %2226 = fmul fast float %2222, %1581
  %2227 = fmul fast float %2222, %1582
  %2228 = fmul fast float %2222, %1583
  br label %2229

; <label>:2229                                    ; preds = %2221, %2205
  %2230 = phi float [ %2226, %2221 ], [ %1581, %2205 ]
  %2231 = phi float [ %2227, %2221 ], [ %1582, %2205 ]
  %2232 = phi float [ %2228, %2221 ], [ %1583, %2205 ]
  %2233 = phi float [ %2223, %2221 ], [ %1584, %2205 ]
  %2234 = phi float [ %2224, %2221 ], [ %1585, %2205 ]
  %2235 = phi float [ %2225, %2221 ], [ %1586, %2205 ]
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = and i32 %2237, 3
  %2239 = icmp eq i32 %2238, 3
  br i1 %2239, label %2318, label %2240

; <label>:2240                                    ; preds = %2229
  %2241 = and i32 %2237, 16
  %2242 = icmp ne i32 %2241, 0
  %2243 = select i1 %2242, float %1869, float 0.000000e+00
  %2244 = icmp eq i32 %2238, 0
  br i1 %2244, label %2245, label %2273

; <label>:2245                                    ; preds = %2240
  %2246 = and i32 %2237, 64
  %2247 = icmp ne i32 %2246, 0
  %2248 = select i1 %2247, float %1869, float 0.000000e+00
  %2249 = fsub fast float %2083, %2233
  %2250 = fsub fast float %2084, %2234
  %2251 = fsub fast float %2085, %2235
  %2252 = fmul fast float %2243, %2249
  %2253 = fmul fast float %2243, %2250
  %2254 = fmul fast float %2243, %2251
  %2255 = fadd fast float %2252, %2233
  %2256 = fadd fast float %2253, %2234
  %2257 = fadd fast float %2254, %2235
  %2258 = fsub fast float %2070, %1587
  %2259 = fmul fast float %2243, %2258
  %2260 = fadd fast float %2259, %1587
  %2261 = fsub fast float %2206, %2230
  %2262 = fsub fast float %2207, %2231
  %2263 = fsub fast float %2208, %2232
  %2264 = fmul fast float %2248, %2261
  %2265 = fmul fast float %2248, %2262
  %2266 = fmul fast float %2248, %2263
  %2267 = fadd fast float %2264, %2230
  %2268 = fadd fast float %2265, %2231
  %2269 = fadd fast float %2266, %2232
  %2270 = fsub fast float %2220, %1590
  %2271 = fmul fast float %2243, %2270
  %2272 = fadd fast float %2271, %1590
  br label %2318

; <label>:2273                                    ; preds = %2240
  %2274 = icmp eq i32 %2238, 1
  br i1 %2274, label %2275, label %2288

; <label>:2275                                    ; preds = %2273
  %2276 = fadd fast float %2083, -1.000000e+00
  %2277 = fadd fast float %2084, -1.000000e+00
  %2278 = fadd fast float %2085, -1.000000e+00
  %2279 = fmul fast float %2243, %2276
  %2280 = fmul fast float %2243, %2277
  %2281 = fmul fast float %2243, %2278
  %2282 = fadd fast float %2279, 1.000000e+00
  %2283 = fadd fast float %2280, 1.000000e+00
  %2284 = fadd fast float %2281, 1.000000e+00
  %2285 = fmul fast float %2282, %2233
  %2286 = fmul fast float %2283, %2234
  %2287 = fmul fast float %2284, %2235
  br label %2318

; <label>:2288                                    ; preds = %2273
  %2289 = icmp eq i32 %2238, 2
  br i1 %2289, label %2290, label %2318

; <label>:2290                                    ; preds = %2288
  %2291 = call float @dx.op.unary.f32(i32 24, float %2083)  ; Sqrt(value)
  %2292 = call float @dx.op.unary.f32(i32 24, float %2084)  ; Sqrt(value)
  %2293 = call float @dx.op.unary.f32(i32 24, float %2085)  ; Sqrt(value)
  %2294 = fadd fast float %2291, -5.000000e-01
  %2295 = fadd fast float %2292, -5.000000e-01
  %2296 = fadd fast float %2293, -5.000000e-01
  %2297 = fmul fast float %2294, %2243
  %2298 = fmul fast float %2295, %2243
  %2299 = fmul fast float %2296, %2243
  %2300 = fadd fast float %2297, 5.000000e-01
  %2301 = fadd fast float %2298, 5.000000e-01
  %2302 = fadd fast float %2299, 5.000000e-01
  %2303 = fmul fast float %2300, 2.000000e+00
  %2304 = fsub fast float 1.000000e+00, %2303
  %2305 = fmul fast float %2304, %2233
  %2306 = fadd fast float %2305, %2303
  %2307 = fmul fast float %2306, %2233
  %2308 = fmul fast float %2301, 2.000000e+00
  %2309 = fsub fast float 1.000000e+00, %2308
  %2310 = fmul fast float %2309, %2234
  %2311 = fadd fast float %2310, %2308
  %2312 = fmul fast float %2311, %2234
  %2313 = fmul fast float %2302, 2.000000e+00
  %2314 = fsub fast float 1.000000e+00, %2313
  %2315 = fmul fast float %2314, %2235
  %2316 = fadd fast float %2315, %2313
  %2317 = fmul fast float %2316, %2235
  br label %2318

; <label>:2318                                    ; preds = %2290, %2288, %2275, %2245, %2229
  %2319 = phi float [ %2230, %2229 ], [ %2230, %2290 ], [ %2230, %2288 ], [ %2230, %2275 ], [ %2267, %2245 ]
  %2320 = phi float [ %2231, %2229 ], [ %2231, %2290 ], [ %2231, %2288 ], [ %2231, %2275 ], [ %2268, %2245 ]
  %2321 = phi float [ %2232, %2229 ], [ %2232, %2290 ], [ %2232, %2288 ], [ %2232, %2275 ], [ %2269, %2245 ]
  %2322 = phi float [ %2233, %2229 ], [ %2307, %2290 ], [ %2233, %2288 ], [ %2285, %2275 ], [ %2255, %2245 ]
  %2323 = phi float [ %2234, %2229 ], [ %2312, %2290 ], [ %2234, %2288 ], [ %2286, %2275 ], [ %2256, %2245 ]
  %2324 = phi float [ %2235, %2229 ], [ %2317, %2290 ], [ %2235, %2288 ], [ %2287, %2275 ], [ %2257, %2245 ]
  %2325 = phi float [ %1587, %2229 ], [ %1587, %2290 ], [ %1587, %2288 ], [ %1587, %2275 ], [ %2260, %2245 ]
  %2326 = phi float [ %1590, %2229 ], [ %1590, %2290 ], [ %1590, %2288 ], [ %1590, %2275 ], [ %2272, %2245 ]
  %2327 = and i32 %2237, 12
  %2328 = icmp eq i32 %2327, 12
  br i1 %2328, label %2401, label %2329

; <label>:2329                                    ; preds = %2318
  %2330 = and i32 %2237, 2097184
  %2331 = icmp eq i32 %2330, 2097184
  %2332 = select i1 %2331, float %1869, float 0.000000e+00
  %2333 = and i32 %2237, 4194336
  %2334 = icmp eq i32 %2333, 4194336
  %2335 = select i1 %2334, float %1869, float 0.000000e+00
  %2336 = and i32 %2237, 8388640
  %2337 = icmp eq i32 %2336, 8388640
  %2338 = select i1 %2337, float %1869, float 0.000000e+00
  %2339 = icmp eq i32 %2327, 0
  br i1 %2339, label %2340, label %2353

; <label>:2340                                    ; preds = %2329
  %2341 = fsub fast float %2161, %1579
  %2342 = fsub fast float %2162, %1580
  %2343 = fmul fast float %2332, %2341
  %2344 = fmul fast float %2332, %2342
  %2345 = fadd fast float %2343, %1579
  %2346 = fadd fast float %2344, %1580
  %2347 = fsub fast float %2163, %1589
  %2348 = fmul fast float %2335, %2347
  %2349 = fadd fast float %2348, %1589
  %2350 = fsub fast float %2160, %1588
  %2351 = fmul fast float %2338, %2350
  %2352 = fadd fast float %2351, %1588
  br label %2401

; <label>:2353                                    ; preds = %2329
  %2354 = icmp eq i32 %2327, 4
  br i1 %2354, label %2355, label %2387

; <label>:2355                                    ; preds = %2353
  %2356 = fmul fast float %2332, %2161
  %2357 = fmul fast float %2332, %2162
  %2358 = fadd fast float %2356, %1579
  %2359 = fadd fast float %2357, %1580
  %2360 = call float @dx.op.binary.f32(i32 36, float %1589, float %2163)  ; FMin(a,b)
  %2361 = fsub fast float %2360, %1589
  %2362 = fmul fast float %2361, %2335
  %2363 = fadd fast float %2362, %1589
  %2364 = fadd fast float %2160, %1588
  %2365 = fmul fast float %2364, 0x3FF337FAE0000000
  %2366 = fmul fast float %1588, %1588
  %2367 = fmul fast float %2160, %2160
  %2368 = fadd fast float %2367, %2366
  %2369 = fmul fast float %2368, 0x3FE5152B00000000
  %2370 = fmul fast float %1588, 0xBFCC1F85E0000000
  %2371 = fmul fast float %2370, %2160
  %2372 = fadd fast float %2371, 0xBFE1363700000000
  %2373 = fadd fast float %2372, %2365
  %2374 = fsub fast float %2373, %2369
  %2375 = fmul fast float %2364, 0x3FBA6F0D00000000
  %2376 = fmul fast float %2368, 0x3FD0432880000000
  %2377 = fmul fast float %1588, 0xBFEF110800000000
  %2378 = fmul fast float %2377, %2160
  %2379 = fadd fast float %2378, 1.000000e+00
  %2380 = fsub fast float %2379, %2375
  %2381 = fadd fast float %2380, %2376
  %2382 = fdiv fast float %2374, %2381
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = fsub fast float %2383, %1588
  %2385 = fmul fast float %2384, %2338
  %2386 = fadd fast float %2385, %1588
  br label %2401

; <label>:2387                                    ; preds = %2353
  %2388 = icmp eq i32 %2327, 8
  br i1 %2388, label %2389, label %2401

; <label>:2389                                    ; preds = %2387
  %2390 = fmul fast float %2332, %2161
  %2391 = fmul fast float %2332, %2162
  %2392 = fadd fast float %2390, %1579
  %2393 = fadd fast float %2391, %1580
  %2394 = call float @dx.op.binary.f32(i32 36, float %1589, float %2163)  ; FMin(a,b)
  %2395 = fsub fast float %2394, %1589
  %2396 = fmul fast float %2395, %2335
  %2397 = fadd fast float %2396, %1589
  %2398 = fsub fast float %2160, %1588
  %2399 = fmul fast float %2338, %2398
  %2400 = fadd fast float %2399, %1588
  br label %2401

; <label>:2401                                    ; preds = %2389, %2387, %2355, %2340, %2318, %1868, %1578
  %2402 = phi float [ %1579, %2318 ], [ %1579, %1868 ], [ %1579, %1578 ], [ %2345, %2340 ], [ %2358, %2355 ], [ %1579, %2387 ], [ %2392, %2389 ]
  %2403 = phi float [ %1580, %2318 ], [ %1580, %1868 ], [ %1580, %1578 ], [ %2346, %2340 ], [ %2359, %2355 ], [ %1580, %2387 ], [ %2393, %2389 ]
  %2404 = phi float [ %2319, %2318 ], [ %1581, %1868 ], [ %1581, %1578 ], [ %2319, %2340 ], [ %2319, %2355 ], [ %2319, %2387 ], [ %2319, %2389 ]
  %2405 = phi float [ %2320, %2318 ], [ %1582, %1868 ], [ %1582, %1578 ], [ %2320, %2340 ], [ %2320, %2355 ], [ %2320, %2387 ], [ %2320, %2389 ]
  %2406 = phi float [ %2321, %2318 ], [ %1583, %1868 ], [ %1583, %1578 ], [ %2321, %2340 ], [ %2321, %2355 ], [ %2321, %2387 ], [ %2321, %2389 ]
  %2407 = phi float [ %2322, %2318 ], [ %1584, %1868 ], [ %1584, %1578 ], [ %2322, %2340 ], [ %2322, %2355 ], [ %2322, %2387 ], [ %2322, %2389 ]
  %2408 = phi float [ %2323, %2318 ], [ %1585, %1868 ], [ %1585, %1578 ], [ %2323, %2340 ], [ %2323, %2355 ], [ %2323, %2387 ], [ %2323, %2389 ]
  %2409 = phi float [ %2324, %2318 ], [ %1586, %1868 ], [ %1586, %1578 ], [ %2324, %2340 ], [ %2324, %2355 ], [ %2324, %2387 ], [ %2324, %2389 ]
  %2410 = phi float [ %2325, %2318 ], [ %1587, %1868 ], [ %1587, %1578 ], [ %2325, %2340 ], [ %2325, %2355 ], [ %2325, %2387 ], [ %2325, %2389 ]
  %2411 = phi float [ %1588, %2318 ], [ %1588, %1868 ], [ %1588, %1578 ], [ %2352, %2340 ], [ %2386, %2355 ], [ %1588, %2387 ], [ %2400, %2389 ]
  %2412 = phi float [ %1589, %2318 ], [ %1589, %1868 ], [ %1589, %1578 ], [ %2349, %2340 ], [ %2363, %2355 ], [ %1589, %2387 ], [ %2397, %2389 ]
  %2413 = phi float [ %2326, %2318 ], [ %1590, %1868 ], [ %1590, %1578 ], [ %2326, %2340 ], [ %2326, %2355 ], [ %2326, %2387 ], [ %2326, %2389 ]
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 0
  %2416 = call float @dx.op.dot2.f32(i32 54, float %2402, float %2403, float %2402, float %2403)  ; Dot2(ax,ay,bx,by)
  %2417 = fmul fast float %2416, 0x3FE3333340000000
  %2418 = fsub fast float 1.000000e+00, %2417
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2403, float %2418, float %2402, float %2403, float %2418)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = call float @dx.op.unary.f32(i32 25, float %2419)  ; Rsqrt(value)
  %2421 = fmul fast float %2420, %2402
  %2422 = fmul fast float %2420, %2403
  %2423 = fmul fast float %2418, %2420
  %2424 = fmul fast float %2423, %56
  %2425 = fmul fast float %2423, %57
  %2426 = fmul fast float %2423, %58
  %2427 = fmul fast float %2421, %52
  %2428 = fmul fast float %2421, %53
  %2429 = fmul fast float %2421, %54
  %2430 = fadd fast float %2424, %2427
  %2431 = fadd fast float %2425, %2428
  %2432 = fadd fast float %2426, %2429
  %2433 = fmul fast float %2422, %88
  %2434 = fmul fast float %2422, %89
  %2435 = fmul fast float %2422, %90
  %2436 = fadd fast float %2430, %2433
  %2437 = fadd fast float %2431, %2434
  %2438 = fadd fast float %2432, %2435
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2436, float %2437, float %2438, float %2436, float %2437, float %2438)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.unary.f32(i32 25, float %2439)  ; Rsqrt(value)
  %2441 = fmul fast float %2436, %2440
  %2442 = fmul fast float %2437, %2440
  %2443 = fmul fast float %2438, %2440
  %2444 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %2445 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %2446 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %2447 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %2448 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %2449 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %2450 = fadd fast float %2444, %124
  %2451 = fadd fast float %2445, %125
  %2452 = fadd fast float %2446, %126
  %2453 = fadd fast float %2447, %124
  %2454 = fadd fast float %2448, %125
  %2455 = fadd fast float %2449, %126
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 0
  %2458 = extractvalue %dx.types.CBufRet.f32 %2456, 1
  %2459 = extractvalue %dx.types.CBufRet.f32 %2456, 2
  %2460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2461 = extractvalue %dx.types.CBufRet.f32 %2460, 2
  %2462 = extractvalue %dx.types.CBufRet.f32 %2460, 3
  %2463 = fmul fast float %2457, %77
  %2464 = fmul fast float %2463, %2461
  %2465 = fmul fast float %2458, %78
  %2466 = fmul fast float %2465, %2462
  %2467 = fptoui float %2464 to i32
  %2468 = fptoui float %2466 to i32
  %2469 = fadd fast float %2457, -1.000000e+00
  %2470 = fadd fast float %2458, -1.000000e+00
  %2471 = fptoui float %2469 to i32
  %2472 = fptoui float %2470 to i32
  %2473 = call i32 @dx.op.binary.i32(i32 40, i32 %2467, i32 %2471)  ; UMin(a,b)
  %2474 = call i32 @dx.op.binary.i32(i32 40, i32 %2468, i32 %2472)  ; UMin(a,b)
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 2
  %2477 = extractvalue %dx.types.CBufRet.f32 %2475, 3
  %2478 = fmul fast float %2476, %72
  %2479 = fsub fast float %2478, %2477
  %2480 = fadd fast float %2459, -1.000000e+00
  %2481 = call float @dx.op.binary.f32(i32 36, float %2479, float %2480)  ; FMin(a,b)
  %2482 = fptoui float %2481 to i32
  %2483 = fptoui float %2457 to i32
  %2484 = fptoui float %2458 to i32
  %2485 = mul i32 %2482, %2484
  %2486 = add i32 %2485, %2474
  %2487 = mul i32 %2486, %2483
  %2488 = add i32 %2487, %2473
  %2489 = shl i32 %2488, 2
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 1023
  %2493 = lshr i32 %2491, 10
  %2494 = icmp eq i32 %2492, 0
  br i1 %2494, label %2923, label %2495

; <label>:2495                                    ; preds = %2401
  %2496 = and i32 %2491, 1023
  br label %2497

; <label>:2497                                    ; preds = %2624, %2495
  %2498 = phi float [ %2625, %2624 ], [ 0.000000e+00, %2495 ]
  %2499 = phi float [ %2626, %2624 ], [ %764, %2495 ]
  %2500 = phi float [ %2627, %2624 ], [ %2415, %2495 ]
  %2501 = phi float [ %2628, %2624 ], [ %2413, %2495 ]
  %2502 = phi float [ %2629, %2624 ], [ 0.000000e+00, %2495 ]
  %2503 = phi float [ %2630, %2624 ], [ 0.000000e+00, %2495 ]
  %2504 = phi float [ %2631, %2624 ], [ %2404, %2495 ]
  %2505 = phi float [ %2632, %2624 ], [ %2405, %2495 ]
  %2506 = phi float [ %2633, %2624 ], [ %2406, %2495 ]
  %2507 = phi float [ %2634, %2624 ], [ %2441, %2495 ]
  %2508 = phi float [ %2635, %2624 ], [ %2442, %2495 ]
  %2509 = phi float [ %2636, %2624 ], [ %2443, %2495 ]
  %2510 = phi float [ %2637, %2624 ], [ %2412, %2495 ]
  %2511 = phi float [ %2638, %2624 ], [ %2411, %2495 ]
  %2512 = phi float [ %2639, %2624 ], [ 0.000000e+00, %2495 ]
  %2513 = phi float [ %2640, %2624 ], [ %2410, %2495 ]
  %2514 = phi float [ %2641, %2624 ], [ %2407, %2495 ]
  %2515 = phi float [ %2642, %2624 ], [ %2408, %2495 ]
  %2516 = phi float [ %2643, %2624 ], [ %2409, %2495 ]
  %2517 = phi i32 [ %2574, %2624 ], [ 0, %2495 ]
  %2518 = add nuw nsw i32 %2517, %2493
  %2519 = shl i32 %2518, 2
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = shl i32 %2521, 8
  %2523 = or i32 %2522, 48
  %2524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.ResRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.ResRet.f32 %2524, 2
  %2528 = extractvalue %dx.types.ResRet.f32 %2524, 3
  %2529 = or i32 %2522, 64
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.i32 %2530, 1
  %2533 = or i32 %2522, 80
  %2534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 2
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 3
  %2537 = or i32 %2522, 96
  %2538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2542 = extractvalue %dx.types.ResRet.f32 %2538, 3
  %2543 = or i32 %2522, 112
  %2544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 2
  %2546 = or i32 %2522, 128
  %2547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.f32 %2547, 0
  %2549 = extractvalue %dx.types.ResRet.f32 %2547, 1
  %2550 = extractvalue %dx.types.ResRet.f32 %2547, 2
  %2551 = extractvalue %dx.types.ResRet.f32 %2547, 3
  %2552 = or i32 %2522, 144
  %2553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.ResRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.ResRet.f32 %2553, 2
  %2557 = extractvalue %dx.types.ResRet.f32 %2553, 3
  %2558 = or i32 %2522, 160
  %2559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.ResRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.ResRet.f32 %2559, 2
  %2563 = extractvalue %dx.types.ResRet.f32 %2559, 3
  %2564 = or i32 %2522, 192
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = or i32 %2522, 208
  %2568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2570 = or i32 %2522, 248
  %2571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = extractvalue %dx.types.ResRet.f32 %2571, 1
  %2574 = add nuw nsw i32 %2517, 1
  %2575 = bitcast float %2528 to i32
  %2576 = and i32 %2575, 2560
  %2577 = icmp eq i32 %2576, 0
  %2578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.ResRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.ResRet.f32 %2578, 2
  %2582 = extractvalue %dx.types.ResRet.f32 %2578, 3
  %2583 = call float @dx.op.dot4.f32(i32 56, float %2579, float %2580, float %2581, float %2582, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2584 = or i32 %2522, 16
  %2585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.ResRet.f32 %2585, 3
  %2590 = call float @dx.op.dot4.f32(i32 56, float %2586, float %2587, float %2588, float %2589, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2591 = or i32 %2522, 32
  %2592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.ResRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.ResRet.f32 %2592, 2
  %2596 = extractvalue %dx.types.ResRet.f32 %2592, 3
  %2597 = call float @dx.op.dot4.f32(i32 56, float %2593, float %2594, float %2595, float %2596, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2598 = call float @dx.op.unary.f32(i32 27, float %2583)  ; Round_ni(value)
  %2599 = call float @dx.op.unary.f32(i32 6, float %2598)  ; FAbs(value)
  %2600 = call float @dx.op.unary.f32(i32 27, float %2590)  ; Round_ni(value)
  %2601 = call float @dx.op.unary.f32(i32 6, float %2600)  ; FAbs(value)
  %2602 = call float @dx.op.unary.f32(i32 6, float %2597)  ; FAbs(value)
  %2603 = call float @dx.op.unary.f32(i32 27, float %2602)  ; Round_ni(value)
  %2604 = fadd fast float %2601, %2599
  %2605 = fadd fast float %2604, %2603
  %2606 = fcmp fast oeq float %2605, 0.000000e+00
  %2607 = call float @dx.op.dot4.f32(i32 56, float %2579, float %2580, float %2581, float %2582, float %2450, float %2451, float %2452, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2608 = call float @dx.op.dot4.f32(i32 56, float %2586, float %2587, float %2588, float %2589, float %2450, float %2451, float %2452, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2609 = call float @dx.op.dot4.f32(i32 56, float %2579, float %2580, float %2581, float %2582, float %2453, float %2454, float %2455, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2610 = call float @dx.op.dot4.f32(i32 56, float %2586, float %2587, float %2588, float %2589, float %2453, float %2454, float %2455, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2611 = fsub fast float %2607, %2583
  %2612 = fsub fast float %2609, %2583
  %2613 = fsub fast float %2608, %2590
  %2614 = fsub fast float %2610, %2590
  %2615 = call float @dx.op.dot3.f32(i32 55, float %2525, float %2526, float %2527, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2618 = fadd fast float %2617, %2615
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2621 = fcmp fast ogt float %2619, %2620
  %2622 = and i1 %2606, %2621
  %2623 = and i1 %2577, %2622
  br i1 %2623, label %2645, label %2624

; <label>:2624                                    ; preds = %2909, %2726, %2645, %2497
  %2625 = phi float [ %2498, %2645 ], [ %2729, %2726 ], [ %2729, %2909 ], [ %2498, %2497 ]
  %2626 = phi float [ %2499, %2645 ], [ %2499, %2726 ], [ %2884, %2909 ], [ %2499, %2497 ]
  %2627 = phi float [ %2500, %2645 ], [ %2500, %2726 ], [ %2883, %2909 ], [ %2500, %2497 ]
  %2628 = phi float [ %2501, %2645 ], [ %2501, %2726 ], [ %2881, %2909 ], [ %2501, %2497 ]
  %2629 = phi float [ %2502, %2645 ], [ %2502, %2726 ], [ %2853, %2909 ], [ %2502, %2497 ]
  %2630 = phi float [ %2503, %2645 ], [ %2503, %2726 ], [ %2851, %2909 ], [ %2503, %2497 ]
  %2631 = phi float [ %2504, %2645 ], [ %2504, %2726 ], [ %2919, %2909 ], [ %2504, %2497 ]
  %2632 = phi float [ %2505, %2645 ], [ %2505, %2726 ], [ %2920, %2909 ], [ %2505, %2497 ]
  %2633 = phi float [ %2506, %2645 ], [ %2506, %2726 ], [ %2921, %2909 ], [ %2506, %2497 ]
  %2634 = phi float [ %2507, %2645 ], [ %2507, %2726 ], [ %2832, %2909 ], [ %2507, %2497 ]
  %2635 = phi float [ %2508, %2645 ], [ %2508, %2726 ], [ %2833, %2909 ], [ %2508, %2497 ]
  %2636 = phi float [ %2509, %2645 ], [ %2509, %2726 ], [ %2834, %2909 ], [ %2509, %2497 ]
  %2637 = phi float [ %2510, %2645 ], [ %2510, %2726 ], [ %2861, %2909 ], [ %2510, %2497 ]
  %2638 = phi float [ %2511, %2645 ], [ %2511, %2726 ], [ %2858, %2909 ], [ %2511, %2497 ]
  %2639 = phi float [ %2512, %2645 ], [ %2512, %2726 ], [ %2855, %2909 ], [ %2512, %2497 ]
  %2640 = phi float [ %2513, %2645 ], [ %2513, %2726 ], [ %2849, %2909 ], [ %2513, %2497 ]
  %2641 = phi float [ %2514, %2645 ], [ %2514, %2726 ], [ %2844, %2909 ], [ %2514, %2497 ]
  %2642 = phi float [ %2515, %2645 ], [ %2515, %2726 ], [ %2845, %2909 ], [ %2515, %2497 ]
  %2643 = phi float [ %2516, %2645 ], [ %2516, %2726 ], [ %2846, %2909 ], [ %2516, %2497 ]
  %2644 = icmp eq i32 %2574, %2496
  br i1 %2644, label %2922, label %2497

; <label>:2645                                    ; preds = %2497
  %2646 = extractvalue %dx.types.ResRet.f32 %2544, 3
  %2647 = extractvalue %dx.types.ResRet.f32 %2544, 1
  %2648 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2649 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2650 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2651 = extractvalue %dx.types.ResRet.i32 %2530, 3
  %2652 = extractvalue %dx.types.ResRet.i32 %2530, 2
  %2653 = add i32 %2651, 0
  %2654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2653, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2654, %dx.types.Handle %2655, float %2583, float %2590, float undef, float undef, i32 0, i32 0, i32 undef, float %2611, float %2613, float undef, float %2612, float %2614, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  %2658 = fmul fast float %2657, %2650
  %2659 = fadd fast float %2658, %2649
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fmul fast float %2583, %2539
  %2662 = call float @dx.op.tertiary.f32(i32 46, float %2540, float %2590, float %2661)  ; FMad(a,b,c)
  %2663 = fadd fast float %2662, %2648
  %2664 = fmul fast float %2583, %2541
  %2665 = call float @dx.op.tertiary.f32(i32 46, float %2542, float %2590, float %2664)  ; FMad(a,b,c)
  %2666 = fadd fast float %2665, %2647
  %2667 = fmul fast float %2611, %2539
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2540, float %2613, float %2667)  ; FMad(a,b,c)
  %2669 = fmul fast float %2611, %2541
  %2670 = call float @dx.op.tertiary.f32(i32 46, float %2542, float %2613, float %2669)  ; FMad(a,b,c)
  %2671 = fmul fast float %2612, %2539
  %2672 = call float @dx.op.tertiary.f32(i32 46, float %2540, float %2614, float %2671)  ; FMad(a,b,c)
  %2673 = fmul fast float %2612, %2541
  %2674 = call float @dx.op.tertiary.f32(i32 46, float %2542, float %2614, float %2673)  ; FMad(a,b,c)
  %2675 = add i32 %2652, 0
  %2676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2677 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2676, %dx.types.Handle %2655, float %2663, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float %2668, float %2670, float undef, float %2672, float %2674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  %2679 = and i32 %2575, 1024
  %2680 = icmp ne i32 %2679, 0
  %2681 = fcmp fast ogt float %2678, 0x3FE0101020000000
  %2682 = uitofp i1 %2681 to float
  %2683 = select i1 %2680, float %2682, float %2678
  %2684 = and i32 %2575, 8192
  %2685 = icmp ne i32 %2684, 0
  %2686 = select i1 %2685, float %2646, float 1.000000e+00
  %2687 = fmul fast float %2583, 2.000000e+00
  %2688 = fadd fast float %2687, -1.000000e+00
  %2689 = call float @dx.op.unary.f32(i32 6, float %2688)  ; FAbs(value)
  %2690 = fmul fast float %2689, %2572
  %2691 = fsub fast float %2690, %2572
  %2692 = call float @dx.op.unary.f32(i32 7, float %2691)  ; Saturate(value)
  %2693 = fmul fast float %2590, 2.000000e+00
  %2694 = fadd fast float %2693, -1.000000e+00
  %2695 = call float @dx.op.unary.f32(i32 6, float %2694)  ; FAbs(value)
  %2696 = fmul fast float %2695, %2573
  %2697 = fsub fast float %2696, %2573
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = fmul fast float %2602, %2535
  %2700 = fsub fast float %2699, %2535
  %2701 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  %2702 = fmul fast float %2660, %2686
  %2703 = fmul fast float %2702, %2657
  %2704 = fmul fast float %2703, %2692
  %2705 = fmul fast float %2704, %2683
  %2706 = fmul fast float %2705, %2698
  %2707 = fmul fast float %2706, %2701
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2711 = fsub fast float %2619, %2710
  %2712 = fmul fast float %2711, %2709
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = fmul fast float %2707, %2536
  %2715 = fadd fast float %2707, %2536
  %2716 = fmul fast float %2715, %2545
  %2717 = fsub fast float %2716, %2545
  %2718 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2719 = and i32 %2575, 128
  %2720 = icmp ne i32 %2719, 0
  %2721 = select i1 %2720, float %2718, float %2714
  %2722 = fmul fast float %2721, %2713
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 0
  %2725 = fcmp fast ugt float %2722, %2724
  br i1 %2725, label %2726, label %2624

; <label>:2726                                    ; preds = %2645
  %2727 = select i1 %2685, float %2722, float 0.000000e+00
  %2728 = fadd fast float %2727, %2498
  %2729 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  br i1 %2685, label %2624, label %2730

; <label>:2730                                    ; preds = %2726
  %2731 = and i32 %2575, 4
  %2732 = and i32 %2575, 8
  %2733 = add i32 %2531, 0
  %2734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2733, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2736 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2734, %dx.types.Handle %2735, float %2663, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float %2668, float %2670, float undef, float %2672, float %2674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2737 = extractvalue %dx.types.ResRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.ResRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.ResRet.f32 %2736, 2
  %2740 = extractvalue %dx.types.ResRet.f32 %2736, 3
  %2741 = bitcast float %2557 to i32
  %2742 = and i32 %2741, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = lshr i32 %2741, 8
  %2745 = and i32 %2744, 255
  %2746 = uitofp i32 %2745 to float
  %2747 = fmul fast float %2740, %2743
  %2748 = fadd fast float %2747, %2746
  %2749 = fmul fast float %2748, 0x3F70101000000000
  %2750 = add i32 %2532, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2750, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2751, %dx.types.Handle %2735, float %2663, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float %2668, float %2670, float undef, float %2672, float %2674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = extractvalue %dx.types.ResRet.f32 %2752, 3
  %2757 = bitcast float %2551 to i32
  %2758 = and i32 %2757, 255
  %2759 = uitofp i32 %2758 to float
  %2760 = lshr i32 %2757, 8
  %2761 = and i32 %2760, 255
  %2762 = uitofp i32 %2761 to float
  %2763 = lshr i32 %2757, 16
  %2764 = and i32 %2763, 255
  %2765 = uitofp i32 %2764 to float
  %2766 = fmul fast float %2765, 0x3F70101000000000
  %2767 = fmul fast float %2753, %2759
  %2768 = fadd fast float %2767, %2762
  %2769 = fmul fast float %2768, 0x3F70101000000000
  %2770 = fadd fast float %2754, -5.000000e-01
  %2771 = fadd fast float %2756, -5.000000e-01
  %2772 = fmul fast float %2770, %2766
  %2773 = fmul fast float %2771, %2766
  %2774 = fadd fast float %2772, 5.000000e-01
  %2775 = fadd fast float %2773, 5.000000e-01
  %2776 = fmul fast float %2737, %2560
  %2777 = fmul fast float %2738, %2561
  %2778 = fmul fast float %2739, %2562
  %2779 = fmul fast float %2774, 2.000000e+00
  %2780 = fadd fast float %2779, -1.000000e+00
  %2781 = fmul fast float %2775, 2.000000e+00
  %2782 = fadd fast float %2781, -1.000000e+00
  %2783 = fadd fast float %2780, %2782
  %2784 = fmul fast float %2783, 5.000000e-01
  %2785 = fsub fast float %2780, %2782
  %2786 = fmul fast float %2785, 5.000000e-01
  %2787 = call float @dx.op.unary.f32(i32 6, float %2784)  ; FAbs(value)
  %2788 = fsub fast float 1.000000e+00, %2787
  %2789 = call float @dx.op.unary.f32(i32 6, float %2786)  ; FAbs(value)
  %2790 = fsub fast float %2788, %2789
  %2791 = call float @dx.op.dot3.f32(i32 55, float %2784, float %2786, float %2790, float %2784, float %2786, float %2790)  ; Dot3(ax,ay,az,bx,by,bz)
  %2792 = call float @dx.op.unary.f32(i32 25, float %2791)  ; Rsqrt(value)
  %2793 = fmul fast float %2784, %2792
  %2794 = fmul fast float %2786, %2792
  %2795 = fmul fast float %2792, %2790
  %2796 = fmul fast float %2795, %2525
  %2797 = fmul fast float %2795, %2526
  %2798 = fmul fast float %2795, %2527
  %2799 = fmul fast float %2793, %2548
  %2800 = fmul fast float %2793, %2549
  %2801 = fmul fast float %2793, %2550
  %2802 = fadd fast float %2799, %2796
  %2803 = fadd fast float %2800, %2797
  %2804 = fadd fast float %2801, %2798
  %2805 = fmul fast float %2794, %2554
  %2806 = fmul fast float %2794, %2555
  %2807 = fmul fast float %2794, %2556
  %2808 = fadd fast float %2802, %2805
  %2809 = fadd fast float %2803, %2806
  %2810 = fadd fast float %2804, %2807
  %2811 = call float @dx.op.dot3.f32(i32 55, float %2808, float %2809, float %2810, float %2808, float %2809, float %2810)  ; Dot3(ax,ay,az,bx,by,bz)
  %2812 = call float @dx.op.unary.f32(i32 25, float %2811)  ; Rsqrt(value)
  %2813 = fmul fast float %2808, %2812
  %2814 = fmul fast float %2809, %2812
  %2815 = fmul fast float %2810, %2812
  %2816 = icmp ne i32 %2732, 0
  %2817 = select i1 %2816, float 1.000000e+00, float 0.000000e+00
  %2818 = fmul fast float %2722, %2817
  %2819 = and i32 %2575, 1
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %2821, label %2825

; <label>:2821                                    ; preds = %2730
  %2822 = fsub fast float %2813, %2507
  %2823 = fsub fast float %2814, %2508
  %2824 = fsub fast float %2815, %2509
  br label %2825

; <label>:2825                                    ; preds = %2821, %2730
  %2826 = phi float [ %2822, %2821 ], [ %2813, %2730 ]
  %2827 = phi float [ %2823, %2821 ], [ %2814, %2730 ]
  %2828 = phi float [ %2824, %2821 ], [ %2815, %2730 ]
  %2829 = fmul float %2828, %2818
  %2830 = fmul float %2827, %2818
  %2831 = fmul float %2826, %2818
  %2832 = fadd fast float %2831, %2507
  %2833 = fadd fast float %2830, %2508
  %2834 = fadd fast float %2829, %2509
  %2835 = icmp ne i32 %2731, 0
  %2836 = select i1 %2835, float 1.000000e+00, float 0.000000e+00
  %2837 = fmul fast float %2722, %2836
  %2838 = fsub fast float %2776, %2514
  %2839 = fsub fast float %2777, %2515
  %2840 = fsub fast float %2778, %2516
  %2841 = fmul fast float %2838, %2837
  %2842 = fmul fast float %2839, %2837
  %2843 = fmul fast float %2840, %2837
  %2844 = fadd fast float %2841, %2514
  %2845 = fadd fast float %2842, %2515
  %2846 = fadd fast float %2843, %2516
  %2847 = fsub fast float %2749, %2513
  %2848 = fmul fast float %2847, %2837
  %2849 = fadd fast float %2848, %2513
  %2850 = fmul fast float %2837, %2503
  %2851 = fsub fast float %2503, %2850
  %2852 = fmul fast float %2837, %2502
  %2853 = fsub fast float %2502, %2852
  %2854 = fadd fast float %2722, %2512
  %2855 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2856 = fsub fast float %2769, %2511
  %2857 = fmul fast float %2856, %2818
  %2858 = fadd fast float %2857, %2511
  %2859 = fsub fast float %2755, %2510
  %2860 = fmul fast float %2859, %2818
  %2861 = fadd fast float %2860, %2510
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2776, float %2777, float %2778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.CBufRet.f32 %2863, 1
  %2866 = fmul fast float %2865, %2862
  %2867 = fadd fast float %2866, %2864
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = bitcast float %2563 to i32
  %2870 = and i32 %2869, 65535
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = lshr i32 %2869, 16
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = fcmp fast oge float %2871, 0.000000e+00
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 0
  %2877 = select i1 %2874, float %2871, float %2876
  %2878 = fadd fast float %2877, %2873
  %2879 = fsub fast float %2868, %2501
  %2880 = fmul fast float %2879, %2722
  %2881 = fadd fast float %2880, %2501
  %2882 = fmul fast float %2878, %2722
  %2883 = call float @dx.op.binary.f32(i32 35, float %2500, float %2882)  ; FMax(a,b)
  %2884 = call float @dx.op.binary.f32(i32 35, float %2499, float %2722)  ; FMax(a,b)
  %2885 = and i32 %2575, 16
  %2886 = icmp eq i32 %2885, 0
  br i1 %2886, label %2909, label %2887

; <label>:2887                                    ; preds = %2825
  %2888 = bitcast float %2569 to i32
  %2889 = add i32 %2566, 0
  %2890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2889, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2891 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2890, %dx.types.Handle %2735, float %2663, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float %2668, float %2670, float undef, float %2672, float %2674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.ResRet.f32 %2891, 1
  %2894 = extractvalue %dx.types.ResRet.f32 %2891, 2
  %2895 = and i32 %2888, 65535
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = fmul fast float %2892, %2560
  %2898 = fmul fast float %2893, %2561
  %2899 = fmul fast float %2894, %2562
  %2900 = and i32 %2575, 16384
  %2901 = icmp ne i32 %2900, 0
  %2902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2903 = extractvalue %dx.types.CBufRet.f32 %2902, 0
  %2904 = select i1 %2901, float %2903, float 1.000000e+00
  %2905 = fmul fast float %2904, %2896
  %2906 = fmul fast float %2897, %2905
  %2907 = fmul fast float %2898, %2905
  %2908 = fmul fast float %2899, %2905
  br label %2909

; <label>:2909                                    ; preds = %2887, %2825
  %2910 = phi float [ %2906, %2887 ], [ 0.000000e+00, %2825 ]
  %2911 = phi float [ %2907, %2887 ], [ 0.000000e+00, %2825 ]
  %2912 = phi float [ %2908, %2887 ], [ 0.000000e+00, %2825 ]
  %2913 = fsub fast float %2910, %2504
  %2914 = fsub fast float %2911, %2505
  %2915 = fsub fast float %2912, %2506
  %2916 = fmul fast float %2913, %2722
  %2917 = fmul fast float %2914, %2722
  %2918 = fmul fast float %2915, %2722
  %2919 = fadd fast float %2916, %2504
  %2920 = fadd fast float %2917, %2505
  %2921 = fadd fast float %2918, %2506
  br label %2624

; <label>:2922                                    ; preds = %2624
  br label %2923

; <label>:2923                                    ; preds = %2922, %2401
  %2924 = phi float [ 0.000000e+00, %2401 ], [ %2625, %2922 ]
  %2925 = phi float [ %764, %2401 ], [ %2626, %2922 ]
  %2926 = phi float [ %2415, %2401 ], [ %2627, %2922 ]
  %2927 = phi float [ %2413, %2401 ], [ %2628, %2922 ]
  %2928 = phi float [ 0.000000e+00, %2401 ], [ %2629, %2922 ]
  %2929 = phi float [ 0.000000e+00, %2401 ], [ %2630, %2922 ]
  %2930 = phi float [ %2404, %2401 ], [ %2631, %2922 ]
  %2931 = phi float [ %2405, %2401 ], [ %2632, %2922 ]
  %2932 = phi float [ %2406, %2401 ], [ %2633, %2922 ]
  %2933 = phi float [ %2441, %2401 ], [ %2634, %2922 ]
  %2934 = phi float [ %2442, %2401 ], [ %2635, %2922 ]
  %2935 = phi float [ %2443, %2401 ], [ %2636, %2922 ]
  %2936 = phi float [ %2412, %2401 ], [ %2637, %2922 ]
  %2937 = phi float [ %2411, %2401 ], [ %2638, %2922 ]
  %2938 = phi float [ 0.000000e+00, %2401 ], [ %2639, %2922 ]
  %2939 = phi float [ %2410, %2401 ], [ %2640, %2922 ]
  %2940 = phi float [ %2407, %2401 ], [ %2641, %2922 ]
  %2941 = phi float [ %2408, %2401 ], [ %2642, %2922 ]
  %2942 = phi float [ %2409, %2401 ], [ %2643, %2922 ]
  %2943 = call float @dx.op.dot3.f32(i32 55, float %2933, float %2934, float %2935, float %2933, float %2934, float %2935)  ; Dot3(ax,ay,az,bx,by,bz)
  %2944 = call float @dx.op.unary.f32(i32 25, float %2943)  ; Rsqrt(value)
  %2945 = fmul fast float %2944, %2933
  %2946 = fmul fast float %2944, %2934
  %2947 = fmul fast float %2944, %2935
  %2948 = fadd fast float %2938, %764
  %2949 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2946, float %2947, float %2945, float %2946, float %2947)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = call float @dx.op.unary.f32(i32 25, float %2950)  ; Rsqrt(value)
  %2952 = fmul fast float %2951, %2945
  %2953 = fmul fast float %2951, %2946
  %2954 = fmul fast float %2951, %2947
  %2955 = fadd fast float %2939, 0xBFB99999A0000000
  %2956 = call float @dx.op.unary.f32(i32 7, float %2955)  ; Saturate(value)
  %2957 = fmul fast float %2956, 0x3FF1C71C80000000
  %2958 = call float @dx.op.binary.f32(i32 36, float %2939, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2959 = fsub fast float 1.000000e+00, %2957
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = fmul fast float %2960, %2940
  %2962 = fmul fast float %2960, %2941
  %2963 = fmul fast float %2960, %2942
  %2964 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2965 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2966 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2967 = fmul fast float %2957, %2940
  %2968 = fmul fast float %2957, %2941
  %2969 = fmul fast float %2957, %2942
  %2970 = fadd fast float %2967, %2958
  %2971 = fadd fast float %2968, %2958
  %2972 = fadd fast float %2969, %2958
  %2973 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2974 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2975 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2976 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.i32 %2977, 3
  %2979 = and i32 %2978, 8
  %2980 = icmp ne i32 %2979, 0
  %2981 = call float @dx.op.binary.f32(i32 35, float %2964, float %2940)  ; FMax(a,b)
  %2982 = call float @dx.op.binary.f32(i32 35, float %2965, float %2940)  ; FMax(a,b)
  %2983 = call float @dx.op.binary.f32(i32 35, float %2966, float %2940)  ; FMax(a,b)
  %2984 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2965, float %2966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2985 = select i1 %195, float %2940, float %2964
  %2986 = select i1 %195, float %2984, float %2965
  %2987 = select i1 %195, float 1.000000e+00, float %2966
  %2988 = select i1 %2980, float %2981, float %2985
  %2989 = select i1 %2980, float %2982, float %2986
  %2990 = select i1 %2980, float %2983, float %2987
  %2991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2992 = extractvalue %dx.types.CBufRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.CBufRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.CBufRet.f32 %2991, 2
  %2995 = fadd fast float %2992, %124
  %2996 = fadd fast float %2993, %125
  %2997 = fadd fast float %2994, %126
  %2998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.CBufRet.f32 %2998, 1
  %3001 = fsub fast float %2995, %2999
  %3002 = fsub fast float %2996, %3000
  %3003 = fmul fast float %3001, %3001
  %3004 = fmul fast float %3002, %3002
  %3005 = fadd fast float %3003, %3004
  %3006 = call float @dx.op.unary.f32(i32 24, float %3005)  ; Sqrt(value)
  %3007 = extractvalue %dx.types.CBufRet.f32 %2998, 2
  %3008 = fcmp fast olt float %3006, %3007
  br i1 %3008, label %3009, label %3076

; <label>:3009                                    ; preds = %2923
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 0
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.CBufRet.f32 %3010, 1
  %3017 = extractvalue %dx.types.CBufRet.f32 %3012, 1
  %3018 = extractvalue %dx.types.CBufRet.f32 %3014, 1
  %3019 = extractvalue %dx.types.CBufRet.f32 %3010, 3
  %3020 = extractvalue %dx.types.CBufRet.f32 %3012, 3
  %3021 = extractvalue %dx.types.CBufRet.f32 %3014, 3
  %3022 = fadd fast float %3019, %2995
  %3023 = fadd fast float %3020, %2996
  %3024 = fadd fast float %3021, %2997
  %3025 = fmul fast float %3022, %3011
  %3026 = call float @dx.op.tertiary.f32(i32 46, float %3023, float %3013, float %3025)  ; FMad(a,b,c)
  %3027 = call float @dx.op.tertiary.f32(i32 46, float %3024, float %3015, float %3026)  ; FMad(a,b,c)
  %3028 = fmul fast float %3022, %3016
  %3029 = call float @dx.op.tertiary.f32(i32 46, float %3023, float %3017, float %3028)  ; FMad(a,b,c)
  %3030 = call float @dx.op.tertiary.f32(i32 46, float %3024, float %3018, float %3029)  ; FMad(a,b,c)
  %3031 = fsub fast float %3027, %3019
  %3032 = fsub fast float %3030, %3020
  %3033 = fsub fast float %3031, %2999
  %3034 = fadd fast float %3033, %3007
  %3035 = fsub fast float %3032, %3000
  %3036 = fadd fast float %3035, %3007
  %3037 = extractvalue %dx.types.CBufRet.f32 %2998, 3
  %3038 = fmul fast float %3034, %3037
  %3039 = fmul fast float %3036, %3037
  %3040 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3041 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3042 = fsub fast float 1.000000e+00, %3040
  %3043 = fsub fast float 1.000000e+00, %3041
  %3044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3042, float %3043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = fcmp fast ugt float %3045, 0.000000e+00
  br i1 %3046, label %3047, label %3350

; <label>:3047                                    ; preds = %3009
  %3048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3049 = extractvalue %dx.types.CBufRet.f32 %3048, 2
  %3050 = fmul fast float %3049, %3045
  %3051 = extractvalue %dx.types.CBufRet.f32 %3048, 3
  %3052 = fadd fast float %3051, %3050
  %3053 = extractvalue %dx.types.CBufRet.f32 %3014, 2
  %3054 = fadd fast float %3052, %3021
  %3055 = fmul fast float %3027, %3015
  %3056 = call float @dx.op.tertiary.f32(i32 46, float %3030, float %3018, float %3055)  ; FMad(a,b,c)
  %3057 = call float @dx.op.tertiary.f32(i32 46, float %3054, float %3053, float %3056)  ; FMad(a,b,c)
  %3058 = fsub fast float %3057, %3021
  %3059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3060 = extractvalue %dx.types.CBufRet.f32 %3059, 2
  %3061 = fsub fast float %3058, %3060
  %3062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3042, float %3043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  %3064 = extractvalue %dx.types.ResRet.f32 %3062, 1
  %3065 = extractvalue %dx.types.ResRet.f32 %3062, 2
  %3066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3042, float %3043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  %3068 = extractvalue %dx.types.ResRet.f32 %3066, 1
  %3069 = extractvalue %dx.types.ResRet.f32 %3066, 2
  %3070 = fadd fast float %3067, %3063
  %3071 = fmul fast float %3070, 0x3F847AE140000000
  %3072 = fadd fast float %3068, %3064
  %3073 = fmul fast float %3072, 0x3F847AE140000000
  %3074 = fadd fast float %3069, %3065
  %3075 = fmul fast float %3074, 0x3F847AE140000000
  br label %3350

; <label>:3076                                    ; preds = %2923
  %3077 = and i32 %171, 1
  %3078 = icmp eq i32 %3077, 0
  br i1 %3078, label %3350, label %3079

; <label>:3079                                    ; preds = %3076
  %3080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3081 = extractvalue %dx.types.CBufRet.f32 %3080, 0
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 0
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 0
  %3086 = extractvalue %dx.types.CBufRet.f32 %3080, 1
  %3087 = extractvalue %dx.types.CBufRet.f32 %3082, 1
  %3088 = extractvalue %dx.types.CBufRet.f32 %3084, 1
  %3089 = extractvalue %dx.types.CBufRet.f32 %3080, 3
  %3090 = extractvalue %dx.types.CBufRet.f32 %3082, 3
  %3091 = extractvalue %dx.types.CBufRet.f32 %3084, 3
  %3092 = fadd fast float %3089, %2995
  %3093 = fadd fast float %3090, %2996
  %3094 = fadd fast float %3091, %2997
  %3095 = fmul fast float %3092, %3081
  %3096 = call float @dx.op.tertiary.f32(i32 46, float %3093, float %3083, float %3095)  ; FMad(a,b,c)
  %3097 = call float @dx.op.tertiary.f32(i32 46, float %3094, float %3085, float %3096)  ; FMad(a,b,c)
  %3098 = fmul fast float %3092, %3086
  %3099 = call float @dx.op.tertiary.f32(i32 46, float %3093, float %3087, float %3098)  ; FMad(a,b,c)
  %3100 = call float @dx.op.tertiary.f32(i32 46, float %3094, float %3088, float %3099)  ; FMad(a,b,c)
  %3101 = fsub fast float %3097, %3089
  %3102 = fsub fast float %3100, %3090
  %3103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.f32 %3103, 0
  %3105 = extractvalue %dx.types.CBufRet.f32 %3103, 1
  %3106 = extractvalue %dx.types.CBufRet.f32 %3103, 2
  %3107 = extractvalue %dx.types.CBufRet.f32 %3103, 3
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 3
  %3110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3111 = extractvalue %dx.types.CBufRet.i32 %3110, 0
  %3112 = extractvalue %dx.types.CBufRet.i32 %3110, 1
  %3113 = udiv i32 %3112, %3111
  %3114 = fsub fast float %3101, %3104
  %3115 = fsub fast float %3102, %3105
  %3116 = call float @dx.op.binary.f32(i32 35, float %3114, float 0.000000e+00)  ; FMax(a,b)
  %3117 = call float @dx.op.binary.f32(i32 35, float %3115, float 0.000000e+00)  ; FMax(a,b)
  %3118 = call float @dx.op.binary.f32(i32 36, float %3116, float %3106)  ; FMin(a,b)
  %3119 = call float @dx.op.binary.f32(i32 36, float %3117, float %3107)  ; FMin(a,b)
  %3120 = add i32 %3111, -1
  %3121 = add i32 %3113, -1
  %3122 = fmul fast float %3118, %3109
  %3123 = fmul fast float %3119, %3109
  %3124 = fptoui float %3122 to i32
  %3125 = fptoui float %3123 to i32
  %3126 = call i32 @dx.op.binary.i32(i32 40, i32 %3124, i32 %3120)  ; UMin(a,b)
  %3127 = call i32 @dx.op.binary.i32(i32 40, i32 %3125, i32 %3121)  ; UMin(a,b)
  %3128 = mul i32 %3127, %3111
  %3129 = add i32 %3128, %3126
  %3130 = shl i32 %3129, 2
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = icmp eq i32 %3132, -1
  br i1 %3133, label %3350, label %3134

; <label>:3134                                    ; preds = %3079
  %3135 = mul i32 %3132, 148
  %3136 = add i32 %3135, 4
  %3137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = add i32 %3135, 8
  %3140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.f32 %3140, 0
  %3142 = add i32 %3135, 36
  %3143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = add i32 %3135, 60
  %3146 = add i32 %3135, 92
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %3135, 116
  %3150 = fsub fast float %3101, %3138
  %3151 = fsub fast float %3102, %3141
  %3152 = fmul fast float %3109, %3150
  %3153 = fmul fast float %3109, %3151
  %3154 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3155 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 2
  %3159 = call float @dx.op.unary.f32(i32 83, float %3154)  ; DerivCoarseX(value)
  %3160 = call float @dx.op.unary.f32(i32 83, float %3156)  ; DerivCoarseX(value)
  %3161 = call float @dx.op.unary.f32(i32 84, float %3154)  ; DerivCoarseY(value)
  %3162 = call float @dx.op.unary.f32(i32 84, float %3156)  ; DerivCoarseY(value)
  %3163 = fmul fast float %3159, %3158
  %3164 = fmul fast float %3160, %3158
  %3165 = fmul fast float %3161, %3158
  %3166 = fmul fast float %3162, %3158
  %3167 = call float @dx.op.dot2.f32(i32 54, float %3165, float %3166, float %3165, float %3166)  ; Dot2(ax,ay,bx,by)
  %3168 = call float @dx.op.dot2.f32(i32 54, float %3163, float %3164, float %3163, float %3164)  ; Dot2(ax,ay,bx,by)
  %3169 = call float @dx.op.binary.f32(i32 35, float %3168, float %3167)  ; FMax(a,b)
  %3170 = call float @dx.op.unary.f32(i32 23, float %3169)  ; Log(value)
  %3171 = fmul fast float %3170, 5.000000e-01
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 1
  %3174 = fadd fast float %3173, %3171
  %3175 = call float @dx.op.binary.f32(i32 35, float %3174, float 0.000000e+00)  ; FMax(a,b)
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3178 = fadd fast float %3177, %3175
  %3179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3180 = extractvalue %dx.types.CBufRet.f32 %3179, 3
  %3181 = fadd fast float %3178, %3180
  %3182 = add i32 %3148, 0
  %3183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3183, i32 0)  ; GetDimensions(handle,mipLevel)
  %3185 = extractvalue %dx.types.Dimensions %3184, 0
  %3186 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3185)  ; FirstbitLo(value)
  %3187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.i32 %3187, 1
  %3189 = sub nsw i32 %3188, %3186
  %3190 = sitofp i32 %3189 to float
  %3191 = fsub fast float %3181, %3190
  %3192 = call float @dx.op.binary.f32(i32 35, float %3191, float 0.000000e+00)  ; FMax(a,b)
  %3193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3183, %dx.types.Handle %37, float %3154, float %3156, float %3144, float undef, i32 0, i32 0, i32 undef, float %3192)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3194 = extractvalue %dx.types.ResRet.f32 %3193, 0
  %3195 = fcmp ule float %3194, 0x3FE0101020000000
  %3196 = extractvalue %dx.types.CBufRet.i32 %3187, 0
  %3197 = and i32 %3196, 128
  %3198 = icmp ne i32 %3197, 0
  %3199 = and i1 %3195, %3198
  br i1 %3199, label %3350, label %3200

; <label>:3200                                    ; preds = %3134
  %3201 = add i32 %3135, 20
  %3202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.f32 %3202, 0
  %3204 = add i32 %3135, 24
  %3205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.f32 %3205, 0
  %3207 = add i32 %3135, 40
  %3208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = add i32 %3135, 96
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3213, 2
  %3215 = fmul fast float %3214, %3154
  %3216 = fmul fast float %3214, %3156
  %3217 = extractvalue %dx.types.CBufRet.f32 %3213, 3
  %3218 = fadd fast float %3215, %3217
  %3219 = fadd fast float %3216, %3217
  %3220 = add i32 %3212, 0
  %3221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3220, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3221, i32 0)  ; GetDimensions(handle,mipLevel)
  %3223 = extractvalue %dx.types.Dimensions %3222, 0
  %3224 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3223)  ; FirstbitLo(value)
  %3225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.i32 %3225, 1
  %3227 = sub nsw i32 %3226, %3224
  %3228 = sitofp i32 %3227 to float
  %3229 = fsub fast float %3178, %3228
  %3230 = call float @dx.op.binary.f32(i32 35, float %3229, float 0.000000e+00)  ; FMax(a,b)
  %3231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3221, %dx.types.Handle %37, float %3218, float %3219, float %3209, float undef, i32 0, i32 0, i32 undef, float %3230)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = fmul fast float %3232, %3203
  %3234 = fadd fast float %3233, %3206
  %3235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3236 = extractvalue %dx.types.CBufRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.CBufRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.CBufRet.f32 %3235, 2
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 3
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 3
  %3243 = extractvalue %dx.types.CBufRet.f32 %3235, 3
  %3244 = fadd fast float %3240, %3101
  %3245 = fadd fast float %3242, %3102
  %3246 = fadd fast float %3234, %3243
  %3247 = fmul fast float %3244, %3236
  %3248 = call float @dx.op.tertiary.f32(i32 46, float %3245, float %3237, float %3247)  ; FMad(a,b,c)
  %3249 = call float @dx.op.tertiary.f32(i32 46, float %3246, float %3238, float %3248)  ; FMad(a,b,c)
  %3250 = fsub fast float %3249, %3243
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3253 = fsub fast float %3250, %3252
  %3254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.i32 %3254, 0
  %3256 = call i32 @dx.op.binary.i32(i32 40, i32 %3132, i32 %3255)  ; UMin(a,b)
  %3257 = mul i32 %3256, 36
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = add i32 %3257, 4
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3263 = fmul fast float %3262, %3154
  %3264 = fmul fast float %3262, %3156
  %3265 = extractvalue %dx.types.CBufRet.f32 %3261, 1
  %3266 = fadd fast float %3263, %3265
  %3267 = fadd fast float %3264, %3265
  %3268 = icmp eq i32 %3259, 0
  br i1 %3268, label %3337, label %3269

; <label>:3269                                    ; preds = %3200
  br label %3270

; <label>:3270                                    ; preds = %3327, %3269
  %3271 = phi float [ %3328, %3327 ], [ 0.000000e+00, %3269 ]
  %3272 = phi float [ %3329, %3327 ], [ 0.000000e+00, %3269 ]
  %3273 = phi float [ %3330, %3327 ], [ 0.000000e+00, %3269 ]
  %3274 = phi float [ %3331, %3327 ], [ 0.000000e+00, %3269 ]
  %3275 = phi float [ %3332, %3327 ], [ 0.000000e+00, %3269 ]
  %3276 = phi float [ %3333, %3327 ], [ 0.000000e+00, %3269 ]
  %3277 = phi i32 [ %3334, %3327 ], [ 0, %3269 ]
  %3278 = shl i32 %3277, 2
  %3279 = add i32 %3145, %3278
  %3280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = add i32 %3149, %3278
  %3283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.i32 %3283, 0
  %3285 = add i32 %3284, 0
  %3286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3285, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3287 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3286, i32 0)  ; GetDimensions(handle,mipLevel)
  %3288 = extractvalue %dx.types.Dimensions %3287, 0
  %3289 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3288)  ; FirstbitLo(value)
  %3290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.i32 %3290, 1
  %3292 = sub nsw i32 %3291, %3289
  %3293 = sitofp i32 %3292 to float
  %3294 = fsub fast float %3178, %3293
  %3295 = call float @dx.op.binary.f32(i32 35, float %3294, float 0.000000e+00)  ; FMax(a,b)
  %3296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3286, %dx.types.Handle %37, float %3266, float %3267, float %3281, float undef, i32 0, i32 0, i32 undef, float %3295)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = fcmp fast ogt float %3297, 0.000000e+00
  br i1 %3298, label %3299, label %3327

; <label>:3299                                    ; preds = %3270
  %3300 = add i32 %3260, %3278
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 32767
  %3304 = mul nuw nsw i32 %3303, 928
  %3305 = add nuw nsw i32 %3304, 48
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = add nuw nsw i32 %3304, 60
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3315 = fmul fast float %3307, %3297
  %3316 = fmul fast float %3308, %3297
  %3317 = fmul fast float %3309, %3297
  %3318 = fadd fast float %3315, %3271
  %3319 = fadd fast float %3316, %3272
  %3320 = fadd fast float %3317, %3273
  %3321 = fmul fast float %3312, %3297
  %3322 = fmul fast float %3313, %3297
  %3323 = fmul fast float %3314, %3297
  %3324 = fadd fast float %3321, %3274
  %3325 = fadd fast float %3322, %3275
  %3326 = fadd fast float %3323, %3276
  br label %3327

; <label>:3327                                    ; preds = %3299, %3270
  %3328 = phi float [ %3318, %3299 ], [ %3271, %3270 ]
  %3329 = phi float [ %3319, %3299 ], [ %3272, %3270 ]
  %3330 = phi float [ %3320, %3299 ], [ %3273, %3270 ]
  %3331 = phi float [ %3324, %3299 ], [ %3274, %3270 ]
  %3332 = phi float [ %3325, %3299 ], [ %3275, %3270 ]
  %3333 = phi float [ %3326, %3299 ], [ %3276, %3270 ]
  %3334 = add nuw i32 %3277, 1
  %3335 = icmp eq i32 %3334, %3259
  br i1 %3335, label %3336, label %3270

; <label>:3336                                    ; preds = %3327
  br label %3337

; <label>:3337                                    ; preds = %3336, %3200
  %3338 = phi float [ 0.000000e+00, %3200 ], [ %3328, %3336 ]
  %3339 = phi float [ 0.000000e+00, %3200 ], [ %3329, %3336 ]
  %3340 = phi float [ 0.000000e+00, %3200 ], [ %3330, %3336 ]
  %3341 = phi float [ 0.000000e+00, %3200 ], [ %3331, %3336 ]
  %3342 = phi float [ 0.000000e+00, %3200 ], [ %3332, %3336 ]
  %3343 = phi float [ 0.000000e+00, %3200 ], [ %3333, %3336 ]
  %3344 = fadd fast float %3341, %3338
  %3345 = fmul fast float %3344, 0x3F847AE140000000
  %3346 = fadd fast float %3342, %3339
  %3347 = fmul fast float %3346, 0x3F847AE140000000
  %3348 = fadd fast float %3343, %3340
  %3349 = fmul fast float %3348, 0x3F847AE140000000
  br label %3350

; <label>:3350                                    ; preds = %3337, %3134, %3079, %3076, %3047, %3009
  %3351 = phi float [ %3061, %3047 ], [ -1.310720e+05, %3009 ], [ %3253, %3337 ], [ -1.310720e+05, %3079 ], [ -1.310720e+05, %3134 ], [ -1.310720e+05, %3076 ]
  %3352 = phi float [ %3071, %3047 ], [ 0.000000e+00, %3009 ], [ %3345, %3337 ], [ 0.000000e+00, %3079 ], [ 0.000000e+00, %3134 ], [ 0.000000e+00, %3076 ]
  %3353 = phi float [ %3073, %3047 ], [ 0.000000e+00, %3009 ], [ %3347, %3337 ], [ 0.000000e+00, %3079 ], [ 0.000000e+00, %3134 ], [ 0.000000e+00, %3076 ]
  %3354 = phi float [ %3075, %3047 ], [ 0.000000e+00, %3009 ], [ %3349, %3337 ], [ 0.000000e+00, %3079 ], [ 0.000000e+00, %3134 ], [ 0.000000e+00, %3076 ]
  %3355 = phi i1 [ true, %3047 ], [ false, %3009 ], [ true, %3337 ], [ false, %3079 ], [ false, %3134 ], [ false, %3076 ]
  %3356 = and i32 %171, 3
  %3357 = icmp eq i32 %3356, 1
  %3358 = select i1 %3357, float 1.000000e+00, float 0.000000e+00
  %3359 = fsub fast float %3351, %126
  %3360 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3361 = select i1 %3355, float %3360, float 1.000000e+00
  %3362 = fmul fast float %3361, %3358
  %3363 = icmp eq i32 %3356, 3
  %3364 = select i1 %3363, float 1.000000e+00, float %3362
  %3365 = call float @dx.op.binary.f32(i32 35, float %2924, float %3364)  ; FMax(a,b)
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3367 = fcmp fast une float %3366, 0.000000e+00
  %3368 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = call float @dx.op.unary.f32(i32 25, float %3368)  ; Rsqrt(value)
  br i1 %3367, label %3377, label %3370

; <label>:3370                                    ; preds = %3350
  %3371 = fmul fast float %3369, %124
  %3372 = fmul fast float %3369, %125
  %3373 = fmul fast float %3369, %126
  %3374 = fsub fast float -0.000000e+00, %3371
  %3375 = fsub fast float -0.000000e+00, %3372
  %3376 = fsub fast float -0.000000e+00, %3373
  br label %3545

; <label>:3377                                    ; preds = %3350
  %3378 = fmul fast float %124, %3369
  %3379 = fsub fast float -0.000000e+00, %3378
  %3380 = fmul fast float %125, %3369
  %3381 = fsub fast float -0.000000e+00, %3380
  %3382 = fmul fast float %126, %3369
  %3383 = fsub fast float -0.000000e+00, %3382
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3379, float %3381, float %3383, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = fmul fast float %3366, 2.500000e+00
  %3386 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3387 = fmul fast float %3366, 0x4013FFFFE0000000
  %3388 = fadd fast float %3387, 0xBFFFFFFFE0000000
  %3389 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  %3390 = fmul fast float %3366, 0x4004000020000000
  %3391 = fadd fast float %3390, 0xBFF8000040000000
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3393 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3394 = fmul fast float %2955, 1.000000e+01
  %3395 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3396 = fmul fast float %3395, 2.000000e+00
  %3397 = fsub fast float 3.000000e+00, %3396
  %3398 = fmul fast float %3395, %3395
  %3399 = fmul fast float %3398, %3397
  %3400 = fsub fast float 1.000000e+00, %3399
  %3401 = fsub fast float 0x3FE3333340000000, %2976
  %3402 = fmul fast float %3401, 0x400AAAAAA0000000
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3404 = fmul fast float %3400, %3403
  %3405 = fmul fast float %2988, 0x3FEA2B8620000000
  %3406 = fmul fast float %2989, 0x3FEA2B8620000000
  %3407 = fmul fast float %2990, 0x3FEA2B8620000000
  %3408 = fadd fast float %3405, 0x3FC81DFBA0000000
  %3409 = fmul fast float %3408, %2988
  %3410 = fadd fast float %3409, 0x3F910E6020000000
  %3411 = fadd fast float %3406, 0x3FC81DFBA0000000
  %3412 = fmul fast float %3411, %2989
  %3413 = fadd fast float %3412, 0x3F910E6020000000
  %3414 = fadd fast float %3407, 0x3FC81DFBA0000000
  %3415 = fmul fast float %3414, %2990
  %3416 = fadd fast float %3415, 0x3F910E6020000000
  %3417 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3418 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3419 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3420 = fsub fast float %3417, %2988
  %3421 = fsub fast float %3418, %2989
  %3422 = fsub fast float %3419, %2990
  %3423 = fmul fast float %3420, %3393
  %3424 = fmul fast float %3423, %3404
  %3425 = fmul fast float %3421, %3393
  %3426 = fmul fast float %3425, %3404
  %3427 = fmul fast float %3422, %3393
  %3428 = fmul fast float %3427, %3404
  %3429 = fadd fast float %3424, %2988
  %3430 = fadd fast float %3426, %2989
  %3431 = fadd fast float %3428, %2990
  %3432 = fmul fast float %2936, %2936
  %3433 = fmul fast float %3432, %3432
  %3434 = fadd fast float %3389, 1.000000e+00
  %3435 = fsub fast float %3434, %3404
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3437 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fsub fast float 1.000000e+00, %3433
  %3440 = call float @dx.op.binary.f32(i32 36, float %3436, float %3439)  ; FMin(a,b)
  %3441 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3442 = call float @dx.op.binary.f32(i32 35, float %3440, float %3441)  ; FMax(a,b)
  %3443 = fadd fast float %3438, 0xBFE4CCCCC0000000
  %3444 = fmul fast float %3443, 0x4006DB6DA0000000
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3446 = fmul fast float %3445, 2.000000e+00
  %3447 = fsub fast float 3.000000e+00, %3446
  %3448 = bitcast float %2973 to i32
  %3449 = ashr i32 %3448, 1
  %3450 = add nsw i32 %3449, 532487669
  %3451 = bitcast i32 %3450 to float
  %3452 = fsub fast float 1.000000e+00, %3451
  %3453 = bitcast float %3452 to i32
  %3454 = sub nsw i32 2129859010, %3453
  %3455 = bitcast i32 %3454 to float
  %3456 = fmul fast float %3455, 2.000000e+00
  %3457 = bitcast float %2974 to i32
  %3458 = ashr i32 %3457, 1
  %3459 = add nsw i32 %3458, 532487669
  %3460 = bitcast i32 %3459 to float
  %3461 = fsub fast float 1.000000e+00, %3460
  %3462 = bitcast float %3461 to i32
  %3463 = sub nsw i32 2129859010, %3462
  %3464 = bitcast i32 %3463 to float
  %3465 = fmul fast float %3464, 2.000000e+00
  %3466 = bitcast float %2975 to i32
  %3467 = ashr i32 %3466, 1
  %3468 = add nsw i32 %3467, 532487669
  %3469 = bitcast i32 %3468 to float
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = bitcast float %3470 to i32
  %3472 = sub nsw i32 2129859010, %3471
  %3473 = bitcast i32 %3472 to float
  %3474 = fmul fast float %3473, 2.000000e+00
  %3475 = fsub fast float 0x4002A9FBE0000000, %3456
  %3476 = fadd fast float %3456, 0x3FD54FDF00000000
  %3477 = bitcast float %3476 to i32
  %3478 = sub nsw i32 2129859010, %3477
  %3479 = bitcast i32 %3478 to float
  %3480 = fmul fast float %3479, %3475
  %3481 = fmul fast float %3480, %3480
  %3482 = fsub fast float 0x4002A9FBE0000000, %3465
  %3483 = fadd fast float %3465, 0x3FD54FDF00000000
  %3484 = bitcast float %3483 to i32
  %3485 = sub nsw i32 2129859010, %3484
  %3486 = bitcast i32 %3485 to float
  %3487 = fmul fast float %3486, %3482
  %3488 = fmul fast float %3487, %3487
  %3489 = fsub fast float 0x4002A9FBE0000000, %3474
  %3490 = fadd fast float %3474, 0x3FD54FDF00000000
  %3491 = bitcast float %3490 to i32
  %3492 = sub nsw i32 2129859010, %3491
  %3493 = bitcast i32 %3492 to float
  %3494 = fmul fast float %3493, %3489
  %3495 = fmul fast float %3494, %3494
  %3496 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3481)  ; FMax(a,b)
  %3497 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3488)  ; FMax(a,b)
  %3498 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3495)  ; FMax(a,b)
  %3499 = fsub fast float 1.000000e+00, %3384
  %3500 = fadd fast float %3499, %3400
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3502 = fsub fast float 1.000000e+00, %3364
  %3503 = fmul fast float %3442, %3502
  %3504 = fmul fast float %3445, %3445
  %3505 = fmul fast float %3504, %3503
  %3506 = fmul fast float %3505, %3447
  %3507 = fmul fast float %3502, 0xBFE99999A0000000
  %3508 = fmul fast float %3507, %3393
  %3509 = fmul fast float %3508, %3404
  %3510 = fadd fast float %3509, 1.000000e+00
  %3511 = fadd fast float %2976, -1.000000e+00
  %3512 = fmul fast float %3510, %3511
  %3513 = fadd fast float %3512, 1.000000e+00
  %3514 = fsub fast float %3496, %2973
  %3515 = fsub fast float %3497, %2974
  %3516 = fsub fast float %3498, %2975
  %3517 = fmul fast float %3506, %3514
  %3518 = fmul fast float %3506, %3515
  %3519 = fmul fast float %3506, %3516
  %3520 = fadd fast float %3517, %2973
  %3521 = fadd fast float %3518, %2974
  %3522 = fadd fast float %3519, %2975
  %3523 = fsub fast float %56, %2952
  %3524 = fsub fast float %57, %2953
  %3525 = fsub fast float %58, %2954
  %3526 = fmul fast float %3506, %3523
  %3527 = fmul fast float %3506, %3524
  %3528 = fmul fast float %3506, %3525
  %3529 = fadd fast float %3526, %2952
  %3530 = fadd fast float %3527, %2953
  %3531 = fadd fast float %3528, %2954
  %3532 = fmul fast float %3506, %3501
  %3533 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3534 = fsub fast float 1.000000e+00, %3533
  %3535 = fmul fast float %3532, %3534
  %3536 = fadd fast float %3535, %3533
  %3537 = fsub fast float 1.000000e+00, %2936
  %3538 = fmul fast float %3506, %3537
  %3539 = fadd fast float %3538, %2936
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3529, float %3530, float %3531, float %3529, float %3530, float %3531)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = call float @dx.op.unary.f32(i32 25, float %3540)  ; Rsqrt(value)
  %3542 = fmul fast float %3529, %3541
  %3543 = fmul fast float %3530, %3541
  %3544 = fmul fast float %3531, %3541
  br label %3545

; <label>:3545                                    ; preds = %3377, %3370
  %3546 = phi float [ %3376, %3370 ], [ %3383, %3377 ]
  %3547 = phi float [ %3375, %3370 ], [ %3381, %3377 ]
  %3548 = phi float [ %3374, %3370 ], [ %3379, %3377 ]
  %3549 = phi float [ %3373, %3370 ], [ %3382, %3377 ]
  %3550 = phi float [ %3372, %3370 ], [ %3380, %3377 ]
  %3551 = phi float [ %3371, %3370 ], [ %3378, %3377 ]
  %3552 = phi float [ %2973, %3370 ], [ %3520, %3377 ]
  %3553 = phi float [ %2974, %3370 ], [ %3521, %3377 ]
  %3554 = phi float [ %2975, %3370 ], [ %3522, %3377 ]
  %3555 = phi float [ %2988, %3370 ], [ %3429, %3377 ]
  %3556 = phi float [ %2989, %3370 ], [ %3430, %3377 ]
  %3557 = phi float [ %2990, %3370 ], [ %3431, %3377 ]
  %3558 = phi float [ %2952, %3370 ], [ %3542, %3377 ]
  %3559 = phi float [ %2953, %3370 ], [ %3543, %3377 ]
  %3560 = phi float [ %2954, %3370 ], [ %3544, %3377 ]
  %3561 = phi float [ %2976, %3370 ], [ %3536, %3377 ]
  %3562 = phi float [ %2936, %3370 ], [ %3539, %3377 ]
  %3563 = select i1 %195, float 0.000000e+00, float %3554
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %3548, float %3547, float %3546)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = call float @dx.op.dot3.f32(i32 55, float %3551, float %3550, float %3549, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = fmul fast float %3566, 2.000000e+00
  %3568 = fmul fast float %3567, %3558
  %3569 = fmul fast float %3567, %3559
  %3570 = fmul fast float %3567, %3560
  %3571 = fsub fast float %3551, %3568
  %3572 = fsub fast float %3550, %3569
  %3573 = fsub fast float %3549, %3570
  %3574 = call float @dx.op.binary.f32(i32 36, float %3562, float 1.000000e+00)  ; FMin(a,b)
  %3575 = fsub fast float 1.000000e+00, %3562
  %3576 = bitcast float %3575 to i32
  %3577 = sub nsw i32 2129859010, %3576
  %3578 = bitcast i32 %3577 to float
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.CBufRet.f32 %3579, 1
  %3582 = fadd fast float %3580, %124
  %3583 = fadd fast float %3581, %125
  %3584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.i32 %3584, 0
  %3586 = icmp eq i32 %3585, 1
  br i1 %3586, label %3587, label %3622

; <label>:3587                                    ; preds = %3545
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 1
  %3591 = fsub fast float %3582, %3589
  %3592 = fsub fast float %3583, %3590
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.CBufRet.f32 %3593, 1
  %3596 = fmul fast float %3591, %3594
  %3597 = fmul fast float %3592, %3595
  %3598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3596, float %3597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = fcmp fast ogt float %3599, 0.000000e+00
  %3601 = extractvalue %dx.types.CBufRet.i32 %3584, 3
  %3602 = icmp ne i32 %3601, 0
  %3603 = and i1 %3600, %3602
  br i1 %3603, label %3604, label %3622, !dx.controlflow.hints !84

; <label>:3604                                    ; preds = %3587
  %3605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.CBufRet.f32 %3605, 1
  %3608 = fsub fast float %3582, %3606
  %3609 = fsub fast float %3583, %3607
  %3610 = fmul fast float %3608, %3608
  %3611 = fmul fast float %3609, %3609
  %3612 = fadd fast float %3610, %3611
  %3613 = uitofp i32 %3601 to float
  %3614 = fmul fast float %3613, %3613
  %3615 = fcmp fast ogt float %3612, %3614
  br i1 %3615, label %3622, label %3616

; <label>:3616                                    ; preds = %3604
  %3617 = call float @dx.op.unary.f32(i32 24, float %3612)  ; Sqrt(value)
  %3618 = fsub fast float %3613, %3617
  %3619 = fmul fast float %3618, 0x3F75555560000000
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = call float @dx.op.binary.f32(i32 36, float %3620, float %3599)  ; FMin(a,b)
  br label %3622

; <label>:3622                                    ; preds = %3616, %3604, %3587, %3545
  %3623 = phi float [ 1.000000e+00, %3545 ], [ %3621, %3616 ], [ %3599, %3587 ], [ 0.000000e+00, %3604 ]
  %3624 = fcmp fast ogt float %3623, 0.000000e+00
  br i1 %3624, label %3625, label %3723, !dx.controlflow.hints !85

; <label>:3625                                    ; preds = %3622
  %3626 = fadd fast float %155, 5.000000e-01
  %3627 = call float @dx.op.unary.f32(i32 27, float %3626)  ; Round_ni(value)
  %3628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %153, float %154, float %3627, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 3
  %3634 = fmul fast float %3633, %3629
  %3635 = fmul fast float %3633, %3630
  %3636 = fmul fast float %3633, %3631
  %3637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %153, float %154, float %3627, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %153, float %154, float %3627, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = fmul fast float %3640, 2.000000e+00
  %3643 = fmul fast float %3641, 2.000000e+00
  %3644 = fadd fast float %3642, -1.000000e+00
  %3645 = fadd fast float %3643, -1.000000e+00
  %3646 = fadd fast float %3644, %3645
  %3647 = fmul fast float %3646, 5.000000e-01
  %3648 = fsub fast float %3644, %3645
  %3649 = fmul fast float %3648, 5.000000e-01
  %3650 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = call float @dx.op.unary.f32(i32 6, float %3649)  ; FAbs(value)
  %3653 = fsub fast float %3651, %3652
  %3654 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3653)  ; FMax(a,b)
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3649, float %3654, float %3647, float %3649, float %3654)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = bitcast float %3655 to i32
  %3657 = ashr i32 %3656, 1
  %3658 = sub nsw i32 1597250115, %3657
  %3659 = bitcast i32 %3658 to float
  %3660 = fmul fast float %3659, %3647
  %3661 = fmul fast float %3659, %3649
  %3662 = fmul fast float %3659, %3654
  %3663 = fsub fast float 1.000000e+00, %3638
  %3664 = fdiv fast float %3663, %3662
  %3665 = fmul fast float %3662, %56
  %3666 = fmul fast float %3662, %57
  %3667 = fmul fast float %3662, %58
  %3668 = fmul fast float %3660, %52
  %3669 = fmul fast float %3660, %53
  %3670 = fmul fast float %3660, %54
  %3671 = fadd fast float %3665, %3668
  %3672 = fadd fast float %3666, %3669
  %3673 = fadd fast float %3667, %3670
  %3674 = fmul fast float %3661, %88
  %3675 = fmul fast float %3661, %89
  %3676 = fmul fast float %3661, %90
  %3677 = fadd fast float %3671, %3674
  %3678 = fadd fast float %3672, %3675
  %3679 = fadd fast float %3673, %3676
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3677, float %3678, float %3679, float %3677, float %3678, float %3679)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call float @dx.op.unary.f32(i32 25, float %3680)  ; Rsqrt(value)
  %3682 = fmul fast float %3677, %3681
  %3683 = fmul fast float %3678, %3681
  %3684 = fmul fast float %3679, %3681
  %3685 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3686 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3687 = fmul fast float %3686, 5.000000e-01
  %3688 = fadd fast float %3687, 5.000000e-01
  %3689 = fmul fast float %3688, %3638
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %3682, float %3683, float %3684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call float @dx.op.unary.f32(i32 7, float %3690)  ; Saturate(value)
  %3692 = fmul fast float %3691, %3664
  %3693 = fadd fast float %3689, %3692
  %3694 = fsub fast float 5.000000e-01, %3687
  %3695 = fmul fast float %3694, %3555
  %3696 = fmul fast float %3694, %3556
  %3697 = fmul fast float %3694, %3557
  %3698 = fadd fast float %3693, %3695
  %3699 = fmul fast float %3698, %3634
  %3700 = fadd fast float %3693, %3696
  %3701 = fmul fast float %3700, %3635
  %3702 = fadd fast float %3693, %3697
  %3703 = fmul fast float %3702, %3636
  %3704 = call float @dx.op.dot3.f32(i32 55, float %3571, float %3572, float %3573, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = fmul fast float %3705, 5.000000e-01
  %3707 = fadd fast float %3706, 5.000000e-01
  %3708 = fmul fast float %3707, %3638
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3571, float %3572, float %3573, float %3682, float %3683, float %3684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3711 = fmul fast float %3710, %3664
  %3712 = fadd fast float %3708, %3711
  %3713 = fsub fast float 5.000000e-01, %3706
  %3714 = fmul fast float %3713, %3555
  %3715 = fmul fast float %3713, %3556
  %3716 = fmul fast float %3713, %3557
  %3717 = fadd fast float %3712, %3714
  %3718 = fmul fast float %3717, %3634
  %3719 = fadd fast float %3712, %3715
  %3720 = fmul fast float %3719, %3635
  %3721 = fadd fast float %3712, %3716
  %3722 = fmul fast float %3721, %3636
  br label %3723

; <label>:3723                                    ; preds = %3625, %3622
  %3724 = phi float [ %3718, %3625 ], [ 0.000000e+00, %3622 ]
  %3725 = phi float [ %3720, %3625 ], [ 0.000000e+00, %3622 ]
  %3726 = phi float [ %3722, %3625 ], [ 0.000000e+00, %3622 ]
  %3727 = phi float [ %3699, %3625 ], [ 0.000000e+00, %3622 ]
  %3728 = phi float [ %3701, %3625 ], [ 0.000000e+00, %3622 ]
  %3729 = phi float [ %3703, %3625 ], [ 0.000000e+00, %3622 ]
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 0
  %3732 = fcmp fast ogt float %3731, 0.000000e+00
  %3733 = and i1 %3624, %3732
  br i1 %3733, label %3734, label %3938, !dx.controlflow.hints !86

; <label>:3734                                    ; preds = %3723
  %3735 = extractvalue %dx.types.CBufRet.f32 %3579, 2
  %3736 = fadd fast float %3735, %126
  %3737 = fmul fast float %3558, 3.200000e+01
  %3738 = fmul fast float %3559, 3.200000e+01
  %3739 = fadd fast float %3582, %3737
  %3740 = fadd fast float %3583, %3738
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.CBufRet.f32 %3741, 1
  %3744 = fsub fast float %3739, %3742
  %3745 = fsub fast float %3740, %3743
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.CBufRet.f32 %3746, 1
  %3749 = fmul fast float %3744, %3747
  %3750 = fmul fast float %3745, %3748
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3754 = fsub fast float %3582, %3752
  %3755 = fsub fast float %3583, %3753
  %3756 = fmul fast float %3754, %3754
  %3757 = fmul fast float %3755, %3755
  %3758 = fadd fast float %3756, %3757
  %3759 = call float @dx.op.unary.f32(i32 24, float %3758)  ; Sqrt(value)
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3763 = fsub fast float %3759, %3761
  %3764 = fdiv fast float %3763, %3762
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fmul fast float %3765, 2.000000e+00
  %3767 = fsub fast float 3.000000e+00, %3766
  %3768 = fmul fast float %3765, %3765
  %3769 = fmul fast float %3768, %3767
  %3770 = fcmp fast oge float %3749, 0.000000e+00
  %3771 = fcmp fast ole float %3749, 1.000000e+00
  %3772 = and i1 %3771, %3770
  %3773 = fcmp fast oge float %3750, 0.000000e+00
  %3774 = and i1 %3773, %3772
  %3775 = fcmp fast ole float %3750, 1.000000e+00
  %3776 = and i1 %3775, %3774
  %3777 = fcmp fast ogt float %3769, 0.000000e+00
  %3778 = and i1 %3777, %3776
  br i1 %3778, label %3779, label %3902, !dx.controlflow.hints !87

; <label>:3779                                    ; preds = %3734
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 2
  %3782 = extractvalue %dx.types.CBufRet.f32 %3780, 3
  %3783 = fmul fast float %3781, %3749
  %3784 = fmul fast float %3782, %3750
  %3785 = call float @dx.op.unary.f32(i32 27, float %3783)  ; Round_ni(value)
  %3786 = call float @dx.op.unary.f32(i32 27, float %3784)  ; Round_ni(value)
  %3787 = fptosi float %3785 to i32
  %3788 = fptosi float %3786 to i32
  %3789 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3787, i32 %3788, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = lshr i32 %3790, 16
  %3792 = icmp eq i32 %3791, 65535
  br i1 %3792, label %3902, label %3793

; <label>:3793                                    ; preds = %3779
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3796 = fmul fast float %3795, %3749
  %3797 = extractvalue %dx.types.CBufRet.f32 %3794, 1
  %3798 = fadd fast float %3796, %3797
  %3799 = extractvalue %dx.types.CBufRet.f32 %3794, 2
  %3800 = fmul fast float %3799, %3750
  %3801 = extractvalue %dx.types.CBufRet.f32 %3794, 3
  %3802 = fadd fast float %3800, %3801
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3798, float %3802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %3808 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3809 = fsub fast float %3807, %3808
  %3810 = fmul fast float %3809, %3804
  %3811 = fadd fast float %3810, %3808
  %3812 = extractvalue %dx.types.CBufRet.f32 %3806, 3
  %3813 = extractvalue %dx.types.CBufRet.f32 %3806, 2
  %3814 = fsub fast float %3812, %3813
  %3815 = fmul fast float %3814, %3805
  %3816 = fadd fast float %3815, %3813
  %3817 = fsub fast float %3736, %3811
  %3818 = fsub fast float %3816, %3811
  %3819 = fdiv fast float %3817, %3818
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %3822 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3823 = extractvalue %dx.types.CBufRet.f32 %3780, 1
  %3824 = fmul fast float %3822, %3749
  %3825 = fmul fast float %3823, %3750
  %3826 = fmul fast float %3824, 1.250000e-01
  %3827 = fmul fast float %3825, 1.250000e-01
  %3828 = call float @dx.op.unary.f32(i32 27, float %3826)  ; Round_ni(value)
  %3829 = call float @dx.op.unary.f32(i32 27, float %3827)  ; Round_ni(value)
  %3830 = fmul fast float %3828, 8.000000e+00
  %3831 = fmul fast float %3829, 8.000000e+00
  %3832 = fsub fast float %3824, %3830
  %3833 = fsub fast float %3825, %3831
  %3834 = fadd fast float %3832, 5.000000e-01
  %3835 = fadd fast float %3833, 5.000000e-01
  %3836 = and i32 %3791, 255
  %3837 = lshr i32 %3790, 24
  %3838 = mul nuw nsw i32 %3836, 9
  %3839 = uitofp i32 %3838 to float
  %3840 = mul nuw nsw i32 %3837, 9
  %3841 = uitofp i32 %3840 to float
  %3842 = fadd fast float %3834, %3839
  %3843 = fadd fast float %3835, %3841
  %3844 = fdiv fast float %3842, %3731
  %3845 = fdiv fast float %3843, %3821
  %3846 = fmul fast float %3820, 4.375000e-01
  %3847 = fadd fast float %3846, 3.125000e-02
  %3848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3844, float %3845, float %3847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = fadd fast float %3846, 5.312500e-01
  %3853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3844, float %3845, float %3852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = fmul fast float %3854, 2.000000e+00
  %3858 = fmul fast float %3855, 2.000000e+00
  %3859 = fmul fast float %3856, 2.000000e+00
  %3860 = fadd fast float %3857, -1.000000e+00
  %3861 = fadd fast float %3858, -1.000000e+00
  %3862 = fadd fast float %3859, -1.000000e+00
  %3863 = fmul fast float %3860, %3860
  %3864 = fmul fast float %3861, %3861
  %3865 = fadd fast float %3863, %3864
  %3866 = fmul fast float %3862, %3862
  %3867 = fadd fast float %3865, %3866
  %3868 = call float @dx.op.unary.f32(i32 24, float %3867)  ; Sqrt(value)
  %3869 = fcmp fast ogt float %3868, 0.000000e+00
  br i1 %3869, label %3870, label %3874

; <label>:3870                                    ; preds = %3793
  %3871 = fdiv fast float %3860, %3868
  %3872 = fdiv fast float %3861, %3868
  %3873 = fdiv fast float %3862, %3868
  br label %3874

; <label>:3874                                    ; preds = %3870, %3793
  %3875 = phi float [ %3871, %3870 ], [ 0.000000e+00, %3793 ]
  %3876 = phi float [ %3872, %3870 ], [ 0.000000e+00, %3793 ]
  %3877 = phi float [ %3873, %3870 ], [ 0.000000e+00, %3793 ]
  %3878 = call float @dx.op.dot3.f32(i32 55, float %3875, float %3876, float %3877, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3878)  ; FMax(a,b)
  %3880 = fmul fast float %3879, 0x400C5BF8A0000000
  %3881 = fmul fast float %3849, %3769
  %3882 = fmul fast float %3881, %3880
  %3883 = fmul fast float %3850, %3769
  %3884 = fmul fast float %3883, %3880
  %3885 = fmul fast float %3851, %3769
  %3886 = fmul fast float %3885, %3880
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3889 = fmul fast float %3882, %3888
  %3890 = fmul fast float %3884, %3888
  %3891 = fmul fast float %3886, %3888
  %3892 = fcmp fast ogt float %3736, %3816
  br i1 %3892, label %3893, label %3902

; <label>:3893                                    ; preds = %3874
  %3894 = fmul fast float %3818, 0x3FC24924A0000000
  %3895 = fsub fast float %3736, %3816
  %3896 = fdiv fast float %3895, %3894
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = fsub fast float 1.000000e+00, %3897
  %3899 = fmul fast float %3898, %3889
  %3900 = fmul fast float %3898, %3890
  %3901 = fmul fast float %3898, %3891
  br label %3902

; <label>:3902                                    ; preds = %3893, %3874, %3779, %3734
  %3903 = phi float [ %3901, %3893 ], [ %3891, %3874 ], [ 0.000000e+00, %3779 ], [ 0.000000e+00, %3734 ]
  %3904 = phi float [ %3900, %3893 ], [ %3890, %3874 ], [ 0.000000e+00, %3779 ], [ 0.000000e+00, %3734 ]
  %3905 = phi float [ %3899, %3893 ], [ %3889, %3874 ], [ 0.000000e+00, %3779 ], [ 0.000000e+00, %3734 ]
  %3906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3905)  ; FMax(a,b)
  %3907 = fmul fast float %3906, 0x3FD20DD760000000
  %3908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3571, float %3572, float %3573)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = fmul fast float %3908, 0x3FDF454380000000
  %3910 = fmul fast float %3908, %3908
  %3911 = fmul fast float %3910, 0x3FEE471020000000
  %3912 = fadd fast float %3911, 0xBFD42F6020000000
  %3913 = call float @dx.op.dot3.f32(i32 55, float %3906, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3909, float %3912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3904)  ; FMax(a,b)
  %3915 = fmul fast float %3914, 0x3FD20DD760000000
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3914, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3909, float %3912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3903)  ; FMax(a,b)
  %3918 = fmul fast float %3917, 0x3FD20DD760000000
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3917, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3909, float %3912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call float @dx.op.binary.f32(i32 35, float %3907, float 0.000000e+00)  ; FMax(a,b)
  %3921 = call float @dx.op.binary.f32(i32 35, float %3915, float 0.000000e+00)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3918, float 0.000000e+00)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3913, float 0.000000e+00)  ; FMax(a,b)
  %3924 = call float @dx.op.binary.f32(i32 35, float %3916, float 0.000000e+00)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float %3919, float 0.000000e+00)  ; FMax(a,b)
  %3926 = fmul fast float %3920, %3623
  %3927 = fmul fast float %3921, %3623
  %3928 = fmul fast float %3922, %3623
  %3929 = fadd fast float %3926, %3727
  %3930 = fadd fast float %3927, %3728
  %3931 = fadd fast float %3928, %3729
  %3932 = fmul fast float %3923, %3623
  %3933 = fmul fast float %3924, %3623
  %3934 = fmul fast float %3925, %3623
  %3935 = fadd fast float %3932, %3724
  %3936 = fadd fast float %3933, %3725
  %3937 = fadd fast float %3934, %3726
  br label %3938

; <label>:3938                                    ; preds = %3902, %3723
  %3939 = phi float [ %3935, %3902 ], [ %3724, %3723 ]
  %3940 = phi float [ %3936, %3902 ], [ %3725, %3723 ]
  %3941 = phi float [ %3937, %3902 ], [ %3726, %3723 ]
  %3942 = phi float [ %3929, %3902 ], [ %3727, %3723 ]
  %3943 = phi float [ %3930, %3902 ], [ %3728, %3723 ]
  %3944 = phi float [ %3931, %3902 ], [ %3729, %3723 ]
  %3945 = fcmp fast olt float %3623, 1.000000e+00
  br i1 %3945, label %3946, label %4764, !dx.controlflow.hints !88

; <label>:3946                                    ; preds = %3938
  %3947 = extractvalue %dx.types.CBufRet.f32 %3579, 2
  %3948 = fadd fast float %3947, %126
  %3949 = fmul fast float %3558, 3.200000e+01
  %3950 = fmul fast float %3559, 3.200000e+01
  %3951 = fadd fast float %3582, %3949
  %3952 = fadd fast float %3583, %3950
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3956 = fsub fast float %3951, %3954
  %3957 = fsub fast float %3952, %3955
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3961 = fmul fast float %3956, %3959
  %3962 = fmul fast float %3957, %3960
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = fmul fast float %3961, %3964
  %3966 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3967 = fadd fast float %3965, %3966
  %3968 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3969 = fmul fast float %3968, %3962
  %3970 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3971 = fadd fast float %3969, %3970
  %3972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3967, float %3971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.ResRet.f32 %3972, 1
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3975, 0
  %3978 = fsub fast float %3976, %3977
  %3979 = fmul fast float %3978, %3973
  %3980 = fadd fast float %3979, %3977
  %3981 = extractvalue %dx.types.CBufRet.f32 %3975, 3
  %3982 = extractvalue %dx.types.CBufRet.f32 %3975, 2
  %3983 = fsub fast float %3981, %3982
  %3984 = fmul fast float %3983, %3974
  %3985 = fadd fast float %3984, %3982
  %3986 = fsub fast float %3948, %3980
  %3987 = fsub fast float %3985, %3980
  %3988 = fdiv fast float %3986, %3987
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3992 = fmul fast float %3991, %3989
  %3993 = extractvalue %dx.types.CBufRet.f32 %3990, 1
  %3994 = fadd fast float %3992, %3993
  %3995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3967, float %3971, float %3994, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.ResRet.f32 %3995, 1
  %3998 = extractvalue %dx.types.ResRet.f32 %3995, 2
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.CBufRet.f32 %3999, 1
  %4002 = extractvalue %dx.types.CBufRet.f32 %3999, 2
  %4003 = fmul fast float %4000, %3996
  %4004 = fmul fast float %4001, %3997
  %4005 = fmul fast float %4002, %3998
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.CBufRet.f32 %4006, 2
  %4010 = fadd fast float %4003, %4007
  %4011 = fadd fast float %4004, %4008
  %4012 = fadd fast float %4005, %4009
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = fmul fast float %4014, %3961
  %4016 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4017 = fadd fast float %4015, %4016
  %4018 = extractvalue %dx.types.CBufRet.f32 %4013, 2
  %4019 = fmul fast float %4018, %3962
  %4020 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4021 = fadd fast float %4019, %4020
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4025 = extractvalue %dx.types.CBufRet.f32 %4022, 2
  %4026 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4030 = extractvalue %dx.types.CBufRet.f32 %4027, 2
  %4031 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4017, float %4021, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %4032, 2
  %4036 = extractvalue %dx.types.ResRet.f32 %4032, 3
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4017, float %4021, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4042 = fmul fast float %4033, %4010
  %4043 = fmul fast float %4038, %4010
  %4044 = fmul fast float %4040, %4010
  %4045 = fmul fast float %4036, %4010
  %4046 = fadd fast float %4042, %4023
  %4047 = fadd fast float %4043, %4024
  %4048 = fadd fast float %4044, %4025
  %4049 = fadd fast float %4045, %4026
  %4050 = fmul fast float %4034, %4010
  %4051 = fmul fast float %4039, %4010
  %4052 = fadd fast float %4050, %4028
  %4053 = fadd fast float %4051, %4029
  %4054 = fmul fast float %4035, %4010
  %4055 = fmul fast float %4041, %4010
  %4056 = fadd fast float %4054, %4030
  %4057 = fadd fast float %4055, %4031
  %4058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4017, float %4021, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.ResRet.f32 %4058, 1
  %4061 = extractvalue %dx.types.ResRet.f32 %4058, 2
  %4062 = extractvalue %dx.types.ResRet.f32 %4058, 3
  %4063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4017, float %4021, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.ResRet.f32 %4063, 1
  %4066 = extractvalue %dx.types.ResRet.f32 %4063, 2
  %4067 = extractvalue %dx.types.ResRet.f32 %4063, 3
  %4068 = fmul fast float %4059, %4011
  %4069 = fmul fast float %4064, %4011
  %4070 = fmul fast float %4066, %4011
  %4071 = fmul fast float %4062, %4011
  %4072 = fadd fast float %4046, %4068
  %4073 = fadd fast float %4047, %4069
  %4074 = fadd fast float %4048, %4070
  %4075 = fadd fast float %4049, %4071
  %4076 = fmul fast float %4060, %4011
  %4077 = fmul fast float %4065, %4011
  %4078 = fadd fast float %4052, %4076
  %4079 = fadd fast float %4053, %4077
  %4080 = fmul fast float %4061, %4011
  %4081 = fmul fast float %4067, %4011
  %4082 = fadd fast float %4056, %4080
  %4083 = fadd fast float %4057, %4081
  %4084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4017, float %4021, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = extractvalue %dx.types.ResRet.f32 %4084, 3
  %4089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4017, float %4021, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4090 = extractvalue %dx.types.ResRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.ResRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.ResRet.f32 %4089, 2
  %4093 = extractvalue %dx.types.ResRet.f32 %4089, 3
  %4094 = fmul fast float %4085, %4012
  %4095 = fmul fast float %4090, %4012
  %4096 = fmul fast float %4092, %4012
  %4097 = fmul fast float %4088, %4012
  %4098 = fadd fast float %4072, %4094
  %4099 = fadd fast float %4073, %4095
  %4100 = fadd fast float %4074, %4096
  %4101 = fadd fast float %4075, %4097
  %4102 = fmul fast float %4086, %4012
  %4103 = fmul fast float %4091, %4012
  %4104 = fadd fast float %4078, %4102
  %4105 = fadd fast float %4079, %4103
  %4106 = fmul fast float %4087, %4012
  %4107 = fmul fast float %4093, %4012
  %4108 = fadd fast float %4082, %4106
  %4109 = fadd fast float %4083, %4107
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = fsub fast float %3582, %4111
  %4113 = fsub fast float %3954, %3582
  %4114 = call float @dx.op.binary.f32(i32 35, float %4113, float %4112)  ; FMax(a,b)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4110, 1
  %4116 = fsub fast float %3583, %4115
  %4117 = fsub fast float %3955, %3583
  %4118 = call float @dx.op.binary.f32(i32 35, float %4117, float %4116)  ; FMax(a,b)
  %4119 = call float @dx.op.binary.f32(i32 35, float %4114, float %4118)  ; FMax(a,b)
  %4120 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %4121 = fmul fast float %4120, %4119
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4123, 2
  %4127 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4128 = fsub fast float %4124, %4098
  %4129 = fsub fast float %4125, %4099
  %4130 = fsub fast float %4126, %4100
  %4131 = fsub fast float %4127, %4101
  %4132 = fmul fast float %4128, %4122
  %4133 = fmul fast float %4129, %4122
  %4134 = fmul fast float %4130, %4122
  %4135 = fmul fast float %4131, %4122
  %4136 = fadd fast float %4132, %4098
  %4137 = fadd fast float %4133, %4099
  %4138 = fadd fast float %4134, %4100
  %4139 = fadd fast float %4135, %4101
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4143 = fsub fast float %4141, %4104
  %4144 = fsub fast float %4142, %4105
  %4145 = fmul fast float %4143, %4122
  %4146 = fmul fast float %4144, %4122
  %4147 = fadd fast float %4145, %4104
  %4148 = fadd fast float %4146, %4105
  %4149 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4150 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4151 = fsub fast float %4149, %4108
  %4152 = fsub fast float %4150, %4109
  %4153 = fmul fast float %4151, %4122
  %4154 = fmul fast float %4152, %4122
  %4155 = fadd fast float %4153, %4108
  %4156 = fadd fast float %4154, %4109
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = fmul fast float %4158, %4136
  %4160 = fmul fast float %4158, %4137
  %4161 = fmul fast float %4158, %4138
  %4162 = fmul fast float %4158, %4139
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = fmul fast float %4164, %4147
  %4166 = fmul fast float %4164, %4148
  %4167 = fadd fast float %4165, %4159
  %4168 = fadd fast float %4166, %4161
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = fmul fast float %4170, %4155
  %4172 = fmul fast float %4170, %4156
  %4173 = fadd fast float %4167, %4171
  %4174 = fadd fast float %4168, %4172
  %4175 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4176 = fmul fast float %4175, %4136
  %4177 = fmul fast float %4175, %4137
  %4178 = fmul fast float %4175, %4138
  %4179 = fmul fast float %4175, %4139
  %4180 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4181 = fmul fast float %4180, %4147
  %4182 = fmul fast float %4180, %4148
  %4183 = fadd fast float %4181, %4176
  %4184 = fadd fast float %4182, %4178
  %4185 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4186 = fmul fast float %4185, %4155
  %4187 = fmul fast float %4185, %4156
  %4188 = fadd fast float %4183, %4186
  %4189 = fadd fast float %4184, %4187
  %4190 = extractvalue %dx.types.CBufRet.f32 %4157, 2
  %4191 = fmul fast float %4190, %4136
  %4192 = fmul fast float %4190, %4137
  %4193 = fmul fast float %4190, %4138
  %4194 = fmul fast float %4190, %4139
  %4195 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4196 = fmul fast float %4195, %4147
  %4197 = fmul fast float %4195, %4148
  %4198 = fadd fast float %4196, %4191
  %4199 = fadd fast float %4197, %4193
  %4200 = extractvalue %dx.types.CBufRet.f32 %4169, 2
  %4201 = fmul fast float %4200, %4155
  %4202 = fmul fast float %4200, %4156
  %4203 = fadd fast float %4198, %4201
  %4204 = fadd fast float %4199, %4202
  %4205 = fmul fast float %4192, %4192
  %4206 = fmul fast float %4204, %4204
  %4207 = fmul fast float %4194, %4194
  %4208 = fadd fast float %4207, %4205
  %4209 = fadd fast float %4208, %4206
  %4210 = call float @dx.op.unary.f32(i32 24, float %4209)  ; Sqrt(value)
  %4211 = fcmp fast ugt float %4210, 0.000000e+00
  br i1 %4211, label %4212, label %4227

; <label>:4212                                    ; preds = %3946
  %4213 = fsub fast float -0.000000e+00, %4194
  %4214 = fdiv fast float %4213, %4210
  %4215 = fsub fast float -0.000000e+00, %4192
  %4216 = fdiv fast float %4215, %4210
  %4217 = fdiv fast float %4204, %4210
  %4218 = fmul fast float %4203, 0x3FE279A760000000
  %4219 = fmul fast float %4216, %4192
  %4220 = fmul fast float %4217, %4204
  %4221 = fmul fast float %4214, %4194
  %4222 = fadd fast float %4219, %4221
  %4223 = fsub fast float %4222, %4220
  %4224 = call float @dx.op.unary.f32(i32 6, float %4223)  ; FAbs(value)
  %4225 = fadd fast float %4224, 0x3DDB7CDFE0000000
  %4226 = fdiv fast float %4218, %4225
  br label %4227

; <label>:4227                                    ; preds = %4212, %3946
  %4228 = phi float [ %4226, %4212 ], [ 1.000000e+00, %3946 ]
  %4229 = fmul fast float %4177, %4177
  %4230 = fmul fast float %4189, %4189
  %4231 = fmul fast float %4179, %4179
  %4232 = fadd fast float %4231, %4229
  %4233 = fadd fast float %4232, %4230
  %4234 = call float @dx.op.unary.f32(i32 24, float %4233)  ; Sqrt(value)
  %4235 = fcmp fast ugt float %4234, 0.000000e+00
  br i1 %4235, label %4236, label %4251

; <label>:4236                                    ; preds = %4227
  %4237 = fsub fast float -0.000000e+00, %4179
  %4238 = fdiv fast float %4237, %4234
  %4239 = fsub fast float -0.000000e+00, %4177
  %4240 = fdiv fast float %4239, %4234
  %4241 = fdiv fast float %4189, %4234
  %4242 = fmul fast float %4188, 0x3FE279A760000000
  %4243 = fmul fast float %4240, %4177
  %4244 = fmul fast float %4241, %4189
  %4245 = fmul fast float %4238, %4179
  %4246 = fadd fast float %4243, %4245
  %4247 = fsub fast float %4246, %4244
  %4248 = call float @dx.op.unary.f32(i32 6, float %4247)  ; FAbs(value)
  %4249 = fadd fast float %4248, 0x3DDB7CDFE0000000
  %4250 = fdiv fast float %4242, %4249
  br label %4251

; <label>:4251                                    ; preds = %4236, %4227
  %4252 = phi float [ %4250, %4236 ], [ 1.000000e+00, %4227 ]
  %4253 = call float @dx.op.binary.f32(i32 36, float %4252, float %4228)  ; FMin(a,b)
  %4254 = fmul fast float %4160, %4160
  %4255 = fmul fast float %4174, %4174
  %4256 = fmul fast float %4162, %4162
  %4257 = fadd fast float %4256, %4254
  %4258 = fadd fast float %4257, %4255
  %4259 = call float @dx.op.unary.f32(i32 24, float %4258)  ; Sqrt(value)
  %4260 = fcmp fast ugt float %4259, 0.000000e+00
  br i1 %4260, label %4261, label %4276

; <label>:4261                                    ; preds = %4251
  %4262 = fsub fast float -0.000000e+00, %4162
  %4263 = fdiv fast float %4262, %4259
  %4264 = fsub fast float -0.000000e+00, %4160
  %4265 = fdiv fast float %4264, %4259
  %4266 = fdiv fast float %4174, %4259
  %4267 = fmul fast float %4173, 0x3FE279A760000000
  %4268 = fmul fast float %4265, %4160
  %4269 = fmul fast float %4266, %4174
  %4270 = fmul fast float %4263, %4162
  %4271 = fadd fast float %4268, %4270
  %4272 = fsub fast float %4271, %4269
  %4273 = call float @dx.op.unary.f32(i32 6, float %4272)  ; FAbs(value)
  %4274 = fadd fast float %4273, 0x3DDB7CDFE0000000
  %4275 = fdiv fast float %4267, %4274
  br label %4276

; <label>:4276                                    ; preds = %4261, %4251
  %4277 = phi float [ %4275, %4261 ], [ 1.000000e+00, %4251 ]
  %4278 = call float @dx.op.binary.f32(i32 36, float %4277, float %4253)  ; FMin(a,b)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = fcmp fast olt float %4279, 1.000000e+00
  br i1 %4280, label %4281, label %4291

; <label>:4281                                    ; preds = %4276
  %4282 = fmul fast float %4279, %4160
  %4283 = fmul fast float %4279, %4174
  %4284 = fmul fast float %4279, %4162
  %4285 = fmul fast float %4279, %4177
  %4286 = fmul fast float %4279, %4189
  %4287 = fmul fast float %4279, %4179
  %4288 = fmul fast float %4279, %4192
  %4289 = fmul fast float %4279, %4204
  %4290 = fmul fast float %4279, %4194
  br label %4291

; <label>:4291                                    ; preds = %4281, %4276
  %4292 = phi float [ %4288, %4281 ], [ %4192, %4276 ]
  %4293 = phi float [ %4289, %4281 ], [ %4204, %4276 ]
  %4294 = phi float [ %4290, %4281 ], [ %4194, %4276 ]
  %4295 = phi float [ %4285, %4281 ], [ %4177, %4276 ]
  %4296 = phi float [ %4286, %4281 ], [ %4189, %4276 ]
  %4297 = phi float [ %4287, %4281 ], [ %4179, %4276 ]
  %4298 = phi float [ %4282, %4281 ], [ %4160, %4276 ]
  %4299 = phi float [ %4283, %4281 ], [ %4174, %4276 ]
  %4300 = phi float [ %4284, %4281 ], [ %4162, %4276 ]
  %4301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4173)  ; FMax(a,b)
  %4302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4188)  ; FMax(a,b)
  %4303 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4203)  ; FMax(a,b)
  %4304 = fcmp fast oge float %3961, 0.000000e+00
  %4305 = and i1 %4304, %3732
  %4306 = fcmp fast ole float %3961, 1.000000e+00
  %4307 = and i1 %4306, %4305
  %4308 = fcmp fast oge float %3962, 0.000000e+00
  %4309 = and i1 %4308, %4307
  %4310 = fcmp fast ole float %3962, 1.000000e+00
  %4311 = and i1 %4310, %4309
  br i1 %4311, label %4312, label %4457, !dx.controlflow.hints !89

; <label>:4312                                    ; preds = %4291
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 2
  %4315 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4316 = fmul fast float %4314, %3961
  %4317 = fmul fast float %4315, %3962
  %4318 = call float @dx.op.unary.f32(i32 27, float %4316)  ; Round_ni(value)
  %4319 = call float @dx.op.unary.f32(i32 27, float %4317)  ; Round_ni(value)
  %4320 = fptosi float %4318 to i32
  %4321 = fptosi float %4319 to i32
  %4322 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4320, i32 %4321, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4323 = extractvalue %dx.types.ResRet.i32 %4322, 0
  %4324 = and i32 %4323, 65535
  %4325 = lshr i32 %4323, 16
  %4326 = icmp eq i32 %4324, 65535
  br i1 %4326, label %4363, label %4327

; <label>:4327                                    ; preds = %4312
  %4328 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %4329 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4330 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4331 = fmul fast float %4329, %3961
  %4332 = fmul fast float %4330, %3962
  %4333 = fmul fast float %4331, 1.250000e-01
  %4334 = fmul fast float %4332, 1.250000e-01
  %4335 = call float @dx.op.unary.f32(i32 27, float %4333)  ; Round_ni(value)
  %4336 = call float @dx.op.unary.f32(i32 27, float %4334)  ; Round_ni(value)
  %4337 = fmul fast float %4335, 8.000000e+00
  %4338 = fmul fast float %4336, 8.000000e+00
  %4339 = and i32 %4323, 255
  %4340 = lshr i32 %4323, 8
  %4341 = and i32 %4340, 255
  %4342 = mul nuw nsw i32 %4339, 9
  %4343 = uitofp i32 %4342 to float
  %4344 = mul nuw nsw i32 %4341, 9
  %4345 = uitofp i32 %4344 to float
  %4346 = fadd fast float %4343, 5.000000e-01
  %4347 = fadd fast float %4346, %4331
  %4348 = fsub fast float %4347, %4337
  %4349 = fadd fast float %4345, 5.000000e-01
  %4350 = fadd fast float %4349, %4332
  %4351 = fsub fast float %4350, %4338
  %4352 = fdiv fast float %4348, %3731
  %4353 = fdiv fast float %4351, %4328
  %4354 = fmul fast float %3989, 4.375000e-01
  %4355 = fadd fast float %4354, 3.125000e-02
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4352, float %4353, float %4355, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = fadd fast float %4357, %4301
  %4361 = fadd fast float %4358, %4302
  %4362 = fadd fast float %4359, %4303
  br label %4363

; <label>:4363                                    ; preds = %4327, %4312
  %4364 = phi float [ %4362, %4327 ], [ %4303, %4312 ]
  %4365 = phi float [ %4361, %4327 ], [ %4302, %4312 ]
  %4366 = phi float [ %4360, %4327 ], [ %4301, %4312 ]
  %4367 = icmp eq i32 %4325, 65535
  br i1 %4367, label %4457, label %4368

; <label>:4368                                    ; preds = %4363
  %4369 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %4370 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4371 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4372 = fmul fast float %4370, %3961
  %4373 = fmul fast float %4371, %3962
  %4374 = fmul fast float %4372, 1.250000e-01
  %4375 = fmul fast float %4373, 1.250000e-01
  %4376 = call float @dx.op.unary.f32(i32 27, float %4374)  ; Round_ni(value)
  %4377 = call float @dx.op.unary.f32(i32 27, float %4375)  ; Round_ni(value)
  %4378 = fmul fast float %4376, 8.000000e+00
  %4379 = fmul fast float %4377, 8.000000e+00
  %4380 = fsub fast float %4372, %4378
  %4381 = fsub fast float %4373, %4379
  %4382 = fadd fast float %4380, 5.000000e-01
  %4383 = fadd fast float %4381, 5.000000e-01
  %4384 = and i32 %4325, 255
  %4385 = lshr i32 %4323, 24
  %4386 = mul nuw nsw i32 %4384, 9
  %4387 = uitofp i32 %4386 to float
  %4388 = mul nuw nsw i32 %4385, 9
  %4389 = uitofp i32 %4388 to float
  %4390 = fadd fast float %4382, %4387
  %4391 = fadd fast float %4383, %4389
  %4392 = fdiv fast float %4390, %3731
  %4393 = fdiv fast float %4391, %4369
  %4394 = fmul fast float %3989, 4.375000e-01
  %4395 = fadd fast float %4394, 3.125000e-02
  %4396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4392, float %4393, float %4395, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = fadd fast float %4394, 5.312500e-01
  %4401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4392, float %4393, float %4400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4402 = extractvalue %dx.types.ResRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.ResRet.f32 %4401, 1
  %4404 = extractvalue %dx.types.ResRet.f32 %4401, 2
  %4405 = fmul fast float %4402, 2.000000e+00
  %4406 = fmul fast float %4403, 2.000000e+00
  %4407 = fmul fast float %4404, 2.000000e+00
  %4408 = fadd fast float %4405, -1.000000e+00
  %4409 = fadd fast float %4406, -1.000000e+00
  %4410 = fadd fast float %4407, -1.000000e+00
  %4411 = fmul fast float %4408, %4408
  %4412 = fmul fast float %4409, %4409
  %4413 = fadd fast float %4411, %4412
  %4414 = fmul fast float %4410, %4410
  %4415 = fadd fast float %4413, %4414
  %4416 = call float @dx.op.unary.f32(i32 24, float %4415)  ; Sqrt(value)
  %4417 = fcmp fast ogt float %4416, 0.000000e+00
  br i1 %4417, label %4418, label %4422

; <label>:4418                                    ; preds = %4368
  %4419 = fdiv fast float %4408, %4416
  %4420 = fdiv fast float %4409, %4416
  %4421 = fdiv fast float %4410, %4416
  br label %4422

; <label>:4422                                    ; preds = %4418, %4368
  %4423 = phi float [ %4419, %4418 ], [ 0.000000e+00, %4368 ]
  %4424 = phi float [ %4420, %4418 ], [ 0.000000e+00, %4368 ]
  %4425 = phi float [ %4421, %4418 ], [ 0.000000e+00, %4368 ]
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 0
  %4428 = extractvalue %dx.types.CBufRet.f32 %4426, 1
  %4429 = fsub fast float %3582, %4427
  %4430 = fsub fast float %3583, %4428
  %4431 = fmul fast float %4429, %4429
  %4432 = fmul fast float %4430, %4430
  %4433 = fadd fast float %4431, %4432
  %4434 = call float @dx.op.unary.f32(i32 24, float %4433)  ; Sqrt(value)
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4438 = fsub fast float %4434, %4436
  %4439 = fdiv fast float %4438, %4437
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fmul fast float %4440, 2.000000e+00
  %4442 = fsub fast float 3.000000e+00, %4441
  %4443 = fmul fast float %4440, %4440
  %4444 = fmul fast float %4443, %4442
  %4445 = call float @dx.op.dot3.f32(i32 55, float %4423, float %4424, float %4425, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4445)  ; FMax(a,b)
  %4447 = fmul fast float %4446, 0x400C5BF8A0000000
  %4448 = fmul fast float %4444, %4397
  %4449 = fmul fast float %4448, %4447
  %4450 = fadd fast float %4449, %4366
  %4451 = fmul fast float %4444, %4398
  %4452 = fmul fast float %4451, %4447
  %4453 = fadd fast float %4452, %4365
  %4454 = fmul fast float %4444, %4399
  %4455 = fmul fast float %4454, %4447
  %4456 = fadd fast float %4455, %4364
  br label %4457

; <label>:4457                                    ; preds = %4422, %4363, %4291
  %4458 = phi float [ %4456, %4422 ], [ %4364, %4363 ], [ %4303, %4291 ]
  %4459 = phi float [ %4453, %4422 ], [ %4365, %4363 ], [ %4302, %4291 ]
  %4460 = phi float [ %4450, %4422 ], [ %4366, %4363 ], [ %4301, %4291 ]
  %4461 = fcmp fast ogt float %3948, %3985
  %4462 = and i1 %4304, %4461
  %4463 = and i1 %4306, %4462
  %4464 = and i1 %4308, %4463
  %4465 = and i1 %4310, %4464
  br i1 %4465, label %4466, label %4523, !dx.controlflow.hints !90

; <label>:4466                                    ; preds = %4457
  %4467 = fmul fast float %3987, 0x3FC24924A0000000
  %4468 = fsub fast float %3948, %3985
  %4469 = fdiv fast float %4468, %4467
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.CBufRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.CBufRet.f32 %4473, 2
  %4477 = fsub fast float %4472, %4460
  %4478 = fsub fast float %4474, %4298
  %4479 = fsub fast float %4475, %4299
  %4480 = fsub fast float %4476, %4300
  %4481 = fmul fast float %4477, %4470
  %4482 = fmul fast float %4478, %4470
  %4483 = fmul fast float %4479, %4470
  %4484 = fmul fast float %4480, %4470
  %4485 = fadd fast float %4481, %4460
  %4486 = fadd fast float %4482, %4298
  %4487 = fadd fast float %4483, %4299
  %4488 = fadd fast float %4484, %4300
  %4489 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 1
  %4493 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4494 = fsub fast float %4489, %4459
  %4495 = fsub fast float %4491, %4295
  %4496 = fsub fast float %4492, %4296
  %4497 = fsub fast float %4493, %4297
  %4498 = fmul fast float %4494, %4470
  %4499 = fmul fast float %4495, %4470
  %4500 = fmul fast float %4496, %4470
  %4501 = fmul fast float %4497, %4470
  %4502 = fadd fast float %4498, %4459
  %4503 = fadd fast float %4499, %4295
  %4504 = fadd fast float %4500, %4296
  %4505 = fadd fast float %4501, %4297
  %4506 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.CBufRet.f32 %4507, 2
  %4511 = fsub fast float %4506, %4458
  %4512 = fsub fast float %4508, %4292
  %4513 = fsub fast float %4509, %4293
  %4514 = fsub fast float %4510, %4294
  %4515 = fmul fast float %4511, %4470
  %4516 = fmul fast float %4512, %4470
  %4517 = fmul fast float %4513, %4470
  %4518 = fmul fast float %4514, %4470
  %4519 = fadd fast float %4515, %4458
  %4520 = fadd fast float %4516, %4292
  %4521 = fadd fast float %4517, %4293
  %4522 = fadd fast float %4518, %4294
  br label %4523

; <label>:4523                                    ; preds = %4466, %4457
  %4524 = phi float [ %4519, %4466 ], [ %4458, %4457 ]
  %4525 = phi float [ %4520, %4466 ], [ %4292, %4457 ]
  %4526 = phi float [ %4521, %4466 ], [ %4293, %4457 ]
  %4527 = phi float [ %4522, %4466 ], [ %4294, %4457 ]
  %4528 = phi float [ %4502, %4466 ], [ %4459, %4457 ]
  %4529 = phi float [ %4503, %4466 ], [ %4295, %4457 ]
  %4530 = phi float [ %4504, %4466 ], [ %4296, %4457 ]
  %4531 = phi float [ %4505, %4466 ], [ %4297, %4457 ]
  %4532 = phi float [ %4485, %4466 ], [ %4460, %4457 ]
  %4533 = phi float [ %4486, %4466 ], [ %4298, %4457 ]
  %4534 = phi float [ %4487, %4466 ], [ %4299, %4457 ]
  %4535 = phi float [ %4488, %4466 ], [ %4300, %4457 ]
  %4536 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4537 = fmul fast float %4536, %4532
  %4538 = fmul fast float %4536, %4528
  %4539 = fmul fast float %4536, %4524
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 3
  %4542 = fmul fast float %4537, %4541
  %4543 = fmul fast float %4538, %4541
  %4544 = fmul fast float %4539, %4541
  %4545 = fmul fast float %4533, 1.500000e+00
  %4546 = fmul fast float %4545, %4536
  %4547 = fmul fast float %4546, %4541
  %4548 = fmul fast float %4534, 1.500000e+00
  %4549 = fmul fast float %4548, %4536
  %4550 = fmul fast float %4549, %4541
  %4551 = fmul fast float %4535, 1.500000e+00
  %4552 = fmul fast float %4551, %4536
  %4553 = fmul fast float %4552, %4541
  %4554 = fmul fast float %4529, 1.500000e+00
  %4555 = fmul fast float %4554, %4536
  %4556 = fmul fast float %4555, %4541
  %4557 = fmul fast float %4530, 1.500000e+00
  %4558 = fmul fast float %4557, %4536
  %4559 = fmul fast float %4558, %4541
  %4560 = fmul fast float %4531, 1.500000e+00
  %4561 = fmul fast float %4560, %4536
  %4562 = fmul fast float %4561, %4541
  %4563 = fmul fast float %4525, 1.500000e+00
  %4564 = fmul fast float %4563, %4536
  %4565 = fmul fast float %4564, %4541
  %4566 = fmul fast float %4526, 1.500000e+00
  %4567 = fmul fast float %4566, %4536
  %4568 = fmul fast float %4567, %4541
  %4569 = fmul fast float %4527, 1.500000e+00
  %4570 = fmul fast float %4569, %4536
  %4571 = fmul fast float %4570, %4541
  %4572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4542)  ; FMax(a,b)
  %4573 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4550, float %4553, float %4547, float %4550, float %4553)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = fcmp fast oeq float %4573, 0.000000e+00
  %4575 = fcmp fast oeq float %4572, 0.000000e+00
  %4576 = or i1 %4575, %4574
  br i1 %4576, label %4606, label %4577

; <label>:4577                                    ; preds = %4523
  %4578 = fsub fast float -0.000000e+00, %4553
  %4579 = fsub fast float -0.000000e+00, %4547
  %4580 = call float @dx.op.unary.f32(i32 24, float %4573)  ; Sqrt(value)
  %4581 = fdiv fast float %4580, %4572
  %4582 = fcmp fast ogt float %4581, 0x3FFB6F8900000000
  %4583 = select i1 %4582, float 0x3FFB6F8900000000, float %4581
  %4584 = fmul fast float %4583, 0x3FE8A23460000000
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = call float @dx.op.binary.f32(i32 35, float %4583, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4587 = fmul fast float %4585, %4572
  %4588 = fmul fast float %4586, 0x3FF279A740000000
  %4589 = fadd fast float %4588, -1.000000e+00
  %4590 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4550, float %4578, float %4579, float %4550)  ; Dot3(ax,ay,az,bx,by,bz)
  %4591 = call float @dx.op.unary.f32(i32 25, float %4590)  ; Rsqrt(value)
  %4592 = fmul fast float %4591, %4578
  %4593 = fmul fast float %4591, %4579
  %4594 = fmul fast float %4591, %4550
  %4595 = fmul fast float %4589, %4589
  %4596 = fsub fast float 1.000000e+00, %4595
  %4597 = fmul fast float %4586, 0x40005F8BE0000000
  %4598 = fsub fast float 0x400C5BF8A0000000, %4597
  %4599 = fdiv fast float %4587, %4598
  %4600 = fmul fast float %4599, 0x3FEE31C3C0000000
  %4601 = fmul fast float %4600, %4596
  %4602 = fmul fast float %4586, 0x3FDACB7480000000
  %4603 = fadd fast float %4602, 0xBFD7347680000000
  %4604 = fmul fast float %4603, %4599
  %4605 = fmul fast float %4604, %4596
  br label %4606

; <label>:4606                                    ; preds = %4577, %4523
  %4607 = phi float [ %4592, %4577 ], [ 0.000000e+00, %4523 ]
  %4608 = phi float [ %4593, %4577 ], [ 0.000000e+00, %4523 ]
  %4609 = phi float [ %4594, %4577 ], [ 0.000000e+00, %4523 ]
  %4610 = phi float [ %4601, %4577 ], [ 0.000000e+00, %4523 ]
  %4611 = phi float [ %4605, %4577 ], [ 0.000000e+00, %4523 ]
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = fmul fast float %4612, %4612
  %4614 = fmul fast float %4613, 0x3FEE471020000000
  %4615 = fadd fast float %4614, 0xBFD42F6020000000
  %4616 = fmul fast float %4572, 0x3FD20DD760000000
  %4617 = fmul fast float %4615, %4611
  %4618 = fmul fast float %4610, 0x3FDF454380000000
  %4619 = fmul fast float %4618, %4612
  %4620 = fadd fast float %4619, %4616
  %4621 = fadd fast float %4620, %4617
  %4622 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %3571, float %3572, float %3573)  ; Dot3(ax,ay,az,bx,by,bz)
  %4623 = fmul fast float %4622, 0x3FDF454380000000
  %4624 = fmul fast float %4622, %4622
  %4625 = fmul fast float %4624, 0x3FEE471020000000
  %4626 = fadd fast float %4625, 0xBFD42F6020000000
  %4627 = call float @dx.op.dot3.f32(i32 55, float %4572, float %4610, float %4611, float 0x3FD20DD760000000, float %4623, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4628 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4543)  ; FMax(a,b)
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4556, float %4559, float %4562, float %4556, float %4559, float %4562)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = fcmp fast oeq float %4629, 0.000000e+00
  %4631 = fcmp fast oeq float %4628, 0.000000e+00
  %4632 = or i1 %4631, %4630
  br i1 %4632, label %4662, label %4633

; <label>:4633                                    ; preds = %4606
  %4634 = fsub fast float -0.000000e+00, %4562
  %4635 = fsub fast float -0.000000e+00, %4556
  %4636 = call float @dx.op.unary.f32(i32 24, float %4629)  ; Sqrt(value)
  %4637 = fdiv fast float %4636, %4628
  %4638 = fcmp fast ogt float %4637, 0x3FFB6F8900000000
  %4639 = select i1 %4638, float 0x3FFB6F8900000000, float %4637
  %4640 = fmul fast float %4639, 0x3FE8A23460000000
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4642 = call float @dx.op.binary.f32(i32 35, float %4639, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4643 = fmul fast float %4641, %4628
  %4644 = fmul fast float %4642, 0x3FF279A740000000
  %4645 = fadd fast float %4644, -1.000000e+00
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4559, float %4634, float %4635, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call float @dx.op.unary.f32(i32 25, float %4646)  ; Rsqrt(value)
  %4648 = fmul fast float %4647, %4634
  %4649 = fmul fast float %4647, %4635
  %4650 = fmul fast float %4647, %4559
  %4651 = fmul fast float %4645, %4645
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = fmul fast float %4642, 0x40005F8BE0000000
  %4654 = fsub fast float 0x400C5BF8A0000000, %4653
  %4655 = fdiv fast float %4643, %4654
  %4656 = fmul fast float %4655, 0x3FEE31C3C0000000
  %4657 = fmul fast float %4656, %4652
  %4658 = fmul fast float %4642, 0x3FDACB7480000000
  %4659 = fadd fast float %4658, 0xBFD7347680000000
  %4660 = fmul fast float %4659, %4655
  %4661 = fmul fast float %4660, %4652
  br label %4662

; <label>:4662                                    ; preds = %4633, %4606
  %4663 = phi float [ %4648, %4633 ], [ 0.000000e+00, %4606 ]
  %4664 = phi float [ %4649, %4633 ], [ 0.000000e+00, %4606 ]
  %4665 = phi float [ %4650, %4633 ], [ 0.000000e+00, %4606 ]
  %4666 = phi float [ %4657, %4633 ], [ 0.000000e+00, %4606 ]
  %4667 = phi float [ %4661, %4633 ], [ 0.000000e+00, %4606 ]
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = fmul fast float %4668, %4668
  %4670 = fmul fast float %4669, 0x3FEE471020000000
  %4671 = fadd fast float %4670, 0xBFD42F6020000000
  %4672 = fmul fast float %4628, 0x3FD20DD760000000
  %4673 = fmul fast float %4671, %4667
  %4674 = fmul fast float %4666, 0x3FDF454380000000
  %4675 = fmul fast float %4674, %4668
  %4676 = fadd fast float %4675, %4672
  %4677 = fadd fast float %4676, %4673
  %4678 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %3571, float %3572, float %3573)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = fmul fast float %4678, 0x3FDF454380000000
  %4680 = fmul fast float %4678, %4678
  %4681 = fmul fast float %4680, 0x3FEE471020000000
  %4682 = fadd fast float %4681, 0xBFD42F6020000000
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4666, float %4667, float 0x3FD20DD760000000, float %4679, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4544)  ; FMax(a,b)
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4568, float %4571, float %4565, float %4568, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = fcmp fast oeq float %4685, 0.000000e+00
  %4687 = fcmp fast oeq float %4684, 0.000000e+00
  %4688 = or i1 %4687, %4686
  br i1 %4688, label %4718, label %4689

; <label>:4689                                    ; preds = %4662
  %4690 = fsub fast float -0.000000e+00, %4571
  %4691 = fsub fast float -0.000000e+00, %4565
  %4692 = call float @dx.op.unary.f32(i32 24, float %4685)  ; Sqrt(value)
  %4693 = fdiv fast float %4692, %4684
  %4694 = fcmp fast ogt float %4693, 0x3FFB6F8900000000
  %4695 = select i1 %4694, float 0x3FFB6F8900000000, float %4693
  %4696 = fmul fast float %4695, 0x3FE8A23460000000
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4695, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4699 = fmul fast float %4697, %4684
  %4700 = fmul fast float %4698, 0x3FF279A740000000
  %4701 = fadd fast float %4700, -1.000000e+00
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4690, float %4691, float %4568, float %4690, float %4691, float %4568)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.unary.f32(i32 25, float %4702)  ; Rsqrt(value)
  %4704 = fmul fast float %4703, %4690
  %4705 = fmul fast float %4703, %4691
  %4706 = fmul fast float %4703, %4568
  %4707 = fmul fast float %4701, %4701
  %4708 = fsub fast float 1.000000e+00, %4707
  %4709 = fmul fast float %4698, 0x40005F8BE0000000
  %4710 = fsub fast float 0x400C5BF8A0000000, %4709
  %4711 = fdiv fast float %4699, %4710
  %4712 = fmul fast float %4711, 0x3FEE31C3C0000000
  %4713 = fmul fast float %4712, %4708
  %4714 = fmul fast float %4698, 0x3FDACB7480000000
  %4715 = fadd fast float %4714, 0xBFD7347680000000
  %4716 = fmul fast float %4715, %4711
  %4717 = fmul fast float %4716, %4708
  br label %4718

; <label>:4718                                    ; preds = %4689, %4662
  %4719 = phi float [ %4704, %4689 ], [ 0.000000e+00, %4662 ]
  %4720 = phi float [ %4705, %4689 ], [ 0.000000e+00, %4662 ]
  %4721 = phi float [ %4706, %4689 ], [ 0.000000e+00, %4662 ]
  %4722 = phi float [ %4713, %4689 ], [ 0.000000e+00, %4662 ]
  %4723 = phi float [ %4717, %4689 ], [ 0.000000e+00, %4662 ]
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4720, float %4721, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = fmul fast float %4724, %4724
  %4726 = fmul fast float %4725, 0x3FEE471020000000
  %4727 = fadd fast float %4726, 0xBFD42F6020000000
  %4728 = fmul fast float %4684, 0x3FD20DD760000000
  %4729 = fmul fast float %4727, %4723
  %4730 = fmul fast float %4722, 0x3FDF454380000000
  %4731 = fmul fast float %4730, %4724
  %4732 = fadd fast float %4731, %4728
  %4733 = fadd fast float %4732, %4729
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4720, float %4721, float %3571, float %3572, float %3573)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = fmul fast float %4734, 0x3FDF454380000000
  %4736 = fmul fast float %4734, %4734
  %4737 = fmul fast float %4736, 0x3FEE471020000000
  %4738 = fadd fast float %4737, 0xBFD42F6020000000
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4722, float %4723, float 0x3FD20DD760000000, float %4735, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = call float @dx.op.binary.f32(i32 35, float %4621, float 0.000000e+00)  ; FMax(a,b)
  %4741 = call float @dx.op.binary.f32(i32 35, float %4677, float 0.000000e+00)  ; FMax(a,b)
  %4742 = call float @dx.op.binary.f32(i32 35, float %4733, float 0.000000e+00)  ; FMax(a,b)
  %4743 = call float @dx.op.binary.f32(i32 35, float %4627, float 0.000000e+00)  ; FMax(a,b)
  %4744 = call float @dx.op.binary.f32(i32 35, float %4683, float 0.000000e+00)  ; FMax(a,b)
  %4745 = call float @dx.op.binary.f32(i32 35, float %4739, float 0.000000e+00)  ; FMax(a,b)
  %4746 = fsub fast float %3942, %4740
  %4747 = fsub fast float %3943, %4741
  %4748 = fsub fast float %3944, %4742
  %4749 = fmul fast float %4746, %3623
  %4750 = fmul fast float %4747, %3623
  %4751 = fmul fast float %4748, %3623
  %4752 = fadd fast float %4749, %4740
  %4753 = fadd fast float %4750, %4741
  %4754 = fadd fast float %4751, %4742
  %4755 = fsub fast float %3939, %4743
  %4756 = fsub fast float %3940, %4744
  %4757 = fsub fast float %3941, %4745
  %4758 = fmul fast float %4755, %3623
  %4759 = fmul fast float %4756, %3623
  %4760 = fmul fast float %4757, %3623
  %4761 = fadd fast float %4758, %4743
  %4762 = fadd fast float %4759, %4744
  %4763 = fadd fast float %4760, %4745
  br label %4764

; <label>:4764                                    ; preds = %4718, %3938
  %4765 = phi float [ %4761, %4718 ], [ %3939, %3938 ]
  %4766 = phi float [ %4762, %4718 ], [ %3940, %3938 ]
  %4767 = phi float [ %4763, %4718 ], [ %3941, %3938 ]
  %4768 = phi float [ %4752, %4718 ], [ %3942, %3938 ]
  %4769 = phi float [ %4753, %4718 ], [ %3943, %3938 ]
  %4770 = phi float [ %4754, %4718 ], [ %3944, %3938 ]
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 0
  %4773 = call float @dx.op.binary.f32(i32 36, float %3555, float %4772)  ; FMin(a,b)
  %4774 = fsub fast float 1.000000e+00, %3574
  %4775 = fmul fast float %4773, %4774
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = call float @dx.op.binary.f32(i32 36, float %3556, float %4772)  ; FMin(a,b)
  %4781 = fmul fast float %4780, %4774
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = bitcast float %4782 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = call float @dx.op.binary.f32(i32 36, float %3557, float %4772)  ; FMin(a,b)
  %4787 = fmul fast float %4786, %4774
  %4788 = fsub fast float 1.000000e+00, %4787
  %4789 = bitcast float %4788 to i32
  %4790 = sub nsw i32 2129859010, %4789
  %4791 = bitcast i32 %4790 to float
  %4792 = fmul fast float %4768, %3574
  %4793 = fmul fast float %4792, %4779
  %4794 = fmul fast float %4769, %3574
  %4795 = fmul fast float %4794, %4785
  %4796 = fmul fast float %4770, %3574
  %4797 = fmul fast float %4796, %4791
  %4798 = call float @dx.op.binary.f32(i32 36, float %3552, float %4772)  ; FMin(a,b)
  %4799 = fmul fast float %4798, %4774
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = bitcast float %4800 to i32
  %4802 = sub nsw i32 2129859010, %4801
  %4803 = bitcast i32 %4802 to float
  %4804 = call float @dx.op.binary.f32(i32 36, float %3553, float %4772)  ; FMin(a,b)
  %4805 = fmul fast float %4804, %4774
  %4806 = fsub fast float 1.000000e+00, %4805
  %4807 = bitcast float %4806 to i32
  %4808 = sub nsw i32 2129859010, %4807
  %4809 = bitcast i32 %4808 to float
  %4810 = call float @dx.op.binary.f32(i32 36, float %3563, float %4772)  ; FMin(a,b)
  %4811 = fmul fast float %4810, %4774
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = bitcast float %4812 to i32
  %4814 = sub nsw i32 2129859010, %4813
  %4815 = bitcast i32 %4814 to float
  %4816 = fmul fast float %4765, %3574
  %4817 = fmul fast float %4816, %4803
  %4818 = fmul fast float %4766, %3574
  %4819 = fmul fast float %4818, %4809
  %4820 = fmul fast float %4767, %3574
  %4821 = fmul fast float %4820, %4815
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4795, float %4797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = select i1 %195, float 0.000000e+00, float %4793
  %4824 = select i1 %195, float %4822, float %4795
  %4825 = select i1 %195, float 0.000000e+00, float %4797
  %4826 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4819, float %4821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = select i1 %195, float 0.000000e+00, float %4817
  %4828 = select i1 %195, float %4826, float %4819
  %4829 = select i1 %195, float 0.000000e+00, float %4821
  %4830 = fmul fast float %3565, 9.843750e-01
  %4831 = fmul fast float %3561, 9.843750e-01
  %4832 = fadd fast float %4830, 7.812500e-03
  %4833 = fadd fast float %4831, 7.812500e-03
  %4834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4832, float %4833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4835 = extractvalue %dx.types.ResRet.f32 %4834, 2
  %4836 = extractvalue %dx.types.ResRet.f32 %4834, 3
  %4837 = fmul fast float %4835, %3552
  %4838 = fmul fast float %4835, %3553
  %4839 = fmul fast float %4835, %3563
  %4840 = fadd fast float %4837, %4836
  %4841 = fadd fast float %4838, %4836
  %4842 = fadd fast float %4839, %4836
  %4843 = fcmp fast ogt float %2929, 0.000000e+00
  br i1 %4843, label %4844, label %4870

; <label>:4844                                    ; preds = %4764
  %4845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2929, float %3565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.ResRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.ResRet.f32 %4845, 2
  %4849 = fadd fast float %4846, -5.000000e-01
  %4850 = fadd fast float %4847, -5.000000e-01
  %4851 = fadd fast float %4848, -5.000000e-01
  %4852 = fsub fast float 1.000000e+00, %3552
  %4853 = fsub fast float 1.000000e+00, %3553
  %4854 = fsub fast float 1.000000e+00, %3563
  %4855 = fmul fast float %3552, 4.000000e+00
  %4856 = fmul fast float %4855, %4852
  %4857 = fmul fast float %4856, %4849
  %4858 = fmul fast float %3553, 4.000000e+00
  %4859 = fmul fast float %4858, %4853
  %4860 = fmul fast float %4859, %4850
  %4861 = fmul fast float %3563, 4.000000e+00
  %4862 = fmul fast float %4861, %4854
  %4863 = fmul fast float %4862, %4851
  %4864 = fadd fast float %4857, %4840
  %4865 = fadd fast float %4860, %4841
  %4866 = fadd fast float %4863, %4842
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  br label %4870

; <label>:4870                                    ; preds = %4844, %4764
  %4871 = phi float [ %4867, %4844 ], [ %4840, %4764 ]
  %4872 = phi float [ %4868, %4844 ], [ %4841, %4764 ]
  %4873 = phi float [ %4869, %4844 ], [ %4842, %4764 ]
  %4874 = call float @dx.op.binary.f32(i32 35, float %4872, float %4873)  ; FMax(a,b)
  %4875 = call float @dx.op.binary.f32(i32 35, float %4871, float %4874)  ; FMax(a,b)
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = fmul fast float %4876, %4823
  %4878 = fmul fast float %4876, %4824
  %4879 = fmul fast float %4876, %4825
  %4880 = call float @dx.op.dot3.f32(i32 55, float %3555, float %3556, float %3557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = fcmp fast ogt float %4880, 0x3E7FF19E20000000
  %4882 = fdiv fast float 1.000000e+00, %4880
  %4883 = select i1 %4881, float %4882, float 0.000000e+00
  %4884 = fmul fast float %4883, %3555
  %4885 = fmul fast float %4883, %3556
  %4886 = fmul fast float %4883, %3557
  %4887 = fadd fast float %4884, -1.000000e+00
  %4888 = fadd fast float %4885, -1.000000e+00
  %4889 = fadd fast float %4886, -1.000000e+00
  %4890 = fmul fast float %4887, 5.000000e-01
  %4891 = fmul fast float %4888, 5.000000e-01
  %4892 = fmul fast float %4889, 5.000000e-01
  %4893 = fadd fast float %4890, 1.000000e+00
  %4894 = fadd fast float %4891, 1.000000e+00
  %4895 = fadd fast float %4892, 1.000000e+00
  %4896 = fmul fast float %4871, %4827
  %4897 = fmul fast float %4872, %4828
  %4898 = fmul fast float %4873, %4829
  %4899 = fsub fast float 1.000000e+00, %3565
  %4900 = bitcast float %4899 to i32
  %4901 = sitofp i32 %4900 to float
  %4902 = fmul fast float %4901, 5.000000e+00
  %4903 = fadd fast float %4902, 0xC1EFBF8940000000
  %4904 = fptosi float %4903 to i32
  %4905 = bitcast i32 %4904 to float
  %4906 = fmul fast float %4905, %2928
  %4907 = fmul fast float %4823, %4906
  %4908 = fmul fast float %4907, %4876
  %4909 = fmul fast float %4908, %4893
  %4910 = fmul fast float %4824, %4906
  %4911 = fmul fast float %4910, %4876
  %4912 = fmul fast float %4911, %4894
  %4913 = fmul fast float %4825, %4906
  %4914 = fmul fast float %4913, %4876
  %4915 = fmul fast float %4914, %4895
  %4916 = fmul fast float %4877, %2949
  %4917 = fmul fast float %4878, %2949
  %4918 = fmul fast float %4879, %2949
  %4919 = fadd fast float %4896, %2930
  %4920 = fadd fast float %4919, %4909
  %4921 = fmul fast float %4920, %2949
  %4922 = fadd fast float %4897, %2931
  %4923 = fadd fast float %4922, %4912
  %4924 = fmul fast float %4923, %2949
  %4925 = fadd fast float %4898, %2932
  %4926 = fadd fast float %4925, %4915
  %4927 = fmul fast float %4926, %2949
  %4928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4929 = extractvalue %dx.types.CBufRet.f32 %4928, 3
  %4930 = fcmp fast oeq float %4929, 0.000000e+00
  br i1 %4930, label %5158, label %4931

; <label>:4931                                    ; preds = %4870
  %4932 = extractvalue %dx.types.CBufRet.f32 %4928, 0
  %4933 = extractvalue %dx.types.CBufRet.f32 %4928, 1
  %4934 = extractvalue %dx.types.CBufRet.f32 %4928, 2
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 0
  %4941 = extractvalue %dx.types.CBufRet.f32 %4939, 1
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4937, float %4938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = select i1 %195, float %4940, float %4936
  %4944 = select i1 %195, float %4942, float %4937
  %4945 = select i1 %195, float %4941, float %4938
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4948 = fcmp fast une float %4947, 0.000000e+00
  br i1 %4948, label %4949, label %4966

; <label>:4949                                    ; preds = %4931
  %4950 = fptoui float %77 to i32
  %4951 = fptoui float %78 to i32
  %4952 = lshr i32 %4950, 4
  %4953 = lshr i32 %4951, 4
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = fptoui float %4955 to i32
  %4957 = add i32 %4956, 15
  %4958 = lshr i32 %4957, 4
  %4959 = mul i32 %4958, %4953
  %4960 = add i32 %4959, %4952
  %4961 = shl i32 %4960, 3
  %4962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4961, i32 undef)  ; BufferLoad(srv,index,wot)
  %4963 = extractvalue %dx.types.ResRet.i32 %4962, 0
  %4964 = and i32 %4963, -268435456
  %4965 = icmp eq i32 %4964, -1342177280
  br i1 %4965, label %4976, label %4966

; <label>:4966                                    ; preds = %4949, %4931
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 2
  %4969 = extractvalue %dx.types.CBufRet.f32 %4967, 3
  %4970 = fmul fast float %4968, %77
  %4971 = fmul fast float %4969, %78
  %4972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4970, float %4971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.ResRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.ResRet.f32 %4972, 2
  br label %4976

; <label>:4976                                    ; preds = %4966, %4949
  %4977 = phi float [ %4973, %4966 ], [ 0.000000e+00, %4949 ]
  %4978 = phi float [ %4974, %4966 ], [ 0.000000e+00, %4949 ]
  %4979 = phi float [ %4975, %4966 ], [ 0.000000e+00, %4949 ]
  %4980 = call float @dx.op.binary.f32(i32 36, float %4978, float %4979)  ; FMin(a,b)
  %4981 = call float @dx.op.binary.f32(i32 36, float %4977, float %4980)  ; FMin(a,b)
  %4982 = fcmp fast ogt float %4981, 0.000000e+00
  br i1 %4982, label %4983, label %5158, !dx.controlflow.hints !91

; <label>:4983                                    ; preds = %4976
  %4984 = fmul fast float %4977, %4943
  %4985 = fmul fast float %4978, %4944
  %4986 = fmul fast float %4979, %4945
  %4987 = fsub fast float %4932, %3551
  %4988 = fsub fast float %4933, %3550
  %4989 = fsub fast float %4934, %3549
  %4990 = call float @dx.op.dot3.f32(i32 55, float %4987, float %4988, float %4989, float %4987, float %4988, float %4989)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call float @dx.op.unary.f32(i32 25, float %4990)  ; Rsqrt(value)
  %4992 = fmul fast float %4991, %4987
  %4993 = fmul fast float %4991, %4988
  %4994 = fmul fast float %4991, %4989
  %4995 = call float @dx.op.dot3.f32(i32 55, float %4932, float %4933, float %4934, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3547, float %3546, float %4992, float %4993, float %4994)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4998 = fmul fast float %4997, %4997
  %4999 = fmul fast float %4998, %3578
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fmul fast float %5000, %4997
  %5002 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %4992, float %4993, float %4994)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = fmul fast float %5002, %5002
  %5004 = call float @dx.op.unary.f32(i32 6, float %4995)  ; FAbs(value)
  %5005 = fsub fast float 1.000000e+00, %3561
  %5006 = call float @dx.op.binary.f32(i32 35, float %5005, float 0x3F847AE140000000)  ; FMax(a,b)
  %5007 = fmul fast float %5006, %5006
  %5008 = fmul fast float %5007, %5007
  %5009 = fsub fast float 1.000000e+00, %5008
  %5010 = fmul fast float %3565, %3565
  %5011 = fmul fast float %5010, %5009
  %5012 = fadd fast float %5011, %5008
  %5013 = bitcast float %5012 to i32
  %5014 = ashr i32 %5013, 1
  %5015 = add nsw i32 %5014, 532487669
  %5016 = bitcast i32 %5015 to float
  %5017 = fadd fast float %5016, %3565
  %5018 = fmul fast float %5008, %5003
  %5019 = fsub fast float 1.000000e+00, %5003
  %5020 = fadd fast float %5019, %5018
  %5021 = fmul fast float %5004, %5004
  %5022 = fmul fast float %5021, %5009
  %5023 = fadd fast float %5022, %5008
  %5024 = bitcast float %5023 to i32
  %5025 = ashr i32 %5024, 1
  %5026 = add nsw i32 %5025, 532487669
  %5027 = bitcast i32 %5026 to float
  %5028 = fadd fast float %5027, %5004
  %5029 = fmul fast float %5020, %5020
  %5030 = fmul fast float %5029, %5017
  %5031 = fmul fast float %5030, %5028
  %5032 = fdiv fast float 0x3FF0A00000000000, %5031
  %5033 = fmul fast float %5032, %5008
  %5034 = call float @dx.op.unary.f32(i32 6, float %4996)  ; FAbs(value)
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = bitcast float %5035 to i32
  %5037 = sitofp i32 %5036 to float
  %5038 = fmul fast float %5037, 5.000000e+00
  %5039 = fadd fast float %5038, 0xC1EFBF8940000000
  %5040 = fptosi float %5039 to i32
  %5041 = bitcast i32 %5040 to float
  %5042 = fsub fast float 1.000000e+00, %3552
  %5043 = fsub fast float 1.000000e+00, %3553
  %5044 = fsub fast float 1.000000e+00, %3563
  %5045 = fmul fast float %5041, %5042
  %5046 = fmul fast float %5041, %5043
  %5047 = fmul fast float %5041, %5044
  %5048 = fadd fast float %5045, %3552
  %5049 = fadd fast float %5046, %3553
  %5050 = fadd fast float %5047, %3563
  br i1 %4843, label %5051, label %5074

; <label>:5051                                    ; preds = %4983
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2929, float %5034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = fadd fast float %5053, -5.000000e-01
  %5057 = fadd fast float %5054, -5.000000e-01
  %5058 = fadd fast float %5055, -5.000000e-01
  %5059 = fmul fast float %3552, 4.000000e+00
  %5060 = fmul fast float %5059, %5042
  %5061 = fmul fast float %5060, %5056
  %5062 = fmul fast float %3553, 4.000000e+00
  %5063 = fmul fast float %5062, %5043
  %5064 = fmul fast float %5063, %5057
  %5065 = fmul fast float %3563, 4.000000e+00
  %5066 = fmul fast float %5065, %5044
  %5067 = fmul fast float %5066, %5058
  %5068 = fadd fast float %5061, %5048
  %5069 = fadd fast float %5064, %5049
  %5070 = fadd fast float %5067, %5050
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  br label %5074

; <label>:5074                                    ; preds = %5051, %4983
  %5075 = phi float [ %5071, %5051 ], [ %5048, %4983 ]
  %5076 = phi float [ %5072, %5051 ], [ %5049, %4983 ]
  %5077 = phi float [ %5073, %5051 ], [ %5050, %4983 ]
  %5078 = fmul fast float %4995, 9.843750e-01
  %5079 = fadd fast float %5078, 7.812500e-03
  %5080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5079, float %4833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5081 = extractvalue %dx.types.ResRet.f32 %5080, 2
  %5082 = extractvalue %dx.types.ResRet.f32 %5080, 3
  %5083 = fmul fast float %5081, %3552
  %5084 = fmul fast float %5081, %3553
  %5085 = fmul fast float %5081, %3563
  %5086 = fadd fast float %5083, %5082
  %5087 = fadd fast float %5084, %5082
  %5088 = fadd fast float %5085, %5082
  br i1 %4843, label %5089, label %5112

; <label>:5089                                    ; preds = %5074
  %5090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2929, float %4995, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.ResRet.f32 %5090, 1
  %5093 = extractvalue %dx.types.ResRet.f32 %5090, 2
  %5094 = fadd fast float %5091, -5.000000e-01
  %5095 = fadd fast float %5092, -5.000000e-01
  %5096 = fadd fast float %5093, -5.000000e-01
  %5097 = fmul fast float %3552, 4.000000e+00
  %5098 = fmul fast float %5097, %5042
  %5099 = fmul fast float %5098, %5094
  %5100 = fmul fast float %3553, 4.000000e+00
  %5101 = fmul fast float %5100, %5043
  %5102 = fmul fast float %5101, %5095
  %5103 = fmul fast float %3563, 4.000000e+00
  %5104 = fmul fast float %5103, %5044
  %5105 = fmul fast float %5104, %5096
  %5106 = fadd fast float %5099, %5086
  %5107 = fadd fast float %5102, %5087
  %5108 = fadd fast float %5105, %5088
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  br label %5112

; <label>:5112                                    ; preds = %5089, %5074
  %5113 = phi float [ %5109, %5089 ], [ %5086, %5074 ]
  %5114 = phi float [ %5110, %5089 ], [ %5087, %5074 ]
  %5115 = phi float [ %5111, %5089 ], [ %5088, %5074 ]
  %5116 = call float @dx.op.binary.f32(i32 35, float %5114, float %5115)  ; FMax(a,b)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5113, float %5116)  ; FMax(a,b)
  %5118 = fsub fast float 1.000000e+00, %5117
  %5119 = fmul fast float %5075, %5033
  %5120 = fmul fast float %5076, %5033
  %5121 = fmul fast float %5077, %5033
  %5122 = fsub fast float 1.000000e+00, %4996
  %5123 = bitcast float %5122 to i32
  %5124 = sitofp i32 %5123 to float
  %5125 = fmul fast float %5124, 5.000000e+00
  %5126 = fadd fast float %5125, 0xC1EFBF8940000000
  %5127 = fptosi float %5126 to i32
  %5128 = bitcast i32 %5127 to float
  %5129 = fmul fast float %5128, %2928
  %5130 = fmul fast float %5118, %5129
  %5131 = fmul fast float %5130, %4893
  %5132 = fmul fast float %5130, %4894
  %5133 = fmul fast float %5130, %4895
  %5134 = fadd fast float %5131, %5119
  %5135 = fadd fast float %5132, %5120
  %5136 = fadd fast float %5133, %5121
  %5137 = fmul fast float %5001, %4984
  %5138 = fmul fast float %5137, %5118
  %5139 = fmul fast float %5001, %4985
  %5140 = fmul fast float %5139, %5118
  %5141 = fmul fast float %5001, %4986
  %5142 = fmul fast float %5141, %5118
  %5143 = fmul fast float %5137, %5134
  %5144 = fmul fast float %5139, %5135
  %5145 = fmul fast float %5141, %5136
  %5146 = fadd fast float %5138, %4877
  %5147 = fmul fast float %5146, %2949
  %5148 = fadd fast float %5140, %4878
  %5149 = fmul fast float %5148, %2949
  %5150 = fadd fast float %5142, %4879
  %5151 = fmul fast float %5150, %2949
  %5152 = fadd fast float %5143, %4920
  %5153 = fmul fast float %5152, %2949
  %5154 = fadd fast float %5144, %4923
  %5155 = fmul fast float %5154, %2949
  %5156 = fadd fast float %5145, %4926
  %5157 = fmul fast float %5156, %2949
  br label %5158

; <label>:5158                                    ; preds = %5112, %4976, %4870
  %5159 = phi float [ %4921, %4870 ], [ %4921, %4976 ], [ %5153, %5112 ]
  %5160 = phi float [ %4924, %4870 ], [ %4924, %4976 ], [ %5155, %5112 ]
  %5161 = phi float [ %4927, %4870 ], [ %4927, %4976 ], [ %5157, %5112 ]
  %5162 = phi float [ %4916, %4870 ], [ %4916, %4976 ], [ %5147, %5112 ]
  %5163 = phi float [ %4917, %4870 ], [ %4917, %4976 ], [ %5149, %5112 ]
  %5164 = phi float [ %4918, %4870 ], [ %4918, %4976 ], [ %5151, %5112 ]
  %5165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.i32 %5165, 0
  %5167 = icmp eq i32 %5166, 0
  br i1 %5167, label %5602, label %5168

; <label>:5168                                    ; preds = %5158
  %5169 = fptoui float %77 to i32
  %5170 = fptoui float %78 to i32
  %5171 = lshr i32 %5169, 4
  %5172 = lshr i32 %5170, 4
  %5173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.i32 %5173, 0
  %5175 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5172, i32 %5174, i32 %5171)  ; UMad(a,b,c)
  %5176 = add nsw i32 %5166, -1
  %5177 = call i32 @dx.op.binary.i32(i32 37, i32 %5176, i32 0)  ; IMax(a,b)
  %5178 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5179 = fptoui float %5178 to i32
  %5180 = lshr i32 %5179, 5
  %5181 = call i32 @dx.op.binary.i32(i32 40, i32 %5180, i32 8191)  ; UMin(a,b)
  %5182 = shl i32 %5181, 2
  %5183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5182, i32 undef)  ; BufferLoad(srv,index,wot)
  %5184 = extractvalue %dx.types.ResRet.i32 %5183, 0
  %5185 = lshr i32 %5184, 16
  %5186 = and i32 %5184, 65535
  %5187 = lshr i32 %5184, 21
  %5188 = lshr i32 %5186, 5
  %5189 = call i32 @dx.op.binary.i32(i32 40, i32 %5188, i32 %5177)  ; UMin(a,b)
  %5190 = icmp ugt i32 %5187, %5189
  br i1 %5190, label %5602, label %5191

; <label>:5191                                    ; preds = %5168
  br label %5192

; <label>:5192                                    ; preds = %5592, %5191
  %5193 = phi i32 [ %5599, %5592 ], [ %5187, %5191 ]
  %5194 = phi float [ %5593, %5592 ], [ %5159, %5191 ]
  %5195 = phi float [ %5594, %5592 ], [ %5160, %5191 ]
  %5196 = phi float [ %5595, %5592 ], [ %5161, %5191 ]
  %5197 = phi float [ %5596, %5592 ], [ %5162, %5191 ]
  %5198 = phi float [ %5597, %5592 ], [ %5163, %5191 ]
  %5199 = phi float [ %5598, %5592 ], [ %5164, %5191 ]
  %5200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.i32 %5200, 0
  %5202 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5175, i32 %5201, i32 %5193)  ; UMad(a,b,c)
  %5203 = shl i32 %5202, 2
  %5204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5203, i32 undef)  ; BufferLoad(srv,index,wot)
  %5205 = extractvalue %dx.types.ResRet.i32 %5204, 0
  %5206 = shl i32 %5193, 5
  %5207 = sub nsw i32 %5185, %5206
  %5208 = call i32 @dx.op.binary.i32(i32 37, i32 %5207, i32 0)  ; IMax(a,b)
  %5209 = call i32 @dx.op.binary.i32(i32 38, i32 %5208, i32 31)  ; IMin(a,b)
  %5210 = sub nsw i32 1, %5185
  %5211 = add nsw i32 %5210, %5186
  %5212 = call i32 @dx.op.binary.i32(i32 37, i32 %5211, i32 0)  ; IMax(a,b)
  %5213 = call i32 @dx.op.binary.i32(i32 38, i32 %5212, i32 32)  ; IMin(a,b)
  %5214 = and i32 %5213, 31
  %5215 = shl i32 -1, %5214
  %5216 = xor i32 %5215, -1
  %5217 = and i32 %5209, 31
  %5218 = shl i32 %5216, %5217
  %5219 = icmp eq i32 %5213, 32
  %5220 = select i1 %5219, i32 -1, i32 %5218
  %5221 = and i32 %5220, %5205
  %5222 = icmp eq i32 %5221, 0
  br i1 %5222, label %5592, label %5223

; <label>:5223                                    ; preds = %5192
  br label %5224

; <label>:5224                                    ; preds = %5304, %5223
  %5225 = phi i32 [ %5236, %5304 ], [ %5221, %5223 ]
  %5226 = phi float [ %5305, %5304 ], [ %5194, %5223 ]
  %5227 = phi float [ %5306, %5304 ], [ %5195, %5223 ]
  %5228 = phi float [ %5307, %5304 ], [ %5196, %5223 ]
  %5229 = phi float [ %5308, %5304 ], [ %5197, %5223 ]
  %5230 = phi float [ %5309, %5304 ], [ %5198, %5223 ]
  %5231 = phi float [ %5310, %5304 ], [ %5199, %5223 ]
  %5232 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5225)  ; FirstbitLo(value)
  %5233 = add i32 %5232, %5206
  %5234 = and i32 %5232, 31
  %5235 = shl i32 1, %5234
  %5236 = xor i32 %5235, %5225
  %5237 = mul i32 %5233, 112
  %5238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5237, i32 undef)  ; BufferLoad(srv,index,wot)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.ResRet.f32 %5238, 1
  %5241 = extractvalue %dx.types.ResRet.f32 %5238, 2
  %5242 = or i32 %5237, 12
  %5243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5242, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = add i32 %5237, 44
  %5246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 0
  %5248 = add i32 %5237, 48
  %5249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5248, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.ResRet.f32 %5249, 1
  %5252 = extractvalue %dx.types.ResRet.f32 %5249, 2
  %5253 = add i32 %5237, 80
  %5254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 1
  %5256 = extractvalue %dx.types.ResRet.f32 %5254, 2
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5239, float %5240, float %5241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = select i1 %195, float %5255, float %5239
  %5259 = select i1 %195, float %5257, float %5240
  %5260 = select i1 %195, float %5256, float %5241
  %5261 = fsub fast float %5250, %124
  %5262 = fsub fast float %5251, %125
  %5263 = fsub fast float %5252, %126
  %5264 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5263, float %5261, float %5262, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.unary.f32(i32 24, float %5264)  ; Sqrt(value)
  %5266 = fdiv fast float 1.000000e+00, %5265
  %5267 = fmul fast float %5266, %5261
  %5268 = fmul fast float %5266, %5262
  %5269 = fmul fast float %5266, %5263
  %5270 = fadd fast float %5265, %5244
  %5271 = fdiv fast float 1.000000e+00, %5270
  %5272 = fmul float %5247, %5271
  %5273 = fmul float %5272, %5272
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = and i32 %5235, %5221
  %5276 = icmp eq i32 %5275, 0
  br i1 %5276, label %5299, label %5277, !dx.controlflow.hints !92

; <label>:5277                                    ; preds = %5224
  %5278 = lshr i32 %5169, 5
  %5279 = lshr i32 %5170, 5
  %5280 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5278, i32 %5279, i32 %5233, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5281 = extractvalue %dx.types.ResRet.i32 %5280, 0
  %5282 = and i32 %5281, 3
  %5283 = icmp eq i32 %5282, 0
  %5284 = select i1 %5283, float 1.000000e+00, float 0.000000e+00
  %5285 = icmp eq i32 %5282, 3
  br i1 %5285, label %5286, label %5299

; <label>:5286                                    ; preds = %5277
  %5287 = lshr i32 %5281, 10
  %5288 = and i32 %5287, 8160
  %5289 = and i32 %5170, 31
  %5290 = or i32 %5288, %5289
  %5291 = lshr i32 %5281, 1
  %5292 = and i32 %5291, 16352
  %5293 = and i32 %5169, 31
  %5294 = or i32 %5292, %5293
  %5295 = lshr i32 %5281, 23
  %5296 = and i32 %5295, 255
  %5297 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5294, i32 %5290, i32 %5296, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  br label %5299

; <label>:5299                                    ; preds = %5286, %5277, %5224
  %5300 = phi float [ %5298, %5286 ], [ %5284, %5277 ], [ 0.000000e+00, %5224 ]
  %5301 = call float @dx.op.binary.f32(i32 36, float %5300, float %5300)  ; FMin(a,b)
  %5302 = call float @dx.op.binary.f32(i32 36, float %5300, float %5301)  ; FMin(a,b)
  %5303 = fcmp fast ogt float %5302, 0.000000e+00
  br i1 %5303, label %5312, label %5304, !dx.controlflow.hints !93

; <label>:5304                                    ; preds = %5548, %5299
  %5305 = phi float [ %5226, %5299 ], [ %5588, %5548 ]
  %5306 = phi float [ %5227, %5299 ], [ %5589, %5548 ]
  %5307 = phi float [ %5228, %5299 ], [ %5590, %5548 ]
  %5308 = phi float [ %5229, %5299 ], [ %5582, %5548 ]
  %5309 = phi float [ %5230, %5299 ], [ %5583, %5548 ]
  %5310 = phi float [ %5231, %5299 ], [ %5584, %5548 ]
  %5311 = icmp eq i32 %5225, %5235
  br i1 %5311, label %5591, label %5224

; <label>:5312                                    ; preds = %5299
  %5313 = fmul fast float %5300, %5258
  %5314 = fmul fast float %5300, %5259
  %5315 = fmul fast float %5300, %5260
  %5316 = fsub fast float %5252, %3351
  %5317 = fcmp fast ogt float %5316, 0.000000e+00
  %5318 = fsub fast float %126, %3351
  %5319 = fcmp fast ogt float %5318, 0.000000e+00
  %5320 = xor i1 %5319, %5317
  %5321 = fsub fast float %3351, %5252
  %5322 = fmul fast float %5321, 2.000000e+00
  %5323 = fadd fast float %5322, %5252
  %5324 = select i1 %5320, float %5252, float %5323
  %5325 = fsub fast float %5324, %126
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5325, float %5261, float %5262, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 25, float %5326)  ; Rsqrt(value)
  %5328 = fmul fast float %5327, %5261
  %5329 = fmul fast float %5327, %5262
  %5330 = fmul fast float %5327, %5325
  %5331 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5328, float %5329, float %5330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = fdiv fast float 1.000000e+00, %5332
  %5334 = fmul fast float %5333, %5331
  %5335 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5318, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  %5337 = fcmp fast olt float %5335, 0.000000e+00
  %5338 = zext i1 %5336 to i32
  %5339 = zext i1 %5337 to i32
  %5340 = sub nsw i32 %5338, %5339
  %5341 = sitofp i32 %5340 to float
  %5342 = fsub fast float %5324, %3351
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5342, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = fcmp fast ogt float %5343, 0.000000e+00
  %5345 = fcmp fast olt float %5343, 0.000000e+00
  %5346 = zext i1 %5344 to i32
  %5347 = zext i1 %5345 to i32
  %5348 = sub nsw i32 %5346, %5347
  %5349 = sitofp i32 %5348 to float
  %5350 = fcmp fast une float %5341, %5349
  br i1 %5350, label %5351, label %5361

; <label>:5351                                    ; preds = %5312
  %5352 = fmul fast float %5334, %5330
  %5353 = fmul fast float %5334, %5329
  %5354 = fmul fast float %5334, %5328
  %5355 = fmul fast float %5354, %5354
  %5356 = fmul fast float %5353, %5353
  %5357 = fadd fast float %5355, %5356
  %5358 = fmul fast float %5352, %5352
  %5359 = fadd fast float %5357, %5358
  %5360 = call float @dx.op.unary.f32(i32 24, float %5359)  ; Sqrt(value)
  br label %5373

; <label>:5361                                    ; preds = %5312
  %5362 = icmp slt i32 %5340, 0
  br i1 %5362, label %5363, label %5373

; <label>:5363                                    ; preds = %5361
  %5364 = fsub fast float %124, %5250
  %5365 = fsub fast float %125, %5251
  %5366 = fsub fast float %126, %5324
  %5367 = fmul fast float %5364, %5364
  %5368 = fmul fast float %5365, %5365
  %5369 = fadd fast float %5367, %5368
  %5370 = fmul fast float %5366, %5366
  %5371 = fadd fast float %5369, %5370
  %5372 = call float @dx.op.unary.f32(i32 24, float %5371)  ; Sqrt(value)
  br label %5373

; <label>:5373                                    ; preds = %5363, %5361, %5351
  %5374 = phi float [ %5360, %5351 ], [ %5372, %5363 ], [ 0.000000e+00, %5361 ]
  %5375 = and i1 %5319, %5317
  %5376 = fsub fast float -0.000000e+00, %5374
  %5377 = select i1 %5375, float -0.000000e+00, float %5376
  %5378 = fmul fast float %3352, 0x3FF7154760000000
  %5379 = fmul fast float %5378, %5377
  %5380 = fmul fast float %3353, 0x3FF7154760000000
  %5381 = fmul fast float %5380, %5377
  %5382 = fmul fast float %3354, 0x3FF7154760000000
  %5383 = fmul fast float %5382, %5377
  %5384 = call float @dx.op.unary.f32(i32 21, float %5379)  ; Exp(value)
  %5385 = call float @dx.op.unary.f32(i32 21, float %5381)  ; Exp(value)
  %5386 = call float @dx.op.unary.f32(i32 21, float %5383)  ; Exp(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5388 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5389 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5390 = fmul fast float %5313, %5387
  %5391 = fmul fast float %5314, %5388
  %5392 = fmul fast float %5315, %5389
  %5393 = fsub fast float %5267, %3551
  %5394 = fsub fast float %5268, %3550
  %5395 = fsub fast float %5269, %3549
  %5396 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %5393, float %5394, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = call float @dx.op.unary.f32(i32 25, float %5396)  ; Rsqrt(value)
  %5398 = fmul fast float %5397, %5393
  %5399 = fmul fast float %5397, %5394
  %5400 = fmul fast float %5397, %5395
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3547, float %3546, float %5398, float %5399, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5404 = fmul fast float %5403, %5274
  %5405 = fmul fast float %5403, %5403
  %5406 = fmul fast float %5405, %3578
  %5407 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5408 = fmul fast float %5404, %5407
  %5409 = bitcast float %5264 to i32
  %5410 = ashr i32 %5409, 1
  %5411 = sub nsw i32 1597463007, %5410
  %5412 = bitcast i32 %5411 to float
  %5413 = fmul fast float %5412, %5261
  %5414 = fmul fast float %5412, %5262
  %5415 = fmul fast float %5412, %5263
  %5416 = fsub fast float %5413, %3551
  %5417 = fsub fast float %5414, %3550
  %5418 = fsub fast float %5415, %3549
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = call float @dx.op.unary.f32(i32 25, float %5419)  ; Rsqrt(value)
  %5421 = fmul fast float %5416, %5420
  %5422 = fmul fast float %5417, %5420
  %5423 = fmul fast float %5418, %5420
  %5424 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = fmul fast float %5424, %5424
  %5426 = call float @dx.op.unary.f32(i32 6, float %5401)  ; FAbs(value)
  %5427 = fsub fast float 1.000000e+00, %3561
  %5428 = call float @dx.op.binary.f32(i32 35, float %5427, float 0x3F847AE140000000)  ; FMax(a,b)
  %5429 = fmul fast float %5428, %5428
  %5430 = fmul fast float %5429, %5429
  %5431 = fsub fast float 1.000000e+00, %5430
  %5432 = fmul fast float %3565, %3565
  %5433 = fmul fast float %5432, %5431
  %5434 = fadd fast float %5433, %5430
  %5435 = bitcast float %5434 to i32
  %5436 = ashr i32 %5435, 1
  %5437 = add nsw i32 %5436, 532487669
  %5438 = bitcast i32 %5437 to float
  %5439 = fadd fast float %5438, %3565
  %5440 = fmul fast float %5430, %5425
  %5441 = fsub fast float 1.000000e+00, %5425
  %5442 = fadd fast float %5441, %5440
  %5443 = fmul fast float %5426, %5426
  %5444 = fmul fast float %5443, %5431
  %5445 = fadd fast float %5444, %5430
  %5446 = bitcast float %5445 to i32
  %5447 = ashr i32 %5446, 1
  %5448 = add nsw i32 %5447, 532487669
  %5449 = bitcast i32 %5448 to float
  %5450 = fadd fast float %5449, %5426
  %5451 = fmul fast float %5442, %5442
  %5452 = fmul fast float %5451, %5439
  %5453 = fmul fast float %5452, %5450
  %5454 = fdiv fast float 1.000000e+00, %5453
  %5455 = bitcast float %5430 to i32
  %5456 = sitofp i32 %5455 to float
  %5457 = fmul fast float %5456, 0x3FE7F73180000000
  %5458 = fadd fast float %5457, 0x41AFE27C40000000
  %5459 = fptosi float %5458 to i32
  %5460 = bitcast i32 %5459 to float
  %5461 = fmul fast float %5247, 0x3FD80E9D60000000
  %5462 = fmul fast float %5461, %5412
  %5463 = fadd fast float %5460, %5462
  %5464 = bitcast float %5463 to i32
  %5465 = sub nsw i32 2129859010, %5464
  %5466 = bitcast i32 %5465 to float
  %5467 = fmul fast float %5430, %5454
  %5468 = fmul fast float %5467, %5460
  %5469 = fmul fast float %5468, %5466
  %5470 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = bitcast float %5471 to i32
  %5473 = sitofp i32 %5472 to float
  %5474 = fmul fast float %5473, 5.000000e+00
  %5475 = fadd fast float %5474, 0xC1EFBF8940000000
  %5476 = fptosi float %5475 to i32
  %5477 = bitcast i32 %5476 to float
  %5478 = fsub fast float 1.000000e+00, %3552
  %5479 = fsub fast float 1.000000e+00, %3553
  %5480 = fsub fast float 1.000000e+00, %3563
  %5481 = fmul fast float %5477, %5478
  %5482 = fmul fast float %5477, %5479
  %5483 = fmul fast float %5477, %5480
  %5484 = fadd fast float %5481, %3552
  %5485 = fadd fast float %5482, %3553
  %5486 = fadd fast float %5483, %3563
  br i1 %4843, label %5487, label %5510

; <label>:5487                                    ; preds = %5373
  %5488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2929, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5489 = extractvalue %dx.types.ResRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.ResRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.ResRet.f32 %5488, 2
  %5492 = fadd fast float %5489, -5.000000e-01
  %5493 = fadd fast float %5490, -5.000000e-01
  %5494 = fadd fast float %5491, -5.000000e-01
  %5495 = fmul fast float %3552, 4.000000e+00
  %5496 = fmul fast float %5495, %5478
  %5497 = fmul fast float %5496, %5492
  %5498 = fmul fast float %3553, 4.000000e+00
  %5499 = fmul fast float %5498, %5479
  %5500 = fmul fast float %5499, %5493
  %5501 = fmul fast float %3563, 4.000000e+00
  %5502 = fmul fast float %5501, %5480
  %5503 = fmul fast float %5502, %5494
  %5504 = fadd fast float %5497, %5484
  %5505 = fadd fast float %5500, %5485
  %5506 = fadd fast float %5503, %5486
  %5507 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5509 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  br label %5510

; <label>:5510                                    ; preds = %5487, %5373
  %5511 = phi float [ %5507, %5487 ], [ %5484, %5373 ]
  %5512 = phi float [ %5508, %5487 ], [ %5485, %5373 ]
  %5513 = phi float [ %5509, %5487 ], [ %5486, %5373 ]
  %5514 = fmul fast float %5401, 9.843750e-01
  %5515 = fadd fast float %5514, 7.812500e-03
  %5516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5515, float %4833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5517 = extractvalue %dx.types.ResRet.f32 %5516, 2
  %5518 = extractvalue %dx.types.ResRet.f32 %5516, 3
  %5519 = fmul fast float %5517, %3552
  %5520 = fmul fast float %5517, %3553
  %5521 = fmul fast float %5517, %3563
  %5522 = fadd fast float %5519, %5518
  %5523 = fadd fast float %5520, %5518
  %5524 = fadd fast float %5521, %5518
  br i1 %4843, label %5525, label %5548

; <label>:5525                                    ; preds = %5510
  %5526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2929, float %5401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5527 = extractvalue %dx.types.ResRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.ResRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.ResRet.f32 %5526, 2
  %5530 = fadd fast float %5527, -5.000000e-01
  %5531 = fadd fast float %5528, -5.000000e-01
  %5532 = fadd fast float %5529, -5.000000e-01
  %5533 = fmul fast float %3552, 4.000000e+00
  %5534 = fmul fast float %5533, %5478
  %5535 = fmul fast float %5534, %5530
  %5536 = fmul fast float %3553, 4.000000e+00
  %5537 = fmul fast float %5536, %5479
  %5538 = fmul fast float %5537, %5531
  %5539 = fmul fast float %3563, 4.000000e+00
  %5540 = fmul fast float %5539, %5480
  %5541 = fmul fast float %5540, %5532
  %5542 = fadd fast float %5535, %5522
  %5543 = fadd fast float %5538, %5523
  %5544 = fadd fast float %5541, %5524
  %5545 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5546 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5547 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  br label %5548

; <label>:5548                                    ; preds = %5525, %5510
  %5549 = phi float [ %5545, %5525 ], [ %5522, %5510 ]
  %5550 = phi float [ %5546, %5525 ], [ %5523, %5510 ]
  %5551 = phi float [ %5547, %5525 ], [ %5524, %5510 ]
  %5552 = call float @dx.op.binary.f32(i32 35, float %5550, float %5551)  ; FMax(a,b)
  %5553 = call float @dx.op.binary.f32(i32 35, float %5549, float %5552)  ; FMax(a,b)
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5511, %5469
  %5556 = fmul fast float %5512, %5469
  %5557 = fmul fast float %5513, %5469
  %5558 = fsub fast float 1.000000e+00, %5402
  %5559 = bitcast float %5558 to i32
  %5560 = sitofp i32 %5559 to float
  %5561 = fmul fast float %5560, 5.000000e+00
  %5562 = fadd fast float %5561, 0xC1EFBF8940000000
  %5563 = fptosi float %5562 to i32
  %5564 = bitcast i32 %5563 to float
  %5565 = fmul fast float %5564, %2928
  %5566 = fmul fast float %5554, %5565
  %5567 = fmul fast float %5566, %4893
  %5568 = fmul fast float %5566, %4894
  %5569 = fmul fast float %5566, %4895
  %5570 = fadd fast float %5567, %5555
  %5571 = fadd fast float %5568, %5556
  %5572 = fadd fast float %5569, %5557
  %5573 = fmul fast float %5390, %2949
  %5574 = fmul fast float %5573, %5408
  %5575 = fmul fast float %5574, %5554
  %5576 = fmul fast float %5391, %2949
  %5577 = fmul fast float %5576, %5408
  %5578 = fmul fast float %5577, %5554
  %5579 = fmul fast float %5392, %2949
  %5580 = fmul fast float %5579, %5408
  %5581 = fmul fast float %5580, %5554
  %5582 = fadd fast float %5575, %5229
  %5583 = fadd fast float %5578, %5230
  %5584 = fadd fast float %5581, %5231
  %5585 = fmul fast float %5574, %5570
  %5586 = fmul fast float %5577, %5571
  %5587 = fmul fast float %5580, %5572
  %5588 = fadd fast float %5585, %5226
  %5589 = fadd fast float %5586, %5227
  %5590 = fadd fast float %5587, %5228
  br label %5304

; <label>:5591                                    ; preds = %5304
  br label %5592

; <label>:5592                                    ; preds = %5591, %5192
  %5593 = phi float [ %5194, %5192 ], [ %5305, %5591 ]
  %5594 = phi float [ %5195, %5192 ], [ %5306, %5591 ]
  %5595 = phi float [ %5196, %5192 ], [ %5307, %5591 ]
  %5596 = phi float [ %5197, %5192 ], [ %5308, %5591 ]
  %5597 = phi float [ %5198, %5192 ], [ %5309, %5591 ]
  %5598 = phi float [ %5199, %5192 ], [ %5310, %5591 ]
  %5599 = add i32 %5193, 1
  %5600 = icmp ugt i32 %5599, %5189
  br i1 %5600, label %5601, label %5192

; <label>:5601                                    ; preds = %5592
  br label %5602

; <label>:5602                                    ; preds = %5601, %5168, %5158
  %5603 = phi float [ %5159, %5158 ], [ %5159, %5168 ], [ %5593, %5601 ]
  %5604 = phi float [ %5160, %5158 ], [ %5160, %5168 ], [ %5594, %5601 ]
  %5605 = phi float [ %5161, %5158 ], [ %5161, %5168 ], [ %5595, %5601 ]
  %5606 = phi float [ %5162, %5158 ], [ %5162, %5168 ], [ %5596, %5601 ]
  %5607 = phi float [ %5163, %5158 ], [ %5163, %5168 ], [ %5597, %5601 ]
  %5608 = phi float [ %5164, %5158 ], [ %5164, %5168 ], [ %5598, %5601 ]
  %5609 = call float @dx.op.unary.f32(i32 24, float %3555)  ; Sqrt(value)
  %5610 = call float @dx.op.unary.f32(i32 24, float %3556)  ; Sqrt(value)
  %5611 = call float @dx.op.unary.f32(i32 24, float %3557)  ; Sqrt(value)
  %5612 = fmul fast float %5609, %5606
  %5613 = fmul fast float %5610, %5607
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  br i1 %195, label %5616, label %5645

; <label>:5616                                    ; preds = %5602
  %5617 = fadd fast float %5608, %2926
  %5618 = fmul fast float %5617, %2927
  %5619 = fsub fast float 1.000000e+00, %2927
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 3
  %5623 = fmul fast float %5622, %5620
  %5624 = fadd fast float %5623, %5618
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = fmul fast float %5626, %4899
  %5628 = fsub fast float %5624, %5627
  %5629 = fadd fast float %5613, %5612
  %5630 = fmul fast float %5615, %5629
  %5631 = extractvalue %dx.types.CBufRet.f32 %5621, 1
  %5632 = fsub fast float %5628, %5631
  %5633 = extractvalue %dx.types.CBufRet.f32 %5621, 2
  %5634 = fmul fast float %5632, %5633
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  %5638 = fsub fast float %5635, %5637
  %5639 = fmul fast float %5638, 1.000000e+01
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fadd fast float %2925, -1.000000e+00
  %5642 = fmul fast float %5640, %5641
  %5643 = fadd fast float %5642, 1.000000e+00
  %5644 = fmul fast float %5643, %5635
  br label %5660

; <label>:5645                                    ; preds = %5602
  %5646 = fmul fast float %5611, %5608
  %5647 = fmul fast float %5615, %5612
  %5648 = fmul fast float %5615, %5613
  %5649 = fmul fast float %5646, %5615
  %5650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5651 = extractvalue %dx.types.ResRet.i32 %5650, 0
  %5652 = and i32 %5651, 32
  %5653 = icmp eq i32 %5652, 0
  br i1 %5653, label %5660, label %5654

; <label>:5654                                    ; preds = %5645
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 0
  %5657 = fmul fast float %5656, 0x3FE99999A0000000
  %5658 = fadd fast float %5656, %5647
  %5659 = fadd fast float %5657, %5649
  br label %5660

; <label>:5660                                    ; preds = %5654, %5645, %5616
  %5661 = phi float [ %5630, %5616 ], [ %5658, %5654 ], [ %5647, %5645 ]
  %5662 = phi float [ %5644, %5616 ], [ %5648, %5654 ], [ %5648, %5645 ]
  %5663 = phi float [ %5643, %5616 ], [ %5659, %5654 ], [ %5649, %5645 ]
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 0
  %5666 = fmul fast float %5665, %5604
  %5667 = fmul fast float %5665, %5605
  %5668 = fadd fast float %5604, %5603
  %5669 = select i1 %195, float %5668, float %5603
  %5670 = fmul float %5669, %5665
  %5671 = select i1 %195, float 0.000000e+00, float %5666
  %5672 = select i1 %195, float 0.000000e+00, float %5667
  %5673 = fmul fast float %5661, %5609
  %5674 = fmul fast float %5662, %5610
  %5675 = fmul fast float %5663, %5611
  %5676 = fadd fast float %5670, %5673
  %5677 = fadd fast float %5671, %5674
  %5678 = fadd fast float %5672, %5675
  %5679 = select i1 %195, float %5662, float %5677
  %5680 = select i1 %195, float %5663, float %5678
  %5681 = call float @dx.op.binary.f32(i32 36, float %5676, float 3.225500e+04)  ; FMin(a,b)
  %5682 = call float @dx.op.binary.f32(i32 36, float %5679, float 3.225500e+04)  ; FMin(a,b)
  %5683 = call float @dx.op.binary.f32(i32 36, float %5680, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5681)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5682)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5683)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[39 x i32] [i32 37, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !83}
!59 = !{!60, !81, null}
!60 = !{!61, !64, !66, !68, !71, !73, !74, !75, !76, !78, !80}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 6}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 3, i8 0, !70}
!69 = !{i32 1}
!70 = !{i32 3, i32 3}
!71 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 5, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 5, i8 0, !72}
!74 = !{i32 6, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!75 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!76 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !77, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!77 = !{i32 2}
!78 = !{i32 9, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 9, i8 0, !79}
!79 = !{i32 3, i32 1}
!80 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!83 = !{i32 0, i64 24}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}

