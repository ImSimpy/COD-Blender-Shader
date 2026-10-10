;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                1   xyzw        2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        7     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           8     NONE    uint   x   
; TRANSIENT_INDEX          0    y          8     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 6b20efd6cb80d1ff7e92e4486e8142a5
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
; TEXCOORDS                1                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
; NORMAL_TRANSFORM         2                 linear       
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
; Number of inputs: 34, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %69
  %77 = fmul fast float %75, %70
  %78 = fmul fast float %58, %55
  %79 = fmul fast float %59, %54
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %59, %53
  %82 = fmul fast float %57, %55
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %57, %54
  %85 = fmul fast float %58, %53
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %80, %56
  %88 = fmul fast float %83, %56
  %89 = fmul fast float %86, %56
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %93 = fmul fast float %91, 2.000000e+00
  %94 = fmul fast float %93, %76
  %95 = fmul fast float %92, 2.000000e+00
  %96 = fmul fast float %95, %77
  %97 = fsub fast float 1.000000e+00, %94
  %98 = fsub fast float 1.000000e+00, %96
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %97, %100
  %104 = fmul fast float %97, %101
  %105 = fmul fast float %97, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %98, %107
  %111 = fmul fast float %98, %108
  %112 = fmul fast float %98, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fadd fast float %110, %114
  %118 = fadd fast float %117, %103
  %119 = fadd fast float %111, %115
  %120 = fadd fast float %119, %104
  %121 = fadd fast float %112, %116
  %122 = fadd fast float %121, %105
  %123 = fmul fast float %118, %71
  %124 = fmul fast float %120, %71
  %125 = fmul fast float %122, %71
  %126 = fadd fast float %62, 5.000000e-01
  %127 = fptoui float %126 to i32
  %128 = shl i32 %127, 3
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = or i32 %128, 4
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = and i32 %130, 8191
  %135 = lshr i32 %130, 13
  %136 = and i32 %135, 8191
  %137 = lshr i32 %130, 26
  %138 = and i32 %133, 65535
  %139 = lshr i32 %133, 16
  %140 = uitofp i32 %138 to float
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %143 = uitofp i32 %139 to float
  %144 = uitofp i32 %134 to float
  %145 = fmul fast float %142, %144
  %146 = uitofp i32 %136 to float
  %147 = fmul fast float %142, %146
  %148 = fmul fast float %142, %60
  %149 = fmul fast float %148, %140
  %150 = fmul fast float %142, %61
  %151 = fmul fast float %150, %143
  %152 = fadd fast float %149, %145
  %153 = fadd fast float %147, %151
  %154 = uitofp i32 %137 to float
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %158 = fmul fast float %156, %76
  %159 = fmul fast float %157, %77
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = and i32 %161, 114688
  %163 = icmp ne i32 %162, 0
  %164 = select i1 %163, float %158, float 0.000000e+00
  %165 = select i1 %163, float %159, float 0.000000e+00
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fmul fast float %167, 2.550000e+02
  %169 = fptoui float %168 to i32
  %170 = select i1 %163, i32 %169, i32 0
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.i32 %172, 3
  %174 = and i32 %173, 3
  %175 = icmp ne i32 %174, 0
  %176 = and i32 %173, 4
  %177 = icmp ne i32 %176, 0
  %178 = and i1 %175, %177
  br i1 %178, label %179, label %190

; <label>:179                                     ; preds = %0
  %180 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %181 = fmul fast float %180, %77
  %182 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %183 = fmul fast float %182, %76
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %183, float %181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fsub fast float 1.000000e+00, %185
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = fcmp fast olt float %186, %188
  br label %193

; <label>:190                                     ; preds = %0
  %191 = icmp eq i32 %176, 0
  %192 = and i1 %175, %191
  br label %193

; <label>:193                                     ; preds = %190, %179
  %194 = phi i1 [ %189, %179 ], [ %192, %190 ]
  %195 = add i32 %44, 124
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %207 = add i32 %44, 168
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = and i32 %209, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F70101020000000
  %213 = lshr i32 %209, 8
  %214 = and i32 %213, 255
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F70101020000000
  %217 = lshr i32 %209, 16
  %218 = and i32 %217, 255
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F70101020000000
  %221 = add i32 %44, 36
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add i32 %44, 224
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = add i32 %44, 140
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = shl i32 %229, 4
  %231 = and i32 %230, 32752
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %229, 7
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %229, 22
  %237 = shl nuw nsw i32 %236, 5
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = add i32 %44, 184
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = lshr i32 %241, 8
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %241, 16
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = add i32 %44, 52
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %44, 240
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = fmul fast float %264, 0x3F50624DE0000000
  %268 = fmul fast float %266, 0x3F50624DE0000000
  %269 = add i32 %44, 156
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = shl i32 %271, 4
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %271, 7
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %271, 22
  %279 = shl nuw nsw i32 %278, 5
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %44, 200
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %283, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = add i32 %44, 68
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %44, 256
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = fmul fast float %306, 0x3F50624DE0000000
  %310 = fmul fast float %308, 0x3F50624DE0000000
  %311 = add i32 %44, 284
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = lshr i32 %313, 20
  %315 = and i32 %314, 3
  %316 = add nuw nsw i32 %315, 1
  %317 = add i32 %44, 24
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = add i32 %44, 28
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = or i32 %322, %319
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %785, label %325

; <label>:325                                     ; preds = %193
  %326 = lshr i32 %226, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = fmul fast float %327, 0x3F50624DE0000000
  %329 = and i32 %226, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %330, 0x3F50624DE0000000
  %332 = lshr i32 %223, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = and i32 %223, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %44, 220
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = lshr i32 %338, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %340, 0x3F50624DE0000000
  %342 = add i32 %44, 72
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = lshr i32 %344, 16
  %346 = and i32 %345, 255
  %347 = lshr i32 %344, 24
  %348 = add i32 %44, 228
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %44, 32
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = lshr i32 %357, 22
  %359 = shl nuw nsw i32 %358, 5
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = shl i32 %357, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %369 = fmul fast float %368, 1.000000e+03
  %370 = fmul fast float %331, %369
  %371 = call float @dx.op.unary.f32(i32 22, float %370)  ; Frc(value)
  %372 = fadd fast float %371, %335
  %373 = fmul fast float %328, %369
  %374 = call float @dx.op.unary.f32(i32 22, float %373)  ; Frc(value)
  %375 = fadd fast float %374, %333
  %376 = fmul fast float %341, %369
  %377 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %378 = fmul fast float %377, 0x401921FB60000000
  %379 = fadd fast float %378, %360
  %380 = call float @dx.op.unary.f32(i32 13, float %379)  ; Sin(value)
  %381 = call float @dx.op.unary.f32(i32 12, float %379)  ; Cos(value)
  %382 = fsub fast float -0.000000e+00, %380
  %383 = fadd fast float %65, -5.000000e-01
  %384 = fadd fast float %66, -5.000000e-01
  %385 = fmul fast float %352, %383
  %386 = fmul fast float %354, %384
  %387 = fadd fast float %385, 5.000000e-01
  %388 = fadd fast float %386, 5.000000e-01
  %389 = fmul fast float %363, %387
  %390 = fmul fast float %366, %388
  %391 = fmul fast float %381, %389
  %392 = call float @dx.op.tertiary.f32(i32 46, float %382, float %390, float %391)  ; FMad(a,b,c)
  %393 = fmul fast float %380, %389
  %394 = call float @dx.op.tertiary.f32(i32 46, float %381, float %390, float %393)  ; FMad(a,b,c)
  %395 = fadd fast float %372, %392
  %396 = fadd fast float %375, %394
  %397 = icmp ugt i32 %346, 1
  %398 = icmp ugt i32 %344, 33554431
  %399 = or i1 %398, %397
  br i1 %399, label %400, label %425

; <label>:400                                     ; preds = %325
  %401 = add i32 %44, 180
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = lshr i32 %403, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = fmul fast float %368, %405
  %407 = call float @dx.op.unary.f32(i32 22, float %406)  ; Frc(value)
  %408 = mul nuw nsw i32 %346, %347
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %407, %409
  %411 = call float @dx.op.unary.f32(i32 27, float %410)  ; Round_ni(value)
  %412 = fptoui float %411 to i32
  %413 = urem i32 %412, %346
  %414 = udiv i32 %412, %347
  %415 = call float @dx.op.unary.f32(i32 22, float %395)  ; Frc(value)
  %416 = call float @dx.op.unary.f32(i32 22, float %396)  ; Frc(value)
  %417 = uitofp i32 %413 to float
  %418 = uitofp i32 %414 to float
  %419 = fadd fast float %415, %417
  %420 = fadd fast float %416, %418
  %421 = uitofp i32 %346 to float
  %422 = uitofp i32 %347 to float
  %423 = fdiv fast float %419, %421
  %424 = fdiv fast float %420, %422
  br label %425

; <label>:425                                     ; preds = %400, %325
  %426 = phi float [ %423, %400 ], [ %395, %325 ]
  %427 = phi float [ %424, %400 ], [ %396, %325 ]
  %428 = and i32 %319, 16
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %626, label %430

; <label>:430                                     ; preds = %425
  %431 = add i32 %44, 296
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = add i32 %433, 0
  %435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %435, %dx.types.Handle %72, float %426, float %427, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = and i32 %344, 255
  %442 = uitofp i32 %441 to float
  %443 = lshr i32 %344, 8
  %444 = and i32 %443, 255
  %445 = uitofp i32 %444 to float
  %446 = fmul fast float %440, %442
  %447 = fadd fast float %446, %445
  %448 = fmul fast float %447, 0x3F70101000000000
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 512
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %461, label %453

; <label>:453                                     ; preds = %430
  %454 = add i32 %44, 356
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add i32 %456, 0
  %458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %458, %dx.types.Handle %73, float %426, float %427, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  br label %461

; <label>:461                                     ; preds = %453, %430
  %462 = phi float [ %460, %453 ], [ 1.000000e+00, %430 ]
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 33554432
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %573, label %467

; <label>:467                                     ; preds = %461
  %468 = add i32 %44, 176
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = add i32 %44, 180
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 65535
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = lshr i32 %481, 24
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %483, 0x3F70101020000000
  %485 = and i32 %481, 255
  %486 = uitofp i32 %485 to float
  %487 = fmul fast float %486, 0x3F70101020000000
  %488 = lshr i32 %481, 8
  %489 = and i32 %488, 255
  %490 = uitofp i32 %489 to float
  %491 = fmul fast float %490, 0x3F70101020000000
  %492 = lshr i32 %481, 16
  %493 = and i32 %492, 255
  %494 = uitofp i32 %493 to float
  %495 = fmul fast float %494, 0x3F70101020000000
  %496 = add i32 %44, 172
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 24
  %500 = uitofp i32 %499 to float
  %501 = fmul fast float %500, 0x3F70101020000000
  %502 = and i32 %498, 255
  %503 = uitofp i32 %502 to float
  %504 = fmul fast float %503, 0x3F70101020000000
  %505 = lshr i32 %498, 8
  %506 = and i32 %505, 255
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, 0x3F70101020000000
  %509 = lshr i32 %498, 16
  %510 = and i32 %509, 255
  %511 = uitofp i32 %510 to float
  %512 = fmul fast float %511, 0x3F70101020000000
  %513 = bitcast float %437 to i32
  %514 = ashr i32 %513, 1
  %515 = sub nsw i32 1597463174, %514
  %516 = bitcast i32 %515 to float
  %517 = fmul fast float %437, 5.000000e-01
  %518 = fmul fast float %516, %516
  %519 = fmul fast float %518, %517
  %520 = fsub fast float 1.500000e+00, %519
  %521 = fmul fast float %516, %437
  %522 = fmul fast float %521, %520
  %523 = bitcast float %438 to i32
  %524 = ashr i32 %523, 1
  %525 = sub nsw i32 1597463174, %524
  %526 = bitcast i32 %525 to float
  %527 = fmul fast float %438, 5.000000e-01
  %528 = fmul fast float %526, %526
  %529 = fmul fast float %528, %527
  %530 = fsub fast float 1.500000e+00, %529
  %531 = fmul fast float %526, %438
  %532 = fmul fast float %531, %530
  %533 = bitcast float %439 to i32
  %534 = ashr i32 %533, 1
  %535 = sub nsw i32 1597463174, %534
  %536 = bitcast i32 %535 to float
  %537 = fmul fast float %439, 5.000000e-01
  %538 = fmul fast float %536, %536
  %539 = fmul fast float %538, %537
  %540 = fsub fast float 1.500000e+00, %539
  %541 = fmul fast float %536, %439
  %542 = fmul fast float %541, %540
  %543 = fsub fast float %522, %504
  %544 = fsub fast float %532, %508
  %545 = fsub fast float %542, %512
  %546 = fmul fast float %543, %472
  %547 = fmul fast float %544, %474
  %548 = fmul fast float %545, %479
  %549 = fadd fast float %546, %487
  %550 = fadd fast float %547, %491
  %551 = fadd fast float %548, %495
  %552 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %553 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %554 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %555 = fmul fast float %552, %552
  %556 = fmul fast float %553, %553
  %557 = fmul fast float %554, %554
  %558 = fsub fast float %555, %437
  %559 = fsub fast float %556, %438
  %560 = fsub fast float %557, %439
  %561 = fmul fast float %558, %462
  %562 = fmul fast float %559, %462
  %563 = fmul fast float %560, %462
  %564 = fadd fast float %561, %437
  %565 = fadd fast float %562, %438
  %566 = fadd fast float %563, %439
  %567 = fadd fast float %484, %448
  %568 = fsub fast float %567, %501
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %570 = fsub fast float %569, %448
  %571 = fmul fast float %570, %462
  %572 = fadd fast float %571, %448
  br label %626

; <label>:573                                     ; preds = %461
  %574 = and i32 %464, 134217728
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %610, label %576

; <label>:576                                     ; preds = %573
  %577 = call float @dx.op.unary.f32(i32 24, float %212)  ; Sqrt(value)
  %578 = call float @dx.op.unary.f32(i32 24, float %216)  ; Sqrt(value)
  %579 = call float @dx.op.unary.f32(i32 24, float %220)  ; Sqrt(value)
  %580 = fadd fast float %577, -5.000000e-01
  %581 = fadd fast float %578, -5.000000e-01
  %582 = fadd fast float %579, -5.000000e-01
  %583 = fmul fast float %580, %462
  %584 = fmul fast float %581, %462
  %585 = fmul fast float %582, %462
  %586 = fadd fast float %583, 5.000000e-01
  %587 = fadd fast float %584, 5.000000e-01
  %588 = fadd fast float %585, 5.000000e-01
  %589 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %590 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %591 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %592 = fmul fast float %586, 2.000000e+00
  %593 = fsub fast float 1.000000e+00, %592
  %594 = fmul fast float %593, %589
  %595 = fadd fast float %594, %592
  %596 = fmul fast float %595, %589
  %597 = fmul fast float %587, 2.000000e+00
  %598 = fsub fast float 1.000000e+00, %597
  %599 = fmul fast float %598, %590
  %600 = fadd fast float %599, %597
  %601 = fmul fast float %600, %590
  %602 = fmul fast float %588, 2.000000e+00
  %603 = fsub fast float 1.000000e+00, %602
  %604 = fmul fast float %603, %591
  %605 = fadd fast float %604, %602
  %606 = fmul fast float %605, %591
  %607 = fmul fast float %596, %596
  %608 = fmul fast float %601, %601
  %609 = fmul fast float %606, %606
  br label %626

; <label>:610                                     ; preds = %573
  %611 = fmul fast float %212, %212
  %612 = fmul fast float %216, %216
  %613 = fmul fast float %220, %220
  %614 = fadd fast float %611, -1.000000e+00
  %615 = fadd fast float %612, -1.000000e+00
  %616 = fadd fast float %613, -1.000000e+00
  %617 = fmul fast float %462, %614
  %618 = fmul fast float %462, %615
  %619 = fmul fast float %462, %616
  %620 = fadd fast float %617, 1.000000e+00
  %621 = fadd fast float %618, 1.000000e+00
  %622 = fadd fast float %619, 1.000000e+00
  %623 = fmul fast float %620, %437
  %624 = fmul fast float %621, %438
  %625 = fmul fast float %622, %439
  br label %626

; <label>:626                                     ; preds = %610, %576, %467, %425
  %627 = phi float [ %572, %467 ], [ %448, %576 ], [ %448, %610 ], [ 0x3FA23C0BE0000000, %425 ]
  %628 = phi float [ %564, %467 ], [ %607, %576 ], [ %623, %610 ], [ 1.000000e+00, %425 ]
  %629 = phi float [ %565, %467 ], [ %608, %576 ], [ %624, %610 ], [ 1.000000e+00, %425 ]
  %630 = phi float [ %566, %467 ], [ %609, %576 ], [ %625, %610 ], [ 1.000000e+00, %425 ]
  %631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.i32 %631, 1
  %633 = and i32 %632, 1
  %634 = icmp ne i32 %633, 0
  %635 = add i32 %44, 292
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 32
  %639 = icmp ne i32 %638, 0
  %640 = and i1 %634, %639
  %641 = select i1 %640, float 1.000000e+00, float %628
  %642 = select i1 %640, float 0x3FD3333340000000, float %629
  %643 = select i1 %640, float 0x3FD3333340000000, float %630
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 32
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %720, label %648

; <label>:648                                     ; preds = %626
  %649 = add i32 %44, 76
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %44, 308
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %654, 0
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %656, %dx.types.Handle %72, float %426, float %427, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = extractvalue %dx.types.ResRet.f32 %657, 1
  %660 = extractvalue %dx.types.ResRet.f32 %657, 2
  %661 = extractvalue %dx.types.ResRet.f32 %657, 3
  %662 = and i32 %651, 255
  %663 = uitofp i32 %662 to float
  %664 = lshr i32 %651, 8
  %665 = and i32 %664, 255
  %666 = uitofp i32 %665 to float
  %667 = lshr i32 %651, 16
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101000000000
  %671 = fmul fast float %658, %663
  %672 = fadd fast float %671, %666
  %673 = fmul fast float %672, 0x3F70101000000000
  %674 = fadd fast float %659, -5.000000e-01
  %675 = fadd fast float %661, -5.000000e-01
  %676 = fmul fast float %674, %670
  %677 = fmul fast float %675, %670
  %678 = fadd fast float %676, 5.000000e-01
  %679 = fadd fast float %677, 5.000000e-01
  %680 = fmul fast float %678, 2.000000e+00
  %681 = fadd fast float %680, -1.000000e+00
  %682 = fmul fast float %679, 2.000000e+00
  %683 = fadd fast float %682, -1.000000e+00
  %684 = fadd fast float %681, %683
  %685 = fmul fast float %684, 5.000000e-01
  %686 = fsub fast float %681, %683
  %687 = fmul fast float %686, 5.000000e-01
  %688 = call float @dx.op.unary.f32(i32 6, float %685)  ; FAbs(value)
  %689 = fsub fast float 1.000000e+00, %688
  %690 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %691 = fsub fast float %689, %690
  %692 = call float @dx.op.dot3.f32(i32 55, float %685, float %687, float %691, float %685, float %687, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %685, %693
  %695 = fmul fast float %687, %693
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 67108864
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %716, label %700

; <label>:700                                     ; preds = %648
  %701 = add i32 %44, 216
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 65535
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 65535
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = lshr i32 %703, 16
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = fsub fast float %673, %711
  %713 = fmul fast float %712, %705
  %714 = fadd fast float %713, %709
  %715 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  br label %716

; <label>:716                                     ; preds = %700, %648
  %717 = phi float [ %715, %700 ], [ %673, %648 ]
  %718 = call float @dx.op.dot2.f32(i32 54, float %694, float %695, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %719 = call float @dx.op.dot2.f32(i32 54, float %694, float %695, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %720

; <label>:720                                     ; preds = %716, %626
  %721 = phi float [ %717, %716 ], [ 0x3FD6666660000000, %626 ]
  %722 = phi float [ %718, %716 ], [ 0.000000e+00, %626 ]
  %723 = phi float [ %719, %716 ], [ 0.000000e+00, %626 ]
  %724 = phi float [ %660, %716 ], [ 1.000000e+00, %626 ]
  %725 = add i32 %44, 128
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 22
  %729 = shl nuw nsw i32 %728, 5
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 64
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %768, label %735

; <label>:735                                     ; preds = %720
  %736 = add i32 %44, 320
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 131072
  %744 = icmp eq i32 %743, 0
  %745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %72, float %426, float %427, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = fmul fast float %746, %200
  %750 = fmul fast float %747, %203
  %751 = fmul fast float %748, %206
  br i1 %744, label %758, label %752

; <label>:752                                     ; preds = %735
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 0
  %755 = fmul fast float %754, %749
  %756 = fmul fast float %754, %750
  %757 = fmul fast float %754, %751
  br label %758

; <label>:758                                     ; preds = %752, %735
  %759 = phi float [ %755, %752 ], [ %749, %735 ]
  %760 = phi float [ %756, %752 ], [ %750, %735 ]
  %761 = phi float [ %757, %752 ], [ %751, %735 ]
  %762 = fmul fast float %759, %730
  %763 = select i1 %194, float %762, float %759
  %764 = call float @dx.op.dot3.f32(i32 55, float %763, float %760, float %761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = select i1 %194, float 0.000000e+00, float %759
  %766 = select i1 %194, float %764, float %760
  %767 = select i1 %194, float 0.000000e+00, float %761
  br label %768

; <label>:768                                     ; preds = %758, %720
  %769 = phi float [ %765, %758 ], [ 0.000000e+00, %720 ]
  %770 = phi float [ %766, %758 ], [ 0.000000e+00, %720 ]
  %771 = phi float [ %767, %758 ], [ 0.000000e+00, %720 ]
  %772 = add i32 %44, 80
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = lshr i32 %774, 8
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = call float @dx.op.dot3.f32(i32 55, float %641, float %642, float %643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = fmul fast float %779, %780
  %782 = fadd fast float %781, %776
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  br label %785

; <label>:785                                     ; preds = %768, %193
  %786 = phi float [ %722, %768 ], [ 0.000000e+00, %193 ]
  %787 = phi float [ %723, %768 ], [ 0.000000e+00, %193 ]
  %788 = phi float [ %641, %768 ], [ 0.000000e+00, %193 ]
  %789 = phi float [ %642, %768 ], [ 0.000000e+00, %193 ]
  %790 = phi float [ %643, %768 ], [ 0.000000e+00, %193 ]
  %791 = phi float [ %769, %768 ], [ 0.000000e+00, %193 ]
  %792 = phi float [ %770, %768 ], [ 0.000000e+00, %193 ]
  %793 = phi float [ %771, %768 ], [ 0.000000e+00, %193 ]
  %794 = phi float [ %627, %768 ], [ 0.000000e+00, %193 ]
  %795 = phi float [ 1.000000e+00, %768 ], [ 0.000000e+00, %193 ]
  %796 = phi float [ %721, %768 ], [ 0.000000e+00, %193 ]
  %797 = phi float [ %724, %768 ], [ 0.000000e+00, %193 ]
  %798 = phi float [ %784, %768 ], [ 0.000000e+00, %193 ]
  %799 = icmp ult i32 %316, 2
  %800 = add i32 %44, 40
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %44, 44
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = or i32 %805, %802
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %1628, label %808

; <label>:808                                     ; preds = %785
  %809 = add i32 %44, 236
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = lshr i32 %811, 16
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = fmul fast float %813, 0x3F50624DE0000000
  %815 = add i32 %44, 88
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = lshr i32 %817, 16
  %819 = and i32 %818, 255
  %820 = lshr i32 %817, 24
  %821 = add i32 %44, 244
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %823, 16
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = add i32 %44, 48
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = lshr i32 %830, 22
  %832 = shl nuw nsw i32 %831, 5
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = shl i32 %830, 4
  %835 = and i32 %834, 32752
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = lshr i32 %830, 7
  %838 = and i32 %837, 32752
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 3
  %842 = fmul fast float %841, 1.000000e+03
  %843 = fmul fast float %267, %842
  %844 = call float @dx.op.unary.f32(i32 22, float %843)  ; Frc(value)
  %845 = fadd fast float %844, %257
  %846 = fmul fast float %268, %842
  %847 = call float @dx.op.unary.f32(i32 22, float %846)  ; Frc(value)
  %848 = fadd fast float %847, %259
  %849 = fmul fast float %814, %842
  %850 = call float @dx.op.unary.f32(i32 22, float %849)  ; Frc(value)
  %851 = fmul fast float %850, 0x401921FB60000000
  %852 = fadd fast float %851, %833
  %853 = call float @dx.op.unary.f32(i32 13, float %852)  ; Sin(value)
  %854 = call float @dx.op.unary.f32(i32 12, float %852)  ; Cos(value)
  %855 = fsub fast float -0.000000e+00, %853
  %856 = fadd fast float %67, -5.000000e-01
  %857 = fadd fast float %68, -5.000000e-01
  %858 = fmul fast float %825, %856
  %859 = fmul fast float %827, %857
  %860 = fadd fast float %858, 5.000000e-01
  %861 = fadd fast float %859, 5.000000e-01
  %862 = fmul fast float %836, %860
  %863 = fmul fast float %839, %861
  %864 = fmul fast float %854, %862
  %865 = call float @dx.op.tertiary.f32(i32 46, float %855, float %863, float %864)  ; FMad(a,b,c)
  %866 = fmul fast float %853, %862
  %867 = call float @dx.op.tertiary.f32(i32 46, float %854, float %863, float %866)  ; FMad(a,b,c)
  %868 = fadd fast float %845, %865
  %869 = fadd fast float %848, %867
  %870 = icmp ugt i32 %819, 1
  %871 = icmp ugt i32 %817, 33554431
  %872 = or i1 %871, %870
  br i1 %872, label %873, label %898

; <label>:873                                     ; preds = %808
  %874 = add i32 %44, 196
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = lshr i32 %876, 16
  %878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %877)  ; LegacyF16ToF32(value)
  %879 = fmul fast float %841, %878
  %880 = call float @dx.op.unary.f32(i32 22, float %879)  ; Frc(value)
  %881 = mul nuw nsw i32 %819, %820
  %882 = uitofp i32 %881 to float
  %883 = fmul fast float %880, %882
  %884 = call float @dx.op.unary.f32(i32 27, float %883)  ; Round_ni(value)
  %885 = fptoui float %884 to i32
  %886 = urem i32 %885, %819
  %887 = udiv i32 %885, %820
  %888 = call float @dx.op.unary.f32(i32 22, float %868)  ; Frc(value)
  %889 = call float @dx.op.unary.f32(i32 22, float %869)  ; Frc(value)
  %890 = uitofp i32 %886 to float
  %891 = uitofp i32 %887 to float
  %892 = fadd fast float %888, %890
  %893 = fadd fast float %889, %891
  %894 = uitofp i32 %819 to float
  %895 = uitofp i32 %820 to float
  %896 = fdiv fast float %892, %894
  %897 = fdiv fast float %893, %895
  br label %898

; <label>:898                                     ; preds = %873, %808
  %899 = phi float [ %896, %873 ], [ %868, %808 ]
  %900 = phi float [ %897, %873 ], [ %869, %808 ]
  %901 = and i32 %802, 16777216
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %1009, label %903

; <label>:903                                     ; preds = %898
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %908 = fadd fast float %905, %123
  %909 = fadd fast float %906, %124
  %910 = fadd fast float %907, %125
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = icmp eq i32 %43, 65535
  br i1 %914, label %1009, label %915

; <label>:915                                     ; preds = %903
  %916 = lshr i32 %43, 1
  %917 = shl i32 %916, 2
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %43, 1
  %921 = icmp ne i32 %920, 0
  %922 = lshr i32 %919, 16
  %923 = and i32 %919, 65535
  %924 = select i1 %921, i32 %922, i32 %923
  %925 = icmp eq i32 %924, 65535
  br i1 %925, label %1005, label %926

; <label>:926                                     ; preds = %915
  %927 = mul nuw nsw i32 %924, 40
  %928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = add nuw nsw i32 %927, 12
  %933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = extractvalue %dx.types.ResRet.f32 %933, 1
  %936 = extractvalue %dx.types.ResRet.f32 %933, 2
  %937 = add nuw nsw i32 %927, 24
  %938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = add nuw nsw i32 %927, 36
  %943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = fsub fast float %908, %929
  %946 = fsub fast float %909, %930
  %947 = fsub fast float %910, %931
  %948 = fmul fast float %944, %945
  %949 = fmul fast float %944, %946
  %950 = fmul fast float %944, %947
  %951 = call float @dx.op.unary.f32(i32 27, float %948)  ; Round_ni(value)
  %952 = call float @dx.op.unary.f32(i32 27, float %949)  ; Round_ni(value)
  %953 = call float @dx.op.unary.f32(i32 27, float %950)  ; Round_ni(value)
  %954 = fadd fast float %951, 5.000000e-01
  %955 = fadd fast float %952, 5.000000e-01
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fmul fast float %954, %934
  %958 = fmul fast float %955, %935
  %959 = fmul fast float %956, %936
  %960 = shl i32 %43, 2
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = add i32 %962, 0
  %964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %965 = call float @dx.op.unary.f32(i32 22, float %957)  ; Frc(value)
  %966 = call float @dx.op.unary.f32(i32 22, float %958)  ; Frc(value)
  %967 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %964, %dx.types.Handle %40, float %965, float %966, float %967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = fmul fast float %969, 1.023000e+03
  %973 = fmul fast float %970, 1.023000e+03
  %974 = fmul fast float %971, 1.023000e+03
  %975 = fadd fast float %972, 5.000000e-01
  %976 = fadd fast float %973, 5.000000e-01
  %977 = fadd fast float %974, 5.000000e-01
  %978 = call float @dx.op.unary.f32(i32 27, float %975)  ; Round_ni(value)
  %979 = call float @dx.op.unary.f32(i32 27, float %976)  ; Round_ni(value)
  %980 = call float @dx.op.unary.f32(i32 27, float %977)  ; Round_ni(value)
  %981 = fsub fast float %948, %951
  %982 = fsub fast float %949, %952
  %983 = fsub fast float %950, %953
  %984 = fmul fast float %981, 7.500000e-01
  %985 = fmul fast float %982, 7.500000e-01
  %986 = fmul fast float %983, 7.500000e-01
  %987 = fadd fast float %951, 1.250000e-01
  %988 = fadd fast float %987, %984
  %989 = fadd fast float %988, %978
  %990 = fadd fast float %952, 1.250000e-01
  %991 = fadd fast float %990, %985
  %992 = fadd fast float %991, %979
  %993 = fadd fast float %953, 1.250000e-01
  %994 = fadd fast float %993, %986
  %995 = fadd fast float %994, %980
  %996 = fmul fast float %989, %939
  %997 = fmul fast float %992, %940
  %998 = fmul fast float %995, %941
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1002, %dx.types.Handle %38, float %996, float %997, float %998, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  br label %1005

; <label>:1005                                    ; preds = %926, %915
  %1006 = phi float [ %1004, %926 ], [ -1.000000e+00, %915 ]
  %1007 = fadd fast float %1006, %913
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  br label %1009

; <label>:1009                                    ; preds = %1005, %903, %898
  %1010 = phi float [ 1.000000e+00, %898 ], [ %1008, %1005 ], [ %913, %903 ]
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 256
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1061, label %1015

; <label>:1015                                    ; preds = %1009
  %1016 = add i32 %44, 348
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = add i32 %1018, 0
  %1020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1020, %dx.types.Handle %73, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = add i32 %44, 100
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = shl i32 %1025, 4
  %1027 = and i32 %1026, 32752
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = lshr i32 %1025, 7
  %1030 = and i32 %1029, 32752
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = fsub fast float 1.000000e+00, %1010
  %1033 = call float @dx.op.binary.f32(i32 35, float %1032, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1034 = bitcast float %1010 to i32
  %1035 = sitofp i32 %1034 to float
  %1036 = fadd fast float %1035, 0xC1CFBF8940000000
  %1037 = fmul fast float %1031, %1036
  %1038 = fadd fast float %1037, 0x41CFBF8940000000
  %1039 = fptosi float %1038 to i32
  %1040 = bitcast i32 %1039 to float
  %1041 = bitcast float %1033 to i32
  %1042 = sitofp i32 %1041 to float
  %1043 = fadd fast float %1042, 0xC1CFBF8940000000
  %1044 = fmul fast float %1043, %1031
  %1045 = fadd fast float %1044, 0x41CFBF8940000000
  %1046 = fptosi float %1045 to i32
  %1047 = bitcast i32 %1046 to float
  %1048 = fmul fast float %1040, %1028
  %1049 = fmul fast float %1047, %1028
  %1050 = fsub fast float %1033, %1048
  %1051 = fadd fast float %1049, %1033
  %1052 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1053 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1054 = fsub fast float %1022, %1052
  %1055 = fsub fast float %1053, %1052
  %1056 = bitcast float %1055 to i32
  %1057 = sub nsw i32 2129859010, %1056
  %1058 = bitcast i32 %1057 to float
  %1059 = fmul fast float %1058, %1054
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  br label %1061

; <label>:1061                                    ; preds = %1015, %1009
  %1062 = phi float [ %1060, %1015 ], [ %1010, %1009 ]
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 128
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1083, label %1067

; <label>:1067                                    ; preds = %1061
  %1068 = add i32 %44, 336
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %1070, 0
  %1072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1072, %dx.types.Handle %73, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 524288
  %1078 = icmp ne i32 %1077, 0
  %1079 = fcmp fast ogt float %1074, 0x3FE0101020000000
  %1080 = select i1 %1079, float 1.000000e+00, float 0.000000e+00
  %1081 = select i1 %1078, float %1080, float %1074
  %1082 = fmul fast float %1081, %1062
  br label %1083

; <label>:1083                                    ; preds = %1067, %1061
  %1084 = phi float [ %1082, %1067 ], [ %1062, %1061 ]
  %1085 = fcmp fast ult float %1084, 0x3F70101020000000
  br i1 %1085, label %1628, label %1086

; <label>:1086                                    ; preds = %1083
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 16
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1289, label %1091

; <label>:1091                                    ; preds = %1086
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = add i32 %44, 300
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = add i32 %1096, 0
  %1098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1098, %dx.types.Handle %72, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1103 = extractvalue %dx.types.ResRet.f32 %1099, 3
  %1104 = and i32 %1093, 255
  %1105 = uitofp i32 %1104 to float
  %1106 = lshr i32 %1093, 8
  %1107 = and i32 %1106, 255
  %1108 = uitofp i32 %1107 to float
  %1109 = fmul fast float %1103, %1105
  %1110 = fadd fast float %1109, %1108
  %1111 = fmul fast float %1110, 0x3F70101000000000
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 512
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1124, label %1116

; <label>:1116                                    ; preds = %1091
  %1117 = add i32 %44, 360
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1121, %dx.types.Handle %73, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  br label %1124

; <label>:1124                                    ; preds = %1116, %1091
  %1125 = phi float [ %1123, %1116 ], [ 1.000000e+00, %1091 ]
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = and i32 %1127, 33554432
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1236, label %1130

; <label>:1130                                    ; preds = %1124
  %1131 = add i32 %44, 192
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 65535
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = lshr i32 %1133, 16
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = add i32 %44, 196
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 65535
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = lshr i32 %1144, 24
  %1146 = uitofp i32 %1145 to float
  %1147 = fmul fast float %1146, 0x3F70101020000000
  %1148 = and i32 %1144, 255
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = lshr i32 %1144, 8
  %1152 = and i32 %1151, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = fmul fast float %1153, 0x3F70101020000000
  %1155 = lshr i32 %1144, 16
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F70101020000000
  %1159 = add i32 %44, 188
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1161, 24
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F70101020000000
  %1165 = and i32 %1161, 255
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1166, 0x3F70101020000000
  %1168 = lshr i32 %1161, 8
  %1169 = and i32 %1168, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = fmul fast float %1170, 0x3F70101020000000
  %1172 = lshr i32 %1161, 16
  %1173 = and i32 %1172, 255
  %1174 = uitofp i32 %1173 to float
  %1175 = fmul fast float %1174, 0x3F70101020000000
  %1176 = bitcast float %1100 to i32
  %1177 = ashr i32 %1176, 1
  %1178 = sub nsw i32 1597463174, %1177
  %1179 = bitcast i32 %1178 to float
  %1180 = fmul fast float %1100, 5.000000e-01
  %1181 = fmul fast float %1179, %1179
  %1182 = fmul fast float %1181, %1180
  %1183 = fsub fast float 1.500000e+00, %1182
  %1184 = fmul fast float %1179, %1100
  %1185 = fmul fast float %1184, %1183
  %1186 = bitcast float %1101 to i32
  %1187 = ashr i32 %1186, 1
  %1188 = sub nsw i32 1597463174, %1187
  %1189 = bitcast i32 %1188 to float
  %1190 = fmul fast float %1101, 5.000000e-01
  %1191 = fmul fast float %1189, %1189
  %1192 = fmul fast float %1191, %1190
  %1193 = fsub fast float 1.500000e+00, %1192
  %1194 = fmul fast float %1189, %1101
  %1195 = fmul fast float %1194, %1193
  %1196 = bitcast float %1102 to i32
  %1197 = ashr i32 %1196, 1
  %1198 = sub nsw i32 1597463174, %1197
  %1199 = bitcast i32 %1198 to float
  %1200 = fmul fast float %1102, 5.000000e-01
  %1201 = fmul fast float %1199, %1199
  %1202 = fmul fast float %1201, %1200
  %1203 = fsub fast float 1.500000e+00, %1202
  %1204 = fmul fast float %1199, %1102
  %1205 = fmul fast float %1204, %1203
  %1206 = fsub fast float %1185, %1167
  %1207 = fsub fast float %1195, %1171
  %1208 = fsub fast float %1205, %1175
  %1209 = fmul fast float %1206, %1135
  %1210 = fmul fast float %1207, %1137
  %1211 = fmul fast float %1208, %1142
  %1212 = fadd fast float %1209, %1150
  %1213 = fadd fast float %1210, %1154
  %1214 = fadd fast float %1211, %1158
  %1215 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1216 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1217 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1218 = fmul fast float %1215, %1215
  %1219 = fmul fast float %1216, %1216
  %1220 = fmul fast float %1217, %1217
  %1221 = fsub fast float %1218, %1100
  %1222 = fsub fast float %1219, %1101
  %1223 = fsub fast float %1220, %1102
  %1224 = fmul fast float %1221, %1125
  %1225 = fmul fast float %1222, %1125
  %1226 = fmul fast float %1223, %1125
  %1227 = fadd fast float %1224, %1100
  %1228 = fadd fast float %1225, %1101
  %1229 = fadd fast float %1226, %1102
  %1230 = fadd fast float %1147, %1111
  %1231 = fsub fast float %1230, %1164
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = fsub fast float %1232, %1111
  %1234 = fmul fast float %1233, %1125
  %1235 = fadd fast float %1234, %1111
  br label %1289

; <label>:1236                                    ; preds = %1124
  %1237 = and i32 %1127, 134217728
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1273, label %1239

; <label>:1239                                    ; preds = %1236
  %1240 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1241 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %1242 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1243 = fadd fast float %1240, -5.000000e-01
  %1244 = fadd fast float %1241, -5.000000e-01
  %1245 = fadd fast float %1242, -5.000000e-01
  %1246 = fmul fast float %1243, %1125
  %1247 = fmul fast float %1244, %1125
  %1248 = fmul fast float %1245, %1125
  %1249 = fadd fast float %1246, 5.000000e-01
  %1250 = fadd fast float %1247, 5.000000e-01
  %1251 = fadd fast float %1248, 5.000000e-01
  %1252 = call float @dx.op.unary.f32(i32 24, float %1100)  ; Sqrt(value)
  %1253 = call float @dx.op.unary.f32(i32 24, float %1101)  ; Sqrt(value)
  %1254 = call float @dx.op.unary.f32(i32 24, float %1102)  ; Sqrt(value)
  %1255 = fmul fast float %1249, 2.000000e+00
  %1256 = fsub fast float 1.000000e+00, %1255
  %1257 = fmul fast float %1256, %1252
  %1258 = fadd fast float %1257, %1255
  %1259 = fmul fast float %1258, %1252
  %1260 = fmul fast float %1250, 2.000000e+00
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = fmul fast float %1261, %1253
  %1263 = fadd fast float %1262, %1260
  %1264 = fmul fast float %1263, %1253
  %1265 = fmul fast float %1251, 2.000000e+00
  %1266 = fsub fast float 1.000000e+00, %1265
  %1267 = fmul fast float %1266, %1254
  %1268 = fadd fast float %1267, %1265
  %1269 = fmul fast float %1268, %1254
  %1270 = fmul fast float %1259, %1259
  %1271 = fmul fast float %1264, %1264
  %1272 = fmul fast float %1269, %1269
  br label %1289

; <label>:1273                                    ; preds = %1236
  %1274 = fmul fast float %244, %244
  %1275 = fmul fast float %248, %248
  %1276 = fmul fast float %252, %252
  %1277 = fadd fast float %1274, -1.000000e+00
  %1278 = fadd fast float %1275, -1.000000e+00
  %1279 = fadd fast float %1276, -1.000000e+00
  %1280 = fmul fast float %1125, %1277
  %1281 = fmul fast float %1125, %1278
  %1282 = fmul fast float %1125, %1279
  %1283 = fadd fast float %1280, 1.000000e+00
  %1284 = fadd fast float %1281, 1.000000e+00
  %1285 = fadd fast float %1282, 1.000000e+00
  %1286 = fmul fast float %1283, %1100
  %1287 = fmul fast float %1284, %1101
  %1288 = fmul fast float %1285, %1102
  br label %1289

; <label>:1289                                    ; preds = %1273, %1239, %1130, %1086
  %1290 = phi float [ %1235, %1130 ], [ %1111, %1239 ], [ %1111, %1273 ], [ 0x3FA23C0BE0000000, %1086 ]
  %1291 = phi float [ %1227, %1130 ], [ %1270, %1239 ], [ %1286, %1273 ], [ 1.000000e+00, %1086 ]
  %1292 = phi float [ %1228, %1130 ], [ %1271, %1239 ], [ %1287, %1273 ], [ 1.000000e+00, %1086 ]
  %1293 = phi float [ %1229, %1130 ], [ %1272, %1239 ], [ %1288, %1273 ], [ 1.000000e+00, %1086 ]
  %1294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.i32 %1294, 1
  %1296 = and i32 %1295, 1
  %1297 = icmp ne i32 %1296, 0
  %1298 = add i32 %44, 292
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = and i32 %1300, 32
  %1302 = icmp ne i32 %1301, 0
  %1303 = and i1 %1297, %1302
  %1304 = select i1 %1303, float 1.000000e+00, float %1291
  %1305 = select i1 %1303, float 0x3FD3333340000000, float %1292
  %1306 = select i1 %1303, float 0x3FD3333340000000, float %1293
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = and i32 %1308, 32
  %1310 = icmp eq i32 %1309, 0
  br i1 %1310, label %1383, label %1311

; <label>:1311                                    ; preds = %1289
  %1312 = add i32 %44, 92
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = add i32 %44, 312
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = add i32 %1317, 0
  %1319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1319, %dx.types.Handle %72, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 2
  %1324 = extractvalue %dx.types.ResRet.f32 %1320, 3
  %1325 = and i32 %1314, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = lshr i32 %1314, 8
  %1328 = and i32 %1327, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = lshr i32 %1314, 16
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F70101000000000
  %1334 = fmul fast float %1321, %1326
  %1335 = fadd fast float %1334, %1329
  %1336 = fmul fast float %1335, 0x3F70101000000000
  %1337 = fadd fast float %1322, -5.000000e-01
  %1338 = fadd fast float %1324, -5.000000e-01
  %1339 = fmul fast float %1337, %1333
  %1340 = fmul fast float %1338, %1333
  %1341 = fadd fast float %1339, 5.000000e-01
  %1342 = fadd fast float %1340, 5.000000e-01
  %1343 = fmul fast float %1341, 2.000000e+00
  %1344 = fadd fast float %1343, -1.000000e+00
  %1345 = fmul fast float %1342, 2.000000e+00
  %1346 = fadd fast float %1345, -1.000000e+00
  %1347 = fadd fast float %1344, %1346
  %1348 = fmul fast float %1347, 5.000000e-01
  %1349 = fsub fast float %1344, %1346
  %1350 = fmul fast float %1349, 5.000000e-01
  %1351 = call float @dx.op.unary.f32(i32 6, float %1348)  ; FAbs(value)
  %1352 = fsub fast float 1.000000e+00, %1351
  %1353 = call float @dx.op.unary.f32(i32 6, float %1350)  ; FAbs(value)
  %1354 = fsub fast float %1352, %1353
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1348, float %1350, float %1354, float %1348, float %1350, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = call float @dx.op.unary.f32(i32 25, float %1355)  ; Rsqrt(value)
  %1357 = fmul fast float %1348, %1356
  %1358 = fmul fast float %1350, %1356
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %1360, 67108864
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1379, label %1363

; <label>:1363                                    ; preds = %1311
  %1364 = add i32 %44, 232
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = and i32 %1366, 65535
  %1368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1367)  ; LegacyF16ToF32(value)
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 65535
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = lshr i32 %1366, 16
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = fsub fast float %1336, %1374
  %1376 = fmul fast float %1375, %1368
  %1377 = fadd fast float %1376, %1372
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  br label %1379

; <label>:1379                                    ; preds = %1363, %1311
  %1380 = phi float [ %1378, %1363 ], [ %1336, %1311 ]
  %1381 = call float @dx.op.dot2.f32(i32 54, float %1357, float %1358, float %49, float %50)  ; Dot2(ax,ay,bx,by)
  %1382 = call float @dx.op.dot2.f32(i32 54, float %1357, float %1358, float %51, float %52)  ; Dot2(ax,ay,bx,by)
  br label %1383

; <label>:1383                                    ; preds = %1379, %1289
  %1384 = phi float [ %1380, %1379 ], [ 0x3FD6666660000000, %1289 ]
  %1385 = phi float [ %1381, %1379 ], [ 0.000000e+00, %1289 ]
  %1386 = phi float [ %1382, %1379 ], [ 0.000000e+00, %1289 ]
  %1387 = phi float [ %1323, %1379 ], [ 1.000000e+00, %1289 ]
  %1388 = add i32 %44, 144
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = lshr i32 %1390, 22
  %1392 = shl nuw nsw i32 %1391, 5
  %1393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1392)  ; LegacyF16ToF32(value)
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 64
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1431, label %1398

; <label>:1398                                    ; preds = %1383
  %1399 = add i32 %44, 324
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = add i32 %1401, 0
  %1403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 131072
  %1407 = icmp eq i32 %1406, 0
  %1408 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1403, %dx.types.Handle %72, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = fmul fast float %1409, %232
  %1413 = fmul fast float %1410, %235
  %1414 = fmul fast float %1411, %238
  br i1 %1407, label %1421, label %1415

; <label>:1415                                    ; preds = %1398
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = fmul fast float %1417, %1412
  %1419 = fmul fast float %1417, %1413
  %1420 = fmul fast float %1417, %1414
  br label %1421

; <label>:1421                                    ; preds = %1415, %1398
  %1422 = phi float [ %1418, %1415 ], [ %1412, %1398 ]
  %1423 = phi float [ %1419, %1415 ], [ %1413, %1398 ]
  %1424 = phi float [ %1420, %1415 ], [ %1414, %1398 ]
  %1425 = fmul fast float %1422, %1393
  %1426 = select i1 %194, float %1425, float %1422
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1426, float %1423, float %1424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = select i1 %194, float 0.000000e+00, float %1422
  %1429 = select i1 %194, float %1427, float %1423
  %1430 = select i1 %194, float 0.000000e+00, float %1424
  br label %1431

; <label>:1431                                    ; preds = %1421, %1383
  %1432 = phi float [ %1428, %1421 ], [ 0.000000e+00, %1383 ]
  %1433 = phi float [ %1429, %1421 ], [ 0.000000e+00, %1383 ]
  %1434 = phi float [ %1430, %1421 ], [ 0.000000e+00, %1383 ]
  %1435 = add i32 %44, 96
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = lshr i32 %1437, 8
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = call float @dx.op.dot3.f32(i32 55, float %1304, float %1305, float %1306, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1444 = fmul fast float %1442, %1443
  %1445 = fadd fast float %1444, %1439
  %1446 = fmul fast float %1445, 0x3F70101020000000
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  br i1 %799, label %1448, label %1456

; <label>:1448                                    ; preds = %1431
  %1449 = fsub fast float 1.000000e+00, %1084
  %1450 = fmul fast float %1449, %788
  %1451 = fmul fast float %1449, %789
  %1452 = fmul fast float %1449, %790
  %1453 = fmul fast float %1449, %791
  %1454 = fmul fast float %1449, %792
  %1455 = fmul fast float %1449, %793
  br label %1456

; <label>:1456                                    ; preds = %1448, %1431
  %1457 = phi float [ %1450, %1448 ], [ %788, %1431 ]
  %1458 = phi float [ %1451, %1448 ], [ %789, %1431 ]
  %1459 = phi float [ %1452, %1448 ], [ %790, %1431 ]
  %1460 = phi float [ %1453, %1448 ], [ %791, %1431 ]
  %1461 = phi float [ %1454, %1448 ], [ %792, %1431 ]
  %1462 = phi float [ %1455, %1448 ], [ %793, %1431 ]
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 3
  %1466 = icmp eq i32 %1465, 3
  br i1 %1466, label %1545, label %1467

; <label>:1467                                    ; preds = %1456
  %1468 = and i32 %1464, 16
  %1469 = icmp ne i32 %1468, 0
  %1470 = select i1 %1469, float %1084, float 0.000000e+00
  %1471 = icmp eq i32 %1465, 0
  br i1 %1471, label %1472, label %1500

; <label>:1472                                    ; preds = %1467
  %1473 = and i32 %1464, 64
  %1474 = icmp ne i32 %1473, 0
  %1475 = select i1 %1474, float %1084, float 0.000000e+00
  %1476 = fsub fast float %1304, %1457
  %1477 = fsub fast float %1305, %1458
  %1478 = fsub fast float %1306, %1459
  %1479 = fmul fast float %1470, %1476
  %1480 = fmul fast float %1470, %1477
  %1481 = fmul fast float %1470, %1478
  %1482 = fadd fast float %1479, %1457
  %1483 = fadd fast float %1480, %1458
  %1484 = fadd fast float %1481, %1459
  %1485 = fsub fast float %1290, %794
  %1486 = fmul fast float %1470, %1485
  %1487 = fadd fast float %1486, %794
  %1488 = fsub fast float %1432, %1460
  %1489 = fsub fast float %1433, %1461
  %1490 = fsub fast float %1434, %1462
  %1491 = fmul fast float %1475, %1488
  %1492 = fmul fast float %1475, %1489
  %1493 = fmul fast float %1475, %1490
  %1494 = fadd fast float %1491, %1460
  %1495 = fadd fast float %1492, %1461
  %1496 = fadd fast float %1493, %1462
  %1497 = fsub fast float %1447, %798
  %1498 = fmul fast float %1470, %1497
  %1499 = fadd fast float %1498, %798
  br label %1545

; <label>:1500                                    ; preds = %1467
  %1501 = icmp eq i32 %1465, 1
  br i1 %1501, label %1502, label %1515

; <label>:1502                                    ; preds = %1500
  %1503 = fadd fast float %1304, -1.000000e+00
  %1504 = fadd fast float %1305, -1.000000e+00
  %1505 = fadd fast float %1306, -1.000000e+00
  %1506 = fmul fast float %1470, %1503
  %1507 = fmul fast float %1470, %1504
  %1508 = fmul fast float %1470, %1505
  %1509 = fadd fast float %1506, 1.000000e+00
  %1510 = fadd fast float %1507, 1.000000e+00
  %1511 = fadd fast float %1508, 1.000000e+00
  %1512 = fmul fast float %1509, %1457
  %1513 = fmul fast float %1510, %1458
  %1514 = fmul fast float %1511, %1459
  br label %1545

; <label>:1515                                    ; preds = %1500
  %1516 = icmp eq i32 %1465, 2
  br i1 %1516, label %1517, label %1545

; <label>:1517                                    ; preds = %1515
  %1518 = call float @dx.op.unary.f32(i32 24, float %1304)  ; Sqrt(value)
  %1519 = call float @dx.op.unary.f32(i32 24, float %1305)  ; Sqrt(value)
  %1520 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1521 = fadd fast float %1518, -5.000000e-01
  %1522 = fadd fast float %1519, -5.000000e-01
  %1523 = fadd fast float %1520, -5.000000e-01
  %1524 = fmul fast float %1521, %1470
  %1525 = fmul fast float %1522, %1470
  %1526 = fmul fast float %1523, %1470
  %1527 = fadd fast float %1524, 5.000000e-01
  %1528 = fadd fast float %1525, 5.000000e-01
  %1529 = fadd fast float %1526, 5.000000e-01
  %1530 = fmul fast float %1527, 2.000000e+00
  %1531 = fsub fast float 1.000000e+00, %1530
  %1532 = fmul fast float %1531, %1457
  %1533 = fadd fast float %1532, %1530
  %1534 = fmul fast float %1533, %1457
  %1535 = fmul fast float %1528, 2.000000e+00
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1536, %1458
  %1538 = fadd fast float %1537, %1535
  %1539 = fmul fast float %1538, %1458
  %1540 = fmul fast float %1529, 2.000000e+00
  %1541 = fsub fast float 1.000000e+00, %1540
  %1542 = fmul fast float %1541, %1459
  %1543 = fadd fast float %1542, %1540
  %1544 = fmul fast float %1543, %1459
  br label %1545

; <label>:1545                                    ; preds = %1517, %1515, %1502, %1472, %1456
  %1546 = phi float [ %1457, %1456 ], [ %1534, %1517 ], [ %1457, %1515 ], [ %1512, %1502 ], [ %1482, %1472 ]
  %1547 = phi float [ %1458, %1456 ], [ %1539, %1517 ], [ %1458, %1515 ], [ %1513, %1502 ], [ %1483, %1472 ]
  %1548 = phi float [ %1459, %1456 ], [ %1544, %1517 ], [ %1459, %1515 ], [ %1514, %1502 ], [ %1484, %1472 ]
  %1549 = phi float [ %1460, %1456 ], [ %1460, %1517 ], [ %1460, %1515 ], [ %1460, %1502 ], [ %1494, %1472 ]
  %1550 = phi float [ %1461, %1456 ], [ %1461, %1517 ], [ %1461, %1515 ], [ %1461, %1502 ], [ %1495, %1472 ]
  %1551 = phi float [ %1462, %1456 ], [ %1462, %1517 ], [ %1462, %1515 ], [ %1462, %1502 ], [ %1496, %1472 ]
  %1552 = phi float [ %794, %1456 ], [ %794, %1517 ], [ %794, %1515 ], [ %794, %1502 ], [ %1487, %1472 ]
  %1553 = phi float [ %798, %1456 ], [ %798, %1517 ], [ %798, %1515 ], [ %798, %1502 ], [ %1499, %1472 ]
  %1554 = and i32 %1464, 12
  %1555 = icmp eq i32 %1554, 12
  br i1 %1555, label %1628, label %1556

; <label>:1556                                    ; preds = %1545
  %1557 = and i32 %1464, 2097184
  %1558 = icmp eq i32 %1557, 2097184
  %1559 = select i1 %1558, float %1084, float 0.000000e+00
  %1560 = and i32 %1464, 4194336
  %1561 = icmp eq i32 %1560, 4194336
  %1562 = select i1 %1561, float %1084, float 0.000000e+00
  %1563 = and i32 %1464, 8388640
  %1564 = icmp eq i32 %1563, 8388640
  %1565 = select i1 %1564, float %1084, float 0.000000e+00
  %1566 = icmp eq i32 %1554, 0
  br i1 %1566, label %1567, label %1580

; <label>:1567                                    ; preds = %1556
  %1568 = fsub fast float %1385, %786
  %1569 = fsub fast float %1386, %787
  %1570 = fmul fast float %1559, %1568
  %1571 = fmul fast float %1559, %1569
  %1572 = fadd fast float %1570, %786
  %1573 = fadd fast float %1571, %787
  %1574 = fsub fast float %1387, %797
  %1575 = fmul fast float %1562, %1574
  %1576 = fadd fast float %1575, %797
  %1577 = fsub fast float %1384, %796
  %1578 = fmul fast float %1565, %1577
  %1579 = fadd fast float %1578, %796
  br label %1628

; <label>:1580                                    ; preds = %1556
  %1581 = icmp eq i32 %1554, 4
  br i1 %1581, label %1582, label %1614

; <label>:1582                                    ; preds = %1580
  %1583 = fmul fast float %1559, %1385
  %1584 = fmul fast float %1559, %1386
  %1585 = fadd fast float %1583, %786
  %1586 = fadd fast float %1584, %787
  %1587 = call float @dx.op.binary.f32(i32 36, float %797, float %1387)  ; FMin(a,b)
  %1588 = fsub fast float %1587, %797
  %1589 = fmul fast float %1588, %1562
  %1590 = fadd fast float %1589, %797
  %1591 = fadd fast float %1384, %796
  %1592 = fmul fast float %1591, 0x3FF337FAE0000000
  %1593 = fmul fast float %796, %796
  %1594 = fmul fast float %1384, %1384
  %1595 = fadd fast float %1594, %1593
  %1596 = fmul fast float %1595, 0x3FE5152B00000000
  %1597 = fmul fast float %796, 0xBFCC1F85E0000000
  %1598 = fmul fast float %1597, %1384
  %1599 = fadd fast float %1598, 0xBFE1363700000000
  %1600 = fadd fast float %1599, %1592
  %1601 = fsub fast float %1600, %1596
  %1602 = fmul fast float %1591, 0x3FBA6F0D00000000
  %1603 = fmul fast float %1595, 0x3FD0432880000000
  %1604 = fmul fast float %796, 0xBFEF110800000000
  %1605 = fmul fast float %1604, %1384
  %1606 = fadd fast float %1605, 1.000000e+00
  %1607 = fsub fast float %1606, %1602
  %1608 = fadd fast float %1607, %1603
  %1609 = fdiv fast float %1601, %1608
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1611 = fsub fast float %1610, %796
  %1612 = fmul fast float %1611, %1565
  %1613 = fadd fast float %1612, %796
  br label %1628

; <label>:1614                                    ; preds = %1580
  %1615 = icmp eq i32 %1554, 8
  br i1 %1615, label %1616, label %1628

; <label>:1616                                    ; preds = %1614
  %1617 = fmul fast float %1559, %1385
  %1618 = fmul fast float %1559, %1386
  %1619 = fadd fast float %1617, %786
  %1620 = fadd fast float %1618, %787
  %1621 = call float @dx.op.binary.f32(i32 36, float %797, float %1387)  ; FMin(a,b)
  %1622 = fsub fast float %1621, %797
  %1623 = fmul fast float %1622, %1562
  %1624 = fadd fast float %1623, %797
  %1625 = fsub fast float %1384, %796
  %1626 = fmul fast float %1565, %1625
  %1627 = fadd fast float %1626, %796
  br label %1628

; <label>:1628                                    ; preds = %1616, %1614, %1582, %1567, %1545, %1083, %785
  %1629 = phi float [ %786, %1545 ], [ %786, %1083 ], [ %786, %785 ], [ %1572, %1567 ], [ %1585, %1582 ], [ %786, %1614 ], [ %1619, %1616 ]
  %1630 = phi float [ %787, %1545 ], [ %787, %1083 ], [ %787, %785 ], [ %1573, %1567 ], [ %1586, %1582 ], [ %787, %1614 ], [ %1620, %1616 ]
  %1631 = phi float [ %1546, %1545 ], [ %788, %1083 ], [ %788, %785 ], [ %1546, %1567 ], [ %1546, %1582 ], [ %1546, %1614 ], [ %1546, %1616 ]
  %1632 = phi float [ %1547, %1545 ], [ %789, %1083 ], [ %789, %785 ], [ %1547, %1567 ], [ %1547, %1582 ], [ %1547, %1614 ], [ %1547, %1616 ]
  %1633 = phi float [ %1548, %1545 ], [ %790, %1083 ], [ %790, %785 ], [ %1548, %1567 ], [ %1548, %1582 ], [ %1548, %1614 ], [ %1548, %1616 ]
  %1634 = phi float [ %1549, %1545 ], [ %791, %1083 ], [ %791, %785 ], [ %1549, %1567 ], [ %1549, %1582 ], [ %1549, %1614 ], [ %1549, %1616 ]
  %1635 = phi float [ %1550, %1545 ], [ %792, %1083 ], [ %792, %785 ], [ %1550, %1567 ], [ %1550, %1582 ], [ %1550, %1614 ], [ %1550, %1616 ]
  %1636 = phi float [ %1551, %1545 ], [ %793, %1083 ], [ %793, %785 ], [ %1551, %1567 ], [ %1551, %1582 ], [ %1551, %1614 ], [ %1551, %1616 ]
  %1637 = phi float [ %1552, %1545 ], [ %794, %1083 ], [ %794, %785 ], [ %1552, %1567 ], [ %1552, %1582 ], [ %1552, %1614 ], [ %1552, %1616 ]
  %1638 = phi float [ %796, %1545 ], [ %796, %1083 ], [ %796, %785 ], [ %1579, %1567 ], [ %1613, %1582 ], [ %796, %1614 ], [ %1627, %1616 ]
  %1639 = phi float [ %797, %1545 ], [ %797, %1083 ], [ %797, %785 ], [ %1576, %1567 ], [ %1590, %1582 ], [ %797, %1614 ], [ %1624, %1616 ]
  %1640 = phi float [ %1553, %1545 ], [ %798, %1083 ], [ %798, %785 ], [ %1553, %1567 ], [ %1553, %1582 ], [ %1553, %1614 ], [ %1553, %1616 ]
  %1641 = icmp ult i32 %316, 3
  %1642 = add i32 %44, 56
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = add i32 %44, 60
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = or i32 %1647, %1644
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %2470, label %1650

; <label>:1650                                    ; preds = %1628
  %1651 = add i32 %44, 252
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = lshr i32 %1653, 16
  %1655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1654)  ; LegacyF16ToF32(value)
  %1656 = fmul fast float %1655, 0x3F50624DE0000000
  %1657 = add i32 %44, 104
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = lshr i32 %1659, 16
  %1661 = and i32 %1660, 255
  %1662 = lshr i32 %1659, 24
  %1663 = add i32 %44, 260
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 65535
  %1667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1666)  ; LegacyF16ToF32(value)
  %1668 = lshr i32 %1665, 16
  %1669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1668)  ; LegacyF16ToF32(value)
  %1670 = add i32 %44, 64
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = lshr i32 %1672, 22
  %1674 = shl nuw nsw i32 %1673, 5
  %1675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1674)  ; LegacyF16ToF32(value)
  %1676 = shl i32 %1672, 4
  %1677 = and i32 %1676, 32752
  %1678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1677)  ; LegacyF16ToF32(value)
  %1679 = lshr i32 %1672, 7
  %1680 = and i32 %1679, 32752
  %1681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1680)  ; LegacyF16ToF32(value)
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1684 = fmul fast float %1683, 1.000000e+03
  %1685 = fmul fast float %309, %1684
  %1686 = call float @dx.op.unary.f32(i32 22, float %1685)  ; Frc(value)
  %1687 = fadd fast float %1686, %299
  %1688 = fmul fast float %310, %1684
  %1689 = call float @dx.op.unary.f32(i32 22, float %1688)  ; Frc(value)
  %1690 = fadd fast float %1689, %301
  %1691 = fmul fast float %1656, %1684
  %1692 = call float @dx.op.unary.f32(i32 22, float %1691)  ; Frc(value)
  %1693 = fmul fast float %1692, 0x401921FB60000000
  %1694 = fadd fast float %1693, %1675
  %1695 = call float @dx.op.unary.f32(i32 13, float %1694)  ; Sin(value)
  %1696 = call float @dx.op.unary.f32(i32 12, float %1694)  ; Cos(value)
  %1697 = fsub fast float -0.000000e+00, %1695
  %1698 = fadd fast float %63, -5.000000e-01
  %1699 = fadd fast float %64, -5.000000e-01
  %1700 = fmul fast float %1667, %1698
  %1701 = fmul fast float %1669, %1699
  %1702 = fadd fast float %1700, 5.000000e-01
  %1703 = fadd fast float %1701, 5.000000e-01
  %1704 = fmul fast float %1678, %1702
  %1705 = fmul fast float %1681, %1703
  %1706 = fmul fast float %1696, %1704
  %1707 = call float @dx.op.tertiary.f32(i32 46, float %1697, float %1705, float %1706)  ; FMad(a,b,c)
  %1708 = fmul fast float %1695, %1704
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1696, float %1705, float %1708)  ; FMad(a,b,c)
  %1710 = fadd fast float %1687, %1707
  %1711 = fadd fast float %1690, %1709
  %1712 = icmp ugt i32 %1661, 1
  %1713 = icmp ugt i32 %1659, 33554431
  %1714 = or i1 %1713, %1712
  br i1 %1714, label %1715, label %1740

; <label>:1715                                    ; preds = %1650
  %1716 = add i32 %44, 212
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = lshr i32 %1718, 16
  %1720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1719)  ; LegacyF16ToF32(value)
  %1721 = fmul fast float %1683, %1720
  %1722 = call float @dx.op.unary.f32(i32 22, float %1721)  ; Frc(value)
  %1723 = mul nuw nsw i32 %1661, %1662
  %1724 = uitofp i32 %1723 to float
  %1725 = fmul fast float %1722, %1724
  %1726 = call float @dx.op.unary.f32(i32 27, float %1725)  ; Round_ni(value)
  %1727 = fptoui float %1726 to i32
  %1728 = urem i32 %1727, %1661
  %1729 = udiv i32 %1727, %1662
  %1730 = call float @dx.op.unary.f32(i32 22, float %1710)  ; Frc(value)
  %1731 = call float @dx.op.unary.f32(i32 22, float %1711)  ; Frc(value)
  %1732 = uitofp i32 %1728 to float
  %1733 = uitofp i32 %1729 to float
  %1734 = fadd fast float %1730, %1732
  %1735 = fadd fast float %1731, %1733
  %1736 = uitofp i32 %1661 to float
  %1737 = uitofp i32 %1662 to float
  %1738 = fdiv fast float %1734, %1736
  %1739 = fdiv fast float %1735, %1737
  br label %1740

; <label>:1740                                    ; preds = %1715, %1650
  %1741 = phi float [ %1738, %1715 ], [ %1710, %1650 ]
  %1742 = phi float [ %1739, %1715 ], [ %1711, %1650 ]
  %1743 = and i32 %1644, 16777216
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %1851, label %1745

; <label>:1745                                    ; preds = %1740
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1750 = fadd fast float %1747, %123
  %1751 = fadd fast float %1748, %124
  %1752 = fadd fast float %1749, %125
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1756 = icmp eq i32 %43, 65535
  br i1 %1756, label %1851, label %1757

; <label>:1757                                    ; preds = %1745
  %1758 = lshr i32 %43, 1
  %1759 = shl i32 %1758, 2
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %43, 1
  %1763 = icmp ne i32 %1762, 0
  %1764 = lshr i32 %1761, 16
  %1765 = and i32 %1761, 65535
  %1766 = select i1 %1763, i32 %1764, i32 %1765
  %1767 = icmp eq i32 %1766, 65535
  br i1 %1767, label %1847, label %1768

; <label>:1768                                    ; preds = %1757
  %1769 = mul nuw nsw i32 %1766, 40
  %1770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = add nuw nsw i32 %1769, 12
  %1775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = add nuw nsw i32 %1769, 24
  %1780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = add nuw nsw i32 %1769, 36
  %1785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = fsub fast float %1750, %1771
  %1788 = fsub fast float %1751, %1772
  %1789 = fsub fast float %1752, %1773
  %1790 = fmul fast float %1786, %1787
  %1791 = fmul fast float %1786, %1788
  %1792 = fmul fast float %1786, %1789
  %1793 = call float @dx.op.unary.f32(i32 27, float %1790)  ; Round_ni(value)
  %1794 = call float @dx.op.unary.f32(i32 27, float %1791)  ; Round_ni(value)
  %1795 = call float @dx.op.unary.f32(i32 27, float %1792)  ; Round_ni(value)
  %1796 = fadd fast float %1793, 5.000000e-01
  %1797 = fadd fast float %1794, 5.000000e-01
  %1798 = fadd fast float %1795, 5.000000e-01
  %1799 = fmul fast float %1796, %1776
  %1800 = fmul fast float %1797, %1777
  %1801 = fmul fast float %1798, %1778
  %1802 = shl i32 %43, 2
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = add i32 %1804, 0
  %1806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1807 = call float @dx.op.unary.f32(i32 22, float %1799)  ; Frc(value)
  %1808 = call float @dx.op.unary.f32(i32 22, float %1800)  ; Frc(value)
  %1809 = call float @dx.op.unary.f32(i32 22, float %1801)  ; Frc(value)
  %1810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1806, %dx.types.Handle %40, float %1807, float %1808, float %1809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1814 = fmul fast float %1811, 1.023000e+03
  %1815 = fmul fast float %1812, 1.023000e+03
  %1816 = fmul fast float %1813, 1.023000e+03
  %1817 = fadd fast float %1814, 5.000000e-01
  %1818 = fadd fast float %1815, 5.000000e-01
  %1819 = fadd fast float %1816, 5.000000e-01
  %1820 = call float @dx.op.unary.f32(i32 27, float %1817)  ; Round_ni(value)
  %1821 = call float @dx.op.unary.f32(i32 27, float %1818)  ; Round_ni(value)
  %1822 = call float @dx.op.unary.f32(i32 27, float %1819)  ; Round_ni(value)
  %1823 = fsub fast float %1790, %1793
  %1824 = fsub fast float %1791, %1794
  %1825 = fsub fast float %1792, %1795
  %1826 = fmul fast float %1823, 7.500000e-01
  %1827 = fmul fast float %1824, 7.500000e-01
  %1828 = fmul fast float %1825, 7.500000e-01
  %1829 = fadd fast float %1793, 1.250000e-01
  %1830 = fadd fast float %1829, %1826
  %1831 = fadd fast float %1830, %1820
  %1832 = fadd fast float %1794, 1.250000e-01
  %1833 = fadd fast float %1832, %1827
  %1834 = fadd fast float %1833, %1821
  %1835 = fadd fast float %1795, 1.250000e-01
  %1836 = fadd fast float %1835, %1828
  %1837 = fadd fast float %1836, %1822
  %1838 = fmul fast float %1831, %1781
  %1839 = fmul fast float %1834, %1782
  %1840 = fmul fast float %1837, %1783
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = add i32 %1842, 0
  %1844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1844, %dx.types.Handle %38, float %1838, float %1839, float %1840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  br label %1847

; <label>:1847                                    ; preds = %1768, %1757
  %1848 = phi float [ %1846, %1768 ], [ -1.000000e+00, %1757 ]
  %1849 = fadd fast float %1848, %1755
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  br label %1851

; <label>:1851                                    ; preds = %1847, %1745, %1740
  %1852 = phi float [ 1.000000e+00, %1740 ], [ %1850, %1847 ], [ %1755, %1745 ]
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = and i32 %1854, 256
  %1856 = icmp eq i32 %1855, 0
  br i1 %1856, label %1903, label %1857

; <label>:1857                                    ; preds = %1851
  %1858 = add i32 %44, 352
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = add i32 %1860, 0
  %1862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1862, %dx.types.Handle %73, float %1741, float %1742, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1864 = extractvalue %dx.types.ResRet.f32 %1863, 0
  %1865 = add i32 %44, 116
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = shl i32 %1867, 4
  %1869 = and i32 %1868, 32752
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = lshr i32 %1867, 7
  %1872 = and i32 %1871, 32752
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = fsub fast float 1.000000e+00, %1852
  %1875 = call float @dx.op.binary.f32(i32 35, float %1874, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1876 = bitcast float %1852 to i32
  %1877 = sitofp i32 %1876 to float
  %1878 = fadd fast float %1877, 0xC1CFBF8940000000
  %1879 = fmul fast float %1873, %1878
  %1880 = fadd fast float %1879, 0x41CFBF8940000000
  %1881 = fptosi float %1880 to i32
  %1882 = bitcast i32 %1881 to float
  %1883 = bitcast float %1875 to i32
  %1884 = sitofp i32 %1883 to float
  %1885 = fadd fast float %1884, 0xC1CFBF8940000000
  %1886 = fmul fast float %1885, %1873
  %1887 = fadd fast float %1886, 0x41CFBF8940000000
  %1888 = fptosi float %1887 to i32
  %1889 = bitcast i32 %1888 to float
  %1890 = fmul fast float %1882, %1870
  %1891 = fmul fast float %1889, %1870
  %1892 = fsub fast float %1875, %1890
  %1893 = fadd fast float %1891, %1875
  %1894 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1895 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1896 = fsub fast float %1864, %1894
  %1897 = fsub fast float %1895, %1894
  %1898 = bitcast float %1897 to i32
  %1899 = sub nsw i32 2129859010, %1898
  %1900 = bitcast i32 %1899 to float
  %1901 = fmul fast float %1900, %1896
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  br label %1903

; <label>:1903                                    ; preds = %1857, %1851
  %1904 = phi float [ %1902, %1857 ], [ %1852, %1851 ]
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 128
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1925, label %1909

; <label>:1909                                    ; preds = %1903
  %1910 = add i32 %44, 340
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = add i32 %1912, 0
  %1914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1914, %dx.types.Handle %73, float %1741, float %1742, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = and i32 %1918, 524288
  %1920 = icmp ne i32 %1919, 0
  %1921 = fcmp fast ogt float %1916, 0x3FE0101020000000
  %1922 = select i1 %1921, float 1.000000e+00, float 0.000000e+00
  %1923 = select i1 %1920, float %1922, float %1916
  %1924 = fmul fast float %1923, %1904
  br label %1925

; <label>:1925                                    ; preds = %1909, %1903
  %1926 = phi float [ %1924, %1909 ], [ %1904, %1903 ]
  %1927 = fcmp fast ult float %1926, 0x3F70101020000000
  br i1 %1927, label %2470, label %1928

; <label>:1928                                    ; preds = %1925
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = and i32 %1930, 16
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %2131, label %1933

; <label>:1933                                    ; preds = %1928
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = add i32 %44, 304
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = add i32 %1938, 0
  %1940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1940, %dx.types.Handle %72, float %1741, float %1742, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = extractvalue %dx.types.ResRet.f32 %1941, 1
  %1944 = extractvalue %dx.types.ResRet.f32 %1941, 2
  %1945 = extractvalue %dx.types.ResRet.f32 %1941, 3
  %1946 = and i32 %1935, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = lshr i32 %1935, 8
  %1949 = and i32 %1948, 255
  %1950 = uitofp i32 %1949 to float
  %1951 = fmul fast float %1945, %1947
  %1952 = fadd fast float %1951, %1950
  %1953 = fmul fast float %1952, 0x3F70101000000000
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = and i32 %1955, 512
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %1966, label %1958

; <label>:1958                                    ; preds = %1933
  %1959 = add i32 %44, 364
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %73, float %1741, float %1742, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  br label %1966

; <label>:1966                                    ; preds = %1958, %1933
  %1967 = phi float [ %1965, %1958 ], [ 1.000000e+00, %1933 ]
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 33554432
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %2078, label %1972

; <label>:1972                                    ; preds = %1966
  %1973 = add i32 %44, 208
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 65535
  %1977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1976)  ; LegacyF16ToF32(value)
  %1978 = lshr i32 %1975, 16
  %1979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1978)  ; LegacyF16ToF32(value)
  %1980 = add i32 %44, 212
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 65535
  %1984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1983)  ; LegacyF16ToF32(value)
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2001 = add i32 %44, 204
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = lshr i32 %2003, 24
  %2005 = uitofp i32 %2004 to float
  %2006 = fmul fast float %2005, 0x3F70101020000000
  %2007 = and i32 %2003, 255
  %2008 = uitofp i32 %2007 to float
  %2009 = fmul fast float %2008, 0x3F70101020000000
  %2010 = lshr i32 %2003, 8
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = fmul fast float %2012, 0x3F70101020000000
  %2014 = lshr i32 %2003, 16
  %2015 = and i32 %2014, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F70101020000000
  %2018 = bitcast float %1942 to i32
  %2019 = ashr i32 %2018, 1
  %2020 = sub nsw i32 1597463174, %2019
  %2021 = bitcast i32 %2020 to float
  %2022 = fmul fast float %1942, 5.000000e-01
  %2023 = fmul fast float %2021, %2021
  %2024 = fmul fast float %2023, %2022
  %2025 = fsub fast float 1.500000e+00, %2024
  %2026 = fmul fast float %2021, %1942
  %2027 = fmul fast float %2026, %2025
  %2028 = bitcast float %1943 to i32
  %2029 = ashr i32 %2028, 1
  %2030 = sub nsw i32 1597463174, %2029
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %1943, 5.000000e-01
  %2033 = fmul fast float %2031, %2031
  %2034 = fmul fast float %2033, %2032
  %2035 = fsub fast float 1.500000e+00, %2034
  %2036 = fmul fast float %2031, %1943
  %2037 = fmul fast float %2036, %2035
  %2038 = bitcast float %1944 to i32
  %2039 = ashr i32 %2038, 1
  %2040 = sub nsw i32 1597463174, %2039
  %2041 = bitcast i32 %2040 to float
  %2042 = fmul fast float %1944, 5.000000e-01
  %2043 = fmul fast float %2041, %2041
  %2044 = fmul fast float %2043, %2042
  %2045 = fsub fast float 1.500000e+00, %2044
  %2046 = fmul fast float %2041, %1944
  %2047 = fmul fast float %2046, %2045
  %2048 = fsub fast float %2027, %2009
  %2049 = fsub fast float %2037, %2013
  %2050 = fsub fast float %2047, %2017
  %2051 = fmul fast float %2048, %1977
  %2052 = fmul fast float %2049, %1979
  %2053 = fmul fast float %2050, %1984
  %2054 = fadd fast float %2051, %1992
  %2055 = fadd fast float %2052, %1996
  %2056 = fadd fast float %2053, %2000
  %2057 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2058 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2059 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2060 = fmul fast float %2057, %2057
  %2061 = fmul fast float %2058, %2058
  %2062 = fmul fast float %2059, %2059
  %2063 = fsub fast float %2060, %1942
  %2064 = fsub fast float %2061, %1943
  %2065 = fsub fast float %2062, %1944
  %2066 = fmul fast float %2063, %1967
  %2067 = fmul fast float %2064, %1967
  %2068 = fmul fast float %2065, %1967
  %2069 = fadd fast float %2066, %1942
  %2070 = fadd fast float %2067, %1943
  %2071 = fadd fast float %2068, %1944
  %2072 = fadd fast float %1989, %1953
  %2073 = fsub fast float %2072, %2006
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = fsub fast float %2074, %1953
  %2076 = fmul fast float %2075, %1967
  %2077 = fadd fast float %2076, %1953
  br label %2131

; <label>:2078                                    ; preds = %1966
  %2079 = and i32 %1969, 134217728
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %2115, label %2081

; <label>:2081                                    ; preds = %2078
  %2082 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2083 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %2084 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2085 = fadd fast float %2082, -5.000000e-01
  %2086 = fadd fast float %2083, -5.000000e-01
  %2087 = fadd fast float %2084, -5.000000e-01
  %2088 = fmul fast float %2085, %1967
  %2089 = fmul fast float %2086, %1967
  %2090 = fmul fast float %2087, %1967
  %2091 = fadd fast float %2088, 5.000000e-01
  %2092 = fadd fast float %2089, 5.000000e-01
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = call float @dx.op.unary.f32(i32 24, float %1942)  ; Sqrt(value)
  %2095 = call float @dx.op.unary.f32(i32 24, float %1943)  ; Sqrt(value)
  %2096 = call float @dx.op.unary.f32(i32 24, float %1944)  ; Sqrt(value)
  %2097 = fmul fast float %2091, 2.000000e+00
  %2098 = fsub fast float 1.000000e+00, %2097
  %2099 = fmul fast float %2098, %2094
  %2100 = fadd fast float %2099, %2097
  %2101 = fmul fast float %2100, %2094
  %2102 = fmul fast float %2092, 2.000000e+00
  %2103 = fsub fast float 1.000000e+00, %2102
  %2104 = fmul fast float %2103, %2095
  %2105 = fadd fast float %2104, %2102
  %2106 = fmul fast float %2105, %2095
  %2107 = fmul fast float %2093, 2.000000e+00
  %2108 = fsub fast float 1.000000e+00, %2107
  %2109 = fmul fast float %2108, %2096
  %2110 = fadd fast float %2109, %2107
  %2111 = fmul fast float %2110, %2096
  %2112 = fmul fast float %2101, %2101
  %2113 = fmul fast float %2106, %2106
  %2114 = fmul fast float %2111, %2111
  br label %2131

; <label>:2115                                    ; preds = %2078
  %2116 = fmul fast float %286, %286
  %2117 = fmul fast float %290, %290
  %2118 = fmul fast float %294, %294
  %2119 = fadd fast float %2116, -1.000000e+00
  %2120 = fadd fast float %2117, -1.000000e+00
  %2121 = fadd fast float %2118, -1.000000e+00
  %2122 = fmul fast float %1967, %2119
  %2123 = fmul fast float %1967, %2120
  %2124 = fmul fast float %1967, %2121
  %2125 = fadd fast float %2122, 1.000000e+00
  %2126 = fadd fast float %2123, 1.000000e+00
  %2127 = fadd fast float %2124, 1.000000e+00
  %2128 = fmul fast float %2125, %1942
  %2129 = fmul fast float %2126, %1943
  %2130 = fmul fast float %2127, %1944
  br label %2131

; <label>:2131                                    ; preds = %2115, %2081, %1972, %1928
  %2132 = phi float [ %2077, %1972 ], [ %1953, %2081 ], [ %1953, %2115 ], [ 0x3FA23C0BE0000000, %1928 ]
  %2133 = phi float [ %2069, %1972 ], [ %2112, %2081 ], [ %2128, %2115 ], [ 1.000000e+00, %1928 ]
  %2134 = phi float [ %2070, %1972 ], [ %2113, %2081 ], [ %2129, %2115 ], [ 1.000000e+00, %1928 ]
  %2135 = phi float [ %2071, %1972 ], [ %2114, %2081 ], [ %2130, %2115 ], [ 1.000000e+00, %1928 ]
  %2136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.i32 %2136, 1
  %2138 = and i32 %2137, 1
  %2139 = icmp ne i32 %2138, 0
  %2140 = add i32 %44, 292
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 32
  %2144 = icmp ne i32 %2143, 0
  %2145 = and i1 %2139, %2144
  %2146 = select i1 %2145, float 1.000000e+00, float %2133
  %2147 = select i1 %2145, float 0x3FD3333340000000, float %2134
  %2148 = select i1 %2145, float 0x3FD3333340000000, float %2135
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = and i32 %2150, 32
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2225, label %2153

; <label>:2153                                    ; preds = %2131
  %2154 = add i32 %44, 108
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %44, 316
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %2159, 0
  %2161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2161, %dx.types.Handle %72, float %1741, float %1742, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 0
  %2164 = extractvalue %dx.types.ResRet.f32 %2162, 1
  %2165 = extractvalue %dx.types.ResRet.f32 %2162, 2
  %2166 = extractvalue %dx.types.ResRet.f32 %2162, 3
  %2167 = and i32 %2156, 255
  %2168 = uitofp i32 %2167 to float
  %2169 = lshr i32 %2156, 8
  %2170 = and i32 %2169, 255
  %2171 = uitofp i32 %2170 to float
  %2172 = lshr i32 %2156, 16
  %2173 = and i32 %2172, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = fmul fast float %2174, 0x3F70101000000000
  %2176 = fmul fast float %2163, %2168
  %2177 = fadd fast float %2176, %2171
  %2178 = fmul fast float %2177, 0x3F70101000000000
  %2179 = fadd fast float %2164, -5.000000e-01
  %2180 = fadd fast float %2166, -5.000000e-01
  %2181 = fmul fast float %2179, %2175
  %2182 = fmul fast float %2180, %2175
  %2183 = fadd fast float %2181, 5.000000e-01
  %2184 = fadd fast float %2182, 5.000000e-01
  %2185 = fmul fast float %2183, 2.000000e+00
  %2186 = fadd fast float %2185, -1.000000e+00
  %2187 = fmul fast float %2184, 2.000000e+00
  %2188 = fadd fast float %2187, -1.000000e+00
  %2189 = fadd fast float %2186, %2188
  %2190 = fmul fast float %2189, 5.000000e-01
  %2191 = fsub fast float %2186, %2188
  %2192 = fmul fast float %2191, 5.000000e-01
  %2193 = call float @dx.op.unary.f32(i32 6, float %2190)  ; FAbs(value)
  %2194 = fsub fast float 1.000000e+00, %2193
  %2195 = call float @dx.op.unary.f32(i32 6, float %2192)  ; FAbs(value)
  %2196 = fsub fast float %2194, %2195
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2192, float %2196, float %2190, float %2192, float %2196)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = call float @dx.op.unary.f32(i32 25, float %2197)  ; Rsqrt(value)
  %2199 = fmul fast float %2190, %2198
  %2200 = fmul fast float %2192, %2198
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 67108864
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2221, label %2205

; <label>:2205                                    ; preds = %2153
  %2206 = add i32 %44, 248
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 65535
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 65535
  %2214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2213)  ; LegacyF16ToF32(value)
  %2215 = lshr i32 %2208, 16
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = fsub fast float %2178, %2216
  %2218 = fmul fast float %2217, %2210
  %2219 = fadd fast float %2218, %2214
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  br label %2221

; <label>:2221                                    ; preds = %2205, %2153
  %2222 = phi float [ %2220, %2205 ], [ %2178, %2153 ]
  %2223 = call float @dx.op.dot2.f32(i32 54, float %2199, float %2200, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %2224 = call float @dx.op.dot2.f32(i32 54, float %2199, float %2200, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %2225

; <label>:2225                                    ; preds = %2221, %2131
  %2226 = phi float [ %2222, %2221 ], [ 0x3FD6666660000000, %2131 ]
  %2227 = phi float [ %2223, %2221 ], [ 0.000000e+00, %2131 ]
  %2228 = phi float [ %2224, %2221 ], [ 0.000000e+00, %2131 ]
  %2229 = phi float [ %2165, %2221 ], [ 1.000000e+00, %2131 ]
  %2230 = add i32 %44, 160
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = lshr i32 %2232, 22
  %2234 = shl nuw nsw i32 %2233, 5
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = and i32 %2237, 64
  %2239 = icmp eq i32 %2238, 0
  br i1 %2239, label %2273, label %2240

; <label>:2240                                    ; preds = %2225
  %2241 = add i32 %44, 328
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = add i32 %2243, 0
  %2245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 131072
  %2249 = icmp eq i32 %2248, 0
  %2250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2245, %dx.types.Handle %72, float %1741, float %1742, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2251 = extractvalue %dx.types.ResRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.ResRet.f32 %2250, 1
  %2253 = extractvalue %dx.types.ResRet.f32 %2250, 2
  %2254 = fmul fast float %2251, %274
  %2255 = fmul fast float %2252, %277
  %2256 = fmul fast float %2253, %280
  br i1 %2249, label %2263, label %2257

; <label>:2257                                    ; preds = %2240
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = fmul fast float %2259, %2254
  %2261 = fmul fast float %2259, %2255
  %2262 = fmul fast float %2259, %2256
  br label %2263

; <label>:2263                                    ; preds = %2257, %2240
  %2264 = phi float [ %2260, %2257 ], [ %2254, %2240 ]
  %2265 = phi float [ %2261, %2257 ], [ %2255, %2240 ]
  %2266 = phi float [ %2262, %2257 ], [ %2256, %2240 ]
  %2267 = fmul fast float %2264, %2235
  %2268 = select i1 %194, float %2267, float %2264
  %2269 = call float @dx.op.dot3.f32(i32 55, float %2268, float %2265, float %2266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = select i1 %194, float 0.000000e+00, float %2264
  %2271 = select i1 %194, float %2269, float %2265
  %2272 = select i1 %194, float 0.000000e+00, float %2266
  br label %2273

; <label>:2273                                    ; preds = %2263, %2225
  %2274 = phi float [ %2270, %2263 ], [ 0.000000e+00, %2225 ]
  %2275 = phi float [ %2271, %2263 ], [ 0.000000e+00, %2225 ]
  %2276 = phi float [ %2272, %2263 ], [ 0.000000e+00, %2225 ]
  %2277 = add i32 %44, 112
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = lshr i32 %2279, 8
  %2283 = and i32 %2282, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = call float @dx.op.dot3.f32(i32 55, float %2146, float %2147, float %2148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2286 = fmul fast float %2284, %2285
  %2287 = fadd fast float %2286, %2281
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  br i1 %1641, label %2290, label %2298

; <label>:2290                                    ; preds = %2273
  %2291 = fsub fast float 1.000000e+00, %1926
  %2292 = fmul fast float %2291, %1631
  %2293 = fmul fast float %2291, %1632
  %2294 = fmul fast float %2291, %1633
  %2295 = fmul fast float %2291, %1634
  %2296 = fmul fast float %2291, %1635
  %2297 = fmul fast float %2291, %1636
  br label %2298

; <label>:2298                                    ; preds = %2290, %2273
  %2299 = phi float [ %2292, %2290 ], [ %1631, %2273 ]
  %2300 = phi float [ %2293, %2290 ], [ %1632, %2273 ]
  %2301 = phi float [ %2294, %2290 ], [ %1633, %2273 ]
  %2302 = phi float [ %2295, %2290 ], [ %1634, %2273 ]
  %2303 = phi float [ %2296, %2290 ], [ %1635, %2273 ]
  %2304 = phi float [ %2297, %2290 ], [ %1636, %2273 ]
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 3
  %2308 = icmp eq i32 %2307, 3
  br i1 %2308, label %2387, label %2309

; <label>:2309                                    ; preds = %2298
  %2310 = and i32 %2306, 16
  %2311 = icmp ne i32 %2310, 0
  %2312 = select i1 %2311, float %1926, float 0.000000e+00
  %2313 = icmp eq i32 %2307, 0
  br i1 %2313, label %2314, label %2342

; <label>:2314                                    ; preds = %2309
  %2315 = and i32 %2306, 64
  %2316 = icmp ne i32 %2315, 0
  %2317 = select i1 %2316, float %1926, float 0.000000e+00
  %2318 = fsub fast float %2146, %2299
  %2319 = fsub fast float %2147, %2300
  %2320 = fsub fast float %2148, %2301
  %2321 = fmul fast float %2312, %2318
  %2322 = fmul fast float %2312, %2319
  %2323 = fmul fast float %2312, %2320
  %2324 = fadd fast float %2321, %2299
  %2325 = fadd fast float %2322, %2300
  %2326 = fadd fast float %2323, %2301
  %2327 = fsub fast float %2132, %1637
  %2328 = fmul fast float %2312, %2327
  %2329 = fadd fast float %2328, %1637
  %2330 = fsub fast float %2274, %2302
  %2331 = fsub fast float %2275, %2303
  %2332 = fsub fast float %2276, %2304
  %2333 = fmul fast float %2317, %2330
  %2334 = fmul fast float %2317, %2331
  %2335 = fmul fast float %2317, %2332
  %2336 = fadd fast float %2333, %2302
  %2337 = fadd fast float %2334, %2303
  %2338 = fadd fast float %2335, %2304
  %2339 = fsub fast float %2289, %1640
  %2340 = fmul fast float %2312, %2339
  %2341 = fadd fast float %2340, %1640
  br label %2387

; <label>:2342                                    ; preds = %2309
  %2343 = icmp eq i32 %2307, 1
  br i1 %2343, label %2344, label %2357

; <label>:2344                                    ; preds = %2342
  %2345 = fadd fast float %2146, -1.000000e+00
  %2346 = fadd fast float %2147, -1.000000e+00
  %2347 = fadd fast float %2148, -1.000000e+00
  %2348 = fmul fast float %2312, %2345
  %2349 = fmul fast float %2312, %2346
  %2350 = fmul fast float %2312, %2347
  %2351 = fadd fast float %2348, 1.000000e+00
  %2352 = fadd fast float %2349, 1.000000e+00
  %2353 = fadd fast float %2350, 1.000000e+00
  %2354 = fmul fast float %2351, %2299
  %2355 = fmul fast float %2352, %2300
  %2356 = fmul fast float %2353, %2301
  br label %2387

; <label>:2357                                    ; preds = %2342
  %2358 = icmp eq i32 %2307, 2
  br i1 %2358, label %2359, label %2387

; <label>:2359                                    ; preds = %2357
  %2360 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %2361 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2362 = call float @dx.op.unary.f32(i32 24, float %2148)  ; Sqrt(value)
  %2363 = fadd fast float %2360, -5.000000e-01
  %2364 = fadd fast float %2361, -5.000000e-01
  %2365 = fadd fast float %2362, -5.000000e-01
  %2366 = fmul fast float %2363, %2312
  %2367 = fmul fast float %2364, %2312
  %2368 = fmul fast float %2365, %2312
  %2369 = fadd fast float %2366, 5.000000e-01
  %2370 = fadd fast float %2367, 5.000000e-01
  %2371 = fadd fast float %2368, 5.000000e-01
  %2372 = fmul fast float %2369, 2.000000e+00
  %2373 = fsub fast float 1.000000e+00, %2372
  %2374 = fmul fast float %2373, %2299
  %2375 = fadd fast float %2374, %2372
  %2376 = fmul fast float %2375, %2299
  %2377 = fmul fast float %2370, 2.000000e+00
  %2378 = fsub fast float 1.000000e+00, %2377
  %2379 = fmul fast float %2378, %2300
  %2380 = fadd fast float %2379, %2377
  %2381 = fmul fast float %2380, %2300
  %2382 = fmul fast float %2371, 2.000000e+00
  %2383 = fsub fast float 1.000000e+00, %2382
  %2384 = fmul fast float %2383, %2301
  %2385 = fadd fast float %2384, %2382
  %2386 = fmul fast float %2385, %2301
  br label %2387

; <label>:2387                                    ; preds = %2359, %2357, %2344, %2314, %2298
  %2388 = phi float [ %2299, %2298 ], [ %2376, %2359 ], [ %2299, %2357 ], [ %2354, %2344 ], [ %2324, %2314 ]
  %2389 = phi float [ %2300, %2298 ], [ %2381, %2359 ], [ %2300, %2357 ], [ %2355, %2344 ], [ %2325, %2314 ]
  %2390 = phi float [ %2301, %2298 ], [ %2386, %2359 ], [ %2301, %2357 ], [ %2356, %2344 ], [ %2326, %2314 ]
  %2391 = phi float [ %2302, %2298 ], [ %2302, %2359 ], [ %2302, %2357 ], [ %2302, %2344 ], [ %2336, %2314 ]
  %2392 = phi float [ %2303, %2298 ], [ %2303, %2359 ], [ %2303, %2357 ], [ %2303, %2344 ], [ %2337, %2314 ]
  %2393 = phi float [ %2304, %2298 ], [ %2304, %2359 ], [ %2304, %2357 ], [ %2304, %2344 ], [ %2338, %2314 ]
  %2394 = phi float [ %1637, %2298 ], [ %1637, %2359 ], [ %1637, %2357 ], [ %1637, %2344 ], [ %2329, %2314 ]
  %2395 = phi float [ %1640, %2298 ], [ %1640, %2359 ], [ %1640, %2357 ], [ %1640, %2344 ], [ %2341, %2314 ]
  %2396 = and i32 %2306, 12
  %2397 = icmp eq i32 %2396, 12
  br i1 %2397, label %2470, label %2398

; <label>:2398                                    ; preds = %2387
  %2399 = and i32 %2306, 2097184
  %2400 = icmp eq i32 %2399, 2097184
  %2401 = select i1 %2400, float %1926, float 0.000000e+00
  %2402 = and i32 %2306, 4194336
  %2403 = icmp eq i32 %2402, 4194336
  %2404 = select i1 %2403, float %1926, float 0.000000e+00
  %2405 = and i32 %2306, 8388640
  %2406 = icmp eq i32 %2405, 8388640
  %2407 = select i1 %2406, float %1926, float 0.000000e+00
  %2408 = icmp eq i32 %2396, 0
  br i1 %2408, label %2409, label %2422

; <label>:2409                                    ; preds = %2398
  %2410 = fsub fast float %2227, %1629
  %2411 = fsub fast float %2228, %1630
  %2412 = fmul fast float %2401, %2410
  %2413 = fmul fast float %2401, %2411
  %2414 = fadd fast float %2412, %1629
  %2415 = fadd fast float %2413, %1630
  %2416 = fsub fast float %2229, %1639
  %2417 = fmul fast float %2404, %2416
  %2418 = fadd fast float %2417, %1639
  %2419 = fsub fast float %2226, %1638
  %2420 = fmul fast float %2407, %2419
  %2421 = fadd fast float %2420, %1638
  br label %2470

; <label>:2422                                    ; preds = %2398
  %2423 = icmp eq i32 %2396, 4
  br i1 %2423, label %2424, label %2456

; <label>:2424                                    ; preds = %2422
  %2425 = fmul fast float %2401, %2227
  %2426 = fmul fast float %2401, %2228
  %2427 = fadd fast float %2425, %1629
  %2428 = fadd fast float %2426, %1630
  %2429 = call float @dx.op.binary.f32(i32 36, float %1639, float %2229)  ; FMin(a,b)
  %2430 = fsub fast float %2429, %1639
  %2431 = fmul fast float %2430, %2404
  %2432 = fadd fast float %2431, %1639
  %2433 = fadd fast float %2226, %1638
  %2434 = fmul fast float %2433, 0x3FF337FAE0000000
  %2435 = fmul fast float %1638, %1638
  %2436 = fmul fast float %2226, %2226
  %2437 = fadd fast float %2436, %2435
  %2438 = fmul fast float %2437, 0x3FE5152B00000000
  %2439 = fmul fast float %1638, 0xBFCC1F85E0000000
  %2440 = fmul fast float %2439, %2226
  %2441 = fadd fast float %2440, 0xBFE1363700000000
  %2442 = fadd fast float %2441, %2434
  %2443 = fsub fast float %2442, %2438
  %2444 = fmul fast float %2433, 0x3FBA6F0D00000000
  %2445 = fmul fast float %2437, 0x3FD0432880000000
  %2446 = fmul fast float %1638, 0xBFEF110800000000
  %2447 = fmul fast float %2446, %2226
  %2448 = fadd fast float %2447, 1.000000e+00
  %2449 = fsub fast float %2448, %2444
  %2450 = fadd fast float %2449, %2445
  %2451 = fdiv fast float %2443, %2450
  %2452 = call float @dx.op.unary.f32(i32 7, float %2451)  ; Saturate(value)
  %2453 = fsub fast float %2452, %1638
  %2454 = fmul fast float %2453, %2407
  %2455 = fadd fast float %2454, %1638
  br label %2470

; <label>:2456                                    ; preds = %2422
  %2457 = icmp eq i32 %2396, 8
  br i1 %2457, label %2458, label %2470

; <label>:2458                                    ; preds = %2456
  %2459 = fmul fast float %2401, %2227
  %2460 = fmul fast float %2401, %2228
  %2461 = fadd fast float %2459, %1629
  %2462 = fadd fast float %2460, %1630
  %2463 = call float @dx.op.binary.f32(i32 36, float %1639, float %2229)  ; FMin(a,b)
  %2464 = fsub fast float %2463, %1639
  %2465 = fmul fast float %2464, %2404
  %2466 = fadd fast float %2465, %1639
  %2467 = fsub fast float %2226, %1638
  %2468 = fmul fast float %2407, %2467
  %2469 = fadd fast float %2468, %1638
  br label %2470

; <label>:2470                                    ; preds = %2458, %2456, %2424, %2409, %2387, %1925, %1628
  %2471 = phi float [ %1629, %2387 ], [ %1629, %1925 ], [ %1629, %1628 ], [ %2414, %2409 ], [ %2427, %2424 ], [ %1629, %2456 ], [ %2461, %2458 ]
  %2472 = phi float [ %1630, %2387 ], [ %1630, %1925 ], [ %1630, %1628 ], [ %2415, %2409 ], [ %2428, %2424 ], [ %1630, %2456 ], [ %2462, %2458 ]
  %2473 = phi float [ %2388, %2387 ], [ %1631, %1925 ], [ %1631, %1628 ], [ %2388, %2409 ], [ %2388, %2424 ], [ %2388, %2456 ], [ %2388, %2458 ]
  %2474 = phi float [ %2389, %2387 ], [ %1632, %1925 ], [ %1632, %1628 ], [ %2389, %2409 ], [ %2389, %2424 ], [ %2389, %2456 ], [ %2389, %2458 ]
  %2475 = phi float [ %2390, %2387 ], [ %1633, %1925 ], [ %1633, %1628 ], [ %2390, %2409 ], [ %2390, %2424 ], [ %2390, %2456 ], [ %2390, %2458 ]
  %2476 = phi float [ %2391, %2387 ], [ %1634, %1925 ], [ %1634, %1628 ], [ %2391, %2409 ], [ %2391, %2424 ], [ %2391, %2456 ], [ %2391, %2458 ]
  %2477 = phi float [ %2392, %2387 ], [ %1635, %1925 ], [ %1635, %1628 ], [ %2392, %2409 ], [ %2392, %2424 ], [ %2392, %2456 ], [ %2392, %2458 ]
  %2478 = phi float [ %2393, %2387 ], [ %1636, %1925 ], [ %1636, %1628 ], [ %2393, %2409 ], [ %2393, %2424 ], [ %2393, %2456 ], [ %2393, %2458 ]
  %2479 = phi float [ %2394, %2387 ], [ %1637, %1925 ], [ %1637, %1628 ], [ %2394, %2409 ], [ %2394, %2424 ], [ %2394, %2456 ], [ %2394, %2458 ]
  %2480 = phi float [ %1638, %2387 ], [ %1638, %1925 ], [ %1638, %1628 ], [ %2421, %2409 ], [ %2455, %2424 ], [ %1638, %2456 ], [ %2469, %2458 ]
  %2481 = phi float [ %1639, %2387 ], [ %1639, %1925 ], [ %1639, %1628 ], [ %2418, %2409 ], [ %2432, %2424 ], [ %1639, %2456 ], [ %2466, %2458 ]
  %2482 = phi float [ %2395, %2387 ], [ %1640, %1925 ], [ %1640, %1628 ], [ %2395, %2409 ], [ %2395, %2424 ], [ %2395, %2456 ], [ %2395, %2458 ]
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 0
  %2485 = call float @dx.op.dot2.f32(i32 54, float %2471, float %2472, float %2471, float %2472)  ; Dot2(ax,ay,bx,by)
  %2486 = fmul fast float %2485, 0x3FE3333340000000
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2472, float %2487, float %2471, float %2472, float %2487)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = call float @dx.op.unary.f32(i32 25, float %2488)  ; Rsqrt(value)
  %2490 = fmul fast float %2489, %2471
  %2491 = fmul fast float %2489, %2472
  %2492 = fmul fast float %2487, %2489
  %2493 = fmul fast float %2492, %57
  %2494 = fmul fast float %2492, %58
  %2495 = fmul fast float %2492, %59
  %2496 = fmul fast float %2490, %53
  %2497 = fmul fast float %2490, %54
  %2498 = fmul fast float %2490, %55
  %2499 = fadd fast float %2493, %2496
  %2500 = fadd fast float %2494, %2497
  %2501 = fadd fast float %2495, %2498
  %2502 = fmul fast float %2491, %87
  %2503 = fmul fast float %2491, %88
  %2504 = fmul fast float %2491, %89
  %2505 = fadd fast float %2499, %2502
  %2506 = fadd fast float %2500, %2503
  %2507 = fadd fast float %2501, %2504
  %2508 = call float @dx.op.dot3.f32(i32 55, float %2505, float %2506, float %2507, float %2505, float %2506, float %2507)  ; Dot3(ax,ay,az,bx,by,bz)
  %2509 = call float @dx.op.unary.f32(i32 25, float %2508)  ; Rsqrt(value)
  %2510 = fmul fast float %2505, %2509
  %2511 = fmul fast float %2506, %2509
  %2512 = fmul fast float %2507, %2509
  %2513 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %2514 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %2515 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %2516 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %2517 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %2518 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %2519 = fadd fast float %2513, %123
  %2520 = fadd fast float %2514, %124
  %2521 = fadd fast float %2515, %125
  %2522 = fadd fast float %2516, %123
  %2523 = fadd fast float %2517, %124
  %2524 = fadd fast float %2518, %125
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.CBufRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.CBufRet.f32 %2525, 2
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 2
  %2531 = extractvalue %dx.types.CBufRet.f32 %2529, 3
  %2532 = fmul fast float %2526, %76
  %2533 = fmul fast float %2532, %2530
  %2534 = fmul fast float %2527, %77
  %2535 = fmul fast float %2534, %2531
  %2536 = fptoui float %2533 to i32
  %2537 = fptoui float %2535 to i32
  %2538 = fadd fast float %2526, -1.000000e+00
  %2539 = fadd fast float %2527, -1.000000e+00
  %2540 = fptoui float %2538 to i32
  %2541 = fptoui float %2539 to i32
  %2542 = call i32 @dx.op.binary.i32(i32 40, i32 %2536, i32 %2540)  ; UMin(a,b)
  %2543 = call i32 @dx.op.binary.i32(i32 40, i32 %2537, i32 %2541)  ; UMin(a,b)
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 3
  %2547 = fmul fast float %2545, %71
  %2548 = fsub fast float %2547, %2546
  %2549 = fadd fast float %2528, -1.000000e+00
  %2550 = call float @dx.op.binary.f32(i32 36, float %2548, float %2549)  ; FMin(a,b)
  %2551 = fptoui float %2550 to i32
  %2552 = fptoui float %2526 to i32
  %2553 = fptoui float %2527 to i32
  %2554 = mul i32 %2551, %2553
  %2555 = add i32 %2554, %2543
  %2556 = mul i32 %2555, %2552
  %2557 = add i32 %2556, %2542
  %2558 = shl i32 %2557, 2
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 1023
  %2562 = lshr i32 %2560, 10
  %2563 = icmp eq i32 %2561, 0
  br i1 %2563, label %2989, label %2564

; <label>:2564                                    ; preds = %2470
  %2565 = and i32 %2560, 1023
  br label %2566

; <label>:2566                                    ; preds = %2692, %2564
  %2567 = phi float [ %2693, %2692 ], [ 0.000000e+00, %2564 ]
  %2568 = phi float [ %2694, %2692 ], [ %2484, %2564 ]
  %2569 = phi float [ %2695, %2692 ], [ %2482, %2564 ]
  %2570 = phi float [ %2696, %2692 ], [ 0.000000e+00, %2564 ]
  %2571 = phi float [ %2697, %2692 ], [ 0.000000e+00, %2564 ]
  %2572 = phi float [ %2698, %2692 ], [ %2476, %2564 ]
  %2573 = phi float [ %2699, %2692 ], [ %2477, %2564 ]
  %2574 = phi float [ %2700, %2692 ], [ %2478, %2564 ]
  %2575 = phi float [ %2701, %2692 ], [ %2510, %2564 ]
  %2576 = phi float [ %2702, %2692 ], [ %2511, %2564 ]
  %2577 = phi float [ %2703, %2692 ], [ %2512, %2564 ]
  %2578 = phi float [ %2704, %2692 ], [ %2481, %2564 ]
  %2579 = phi float [ %2705, %2692 ], [ %2480, %2564 ]
  %2580 = phi float [ %2706, %2692 ], [ 0.000000e+00, %2564 ]
  %2581 = phi float [ %2707, %2692 ], [ %2479, %2564 ]
  %2582 = phi float [ %2708, %2692 ], [ %2473, %2564 ]
  %2583 = phi float [ %2709, %2692 ], [ %2474, %2564 ]
  %2584 = phi float [ %2710, %2692 ], [ %2475, %2564 ]
  %2585 = phi i32 [ %2642, %2692 ], [ 0, %2564 ]
  %2586 = add nuw nsw i32 %2585, %2562
  %2587 = shl i32 %2586, 2
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = shl i32 %2589, 8
  %2591 = or i32 %2590, 48
  %2592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.ResRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.ResRet.f32 %2592, 2
  %2596 = extractvalue %dx.types.ResRet.f32 %2592, 3
  %2597 = or i32 %2590, 64
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = extractvalue %dx.types.ResRet.i32 %2598, 1
  %2601 = or i32 %2590, 80
  %2602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 2
  %2604 = extractvalue %dx.types.ResRet.f32 %2602, 3
  %2605 = or i32 %2590, 96
  %2606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.ResRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.ResRet.f32 %2606, 2
  %2610 = extractvalue %dx.types.ResRet.f32 %2606, 3
  %2611 = or i32 %2590, 112
  %2612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2614 = or i32 %2590, 128
  %2615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.ResRet.f32 %2615, 1
  %2618 = extractvalue %dx.types.ResRet.f32 %2615, 2
  %2619 = extractvalue %dx.types.ResRet.f32 %2615, 3
  %2620 = or i32 %2590, 144
  %2621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.ResRet.f32 %2621, 2
  %2625 = extractvalue %dx.types.ResRet.f32 %2621, 3
  %2626 = or i32 %2590, 160
  %2627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.ResRet.f32 %2627, 3
  %2632 = or i32 %2590, 192
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = or i32 %2590, 208
  %2636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  %2638 = or i32 %2590, 248
  %2639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.ResRet.f32 %2639, 1
  %2642 = add nuw nsw i32 %2585, 1
  %2643 = bitcast float %2596 to i32
  %2644 = and i32 %2643, 2560
  %2645 = icmp eq i32 %2644, 0
  %2646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.ResRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.ResRet.f32 %2646, 2
  %2650 = extractvalue %dx.types.ResRet.f32 %2646, 3
  %2651 = call float @dx.op.dot4.f32(i32 56, float %2647, float %2648, float %2649, float %2650, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2652 = or i32 %2590, 16
  %2653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.ResRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.ResRet.f32 %2653, 2
  %2657 = extractvalue %dx.types.ResRet.f32 %2653, 3
  %2658 = call float @dx.op.dot4.f32(i32 56, float %2654, float %2655, float %2656, float %2657, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2659 = or i32 %2590, 32
  %2660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.f32 %2660, 0
  %2662 = extractvalue %dx.types.ResRet.f32 %2660, 1
  %2663 = extractvalue %dx.types.ResRet.f32 %2660, 2
  %2664 = extractvalue %dx.types.ResRet.f32 %2660, 3
  %2665 = call float @dx.op.dot4.f32(i32 56, float %2661, float %2662, float %2663, float %2664, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2666 = call float @dx.op.unary.f32(i32 27, float %2651)  ; Round_ni(value)
  %2667 = call float @dx.op.unary.f32(i32 6, float %2666)  ; FAbs(value)
  %2668 = call float @dx.op.unary.f32(i32 27, float %2658)  ; Round_ni(value)
  %2669 = call float @dx.op.unary.f32(i32 6, float %2668)  ; FAbs(value)
  %2670 = call float @dx.op.unary.f32(i32 6, float %2665)  ; FAbs(value)
  %2671 = call float @dx.op.unary.f32(i32 27, float %2670)  ; Round_ni(value)
  %2672 = fadd fast float %2669, %2667
  %2673 = fadd fast float %2672, %2671
  %2674 = fcmp fast oeq float %2673, 0.000000e+00
  %2675 = call float @dx.op.dot4.f32(i32 56, float %2647, float %2648, float %2649, float %2650, float %2519, float %2520, float %2521, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2676 = call float @dx.op.dot4.f32(i32 56, float %2654, float %2655, float %2656, float %2657, float %2519, float %2520, float %2521, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2677 = call float @dx.op.dot4.f32(i32 56, float %2647, float %2648, float %2649, float %2650, float %2522, float %2523, float %2524, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2678 = call float @dx.op.dot4.f32(i32 56, float %2654, float %2655, float %2656, float %2657, float %2522, float %2523, float %2524, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2679 = fsub fast float %2675, %2651
  %2680 = fsub fast float %2677, %2651
  %2681 = fsub fast float %2676, %2658
  %2682 = fsub fast float %2678, %2658
  %2683 = call float @dx.op.dot3.f32(i32 55, float %2593, float %2594, float %2595, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 2
  %2686 = fadd fast float %2685, %2683
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2684, 0
  %2689 = fcmp fast ogt float %2687, %2688
  %2690 = and i1 %2674, %2689
  %2691 = and i1 %2645, %2690
  br i1 %2691, label %2712, label %2692

; <label>:2692                                    ; preds = %2975, %2793, %2712, %2566
  %2693 = phi float [ %2567, %2712 ], [ %2796, %2793 ], [ %2796, %2975 ], [ %2567, %2566 ]
  %2694 = phi float [ %2568, %2712 ], [ %2568, %2793 ], [ %2950, %2975 ], [ %2568, %2566 ]
  %2695 = phi float [ %2569, %2712 ], [ %2569, %2793 ], [ %2948, %2975 ], [ %2569, %2566 ]
  %2696 = phi float [ %2570, %2712 ], [ %2570, %2793 ], [ %2920, %2975 ], [ %2570, %2566 ]
  %2697 = phi float [ %2571, %2712 ], [ %2571, %2793 ], [ %2918, %2975 ], [ %2571, %2566 ]
  %2698 = phi float [ %2572, %2712 ], [ %2572, %2793 ], [ %2985, %2975 ], [ %2572, %2566 ]
  %2699 = phi float [ %2573, %2712 ], [ %2573, %2793 ], [ %2986, %2975 ], [ %2573, %2566 ]
  %2700 = phi float [ %2574, %2712 ], [ %2574, %2793 ], [ %2987, %2975 ], [ %2574, %2566 ]
  %2701 = phi float [ %2575, %2712 ], [ %2575, %2793 ], [ %2899, %2975 ], [ %2575, %2566 ]
  %2702 = phi float [ %2576, %2712 ], [ %2576, %2793 ], [ %2900, %2975 ], [ %2576, %2566 ]
  %2703 = phi float [ %2577, %2712 ], [ %2577, %2793 ], [ %2901, %2975 ], [ %2577, %2566 ]
  %2704 = phi float [ %2578, %2712 ], [ %2578, %2793 ], [ %2928, %2975 ], [ %2578, %2566 ]
  %2705 = phi float [ %2579, %2712 ], [ %2579, %2793 ], [ %2925, %2975 ], [ %2579, %2566 ]
  %2706 = phi float [ %2580, %2712 ], [ %2580, %2793 ], [ %2922, %2975 ], [ %2580, %2566 ]
  %2707 = phi float [ %2581, %2712 ], [ %2581, %2793 ], [ %2916, %2975 ], [ %2581, %2566 ]
  %2708 = phi float [ %2582, %2712 ], [ %2582, %2793 ], [ %2911, %2975 ], [ %2582, %2566 ]
  %2709 = phi float [ %2583, %2712 ], [ %2583, %2793 ], [ %2912, %2975 ], [ %2583, %2566 ]
  %2710 = phi float [ %2584, %2712 ], [ %2584, %2793 ], [ %2913, %2975 ], [ %2584, %2566 ]
  %2711 = icmp eq i32 %2642, %2565
  br i1 %2711, label %2988, label %2566

; <label>:2712                                    ; preds = %2566
  %2713 = extractvalue %dx.types.ResRet.f32 %2612, 3
  %2714 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2715 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2716 = extractvalue %dx.types.ResRet.f32 %2602, 1
  %2717 = extractvalue %dx.types.ResRet.f32 %2602, 0
  %2718 = extractvalue %dx.types.ResRet.i32 %2598, 3
  %2719 = extractvalue %dx.types.ResRet.i32 %2598, 2
  %2720 = add i32 %2718, 0
  %2721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2720, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2721, %dx.types.Handle %2722, float %2651, float %2658, float undef, float undef, i32 0, i32 0, i32 undef, float %2679, float %2681, float undef, float %2680, float %2682, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  %2725 = fmul fast float %2724, %2717
  %2726 = fadd fast float %2725, %2716
  %2727 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2728 = fmul fast float %2651, %2607
  %2729 = call float @dx.op.tertiary.f32(i32 46, float %2608, float %2658, float %2728)  ; FMad(a,b,c)
  %2730 = fadd fast float %2729, %2715
  %2731 = fmul fast float %2651, %2609
  %2732 = call float @dx.op.tertiary.f32(i32 46, float %2610, float %2658, float %2731)  ; FMad(a,b,c)
  %2733 = fadd fast float %2732, %2714
  %2734 = fmul fast float %2679, %2607
  %2735 = call float @dx.op.tertiary.f32(i32 46, float %2608, float %2681, float %2734)  ; FMad(a,b,c)
  %2736 = fmul fast float %2679, %2609
  %2737 = call float @dx.op.tertiary.f32(i32 46, float %2610, float %2681, float %2736)  ; FMad(a,b,c)
  %2738 = fmul fast float %2680, %2607
  %2739 = call float @dx.op.tertiary.f32(i32 46, float %2608, float %2682, float %2738)  ; FMad(a,b,c)
  %2740 = fmul fast float %2680, %2609
  %2741 = call float @dx.op.tertiary.f32(i32 46, float %2610, float %2682, float %2740)  ; FMad(a,b,c)
  %2742 = add i32 %2719, 0
  %2743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2744 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2743, %dx.types.Handle %2722, float %2730, float %2733, float undef, float undef, i32 0, i32 0, i32 undef, float %2735, float %2737, float undef, float %2739, float %2741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = and i32 %2643, 1024
  %2747 = icmp ne i32 %2746, 0
  %2748 = fcmp fast ogt float %2745, 0x3FE0101020000000
  %2749 = uitofp i1 %2748 to float
  %2750 = select i1 %2747, float %2749, float %2745
  %2751 = and i32 %2643, 8192
  %2752 = icmp ne i32 %2751, 0
  %2753 = select i1 %2752, float %2713, float 1.000000e+00
  %2754 = fmul fast float %2651, 2.000000e+00
  %2755 = fadd fast float %2754, -1.000000e+00
  %2756 = call float @dx.op.unary.f32(i32 6, float %2755)  ; FAbs(value)
  %2757 = fmul fast float %2756, %2640
  %2758 = fsub fast float %2757, %2640
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = fmul fast float %2658, 2.000000e+00
  %2761 = fadd fast float %2760, -1.000000e+00
  %2762 = call float @dx.op.unary.f32(i32 6, float %2761)  ; FAbs(value)
  %2763 = fmul fast float %2762, %2641
  %2764 = fsub fast float %2763, %2641
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2766 = fmul fast float %2670, %2603
  %2767 = fsub fast float %2766, %2603
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = fmul fast float %2727, %2753
  %2770 = fmul fast float %2769, %2724
  %2771 = fmul fast float %2770, %2759
  %2772 = fmul fast float %2771, %2750
  %2773 = fmul fast float %2772, %2765
  %2774 = fmul fast float %2773, %2768
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2778 = fsub fast float %2687, %2777
  %2779 = fmul fast float %2778, %2776
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = fmul fast float %2774, %2604
  %2782 = fadd fast float %2774, %2604
  %2783 = fmul fast float %2782, %2613
  %2784 = fsub fast float %2783, %2613
  %2785 = call float @dx.op.unary.f32(i32 7, float %2784)  ; Saturate(value)
  %2786 = and i32 %2643, 128
  %2787 = icmp ne i32 %2786, 0
  %2788 = select i1 %2787, float %2785, float %2781
  %2789 = fmul fast float %2788, %2780
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 0
  %2792 = fcmp fast ugt float %2789, %2791
  br i1 %2792, label %2793, label %2692

; <label>:2793                                    ; preds = %2712
  %2794 = select i1 %2752, float %2789, float 0.000000e+00
  %2795 = fadd fast float %2794, %2567
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  br i1 %2752, label %2692, label %2797

; <label>:2797                                    ; preds = %2793
  %2798 = and i32 %2643, 4
  %2799 = and i32 %2643, 8
  %2800 = add i32 %2599, 0
  %2801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2800, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2801, %dx.types.Handle %2802, float %2730, float %2733, float undef, float undef, i32 0, i32 0, i32 undef, float %2735, float %2737, float undef, float %2739, float %2741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.ResRet.f32 %2803, 1
  %2806 = extractvalue %dx.types.ResRet.f32 %2803, 2
  %2807 = extractvalue %dx.types.ResRet.f32 %2803, 3
  %2808 = bitcast float %2625 to i32
  %2809 = and i32 %2808, 255
  %2810 = uitofp i32 %2809 to float
  %2811 = lshr i32 %2808, 8
  %2812 = and i32 %2811, 255
  %2813 = uitofp i32 %2812 to float
  %2814 = fmul fast float %2807, %2810
  %2815 = fadd fast float %2814, %2813
  %2816 = fmul fast float %2815, 0x3F70101000000000
  %2817 = add i32 %2600, 0
  %2818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2817, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2819 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2818, %dx.types.Handle %2802, float %2730, float %2733, float undef, float undef, i32 0, i32 0, i32 undef, float %2735, float %2737, float undef, float %2739, float %2741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.ResRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.ResRet.f32 %2819, 3
  %2824 = bitcast float %2619 to i32
  %2825 = and i32 %2824, 255
  %2826 = uitofp i32 %2825 to float
  %2827 = lshr i32 %2824, 8
  %2828 = and i32 %2827, 255
  %2829 = uitofp i32 %2828 to float
  %2830 = lshr i32 %2824, 16
  %2831 = and i32 %2830, 255
  %2832 = uitofp i32 %2831 to float
  %2833 = fmul fast float %2832, 0x3F70101000000000
  %2834 = fmul fast float %2820, %2826
  %2835 = fadd fast float %2834, %2829
  %2836 = fmul fast float %2835, 0x3F70101000000000
  %2837 = fadd fast float %2821, -5.000000e-01
  %2838 = fadd fast float %2823, -5.000000e-01
  %2839 = fmul fast float %2837, %2833
  %2840 = fmul fast float %2838, %2833
  %2841 = fadd fast float %2839, 5.000000e-01
  %2842 = fadd fast float %2840, 5.000000e-01
  %2843 = fmul fast float %2804, %2628
  %2844 = fmul fast float %2805, %2629
  %2845 = fmul fast float %2806, %2630
  %2846 = fmul fast float %2841, 2.000000e+00
  %2847 = fadd fast float %2846, -1.000000e+00
  %2848 = fmul fast float %2842, 2.000000e+00
  %2849 = fadd fast float %2848, -1.000000e+00
  %2850 = fadd fast float %2847, %2849
  %2851 = fmul fast float %2850, 5.000000e-01
  %2852 = fsub fast float %2847, %2849
  %2853 = fmul fast float %2852, 5.000000e-01
  %2854 = call float @dx.op.unary.f32(i32 6, float %2851)  ; FAbs(value)
  %2855 = fsub fast float 1.000000e+00, %2854
  %2856 = call float @dx.op.unary.f32(i32 6, float %2853)  ; FAbs(value)
  %2857 = fsub fast float %2855, %2856
  %2858 = call float @dx.op.dot3.f32(i32 55, float %2851, float %2853, float %2857, float %2851, float %2853, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2859 = call float @dx.op.unary.f32(i32 25, float %2858)  ; Rsqrt(value)
  %2860 = fmul fast float %2851, %2859
  %2861 = fmul fast float %2853, %2859
  %2862 = fmul fast float %2859, %2857
  %2863 = fmul fast float %2862, %2593
  %2864 = fmul fast float %2862, %2594
  %2865 = fmul fast float %2862, %2595
  %2866 = fmul fast float %2860, %2616
  %2867 = fmul fast float %2860, %2617
  %2868 = fmul fast float %2860, %2618
  %2869 = fadd fast float %2866, %2863
  %2870 = fadd fast float %2867, %2864
  %2871 = fadd fast float %2868, %2865
  %2872 = fmul fast float %2861, %2622
  %2873 = fmul fast float %2861, %2623
  %2874 = fmul fast float %2861, %2624
  %2875 = fadd fast float %2869, %2872
  %2876 = fadd fast float %2870, %2873
  %2877 = fadd fast float %2871, %2874
  %2878 = call float @dx.op.dot3.f32(i32 55, float %2875, float %2876, float %2877, float %2875, float %2876, float %2877)  ; Dot3(ax,ay,az,bx,by,bz)
  %2879 = call float @dx.op.unary.f32(i32 25, float %2878)  ; Rsqrt(value)
  %2880 = fmul fast float %2875, %2879
  %2881 = fmul fast float %2876, %2879
  %2882 = fmul fast float %2877, %2879
  %2883 = icmp ne i32 %2799, 0
  %2884 = select i1 %2883, float 1.000000e+00, float 0.000000e+00
  %2885 = fmul fast float %2789, %2884
  %2886 = and i32 %2643, 1
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2888, label %2892

; <label>:2888                                    ; preds = %2797
  %2889 = fsub fast float %2880, %2575
  %2890 = fsub fast float %2881, %2576
  %2891 = fsub fast float %2882, %2577
  br label %2892

; <label>:2892                                    ; preds = %2888, %2797
  %2893 = phi float [ %2889, %2888 ], [ %2880, %2797 ]
  %2894 = phi float [ %2890, %2888 ], [ %2881, %2797 ]
  %2895 = phi float [ %2891, %2888 ], [ %2882, %2797 ]
  %2896 = fmul float %2895, %2885
  %2897 = fmul float %2894, %2885
  %2898 = fmul float %2893, %2885
  %2899 = fadd fast float %2898, %2575
  %2900 = fadd fast float %2897, %2576
  %2901 = fadd fast float %2896, %2577
  %2902 = icmp ne i32 %2798, 0
  %2903 = select i1 %2902, float 1.000000e+00, float 0.000000e+00
  %2904 = fmul fast float %2789, %2903
  %2905 = fsub fast float %2843, %2582
  %2906 = fsub fast float %2844, %2583
  %2907 = fsub fast float %2845, %2584
  %2908 = fmul fast float %2905, %2904
  %2909 = fmul fast float %2906, %2904
  %2910 = fmul fast float %2907, %2904
  %2911 = fadd fast float %2908, %2582
  %2912 = fadd fast float %2909, %2583
  %2913 = fadd fast float %2910, %2584
  %2914 = fsub fast float %2816, %2581
  %2915 = fmul fast float %2914, %2904
  %2916 = fadd fast float %2915, %2581
  %2917 = fmul fast float %2904, %2571
  %2918 = fsub fast float %2571, %2917
  %2919 = fmul fast float %2904, %2570
  %2920 = fsub fast float %2570, %2919
  %2921 = fadd fast float %2789, %2580
  %2922 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2923 = fsub fast float %2836, %2579
  %2924 = fmul fast float %2923, %2885
  %2925 = fadd fast float %2924, %2579
  %2926 = fsub fast float %2822, %2578
  %2927 = fmul fast float %2926, %2885
  %2928 = fadd fast float %2927, %2578
  %2929 = call float @dx.op.dot3.f32(i32 55, float %2843, float %2844, float %2845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.CBufRet.f32 %2930, 1
  %2933 = fmul fast float %2932, %2929
  %2934 = fadd fast float %2933, %2931
  %2935 = call float @dx.op.unary.f32(i32 7, float %2934)  ; Saturate(value)
  %2936 = bitcast float %2631 to i32
  %2937 = and i32 %2936, 65535
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = lshr i32 %2936, 16
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = fcmp fast oge float %2938, 0.000000e+00
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = select i1 %2941, float %2938, float %2943
  %2945 = fadd fast float %2944, %2940
  %2946 = fsub fast float %2935, %2569
  %2947 = fmul fast float %2946, %2789
  %2948 = fadd fast float %2947, %2569
  %2949 = fmul fast float %2945, %2789
  %2950 = call float @dx.op.binary.f32(i32 35, float %2568, float %2949)  ; FMax(a,b)
  %2951 = and i32 %2643, 16
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %2975, label %2953

; <label>:2953                                    ; preds = %2892
  %2954 = bitcast float %2637 to i32
  %2955 = add i32 %2634, 0
  %2956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2957 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2956, %dx.types.Handle %2802, float %2730, float %2733, float undef, float undef, i32 0, i32 0, i32 undef, float %2735, float %2737, float undef, float %2739, float %2741, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.ResRet.f32 %2957, 1
  %2960 = extractvalue %dx.types.ResRet.f32 %2957, 2
  %2961 = and i32 %2954, 65535
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = fmul fast float %2958, %2628
  %2964 = fmul fast float %2959, %2629
  %2965 = fmul fast float %2960, %2630
  %2966 = and i32 %2643, 16384
  %2967 = icmp ne i32 %2966, 0
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = select i1 %2967, float %2969, float 1.000000e+00
  %2971 = fmul fast float %2970, %2962
  %2972 = fmul fast float %2963, %2971
  %2973 = fmul fast float %2964, %2971
  %2974 = fmul fast float %2965, %2971
  br label %2975

; <label>:2975                                    ; preds = %2953, %2892
  %2976 = phi float [ %2972, %2953 ], [ 0.000000e+00, %2892 ]
  %2977 = phi float [ %2973, %2953 ], [ 0.000000e+00, %2892 ]
  %2978 = phi float [ %2974, %2953 ], [ 0.000000e+00, %2892 ]
  %2979 = fsub fast float %2976, %2572
  %2980 = fsub fast float %2977, %2573
  %2981 = fsub fast float %2978, %2574
  %2982 = fmul fast float %2979, %2789
  %2983 = fmul fast float %2980, %2789
  %2984 = fmul fast float %2981, %2789
  %2985 = fadd fast float %2982, %2572
  %2986 = fadd fast float %2983, %2573
  %2987 = fadd fast float %2984, %2574
  br label %2692

; <label>:2988                                    ; preds = %2692
  br label %2989

; <label>:2989                                    ; preds = %2988, %2470
  %2990 = phi float [ 0.000000e+00, %2470 ], [ %2693, %2988 ]
  %2991 = phi float [ %2484, %2470 ], [ %2694, %2988 ]
  %2992 = phi float [ %2482, %2470 ], [ %2695, %2988 ]
  %2993 = phi float [ 0.000000e+00, %2470 ], [ %2696, %2988 ]
  %2994 = phi float [ 0.000000e+00, %2470 ], [ %2697, %2988 ]
  %2995 = phi float [ %2476, %2470 ], [ %2698, %2988 ]
  %2996 = phi float [ %2477, %2470 ], [ %2699, %2988 ]
  %2997 = phi float [ %2478, %2470 ], [ %2700, %2988 ]
  %2998 = phi float [ %2510, %2470 ], [ %2701, %2988 ]
  %2999 = phi float [ %2511, %2470 ], [ %2702, %2988 ]
  %3000 = phi float [ %2512, %2470 ], [ %2703, %2988 ]
  %3001 = phi float [ %2481, %2470 ], [ %2704, %2988 ]
  %3002 = phi float [ %2480, %2470 ], [ %2705, %2988 ]
  %3003 = phi float [ 0.000000e+00, %2470 ], [ %2706, %2988 ]
  %3004 = phi float [ %2479, %2470 ], [ %2707, %2988 ]
  %3005 = phi float [ %2473, %2470 ], [ %2708, %2988 ]
  %3006 = phi float [ %2474, %2470 ], [ %2709, %2988 ]
  %3007 = phi float [ %2475, %2470 ], [ %2710, %2988 ]
  %3008 = call float @dx.op.dot3.f32(i32 55, float %2998, float %2999, float %3000, float %2998, float %2999, float %3000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3009 = call float @dx.op.unary.f32(i32 25, float %3008)  ; Rsqrt(value)
  %3010 = fmul fast float %3009, %2998
  %3011 = fmul fast float %3009, %2999
  %3012 = fmul fast float %3009, %3000
  %3013 = fadd fast float %3003, %795
  %3014 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3015 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %3010, float %3011, float %3012)  ; Dot3(ax,ay,az,bx,by,bz)
  %3016 = call float @dx.op.unary.f32(i32 25, float %3015)  ; Rsqrt(value)
  %3017 = fmul fast float %3016, %3010
  %3018 = fmul fast float %3016, %3011
  %3019 = fmul fast float %3016, %3012
  %3020 = fadd fast float %3004, 0xBFB99999A0000000
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = fmul fast float %3021, 0x3FF1C71C80000000
  %3023 = call float @dx.op.binary.f32(i32 36, float %3004, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3024 = fsub fast float 1.000000e+00, %3022
  %3025 = call float @dx.op.unary.f32(i32 7, float %3024)  ; Saturate(value)
  %3026 = fmul fast float %3025, %3005
  %3027 = fmul fast float %3025, %3006
  %3028 = fmul fast float %3025, %3007
  %3029 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3030 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3031 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3032 = fmul fast float %3022, %3005
  %3033 = fmul fast float %3022, %3006
  %3034 = fmul fast float %3022, %3007
  %3035 = fadd fast float %3032, %3023
  %3036 = fadd fast float %3033, %3023
  %3037 = fadd fast float %3034, %3023
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.i32 %3042, 3
  %3044 = and i32 %3043, 8
  %3045 = icmp ne i32 %3044, 0
  %3046 = call float @dx.op.binary.f32(i32 35, float %3029, float %3005)  ; FMax(a,b)
  %3047 = call float @dx.op.binary.f32(i32 35, float %3030, float %3005)  ; FMax(a,b)
  %3048 = call float @dx.op.binary.f32(i32 35, float %3031, float %3005)  ; FMax(a,b)
  %3049 = call float @dx.op.dot3.f32(i32 55, float %3029, float %3030, float %3031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3050 = select i1 %194, float %3005, float %3029
  %3051 = select i1 %194, float %3049, float %3030
  %3052 = select i1 %194, float 1.000000e+00, float %3031
  %3053 = select i1 %3045, float %3046, float %3050
  %3054 = select i1 %3045, float %3047, float %3051
  %3055 = select i1 %3045, float %3048, float %3052
  %3056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3057 = extractvalue %dx.types.CBufRet.f32 %3056, 0
  %3058 = extractvalue %dx.types.CBufRet.f32 %3056, 1
  %3059 = extractvalue %dx.types.CBufRet.f32 %3056, 2
  %3060 = fadd fast float %3057, %123
  %3061 = fadd fast float %3058, %124
  %3062 = fadd fast float %3059, %125
  %3063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3064 = extractvalue %dx.types.CBufRet.f32 %3063, 0
  %3065 = extractvalue %dx.types.CBufRet.f32 %3063, 1
  %3066 = fsub fast float %3060, %3064
  %3067 = fsub fast float %3061, %3065
  %3068 = fmul fast float %3066, %3066
  %3069 = fmul fast float %3067, %3067
  %3070 = fadd fast float %3068, %3069
  %3071 = call float @dx.op.unary.f32(i32 24, float %3070)  ; Sqrt(value)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3063, 2
  %3073 = fcmp fast olt float %3071, %3072
  br i1 %3073, label %3074, label %3141

; <label>:3074                                    ; preds = %2989
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 0
  %3079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3080 = extractvalue %dx.types.CBufRet.f32 %3079, 0
  %3081 = extractvalue %dx.types.CBufRet.f32 %3075, 1
  %3082 = extractvalue %dx.types.CBufRet.f32 %3077, 1
  %3083 = extractvalue %dx.types.CBufRet.f32 %3079, 1
  %3084 = extractvalue %dx.types.CBufRet.f32 %3075, 3
  %3085 = extractvalue %dx.types.CBufRet.f32 %3077, 3
  %3086 = extractvalue %dx.types.CBufRet.f32 %3079, 3
  %3087 = fadd fast float %3084, %3060
  %3088 = fadd fast float %3085, %3061
  %3089 = fadd fast float %3086, %3062
  %3090 = fmul fast float %3087, %3076
  %3091 = call float @dx.op.tertiary.f32(i32 46, float %3088, float %3078, float %3090)  ; FMad(a,b,c)
  %3092 = call float @dx.op.tertiary.f32(i32 46, float %3089, float %3080, float %3091)  ; FMad(a,b,c)
  %3093 = fmul fast float %3087, %3081
  %3094 = call float @dx.op.tertiary.f32(i32 46, float %3088, float %3082, float %3093)  ; FMad(a,b,c)
  %3095 = call float @dx.op.tertiary.f32(i32 46, float %3089, float %3083, float %3094)  ; FMad(a,b,c)
  %3096 = fsub fast float %3092, %3084
  %3097 = fsub fast float %3095, %3085
  %3098 = fsub fast float %3096, %3064
  %3099 = fadd fast float %3098, %3072
  %3100 = fsub fast float %3097, %3065
  %3101 = fadd fast float %3100, %3072
  %3102 = extractvalue %dx.types.CBufRet.f32 %3063, 3
  %3103 = fmul fast float %3099, %3102
  %3104 = fmul fast float %3101, %3102
  %3105 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3106 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  %3107 = fsub fast float 1.000000e+00, %3105
  %3108 = fsub fast float 1.000000e+00, %3106
  %3109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3107, float %3108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = fcmp fast ugt float %3110, 0.000000e+00
  br i1 %3111, label %3112, label %3415

; <label>:3112                                    ; preds = %3074
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 2
  %3115 = fmul fast float %3114, %3110
  %3116 = extractvalue %dx.types.CBufRet.f32 %3113, 3
  %3117 = fadd fast float %3116, %3115
  %3118 = extractvalue %dx.types.CBufRet.f32 %3079, 2
  %3119 = fadd fast float %3117, %3086
  %3120 = fmul fast float %3092, %3080
  %3121 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3083, float %3120)  ; FMad(a,b,c)
  %3122 = call float @dx.op.tertiary.f32(i32 46, float %3119, float %3118, float %3121)  ; FMad(a,b,c)
  %3123 = fsub fast float %3122, %3086
  %3124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3125 = extractvalue %dx.types.CBufRet.f32 %3124, 2
  %3126 = fsub fast float %3123, %3125
  %3127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3107, float %3108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.ResRet.f32 %3127, 1
  %3130 = extractvalue %dx.types.ResRet.f32 %3127, 2
  %3131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3107, float %3108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = fadd fast float %3132, %3128
  %3136 = fmul fast float %3135, 0x3F847AE140000000
  %3137 = fadd fast float %3133, %3129
  %3138 = fmul fast float %3137, 0x3F847AE140000000
  %3139 = fadd fast float %3134, %3130
  %3140 = fmul fast float %3139, 0x3F847AE140000000
  br label %3415

; <label>:3141                                    ; preds = %2989
  %3142 = and i32 %170, 1
  %3143 = icmp eq i32 %3142, 0
  br i1 %3143, label %3415, label %3144

; <label>:3144                                    ; preds = %3141
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 0
  %3147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.f32 %3147, 0
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.CBufRet.f32 %3145, 1
  %3152 = extractvalue %dx.types.CBufRet.f32 %3147, 1
  %3153 = extractvalue %dx.types.CBufRet.f32 %3149, 1
  %3154 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3155 = extractvalue %dx.types.CBufRet.f32 %3147, 3
  %3156 = extractvalue %dx.types.CBufRet.f32 %3149, 3
  %3157 = fadd fast float %3154, %3060
  %3158 = fadd fast float %3155, %3061
  %3159 = fadd fast float %3156, %3062
  %3160 = fmul fast float %3157, %3146
  %3161 = call float @dx.op.tertiary.f32(i32 46, float %3158, float %3148, float %3160)  ; FMad(a,b,c)
  %3162 = call float @dx.op.tertiary.f32(i32 46, float %3159, float %3150, float %3161)  ; FMad(a,b,c)
  %3163 = fmul fast float %3157, %3151
  %3164 = call float @dx.op.tertiary.f32(i32 46, float %3158, float %3152, float %3163)  ; FMad(a,b,c)
  %3165 = call float @dx.op.tertiary.f32(i32 46, float %3159, float %3153, float %3164)  ; FMad(a,b,c)
  %3166 = fsub fast float %3162, %3154
  %3167 = fsub fast float %3165, %3155
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 0
  %3170 = extractvalue %dx.types.CBufRet.f32 %3168, 1
  %3171 = extractvalue %dx.types.CBufRet.f32 %3168, 2
  %3172 = extractvalue %dx.types.CBufRet.f32 %3168, 3
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 3
  %3175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3176 = extractvalue %dx.types.CBufRet.i32 %3175, 0
  %3177 = extractvalue %dx.types.CBufRet.i32 %3175, 1
  %3178 = udiv i32 %3177, %3176
  %3179 = fsub fast float %3166, %3169
  %3180 = fsub fast float %3167, %3170
  %3181 = call float @dx.op.binary.f32(i32 35, float %3179, float 0.000000e+00)  ; FMax(a,b)
  %3182 = call float @dx.op.binary.f32(i32 35, float %3180, float 0.000000e+00)  ; FMax(a,b)
  %3183 = call float @dx.op.binary.f32(i32 36, float %3181, float %3171)  ; FMin(a,b)
  %3184 = call float @dx.op.binary.f32(i32 36, float %3182, float %3172)  ; FMin(a,b)
  %3185 = add i32 %3176, -1
  %3186 = add i32 %3178, -1
  %3187 = fmul fast float %3183, %3174
  %3188 = fmul fast float %3184, %3174
  %3189 = fptoui float %3187 to i32
  %3190 = fptoui float %3188 to i32
  %3191 = call i32 @dx.op.binary.i32(i32 40, i32 %3189, i32 %3185)  ; UMin(a,b)
  %3192 = call i32 @dx.op.binary.i32(i32 40, i32 %3190, i32 %3186)  ; UMin(a,b)
  %3193 = mul i32 %3192, %3176
  %3194 = add i32 %3193, %3191
  %3195 = shl i32 %3194, 2
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = icmp eq i32 %3197, -1
  br i1 %3198, label %3415, label %3199

; <label>:3199                                    ; preds = %3144
  %3200 = mul i32 %3197, 148
  %3201 = add i32 %3200, 4
  %3202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.f32 %3202, 0
  %3204 = add i32 %3200, 8
  %3205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.f32 %3205, 0
  %3207 = add i32 %3200, 36
  %3208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = add i32 %3200, 60
  %3211 = add i32 %3200, 92
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = add i32 %3200, 116
  %3215 = fsub fast float %3166, %3203
  %3216 = fsub fast float %3167, %3206
  %3217 = fmul fast float %3174, %3215
  %3218 = fmul fast float %3174, %3216
  %3219 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3220 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3221 = fsub fast float 1.000000e+00, %3220
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3224 = call float @dx.op.unary.f32(i32 83, float %3219)  ; DerivCoarseX(value)
  %3225 = call float @dx.op.unary.f32(i32 83, float %3221)  ; DerivCoarseX(value)
  %3226 = call float @dx.op.unary.f32(i32 84, float %3219)  ; DerivCoarseY(value)
  %3227 = call float @dx.op.unary.f32(i32 84, float %3221)  ; DerivCoarseY(value)
  %3228 = fmul fast float %3224, %3223
  %3229 = fmul fast float %3225, %3223
  %3230 = fmul fast float %3226, %3223
  %3231 = fmul fast float %3227, %3223
  %3232 = call float @dx.op.dot2.f32(i32 54, float %3230, float %3231, float %3230, float %3231)  ; Dot2(ax,ay,bx,by)
  %3233 = call float @dx.op.dot2.f32(i32 54, float %3228, float %3229, float %3228, float %3229)  ; Dot2(ax,ay,bx,by)
  %3234 = call float @dx.op.binary.f32(i32 35, float %3233, float %3232)  ; FMax(a,b)
  %3235 = call float @dx.op.unary.f32(i32 23, float %3234)  ; Log(value)
  %3236 = fmul fast float %3235, 5.000000e-01
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 1
  %3239 = fadd fast float %3238, %3236
  %3240 = call float @dx.op.binary.f32(i32 35, float %3239, float 0.000000e+00)  ; FMax(a,b)
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 3
  %3243 = fadd fast float %3242, %3240
  %3244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3244, 3
  %3246 = fadd fast float %3243, %3245
  %3247 = add i32 %3213, 0
  %3248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3247, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3249 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3248, i32 0)  ; GetDimensions(handle,mipLevel)
  %3250 = extractvalue %dx.types.Dimensions %3249, 0
  %3251 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3250)  ; FirstbitLo(value)
  %3252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.i32 %3252, 1
  %3254 = sub nsw i32 %3253, %3251
  %3255 = sitofp i32 %3254 to float
  %3256 = fsub fast float %3246, %3255
  %3257 = call float @dx.op.binary.f32(i32 35, float %3256, float 0.000000e+00)  ; FMax(a,b)
  %3258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3248, %dx.types.Handle %37, float %3219, float %3221, float %3209, float undef, i32 0, i32 0, i32 undef, float %3257)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = fcmp ule float %3259, 0x3FE0101020000000
  %3261 = extractvalue %dx.types.CBufRet.i32 %3252, 0
  %3262 = and i32 %3261, 128
  %3263 = icmp ne i32 %3262, 0
  %3264 = and i1 %3260, %3263
  br i1 %3264, label %3415, label %3265

; <label>:3265                                    ; preds = %3199
  %3266 = add i32 %3200, 20
  %3267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = add i32 %3200, 24
  %3270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = add i32 %3200, 40
  %3273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.f32 %3273, 0
  %3275 = add i32 %3200, 96
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 2
  %3280 = fmul fast float %3279, %3219
  %3281 = fmul fast float %3279, %3221
  %3282 = extractvalue %dx.types.CBufRet.f32 %3278, 3
  %3283 = fadd fast float %3280, %3282
  %3284 = fadd fast float %3281, %3282
  %3285 = add i32 %3277, 0
  %3286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3285, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3287 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3286, i32 0)  ; GetDimensions(handle,mipLevel)
  %3288 = extractvalue %dx.types.Dimensions %3287, 0
  %3289 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3288)  ; FirstbitLo(value)
  %3290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.i32 %3290, 1
  %3292 = sub nsw i32 %3291, %3289
  %3293 = sitofp i32 %3292 to float
  %3294 = fsub fast float %3243, %3293
  %3295 = call float @dx.op.binary.f32(i32 35, float %3294, float 0.000000e+00)  ; FMax(a,b)
  %3296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3286, %dx.types.Handle %37, float %3283, float %3284, float %3274, float undef, i32 0, i32 0, i32 undef, float %3295)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = fmul fast float %3297, %3268
  %3299 = fadd fast float %3298, %3271
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3305 = extractvalue %dx.types.CBufRet.f32 %3304, 3
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 3
  %3308 = extractvalue %dx.types.CBufRet.f32 %3300, 3
  %3309 = fadd fast float %3305, %3166
  %3310 = fadd fast float %3307, %3167
  %3311 = fadd fast float %3299, %3308
  %3312 = fmul fast float %3309, %3301
  %3313 = call float @dx.op.tertiary.f32(i32 46, float %3310, float %3302, float %3312)  ; FMad(a,b,c)
  %3314 = call float @dx.op.tertiary.f32(i32 46, float %3311, float %3303, float %3313)  ; FMad(a,b,c)
  %3315 = fsub fast float %3314, %3308
  %3316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.f32 %3316, 2
  %3318 = fsub fast float %3315, %3317
  %3319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.i32 %3319, 0
  %3321 = call i32 @dx.op.binary.i32(i32 40, i32 %3197, i32 %3320)  ; UMin(a,b)
  %3322 = mul i32 %3321, 36
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = add i32 %3322, 4
  %3326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3327 = extractvalue %dx.types.CBufRet.f32 %3326, 0
  %3328 = fmul fast float %3327, %3219
  %3329 = fmul fast float %3327, %3221
  %3330 = extractvalue %dx.types.CBufRet.f32 %3326, 1
  %3331 = fadd fast float %3328, %3330
  %3332 = fadd fast float %3329, %3330
  %3333 = icmp eq i32 %3324, 0
  br i1 %3333, label %3402, label %3334

; <label>:3334                                    ; preds = %3265
  br label %3335

; <label>:3335                                    ; preds = %3392, %3334
  %3336 = phi float [ %3393, %3392 ], [ 0.000000e+00, %3334 ]
  %3337 = phi float [ %3394, %3392 ], [ 0.000000e+00, %3334 ]
  %3338 = phi float [ %3395, %3392 ], [ 0.000000e+00, %3334 ]
  %3339 = phi float [ %3396, %3392 ], [ 0.000000e+00, %3334 ]
  %3340 = phi float [ %3397, %3392 ], [ 0.000000e+00, %3334 ]
  %3341 = phi float [ %3398, %3392 ], [ 0.000000e+00, %3334 ]
  %3342 = phi i32 [ %3399, %3392 ], [ 0, %3334 ]
  %3343 = shl i32 %3342, 2
  %3344 = add i32 %3210, %3343
  %3345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = add i32 %3214, %3343
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = add i32 %3349, 0
  %3351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3350, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3352 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3351, i32 0)  ; GetDimensions(handle,mipLevel)
  %3353 = extractvalue %dx.types.Dimensions %3352, 0
  %3354 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3353)  ; FirstbitLo(value)
  %3355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.i32 %3355, 1
  %3357 = sub nsw i32 %3356, %3354
  %3358 = sitofp i32 %3357 to float
  %3359 = fsub fast float %3243, %3358
  %3360 = call float @dx.op.binary.f32(i32 35, float %3359, float 0.000000e+00)  ; FMax(a,b)
  %3361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3351, %dx.types.Handle %37, float %3331, float %3332, float %3346, float undef, i32 0, i32 0, i32 undef, float %3360)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = fcmp fast ogt float %3362, 0.000000e+00
  br i1 %3363, label %3364, label %3392

; <label>:3364                                    ; preds = %3335
  %3365 = add i32 %3325, %3343
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 32767
  %3369 = mul nuw nsw i32 %3368, 928
  %3370 = add nuw nsw i32 %3369, 48
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = add nuw nsw i32 %3369, 60
  %3376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = fmul fast float %3372, %3362
  %3381 = fmul fast float %3373, %3362
  %3382 = fmul fast float %3374, %3362
  %3383 = fadd fast float %3380, %3336
  %3384 = fadd fast float %3381, %3337
  %3385 = fadd fast float %3382, %3338
  %3386 = fmul fast float %3377, %3362
  %3387 = fmul fast float %3378, %3362
  %3388 = fmul fast float %3379, %3362
  %3389 = fadd fast float %3386, %3339
  %3390 = fadd fast float %3387, %3340
  %3391 = fadd fast float %3388, %3341
  br label %3392

; <label>:3392                                    ; preds = %3364, %3335
  %3393 = phi float [ %3383, %3364 ], [ %3336, %3335 ]
  %3394 = phi float [ %3384, %3364 ], [ %3337, %3335 ]
  %3395 = phi float [ %3385, %3364 ], [ %3338, %3335 ]
  %3396 = phi float [ %3389, %3364 ], [ %3339, %3335 ]
  %3397 = phi float [ %3390, %3364 ], [ %3340, %3335 ]
  %3398 = phi float [ %3391, %3364 ], [ %3341, %3335 ]
  %3399 = add nuw i32 %3342, 1
  %3400 = icmp eq i32 %3399, %3324
  br i1 %3400, label %3401, label %3335

; <label>:3401                                    ; preds = %3392
  br label %3402

; <label>:3402                                    ; preds = %3401, %3265
  %3403 = phi float [ 0.000000e+00, %3265 ], [ %3393, %3401 ]
  %3404 = phi float [ 0.000000e+00, %3265 ], [ %3394, %3401 ]
  %3405 = phi float [ 0.000000e+00, %3265 ], [ %3395, %3401 ]
  %3406 = phi float [ 0.000000e+00, %3265 ], [ %3396, %3401 ]
  %3407 = phi float [ 0.000000e+00, %3265 ], [ %3397, %3401 ]
  %3408 = phi float [ 0.000000e+00, %3265 ], [ %3398, %3401 ]
  %3409 = fadd fast float %3406, %3403
  %3410 = fmul fast float %3409, 0x3F847AE140000000
  %3411 = fadd fast float %3407, %3404
  %3412 = fmul fast float %3411, 0x3F847AE140000000
  %3413 = fadd fast float %3408, %3405
  %3414 = fmul fast float %3413, 0x3F847AE140000000
  br label %3415

; <label>:3415                                    ; preds = %3402, %3199, %3144, %3141, %3112, %3074
  %3416 = phi float [ %3126, %3112 ], [ -1.310720e+05, %3074 ], [ %3318, %3402 ], [ -1.310720e+05, %3144 ], [ -1.310720e+05, %3199 ], [ -1.310720e+05, %3141 ]
  %3417 = phi float [ %3136, %3112 ], [ 0.000000e+00, %3074 ], [ %3410, %3402 ], [ 0.000000e+00, %3144 ], [ 0.000000e+00, %3199 ], [ 0.000000e+00, %3141 ]
  %3418 = phi float [ %3138, %3112 ], [ 0.000000e+00, %3074 ], [ %3412, %3402 ], [ 0.000000e+00, %3144 ], [ 0.000000e+00, %3199 ], [ 0.000000e+00, %3141 ]
  %3419 = phi float [ %3140, %3112 ], [ 0.000000e+00, %3074 ], [ %3414, %3402 ], [ 0.000000e+00, %3144 ], [ 0.000000e+00, %3199 ], [ 0.000000e+00, %3141 ]
  %3420 = phi i1 [ true, %3112 ], [ false, %3074 ], [ true, %3402 ], [ false, %3144 ], [ false, %3199 ], [ false, %3141 ]
  %3421 = and i32 %170, 3
  %3422 = icmp eq i32 %3421, 1
  %3423 = select i1 %3422, float 1.000000e+00, float 0.000000e+00
  %3424 = fsub fast float %3416, %125
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = select i1 %3420, float %3425, float 1.000000e+00
  %3427 = fmul fast float %3426, %3423
  %3428 = icmp eq i32 %3421, 3
  %3429 = select i1 %3428, float 1.000000e+00, float %3427
  %3430 = call float @dx.op.binary.f32(i32 35, float %2990, float %3429)  ; FMax(a,b)
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = fcmp fast une float %3431, 0.000000e+00
  %3433 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3434 = call float @dx.op.unary.f32(i32 25, float %3433)  ; Rsqrt(value)
  br i1 %3432, label %3442, label %3435

; <label>:3435                                    ; preds = %3415
  %3436 = fmul fast float %3434, %123
  %3437 = fmul fast float %3434, %124
  %3438 = fmul fast float %3434, %125
  %3439 = fsub fast float -0.000000e+00, %3436
  %3440 = fsub fast float -0.000000e+00, %3437
  %3441 = fsub fast float -0.000000e+00, %3438
  br label %3610

; <label>:3442                                    ; preds = %3415
  %3443 = fmul fast float %123, %3434
  %3444 = fsub fast float -0.000000e+00, %3443
  %3445 = fmul fast float %124, %3434
  %3446 = fsub fast float -0.000000e+00, %3445
  %3447 = fmul fast float %125, %3434
  %3448 = fsub fast float -0.000000e+00, %3447
  %3449 = call float @dx.op.dot3.f32(i32 55, float %3444, float %3446, float %3448, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %3450 = fmul fast float %3431, 2.500000e+00
  %3451 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3452 = fmul fast float %3431, 0x4013FFFFE0000000
  %3453 = fadd fast float %3452, 0xBFFFFFFFE0000000
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fmul fast float %3431, 0x4004000020000000
  %3456 = fadd fast float %3455, 0xBFF8000040000000
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3458 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3459 = fmul fast float %3020, 1.000000e+01
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fmul fast float %3460, 2.000000e+00
  %3462 = fsub fast float 3.000000e+00, %3461
  %3463 = fmul fast float %3460, %3460
  %3464 = fmul fast float %3463, %3462
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = fsub fast float 0x3FE3333340000000, %3041
  %3467 = fmul fast float %3466, 0x400AAAAAA0000000
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3469 = fmul fast float %3465, %3468
  %3470 = fmul fast float %3053, 0x3FEA2B8620000000
  %3471 = fmul fast float %3054, 0x3FEA2B8620000000
  %3472 = fmul fast float %3055, 0x3FEA2B8620000000
  %3473 = fadd fast float %3470, 0x3FC81DFBA0000000
  %3474 = fmul fast float %3473, %3053
  %3475 = fadd fast float %3474, 0x3F910E6020000000
  %3476 = fadd fast float %3471, 0x3FC81DFBA0000000
  %3477 = fmul fast float %3476, %3054
  %3478 = fadd fast float %3477, 0x3F910E6020000000
  %3479 = fadd fast float %3472, 0x3FC81DFBA0000000
  %3480 = fmul fast float %3479, %3055
  %3481 = fadd fast float %3480, 0x3F910E6020000000
  %3482 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3483 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3484 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3485 = fsub fast float %3482, %3053
  %3486 = fsub fast float %3483, %3054
  %3487 = fsub fast float %3484, %3055
  %3488 = fmul fast float %3485, %3458
  %3489 = fmul fast float %3488, %3469
  %3490 = fmul fast float %3486, %3458
  %3491 = fmul fast float %3490, %3469
  %3492 = fmul fast float %3487, %3458
  %3493 = fmul fast float %3492, %3469
  %3494 = fadd fast float %3489, %3053
  %3495 = fadd fast float %3491, %3054
  %3496 = fadd fast float %3493, %3055
  %3497 = fmul fast float %3001, %3001
  %3498 = fmul fast float %3497, %3497
  %3499 = fadd fast float %3454, 1.000000e+00
  %3500 = fsub fast float %3499, %3469
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3502 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3503 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3504 = fsub fast float 1.000000e+00, %3498
  %3505 = call float @dx.op.binary.f32(i32 36, float %3501, float %3504)  ; FMin(a,b)
  %3506 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3507 = call float @dx.op.binary.f32(i32 35, float %3505, float %3506)  ; FMax(a,b)
  %3508 = fadd fast float %3503, 0xBFE4CCCCC0000000
  %3509 = fmul fast float %3508, 0x4006DB6DA0000000
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3511 = fmul fast float %3510, 2.000000e+00
  %3512 = fsub fast float 3.000000e+00, %3511
  %3513 = bitcast float %3038 to i32
  %3514 = ashr i32 %3513, 1
  %3515 = add nsw i32 %3514, 532487669
  %3516 = bitcast i32 %3515 to float
  %3517 = fsub fast float 1.000000e+00, %3516
  %3518 = bitcast float %3517 to i32
  %3519 = sub nsw i32 2129859010, %3518
  %3520 = bitcast i32 %3519 to float
  %3521 = fmul fast float %3520, 2.000000e+00
  %3522 = bitcast float %3039 to i32
  %3523 = ashr i32 %3522, 1
  %3524 = add nsw i32 %3523, 532487669
  %3525 = bitcast i32 %3524 to float
  %3526 = fsub fast float 1.000000e+00, %3525
  %3527 = bitcast float %3526 to i32
  %3528 = sub nsw i32 2129859010, %3527
  %3529 = bitcast i32 %3528 to float
  %3530 = fmul fast float %3529, 2.000000e+00
  %3531 = bitcast float %3040 to i32
  %3532 = ashr i32 %3531, 1
  %3533 = add nsw i32 %3532, 532487669
  %3534 = bitcast i32 %3533 to float
  %3535 = fsub fast float 1.000000e+00, %3534
  %3536 = bitcast float %3535 to i32
  %3537 = sub nsw i32 2129859010, %3536
  %3538 = bitcast i32 %3537 to float
  %3539 = fmul fast float %3538, 2.000000e+00
  %3540 = fsub fast float 0x4002A9FBE0000000, %3521
  %3541 = fadd fast float %3521, 0x3FD54FDF00000000
  %3542 = bitcast float %3541 to i32
  %3543 = sub nsw i32 2129859010, %3542
  %3544 = bitcast i32 %3543 to float
  %3545 = fmul fast float %3544, %3540
  %3546 = fmul fast float %3545, %3545
  %3547 = fsub fast float 0x4002A9FBE0000000, %3530
  %3548 = fadd fast float %3530, 0x3FD54FDF00000000
  %3549 = bitcast float %3548 to i32
  %3550 = sub nsw i32 2129859010, %3549
  %3551 = bitcast i32 %3550 to float
  %3552 = fmul fast float %3551, %3547
  %3553 = fmul fast float %3552, %3552
  %3554 = fsub fast float 0x4002A9FBE0000000, %3539
  %3555 = fadd fast float %3539, 0x3FD54FDF00000000
  %3556 = bitcast float %3555 to i32
  %3557 = sub nsw i32 2129859010, %3556
  %3558 = bitcast i32 %3557 to float
  %3559 = fmul fast float %3558, %3554
  %3560 = fmul fast float %3559, %3559
  %3561 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3546)  ; FMax(a,b)
  %3562 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3553)  ; FMax(a,b)
  %3563 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3560)  ; FMax(a,b)
  %3564 = fsub fast float 1.000000e+00, %3449
  %3565 = fadd fast float %3564, %3465
  %3566 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3567 = fsub fast float 1.000000e+00, %3429
  %3568 = fmul fast float %3507, %3567
  %3569 = fmul fast float %3510, %3510
  %3570 = fmul fast float %3569, %3568
  %3571 = fmul fast float %3570, %3512
  %3572 = fmul fast float %3567, 0xBFE99999A0000000
  %3573 = fmul fast float %3572, %3458
  %3574 = fmul fast float %3573, %3469
  %3575 = fadd fast float %3574, 1.000000e+00
  %3576 = fadd fast float %3041, -1.000000e+00
  %3577 = fmul fast float %3575, %3576
  %3578 = fadd fast float %3577, 1.000000e+00
  %3579 = fsub fast float %3561, %3038
  %3580 = fsub fast float %3562, %3039
  %3581 = fsub fast float %3563, %3040
  %3582 = fmul fast float %3571, %3579
  %3583 = fmul fast float %3571, %3580
  %3584 = fmul fast float %3571, %3581
  %3585 = fadd fast float %3582, %3038
  %3586 = fadd fast float %3583, %3039
  %3587 = fadd fast float %3584, %3040
  %3588 = fsub fast float %57, %3017
  %3589 = fsub fast float %58, %3018
  %3590 = fsub fast float %59, %3019
  %3591 = fmul fast float %3571, %3588
  %3592 = fmul fast float %3571, %3589
  %3593 = fmul fast float %3571, %3590
  %3594 = fadd fast float %3591, %3017
  %3595 = fadd fast float %3592, %3018
  %3596 = fadd fast float %3593, %3019
  %3597 = fmul fast float %3571, %3566
  %3598 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3599 = fsub fast float 1.000000e+00, %3598
  %3600 = fmul fast float %3597, %3599
  %3601 = fadd fast float %3600, %3598
  %3602 = fsub fast float 1.000000e+00, %3001
  %3603 = fmul fast float %3571, %3602
  %3604 = fadd fast float %3603, %3001
  %3605 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3596, float %3594, float %3595, float %3596)  ; Dot3(ax,ay,az,bx,by,bz)
  %3606 = call float @dx.op.unary.f32(i32 25, float %3605)  ; Rsqrt(value)
  %3607 = fmul fast float %3594, %3606
  %3608 = fmul fast float %3595, %3606
  %3609 = fmul fast float %3596, %3606
  br label %3610

; <label>:3610                                    ; preds = %3442, %3435
  %3611 = phi float [ %3441, %3435 ], [ %3448, %3442 ]
  %3612 = phi float [ %3440, %3435 ], [ %3446, %3442 ]
  %3613 = phi float [ %3439, %3435 ], [ %3444, %3442 ]
  %3614 = phi float [ %3438, %3435 ], [ %3447, %3442 ]
  %3615 = phi float [ %3437, %3435 ], [ %3445, %3442 ]
  %3616 = phi float [ %3436, %3435 ], [ %3443, %3442 ]
  %3617 = phi float [ %3038, %3435 ], [ %3585, %3442 ]
  %3618 = phi float [ %3039, %3435 ], [ %3586, %3442 ]
  %3619 = phi float [ %3040, %3435 ], [ %3587, %3442 ]
  %3620 = phi float [ %3053, %3435 ], [ %3494, %3442 ]
  %3621 = phi float [ %3054, %3435 ], [ %3495, %3442 ]
  %3622 = phi float [ %3055, %3435 ], [ %3496, %3442 ]
  %3623 = phi float [ %3017, %3435 ], [ %3607, %3442 ]
  %3624 = phi float [ %3018, %3435 ], [ %3608, %3442 ]
  %3625 = phi float [ %3019, %3435 ], [ %3609, %3442 ]
  %3626 = phi float [ %3041, %3435 ], [ %3601, %3442 ]
  %3627 = phi float [ %3001, %3435 ], [ %3604, %3442 ]
  %3628 = select i1 %194, float 0.000000e+00, float %3619
  %3629 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3624, float %3625, float %3613, float %3612, float %3611)  ; Dot3(ax,ay,az,bx,by,bz)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3629)  ; Saturate(value)
  %3631 = call float @dx.op.dot3.f32(i32 55, float %3616, float %3615, float %3614, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %3632 = fmul fast float %3631, 2.000000e+00
  %3633 = fmul fast float %3632, %3623
  %3634 = fmul fast float %3632, %3624
  %3635 = fmul fast float %3632, %3625
  %3636 = fsub fast float %3616, %3633
  %3637 = fsub fast float %3615, %3634
  %3638 = fsub fast float %3614, %3635
  %3639 = call float @dx.op.binary.f32(i32 36, float %3627, float 1.000000e+00)  ; FMin(a,b)
  %3640 = fsub fast float 1.000000e+00, %3627
  %3641 = bitcast float %3640 to i32
  %3642 = sub nsw i32 2129859010, %3641
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.CBufRet.f32 %3643, 1
  %3646 = fadd fast float %3644, %123
  %3647 = fadd fast float %3645, %124
  %3648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.i32 %3648, 0
  %3650 = icmp eq i32 %3649, 1
  br i1 %3650, label %3651, label %3686

; <label>:3651                                    ; preds = %3610
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.CBufRet.f32 %3652, 1
  %3655 = fsub fast float %3646, %3653
  %3656 = fsub fast float %3647, %3654
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3660 = fmul fast float %3655, %3658
  %3661 = fmul fast float %3656, %3659
  %3662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3660, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = fcmp fast ogt float %3663, 0.000000e+00
  %3665 = extractvalue %dx.types.CBufRet.i32 %3648, 3
  %3666 = icmp ne i32 %3665, 0
  %3667 = and i1 %3664, %3666
  br i1 %3667, label %3668, label %3686, !dx.controlflow.hints !83

; <label>:3668                                    ; preds = %3651
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = fsub fast float %3646, %3670
  %3673 = fsub fast float %3647, %3671
  %3674 = fmul fast float %3672, %3672
  %3675 = fmul fast float %3673, %3673
  %3676 = fadd fast float %3674, %3675
  %3677 = uitofp i32 %3665 to float
  %3678 = fmul fast float %3677, %3677
  %3679 = fcmp fast ogt float %3676, %3678
  br i1 %3679, label %3686, label %3680

; <label>:3680                                    ; preds = %3668
  %3681 = call float @dx.op.unary.f32(i32 24, float %3676)  ; Sqrt(value)
  %3682 = fsub fast float %3677, %3681
  %3683 = fmul fast float %3682, 0x3F75555560000000
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = call float @dx.op.binary.f32(i32 36, float %3684, float %3663)  ; FMin(a,b)
  br label %3686

; <label>:3686                                    ; preds = %3680, %3668, %3651, %3610
  %3687 = phi float [ 1.000000e+00, %3610 ], [ %3685, %3680 ], [ %3663, %3651 ], [ 0.000000e+00, %3668 ]
  %3688 = fcmp fast ogt float %3687, 0.000000e+00
  br i1 %3688, label %3689, label %3787, !dx.controlflow.hints !84

; <label>:3689                                    ; preds = %3686
  %3690 = fadd fast float %154, 5.000000e-01
  %3691 = call float @dx.op.unary.f32(i32 27, float %3690)  ; Round_ni(value)
  %3692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %152, float %153, float %3691, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3693 = extractvalue %dx.types.ResRet.f32 %3692, 0
  %3694 = extractvalue %dx.types.ResRet.f32 %3692, 1
  %3695 = extractvalue %dx.types.ResRet.f32 %3692, 2
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 3
  %3698 = fmul fast float %3697, %3693
  %3699 = fmul fast float %3697, %3694
  %3700 = fmul fast float %3697, %3695
  %3701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %152, float %153, float %3691, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 0
  %3703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %152, float %153, float %3691, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = fmul fast float %3704, 2.000000e+00
  %3707 = fmul fast float %3705, 2.000000e+00
  %3708 = fadd fast float %3706, -1.000000e+00
  %3709 = fadd fast float %3707, -1.000000e+00
  %3710 = fadd fast float %3708, %3709
  %3711 = fmul fast float %3710, 5.000000e-01
  %3712 = fsub fast float %3708, %3709
  %3713 = fmul fast float %3712, 5.000000e-01
  %3714 = call float @dx.op.unary.f32(i32 6, float %3711)  ; FAbs(value)
  %3715 = fsub fast float 1.000000e+00, %3714
  %3716 = call float @dx.op.unary.f32(i32 6, float %3713)  ; FAbs(value)
  %3717 = fsub fast float %3715, %3716
  %3718 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3717)  ; FMax(a,b)
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3711, float %3713, float %3718, float %3711, float %3713, float %3718)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = bitcast float %3719 to i32
  %3721 = ashr i32 %3720, 1
  %3722 = sub nsw i32 1597250115, %3721
  %3723 = bitcast i32 %3722 to float
  %3724 = fmul fast float %3723, %3711
  %3725 = fmul fast float %3723, %3713
  %3726 = fmul fast float %3723, %3718
  %3727 = fsub fast float 1.000000e+00, %3702
  %3728 = fdiv fast float %3727, %3726
  %3729 = fmul fast float %3726, %57
  %3730 = fmul fast float %3726, %58
  %3731 = fmul fast float %3726, %59
  %3732 = fmul fast float %3724, %53
  %3733 = fmul fast float %3724, %54
  %3734 = fmul fast float %3724, %55
  %3735 = fadd fast float %3729, %3732
  %3736 = fadd fast float %3730, %3733
  %3737 = fadd fast float %3731, %3734
  %3738 = fmul fast float %3725, %87
  %3739 = fmul fast float %3725, %88
  %3740 = fmul fast float %3725, %89
  %3741 = fadd fast float %3735, %3738
  %3742 = fadd fast float %3736, %3739
  %3743 = fadd fast float %3737, %3740
  %3744 = call float @dx.op.dot3.f32(i32 55, float %3741, float %3742, float %3743, float %3741, float %3742, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = call float @dx.op.unary.f32(i32 25, float %3744)  ; Rsqrt(value)
  %3746 = fmul fast float %3741, %3745
  %3747 = fmul fast float %3742, %3745
  %3748 = fmul fast float %3743, %3745
  %3749 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3624, float %3625, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fmul fast float %3750, 5.000000e-01
  %3752 = fadd fast float %3751, 5.000000e-01
  %3753 = fmul fast float %3752, %3702
  %3754 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3624, float %3625, float %3746, float %3747, float %3748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3755, %3728
  %3757 = fadd fast float %3753, %3756
  %3758 = fsub fast float 5.000000e-01, %3751
  %3759 = fmul fast float %3758, %3620
  %3760 = fmul fast float %3758, %3621
  %3761 = fmul fast float %3758, %3622
  %3762 = fadd fast float %3757, %3759
  %3763 = fmul fast float %3762, %3698
  %3764 = fadd fast float %3757, %3760
  %3765 = fmul fast float %3764, %3699
  %3766 = fadd fast float %3757, %3761
  %3767 = fmul fast float %3766, %3700
  %3768 = call float @dx.op.dot3.f32(i32 55, float %3636, float %3637, float %3638, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = fmul fast float %3769, 5.000000e-01
  %3771 = fadd fast float %3770, 5.000000e-01
  %3772 = fmul fast float %3771, %3702
  %3773 = call float @dx.op.dot3.f32(i32 55, float %3636, float %3637, float %3638, float %3746, float %3747, float %3748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3775 = fmul fast float %3774, %3728
  %3776 = fadd fast float %3772, %3775
  %3777 = fsub fast float 5.000000e-01, %3770
  %3778 = fmul fast float %3777, %3620
  %3779 = fmul fast float %3777, %3621
  %3780 = fmul fast float %3777, %3622
  %3781 = fadd fast float %3776, %3778
  %3782 = fmul fast float %3781, %3698
  %3783 = fadd fast float %3776, %3779
  %3784 = fmul fast float %3783, %3699
  %3785 = fadd fast float %3776, %3780
  %3786 = fmul fast float %3785, %3700
  br label %3787

; <label>:3787                                    ; preds = %3689, %3686
  %3788 = phi float [ %3782, %3689 ], [ 0.000000e+00, %3686 ]
  %3789 = phi float [ %3784, %3689 ], [ 0.000000e+00, %3686 ]
  %3790 = phi float [ %3786, %3689 ], [ 0.000000e+00, %3686 ]
  %3791 = phi float [ %3763, %3689 ], [ 0.000000e+00, %3686 ]
  %3792 = phi float [ %3765, %3689 ], [ 0.000000e+00, %3686 ]
  %3793 = phi float [ %3767, %3689 ], [ 0.000000e+00, %3686 ]
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3796 = fcmp fast ogt float %3795, 0.000000e+00
  %3797 = and i1 %3688, %3796
  br i1 %3797, label %3798, label %4002, !dx.controlflow.hints !85

; <label>:3798                                    ; preds = %3787
  %3799 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3800 = fadd fast float %3799, %125
  %3801 = fmul fast float %3623, 3.200000e+01
  %3802 = fmul fast float %3624, 3.200000e+01
  %3803 = fadd fast float %3646, %3801
  %3804 = fadd fast float %3647, %3802
  %3805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.CBufRet.f32 %3805, 1
  %3808 = fsub fast float %3803, %3806
  %3809 = fsub fast float %3804, %3807
  %3810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.CBufRet.f32 %3810, 1
  %3813 = fmul fast float %3808, %3811
  %3814 = fmul fast float %3809, %3812
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.CBufRet.f32 %3815, 1
  %3818 = fsub fast float %3646, %3816
  %3819 = fsub fast float %3647, %3817
  %3820 = fmul fast float %3818, %3818
  %3821 = fmul fast float %3819, %3819
  %3822 = fadd fast float %3820, %3821
  %3823 = call float @dx.op.unary.f32(i32 24, float %3822)  ; Sqrt(value)
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.CBufRet.f32 %3824, 1
  %3827 = fsub fast float %3823, %3825
  %3828 = fdiv fast float %3827, %3826
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = fmul fast float %3829, 2.000000e+00
  %3831 = fsub fast float 3.000000e+00, %3830
  %3832 = fmul fast float %3829, %3829
  %3833 = fmul fast float %3832, %3831
  %3834 = fcmp fast oge float %3813, 0.000000e+00
  %3835 = fcmp fast ole float %3813, 1.000000e+00
  %3836 = and i1 %3835, %3834
  %3837 = fcmp fast oge float %3814, 0.000000e+00
  %3838 = and i1 %3837, %3836
  %3839 = fcmp fast ole float %3814, 1.000000e+00
  %3840 = and i1 %3839, %3838
  %3841 = fcmp fast ogt float %3833, 0.000000e+00
  %3842 = and i1 %3841, %3840
  br i1 %3842, label %3843, label %3966, !dx.controlflow.hints !86

; <label>:3843                                    ; preds = %3798
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 2
  %3846 = extractvalue %dx.types.CBufRet.f32 %3844, 3
  %3847 = fmul fast float %3845, %3813
  %3848 = fmul fast float %3846, %3814
  %3849 = call float @dx.op.unary.f32(i32 27, float %3847)  ; Round_ni(value)
  %3850 = call float @dx.op.unary.f32(i32 27, float %3848)  ; Round_ni(value)
  %3851 = fptosi float %3849 to i32
  %3852 = fptosi float %3850 to i32
  %3853 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3851, i32 %3852, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3854 = extractvalue %dx.types.ResRet.i32 %3853, 0
  %3855 = lshr i32 %3854, 16
  %3856 = icmp eq i32 %3855, 65535
  br i1 %3856, label %3966, label %3857

; <label>:3857                                    ; preds = %3843
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = fmul fast float %3859, %3813
  %3861 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3862 = fadd fast float %3860, %3861
  %3863 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3864 = fmul fast float %3863, %3814
  %3865 = extractvalue %dx.types.CBufRet.f32 %3858, 3
  %3866 = fadd fast float %3864, %3865
  %3867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3862, float %3866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3872 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3873 = fsub fast float %3871, %3872
  %3874 = fmul fast float %3873, %3868
  %3875 = fadd fast float %3874, %3872
  %3876 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3877 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3878 = fsub fast float %3876, %3877
  %3879 = fmul fast float %3878, %3869
  %3880 = fadd fast float %3879, %3877
  %3881 = fsub fast float %3800, %3875
  %3882 = fsub fast float %3880, %3875
  %3883 = fdiv fast float %3881, %3882
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3794, 1
  %3886 = extractvalue %dx.types.CBufRet.f32 %3844, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3844, 1
  %3888 = fmul fast float %3886, %3813
  %3889 = fmul fast float %3887, %3814
  %3890 = fmul fast float %3888, 1.250000e-01
  %3891 = fmul fast float %3889, 1.250000e-01
  %3892 = call float @dx.op.unary.f32(i32 27, float %3890)  ; Round_ni(value)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3891)  ; Round_ni(value)
  %3894 = fmul fast float %3892, 8.000000e+00
  %3895 = fmul fast float %3893, 8.000000e+00
  %3896 = fsub fast float %3888, %3894
  %3897 = fsub fast float %3889, %3895
  %3898 = fadd fast float %3896, 5.000000e-01
  %3899 = fadd fast float %3897, 5.000000e-01
  %3900 = and i32 %3855, 255
  %3901 = lshr i32 %3854, 24
  %3902 = mul nuw nsw i32 %3900, 9
  %3903 = uitofp i32 %3902 to float
  %3904 = mul nuw nsw i32 %3901, 9
  %3905 = uitofp i32 %3904 to float
  %3906 = fadd fast float %3898, %3903
  %3907 = fadd fast float %3899, %3905
  %3908 = fdiv fast float %3906, %3795
  %3909 = fdiv fast float %3907, %3885
  %3910 = fmul fast float %3884, 4.375000e-01
  %3911 = fadd fast float %3910, 3.125000e-02
  %3912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3908, float %3909, float %3911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = fadd fast float %3910, 5.312500e-01
  %3917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3908, float %3909, float %3916, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = fmul fast float %3918, 2.000000e+00
  %3922 = fmul fast float %3919, 2.000000e+00
  %3923 = fmul fast float %3920, 2.000000e+00
  %3924 = fadd fast float %3921, -1.000000e+00
  %3925 = fadd fast float %3922, -1.000000e+00
  %3926 = fadd fast float %3923, -1.000000e+00
  %3927 = fmul fast float %3924, %3924
  %3928 = fmul fast float %3925, %3925
  %3929 = fadd fast float %3927, %3928
  %3930 = fmul fast float %3926, %3926
  %3931 = fadd fast float %3929, %3930
  %3932 = call float @dx.op.unary.f32(i32 24, float %3931)  ; Sqrt(value)
  %3933 = fcmp fast ogt float %3932, 0.000000e+00
  br i1 %3933, label %3934, label %3938

; <label>:3934                                    ; preds = %3857
  %3935 = fdiv fast float %3924, %3932
  %3936 = fdiv fast float %3925, %3932
  %3937 = fdiv fast float %3926, %3932
  br label %3938

; <label>:3938                                    ; preds = %3934, %3857
  %3939 = phi float [ %3935, %3934 ], [ 0.000000e+00, %3857 ]
  %3940 = phi float [ %3936, %3934 ], [ 0.000000e+00, %3857 ]
  %3941 = phi float [ %3937, %3934 ], [ 0.000000e+00, %3857 ]
  %3942 = call float @dx.op.dot3.f32(i32 55, float %3939, float %3940, float %3941, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %3943 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3942)  ; FMax(a,b)
  %3944 = fmul fast float %3943, 0x400C5BF8A0000000
  %3945 = fmul fast float %3913, %3833
  %3946 = fmul fast float %3945, %3944
  %3947 = fmul fast float %3914, %3833
  %3948 = fmul fast float %3947, %3944
  %3949 = fmul fast float %3915, %3833
  %3950 = fmul fast float %3949, %3944
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3953 = fmul fast float %3946, %3952
  %3954 = fmul fast float %3948, %3952
  %3955 = fmul fast float %3950, %3952
  %3956 = fcmp fast ogt float %3800, %3880
  br i1 %3956, label %3957, label %3966

; <label>:3957                                    ; preds = %3938
  %3958 = fmul fast float %3882, 0x3FC24924A0000000
  %3959 = fsub fast float %3800, %3880
  %3960 = fdiv fast float %3959, %3958
  %3961 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3962 = fsub fast float 1.000000e+00, %3961
  %3963 = fmul fast float %3962, %3953
  %3964 = fmul fast float %3962, %3954
  %3965 = fmul fast float %3962, %3955
  br label %3966

; <label>:3966                                    ; preds = %3957, %3938, %3843, %3798
  %3967 = phi float [ %3965, %3957 ], [ %3955, %3938 ], [ 0.000000e+00, %3843 ], [ 0.000000e+00, %3798 ]
  %3968 = phi float [ %3964, %3957 ], [ %3954, %3938 ], [ 0.000000e+00, %3843 ], [ 0.000000e+00, %3798 ]
  %3969 = phi float [ %3963, %3957 ], [ %3953, %3938 ], [ 0.000000e+00, %3843 ], [ 0.000000e+00, %3798 ]
  %3970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3969)  ; FMax(a,b)
  %3971 = fmul fast float %3970, 0x3FD20DD760000000
  %3972 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3636, float %3637, float %3638)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = fmul fast float %3972, 0x3FDF454380000000
  %3974 = fmul fast float %3972, %3972
  %3975 = fmul fast float %3974, 0x3FEE471020000000
  %3976 = fadd fast float %3975, 0xBFD42F6020000000
  %3977 = call float @dx.op.dot3.f32(i32 55, float %3970, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3973, float %3976)  ; Dot3(ax,ay,az,bx,by,bz)
  %3978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3968)  ; FMax(a,b)
  %3979 = fmul fast float %3978, 0x3FD20DD760000000
  %3980 = call float @dx.op.dot3.f32(i32 55, float %3978, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3973, float %3976)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3967)  ; FMax(a,b)
  %3982 = fmul fast float %3981, 0x3FD20DD760000000
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3981, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3973, float %3976)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call float @dx.op.binary.f32(i32 35, float %3971, float 0.000000e+00)  ; FMax(a,b)
  %3985 = call float @dx.op.binary.f32(i32 35, float %3979, float 0.000000e+00)  ; FMax(a,b)
  %3986 = call float @dx.op.binary.f32(i32 35, float %3982, float 0.000000e+00)  ; FMax(a,b)
  %3987 = call float @dx.op.binary.f32(i32 35, float %3977, float 0.000000e+00)  ; FMax(a,b)
  %3988 = call float @dx.op.binary.f32(i32 35, float %3980, float 0.000000e+00)  ; FMax(a,b)
  %3989 = call float @dx.op.binary.f32(i32 35, float %3983, float 0.000000e+00)  ; FMax(a,b)
  %3990 = fmul fast float %3984, %3687
  %3991 = fmul fast float %3985, %3687
  %3992 = fmul fast float %3986, %3687
  %3993 = fadd fast float %3990, %3791
  %3994 = fadd fast float %3991, %3792
  %3995 = fadd fast float %3992, %3793
  %3996 = fmul fast float %3987, %3687
  %3997 = fmul fast float %3988, %3687
  %3998 = fmul fast float %3989, %3687
  %3999 = fadd fast float %3996, %3788
  %4000 = fadd fast float %3997, %3789
  %4001 = fadd fast float %3998, %3790
  br label %4002

; <label>:4002                                    ; preds = %3966, %3787
  %4003 = phi float [ %3999, %3966 ], [ %3788, %3787 ]
  %4004 = phi float [ %4000, %3966 ], [ %3789, %3787 ]
  %4005 = phi float [ %4001, %3966 ], [ %3790, %3787 ]
  %4006 = phi float [ %3993, %3966 ], [ %3791, %3787 ]
  %4007 = phi float [ %3994, %3966 ], [ %3792, %3787 ]
  %4008 = phi float [ %3995, %3966 ], [ %3793, %3787 ]
  %4009 = fcmp fast olt float %3687, 1.000000e+00
  br i1 %4009, label %4010, label %4828, !dx.controlflow.hints !87

; <label>:4010                                    ; preds = %4002
  %4011 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %4012 = fadd fast float %4011, %125
  %4013 = fmul fast float %3623, 3.200000e+01
  %4014 = fmul fast float %3624, 3.200000e+01
  %4015 = fadd fast float %3646, %4013
  %4016 = fadd fast float %3647, %4014
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.CBufRet.f32 %4017, 1
  %4020 = fsub fast float %4015, %4018
  %4021 = fsub fast float %4016, %4019
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4025 = fmul fast float %4020, %4023
  %4026 = fmul fast float %4021, %4024
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = fmul fast float %4025, %4028
  %4030 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4031 = fadd fast float %4029, %4030
  %4032 = extractvalue %dx.types.CBufRet.f32 %4027, 2
  %4033 = fmul fast float %4032, %4026
  %4034 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4035 = fadd fast float %4033, %4034
  %4036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4031, float %4035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4041 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4042 = fsub fast float %4040, %4041
  %4043 = fmul fast float %4042, %4037
  %4044 = fadd fast float %4043, %4041
  %4045 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4046 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4047 = fsub fast float %4045, %4046
  %4048 = fmul fast float %4047, %4038
  %4049 = fadd fast float %4048, %4046
  %4050 = fsub fast float %4012, %4044
  %4051 = fsub fast float %4049, %4044
  %4052 = fdiv fast float %4050, %4051
  %4053 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = fmul fast float %4055, %4053
  %4057 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4058 = fadd fast float %4056, %4057
  %4059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4031, float %4035, float %4058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %4059, 2
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4067 = fmul fast float %4064, %4060
  %4068 = fmul fast float %4065, %4061
  %4069 = fmul fast float %4066, %4062
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4070, 2
  %4074 = fadd fast float %4067, %4071
  %4075 = fadd fast float %4068, %4072
  %4076 = fadd fast float %4069, %4073
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = fmul fast float %4078, %4025
  %4080 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4081 = fadd fast float %4079, %4080
  %4082 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4083 = fmul fast float %4082, %4026
  %4084 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4085 = fadd fast float %4083, %4084
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4090 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4095 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4081, float %4085, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.ResRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.ResRet.f32 %4096, 2
  %4100 = extractvalue %dx.types.ResRet.f32 %4096, 3
  %4101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4081, float %4085, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %4101, 2
  %4105 = extractvalue %dx.types.ResRet.f32 %4101, 3
  %4106 = fmul fast float %4097, %4074
  %4107 = fmul fast float %4102, %4074
  %4108 = fmul fast float %4104, %4074
  %4109 = fmul fast float %4100, %4074
  %4110 = fadd fast float %4106, %4087
  %4111 = fadd fast float %4107, %4088
  %4112 = fadd fast float %4108, %4089
  %4113 = fadd fast float %4109, %4090
  %4114 = fmul fast float %4098, %4074
  %4115 = fmul fast float %4103, %4074
  %4116 = fadd fast float %4114, %4092
  %4117 = fadd fast float %4115, %4093
  %4118 = fmul fast float %4099, %4074
  %4119 = fmul fast float %4105, %4074
  %4120 = fadd fast float %4118, %4094
  %4121 = fadd fast float %4119, %4095
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4081, float %4085, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = extractvalue %dx.types.ResRet.f32 %4122, 3
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4081, float %4085, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = extractvalue %dx.types.ResRet.f32 %4127, 3
  %4132 = fmul fast float %4123, %4075
  %4133 = fmul fast float %4128, %4075
  %4134 = fmul fast float %4130, %4075
  %4135 = fmul fast float %4126, %4075
  %4136 = fadd fast float %4110, %4132
  %4137 = fadd fast float %4111, %4133
  %4138 = fadd fast float %4112, %4134
  %4139 = fadd fast float %4113, %4135
  %4140 = fmul fast float %4124, %4075
  %4141 = fmul fast float %4129, %4075
  %4142 = fadd fast float %4116, %4140
  %4143 = fadd fast float %4117, %4141
  %4144 = fmul fast float %4125, %4075
  %4145 = fmul fast float %4131, %4075
  %4146 = fadd fast float %4120, %4144
  %4147 = fadd fast float %4121, %4145
  %4148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4081, float %4085, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = extractvalue %dx.types.ResRet.f32 %4148, 3
  %4153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4081, float %4085, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = fmul fast float %4149, %4076
  %4159 = fmul fast float %4154, %4076
  %4160 = fmul fast float %4156, %4076
  %4161 = fmul fast float %4152, %4076
  %4162 = fadd fast float %4136, %4158
  %4163 = fadd fast float %4137, %4159
  %4164 = fadd fast float %4138, %4160
  %4165 = fadd fast float %4139, %4161
  %4166 = fmul fast float %4150, %4076
  %4167 = fmul fast float %4155, %4076
  %4168 = fadd fast float %4142, %4166
  %4169 = fadd fast float %4143, %4167
  %4170 = fmul fast float %4151, %4076
  %4171 = fmul fast float %4157, %4076
  %4172 = fadd fast float %4146, %4170
  %4173 = fadd fast float %4147, %4171
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = fsub fast float %3646, %4175
  %4177 = fsub fast float %4018, %3646
  %4178 = call float @dx.op.binary.f32(i32 35, float %4177, float %4176)  ; FMax(a,b)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4174, 1
  %4180 = fsub fast float %3647, %4179
  %4181 = fsub fast float %4019, %3647
  %4182 = call float @dx.op.binary.f32(i32 35, float %4181, float %4180)  ; FMax(a,b)
  %4183 = call float @dx.op.binary.f32(i32 35, float %4178, float %4182)  ; FMax(a,b)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4185 = fmul fast float %4184, %4183
  %4186 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.CBufRet.f32 %4187, 2
  %4191 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4192 = fsub fast float %4188, %4162
  %4193 = fsub fast float %4189, %4163
  %4194 = fsub fast float %4190, %4164
  %4195 = fsub fast float %4191, %4165
  %4196 = fmul fast float %4192, %4186
  %4197 = fmul fast float %4193, %4186
  %4198 = fmul fast float %4194, %4186
  %4199 = fmul fast float %4195, %4186
  %4200 = fadd fast float %4196, %4162
  %4201 = fadd fast float %4197, %4163
  %4202 = fadd fast float %4198, %4164
  %4203 = fadd fast float %4199, %4165
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4207 = fsub fast float %4205, %4168
  %4208 = fsub fast float %4206, %4169
  %4209 = fmul fast float %4207, %4186
  %4210 = fmul fast float %4208, %4186
  %4211 = fadd fast float %4209, %4168
  %4212 = fadd fast float %4210, %4169
  %4213 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4204, 3
  %4215 = fsub fast float %4213, %4172
  %4216 = fsub fast float %4214, %4173
  %4217 = fmul fast float %4215, %4186
  %4218 = fmul fast float %4216, %4186
  %4219 = fadd fast float %4217, %4172
  %4220 = fadd fast float %4218, %4173
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 0
  %4223 = fmul fast float %4222, %4200
  %4224 = fmul fast float %4222, %4201
  %4225 = fmul fast float %4222, %4202
  %4226 = fmul fast float %4222, %4203
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 0
  %4229 = fmul fast float %4228, %4211
  %4230 = fmul fast float %4228, %4212
  %4231 = fadd fast float %4229, %4223
  %4232 = fadd fast float %4230, %4225
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = fmul fast float %4234, %4219
  %4236 = fmul fast float %4234, %4220
  %4237 = fadd fast float %4231, %4235
  %4238 = fadd fast float %4232, %4236
  %4239 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4240 = fmul fast float %4239, %4200
  %4241 = fmul fast float %4239, %4201
  %4242 = fmul fast float %4239, %4202
  %4243 = fmul fast float %4239, %4203
  %4244 = extractvalue %dx.types.CBufRet.f32 %4227, 1
  %4245 = fmul fast float %4244, %4211
  %4246 = fmul fast float %4244, %4212
  %4247 = fadd fast float %4245, %4240
  %4248 = fadd fast float %4246, %4242
  %4249 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4250 = fmul fast float %4249, %4219
  %4251 = fmul fast float %4249, %4220
  %4252 = fadd fast float %4247, %4250
  %4253 = fadd fast float %4248, %4251
  %4254 = extractvalue %dx.types.CBufRet.f32 %4221, 2
  %4255 = fmul fast float %4254, %4200
  %4256 = fmul fast float %4254, %4201
  %4257 = fmul fast float %4254, %4202
  %4258 = fmul fast float %4254, %4203
  %4259 = extractvalue %dx.types.CBufRet.f32 %4227, 2
  %4260 = fmul fast float %4259, %4211
  %4261 = fmul fast float %4259, %4212
  %4262 = fadd fast float %4260, %4255
  %4263 = fadd fast float %4261, %4257
  %4264 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4265 = fmul fast float %4264, %4219
  %4266 = fmul fast float %4264, %4220
  %4267 = fadd fast float %4262, %4265
  %4268 = fadd fast float %4263, %4266
  %4269 = fmul fast float %4256, %4256
  %4270 = fmul fast float %4268, %4268
  %4271 = fmul fast float %4258, %4258
  %4272 = fadd fast float %4271, %4269
  %4273 = fadd fast float %4272, %4270
  %4274 = call float @dx.op.unary.f32(i32 24, float %4273)  ; Sqrt(value)
  %4275 = fcmp fast ugt float %4274, 0.000000e+00
  br i1 %4275, label %4276, label %4291

; <label>:4276                                    ; preds = %4010
  %4277 = fsub fast float -0.000000e+00, %4258
  %4278 = fdiv fast float %4277, %4274
  %4279 = fsub fast float -0.000000e+00, %4256
  %4280 = fdiv fast float %4279, %4274
  %4281 = fdiv fast float %4268, %4274
  %4282 = fmul fast float %4267, 0x3FE279A760000000
  %4283 = fmul fast float %4280, %4256
  %4284 = fmul fast float %4281, %4268
  %4285 = fmul fast float %4278, %4258
  %4286 = fadd fast float %4283, %4285
  %4287 = fsub fast float %4286, %4284
  %4288 = call float @dx.op.unary.f32(i32 6, float %4287)  ; FAbs(value)
  %4289 = fadd fast float %4288, 0x3DDB7CDFE0000000
  %4290 = fdiv fast float %4282, %4289
  br label %4291

; <label>:4291                                    ; preds = %4276, %4010
  %4292 = phi float [ %4290, %4276 ], [ 1.000000e+00, %4010 ]
  %4293 = fmul fast float %4241, %4241
  %4294 = fmul fast float %4253, %4253
  %4295 = fmul fast float %4243, %4243
  %4296 = fadd fast float %4295, %4293
  %4297 = fadd fast float %4296, %4294
  %4298 = call float @dx.op.unary.f32(i32 24, float %4297)  ; Sqrt(value)
  %4299 = fcmp fast ugt float %4298, 0.000000e+00
  br i1 %4299, label %4300, label %4315

; <label>:4300                                    ; preds = %4291
  %4301 = fsub fast float -0.000000e+00, %4243
  %4302 = fdiv fast float %4301, %4298
  %4303 = fsub fast float -0.000000e+00, %4241
  %4304 = fdiv fast float %4303, %4298
  %4305 = fdiv fast float %4253, %4298
  %4306 = fmul fast float %4252, 0x3FE279A760000000
  %4307 = fmul fast float %4304, %4241
  %4308 = fmul fast float %4305, %4253
  %4309 = fmul fast float %4302, %4243
  %4310 = fadd fast float %4307, %4309
  %4311 = fsub fast float %4310, %4308
  %4312 = call float @dx.op.unary.f32(i32 6, float %4311)  ; FAbs(value)
  %4313 = fadd fast float %4312, 0x3DDB7CDFE0000000
  %4314 = fdiv fast float %4306, %4313
  br label %4315

; <label>:4315                                    ; preds = %4300, %4291
  %4316 = phi float [ %4314, %4300 ], [ 1.000000e+00, %4291 ]
  %4317 = call float @dx.op.binary.f32(i32 36, float %4316, float %4292)  ; FMin(a,b)
  %4318 = fmul fast float %4224, %4224
  %4319 = fmul fast float %4238, %4238
  %4320 = fmul fast float %4226, %4226
  %4321 = fadd fast float %4320, %4318
  %4322 = fadd fast float %4321, %4319
  %4323 = call float @dx.op.unary.f32(i32 24, float %4322)  ; Sqrt(value)
  %4324 = fcmp fast ugt float %4323, 0.000000e+00
  br i1 %4324, label %4325, label %4340

; <label>:4325                                    ; preds = %4315
  %4326 = fsub fast float -0.000000e+00, %4226
  %4327 = fdiv fast float %4326, %4323
  %4328 = fsub fast float -0.000000e+00, %4224
  %4329 = fdiv fast float %4328, %4323
  %4330 = fdiv fast float %4238, %4323
  %4331 = fmul fast float %4237, 0x3FE279A760000000
  %4332 = fmul fast float %4329, %4224
  %4333 = fmul fast float %4330, %4238
  %4334 = fmul fast float %4327, %4226
  %4335 = fadd fast float %4332, %4334
  %4336 = fsub fast float %4335, %4333
  %4337 = call float @dx.op.unary.f32(i32 6, float %4336)  ; FAbs(value)
  %4338 = fadd fast float %4337, 0x3DDB7CDFE0000000
  %4339 = fdiv fast float %4331, %4338
  br label %4340

; <label>:4340                                    ; preds = %4325, %4315
  %4341 = phi float [ %4339, %4325 ], [ 1.000000e+00, %4315 ]
  %4342 = call float @dx.op.binary.f32(i32 36, float %4341, float %4317)  ; FMin(a,b)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = fcmp fast olt float %4343, 1.000000e+00
  br i1 %4344, label %4345, label %4355

; <label>:4345                                    ; preds = %4340
  %4346 = fmul fast float %4343, %4224
  %4347 = fmul fast float %4343, %4238
  %4348 = fmul fast float %4343, %4226
  %4349 = fmul fast float %4343, %4241
  %4350 = fmul fast float %4343, %4253
  %4351 = fmul fast float %4343, %4243
  %4352 = fmul fast float %4343, %4256
  %4353 = fmul fast float %4343, %4268
  %4354 = fmul fast float %4343, %4258
  br label %4355

; <label>:4355                                    ; preds = %4345, %4340
  %4356 = phi float [ %4352, %4345 ], [ %4256, %4340 ]
  %4357 = phi float [ %4353, %4345 ], [ %4268, %4340 ]
  %4358 = phi float [ %4354, %4345 ], [ %4258, %4340 ]
  %4359 = phi float [ %4349, %4345 ], [ %4241, %4340 ]
  %4360 = phi float [ %4350, %4345 ], [ %4253, %4340 ]
  %4361 = phi float [ %4351, %4345 ], [ %4243, %4340 ]
  %4362 = phi float [ %4346, %4345 ], [ %4224, %4340 ]
  %4363 = phi float [ %4347, %4345 ], [ %4238, %4340 ]
  %4364 = phi float [ %4348, %4345 ], [ %4226, %4340 ]
  %4365 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4237)  ; FMax(a,b)
  %4366 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4252)  ; FMax(a,b)
  %4367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4267)  ; FMax(a,b)
  %4368 = fcmp fast oge float %4025, 0.000000e+00
  %4369 = and i1 %4368, %3796
  %4370 = fcmp fast ole float %4025, 1.000000e+00
  %4371 = and i1 %4370, %4369
  %4372 = fcmp fast oge float %4026, 0.000000e+00
  %4373 = and i1 %4372, %4371
  %4374 = fcmp fast ole float %4026, 1.000000e+00
  %4375 = and i1 %4374, %4373
  br i1 %4375, label %4376, label %4521, !dx.controlflow.hints !88

; <label>:4376                                    ; preds = %4355
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4379 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4380 = fmul fast float %4378, %4025
  %4381 = fmul fast float %4379, %4026
  %4382 = call float @dx.op.unary.f32(i32 27, float %4380)  ; Round_ni(value)
  %4383 = call float @dx.op.unary.f32(i32 27, float %4381)  ; Round_ni(value)
  %4384 = fptosi float %4382 to i32
  %4385 = fptosi float %4383 to i32
  %4386 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4384, i32 %4385, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4387 = extractvalue %dx.types.ResRet.i32 %4386, 0
  %4388 = and i32 %4387, 65535
  %4389 = lshr i32 %4387, 16
  %4390 = icmp eq i32 %4388, 65535
  br i1 %4390, label %4427, label %4391

; <label>:4391                                    ; preds = %4376
  %4392 = extractvalue %dx.types.CBufRet.f32 %3794, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4394 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4395 = fmul fast float %4393, %4025
  %4396 = fmul fast float %4394, %4026
  %4397 = fmul fast float %4395, 1.250000e-01
  %4398 = fmul fast float %4396, 1.250000e-01
  %4399 = call float @dx.op.unary.f32(i32 27, float %4397)  ; Round_ni(value)
  %4400 = call float @dx.op.unary.f32(i32 27, float %4398)  ; Round_ni(value)
  %4401 = fmul fast float %4399, 8.000000e+00
  %4402 = fmul fast float %4400, 8.000000e+00
  %4403 = and i32 %4387, 255
  %4404 = lshr i32 %4387, 8
  %4405 = and i32 %4404, 255
  %4406 = mul nuw nsw i32 %4403, 9
  %4407 = uitofp i32 %4406 to float
  %4408 = mul nuw nsw i32 %4405, 9
  %4409 = uitofp i32 %4408 to float
  %4410 = fadd fast float %4407, 5.000000e-01
  %4411 = fadd fast float %4410, %4395
  %4412 = fsub fast float %4411, %4401
  %4413 = fadd fast float %4409, 5.000000e-01
  %4414 = fadd fast float %4413, %4396
  %4415 = fsub fast float %4414, %4402
  %4416 = fdiv fast float %4412, %3795
  %4417 = fdiv fast float %4415, %4392
  %4418 = fmul fast float %4053, 4.375000e-01
  %4419 = fadd fast float %4418, 3.125000e-02
  %4420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4416, float %4417, float %4419, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = extractvalue %dx.types.ResRet.f32 %4420, 1
  %4423 = extractvalue %dx.types.ResRet.f32 %4420, 2
  %4424 = fadd fast float %4421, %4365
  %4425 = fadd fast float %4422, %4366
  %4426 = fadd fast float %4423, %4367
  br label %4427

; <label>:4427                                    ; preds = %4391, %4376
  %4428 = phi float [ %4426, %4391 ], [ %4367, %4376 ]
  %4429 = phi float [ %4425, %4391 ], [ %4366, %4376 ]
  %4430 = phi float [ %4424, %4391 ], [ %4365, %4376 ]
  %4431 = icmp eq i32 %4389, 65535
  br i1 %4431, label %4521, label %4432

; <label>:4432                                    ; preds = %4427
  %4433 = extractvalue %dx.types.CBufRet.f32 %3794, 1
  %4434 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4435 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4436 = fmul fast float %4434, %4025
  %4437 = fmul fast float %4435, %4026
  %4438 = fmul fast float %4436, 1.250000e-01
  %4439 = fmul fast float %4437, 1.250000e-01
  %4440 = call float @dx.op.unary.f32(i32 27, float %4438)  ; Round_ni(value)
  %4441 = call float @dx.op.unary.f32(i32 27, float %4439)  ; Round_ni(value)
  %4442 = fmul fast float %4440, 8.000000e+00
  %4443 = fmul fast float %4441, 8.000000e+00
  %4444 = fsub fast float %4436, %4442
  %4445 = fsub fast float %4437, %4443
  %4446 = fadd fast float %4444, 5.000000e-01
  %4447 = fadd fast float %4445, 5.000000e-01
  %4448 = and i32 %4389, 255
  %4449 = lshr i32 %4387, 24
  %4450 = mul nuw nsw i32 %4448, 9
  %4451 = uitofp i32 %4450 to float
  %4452 = mul nuw nsw i32 %4449, 9
  %4453 = uitofp i32 %4452 to float
  %4454 = fadd fast float %4446, %4451
  %4455 = fadd fast float %4447, %4453
  %4456 = fdiv fast float %4454, %3795
  %4457 = fdiv fast float %4455, %4433
  %4458 = fmul fast float %4053, 4.375000e-01
  %4459 = fadd fast float %4458, 3.125000e-02
  %4460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4456, float %4457, float %4459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = extractvalue %dx.types.ResRet.f32 %4460, 1
  %4463 = extractvalue %dx.types.ResRet.f32 %4460, 2
  %4464 = fadd fast float %4458, 5.312500e-01
  %4465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4456, float %4457, float %4464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4466 = extractvalue %dx.types.ResRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.ResRet.f32 %4465, 1
  %4468 = extractvalue %dx.types.ResRet.f32 %4465, 2
  %4469 = fmul fast float %4466, 2.000000e+00
  %4470 = fmul fast float %4467, 2.000000e+00
  %4471 = fmul fast float %4468, 2.000000e+00
  %4472 = fadd fast float %4469, -1.000000e+00
  %4473 = fadd fast float %4470, -1.000000e+00
  %4474 = fadd fast float %4471, -1.000000e+00
  %4475 = fmul fast float %4472, %4472
  %4476 = fmul fast float %4473, %4473
  %4477 = fadd fast float %4475, %4476
  %4478 = fmul fast float %4474, %4474
  %4479 = fadd fast float %4477, %4478
  %4480 = call float @dx.op.unary.f32(i32 24, float %4479)  ; Sqrt(value)
  %4481 = fcmp fast ogt float %4480, 0.000000e+00
  br i1 %4481, label %4482, label %4486

; <label>:4482                                    ; preds = %4432
  %4483 = fdiv fast float %4472, %4480
  %4484 = fdiv fast float %4473, %4480
  %4485 = fdiv fast float %4474, %4480
  br label %4486

; <label>:4486                                    ; preds = %4482, %4432
  %4487 = phi float [ %4483, %4482 ], [ 0.000000e+00, %4432 ]
  %4488 = phi float [ %4484, %4482 ], [ 0.000000e+00, %4432 ]
  %4489 = phi float [ %4485, %4482 ], [ 0.000000e+00, %4432 ]
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 1
  %4493 = fsub fast float %3646, %4491
  %4494 = fsub fast float %3647, %4492
  %4495 = fmul fast float %4493, %4493
  %4496 = fmul fast float %4494, %4494
  %4497 = fadd fast float %4495, %4496
  %4498 = call float @dx.op.unary.f32(i32 24, float %4497)  ; Sqrt(value)
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.CBufRet.f32 %4499, 1
  %4502 = fsub fast float %4498, %4500
  %4503 = fdiv fast float %4502, %4501
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = fmul fast float %4504, 2.000000e+00
  %4506 = fsub fast float 3.000000e+00, %4505
  %4507 = fmul fast float %4504, %4504
  %4508 = fmul fast float %4507, %4506
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4487, float %4488, float %4489, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4509)  ; FMax(a,b)
  %4511 = fmul fast float %4510, 0x400C5BF8A0000000
  %4512 = fmul fast float %4508, %4461
  %4513 = fmul fast float %4512, %4511
  %4514 = fadd fast float %4513, %4430
  %4515 = fmul fast float %4508, %4462
  %4516 = fmul fast float %4515, %4511
  %4517 = fadd fast float %4516, %4429
  %4518 = fmul fast float %4508, %4463
  %4519 = fmul fast float %4518, %4511
  %4520 = fadd fast float %4519, %4428
  br label %4521

; <label>:4521                                    ; preds = %4486, %4427, %4355
  %4522 = phi float [ %4520, %4486 ], [ %4428, %4427 ], [ %4367, %4355 ]
  %4523 = phi float [ %4517, %4486 ], [ %4429, %4427 ], [ %4366, %4355 ]
  %4524 = phi float [ %4514, %4486 ], [ %4430, %4427 ], [ %4365, %4355 ]
  %4525 = fcmp fast ogt float %4012, %4049
  %4526 = and i1 %4368, %4525
  %4527 = and i1 %4370, %4526
  %4528 = and i1 %4372, %4527
  %4529 = and i1 %4374, %4528
  br i1 %4529, label %4530, label %4587, !dx.controlflow.hints !89

; <label>:4530                                    ; preds = %4521
  %4531 = fmul fast float %4051, 0x3FC24924A0000000
  %4532 = fsub fast float %4012, %4049
  %4533 = fdiv fast float %4532, %4531
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.CBufRet.f32 %4537, 2
  %4541 = fsub fast float %4536, %4524
  %4542 = fsub fast float %4538, %4362
  %4543 = fsub fast float %4539, %4363
  %4544 = fsub fast float %4540, %4364
  %4545 = fmul fast float %4541, %4534
  %4546 = fmul fast float %4542, %4534
  %4547 = fmul fast float %4543, %4534
  %4548 = fmul fast float %4544, %4534
  %4549 = fadd fast float %4545, %4524
  %4550 = fadd fast float %4546, %4362
  %4551 = fadd fast float %4547, %4363
  %4552 = fadd fast float %4548, %4364
  %4553 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.CBufRet.f32 %4554, 2
  %4558 = fsub fast float %4553, %4523
  %4559 = fsub fast float %4555, %4359
  %4560 = fsub fast float %4556, %4360
  %4561 = fsub fast float %4557, %4361
  %4562 = fmul fast float %4558, %4534
  %4563 = fmul fast float %4559, %4534
  %4564 = fmul fast float %4560, %4534
  %4565 = fmul fast float %4561, %4534
  %4566 = fadd fast float %4562, %4523
  %4567 = fadd fast float %4563, %4359
  %4568 = fadd fast float %4564, %4360
  %4569 = fadd fast float %4565, %4361
  %4570 = extractvalue %dx.types.CBufRet.f32 %4535, 2
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4575 = fsub fast float %4570, %4522
  %4576 = fsub fast float %4572, %4356
  %4577 = fsub fast float %4573, %4357
  %4578 = fsub fast float %4574, %4358
  %4579 = fmul fast float %4575, %4534
  %4580 = fmul fast float %4576, %4534
  %4581 = fmul fast float %4577, %4534
  %4582 = fmul fast float %4578, %4534
  %4583 = fadd fast float %4579, %4522
  %4584 = fadd fast float %4580, %4356
  %4585 = fadd fast float %4581, %4357
  %4586 = fadd fast float %4582, %4358
  br label %4587

; <label>:4587                                    ; preds = %4530, %4521
  %4588 = phi float [ %4583, %4530 ], [ %4522, %4521 ]
  %4589 = phi float [ %4584, %4530 ], [ %4356, %4521 ]
  %4590 = phi float [ %4585, %4530 ], [ %4357, %4521 ]
  %4591 = phi float [ %4586, %4530 ], [ %4358, %4521 ]
  %4592 = phi float [ %4566, %4530 ], [ %4523, %4521 ]
  %4593 = phi float [ %4567, %4530 ], [ %4359, %4521 ]
  %4594 = phi float [ %4568, %4530 ], [ %4360, %4521 ]
  %4595 = phi float [ %4569, %4530 ], [ %4361, %4521 ]
  %4596 = phi float [ %4549, %4530 ], [ %4524, %4521 ]
  %4597 = phi float [ %4550, %4530 ], [ %4362, %4521 ]
  %4598 = phi float [ %4551, %4530 ], [ %4363, %4521 ]
  %4599 = phi float [ %4552, %4530 ], [ %4364, %4521 ]
  %4600 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4601 = fmul fast float %4600, %4596
  %4602 = fmul fast float %4600, %4592
  %4603 = fmul fast float %4600, %4588
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 3
  %4606 = fmul fast float %4601, %4605
  %4607 = fmul fast float %4602, %4605
  %4608 = fmul fast float %4603, %4605
  %4609 = fmul fast float %4597, 1.500000e+00
  %4610 = fmul fast float %4609, %4600
  %4611 = fmul fast float %4610, %4605
  %4612 = fmul fast float %4598, 1.500000e+00
  %4613 = fmul fast float %4612, %4600
  %4614 = fmul fast float %4613, %4605
  %4615 = fmul fast float %4599, 1.500000e+00
  %4616 = fmul fast float %4615, %4600
  %4617 = fmul fast float %4616, %4605
  %4618 = fmul fast float %4593, 1.500000e+00
  %4619 = fmul fast float %4618, %4600
  %4620 = fmul fast float %4619, %4605
  %4621 = fmul fast float %4594, 1.500000e+00
  %4622 = fmul fast float %4621, %4600
  %4623 = fmul fast float %4622, %4605
  %4624 = fmul fast float %4595, 1.500000e+00
  %4625 = fmul fast float %4624, %4600
  %4626 = fmul fast float %4625, %4605
  %4627 = fmul fast float %4589, 1.500000e+00
  %4628 = fmul fast float %4627, %4600
  %4629 = fmul fast float %4628, %4605
  %4630 = fmul fast float %4590, 1.500000e+00
  %4631 = fmul fast float %4630, %4600
  %4632 = fmul fast float %4631, %4605
  %4633 = fmul fast float %4591, 1.500000e+00
  %4634 = fmul fast float %4633, %4600
  %4635 = fmul fast float %4634, %4605
  %4636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4606)  ; FMax(a,b)
  %4637 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4614, float %4617, float %4611, float %4614, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = fcmp fast oeq float %4637, 0.000000e+00
  %4639 = fcmp fast oeq float %4636, 0.000000e+00
  %4640 = or i1 %4639, %4638
  br i1 %4640, label %4670, label %4641

; <label>:4641                                    ; preds = %4587
  %4642 = fsub fast float -0.000000e+00, %4617
  %4643 = fsub fast float -0.000000e+00, %4611
  %4644 = call float @dx.op.unary.f32(i32 24, float %4637)  ; Sqrt(value)
  %4645 = fdiv fast float %4644, %4636
  %4646 = fcmp fast ogt float %4645, 0x3FFB6F8900000000
  %4647 = select i1 %4646, float 0x3FFB6F8900000000, float %4645
  %4648 = fmul fast float %4647, 0x3FE8A23460000000
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = call float @dx.op.binary.f32(i32 35, float %4647, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4651 = fmul fast float %4649, %4636
  %4652 = fmul fast float %4650, 0x3FF279A740000000
  %4653 = fadd fast float %4652, -1.000000e+00
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4643, float %4614, float %4642, float %4643, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = call float @dx.op.unary.f32(i32 25, float %4654)  ; Rsqrt(value)
  %4656 = fmul fast float %4655, %4642
  %4657 = fmul fast float %4655, %4643
  %4658 = fmul fast float %4655, %4614
  %4659 = fmul fast float %4653, %4653
  %4660 = fsub fast float 1.000000e+00, %4659
  %4661 = fmul fast float %4650, 0x40005F8BE0000000
  %4662 = fsub fast float 0x400C5BF8A0000000, %4661
  %4663 = fdiv fast float %4651, %4662
  %4664 = fmul fast float %4663, 0x3FEE31C3C0000000
  %4665 = fmul fast float %4664, %4660
  %4666 = fmul fast float %4650, 0x3FDACB7480000000
  %4667 = fadd fast float %4666, 0xBFD7347680000000
  %4668 = fmul fast float %4667, %4663
  %4669 = fmul fast float %4668, %4660
  br label %4670

; <label>:4670                                    ; preds = %4641, %4587
  %4671 = phi float [ %4656, %4641 ], [ 0.000000e+00, %4587 ]
  %4672 = phi float [ %4657, %4641 ], [ 0.000000e+00, %4587 ]
  %4673 = phi float [ %4658, %4641 ], [ 0.000000e+00, %4587 ]
  %4674 = phi float [ %4665, %4641 ], [ 0.000000e+00, %4587 ]
  %4675 = phi float [ %4669, %4641 ], [ 0.000000e+00, %4587 ]
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = fmul fast float %4676, %4676
  %4678 = fmul fast float %4677, 0x3FEE471020000000
  %4679 = fadd fast float %4678, 0xBFD42F6020000000
  %4680 = fmul fast float %4636, 0x3FD20DD760000000
  %4681 = fmul fast float %4679, %4675
  %4682 = fmul fast float %4674, 0x3FDF454380000000
  %4683 = fmul fast float %4682, %4676
  %4684 = fadd fast float %4683, %4680
  %4685 = fadd fast float %4684, %4681
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %3636, float %3637, float %3638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fmul fast float %4686, 0x3FDF454380000000
  %4688 = fmul fast float %4686, %4686
  %4689 = fmul fast float %4688, 0x3FEE471020000000
  %4690 = fadd fast float %4689, 0xBFD42F6020000000
  %4691 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4674, float %4675, float 0x3FD20DD760000000, float %4687, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4607)  ; FMax(a,b)
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4623, float %4626, float %4620, float %4623, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = fcmp fast oeq float %4693, 0.000000e+00
  %4695 = fcmp fast oeq float %4692, 0.000000e+00
  %4696 = or i1 %4695, %4694
  br i1 %4696, label %4726, label %4697

; <label>:4697                                    ; preds = %4670
  %4698 = fsub fast float -0.000000e+00, %4626
  %4699 = fsub fast float -0.000000e+00, %4620
  %4700 = call float @dx.op.unary.f32(i32 24, float %4693)  ; Sqrt(value)
  %4701 = fdiv fast float %4700, %4692
  %4702 = fcmp fast ogt float %4701, 0x3FFB6F8900000000
  %4703 = select i1 %4702, float 0x3FFB6F8900000000, float %4701
  %4704 = fmul fast float %4703, 0x3FE8A23460000000
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = call float @dx.op.binary.f32(i32 35, float %4703, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4707 = fmul fast float %4705, %4692
  %4708 = fmul fast float %4706, 0x3FF279A740000000
  %4709 = fadd fast float %4708, -1.000000e+00
  %4710 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4623, float %4698, float %4699, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = call float @dx.op.unary.f32(i32 25, float %4710)  ; Rsqrt(value)
  %4712 = fmul fast float %4711, %4698
  %4713 = fmul fast float %4711, %4699
  %4714 = fmul fast float %4711, %4623
  %4715 = fmul fast float %4709, %4709
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = fmul fast float %4706, 0x40005F8BE0000000
  %4718 = fsub fast float 0x400C5BF8A0000000, %4717
  %4719 = fdiv fast float %4707, %4718
  %4720 = fmul fast float %4719, 0x3FEE31C3C0000000
  %4721 = fmul fast float %4720, %4716
  %4722 = fmul fast float %4706, 0x3FDACB7480000000
  %4723 = fadd fast float %4722, 0xBFD7347680000000
  %4724 = fmul fast float %4723, %4719
  %4725 = fmul fast float %4724, %4716
  br label %4726

; <label>:4726                                    ; preds = %4697, %4670
  %4727 = phi float [ %4712, %4697 ], [ 0.000000e+00, %4670 ]
  %4728 = phi float [ %4713, %4697 ], [ 0.000000e+00, %4670 ]
  %4729 = phi float [ %4714, %4697 ], [ 0.000000e+00, %4670 ]
  %4730 = phi float [ %4721, %4697 ], [ 0.000000e+00, %4670 ]
  %4731 = phi float [ %4725, %4697 ], [ 0.000000e+00, %4670 ]
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = fmul fast float %4732, %4732
  %4734 = fmul fast float %4733, 0x3FEE471020000000
  %4735 = fadd fast float %4734, 0xBFD42F6020000000
  %4736 = fmul fast float %4692, 0x3FD20DD760000000
  %4737 = fmul fast float %4735, %4731
  %4738 = fmul fast float %4730, 0x3FDF454380000000
  %4739 = fmul fast float %4738, %4732
  %4740 = fadd fast float %4739, %4736
  %4741 = fadd fast float %4740, %4737
  %4742 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float %3636, float %3637, float %3638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = fmul fast float %4742, 0x3FDF454380000000
  %4744 = fmul fast float %4742, %4742
  %4745 = fmul fast float %4744, 0x3FEE471020000000
  %4746 = fadd fast float %4745, 0xBFD42F6020000000
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4692, float %4730, float %4731, float 0x3FD20DD760000000, float %4743, float %4746)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4608)  ; FMax(a,b)
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4632, float %4635, float %4629, float %4632, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = fcmp fast oeq float %4749, 0.000000e+00
  %4751 = fcmp fast oeq float %4748, 0.000000e+00
  %4752 = or i1 %4751, %4750
  br i1 %4752, label %4782, label %4753

; <label>:4753                                    ; preds = %4726
  %4754 = fsub fast float -0.000000e+00, %4635
  %4755 = fsub fast float -0.000000e+00, %4629
  %4756 = call float @dx.op.unary.f32(i32 24, float %4749)  ; Sqrt(value)
  %4757 = fdiv fast float %4756, %4748
  %4758 = fcmp fast ogt float %4757, 0x3FFB6F8900000000
  %4759 = select i1 %4758, float 0x3FFB6F8900000000, float %4757
  %4760 = fmul fast float %4759, 0x3FE8A23460000000
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4759, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4763 = fmul fast float %4761, %4748
  %4764 = fmul fast float %4762, 0x3FF279A740000000
  %4765 = fadd fast float %4764, -1.000000e+00
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4632, float %4754, float %4755, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = call float @dx.op.unary.f32(i32 25, float %4766)  ; Rsqrt(value)
  %4768 = fmul fast float %4767, %4754
  %4769 = fmul fast float %4767, %4755
  %4770 = fmul fast float %4767, %4632
  %4771 = fmul fast float %4765, %4765
  %4772 = fsub fast float 1.000000e+00, %4771
  %4773 = fmul fast float %4762, 0x40005F8BE0000000
  %4774 = fsub fast float 0x400C5BF8A0000000, %4773
  %4775 = fdiv fast float %4763, %4774
  %4776 = fmul fast float %4775, 0x3FEE31C3C0000000
  %4777 = fmul fast float %4776, %4772
  %4778 = fmul fast float %4762, 0x3FDACB7480000000
  %4779 = fadd fast float %4778, 0xBFD7347680000000
  %4780 = fmul fast float %4779, %4775
  %4781 = fmul fast float %4780, %4772
  br label %4782

; <label>:4782                                    ; preds = %4753, %4726
  %4783 = phi float [ %4768, %4753 ], [ 0.000000e+00, %4726 ]
  %4784 = phi float [ %4769, %4753 ], [ 0.000000e+00, %4726 ]
  %4785 = phi float [ %4770, %4753 ], [ 0.000000e+00, %4726 ]
  %4786 = phi float [ %4777, %4753 ], [ 0.000000e+00, %4726 ]
  %4787 = phi float [ %4781, %4753 ], [ 0.000000e+00, %4726 ]
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = fmul fast float %4788, %4788
  %4790 = fmul fast float %4789, 0x3FEE471020000000
  %4791 = fadd fast float %4790, 0xBFD42F6020000000
  %4792 = fmul fast float %4748, 0x3FD20DD760000000
  %4793 = fmul fast float %4791, %4787
  %4794 = fmul fast float %4786, 0x3FDF454380000000
  %4795 = fmul fast float %4794, %4788
  %4796 = fadd fast float %4795, %4792
  %4797 = fadd fast float %4796, %4793
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float %3636, float %3637, float %3638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = fmul fast float %4798, 0x3FDF454380000000
  %4800 = fmul fast float %4798, %4798
  %4801 = fmul fast float %4800, 0x3FEE471020000000
  %4802 = fadd fast float %4801, 0xBFD42F6020000000
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4786, float %4787, float 0x3FD20DD760000000, float %4799, float %4802)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4685, float 0.000000e+00)  ; FMax(a,b)
  %4805 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4806 = call float @dx.op.binary.f32(i32 35, float %4797, float 0.000000e+00)  ; FMax(a,b)
  %4807 = call float @dx.op.binary.f32(i32 35, float %4691, float 0.000000e+00)  ; FMax(a,b)
  %4808 = call float @dx.op.binary.f32(i32 35, float %4747, float 0.000000e+00)  ; FMax(a,b)
  %4809 = call float @dx.op.binary.f32(i32 35, float %4803, float 0.000000e+00)  ; FMax(a,b)
  %4810 = fsub fast float %4006, %4804
  %4811 = fsub fast float %4007, %4805
  %4812 = fsub fast float %4008, %4806
  %4813 = fmul fast float %4810, %3687
  %4814 = fmul fast float %4811, %3687
  %4815 = fmul fast float %4812, %3687
  %4816 = fadd fast float %4813, %4804
  %4817 = fadd fast float %4814, %4805
  %4818 = fadd fast float %4815, %4806
  %4819 = fsub fast float %4003, %4807
  %4820 = fsub fast float %4004, %4808
  %4821 = fsub fast float %4005, %4809
  %4822 = fmul fast float %4819, %3687
  %4823 = fmul fast float %4820, %3687
  %4824 = fmul fast float %4821, %3687
  %4825 = fadd fast float %4822, %4807
  %4826 = fadd fast float %4823, %4808
  %4827 = fadd fast float %4824, %4809
  br label %4828

; <label>:4828                                    ; preds = %4782, %4002
  %4829 = phi float [ %4825, %4782 ], [ %4003, %4002 ]
  %4830 = phi float [ %4826, %4782 ], [ %4004, %4002 ]
  %4831 = phi float [ %4827, %4782 ], [ %4005, %4002 ]
  %4832 = phi float [ %4816, %4782 ], [ %4006, %4002 ]
  %4833 = phi float [ %4817, %4782 ], [ %4007, %4002 ]
  %4834 = phi float [ %4818, %4782 ], [ %4008, %4002 ]
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = call float @dx.op.binary.f32(i32 36, float %3620, float %4836)  ; FMin(a,b)
  %4838 = fsub fast float 1.000000e+00, %3639
  %4839 = fmul fast float %4837, %4838
  %4840 = fsub fast float 1.000000e+00, %4839
  %4841 = bitcast float %4840 to i32
  %4842 = sub nsw i32 2129859010, %4841
  %4843 = bitcast i32 %4842 to float
  %4844 = call float @dx.op.binary.f32(i32 36, float %3621, float %4836)  ; FMin(a,b)
  %4845 = fmul fast float %4844, %4838
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = bitcast float %4846 to i32
  %4848 = sub nsw i32 2129859010, %4847
  %4849 = bitcast i32 %4848 to float
  %4850 = call float @dx.op.binary.f32(i32 36, float %3622, float %4836)  ; FMin(a,b)
  %4851 = fmul fast float %4850, %4838
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4832, %3639
  %4857 = fmul fast float %4856, %4843
  %4858 = fmul fast float %4833, %3639
  %4859 = fmul fast float %4858, %4849
  %4860 = fmul fast float %4834, %3639
  %4861 = fmul fast float %4860, %4855
  %4862 = call float @dx.op.binary.f32(i32 36, float %3617, float %4836)  ; FMin(a,b)
  %4863 = fmul fast float %4862, %4838
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = bitcast float %4864 to i32
  %4866 = sub nsw i32 2129859010, %4865
  %4867 = bitcast i32 %4866 to float
  %4868 = call float @dx.op.binary.f32(i32 36, float %3618, float %4836)  ; FMin(a,b)
  %4869 = fmul fast float %4868, %4838
  %4870 = fsub fast float 1.000000e+00, %4869
  %4871 = bitcast float %4870 to i32
  %4872 = sub nsw i32 2129859010, %4871
  %4873 = bitcast i32 %4872 to float
  %4874 = call float @dx.op.binary.f32(i32 36, float %3628, float %4836)  ; FMin(a,b)
  %4875 = fmul fast float %4874, %4838
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = bitcast float %4876 to i32
  %4878 = sub nsw i32 2129859010, %4877
  %4879 = bitcast i32 %4878 to float
  %4880 = fmul fast float %4829, %3639
  %4881 = fmul fast float %4880, %4867
  %4882 = fmul fast float %4830, %3639
  %4883 = fmul fast float %4882, %4873
  %4884 = fmul fast float %4831, %3639
  %4885 = fmul fast float %4884, %4879
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4859, float %4861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = select i1 %194, float 0.000000e+00, float %4857
  %4888 = select i1 %194, float %4886, float %4859
  %4889 = select i1 %194, float 0.000000e+00, float %4861
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4883, float %4885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = select i1 %194, float 0.000000e+00, float %4881
  %4892 = select i1 %194, float %4890, float %4883
  %4893 = select i1 %194, float 0.000000e+00, float %4885
  %4894 = fmul fast float %3630, 9.843750e-01
  %4895 = fmul fast float %3626, 9.843750e-01
  %4896 = fadd fast float %4894, 7.812500e-03
  %4897 = fadd fast float %4895, 7.812500e-03
  %4898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4896, float %4897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 2
  %4900 = extractvalue %dx.types.ResRet.f32 %4898, 3
  %4901 = fmul fast float %4899, %3617
  %4902 = fmul fast float %4899, %3618
  %4903 = fmul fast float %4899, %3628
  %4904 = fadd fast float %4901, %4900
  %4905 = fadd fast float %4902, %4900
  %4906 = fadd fast float %4903, %4900
  %4907 = fcmp fast ogt float %2994, 0.000000e+00
  br i1 %4907, label %4908, label %4934

; <label>:4908                                    ; preds = %4828
  %4909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2994, float %3630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.ResRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.ResRet.f32 %4909, 2
  %4913 = fadd fast float %4910, -5.000000e-01
  %4914 = fadd fast float %4911, -5.000000e-01
  %4915 = fadd fast float %4912, -5.000000e-01
  %4916 = fsub fast float 1.000000e+00, %3617
  %4917 = fsub fast float 1.000000e+00, %3618
  %4918 = fsub fast float 1.000000e+00, %3628
  %4919 = fmul fast float %3617, 4.000000e+00
  %4920 = fmul fast float %4919, %4916
  %4921 = fmul fast float %4920, %4913
  %4922 = fmul fast float %3618, 4.000000e+00
  %4923 = fmul fast float %4922, %4917
  %4924 = fmul fast float %4923, %4914
  %4925 = fmul fast float %3628, 4.000000e+00
  %4926 = fmul fast float %4925, %4918
  %4927 = fmul fast float %4926, %4915
  %4928 = fadd fast float %4921, %4904
  %4929 = fadd fast float %4924, %4905
  %4930 = fadd fast float %4927, %4906
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  br label %4934

; <label>:4934                                    ; preds = %4908, %4828
  %4935 = phi float [ %4931, %4908 ], [ %4904, %4828 ]
  %4936 = phi float [ %4932, %4908 ], [ %4905, %4828 ]
  %4937 = phi float [ %4933, %4908 ], [ %4906, %4828 ]
  %4938 = call float @dx.op.binary.f32(i32 35, float %4936, float %4937)  ; FMax(a,b)
  %4939 = call float @dx.op.binary.f32(i32 35, float %4935, float %4938)  ; FMax(a,b)
  %4940 = fsub fast float 1.000000e+00, %4939
  %4941 = fmul fast float %4940, %4887
  %4942 = fmul fast float %4940, %4888
  %4943 = fmul fast float %4940, %4889
  %4944 = call float @dx.op.dot3.f32(i32 55, float %3620, float %3621, float %3622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = fcmp fast ogt float %4944, 0x3E7FF19E20000000
  %4946 = fdiv fast float 1.000000e+00, %4944
  %4947 = select i1 %4945, float %4946, float 0.000000e+00
  %4948 = fmul fast float %4947, %3620
  %4949 = fmul fast float %4947, %3621
  %4950 = fmul fast float %4947, %3622
  %4951 = fadd fast float %4948, -1.000000e+00
  %4952 = fadd fast float %4949, -1.000000e+00
  %4953 = fadd fast float %4950, -1.000000e+00
  %4954 = fmul fast float %4951, 5.000000e-01
  %4955 = fmul fast float %4952, 5.000000e-01
  %4956 = fmul fast float %4953, 5.000000e-01
  %4957 = fadd fast float %4954, 1.000000e+00
  %4958 = fadd fast float %4955, 1.000000e+00
  %4959 = fadd fast float %4956, 1.000000e+00
  %4960 = fmul fast float %4935, %4891
  %4961 = fmul fast float %4936, %4892
  %4962 = fmul fast float %4937, %4893
  %4963 = fsub fast float 1.000000e+00, %3630
  %4964 = bitcast float %4963 to i32
  %4965 = sitofp i32 %4964 to float
  %4966 = fmul fast float %4965, 5.000000e+00
  %4967 = fadd fast float %4966, 0xC1EFBF8940000000
  %4968 = fptosi float %4967 to i32
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, %2993
  %4971 = fmul fast float %4887, %4970
  %4972 = fmul fast float %4971, %4940
  %4973 = fmul fast float %4972, %4957
  %4974 = fmul fast float %4888, %4970
  %4975 = fmul fast float %4974, %4940
  %4976 = fmul fast float %4975, %4958
  %4977 = fmul fast float %4889, %4970
  %4978 = fmul fast float %4977, %4940
  %4979 = fmul fast float %4978, %4959
  %4980 = fmul fast float %4941, %3014
  %4981 = fmul fast float %4942, %3014
  %4982 = fmul fast float %4943, %3014
  %4983 = fadd fast float %4960, %2995
  %4984 = fadd fast float %4983, %4973
  %4985 = fmul fast float %4984, %3014
  %4986 = fadd fast float %4961, %2996
  %4987 = fadd fast float %4986, %4976
  %4988 = fmul fast float %4987, %3014
  %4989 = fadd fast float %4962, %2997
  %4990 = fadd fast float %4989, %4979
  %4991 = fmul fast float %4990, %3014
  %4992 = bitcast i32 %3642 to float
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 3
  %4995 = fcmp fast oeq float %4994, 0.000000e+00
  br i1 %4995, label %5223, label %4996

; <label>:4996                                    ; preds = %4934
  %4997 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4998 = extractvalue %dx.types.CBufRet.f32 %4993, 1
  %4999 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5002, float %5003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = select i1 %194, float %5005, float %5001
  %5009 = select i1 %194, float %5007, float %5002
  %5010 = select i1 %194, float %5006, float %5003
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 1
  %5013 = fcmp fast une float %5012, 0.000000e+00
  br i1 %5013, label %5014, label %5031

; <label>:5014                                    ; preds = %4996
  %5015 = fptoui float %76 to i32
  %5016 = fptoui float %77 to i32
  %5017 = lshr i32 %5015, 4
  %5018 = lshr i32 %5016, 4
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = fptoui float %5020 to i32
  %5022 = add i32 %5021, 15
  %5023 = lshr i32 %5022, 4
  %5024 = mul i32 %5023, %5018
  %5025 = add i32 %5024, %5017
  %5026 = shl i32 %5025, 3
  %5027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5026, i32 undef)  ; BufferLoad(srv,index,wot)
  %5028 = extractvalue %dx.types.ResRet.i32 %5027, 0
  %5029 = and i32 %5028, -268435456
  %5030 = icmp eq i32 %5029, -1342177280
  br i1 %5030, label %5041, label %5031

; <label>:5031                                    ; preds = %5014, %4996
  %5032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5033 = extractvalue %dx.types.CBufRet.f32 %5032, 2
  %5034 = extractvalue %dx.types.CBufRet.f32 %5032, 3
  %5035 = fmul fast float %5033, %76
  %5036 = fmul fast float %5034, %77
  %5037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5035, float %5036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = extractvalue %dx.types.ResRet.f32 %5037, 1
  %5040 = extractvalue %dx.types.ResRet.f32 %5037, 2
  br label %5041

; <label>:5041                                    ; preds = %5031, %5014
  %5042 = phi float [ %5038, %5031 ], [ 0.000000e+00, %5014 ]
  %5043 = phi float [ %5039, %5031 ], [ 0.000000e+00, %5014 ]
  %5044 = phi float [ %5040, %5031 ], [ 0.000000e+00, %5014 ]
  %5045 = call float @dx.op.binary.f32(i32 36, float %5043, float %5044)  ; FMin(a,b)
  %5046 = call float @dx.op.binary.f32(i32 36, float %5042, float %5045)  ; FMin(a,b)
  %5047 = fcmp fast ogt float %5046, 0.000000e+00
  br i1 %5047, label %5048, label %5223, !dx.controlflow.hints !90

; <label>:5048                                    ; preds = %5041
  %5049 = fmul fast float %5042, %5008
  %5050 = fmul fast float %5043, %5009
  %5051 = fmul fast float %5044, %5010
  %5052 = fsub fast float %4997, %3616
  %5053 = fsub fast float %4998, %3615
  %5054 = fsub fast float %4999, %3614
  %5055 = call float @dx.op.dot3.f32(i32 55, float %5052, float %5053, float %5054, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = call float @dx.op.unary.f32(i32 25, float %5055)  ; Rsqrt(value)
  %5057 = fmul fast float %5056, %5052
  %5058 = fmul fast float %5056, %5053
  %5059 = fmul fast float %5056, %5054
  %5060 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.dot3.f32(i32 55, float %3613, float %3612, float %3611, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5063 = fmul fast float %5062, %5062
  %5064 = fmul fast float %5063, %4992
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = fmul fast float %5065, %5062
  %5067 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3624, float %3625, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = fmul fast float %5067, %5067
  %5069 = call float @dx.op.unary.f32(i32 6, float %5060)  ; FAbs(value)
  %5070 = fsub fast float 1.000000e+00, %3626
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0x3F847AE140000000)  ; FMax(a,b)
  %5072 = fmul fast float %5071, %5071
  %5073 = fmul fast float %5072, %5072
  %5074 = fsub fast float 1.000000e+00, %5073
  %5075 = fmul fast float %3630, %3630
  %5076 = fmul fast float %5075, %5074
  %5077 = fadd fast float %5076, %5073
  %5078 = bitcast float %5077 to i32
  %5079 = ashr i32 %5078, 1
  %5080 = add nsw i32 %5079, 532487669
  %5081 = bitcast i32 %5080 to float
  %5082 = fadd fast float %5081, %3630
  %5083 = fmul fast float %5073, %5068
  %5084 = fsub fast float 1.000000e+00, %5068
  %5085 = fadd fast float %5084, %5083
  %5086 = fmul fast float %5069, %5069
  %5087 = fmul fast float %5086, %5074
  %5088 = fadd fast float %5087, %5073
  %5089 = bitcast float %5088 to i32
  %5090 = ashr i32 %5089, 1
  %5091 = add nsw i32 %5090, 532487669
  %5092 = bitcast i32 %5091 to float
  %5093 = fadd fast float %5092, %5069
  %5094 = fmul fast float %5085, %5085
  %5095 = fmul fast float %5094, %5082
  %5096 = fmul fast float %5095, %5093
  %5097 = fdiv fast float 0x3FF0A00000000000, %5096
  %5098 = fmul fast float %5097, %5073
  %5099 = call float @dx.op.unary.f32(i32 6, float %5061)  ; FAbs(value)
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = bitcast float %5100 to i32
  %5102 = sitofp i32 %5101 to float
  %5103 = fmul fast float %5102, 5.000000e+00
  %5104 = fadd fast float %5103, 0xC1EFBF8940000000
  %5105 = fptosi float %5104 to i32
  %5106 = bitcast i32 %5105 to float
  %5107 = fsub fast float 1.000000e+00, %3617
  %5108 = fsub fast float 1.000000e+00, %3618
  %5109 = fsub fast float 1.000000e+00, %3628
  %5110 = fmul fast float %5106, %5107
  %5111 = fmul fast float %5106, %5108
  %5112 = fmul fast float %5106, %5109
  %5113 = fadd fast float %5110, %3617
  %5114 = fadd fast float %5111, %3618
  %5115 = fadd fast float %5112, %3628
  br i1 %4907, label %5116, label %5139

; <label>:5116                                    ; preds = %5048
  %5117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2994, float %5099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.ResRet.f32 %5117, 1
  %5120 = extractvalue %dx.types.ResRet.f32 %5117, 2
  %5121 = fadd fast float %5118, -5.000000e-01
  %5122 = fadd fast float %5119, -5.000000e-01
  %5123 = fadd fast float %5120, -5.000000e-01
  %5124 = fmul fast float %3617, 4.000000e+00
  %5125 = fmul fast float %5124, %5107
  %5126 = fmul fast float %5125, %5121
  %5127 = fmul fast float %3618, 4.000000e+00
  %5128 = fmul fast float %5127, %5108
  %5129 = fmul fast float %5128, %5122
  %5130 = fmul fast float %3628, 4.000000e+00
  %5131 = fmul fast float %5130, %5109
  %5132 = fmul fast float %5131, %5123
  %5133 = fadd fast float %5126, %5113
  %5134 = fadd fast float %5129, %5114
  %5135 = fadd fast float %5132, %5115
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  br label %5139

; <label>:5139                                    ; preds = %5116, %5048
  %5140 = phi float [ %5136, %5116 ], [ %5113, %5048 ]
  %5141 = phi float [ %5137, %5116 ], [ %5114, %5048 ]
  %5142 = phi float [ %5138, %5116 ], [ %5115, %5048 ]
  %5143 = fmul fast float %5060, 9.843750e-01
  %5144 = fadd fast float %5143, 7.812500e-03
  %5145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5144, float %4897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5146 = extractvalue %dx.types.ResRet.f32 %5145, 2
  %5147 = extractvalue %dx.types.ResRet.f32 %5145, 3
  %5148 = fmul fast float %5146, %3617
  %5149 = fmul fast float %5146, %3618
  %5150 = fmul fast float %5146, %3628
  %5151 = fadd fast float %5148, %5147
  %5152 = fadd fast float %5149, %5147
  %5153 = fadd fast float %5150, %5147
  br i1 %4907, label %5154, label %5177

; <label>:5154                                    ; preds = %5139
  %5155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2994, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.ResRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.ResRet.f32 %5155, 2
  %5159 = fadd fast float %5156, -5.000000e-01
  %5160 = fadd fast float %5157, -5.000000e-01
  %5161 = fadd fast float %5158, -5.000000e-01
  %5162 = fmul fast float %3617, 4.000000e+00
  %5163 = fmul fast float %5162, %5107
  %5164 = fmul fast float %5163, %5159
  %5165 = fmul fast float %3618, 4.000000e+00
  %5166 = fmul fast float %5165, %5108
  %5167 = fmul fast float %5166, %5160
  %5168 = fmul fast float %3628, 4.000000e+00
  %5169 = fmul fast float %5168, %5109
  %5170 = fmul fast float %5169, %5161
  %5171 = fadd fast float %5164, %5151
  %5172 = fadd fast float %5167, %5152
  %5173 = fadd fast float %5170, %5153
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5176 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  br label %5177

; <label>:5177                                    ; preds = %5154, %5139
  %5178 = phi float [ %5174, %5154 ], [ %5151, %5139 ]
  %5179 = phi float [ %5175, %5154 ], [ %5152, %5139 ]
  %5180 = phi float [ %5176, %5154 ], [ %5153, %5139 ]
  %5181 = call float @dx.op.binary.f32(i32 35, float %5179, float %5180)  ; FMax(a,b)
  %5182 = call float @dx.op.binary.f32(i32 35, float %5178, float %5181)  ; FMax(a,b)
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = fmul fast float %5140, %5098
  %5185 = fmul fast float %5141, %5098
  %5186 = fmul fast float %5142, %5098
  %5187 = fsub fast float 1.000000e+00, %5061
  %5188 = bitcast float %5187 to i32
  %5189 = sitofp i32 %5188 to float
  %5190 = fmul fast float %5189, 5.000000e+00
  %5191 = fadd fast float %5190, 0xC1EFBF8940000000
  %5192 = fptosi float %5191 to i32
  %5193 = bitcast i32 %5192 to float
  %5194 = fmul fast float %5193, %2993
  %5195 = fmul fast float %5183, %5194
  %5196 = fmul fast float %5195, %4957
  %5197 = fmul fast float %5195, %4958
  %5198 = fmul fast float %5195, %4959
  %5199 = fadd fast float %5196, %5184
  %5200 = fadd fast float %5197, %5185
  %5201 = fadd fast float %5198, %5186
  %5202 = fmul fast float %5066, %5049
  %5203 = fmul fast float %5202, %5183
  %5204 = fmul fast float %5066, %5050
  %5205 = fmul fast float %5204, %5183
  %5206 = fmul fast float %5066, %5051
  %5207 = fmul fast float %5206, %5183
  %5208 = fmul fast float %5202, %5199
  %5209 = fmul fast float %5204, %5200
  %5210 = fmul fast float %5206, %5201
  %5211 = fadd fast float %5203, %4941
  %5212 = fmul fast float %5211, %3014
  %5213 = fadd fast float %5205, %4942
  %5214 = fmul fast float %5213, %3014
  %5215 = fadd fast float %5207, %4943
  %5216 = fmul fast float %5215, %3014
  %5217 = fadd fast float %5208, %4984
  %5218 = fmul fast float %5217, %3014
  %5219 = fadd fast float %5209, %4987
  %5220 = fmul fast float %5219, %3014
  %5221 = fadd fast float %5210, %4990
  %5222 = fmul fast float %5221, %3014
  br label %5223

; <label>:5223                                    ; preds = %5177, %5041, %4934
  %5224 = phi float [ %4985, %4934 ], [ %4985, %5041 ], [ %5218, %5177 ]
  %5225 = phi float [ %4988, %4934 ], [ %4988, %5041 ], [ %5220, %5177 ]
  %5226 = phi float [ %4991, %4934 ], [ %4991, %5041 ], [ %5222, %5177 ]
  %5227 = phi float [ %4980, %4934 ], [ %4980, %5041 ], [ %5212, %5177 ]
  %5228 = phi float [ %4981, %4934 ], [ %4981, %5041 ], [ %5214, %5177 ]
  %5229 = phi float [ %4982, %4934 ], [ %4982, %5041 ], [ %5216, %5177 ]
  %5230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.i32 %5230, 0
  %5232 = icmp eq i32 %5231, 0
  br i1 %5232, label %5667, label %5233

; <label>:5233                                    ; preds = %5223
  %5234 = fptoui float %76 to i32
  %5235 = fptoui float %77 to i32
  %5236 = lshr i32 %5234, 4
  %5237 = lshr i32 %5235, 4
  %5238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.i32 %5238, 0
  %5240 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5237, i32 %5239, i32 %5236)  ; UMad(a,b,c)
  %5241 = add nsw i32 %5231, -1
  %5242 = call i32 @dx.op.binary.i32(i32 37, i32 %5241, i32 0)  ; IMax(a,b)
  %5243 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5244 = fptoui float %5243 to i32
  %5245 = lshr i32 %5244, 5
  %5246 = call i32 @dx.op.binary.i32(i32 40, i32 %5245, i32 8191)  ; UMin(a,b)
  %5247 = shl i32 %5246, 2
  %5248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.i32 %5248, 0
  %5250 = lshr i32 %5249, 16
  %5251 = and i32 %5249, 65535
  %5252 = lshr i32 %5249, 21
  %5253 = lshr i32 %5251, 5
  %5254 = call i32 @dx.op.binary.i32(i32 40, i32 %5253, i32 %5242)  ; UMin(a,b)
  %5255 = icmp ugt i32 %5252, %5254
  br i1 %5255, label %5667, label %5256

; <label>:5256                                    ; preds = %5233
  br label %5257

; <label>:5257                                    ; preds = %5657, %5256
  %5258 = phi i32 [ %5664, %5657 ], [ %5252, %5256 ]
  %5259 = phi float [ %5658, %5657 ], [ %5224, %5256 ]
  %5260 = phi float [ %5659, %5657 ], [ %5225, %5256 ]
  %5261 = phi float [ %5660, %5657 ], [ %5226, %5256 ]
  %5262 = phi float [ %5661, %5657 ], [ %5227, %5256 ]
  %5263 = phi float [ %5662, %5657 ], [ %5228, %5256 ]
  %5264 = phi float [ %5663, %5657 ], [ %5229, %5256 ]
  %5265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.i32 %5265, 0
  %5267 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5240, i32 %5266, i32 %5258)  ; UMad(a,b,c)
  %5268 = shl i32 %5267, 2
  %5269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.i32 %5269, 0
  %5271 = shl i32 %5258, 5
  %5272 = sub nsw i32 %5250, %5271
  %5273 = call i32 @dx.op.binary.i32(i32 37, i32 %5272, i32 0)  ; IMax(a,b)
  %5274 = call i32 @dx.op.binary.i32(i32 38, i32 %5273, i32 31)  ; IMin(a,b)
  %5275 = sub nsw i32 1, %5250
  %5276 = add nsw i32 %5275, %5251
  %5277 = call i32 @dx.op.binary.i32(i32 37, i32 %5276, i32 0)  ; IMax(a,b)
  %5278 = call i32 @dx.op.binary.i32(i32 38, i32 %5277, i32 32)  ; IMin(a,b)
  %5279 = and i32 %5278, 31
  %5280 = shl i32 -1, %5279
  %5281 = xor i32 %5280, -1
  %5282 = and i32 %5274, 31
  %5283 = shl i32 %5281, %5282
  %5284 = icmp eq i32 %5278, 32
  %5285 = select i1 %5284, i32 -1, i32 %5283
  %5286 = and i32 %5285, %5270
  %5287 = icmp eq i32 %5286, 0
  br i1 %5287, label %5657, label %5288

; <label>:5288                                    ; preds = %5257
  br label %5289

; <label>:5289                                    ; preds = %5369, %5288
  %5290 = phi i32 [ %5301, %5369 ], [ %5286, %5288 ]
  %5291 = phi float [ %5370, %5369 ], [ %5259, %5288 ]
  %5292 = phi float [ %5371, %5369 ], [ %5260, %5288 ]
  %5293 = phi float [ %5372, %5369 ], [ %5261, %5288 ]
  %5294 = phi float [ %5373, %5369 ], [ %5262, %5288 ]
  %5295 = phi float [ %5374, %5369 ], [ %5263, %5288 ]
  %5296 = phi float [ %5375, %5369 ], [ %5264, %5288 ]
  %5297 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5290)  ; FirstbitLo(value)
  %5298 = add i32 %5297, %5271
  %5299 = and i32 %5297, 31
  %5300 = shl i32 1, %5299
  %5301 = xor i32 %5300, %5290
  %5302 = mul i32 %5298, 112
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = or i32 %5302, 12
  %5308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.f32 %5308, 0
  %5310 = add i32 %5302, 44
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = add i32 %5302, 48
  %5314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5313, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5318 = add i32 %5302, 80
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 1
  %5321 = extractvalue %dx.types.ResRet.f32 %5319, 2
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = select i1 %194, float %5320, float %5304
  %5324 = select i1 %194, float %5322, float %5305
  %5325 = select i1 %194, float %5321, float %5306
  %5326 = fsub fast float %5315, %123
  %5327 = fsub fast float %5316, %124
  %5328 = fsub fast float %5317, %125
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5326, float %5327, float %5328)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.unary.f32(i32 24, float %5329)  ; Sqrt(value)
  %5331 = fdiv fast float 1.000000e+00, %5330
  %5332 = fmul fast float %5331, %5326
  %5333 = fmul fast float %5331, %5327
  %5334 = fmul fast float %5331, %5328
  %5335 = fadd fast float %5330, %5309
  %5336 = fdiv fast float 1.000000e+00, %5335
  %5337 = fmul float %5312, %5336
  %5338 = fmul float %5337, %5337
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = and i32 %5300, %5286
  %5341 = icmp eq i32 %5340, 0
  br i1 %5341, label %5364, label %5342, !dx.controlflow.hints !91

; <label>:5342                                    ; preds = %5289
  %5343 = lshr i32 %5234, 5
  %5344 = lshr i32 %5235, 5
  %5345 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5343, i32 %5344, i32 %5298, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5346 = extractvalue %dx.types.ResRet.i32 %5345, 0
  %5347 = and i32 %5346, 3
  %5348 = icmp eq i32 %5347, 0
  %5349 = select i1 %5348, float 1.000000e+00, float 0.000000e+00
  %5350 = icmp eq i32 %5347, 3
  br i1 %5350, label %5351, label %5364

; <label>:5351                                    ; preds = %5342
  %5352 = lshr i32 %5346, 10
  %5353 = and i32 %5352, 8160
  %5354 = and i32 %5235, 31
  %5355 = or i32 %5353, %5354
  %5356 = lshr i32 %5346, 1
  %5357 = and i32 %5356, 16352
  %5358 = and i32 %5234, 31
  %5359 = or i32 %5357, %5358
  %5360 = lshr i32 %5346, 23
  %5361 = and i32 %5360, 255
  %5362 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5359, i32 %5355, i32 %5361, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  br label %5364

; <label>:5364                                    ; preds = %5351, %5342, %5289
  %5365 = phi float [ %5363, %5351 ], [ %5349, %5342 ], [ 0.000000e+00, %5289 ]
  %5366 = call float @dx.op.binary.f32(i32 36, float %5365, float %5365)  ; FMin(a,b)
  %5367 = call float @dx.op.binary.f32(i32 36, float %5365, float %5366)  ; FMin(a,b)
  %5368 = fcmp fast ogt float %5367, 0.000000e+00
  br i1 %5368, label %5377, label %5369, !dx.controlflow.hints !92

; <label>:5369                                    ; preds = %5613, %5364
  %5370 = phi float [ %5291, %5364 ], [ %5653, %5613 ]
  %5371 = phi float [ %5292, %5364 ], [ %5654, %5613 ]
  %5372 = phi float [ %5293, %5364 ], [ %5655, %5613 ]
  %5373 = phi float [ %5294, %5364 ], [ %5647, %5613 ]
  %5374 = phi float [ %5295, %5364 ], [ %5648, %5613 ]
  %5375 = phi float [ %5296, %5364 ], [ %5649, %5613 ]
  %5376 = icmp eq i32 %5290, %5300
  br i1 %5376, label %5656, label %5289

; <label>:5377                                    ; preds = %5364
  %5378 = fmul fast float %5365, %5323
  %5379 = fmul fast float %5365, %5324
  %5380 = fmul fast float %5365, %5325
  %5381 = fsub fast float %5317, %3416
  %5382 = fcmp fast ogt float %5381, 0.000000e+00
  %5383 = fsub fast float %125, %3416
  %5384 = fcmp fast ogt float %5383, 0.000000e+00
  %5385 = xor i1 %5384, %5382
  %5386 = fsub fast float %3416, %5317
  %5387 = fmul fast float %5386, 2.000000e+00
  %5388 = fadd fast float %5387, %5317
  %5389 = select i1 %5385, float %5317, float %5388
  %5390 = fsub fast float %5389, %125
  %5391 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5390, float %5326, float %5327, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = call float @dx.op.unary.f32(i32 25, float %5391)  ; Rsqrt(value)
  %5393 = fmul fast float %5392, %5326
  %5394 = fmul fast float %5392, %5327
  %5395 = fmul fast float %5392, %5390
  %5396 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3424)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5393, float %5394, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fdiv fast float 1.000000e+00, %5397
  %5399 = fmul fast float %5398, %5396
  %5400 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5383, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fcmp fast ogt float %5400, 0.000000e+00
  %5402 = fcmp fast olt float %5400, 0.000000e+00
  %5403 = zext i1 %5401 to i32
  %5404 = zext i1 %5402 to i32
  %5405 = sub nsw i32 %5403, %5404
  %5406 = sitofp i32 %5405 to float
  %5407 = fsub fast float %5389, %3416
  %5408 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5407, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = fcmp fast ogt float %5408, 0.000000e+00
  %5410 = fcmp fast olt float %5408, 0.000000e+00
  %5411 = zext i1 %5409 to i32
  %5412 = zext i1 %5410 to i32
  %5413 = sub nsw i32 %5411, %5412
  %5414 = sitofp i32 %5413 to float
  %5415 = fcmp fast une float %5406, %5414
  br i1 %5415, label %5416, label %5426

; <label>:5416                                    ; preds = %5377
  %5417 = fmul fast float %5399, %5395
  %5418 = fmul fast float %5399, %5394
  %5419 = fmul fast float %5399, %5393
  %5420 = fmul fast float %5419, %5419
  %5421 = fmul fast float %5418, %5418
  %5422 = fadd fast float %5420, %5421
  %5423 = fmul fast float %5417, %5417
  %5424 = fadd fast float %5422, %5423
  %5425 = call float @dx.op.unary.f32(i32 24, float %5424)  ; Sqrt(value)
  br label %5438

; <label>:5426                                    ; preds = %5377
  %5427 = icmp slt i32 %5405, 0
  br i1 %5427, label %5428, label %5438

; <label>:5428                                    ; preds = %5426
  %5429 = fsub fast float %123, %5315
  %5430 = fsub fast float %124, %5316
  %5431 = fsub fast float %125, %5389
  %5432 = fmul fast float %5429, %5429
  %5433 = fmul fast float %5430, %5430
  %5434 = fadd fast float %5432, %5433
  %5435 = fmul fast float %5431, %5431
  %5436 = fadd fast float %5434, %5435
  %5437 = call float @dx.op.unary.f32(i32 24, float %5436)  ; Sqrt(value)
  br label %5438

; <label>:5438                                    ; preds = %5428, %5426, %5416
  %5439 = phi float [ %5425, %5416 ], [ %5437, %5428 ], [ 0.000000e+00, %5426 ]
  %5440 = and i1 %5384, %5382
  %5441 = fsub fast float -0.000000e+00, %5439
  %5442 = select i1 %5440, float -0.000000e+00, float %5441
  %5443 = fmul fast float %3417, 0x3FF7154760000000
  %5444 = fmul fast float %5443, %5442
  %5445 = fmul fast float %3418, 0x3FF7154760000000
  %5446 = fmul fast float %5445, %5442
  %5447 = fmul fast float %3419, 0x3FF7154760000000
  %5448 = fmul fast float %5447, %5442
  %5449 = call float @dx.op.unary.f32(i32 21, float %5444)  ; Exp(value)
  %5450 = call float @dx.op.unary.f32(i32 21, float %5446)  ; Exp(value)
  %5451 = call float @dx.op.unary.f32(i32 21, float %5448)  ; Exp(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5454 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5455 = fmul fast float %5378, %5452
  %5456 = fmul fast float %5379, %5453
  %5457 = fmul fast float %5380, %5454
  %5458 = fsub fast float %5332, %3616
  %5459 = fsub fast float %5333, %3615
  %5460 = fsub fast float %5334, %3614
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 25, float %5461)  ; Rsqrt(value)
  %5463 = fmul fast float %5462, %5458
  %5464 = fmul fast float %5462, %5459
  %5465 = fmul fast float %5462, %5460
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.dot3.f32(i32 55, float %3613, float %3612, float %3611, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5469 = fmul fast float %5468, %5339
  %5470 = fmul fast float %5468, %5468
  %5471 = fmul fast float %5470, %4992
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = fmul fast float %5469, %5472
  %5474 = bitcast float %5329 to i32
  %5475 = ashr i32 %5474, 1
  %5476 = sub nsw i32 1597463007, %5475
  %5477 = bitcast i32 %5476 to float
  %5478 = fmul fast float %5477, %5326
  %5479 = fmul fast float %5477, %5327
  %5480 = fmul fast float %5477, %5328
  %5481 = fsub fast float %5478, %3616
  %5482 = fsub fast float %5479, %3615
  %5483 = fsub fast float %5480, %3614
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = call float @dx.op.unary.f32(i32 25, float %5484)  ; Rsqrt(value)
  %5486 = fmul fast float %5481, %5485
  %5487 = fmul fast float %5482, %5485
  %5488 = fmul fast float %5483, %5485
  %5489 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3624, float %3625, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fmul fast float %5489, %5489
  %5491 = call float @dx.op.unary.f32(i32 6, float %5466)  ; FAbs(value)
  %5492 = fsub fast float 1.000000e+00, %3626
  %5493 = call float @dx.op.binary.f32(i32 35, float %5492, float 0x3F847AE140000000)  ; FMax(a,b)
  %5494 = fmul fast float %5493, %5493
  %5495 = fmul fast float %5494, %5494
  %5496 = fsub fast float 1.000000e+00, %5495
  %5497 = fmul fast float %3630, %3630
  %5498 = fmul fast float %5497, %5496
  %5499 = fadd fast float %5498, %5495
  %5500 = bitcast float %5499 to i32
  %5501 = ashr i32 %5500, 1
  %5502 = add nsw i32 %5501, 532487669
  %5503 = bitcast i32 %5502 to float
  %5504 = fadd fast float %5503, %3630
  %5505 = fmul fast float %5495, %5490
  %5506 = fsub fast float 1.000000e+00, %5490
  %5507 = fadd fast float %5506, %5505
  %5508 = fmul fast float %5491, %5491
  %5509 = fmul fast float %5508, %5496
  %5510 = fadd fast float %5509, %5495
  %5511 = bitcast float %5510 to i32
  %5512 = ashr i32 %5511, 1
  %5513 = add nsw i32 %5512, 532487669
  %5514 = bitcast i32 %5513 to float
  %5515 = fadd fast float %5514, %5491
  %5516 = fmul fast float %5507, %5507
  %5517 = fmul fast float %5516, %5504
  %5518 = fmul fast float %5517, %5515
  %5519 = fdiv fast float 1.000000e+00, %5518
  %5520 = bitcast float %5495 to i32
  %5521 = sitofp i32 %5520 to float
  %5522 = fmul fast float %5521, 0x3FE7F73180000000
  %5523 = fadd fast float %5522, 0x41AFE27C40000000
  %5524 = fptosi float %5523 to i32
  %5525 = bitcast i32 %5524 to float
  %5526 = fmul fast float %5312, 0x3FD80E9D60000000
  %5527 = fmul fast float %5526, %5477
  %5528 = fadd fast float %5525, %5527
  %5529 = bitcast float %5528 to i32
  %5530 = sub nsw i32 2129859010, %5529
  %5531 = bitcast i32 %5530 to float
  %5532 = fmul fast float %5495, %5519
  %5533 = fmul fast float %5532, %5525
  %5534 = fmul fast float %5533, %5531
  %5535 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = bitcast float %5536 to i32
  %5538 = sitofp i32 %5537 to float
  %5539 = fmul fast float %5538, 5.000000e+00
  %5540 = fadd fast float %5539, 0xC1EFBF8940000000
  %5541 = fptosi float %5540 to i32
  %5542 = bitcast i32 %5541 to float
  %5543 = fsub fast float 1.000000e+00, %3617
  %5544 = fsub fast float 1.000000e+00, %3618
  %5545 = fsub fast float 1.000000e+00, %3628
  %5546 = fmul fast float %5542, %5543
  %5547 = fmul fast float %5542, %5544
  %5548 = fmul fast float %5542, %5545
  %5549 = fadd fast float %5546, %3617
  %5550 = fadd fast float %5547, %3618
  %5551 = fadd fast float %5548, %3628
  br i1 %4907, label %5552, label %5575

; <label>:5552                                    ; preds = %5438
  %5553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2994, float %5535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.ResRet.f32 %5553, 1
  %5556 = extractvalue %dx.types.ResRet.f32 %5553, 2
  %5557 = fadd fast float %5554, -5.000000e-01
  %5558 = fadd fast float %5555, -5.000000e-01
  %5559 = fadd fast float %5556, -5.000000e-01
  %5560 = fmul fast float %3617, 4.000000e+00
  %5561 = fmul fast float %5560, %5543
  %5562 = fmul fast float %5561, %5557
  %5563 = fmul fast float %3618, 4.000000e+00
  %5564 = fmul fast float %5563, %5544
  %5565 = fmul fast float %5564, %5558
  %5566 = fmul fast float %3628, 4.000000e+00
  %5567 = fmul fast float %5566, %5545
  %5568 = fmul fast float %5567, %5559
  %5569 = fadd fast float %5562, %5549
  %5570 = fadd fast float %5565, %5550
  %5571 = fadd fast float %5568, %5551
  %5572 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5573 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5574 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  br label %5575

; <label>:5575                                    ; preds = %5552, %5438
  %5576 = phi float [ %5572, %5552 ], [ %5549, %5438 ]
  %5577 = phi float [ %5573, %5552 ], [ %5550, %5438 ]
  %5578 = phi float [ %5574, %5552 ], [ %5551, %5438 ]
  %5579 = fmul fast float %5466, 9.843750e-01
  %5580 = fadd fast float %5579, 7.812500e-03
  %5581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5580, float %4897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5582 = extractvalue %dx.types.ResRet.f32 %5581, 2
  %5583 = extractvalue %dx.types.ResRet.f32 %5581, 3
  %5584 = fmul fast float %5582, %3617
  %5585 = fmul fast float %5582, %3618
  %5586 = fmul fast float %5582, %3628
  %5587 = fadd fast float %5584, %5583
  %5588 = fadd fast float %5585, %5583
  %5589 = fadd fast float %5586, %5583
  br i1 %4907, label %5590, label %5613

; <label>:5590                                    ; preds = %5575
  %5591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2994, float %5466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5592 = extractvalue %dx.types.ResRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.ResRet.f32 %5591, 1
  %5594 = extractvalue %dx.types.ResRet.f32 %5591, 2
  %5595 = fadd fast float %5592, -5.000000e-01
  %5596 = fadd fast float %5593, -5.000000e-01
  %5597 = fadd fast float %5594, -5.000000e-01
  %5598 = fmul fast float %3617, 4.000000e+00
  %5599 = fmul fast float %5598, %5543
  %5600 = fmul fast float %5599, %5595
  %5601 = fmul fast float %3618, 4.000000e+00
  %5602 = fmul fast float %5601, %5544
  %5603 = fmul fast float %5602, %5596
  %5604 = fmul fast float %3628, 4.000000e+00
  %5605 = fmul fast float %5604, %5545
  %5606 = fmul fast float %5605, %5597
  %5607 = fadd fast float %5600, %5587
  %5608 = fadd fast float %5603, %5588
  %5609 = fadd fast float %5606, %5589
  %5610 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5611 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  br label %5613

; <label>:5613                                    ; preds = %5590, %5575
  %5614 = phi float [ %5610, %5590 ], [ %5587, %5575 ]
  %5615 = phi float [ %5611, %5590 ], [ %5588, %5575 ]
  %5616 = phi float [ %5612, %5590 ], [ %5589, %5575 ]
  %5617 = call float @dx.op.binary.f32(i32 35, float %5615, float %5616)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5614, float %5617)  ; FMax(a,b)
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = fmul fast float %5576, %5534
  %5621 = fmul fast float %5577, %5534
  %5622 = fmul fast float %5578, %5534
  %5623 = fsub fast float 1.000000e+00, %5467
  %5624 = bitcast float %5623 to i32
  %5625 = sitofp i32 %5624 to float
  %5626 = fmul fast float %5625, 5.000000e+00
  %5627 = fadd fast float %5626, 0xC1EFBF8940000000
  %5628 = fptosi float %5627 to i32
  %5629 = bitcast i32 %5628 to float
  %5630 = fmul fast float %5629, %2993
  %5631 = fmul fast float %5619, %5630
  %5632 = fmul fast float %5631, %4957
  %5633 = fmul fast float %5631, %4958
  %5634 = fmul fast float %5631, %4959
  %5635 = fadd fast float %5632, %5620
  %5636 = fadd fast float %5633, %5621
  %5637 = fadd fast float %5634, %5622
  %5638 = fmul fast float %5455, %3014
  %5639 = fmul fast float %5638, %5473
  %5640 = fmul fast float %5639, %5619
  %5641 = fmul fast float %5456, %3014
  %5642 = fmul fast float %5641, %5473
  %5643 = fmul fast float %5642, %5619
  %5644 = fmul fast float %5457, %3014
  %5645 = fmul fast float %5644, %5473
  %5646 = fmul fast float %5645, %5619
  %5647 = fadd fast float %5640, %5294
  %5648 = fadd fast float %5643, %5295
  %5649 = fadd fast float %5646, %5296
  %5650 = fmul fast float %5639, %5635
  %5651 = fmul fast float %5642, %5636
  %5652 = fmul fast float %5645, %5637
  %5653 = fadd fast float %5650, %5291
  %5654 = fadd fast float %5651, %5292
  %5655 = fadd fast float %5652, %5293
  br label %5369

; <label>:5656                                    ; preds = %5369
  br label %5657

; <label>:5657                                    ; preds = %5656, %5257
  %5658 = phi float [ %5259, %5257 ], [ %5370, %5656 ]
  %5659 = phi float [ %5260, %5257 ], [ %5371, %5656 ]
  %5660 = phi float [ %5261, %5257 ], [ %5372, %5656 ]
  %5661 = phi float [ %5262, %5257 ], [ %5373, %5656 ]
  %5662 = phi float [ %5263, %5257 ], [ %5374, %5656 ]
  %5663 = phi float [ %5264, %5257 ], [ %5375, %5656 ]
  %5664 = add i32 %5258, 1
  %5665 = icmp ugt i32 %5664, %5254
  br i1 %5665, label %5666, label %5257

; <label>:5666                                    ; preds = %5657
  br label %5667

; <label>:5667                                    ; preds = %5666, %5233, %5223
  %5668 = phi float [ %5224, %5223 ], [ %5224, %5233 ], [ %5658, %5666 ]
  %5669 = phi float [ %5225, %5223 ], [ %5225, %5233 ], [ %5659, %5666 ]
  %5670 = phi float [ %5226, %5223 ], [ %5226, %5233 ], [ %5660, %5666 ]
  %5671 = phi float [ %5227, %5223 ], [ %5227, %5233 ], [ %5661, %5666 ]
  %5672 = phi float [ %5228, %5223 ], [ %5228, %5233 ], [ %5662, %5666 ]
  %5673 = phi float [ %5229, %5223 ], [ %5229, %5233 ], [ %5663, %5666 ]
  %5674 = call float @dx.op.unary.f32(i32 24, float %3620)  ; Sqrt(value)
  %5675 = call float @dx.op.unary.f32(i32 24, float %3621)  ; Sqrt(value)
  %5676 = call float @dx.op.unary.f32(i32 24, float %3622)  ; Sqrt(value)
  %5677 = fmul fast float %5674, %5671
  %5678 = fmul fast float %5675, %5672
  %5679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.f32 %5679, 0
  br i1 %194, label %5681, label %5701

; <label>:5681                                    ; preds = %5667
  %5682 = fadd fast float %5673, %2991
  %5683 = fmul fast float %5682, %2992
  %5684 = fsub fast float 1.000000e+00, %2992
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5687 = extractvalue %dx.types.CBufRet.f32 %5686, 3
  %5688 = fmul fast float %5687, %5685
  %5689 = fadd fast float %5688, %5683
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = fmul fast float %5691, %4963
  %5693 = fsub fast float %5689, %5692
  %5694 = fadd fast float %5678, %5677
  %5695 = fmul fast float %5680, %5694
  %5696 = extractvalue %dx.types.CBufRet.f32 %5686, 1
  %5697 = fsub fast float %5693, %5696
  %5698 = extractvalue %dx.types.CBufRet.f32 %5686, 2
  %5699 = fmul fast float %5697, %5698
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  br label %5717

; <label>:5701                                    ; preds = %5667
  %5702 = fmul fast float %5676, %5673
  %5703 = fmul fast float %5680, %5677
  %5704 = fmul fast float %5680, %5678
  %5705 = fmul fast float %5702, %5680
  %5706 = add i32 %44, 292
  %5707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5706, i32 undef)  ; BufferLoad(srv,index,wot)
  %5708 = extractvalue %dx.types.ResRet.i32 %5707, 0
  %5709 = and i32 %5708, 32
  %5710 = icmp eq i32 %5709, 0
  br i1 %5710, label %5717, label %5711

; <label>:5711                                    ; preds = %5701
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = fmul fast float %5713, 0x3FE99999A0000000
  %5715 = fadd fast float %5713, %5703
  %5716 = fadd fast float %5714, %5705
  br label %5717

; <label>:5717                                    ; preds = %5711, %5701, %5681
  %5718 = phi float [ %5695, %5681 ], [ %5715, %5711 ], [ %5703, %5701 ]
  %5719 = phi float [ %5700, %5681 ], [ %5704, %5711 ], [ %5704, %5701 ]
  %5720 = phi float [ 1.000000e+00, %5681 ], [ %5716, %5711 ], [ %5705, %5701 ]
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 0
  %5723 = fmul fast float %5722, %5669
  %5724 = fmul fast float %5722, %5670
  %5725 = fadd fast float %5669, %5668
  %5726 = select i1 %194, float %5725, float %5668
  %5727 = fmul float %5726, %5722
  %5728 = select i1 %194, float 0.000000e+00, float %5723
  %5729 = select i1 %194, float 0.000000e+00, float %5724
  %5730 = fmul fast float %5718, %5674
  %5731 = fmul fast float %5719, %5675
  %5732 = fmul fast float %5720, %5676
  %5733 = fadd fast float %5727, %5730
  %5734 = fadd fast float %5728, %5731
  %5735 = fadd fast float %5729, %5732
  %5736 = select i1 %194, float %5719, float %5734
  %5737 = select i1 %194, float %5720, float %5735
  %5738 = call float @dx.op.binary.f32(i32 36, float %5733, float 3.225500e+04)  ; FMin(a,b)
  %5739 = call float @dx.op.binary.f32(i32 36, float %5736, float 3.225500e+04)  ; FMin(a,b)
  %5740 = call float @dx.op.binary.f32(i32 36, float %5737, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5738)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5739)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5740)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[36 x i32] [i32 34, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !82}
!59 = !{!60, !80, null}
!60 = !{!61, !64, !66, !69, !71, !72, !73, !74, !76, !78, !79}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 15}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !68}
!67 = !{i32 1}
!68 = !{i32 3, i32 3}
!69 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !70}
!70 = !{i32 3, i32 7}
!71 = !{i32 4, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !70}
!72 = !{i32 5, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!73 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !65}
!74 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 7, i8 0, !65}
!75 = !{i32 2}
!76 = !{i32 8, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 8, i8 0, !77}
!77 = !{i32 3, i32 1}
!78 = !{i32 9, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 8, i8 1, !77}
!79 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!80 = !{!81}
!81 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!82 = !{i32 0, i64 24}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}

