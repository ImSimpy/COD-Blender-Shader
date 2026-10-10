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
; MATERIAL_DATA_OFFSET     0   x           7     NONE    uint   x   
; TRANSIENT_INDEX          0    y          7     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 7979459a5324f32617c2870d4d11b7e7
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
; Number of inputs: 30, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
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
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %64
  %72 = fmul fast float %70, %65
  %73 = fmul fast float %54, %51
  %74 = fmul fast float %55, %50
  %75 = fsub fast float %73, %74
  %76 = fmul fast float %55, %49
  %77 = fmul fast float %53, %51
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %53, %50
  %80 = fmul fast float %54, %49
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %75, %52
  %83 = fmul fast float %78, %52
  %84 = fmul fast float %81, %52
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %88 = fmul fast float %86, 2.000000e+00
  %89 = fmul fast float %88, %71
  %90 = fmul fast float %87, 2.000000e+00
  %91 = fmul fast float %90, %72
  %92 = fsub fast float 1.000000e+00, %89
  %93 = fsub fast float 1.000000e+00, %91
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fmul fast float %92, %95
  %99 = fmul fast float %92, %96
  %100 = fmul fast float %92, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %93, %102
  %106 = fmul fast float %93, %103
  %107 = fmul fast float %93, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fadd fast float %105, %109
  %113 = fadd fast float %112, %98
  %114 = fadd fast float %106, %110
  %115 = fadd fast float %114, %99
  %116 = fadd fast float %107, %111
  %117 = fadd fast float %116, %100
  %118 = fmul fast float %113, %66
  %119 = fmul fast float %115, %66
  %120 = fmul fast float %117, %66
  %121 = fadd fast float %58, 5.000000e-01
  %122 = fptoui float %121 to i32
  %123 = shl i32 %122, 3
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = or i32 %123, 4
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %125, 8191
  %130 = lshr i32 %125, 13
  %131 = and i32 %130, 8191
  %132 = lshr i32 %125, 26
  %133 = and i32 %128, 65535
  %134 = lshr i32 %128, 16
  %135 = uitofp i32 %133 to float
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %138 = uitofp i32 %134 to float
  %139 = uitofp i32 %129 to float
  %140 = fmul fast float %137, %139
  %141 = uitofp i32 %131 to float
  %142 = fmul fast float %137, %141
  %143 = fmul fast float %137, %56
  %144 = fmul fast float %143, %135
  %145 = fmul fast float %137, %57
  %146 = fmul fast float %145, %138
  %147 = fadd fast float %144, %140
  %148 = fadd fast float %142, %146
  %149 = uitofp i32 %132 to float
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %71
  %154 = fmul fast float %152, %72
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %156, 114688
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %158, float %153, float 0.000000e+00
  %160 = select i1 %158, float %154, float 0.000000e+00
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %162, 2.550000e+02
  %164 = fptoui float %163 to i32
  %165 = select i1 %158, i32 %164, i32 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %169 = and i32 %168, 3
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 4
  %172 = icmp ne i32 %171, 0
  %173 = and i1 %170, %172
  br i1 %173, label %174, label %185

; <label>:174                                     ; preds = %0
  %175 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %176 = fmul fast float %175, %72
  %177 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %178 = fmul fast float %177, %71
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %178, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fsub fast float 1.000000e+00, %180
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = fcmp fast olt float %181, %183
  br label %188

; <label>:185                                     ; preds = %0
  %186 = icmp eq i32 %171, 0
  %187 = and i1 %170, %186
  br label %188

; <label>:188                                     ; preds = %185, %174
  %189 = phi i1 [ %184, %174 ], [ %187, %185 ]
  %190 = add i32 %44, 92
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = shl i32 %192, 4
  %194 = and i32 %193, 32752
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %192, 7
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %192, 22
  %200 = shl nuw nsw i32 %199, 5
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = add i32 %44, 120
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 255
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F70101020000000
  %208 = lshr i32 %204, 8
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F70101020000000
  %212 = lshr i32 %204, 16
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F70101020000000
  %216 = add i32 %44, 36
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %44, 160
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add i32 %44, 108
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = shl i32 %224, 4
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %224, 7
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %224, 22
  %232 = shl nuw nsw i32 %231, 5
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %44, 136
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %248 = add i32 %44, 52
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %44, 176
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %259, 0x3F50624DE0000000
  %263 = fmul fast float %261, 0x3F50624DE0000000
  %264 = add i32 %44, 204
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = lshr i32 %266, 20
  %268 = and i32 %267, 3
  %269 = add nuw nsw i32 %268, 1
  %270 = add i32 %44, 24
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %44, 28
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = or i32 %275, %272
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %738, label %278

; <label>:278                                     ; preds = %188
  %279 = lshr i32 %221, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %280, 0x3F50624DE0000000
  %282 = and i32 %221, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %283, 0x3F50624DE0000000
  %285 = lshr i32 %218, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = and i32 %218, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %44, 156
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = lshr i32 %291, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = fmul fast float %293, 0x3F50624DE0000000
  %295 = add i32 %44, 56
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  %300 = lshr i32 %297, 24
  %301 = add i32 %44, 164
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %44, 32
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = lshr i32 %310, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = shl i32 %310, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %322 = fmul fast float %321, 1.000000e+03
  %323 = fmul fast float %284, %322
  %324 = call float @dx.op.unary.f32(i32 22, float %323)  ; Frc(value)
  %325 = fadd fast float %324, %288
  %326 = fmul fast float %281, %322
  %327 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %328 = fadd fast float %327, %286
  %329 = fmul fast float %294, %322
  %330 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %331 = fmul fast float %330, 0x401921FB60000000
  %332 = fadd fast float %331, %313
  %333 = call float @dx.op.unary.f32(i32 13, float %332)  ; Sin(value)
  %334 = call float @dx.op.unary.f32(i32 12, float %332)  ; Cos(value)
  %335 = fsub fast float -0.000000e+00, %333
  %336 = fadd fast float %59, -5.000000e-01
  %337 = fadd fast float %60, -5.000000e-01
  %338 = fmul fast float %305, %336
  %339 = fmul fast float %307, %337
  %340 = fadd fast float %338, 5.000000e-01
  %341 = fadd fast float %339, 5.000000e-01
  %342 = fmul fast float %316, %340
  %343 = fmul fast float %319, %341
  %344 = fmul fast float %334, %342
  %345 = call float @dx.op.tertiary.f32(i32 46, float %335, float %343, float %344)  ; FMad(a,b,c)
  %346 = fmul fast float %333, %342
  %347 = call float @dx.op.tertiary.f32(i32 46, float %334, float %343, float %346)  ; FMad(a,b,c)
  %348 = fadd fast float %325, %345
  %349 = fadd fast float %328, %347
  %350 = icmp ugt i32 %299, 1
  %351 = icmp ugt i32 %297, 33554431
  %352 = or i1 %351, %350
  br i1 %352, label %353, label %378

; <label>:353                                     ; preds = %278
  %354 = add i32 %44, 132
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = lshr i32 %356, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %321, %358
  %360 = call float @dx.op.unary.f32(i32 22, float %359)  ; Frc(value)
  %361 = mul nuw nsw i32 %299, %300
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %360, %362
  %364 = call float @dx.op.unary.f32(i32 27, float %363)  ; Round_ni(value)
  %365 = fptoui float %364 to i32
  %366 = urem i32 %365, %299
  %367 = udiv i32 %365, %300
  %368 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %369 = call float @dx.op.unary.f32(i32 22, float %349)  ; Frc(value)
  %370 = uitofp i32 %366 to float
  %371 = uitofp i32 %367 to float
  %372 = fadd fast float %368, %370
  %373 = fadd fast float %369, %371
  %374 = uitofp i32 %299 to float
  %375 = uitofp i32 %300 to float
  %376 = fdiv fast float %372, %374
  %377 = fdiv fast float %373, %375
  br label %378

; <label>:378                                     ; preds = %353, %278
  %379 = phi float [ %376, %353 ], [ %348, %278 ]
  %380 = phi float [ %377, %353 ], [ %349, %278 ]
  %381 = and i32 %272, 16
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %579, label %383

; <label>:383                                     ; preds = %378
  %384 = add i32 %44, 216
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %386, 0
  %388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %388, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = and i32 %297, 255
  %395 = uitofp i32 %394 to float
  %396 = lshr i32 %297, 8
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %393, %395
  %400 = fadd fast float %399, %398
  %401 = fmul fast float %400, 0x3F70101000000000
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 512
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %414, label %406

; <label>:406                                     ; preds = %383
  %407 = add i32 %44, 256
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = add i32 %409, 0
  %411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %411, %dx.types.Handle %68, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  br label %414

; <label>:414                                     ; preds = %406, %383
  %415 = phi float [ %413, %406 ], [ 1.000000e+00, %383 ]
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 33554432
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %526, label %420

; <label>:420                                     ; preds = %414
  %421 = add i32 %44, 128
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %44, 132
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = lshr i32 %434, 24
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = and i32 %434, 255
  %439 = uitofp i32 %438 to float
  %440 = fmul fast float %439, 0x3F70101020000000
  %441 = lshr i32 %434, 8
  %442 = and i32 %441, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %434, 16
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = add i32 %44, 124
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 24
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = and i32 %451, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = lshr i32 %451, 8
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %451, 16
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = bitcast float %390 to i32
  %467 = ashr i32 %466, 1
  %468 = sub nsw i32 1597463174, %467
  %469 = bitcast i32 %468 to float
  %470 = fmul fast float %390, 5.000000e-01
  %471 = fmul fast float %469, %469
  %472 = fmul fast float %471, %470
  %473 = fsub fast float 1.500000e+00, %472
  %474 = fmul fast float %469, %390
  %475 = fmul fast float %474, %473
  %476 = bitcast float %391 to i32
  %477 = ashr i32 %476, 1
  %478 = sub nsw i32 1597463174, %477
  %479 = bitcast i32 %478 to float
  %480 = fmul fast float %391, 5.000000e-01
  %481 = fmul fast float %479, %479
  %482 = fmul fast float %481, %480
  %483 = fsub fast float 1.500000e+00, %482
  %484 = fmul fast float %479, %391
  %485 = fmul fast float %484, %483
  %486 = bitcast float %392 to i32
  %487 = ashr i32 %486, 1
  %488 = sub nsw i32 1597463174, %487
  %489 = bitcast i32 %488 to float
  %490 = fmul fast float %392, 5.000000e-01
  %491 = fmul fast float %489, %489
  %492 = fmul fast float %491, %490
  %493 = fsub fast float 1.500000e+00, %492
  %494 = fmul fast float %489, %392
  %495 = fmul fast float %494, %493
  %496 = fsub fast float %475, %457
  %497 = fsub fast float %485, %461
  %498 = fsub fast float %495, %465
  %499 = fmul fast float %496, %425
  %500 = fmul fast float %497, %427
  %501 = fmul fast float %498, %432
  %502 = fadd fast float %499, %440
  %503 = fadd fast float %500, %444
  %504 = fadd fast float %501, %448
  %505 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %506 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %507 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %508 = fmul fast float %505, %505
  %509 = fmul fast float %506, %506
  %510 = fmul fast float %507, %507
  %511 = fsub fast float %508, %390
  %512 = fsub fast float %509, %391
  %513 = fsub fast float %510, %392
  %514 = fmul fast float %511, %415
  %515 = fmul fast float %512, %415
  %516 = fmul fast float %513, %415
  %517 = fadd fast float %514, %390
  %518 = fadd fast float %515, %391
  %519 = fadd fast float %516, %392
  %520 = fadd fast float %437, %401
  %521 = fsub fast float %520, %454
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = fsub fast float %522, %401
  %524 = fmul fast float %523, %415
  %525 = fadd fast float %524, %401
  br label %579

; <label>:526                                     ; preds = %414
  %527 = and i32 %417, 134217728
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %563, label %529

; <label>:529                                     ; preds = %526
  %530 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %531 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %532 = call float @dx.op.unary.f32(i32 24, float %215)  ; Sqrt(value)
  %533 = fadd fast float %530, -5.000000e-01
  %534 = fadd fast float %531, -5.000000e-01
  %535 = fadd fast float %532, -5.000000e-01
  %536 = fmul fast float %533, %415
  %537 = fmul fast float %534, %415
  %538 = fmul fast float %535, %415
  %539 = fadd fast float %536, 5.000000e-01
  %540 = fadd fast float %537, 5.000000e-01
  %541 = fadd fast float %538, 5.000000e-01
  %542 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %543 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %544 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %545 = fmul fast float %539, 2.000000e+00
  %546 = fsub fast float 1.000000e+00, %545
  %547 = fmul fast float %546, %542
  %548 = fadd fast float %547, %545
  %549 = fmul fast float %548, %542
  %550 = fmul fast float %540, 2.000000e+00
  %551 = fsub fast float 1.000000e+00, %550
  %552 = fmul fast float %551, %543
  %553 = fadd fast float %552, %550
  %554 = fmul fast float %553, %543
  %555 = fmul fast float %541, 2.000000e+00
  %556 = fsub fast float 1.000000e+00, %555
  %557 = fmul fast float %556, %544
  %558 = fadd fast float %557, %555
  %559 = fmul fast float %558, %544
  %560 = fmul fast float %549, %549
  %561 = fmul fast float %554, %554
  %562 = fmul fast float %559, %559
  br label %579

; <label>:563                                     ; preds = %526
  %564 = fmul fast float %207, %207
  %565 = fmul fast float %211, %211
  %566 = fmul fast float %215, %215
  %567 = fadd fast float %564, -1.000000e+00
  %568 = fadd fast float %565, -1.000000e+00
  %569 = fadd fast float %566, -1.000000e+00
  %570 = fmul fast float %415, %567
  %571 = fmul fast float %415, %568
  %572 = fmul fast float %415, %569
  %573 = fadd fast float %570, 1.000000e+00
  %574 = fadd fast float %571, 1.000000e+00
  %575 = fadd fast float %572, 1.000000e+00
  %576 = fmul fast float %573, %390
  %577 = fmul fast float %574, %391
  %578 = fmul fast float %575, %392
  br label %579

; <label>:579                                     ; preds = %563, %529, %420, %378
  %580 = phi float [ %525, %420 ], [ %401, %529 ], [ %401, %563 ], [ 0x3FA23C0BE0000000, %378 ]
  %581 = phi float [ %517, %420 ], [ %560, %529 ], [ %576, %563 ], [ 1.000000e+00, %378 ]
  %582 = phi float [ %518, %420 ], [ %561, %529 ], [ %577, %563 ], [ 1.000000e+00, %378 ]
  %583 = phi float [ %519, %420 ], [ %562, %529 ], [ %578, %563 ], [ 1.000000e+00, %378 ]
  %584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.i32 %584, 1
  %586 = and i32 %585, 1
  %587 = icmp ne i32 %586, 0
  %588 = add i32 %44, 212
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 32
  %592 = icmp ne i32 %591, 0
  %593 = and i1 %587, %592
  %594 = select i1 %593, float 1.000000e+00, float %581
  %595 = select i1 %593, float 0x3FD3333340000000, float %582
  %596 = select i1 %593, float 0x3FD3333340000000, float %583
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 32
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %673, label %601

; <label>:601                                     ; preds = %579
  %602 = add i32 %44, 60
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = add i32 %44, 224
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  %615 = and i32 %604, 255
  %616 = uitofp i32 %615 to float
  %617 = lshr i32 %604, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = lshr i32 %604, 16
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101000000000
  %624 = fmul fast float %611, %616
  %625 = fadd fast float %624, %619
  %626 = fmul fast float %625, 0x3F70101000000000
  %627 = fadd fast float %612, -5.000000e-01
  %628 = fadd fast float %614, -5.000000e-01
  %629 = fmul fast float %627, %623
  %630 = fmul fast float %628, %623
  %631 = fadd fast float %629, 5.000000e-01
  %632 = fadd fast float %630, 5.000000e-01
  %633 = fmul fast float %631, 2.000000e+00
  %634 = fadd fast float %633, -1.000000e+00
  %635 = fmul fast float %632, 2.000000e+00
  %636 = fadd fast float %635, -1.000000e+00
  %637 = fadd fast float %634, %636
  %638 = fmul fast float %637, 5.000000e-01
  %639 = fsub fast float %634, %636
  %640 = fmul fast float %639, 5.000000e-01
  %641 = call float @dx.op.unary.f32(i32 6, float %638)  ; FAbs(value)
  %642 = fsub fast float 1.000000e+00, %641
  %643 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %644 = fsub fast float %642, %643
  %645 = call float @dx.op.dot3.f32(i32 55, float %638, float %640, float %644, float %638, float %640, float %644)  ; Dot3(ax,ay,az,bx,by,bz)
  %646 = call float @dx.op.unary.f32(i32 25, float %645)  ; Rsqrt(value)
  %647 = fmul fast float %638, %646
  %648 = fmul fast float %640, %646
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 67108864
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %669, label %653

; <label>:653                                     ; preds = %601
  %654 = add i32 %44, 152
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 65535
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = lshr i32 %656, 16
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = fsub fast float %626, %664
  %666 = fmul fast float %665, %658
  %667 = fadd fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %653, %601
  %670 = phi float [ %668, %653 ], [ %626, %601 ]
  %671 = call float @dx.op.dot2.f32(i32 54, float %647, float %648, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %672 = call float @dx.op.dot2.f32(i32 54, float %647, float %648, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %673

; <label>:673                                     ; preds = %669, %579
  %674 = phi float [ %670, %669 ], [ 0x3FD6666660000000, %579 ]
  %675 = phi float [ %671, %669 ], [ 0.000000e+00, %579 ]
  %676 = phi float [ %672, %669 ], [ 0.000000e+00, %579 ]
  %677 = phi float [ %613, %669 ], [ 1.000000e+00, %579 ]
  %678 = add i32 %44, 96
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = lshr i32 %680, 22
  %682 = shl nuw nsw i32 %681, 5
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 64
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %721, label %688

; <label>:688                                     ; preds = %673
  %689 = add i32 %44, 232
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %691, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 131072
  %697 = icmp eq i32 %696, 0
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %693, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = fmul fast float %699, %195
  %703 = fmul fast float %700, %198
  %704 = fmul fast float %701, %201
  br i1 %697, label %711, label %705

; <label>:705                                     ; preds = %688
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = fmul fast float %707, %702
  %709 = fmul fast float %707, %703
  %710 = fmul fast float %707, %704
  br label %711

; <label>:711                                     ; preds = %705, %688
  %712 = phi float [ %708, %705 ], [ %702, %688 ]
  %713 = phi float [ %709, %705 ], [ %703, %688 ]
  %714 = phi float [ %710, %705 ], [ %704, %688 ]
  %715 = fmul fast float %712, %683
  %716 = select i1 %189, float %715, float %712
  %717 = call float @dx.op.dot3.f32(i32 55, float %716, float %713, float %714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %718 = select i1 %189, float 0.000000e+00, float %712
  %719 = select i1 %189, float %717, float %713
  %720 = select i1 %189, float 0.000000e+00, float %714
  br label %721

; <label>:721                                     ; preds = %711, %673
  %722 = phi float [ %718, %711 ], [ 0.000000e+00, %673 ]
  %723 = phi float [ %719, %711 ], [ 0.000000e+00, %673 ]
  %724 = phi float [ %720, %711 ], [ 0.000000e+00, %673 ]
  %725 = add i32 %44, 64
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 255
  %729 = uitofp i32 %728 to float
  %730 = lshr i32 %727, 8
  %731 = and i32 %730, 255
  %732 = uitofp i32 %731 to float
  %733 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %734 = fmul fast float %732, %733
  %735 = fadd fast float %734, %729
  %736 = fmul fast float %735, 0x3F70101020000000
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  br label %738

; <label>:738                                     ; preds = %721, %188
  %739 = phi float [ %675, %721 ], [ 0.000000e+00, %188 ]
  %740 = phi float [ %676, %721 ], [ 0.000000e+00, %188 ]
  %741 = phi float [ %594, %721 ], [ 0.000000e+00, %188 ]
  %742 = phi float [ %595, %721 ], [ 0.000000e+00, %188 ]
  %743 = phi float [ %596, %721 ], [ 0.000000e+00, %188 ]
  %744 = phi float [ %722, %721 ], [ 0.000000e+00, %188 ]
  %745 = phi float [ %723, %721 ], [ 0.000000e+00, %188 ]
  %746 = phi float [ %724, %721 ], [ 0.000000e+00, %188 ]
  %747 = phi float [ %580, %721 ], [ 0.000000e+00, %188 ]
  %748 = phi float [ 1.000000e+00, %721 ], [ 0.000000e+00, %188 ]
  %749 = phi float [ %674, %721 ], [ 0.000000e+00, %188 ]
  %750 = phi float [ %677, %721 ], [ 0.000000e+00, %188 ]
  %751 = phi float [ %737, %721 ], [ 0.000000e+00, %188 ]
  %752 = icmp ult i32 %269, 2
  %753 = add i32 %44, 40
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %44, 44
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = or i32 %758, %755
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %1584, label %761

; <label>:761                                     ; preds = %738
  %762 = add i32 %44, 172
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = lshr i32 %764, 16
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = fmul fast float %766, 0x3F50624DE0000000
  %768 = add i32 %44, 72
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = lshr i32 %770, 16
  %772 = and i32 %771, 255
  %773 = lshr i32 %770, 24
  %774 = add i32 %44, 180
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = lshr i32 %776, 16
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = add i32 %44, 48
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = lshr i32 %783, 22
  %785 = shl nuw nsw i32 %784, 5
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = shl i32 %783, 4
  %788 = and i32 %787, 32752
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = lshr i32 %783, 7
  %791 = and i32 %790, 32752
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %795 = fmul fast float %794, 1.000000e+03
  %796 = fmul fast float %262, %795
  %797 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %798 = fadd fast float %797, %252
  %799 = fmul fast float %263, %795
  %800 = call float @dx.op.unary.f32(i32 22, float %799)  ; Frc(value)
  %801 = fadd fast float %800, %254
  %802 = fmul fast float %767, %795
  %803 = call float @dx.op.unary.f32(i32 22, float %802)  ; Frc(value)
  %804 = fmul fast float %803, 0x401921FB60000000
  %805 = fadd fast float %804, %786
  %806 = call float @dx.op.unary.f32(i32 13, float %805)  ; Sin(value)
  %807 = call float @dx.op.unary.f32(i32 12, float %805)  ; Cos(value)
  %808 = fsub fast float -0.000000e+00, %806
  %809 = fadd fast float %61, -5.000000e-01
  %810 = fadd fast float %62, -5.000000e-01
  %811 = fmul fast float %778, %809
  %812 = fmul fast float %780, %810
  %813 = fadd fast float %811, 5.000000e-01
  %814 = fadd fast float %812, 5.000000e-01
  %815 = fmul fast float %789, %813
  %816 = fmul fast float %792, %814
  %817 = fmul fast float %807, %815
  %818 = call float @dx.op.tertiary.f32(i32 46, float %808, float %816, float %817)  ; FMad(a,b,c)
  %819 = fmul fast float %806, %815
  %820 = call float @dx.op.tertiary.f32(i32 46, float %807, float %816, float %819)  ; FMad(a,b,c)
  %821 = fadd fast float %798, %818
  %822 = fadd fast float %801, %820
  %823 = icmp ugt i32 %772, 1
  %824 = icmp ugt i32 %770, 33554431
  %825 = or i1 %824, %823
  br i1 %825, label %826, label %851

; <label>:826                                     ; preds = %761
  %827 = add i32 %44, 148
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %829, 16
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = fmul fast float %794, %831
  %833 = call float @dx.op.unary.f32(i32 22, float %832)  ; Frc(value)
  %834 = mul nuw nsw i32 %772, %773
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %833, %835
  %837 = call float @dx.op.unary.f32(i32 27, float %836)  ; Round_ni(value)
  %838 = fptoui float %837 to i32
  %839 = urem i32 %838, %772
  %840 = udiv i32 %838, %773
  %841 = call float @dx.op.unary.f32(i32 22, float %821)  ; Frc(value)
  %842 = call float @dx.op.unary.f32(i32 22, float %822)  ; Frc(value)
  %843 = uitofp i32 %839 to float
  %844 = uitofp i32 %840 to float
  %845 = fadd fast float %841, %843
  %846 = fadd fast float %842, %844
  %847 = uitofp i32 %772 to float
  %848 = uitofp i32 %773 to float
  %849 = fdiv fast float %845, %847
  %850 = fdiv fast float %846, %848
  br label %851

; <label>:851                                     ; preds = %826, %761
  %852 = phi float [ %849, %826 ], [ %821, %761 ]
  %853 = phi float [ %850, %826 ], [ %822, %761 ]
  %854 = and i32 %755, 16777216
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %965, label %856

; <label>:856                                     ; preds = %851
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = fadd fast float %858, %118
  %862 = fadd fast float %859, %119
  %863 = fadd fast float %860, %120
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = icmp eq i32 %43, 65535
  br i1 %867, label %962, label %868

; <label>:868                                     ; preds = %856
  %869 = lshr i32 %43, 1
  %870 = shl i32 %869, 2
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %43, 1
  %874 = icmp ne i32 %873, 0
  %875 = lshr i32 %872, 16
  %876 = and i32 %872, 65535
  %877 = select i1 %874, i32 %875, i32 %876
  %878 = icmp eq i32 %877, 65535
  br i1 %878, label %958, label %879

; <label>:879                                     ; preds = %868
  %880 = mul nuw nsw i32 %877, 40
  %881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = add nuw nsw i32 %880, 12
  %886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = add nuw nsw i32 %880, 24
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = add nuw nsw i32 %880, 36
  %896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = fsub fast float %861, %882
  %899 = fsub fast float %862, %883
  %900 = fsub fast float %863, %884
  %901 = fmul fast float %897, %898
  %902 = fmul fast float %897, %899
  %903 = fmul fast float %897, %900
  %904 = call float @dx.op.unary.f32(i32 27, float %901)  ; Round_ni(value)
  %905 = call float @dx.op.unary.f32(i32 27, float %902)  ; Round_ni(value)
  %906 = call float @dx.op.unary.f32(i32 27, float %903)  ; Round_ni(value)
  %907 = fadd fast float %904, 5.000000e-01
  %908 = fadd fast float %905, 5.000000e-01
  %909 = fadd fast float %906, 5.000000e-01
  %910 = fmul fast float %907, %887
  %911 = fmul fast float %908, %888
  %912 = fmul fast float %909, %889
  %913 = shl i32 %43, 2
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = add i32 %915, 0
  %917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %918 = call float @dx.op.unary.f32(i32 22, float %910)  ; Frc(value)
  %919 = call float @dx.op.unary.f32(i32 22, float %911)  ; Frc(value)
  %920 = call float @dx.op.unary.f32(i32 22, float %912)  ; Frc(value)
  %921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %917, %dx.types.Handle %40, float %918, float %919, float %920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = fmul fast float %922, 1.023000e+03
  %926 = fmul fast float %923, 1.023000e+03
  %927 = fmul fast float %924, 1.023000e+03
  %928 = fadd fast float %925, 5.000000e-01
  %929 = fadd fast float %926, 5.000000e-01
  %930 = fadd fast float %927, 5.000000e-01
  %931 = call float @dx.op.unary.f32(i32 27, float %928)  ; Round_ni(value)
  %932 = call float @dx.op.unary.f32(i32 27, float %929)  ; Round_ni(value)
  %933 = call float @dx.op.unary.f32(i32 27, float %930)  ; Round_ni(value)
  %934 = fsub fast float %901, %904
  %935 = fsub fast float %902, %905
  %936 = fsub fast float %903, %906
  %937 = fmul fast float %934, 7.500000e-01
  %938 = fmul fast float %935, 7.500000e-01
  %939 = fmul fast float %936, 7.500000e-01
  %940 = fadd fast float %904, 1.250000e-01
  %941 = fadd fast float %940, %937
  %942 = fadd fast float %941, %931
  %943 = fadd fast float %905, 1.250000e-01
  %944 = fadd fast float %943, %938
  %945 = fadd fast float %944, %932
  %946 = fadd fast float %906, 1.250000e-01
  %947 = fadd fast float %946, %939
  %948 = fadd fast float %947, %933
  %949 = fmul fast float %942, %892
  %950 = fmul fast float %945, %893
  %951 = fmul fast float %948, %894
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = add i32 %953, 0
  %955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %955, %dx.types.Handle %38, float %949, float %950, float %951, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  br label %958

; <label>:958                                     ; preds = %879, %868
  %959 = phi float [ %957, %879 ], [ -1.000000e+00, %868 ]
  %960 = fadd fast float %959, %866
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  br label %962

; <label>:962                                     ; preds = %958, %856
  %963 = phi float [ %961, %958 ], [ %866, %856 ]
  %964 = fmul fast float %963, %63
  br label %965

; <label>:965                                     ; preds = %962, %851
  %966 = phi float [ %964, %962 ], [ %63, %851 ]
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 256
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %1017, label %971

; <label>:971                                     ; preds = %965
  %972 = add i32 %44, 252
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = add i32 %974, 0
  %976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %976, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = add i32 %44, 84
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = shl i32 %981, 4
  %983 = and i32 %982, 32752
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = lshr i32 %981, 7
  %986 = and i32 %985, 32752
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = fsub fast float 1.000000e+00, %966
  %989 = call float @dx.op.binary.f32(i32 35, float %988, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %990 = bitcast float %966 to i32
  %991 = sitofp i32 %990 to float
  %992 = fadd fast float %991, 0xC1CFBF8940000000
  %993 = fmul fast float %987, %992
  %994 = fadd fast float %993, 0x41CFBF8940000000
  %995 = fptosi float %994 to i32
  %996 = bitcast i32 %995 to float
  %997 = bitcast float %989 to i32
  %998 = sitofp i32 %997 to float
  %999 = fadd fast float %998, 0xC1CFBF8940000000
  %1000 = fmul fast float %999, %987
  %1001 = fadd fast float %1000, 0x41CFBF8940000000
  %1002 = fptosi float %1001 to i32
  %1003 = bitcast i32 %1002 to float
  %1004 = fmul fast float %996, %984
  %1005 = fmul fast float %1003, %984
  %1006 = fsub fast float %989, %1004
  %1007 = fadd fast float %1005, %989
  %1008 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1009 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1010 = fsub fast float %978, %1008
  %1011 = fsub fast float %1009, %1008
  %1012 = bitcast float %1011 to i32
  %1013 = sub nsw i32 2129859010, %1012
  %1014 = bitcast i32 %1013 to float
  %1015 = fmul fast float %1014, %1010
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  br label %1017

; <label>:1017                                    ; preds = %971, %965
  %1018 = phi float [ %1016, %971 ], [ %966, %965 ]
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 128
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1039, label %1023

; <label>:1023                                    ; preds = %1017
  %1024 = add i32 %44, 244
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = add i32 %1026, 0
  %1028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1029 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1028, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 524288
  %1034 = icmp ne i32 %1033, 0
  %1035 = fcmp fast ogt float %1030, 0x3FE0101020000000
  %1036 = select i1 %1035, float 1.000000e+00, float 0.000000e+00
  %1037 = select i1 %1034, float %1036, float %1030
  %1038 = fmul fast float %1037, %1018
  br label %1039

; <label>:1039                                    ; preds = %1023, %1017
  %1040 = phi float [ %1038, %1023 ], [ %1018, %1017 ]
  %1041 = fcmp fast ult float %1040, 0x3F70101020000000
  br i1 %1041, label %1584, label %1042

; <label>:1042                                    ; preds = %1039
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 16
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1245, label %1047

; <label>:1047                                    ; preds = %1042
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = add i32 %44, 220
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = add i32 %1052, 0
  %1054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1054, %dx.types.Handle %67, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = and i32 %1049, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = lshr i32 %1049, 8
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1059, %1061
  %1066 = fadd fast float %1065, %1064
  %1067 = fmul fast float %1066, 0x3F70101000000000
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 512
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1080, label %1072

; <label>:1072                                    ; preds = %1047
  %1073 = add i32 %44, 260
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  br label %1080

; <label>:1080                                    ; preds = %1072, %1047
  %1081 = phi float [ %1079, %1072 ], [ 1.000000e+00, %1047 ]
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 33554432
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1192, label %1086

; <label>:1086                                    ; preds = %1080
  %1087 = add i32 %44, 144
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 65535
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = lshr i32 %1089, 16
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = add i32 %44, 148
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 65535
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = lshr i32 %1100, 24
  %1102 = uitofp i32 %1101 to float
  %1103 = fmul fast float %1102, 0x3F70101020000000
  %1104 = and i32 %1100, 255
  %1105 = uitofp i32 %1104 to float
  %1106 = fmul fast float %1105, 0x3F70101020000000
  %1107 = lshr i32 %1100, 8
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F70101020000000
  %1111 = lshr i32 %1100, 16
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = add i32 %44, 140
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 24
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = and i32 %1117, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = lshr i32 %1117, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = lshr i32 %1117, 16
  %1129 = and i32 %1128, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = bitcast float %1056 to i32
  %1133 = ashr i32 %1132, 1
  %1134 = sub nsw i32 1597463174, %1133
  %1135 = bitcast i32 %1134 to float
  %1136 = fmul fast float %1056, 5.000000e-01
  %1137 = fmul fast float %1135, %1135
  %1138 = fmul fast float %1137, %1136
  %1139 = fsub fast float 1.500000e+00, %1138
  %1140 = fmul fast float %1135, %1056
  %1141 = fmul fast float %1140, %1139
  %1142 = bitcast float %1057 to i32
  %1143 = ashr i32 %1142, 1
  %1144 = sub nsw i32 1597463174, %1143
  %1145 = bitcast i32 %1144 to float
  %1146 = fmul fast float %1057, 5.000000e-01
  %1147 = fmul fast float %1145, %1145
  %1148 = fmul fast float %1147, %1146
  %1149 = fsub fast float 1.500000e+00, %1148
  %1150 = fmul fast float %1145, %1057
  %1151 = fmul fast float %1150, %1149
  %1152 = bitcast float %1058 to i32
  %1153 = ashr i32 %1152, 1
  %1154 = sub nsw i32 1597463174, %1153
  %1155 = bitcast i32 %1154 to float
  %1156 = fmul fast float %1058, 5.000000e-01
  %1157 = fmul fast float %1155, %1155
  %1158 = fmul fast float %1157, %1156
  %1159 = fsub fast float 1.500000e+00, %1158
  %1160 = fmul fast float %1155, %1058
  %1161 = fmul fast float %1160, %1159
  %1162 = fsub fast float %1141, %1123
  %1163 = fsub fast float %1151, %1127
  %1164 = fsub fast float %1161, %1131
  %1165 = fmul fast float %1162, %1091
  %1166 = fmul fast float %1163, %1093
  %1167 = fmul fast float %1164, %1098
  %1168 = fadd fast float %1165, %1106
  %1169 = fadd fast float %1166, %1110
  %1170 = fadd fast float %1167, %1114
  %1171 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1172 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1173 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1174 = fmul fast float %1171, %1171
  %1175 = fmul fast float %1172, %1172
  %1176 = fmul fast float %1173, %1173
  %1177 = fsub fast float %1174, %1056
  %1178 = fsub fast float %1175, %1057
  %1179 = fsub fast float %1176, %1058
  %1180 = fmul fast float %1177, %1081
  %1181 = fmul fast float %1178, %1081
  %1182 = fmul fast float %1179, %1081
  %1183 = fadd fast float %1180, %1056
  %1184 = fadd fast float %1181, %1057
  %1185 = fadd fast float %1182, %1058
  %1186 = fadd fast float %1103, %1067
  %1187 = fsub fast float %1186, %1120
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fsub fast float %1188, %1067
  %1190 = fmul fast float %1189, %1081
  %1191 = fadd fast float %1190, %1067
  br label %1245

; <label>:1192                                    ; preds = %1080
  %1193 = and i32 %1083, 134217728
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1229, label %1195

; <label>:1195                                    ; preds = %1192
  %1196 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1197 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1198 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1199 = fadd fast float %1196, -5.000000e-01
  %1200 = fadd fast float %1197, -5.000000e-01
  %1201 = fadd fast float %1198, -5.000000e-01
  %1202 = fmul fast float %1199, %1081
  %1203 = fmul fast float %1200, %1081
  %1204 = fmul fast float %1201, %1081
  %1205 = fadd fast float %1202, 5.000000e-01
  %1206 = fadd fast float %1203, 5.000000e-01
  %1207 = fadd fast float %1204, 5.000000e-01
  %1208 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1209 = call float @dx.op.unary.f32(i32 24, float %1057)  ; Sqrt(value)
  %1210 = call float @dx.op.unary.f32(i32 24, float %1058)  ; Sqrt(value)
  %1211 = fmul fast float %1205, 2.000000e+00
  %1212 = fsub fast float 1.000000e+00, %1211
  %1213 = fmul fast float %1212, %1208
  %1214 = fadd fast float %1213, %1211
  %1215 = fmul fast float %1214, %1208
  %1216 = fmul fast float %1206, 2.000000e+00
  %1217 = fsub fast float 1.000000e+00, %1216
  %1218 = fmul fast float %1217, %1209
  %1219 = fadd fast float %1218, %1216
  %1220 = fmul fast float %1219, %1209
  %1221 = fmul fast float %1207, 2.000000e+00
  %1222 = fsub fast float 1.000000e+00, %1221
  %1223 = fmul fast float %1222, %1210
  %1224 = fadd fast float %1223, %1221
  %1225 = fmul fast float %1224, %1210
  %1226 = fmul fast float %1215, %1215
  %1227 = fmul fast float %1220, %1220
  %1228 = fmul fast float %1225, %1225
  br label %1245

; <label>:1229                                    ; preds = %1192
  %1230 = fmul fast float %239, %239
  %1231 = fmul fast float %243, %243
  %1232 = fmul fast float %247, %247
  %1233 = fadd fast float %1230, -1.000000e+00
  %1234 = fadd fast float %1231, -1.000000e+00
  %1235 = fadd fast float %1232, -1.000000e+00
  %1236 = fmul fast float %1081, %1233
  %1237 = fmul fast float %1081, %1234
  %1238 = fmul fast float %1081, %1235
  %1239 = fadd fast float %1236, 1.000000e+00
  %1240 = fadd fast float %1237, 1.000000e+00
  %1241 = fadd fast float %1238, 1.000000e+00
  %1242 = fmul fast float %1239, %1056
  %1243 = fmul fast float %1240, %1057
  %1244 = fmul fast float %1241, %1058
  br label %1245

; <label>:1245                                    ; preds = %1229, %1195, %1086, %1042
  %1246 = phi float [ %1191, %1086 ], [ %1067, %1195 ], [ %1067, %1229 ], [ 0x3FA23C0BE0000000, %1042 ]
  %1247 = phi float [ %1183, %1086 ], [ %1226, %1195 ], [ %1242, %1229 ], [ 1.000000e+00, %1042 ]
  %1248 = phi float [ %1184, %1086 ], [ %1227, %1195 ], [ %1243, %1229 ], [ 1.000000e+00, %1042 ]
  %1249 = phi float [ %1185, %1086 ], [ %1228, %1195 ], [ %1244, %1229 ], [ 1.000000e+00, %1042 ]
  %1250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.i32 %1250, 1
  %1252 = and i32 %1251, 1
  %1253 = icmp ne i32 %1252, 0
  %1254 = add i32 %44, 212
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = and i32 %1256, 32
  %1258 = icmp ne i32 %1257, 0
  %1259 = and i1 %1253, %1258
  %1260 = select i1 %1259, float 1.000000e+00, float %1247
  %1261 = select i1 %1259, float 0x3FD3333340000000, float %1248
  %1262 = select i1 %1259, float 0x3FD3333340000000, float %1249
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 32
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1339, label %1267

; <label>:1267                                    ; preds = %1245
  %1268 = add i32 %44, 76
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %44, 228
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = add i32 %1273, 0
  %1275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1275, %dx.types.Handle %67, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1281 = and i32 %1270, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = lshr i32 %1270, 8
  %1284 = and i32 %1283, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = lshr i32 %1270, 16
  %1287 = and i32 %1286, 255
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101000000000
  %1290 = fmul fast float %1277, %1282
  %1291 = fadd fast float %1290, %1285
  %1292 = fmul fast float %1291, 0x3F70101000000000
  %1293 = fadd fast float %1278, -5.000000e-01
  %1294 = fadd fast float %1280, -5.000000e-01
  %1295 = fmul fast float %1293, %1289
  %1296 = fmul fast float %1294, %1289
  %1297 = fadd fast float %1295, 5.000000e-01
  %1298 = fadd fast float %1296, 5.000000e-01
  %1299 = fmul fast float %1297, 2.000000e+00
  %1300 = fadd fast float %1299, -1.000000e+00
  %1301 = fmul fast float %1298, 2.000000e+00
  %1302 = fadd fast float %1301, -1.000000e+00
  %1303 = fadd fast float %1300, %1302
  %1304 = fmul fast float %1303, 5.000000e-01
  %1305 = fsub fast float %1300, %1302
  %1306 = fmul fast float %1305, 5.000000e-01
  %1307 = call float @dx.op.unary.f32(i32 6, float %1304)  ; FAbs(value)
  %1308 = fsub fast float 1.000000e+00, %1307
  %1309 = call float @dx.op.unary.f32(i32 6, float %1306)  ; FAbs(value)
  %1310 = fsub fast float %1308, %1309
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1304, float %1306, float %1310, float %1304, float %1306, float %1310)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = call float @dx.op.unary.f32(i32 25, float %1311)  ; Rsqrt(value)
  %1313 = fmul fast float %1304, %1312
  %1314 = fmul fast float %1306, %1312
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = and i32 %1316, 67108864
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1335, label %1319

; <label>:1319                                    ; preds = %1267
  %1320 = add i32 %44, 168
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 65535
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 65535
  %1328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1327)  ; LegacyF16ToF32(value)
  %1329 = lshr i32 %1322, 16
  %1330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1329)  ; LegacyF16ToF32(value)
  %1331 = fsub fast float %1292, %1330
  %1332 = fmul fast float %1331, %1324
  %1333 = fadd fast float %1332, %1328
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  br label %1335

; <label>:1335                                    ; preds = %1319, %1267
  %1336 = phi float [ %1334, %1319 ], [ %1292, %1267 ]
  %1337 = call float @dx.op.dot2.f32(i32 54, float %1313, float %1314, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %1338 = call float @dx.op.dot2.f32(i32 54, float %1313, float %1314, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %1339

; <label>:1339                                    ; preds = %1335, %1245
  %1340 = phi float [ %1336, %1335 ], [ 0x3FD6666660000000, %1245 ]
  %1341 = phi float [ %1337, %1335 ], [ 0.000000e+00, %1245 ]
  %1342 = phi float [ %1338, %1335 ], [ 0.000000e+00, %1245 ]
  %1343 = phi float [ %1279, %1335 ], [ 1.000000e+00, %1245 ]
  %1344 = add i32 %44, 112
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = lshr i32 %1346, 22
  %1348 = shl nuw nsw i32 %1347, 5
  %1349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1348)  ; LegacyF16ToF32(value)
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 64
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1387, label %1354

; <label>:1354                                    ; preds = %1339
  %1355 = add i32 %44, 236
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = add i32 %1357, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 131072
  %1363 = icmp eq i32 %1362, 0
  %1364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1359, %dx.types.Handle %67, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.ResRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.ResRet.f32 %1364, 2
  %1368 = fmul fast float %1365, %227
  %1369 = fmul fast float %1366, %230
  %1370 = fmul fast float %1367, %233
  br i1 %1363, label %1377, label %1371

; <label>:1371                                    ; preds = %1354
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = fmul fast float %1373, %1368
  %1375 = fmul fast float %1373, %1369
  %1376 = fmul fast float %1373, %1370
  br label %1377

; <label>:1377                                    ; preds = %1371, %1354
  %1378 = phi float [ %1374, %1371 ], [ %1368, %1354 ]
  %1379 = phi float [ %1375, %1371 ], [ %1369, %1354 ]
  %1380 = phi float [ %1376, %1371 ], [ %1370, %1354 ]
  %1381 = fmul fast float %1378, %1349
  %1382 = select i1 %189, float %1381, float %1378
  %1383 = call float @dx.op.dot3.f32(i32 55, float %1382, float %1379, float %1380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1384 = select i1 %189, float 0.000000e+00, float %1378
  %1385 = select i1 %189, float %1383, float %1379
  %1386 = select i1 %189, float 0.000000e+00, float %1380
  br label %1387

; <label>:1387                                    ; preds = %1377, %1339
  %1388 = phi float [ %1384, %1377 ], [ 0.000000e+00, %1339 ]
  %1389 = phi float [ %1385, %1377 ], [ 0.000000e+00, %1339 ]
  %1390 = phi float [ %1386, %1377 ], [ 0.000000e+00, %1339 ]
  %1391 = add i32 %44, 80
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = lshr i32 %1393, 8
  %1397 = and i32 %1396, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = call float @dx.op.dot3.f32(i32 55, float %1260, float %1261, float %1262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1400 = fmul fast float %1398, %1399
  %1401 = fadd fast float %1400, %1395
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  br i1 %752, label %1404, label %1412

; <label>:1404                                    ; preds = %1387
  %1405 = fsub fast float 1.000000e+00, %1040
  %1406 = fmul fast float %1405, %741
  %1407 = fmul fast float %1405, %742
  %1408 = fmul fast float %1405, %743
  %1409 = fmul fast float %1405, %744
  %1410 = fmul fast float %1405, %745
  %1411 = fmul fast float %1405, %746
  br label %1412

; <label>:1412                                    ; preds = %1404, %1387
  %1413 = phi float [ %1406, %1404 ], [ %741, %1387 ]
  %1414 = phi float [ %1407, %1404 ], [ %742, %1387 ]
  %1415 = phi float [ %1408, %1404 ], [ %743, %1387 ]
  %1416 = phi float [ %1409, %1404 ], [ %744, %1387 ]
  %1417 = phi float [ %1410, %1404 ], [ %745, %1387 ]
  %1418 = phi float [ %1411, %1404 ], [ %746, %1387 ]
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 3
  %1422 = icmp eq i32 %1421, 3
  br i1 %1422, label %1501, label %1423

; <label>:1423                                    ; preds = %1412
  %1424 = and i32 %1420, 16
  %1425 = icmp ne i32 %1424, 0
  %1426 = select i1 %1425, float %1040, float 0.000000e+00
  %1427 = icmp eq i32 %1421, 0
  br i1 %1427, label %1428, label %1456

; <label>:1428                                    ; preds = %1423
  %1429 = and i32 %1420, 64
  %1430 = icmp ne i32 %1429, 0
  %1431 = select i1 %1430, float %1040, float 0.000000e+00
  %1432 = fsub fast float %1260, %1413
  %1433 = fsub fast float %1261, %1414
  %1434 = fsub fast float %1262, %1415
  %1435 = fmul fast float %1426, %1432
  %1436 = fmul fast float %1426, %1433
  %1437 = fmul fast float %1426, %1434
  %1438 = fadd fast float %1435, %1413
  %1439 = fadd fast float %1436, %1414
  %1440 = fadd fast float %1437, %1415
  %1441 = fsub fast float %1246, %747
  %1442 = fmul fast float %1426, %1441
  %1443 = fadd fast float %1442, %747
  %1444 = fsub fast float %1388, %1416
  %1445 = fsub fast float %1389, %1417
  %1446 = fsub fast float %1390, %1418
  %1447 = fmul fast float %1431, %1444
  %1448 = fmul fast float %1431, %1445
  %1449 = fmul fast float %1431, %1446
  %1450 = fadd fast float %1447, %1416
  %1451 = fadd fast float %1448, %1417
  %1452 = fadd fast float %1449, %1418
  %1453 = fsub fast float %1403, %751
  %1454 = fmul fast float %1426, %1453
  %1455 = fadd fast float %1454, %751
  br label %1501

; <label>:1456                                    ; preds = %1423
  %1457 = icmp eq i32 %1421, 1
  br i1 %1457, label %1458, label %1471

; <label>:1458                                    ; preds = %1456
  %1459 = fadd fast float %1260, -1.000000e+00
  %1460 = fadd fast float %1261, -1.000000e+00
  %1461 = fadd fast float %1262, -1.000000e+00
  %1462 = fmul fast float %1426, %1459
  %1463 = fmul fast float %1426, %1460
  %1464 = fmul fast float %1426, %1461
  %1465 = fadd fast float %1462, 1.000000e+00
  %1466 = fadd fast float %1463, 1.000000e+00
  %1467 = fadd fast float %1464, 1.000000e+00
  %1468 = fmul fast float %1465, %1413
  %1469 = fmul fast float %1466, %1414
  %1470 = fmul fast float %1467, %1415
  br label %1501

; <label>:1471                                    ; preds = %1456
  %1472 = icmp eq i32 %1421, 2
  br i1 %1472, label %1473, label %1501

; <label>:1473                                    ; preds = %1471
  %1474 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1475 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1476 = call float @dx.op.unary.f32(i32 24, float %1262)  ; Sqrt(value)
  %1477 = fadd fast float %1474, -5.000000e-01
  %1478 = fadd fast float %1475, -5.000000e-01
  %1479 = fadd fast float %1476, -5.000000e-01
  %1480 = fmul fast float %1477, %1426
  %1481 = fmul fast float %1478, %1426
  %1482 = fmul fast float %1479, %1426
  %1483 = fadd fast float %1480, 5.000000e-01
  %1484 = fadd fast float %1481, 5.000000e-01
  %1485 = fadd fast float %1482, 5.000000e-01
  %1486 = fmul fast float %1483, 2.000000e+00
  %1487 = fsub fast float 1.000000e+00, %1486
  %1488 = fmul fast float %1487, %1413
  %1489 = fadd fast float %1488, %1486
  %1490 = fmul fast float %1489, %1413
  %1491 = fmul fast float %1484, 2.000000e+00
  %1492 = fsub fast float 1.000000e+00, %1491
  %1493 = fmul fast float %1492, %1414
  %1494 = fadd fast float %1493, %1491
  %1495 = fmul fast float %1494, %1414
  %1496 = fmul fast float %1485, 2.000000e+00
  %1497 = fsub fast float 1.000000e+00, %1496
  %1498 = fmul fast float %1497, %1415
  %1499 = fadd fast float %1498, %1496
  %1500 = fmul fast float %1499, %1415
  br label %1501

; <label>:1501                                    ; preds = %1473, %1471, %1458, %1428, %1412
  %1502 = phi float [ %1413, %1412 ], [ %1490, %1473 ], [ %1413, %1471 ], [ %1468, %1458 ], [ %1438, %1428 ]
  %1503 = phi float [ %1414, %1412 ], [ %1495, %1473 ], [ %1414, %1471 ], [ %1469, %1458 ], [ %1439, %1428 ]
  %1504 = phi float [ %1415, %1412 ], [ %1500, %1473 ], [ %1415, %1471 ], [ %1470, %1458 ], [ %1440, %1428 ]
  %1505 = phi float [ %1416, %1412 ], [ %1416, %1473 ], [ %1416, %1471 ], [ %1416, %1458 ], [ %1450, %1428 ]
  %1506 = phi float [ %1417, %1412 ], [ %1417, %1473 ], [ %1417, %1471 ], [ %1417, %1458 ], [ %1451, %1428 ]
  %1507 = phi float [ %1418, %1412 ], [ %1418, %1473 ], [ %1418, %1471 ], [ %1418, %1458 ], [ %1452, %1428 ]
  %1508 = phi float [ %747, %1412 ], [ %747, %1473 ], [ %747, %1471 ], [ %747, %1458 ], [ %1443, %1428 ]
  %1509 = phi float [ %751, %1412 ], [ %751, %1473 ], [ %751, %1471 ], [ %751, %1458 ], [ %1455, %1428 ]
  %1510 = and i32 %1420, 12
  %1511 = icmp eq i32 %1510, 12
  br i1 %1511, label %1584, label %1512

; <label>:1512                                    ; preds = %1501
  %1513 = and i32 %1420, 2097184
  %1514 = icmp eq i32 %1513, 2097184
  %1515 = select i1 %1514, float %1040, float 0.000000e+00
  %1516 = and i32 %1420, 4194336
  %1517 = icmp eq i32 %1516, 4194336
  %1518 = select i1 %1517, float %1040, float 0.000000e+00
  %1519 = and i32 %1420, 8388640
  %1520 = icmp eq i32 %1519, 8388640
  %1521 = select i1 %1520, float %1040, float 0.000000e+00
  %1522 = icmp eq i32 %1510, 0
  br i1 %1522, label %1523, label %1536

; <label>:1523                                    ; preds = %1512
  %1524 = fsub fast float %1341, %739
  %1525 = fsub fast float %1342, %740
  %1526 = fmul fast float %1515, %1524
  %1527 = fmul fast float %1515, %1525
  %1528 = fadd fast float %1526, %739
  %1529 = fadd fast float %1527, %740
  %1530 = fsub fast float %1343, %750
  %1531 = fmul fast float %1518, %1530
  %1532 = fadd fast float %1531, %750
  %1533 = fsub fast float %1340, %749
  %1534 = fmul fast float %1521, %1533
  %1535 = fadd fast float %1534, %749
  br label %1584

; <label>:1536                                    ; preds = %1512
  %1537 = icmp eq i32 %1510, 4
  br i1 %1537, label %1538, label %1570

; <label>:1538                                    ; preds = %1536
  %1539 = fmul fast float %1515, %1341
  %1540 = fmul fast float %1515, %1342
  %1541 = fadd fast float %1539, %739
  %1542 = fadd fast float %1540, %740
  %1543 = call float @dx.op.binary.f32(i32 36, float %750, float %1343)  ; FMin(a,b)
  %1544 = fsub fast float %1543, %750
  %1545 = fmul fast float %1544, %1518
  %1546 = fadd fast float %1545, %750
  %1547 = fadd fast float %1340, %749
  %1548 = fmul fast float %1547, 0x3FF337FAE0000000
  %1549 = fmul fast float %749, %749
  %1550 = fmul fast float %1340, %1340
  %1551 = fadd fast float %1550, %1549
  %1552 = fmul fast float %1551, 0x3FE5152B00000000
  %1553 = fmul fast float %749, 0xBFCC1F85E0000000
  %1554 = fmul fast float %1553, %1340
  %1555 = fadd fast float %1554, 0xBFE1363700000000
  %1556 = fadd fast float %1555, %1548
  %1557 = fsub fast float %1556, %1552
  %1558 = fmul fast float %1547, 0x3FBA6F0D00000000
  %1559 = fmul fast float %1551, 0x3FD0432880000000
  %1560 = fmul fast float %749, 0xBFEF110800000000
  %1561 = fmul fast float %1560, %1340
  %1562 = fadd fast float %1561, 1.000000e+00
  %1563 = fsub fast float %1562, %1558
  %1564 = fadd fast float %1563, %1559
  %1565 = fdiv fast float %1557, %1564
  %1566 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1567 = fsub fast float %1566, %749
  %1568 = fmul fast float %1567, %1521
  %1569 = fadd fast float %1568, %749
  br label %1584

; <label>:1570                                    ; preds = %1536
  %1571 = icmp eq i32 %1510, 8
  br i1 %1571, label %1572, label %1584

; <label>:1572                                    ; preds = %1570
  %1573 = fmul fast float %1515, %1341
  %1574 = fmul fast float %1515, %1342
  %1575 = fadd fast float %1573, %739
  %1576 = fadd fast float %1574, %740
  %1577 = call float @dx.op.binary.f32(i32 36, float %750, float %1343)  ; FMin(a,b)
  %1578 = fsub fast float %1577, %750
  %1579 = fmul fast float %1578, %1518
  %1580 = fadd fast float %1579, %750
  %1581 = fsub fast float %1340, %749
  %1582 = fmul fast float %1521, %1581
  %1583 = fadd fast float %1582, %749
  br label %1584

; <label>:1584                                    ; preds = %1572, %1570, %1538, %1523, %1501, %1039, %738
  %1585 = phi float [ %739, %1501 ], [ %739, %1039 ], [ %739, %738 ], [ %1528, %1523 ], [ %1541, %1538 ], [ %739, %1570 ], [ %1575, %1572 ]
  %1586 = phi float [ %740, %1501 ], [ %740, %1039 ], [ %740, %738 ], [ %1529, %1523 ], [ %1542, %1538 ], [ %740, %1570 ], [ %1576, %1572 ]
  %1587 = phi float [ %1502, %1501 ], [ %741, %1039 ], [ %741, %738 ], [ %1502, %1523 ], [ %1502, %1538 ], [ %1502, %1570 ], [ %1502, %1572 ]
  %1588 = phi float [ %1503, %1501 ], [ %742, %1039 ], [ %742, %738 ], [ %1503, %1523 ], [ %1503, %1538 ], [ %1503, %1570 ], [ %1503, %1572 ]
  %1589 = phi float [ %1504, %1501 ], [ %743, %1039 ], [ %743, %738 ], [ %1504, %1523 ], [ %1504, %1538 ], [ %1504, %1570 ], [ %1504, %1572 ]
  %1590 = phi float [ %1505, %1501 ], [ %744, %1039 ], [ %744, %738 ], [ %1505, %1523 ], [ %1505, %1538 ], [ %1505, %1570 ], [ %1505, %1572 ]
  %1591 = phi float [ %1506, %1501 ], [ %745, %1039 ], [ %745, %738 ], [ %1506, %1523 ], [ %1506, %1538 ], [ %1506, %1570 ], [ %1506, %1572 ]
  %1592 = phi float [ %1507, %1501 ], [ %746, %1039 ], [ %746, %738 ], [ %1507, %1523 ], [ %1507, %1538 ], [ %1507, %1570 ], [ %1507, %1572 ]
  %1593 = phi float [ %1508, %1501 ], [ %747, %1039 ], [ %747, %738 ], [ %1508, %1523 ], [ %1508, %1538 ], [ %1508, %1570 ], [ %1508, %1572 ]
  %1594 = phi float [ %749, %1501 ], [ %749, %1039 ], [ %749, %738 ], [ %1535, %1523 ], [ %1569, %1538 ], [ %749, %1570 ], [ %1583, %1572 ]
  %1595 = phi float [ %750, %1501 ], [ %750, %1039 ], [ %750, %738 ], [ %1532, %1523 ], [ %1546, %1538 ], [ %750, %1570 ], [ %1580, %1572 ]
  %1596 = phi float [ %1509, %1501 ], [ %751, %1039 ], [ %751, %738 ], [ %1509, %1523 ], [ %1509, %1538 ], [ %1509, %1570 ], [ %1509, %1572 ]
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = call float @dx.op.dot2.f32(i32 54, float %1585, float %1586, float %1585, float %1586)  ; Dot2(ax,ay,bx,by)
  %1600 = fmul fast float %1599, 0x3FE3333340000000
  %1601 = fsub fast float 1.000000e+00, %1600
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1586, float %1601, float %1585, float %1586, float %1601)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = call float @dx.op.unary.f32(i32 25, float %1602)  ; Rsqrt(value)
  %1604 = fmul fast float %1603, %1585
  %1605 = fmul fast float %1603, %1586
  %1606 = fmul fast float %1601, %1603
  %1607 = fmul fast float %1606, %53
  %1608 = fmul fast float %1606, %54
  %1609 = fmul fast float %1606, %55
  %1610 = fmul fast float %1604, %49
  %1611 = fmul fast float %1604, %50
  %1612 = fmul fast float %1604, %51
  %1613 = fadd fast float %1607, %1610
  %1614 = fadd fast float %1608, %1611
  %1615 = fadd fast float %1609, %1612
  %1616 = fmul fast float %1605, %82
  %1617 = fmul fast float %1605, %83
  %1618 = fmul fast float %1605, %84
  %1619 = fadd fast float %1613, %1616
  %1620 = fadd fast float %1614, %1617
  %1621 = fadd fast float %1615, %1618
  %1622 = call float @dx.op.dot3.f32(i32 55, float %1619, float %1620, float %1621, float %1619, float %1620, float %1621)  ; Dot3(ax,ay,az,bx,by,bz)
  %1623 = call float @dx.op.unary.f32(i32 25, float %1622)  ; Rsqrt(value)
  %1624 = fmul fast float %1619, %1623
  %1625 = fmul fast float %1620, %1623
  %1626 = fmul fast float %1621, %1623
  %1627 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1628 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1629 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %1630 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1631 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1632 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %1633 = fadd fast float %1627, %118
  %1634 = fadd fast float %1628, %119
  %1635 = fadd fast float %1629, %120
  %1636 = fadd fast float %1630, %118
  %1637 = fadd fast float %1631, %119
  %1638 = fadd fast float %1632, %120
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 2
  %1645 = extractvalue %dx.types.CBufRet.f32 %1643, 3
  %1646 = fmul fast float %1640, %71
  %1647 = fmul fast float %1646, %1644
  %1648 = fmul fast float %1641, %72
  %1649 = fmul fast float %1648, %1645
  %1650 = fptoui float %1647 to i32
  %1651 = fptoui float %1649 to i32
  %1652 = fadd fast float %1640, -1.000000e+00
  %1653 = fadd fast float %1641, -1.000000e+00
  %1654 = fptoui float %1652 to i32
  %1655 = fptoui float %1653 to i32
  %1656 = call i32 @dx.op.binary.i32(i32 40, i32 %1650, i32 %1654)  ; UMin(a,b)
  %1657 = call i32 @dx.op.binary.i32(i32 40, i32 %1651, i32 %1655)  ; UMin(a,b)
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 3
  %1661 = fmul fast float %1659, %66
  %1662 = fsub fast float %1661, %1660
  %1663 = fadd fast float %1642, -1.000000e+00
  %1664 = call float @dx.op.binary.f32(i32 36, float %1662, float %1663)  ; FMin(a,b)
  %1665 = fptoui float %1664 to i32
  %1666 = fptoui float %1640 to i32
  %1667 = fptoui float %1641 to i32
  %1668 = mul i32 %1665, %1667
  %1669 = add i32 %1668, %1657
  %1670 = mul i32 %1669, %1666
  %1671 = add i32 %1670, %1656
  %1672 = shl i32 %1671, 2
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 1023
  %1676 = lshr i32 %1674, 10
  %1677 = icmp eq i32 %1675, 0
  br i1 %1677, label %2106, label %1678

; <label>:1678                                    ; preds = %1584
  %1679 = and i32 %1674, 1023
  br label %1680

; <label>:1680                                    ; preds = %1807, %1678
  %1681 = phi float [ %1808, %1807 ], [ 0.000000e+00, %1678 ]
  %1682 = phi float [ %1809, %1807 ], [ %748, %1678 ]
  %1683 = phi float [ %1810, %1807 ], [ %1598, %1678 ]
  %1684 = phi float [ %1811, %1807 ], [ %1596, %1678 ]
  %1685 = phi float [ %1812, %1807 ], [ 0.000000e+00, %1678 ]
  %1686 = phi float [ %1813, %1807 ], [ 0.000000e+00, %1678 ]
  %1687 = phi float [ %1814, %1807 ], [ %1590, %1678 ]
  %1688 = phi float [ %1815, %1807 ], [ %1591, %1678 ]
  %1689 = phi float [ %1816, %1807 ], [ %1592, %1678 ]
  %1690 = phi float [ %1817, %1807 ], [ %1624, %1678 ]
  %1691 = phi float [ %1818, %1807 ], [ %1625, %1678 ]
  %1692 = phi float [ %1819, %1807 ], [ %1626, %1678 ]
  %1693 = phi float [ %1820, %1807 ], [ %1595, %1678 ]
  %1694 = phi float [ %1821, %1807 ], [ %1594, %1678 ]
  %1695 = phi float [ %1822, %1807 ], [ 0.000000e+00, %1678 ]
  %1696 = phi float [ %1823, %1807 ], [ %1593, %1678 ]
  %1697 = phi float [ %1824, %1807 ], [ %1587, %1678 ]
  %1698 = phi float [ %1825, %1807 ], [ %1588, %1678 ]
  %1699 = phi float [ %1826, %1807 ], [ %1589, %1678 ]
  %1700 = phi i32 [ %1757, %1807 ], [ 0, %1678 ]
  %1701 = add nuw nsw i32 %1700, %1676
  %1702 = shl i32 %1701, 2
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = shl i32 %1704, 8
  %1706 = or i32 %1705, 48
  %1707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1707, 2
  %1711 = extractvalue %dx.types.ResRet.f32 %1707, 3
  %1712 = or i32 %1705, 64
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = extractvalue %dx.types.ResRet.i32 %1713, 1
  %1716 = or i32 %1705, 80
  %1717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 3
  %1720 = or i32 %1705, 96
  %1721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.ResRet.f32 %1721, 1
  %1724 = extractvalue %dx.types.ResRet.f32 %1721, 2
  %1725 = extractvalue %dx.types.ResRet.f32 %1721, 3
  %1726 = or i32 %1705, 112
  %1727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 2
  %1729 = or i32 %1705, 128
  %1730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.f32 %1730, 2
  %1734 = extractvalue %dx.types.ResRet.f32 %1730, 3
  %1735 = or i32 %1705, 144
  %1736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.ResRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.ResRet.f32 %1736, 2
  %1740 = extractvalue %dx.types.ResRet.f32 %1736, 3
  %1741 = or i32 %1705, 160
  %1742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.ResRet.f32 %1742, 2
  %1746 = extractvalue %dx.types.ResRet.f32 %1742, 3
  %1747 = or i32 %1705, 192
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = or i32 %1705, 208
  %1751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = or i32 %1705, 248
  %1754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.ResRet.f32 %1754, 1
  %1757 = add nuw nsw i32 %1700, 1
  %1758 = bitcast float %1711 to i32
  %1759 = and i32 %1758, 2560
  %1760 = icmp eq i32 %1759, 0
  %1761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = extractvalue %dx.types.ResRet.f32 %1761, 3
  %1766 = call float @dx.op.dot4.f32(i32 56, float %1762, float %1763, float %1764, float %1765, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1767 = or i32 %1705, 16
  %1768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.ResRet.f32 %1768, 2
  %1772 = extractvalue %dx.types.ResRet.f32 %1768, 3
  %1773 = call float @dx.op.dot4.f32(i32 56, float %1769, float %1770, float %1771, float %1772, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1774 = or i32 %1705, 32
  %1775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = extractvalue %dx.types.ResRet.f32 %1775, 3
  %1780 = call float @dx.op.dot4.f32(i32 56, float %1776, float %1777, float %1778, float %1779, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1781 = call float @dx.op.unary.f32(i32 27, float %1766)  ; Round_ni(value)
  %1782 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1783 = call float @dx.op.unary.f32(i32 27, float %1773)  ; Round_ni(value)
  %1784 = call float @dx.op.unary.f32(i32 6, float %1783)  ; FAbs(value)
  %1785 = call float @dx.op.unary.f32(i32 6, float %1780)  ; FAbs(value)
  %1786 = call float @dx.op.unary.f32(i32 27, float %1785)  ; Round_ni(value)
  %1787 = fadd fast float %1784, %1782
  %1788 = fadd fast float %1787, %1786
  %1789 = fcmp fast oeq float %1788, 0.000000e+00
  %1790 = call float @dx.op.dot4.f32(i32 56, float %1762, float %1763, float %1764, float %1765, float %1633, float %1634, float %1635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1791 = call float @dx.op.dot4.f32(i32 56, float %1769, float %1770, float %1771, float %1772, float %1633, float %1634, float %1635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1792 = call float @dx.op.dot4.f32(i32 56, float %1762, float %1763, float %1764, float %1765, float %1636, float %1637, float %1638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1793 = call float @dx.op.dot4.f32(i32 56, float %1769, float %1770, float %1771, float %1772, float %1636, float %1637, float %1638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1794 = fsub fast float %1790, %1766
  %1795 = fsub fast float %1792, %1766
  %1796 = fsub fast float %1791, %1773
  %1797 = fsub fast float %1793, %1773
  %1798 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1709, float %1710, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1801 = fadd fast float %1800, %1798
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1799, 0
  %1804 = fcmp fast ogt float %1802, %1803
  %1805 = and i1 %1789, %1804
  %1806 = and i1 %1760, %1805
  br i1 %1806, label %1828, label %1807

; <label>:1807                                    ; preds = %2092, %1909, %1828, %1680
  %1808 = phi float [ %1681, %1828 ], [ %1912, %1909 ], [ %1912, %2092 ], [ %1681, %1680 ]
  %1809 = phi float [ %1682, %1828 ], [ %1682, %1909 ], [ %2067, %2092 ], [ %1682, %1680 ]
  %1810 = phi float [ %1683, %1828 ], [ %1683, %1909 ], [ %2066, %2092 ], [ %1683, %1680 ]
  %1811 = phi float [ %1684, %1828 ], [ %1684, %1909 ], [ %2064, %2092 ], [ %1684, %1680 ]
  %1812 = phi float [ %1685, %1828 ], [ %1685, %1909 ], [ %2036, %2092 ], [ %1685, %1680 ]
  %1813 = phi float [ %1686, %1828 ], [ %1686, %1909 ], [ %2034, %2092 ], [ %1686, %1680 ]
  %1814 = phi float [ %1687, %1828 ], [ %1687, %1909 ], [ %2102, %2092 ], [ %1687, %1680 ]
  %1815 = phi float [ %1688, %1828 ], [ %1688, %1909 ], [ %2103, %2092 ], [ %1688, %1680 ]
  %1816 = phi float [ %1689, %1828 ], [ %1689, %1909 ], [ %2104, %2092 ], [ %1689, %1680 ]
  %1817 = phi float [ %1690, %1828 ], [ %1690, %1909 ], [ %2015, %2092 ], [ %1690, %1680 ]
  %1818 = phi float [ %1691, %1828 ], [ %1691, %1909 ], [ %2016, %2092 ], [ %1691, %1680 ]
  %1819 = phi float [ %1692, %1828 ], [ %1692, %1909 ], [ %2017, %2092 ], [ %1692, %1680 ]
  %1820 = phi float [ %1693, %1828 ], [ %1693, %1909 ], [ %2044, %2092 ], [ %1693, %1680 ]
  %1821 = phi float [ %1694, %1828 ], [ %1694, %1909 ], [ %2041, %2092 ], [ %1694, %1680 ]
  %1822 = phi float [ %1695, %1828 ], [ %1695, %1909 ], [ %2038, %2092 ], [ %1695, %1680 ]
  %1823 = phi float [ %1696, %1828 ], [ %1696, %1909 ], [ %2032, %2092 ], [ %1696, %1680 ]
  %1824 = phi float [ %1697, %1828 ], [ %1697, %1909 ], [ %2027, %2092 ], [ %1697, %1680 ]
  %1825 = phi float [ %1698, %1828 ], [ %1698, %1909 ], [ %2028, %2092 ], [ %1698, %1680 ]
  %1826 = phi float [ %1699, %1828 ], [ %1699, %1909 ], [ %2029, %2092 ], [ %1699, %1680 ]
  %1827 = icmp eq i32 %1757, %1679
  br i1 %1827, label %2105, label %1680

; <label>:1828                                    ; preds = %1680
  %1829 = extractvalue %dx.types.ResRet.f32 %1727, 3
  %1830 = extractvalue %dx.types.ResRet.f32 %1727, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1832 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1833 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1834 = extractvalue %dx.types.ResRet.i32 %1713, 3
  %1835 = extractvalue %dx.types.ResRet.i32 %1713, 2
  %1836 = add i32 %1834, 0
  %1837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1836, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1837, %dx.types.Handle %1838, float %1766, float %1773, float undef, float undef, i32 0, i32 0, i32 undef, float %1794, float %1796, float undef, float %1795, float %1797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = fmul fast float %1840, %1833
  %1842 = fadd fast float %1841, %1832
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = fmul fast float %1766, %1722
  %1845 = call float @dx.op.tertiary.f32(i32 46, float %1723, float %1773, float %1844)  ; FMad(a,b,c)
  %1846 = fadd fast float %1845, %1831
  %1847 = fmul fast float %1766, %1724
  %1848 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1773, float %1847)  ; FMad(a,b,c)
  %1849 = fadd fast float %1848, %1830
  %1850 = fmul fast float %1794, %1722
  %1851 = call float @dx.op.tertiary.f32(i32 46, float %1723, float %1796, float %1850)  ; FMad(a,b,c)
  %1852 = fmul fast float %1794, %1724
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1796, float %1852)  ; FMad(a,b,c)
  %1854 = fmul fast float %1795, %1722
  %1855 = call float @dx.op.tertiary.f32(i32 46, float %1723, float %1797, float %1854)  ; FMad(a,b,c)
  %1856 = fmul fast float %1795, %1724
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1797, float %1856)  ; FMad(a,b,c)
  %1858 = add i32 %1835, 0
  %1859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1858, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1860 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1859, %dx.types.Handle %1838, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1861 = extractvalue %dx.types.ResRet.f32 %1860, 0
  %1862 = and i32 %1758, 1024
  %1863 = icmp ne i32 %1862, 0
  %1864 = fcmp fast ogt float %1861, 0x3FE0101020000000
  %1865 = uitofp i1 %1864 to float
  %1866 = select i1 %1863, float %1865, float %1861
  %1867 = and i32 %1758, 8192
  %1868 = icmp ne i32 %1867, 0
  %1869 = select i1 %1868, float %1829, float 1.000000e+00
  %1870 = fmul fast float %1766, 2.000000e+00
  %1871 = fadd fast float %1870, -1.000000e+00
  %1872 = call float @dx.op.unary.f32(i32 6, float %1871)  ; FAbs(value)
  %1873 = fmul fast float %1872, %1755
  %1874 = fsub fast float %1873, %1755
  %1875 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1876 = fmul fast float %1773, 2.000000e+00
  %1877 = fadd fast float %1876, -1.000000e+00
  %1878 = call float @dx.op.unary.f32(i32 6, float %1877)  ; FAbs(value)
  %1879 = fmul fast float %1878, %1756
  %1880 = fsub fast float %1879, %1756
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = fmul fast float %1785, %1718
  %1883 = fsub fast float %1882, %1718
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = fmul fast float %1843, %1869
  %1886 = fmul fast float %1885, %1840
  %1887 = fmul fast float %1886, %1875
  %1888 = fmul fast float %1887, %1866
  %1889 = fmul fast float %1888, %1881
  %1890 = fmul fast float %1889, %1884
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1894 = fsub fast float %1802, %1893
  %1895 = fmul fast float %1894, %1892
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = fmul fast float %1890, %1719
  %1898 = fadd fast float %1890, %1719
  %1899 = fmul fast float %1898, %1728
  %1900 = fsub fast float %1899, %1728
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1902 = and i32 %1758, 128
  %1903 = icmp ne i32 %1902, 0
  %1904 = select i1 %1903, float %1901, float %1897
  %1905 = fmul fast float %1904, %1896
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = fcmp fast ugt float %1905, %1907
  br i1 %1908, label %1909, label %1807

; <label>:1909                                    ; preds = %1828
  %1910 = select i1 %1868, float %1905, float 0.000000e+00
  %1911 = fadd fast float %1910, %1681
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  br i1 %1868, label %1807, label %1913

; <label>:1913                                    ; preds = %1909
  %1914 = and i32 %1758, 4
  %1915 = and i32 %1758, 8
  %1916 = add i32 %1714, 0
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1916, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1919 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1917, %dx.types.Handle %1918, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.ResRet.f32 %1919, 1
  %1922 = extractvalue %dx.types.ResRet.f32 %1919, 2
  %1923 = extractvalue %dx.types.ResRet.f32 %1919, 3
  %1924 = bitcast float %1740 to i32
  %1925 = and i32 %1924, 255
  %1926 = uitofp i32 %1925 to float
  %1927 = lshr i32 %1924, 8
  %1928 = and i32 %1927, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1923, %1926
  %1931 = fadd fast float %1930, %1929
  %1932 = fmul fast float %1931, 0x3F70101000000000
  %1933 = add i32 %1715, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1934, %dx.types.Handle %1918, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.ResRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.ResRet.f32 %1935, 2
  %1939 = extractvalue %dx.types.ResRet.f32 %1935, 3
  %1940 = bitcast float %1734 to i32
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = lshr i32 %1940, 8
  %1944 = and i32 %1943, 255
  %1945 = uitofp i32 %1944 to float
  %1946 = lshr i32 %1940, 16
  %1947 = and i32 %1946, 255
  %1948 = uitofp i32 %1947 to float
  %1949 = fmul fast float %1948, 0x3F70101000000000
  %1950 = fmul fast float %1936, %1942
  %1951 = fadd fast float %1950, %1945
  %1952 = fmul fast float %1951, 0x3F70101000000000
  %1953 = fadd fast float %1937, -5.000000e-01
  %1954 = fadd fast float %1939, -5.000000e-01
  %1955 = fmul fast float %1953, %1949
  %1956 = fmul fast float %1954, %1949
  %1957 = fadd fast float %1955, 5.000000e-01
  %1958 = fadd fast float %1956, 5.000000e-01
  %1959 = fmul fast float %1920, %1743
  %1960 = fmul fast float %1921, %1744
  %1961 = fmul fast float %1922, %1745
  %1962 = fmul fast float %1957, 2.000000e+00
  %1963 = fadd fast float %1962, -1.000000e+00
  %1964 = fmul fast float %1958, 2.000000e+00
  %1965 = fadd fast float %1964, -1.000000e+00
  %1966 = fadd fast float %1963, %1965
  %1967 = fmul fast float %1966, 5.000000e-01
  %1968 = fsub fast float %1963, %1965
  %1969 = fmul fast float %1968, 5.000000e-01
  %1970 = call float @dx.op.unary.f32(i32 6, float %1967)  ; FAbs(value)
  %1971 = fsub fast float 1.000000e+00, %1970
  %1972 = call float @dx.op.unary.f32(i32 6, float %1969)  ; FAbs(value)
  %1973 = fsub fast float %1971, %1972
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1967, float %1969, float %1973, float %1967, float %1969, float %1973)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = call float @dx.op.unary.f32(i32 25, float %1974)  ; Rsqrt(value)
  %1976 = fmul fast float %1967, %1975
  %1977 = fmul fast float %1969, %1975
  %1978 = fmul fast float %1975, %1973
  %1979 = fmul fast float %1978, %1708
  %1980 = fmul fast float %1978, %1709
  %1981 = fmul fast float %1978, %1710
  %1982 = fmul fast float %1976, %1731
  %1983 = fmul fast float %1976, %1732
  %1984 = fmul fast float %1976, %1733
  %1985 = fadd fast float %1982, %1979
  %1986 = fadd fast float %1983, %1980
  %1987 = fadd fast float %1984, %1981
  %1988 = fmul fast float %1977, %1737
  %1989 = fmul fast float %1977, %1738
  %1990 = fmul fast float %1977, %1739
  %1991 = fadd fast float %1985, %1988
  %1992 = fadd fast float %1986, %1989
  %1993 = fadd fast float %1987, %1990
  %1994 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1992, float %1993, float %1991, float %1992, float %1993)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = call float @dx.op.unary.f32(i32 25, float %1994)  ; Rsqrt(value)
  %1996 = fmul fast float %1991, %1995
  %1997 = fmul fast float %1992, %1995
  %1998 = fmul fast float %1993, %1995
  %1999 = icmp ne i32 %1915, 0
  %2000 = select i1 %1999, float 1.000000e+00, float 0.000000e+00
  %2001 = fmul fast float %1905, %2000
  %2002 = and i32 %1758, 1
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2004, label %2008

; <label>:2004                                    ; preds = %1913
  %2005 = fsub fast float %1996, %1690
  %2006 = fsub fast float %1997, %1691
  %2007 = fsub fast float %1998, %1692
  br label %2008

; <label>:2008                                    ; preds = %2004, %1913
  %2009 = phi float [ %2005, %2004 ], [ %1996, %1913 ]
  %2010 = phi float [ %2006, %2004 ], [ %1997, %1913 ]
  %2011 = phi float [ %2007, %2004 ], [ %1998, %1913 ]
  %2012 = fmul float %2011, %2001
  %2013 = fmul float %2010, %2001
  %2014 = fmul float %2009, %2001
  %2015 = fadd fast float %2014, %1690
  %2016 = fadd fast float %2013, %1691
  %2017 = fadd fast float %2012, %1692
  %2018 = icmp ne i32 %1914, 0
  %2019 = select i1 %2018, float 1.000000e+00, float 0.000000e+00
  %2020 = fmul fast float %1905, %2019
  %2021 = fsub fast float %1959, %1697
  %2022 = fsub fast float %1960, %1698
  %2023 = fsub fast float %1961, %1699
  %2024 = fmul fast float %2021, %2020
  %2025 = fmul fast float %2022, %2020
  %2026 = fmul fast float %2023, %2020
  %2027 = fadd fast float %2024, %1697
  %2028 = fadd fast float %2025, %1698
  %2029 = fadd fast float %2026, %1699
  %2030 = fsub fast float %1932, %1696
  %2031 = fmul fast float %2030, %2020
  %2032 = fadd fast float %2031, %1696
  %2033 = fmul fast float %2020, %1686
  %2034 = fsub fast float %1686, %2033
  %2035 = fmul fast float %2020, %1685
  %2036 = fsub fast float %1685, %2035
  %2037 = fadd fast float %1905, %1695
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fsub fast float %1952, %1694
  %2040 = fmul fast float %2039, %2001
  %2041 = fadd fast float %2040, %1694
  %2042 = fsub fast float %1938, %1693
  %2043 = fmul fast float %2042, %2001
  %2044 = fadd fast float %2043, %1693
  %2045 = call float @dx.op.dot3.f32(i32 55, float %1959, float %1960, float %1961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2049 = fmul fast float %2048, %2045
  %2050 = fadd fast float %2049, %2047
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = bitcast float %1746 to i32
  %2053 = and i32 %2052, 65535
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = lshr i32 %2052, 16
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = fcmp fast oge float %2054, 0.000000e+00
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = select i1 %2057, float %2054, float %2059
  %2061 = fadd fast float %2060, %2056
  %2062 = fsub fast float %2051, %1684
  %2063 = fmul fast float %2062, %1905
  %2064 = fadd fast float %2063, %1684
  %2065 = fmul fast float %2061, %1905
  %2066 = call float @dx.op.binary.f32(i32 35, float %1683, float %2065)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float %1682, float %1905)  ; FMax(a,b)
  %2068 = and i32 %1758, 16
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2092, label %2070

; <label>:2070                                    ; preds = %2008
  %2071 = bitcast float %1752 to i32
  %2072 = add i32 %1749, 0
  %2073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2072, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2074 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2073, %dx.types.Handle %1918, float %1846, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1851, float %1853, float undef, float %1855, float %1857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.f32 %2074, 2
  %2078 = and i32 %2071, 65535
  %2079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2078)  ; LegacyF16ToF32(value)
  %2080 = fmul fast float %2075, %1743
  %2081 = fmul fast float %2076, %1744
  %2082 = fmul fast float %2077, %1745
  %2083 = and i32 %1758, 16384
  %2084 = icmp ne i32 %2083, 0
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 0
  %2087 = select i1 %2084, float %2086, float 1.000000e+00
  %2088 = fmul fast float %2087, %2079
  %2089 = fmul fast float %2080, %2088
  %2090 = fmul fast float %2081, %2088
  %2091 = fmul fast float %2082, %2088
  br label %2092

; <label>:2092                                    ; preds = %2070, %2008
  %2093 = phi float [ %2089, %2070 ], [ 0.000000e+00, %2008 ]
  %2094 = phi float [ %2090, %2070 ], [ 0.000000e+00, %2008 ]
  %2095 = phi float [ %2091, %2070 ], [ 0.000000e+00, %2008 ]
  %2096 = fsub fast float %2093, %1687
  %2097 = fsub fast float %2094, %1688
  %2098 = fsub fast float %2095, %1689
  %2099 = fmul fast float %2096, %1905
  %2100 = fmul fast float %2097, %1905
  %2101 = fmul fast float %2098, %1905
  %2102 = fadd fast float %2099, %1687
  %2103 = fadd fast float %2100, %1688
  %2104 = fadd fast float %2101, %1689
  br label %1807

; <label>:2105                                    ; preds = %1807
  br label %2106

; <label>:2106                                    ; preds = %2105, %1584
  %2107 = phi float [ 0.000000e+00, %1584 ], [ %1808, %2105 ]
  %2108 = phi float [ %748, %1584 ], [ %1809, %2105 ]
  %2109 = phi float [ %1598, %1584 ], [ %1810, %2105 ]
  %2110 = phi float [ %1596, %1584 ], [ %1811, %2105 ]
  %2111 = phi float [ 0.000000e+00, %1584 ], [ %1812, %2105 ]
  %2112 = phi float [ 0.000000e+00, %1584 ], [ %1813, %2105 ]
  %2113 = phi float [ %1590, %1584 ], [ %1814, %2105 ]
  %2114 = phi float [ %1591, %1584 ], [ %1815, %2105 ]
  %2115 = phi float [ %1592, %1584 ], [ %1816, %2105 ]
  %2116 = phi float [ %1624, %1584 ], [ %1817, %2105 ]
  %2117 = phi float [ %1625, %1584 ], [ %1818, %2105 ]
  %2118 = phi float [ %1626, %1584 ], [ %1819, %2105 ]
  %2119 = phi float [ %1595, %1584 ], [ %1820, %2105 ]
  %2120 = phi float [ %1594, %1584 ], [ %1821, %2105 ]
  %2121 = phi float [ 0.000000e+00, %1584 ], [ %1822, %2105 ]
  %2122 = phi float [ %1593, %1584 ], [ %1823, %2105 ]
  %2123 = phi float [ %1587, %1584 ], [ %1824, %2105 ]
  %2124 = phi float [ %1588, %1584 ], [ %1825, %2105 ]
  %2125 = phi float [ %1589, %1584 ], [ %1826, %2105 ]
  %2126 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2117, float %2118, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2127 = call float @dx.op.unary.f32(i32 25, float %2126)  ; Rsqrt(value)
  %2128 = fmul fast float %2127, %2116
  %2129 = fmul fast float %2127, %2117
  %2130 = fmul fast float %2127, %2118
  %2131 = fadd fast float %2121, %748
  %2132 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2133 = call float @dx.op.dot3.f32(i32 55, float %2128, float %2129, float %2130, float %2128, float %2129, float %2130)  ; Dot3(ax,ay,az,bx,by,bz)
  %2134 = call float @dx.op.unary.f32(i32 25, float %2133)  ; Rsqrt(value)
  %2135 = fmul fast float %2134, %2128
  %2136 = fmul fast float %2134, %2129
  %2137 = fmul fast float %2134, %2130
  %2138 = fadd fast float %2122, 0xBFB99999A0000000
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fmul fast float %2139, 0x3FF1C71C80000000
  %2141 = call float @dx.op.binary.f32(i32 36, float %2122, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2142 = fsub fast float 1.000000e+00, %2140
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fmul fast float %2143, %2123
  %2145 = fmul fast float %2143, %2124
  %2146 = fmul fast float %2143, %2125
  %2147 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2148 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2149 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2150 = fmul fast float %2140, %2123
  %2151 = fmul fast float %2140, %2124
  %2152 = fmul fast float %2140, %2125
  %2153 = fadd fast float %2150, %2141
  %2154 = fadd fast float %2151, %2141
  %2155 = fadd fast float %2152, %2141
  %2156 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2157 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2158 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2159 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.i32 %2160, 3
  %2162 = and i32 %2161, 8
  %2163 = icmp ne i32 %2162, 0
  %2164 = call float @dx.op.binary.f32(i32 35, float %2147, float %2123)  ; FMax(a,b)
  %2165 = call float @dx.op.binary.f32(i32 35, float %2148, float %2123)  ; FMax(a,b)
  %2166 = call float @dx.op.binary.f32(i32 35, float %2149, float %2123)  ; FMax(a,b)
  %2167 = call float @dx.op.dot3.f32(i32 55, float %2147, float %2148, float %2149, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2168 = select i1 %189, float %2123, float %2147
  %2169 = select i1 %189, float %2167, float %2148
  %2170 = select i1 %189, float 1.000000e+00, float %2149
  %2171 = select i1 %2163, float %2164, float %2168
  %2172 = select i1 %2163, float %2165, float %2169
  %2173 = select i1 %2163, float %2166, float %2170
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.CBufRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.CBufRet.f32 %2174, 2
  %2178 = fadd fast float %2175, %118
  %2179 = fadd fast float %2176, %119
  %2180 = fadd fast float %2177, %120
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2184 = fsub fast float %2178, %2182
  %2185 = fsub fast float %2179, %2183
  %2186 = fmul fast float %2184, %2184
  %2187 = fmul fast float %2185, %2185
  %2188 = fadd fast float %2186, %2187
  %2189 = call float @dx.op.unary.f32(i32 24, float %2188)  ; Sqrt(value)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2181, 2
  %2191 = fcmp fast olt float %2189, %2190
  br i1 %2191, label %2192, label %2259

; <label>:2192                                    ; preds = %2106
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2200 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2201 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2202 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2203 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2204 = extractvalue %dx.types.CBufRet.f32 %2197, 3
  %2205 = fadd fast float %2202, %2178
  %2206 = fadd fast float %2203, %2179
  %2207 = fadd fast float %2204, %2180
  %2208 = fmul fast float %2205, %2194
  %2209 = call float @dx.op.tertiary.f32(i32 46, float %2206, float %2196, float %2208)  ; FMad(a,b,c)
  %2210 = call float @dx.op.tertiary.f32(i32 46, float %2207, float %2198, float %2209)  ; FMad(a,b,c)
  %2211 = fmul fast float %2205, %2199
  %2212 = call float @dx.op.tertiary.f32(i32 46, float %2206, float %2200, float %2211)  ; FMad(a,b,c)
  %2213 = call float @dx.op.tertiary.f32(i32 46, float %2207, float %2201, float %2212)  ; FMad(a,b,c)
  %2214 = fsub fast float %2210, %2202
  %2215 = fsub fast float %2213, %2203
  %2216 = fsub fast float %2214, %2182
  %2217 = fadd fast float %2216, %2190
  %2218 = fsub fast float %2215, %2183
  %2219 = fadd fast float %2218, %2190
  %2220 = extractvalue %dx.types.CBufRet.f32 %2181, 3
  %2221 = fmul fast float %2217, %2220
  %2222 = fmul fast float %2219, %2220
  %2223 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2224 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2225 = fsub fast float 1.000000e+00, %2223
  %2226 = fsub fast float 1.000000e+00, %2224
  %2227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = fcmp fast ugt float %2228, 0.000000e+00
  br i1 %2229, label %2230, label %2533

; <label>:2230                                    ; preds = %2192
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 2
  %2233 = fmul fast float %2232, %2228
  %2234 = extractvalue %dx.types.CBufRet.f32 %2231, 3
  %2235 = fadd fast float %2234, %2233
  %2236 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  %2237 = fadd fast float %2235, %2204
  %2238 = fmul fast float %2210, %2198
  %2239 = call float @dx.op.tertiary.f32(i32 46, float %2213, float %2201, float %2238)  ; FMad(a,b,c)
  %2240 = call float @dx.op.tertiary.f32(i32 46, float %2237, float %2236, float %2239)  ; FMad(a,b,c)
  %2241 = fsub fast float %2240, %2204
  %2242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.f32 %2242, 2
  %2244 = fsub fast float %2241, %2243
  %2245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  %2247 = extractvalue %dx.types.ResRet.f32 %2245, 1
  %2248 = extractvalue %dx.types.ResRet.f32 %2245, 2
  %2249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2250 = extractvalue %dx.types.ResRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.ResRet.f32 %2249, 1
  %2252 = extractvalue %dx.types.ResRet.f32 %2249, 2
  %2253 = fadd fast float %2250, %2246
  %2254 = fmul fast float %2253, 0x3F847AE140000000
  %2255 = fadd fast float %2251, %2247
  %2256 = fmul fast float %2255, 0x3F847AE140000000
  %2257 = fadd fast float %2252, %2248
  %2258 = fmul fast float %2257, 0x3F847AE140000000
  br label %2533

; <label>:2259                                    ; preds = %2106
  %2260 = and i32 %165, 1
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2533, label %2262

; <label>:2262                                    ; preds = %2259
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2270 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2271 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2273 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  %2274 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2275 = fadd fast float %2272, %2178
  %2276 = fadd fast float %2273, %2179
  %2277 = fadd fast float %2274, %2180
  %2278 = fmul fast float %2275, %2264
  %2279 = call float @dx.op.tertiary.f32(i32 46, float %2276, float %2266, float %2278)  ; FMad(a,b,c)
  %2280 = call float @dx.op.tertiary.f32(i32 46, float %2277, float %2268, float %2279)  ; FMad(a,b,c)
  %2281 = fmul fast float %2275, %2269
  %2282 = call float @dx.op.tertiary.f32(i32 46, float %2276, float %2270, float %2281)  ; FMad(a,b,c)
  %2283 = call float @dx.op.tertiary.f32(i32 46, float %2277, float %2271, float %2282)  ; FMad(a,b,c)
  %2284 = fsub fast float %2280, %2272
  %2285 = fsub fast float %2283, %2273
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.CBufRet.f32 %2286, 1
  %2289 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2290 = extractvalue %dx.types.CBufRet.f32 %2286, 3
  %2291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.f32 %2291, 3
  %2293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.i32 %2293, 0
  %2295 = extractvalue %dx.types.CBufRet.i32 %2293, 1
  %2296 = udiv i32 %2295, %2294
  %2297 = fsub fast float %2284, %2287
  %2298 = fsub fast float %2285, %2288
  %2299 = call float @dx.op.binary.f32(i32 35, float %2297, float 0.000000e+00)  ; FMax(a,b)
  %2300 = call float @dx.op.binary.f32(i32 35, float %2298, float 0.000000e+00)  ; FMax(a,b)
  %2301 = call float @dx.op.binary.f32(i32 36, float %2299, float %2289)  ; FMin(a,b)
  %2302 = call float @dx.op.binary.f32(i32 36, float %2300, float %2290)  ; FMin(a,b)
  %2303 = add i32 %2294, -1
  %2304 = add i32 %2296, -1
  %2305 = fmul fast float %2301, %2292
  %2306 = fmul fast float %2302, %2292
  %2307 = fptoui float %2305 to i32
  %2308 = fptoui float %2306 to i32
  %2309 = call i32 @dx.op.binary.i32(i32 40, i32 %2307, i32 %2303)  ; UMin(a,b)
  %2310 = call i32 @dx.op.binary.i32(i32 40, i32 %2308, i32 %2304)  ; UMin(a,b)
  %2311 = mul i32 %2310, %2294
  %2312 = add i32 %2311, %2309
  %2313 = shl i32 %2312, 2
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = icmp eq i32 %2315, -1
  br i1 %2316, label %2533, label %2317

; <label>:2317                                    ; preds = %2262
  %2318 = mul i32 %2315, 148
  %2319 = add i32 %2318, 4
  %2320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.f32 %2320, 0
  %2322 = add i32 %2318, 8
  %2323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  %2325 = add i32 %2318, 36
  %2326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = add i32 %2318, 60
  %2329 = add i32 %2318, 92
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = add i32 %2318, 116
  %2333 = fsub fast float %2284, %2321
  %2334 = fsub fast float %2285, %2324
  %2335 = fmul fast float %2292, %2333
  %2336 = fmul fast float %2292, %2334
  %2337 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2338 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2339 = fsub fast float 1.000000e+00, %2338
  %2340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.f32 %2340, 2
  %2342 = call float @dx.op.unary.f32(i32 83, float %2337)  ; DerivCoarseX(value)
  %2343 = call float @dx.op.unary.f32(i32 83, float %2339)  ; DerivCoarseX(value)
  %2344 = call float @dx.op.unary.f32(i32 84, float %2337)  ; DerivCoarseY(value)
  %2345 = call float @dx.op.unary.f32(i32 84, float %2339)  ; DerivCoarseY(value)
  %2346 = fmul fast float %2342, %2341
  %2347 = fmul fast float %2343, %2341
  %2348 = fmul fast float %2344, %2341
  %2349 = fmul fast float %2345, %2341
  %2350 = call float @dx.op.dot2.f32(i32 54, float %2348, float %2349, float %2348, float %2349)  ; Dot2(ax,ay,bx,by)
  %2351 = call float @dx.op.dot2.f32(i32 54, float %2346, float %2347, float %2346, float %2347)  ; Dot2(ax,ay,bx,by)
  %2352 = call float @dx.op.binary.f32(i32 35, float %2351, float %2350)  ; FMax(a,b)
  %2353 = call float @dx.op.unary.f32(i32 23, float %2352)  ; Log(value)
  %2354 = fmul fast float %2353, 5.000000e-01
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2357 = fadd fast float %2356, %2354
  %2358 = call float @dx.op.binary.f32(i32 35, float %2357, float 0.000000e+00)  ; FMax(a,b)
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 3
  %2361 = fadd fast float %2360, %2358
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 3
  %2364 = fadd fast float %2361, %2363
  %2365 = add i32 %2331, 0
  %2366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2365, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2367 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2366, i32 0)  ; GetDimensions(handle,mipLevel)
  %2368 = extractvalue %dx.types.Dimensions %2367, 0
  %2369 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2368)  ; FirstbitLo(value)
  %2370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.i32 %2370, 1
  %2372 = sub nsw i32 %2371, %2369
  %2373 = sitofp i32 %2372 to float
  %2374 = fsub fast float %2364, %2373
  %2375 = call float @dx.op.binary.f32(i32 35, float %2374, float 0.000000e+00)  ; FMax(a,b)
  %2376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2366, %dx.types.Handle %37, float %2337, float %2339, float %2327, float undef, i32 0, i32 0, i32 undef, float %2375)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2377 = extractvalue %dx.types.ResRet.f32 %2376, 0
  %2378 = fcmp ule float %2377, 0x3FE0101020000000
  %2379 = extractvalue %dx.types.CBufRet.i32 %2370, 0
  %2380 = and i32 %2379, 128
  %2381 = icmp ne i32 %2380, 0
  %2382 = and i1 %2378, %2381
  br i1 %2382, label %2533, label %2383

; <label>:2383                                    ; preds = %2317
  %2384 = add i32 %2318, 20
  %2385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.f32 %2385, 0
  %2387 = add i32 %2318, 24
  %2388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 0
  %2390 = add i32 %2318, 40
  %2391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.f32 %2391, 0
  %2393 = add i32 %2318, 96
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 2
  %2398 = fmul fast float %2397, %2337
  %2399 = fmul fast float %2397, %2339
  %2400 = extractvalue %dx.types.CBufRet.f32 %2396, 3
  %2401 = fadd fast float %2398, %2400
  %2402 = fadd fast float %2399, %2400
  %2403 = add i32 %2395, 0
  %2404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2405 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2404, i32 0)  ; GetDimensions(handle,mipLevel)
  %2406 = extractvalue %dx.types.Dimensions %2405, 0
  %2407 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2406)  ; FirstbitLo(value)
  %2408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.i32 %2408, 1
  %2410 = sub nsw i32 %2409, %2407
  %2411 = sitofp i32 %2410 to float
  %2412 = fsub fast float %2361, %2411
  %2413 = call float @dx.op.binary.f32(i32 35, float %2412, float 0.000000e+00)  ; FMax(a,b)
  %2414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2404, %dx.types.Handle %37, float %2401, float %2402, float %2392, float undef, i32 0, i32 0, i32 undef, float %2413)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2415 = extractvalue %dx.types.ResRet.f32 %2414, 0
  %2416 = fmul fast float %2415, %2386
  %2417 = fadd fast float %2416, %2389
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 3
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 3
  %2426 = extractvalue %dx.types.CBufRet.f32 %2418, 3
  %2427 = fadd fast float %2423, %2284
  %2428 = fadd fast float %2425, %2285
  %2429 = fadd fast float %2417, %2426
  %2430 = fmul fast float %2427, %2419
  %2431 = call float @dx.op.tertiary.f32(i32 46, float %2428, float %2420, float %2430)  ; FMad(a,b,c)
  %2432 = call float @dx.op.tertiary.f32(i32 46, float %2429, float %2421, float %2431)  ; FMad(a,b,c)
  %2433 = fsub fast float %2432, %2426
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2436 = fsub fast float %2433, %2435
  %2437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2438 = extractvalue %dx.types.CBufRet.i32 %2437, 0
  %2439 = call i32 @dx.op.binary.i32(i32 40, i32 %2315, i32 %2438)  ; UMin(a,b)
  %2440 = mul i32 %2439, 36
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %2440, 4
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2446 = fmul fast float %2445, %2337
  %2447 = fmul fast float %2445, %2339
  %2448 = extractvalue %dx.types.CBufRet.f32 %2444, 1
  %2449 = fadd fast float %2446, %2448
  %2450 = fadd fast float %2447, %2448
  %2451 = icmp eq i32 %2442, 0
  br i1 %2451, label %2520, label %2452

; <label>:2452                                    ; preds = %2383
  br label %2453

; <label>:2453                                    ; preds = %2510, %2452
  %2454 = phi float [ %2511, %2510 ], [ 0.000000e+00, %2452 ]
  %2455 = phi float [ %2512, %2510 ], [ 0.000000e+00, %2452 ]
  %2456 = phi float [ %2513, %2510 ], [ 0.000000e+00, %2452 ]
  %2457 = phi float [ %2514, %2510 ], [ 0.000000e+00, %2452 ]
  %2458 = phi float [ %2515, %2510 ], [ 0.000000e+00, %2452 ]
  %2459 = phi float [ %2516, %2510 ], [ 0.000000e+00, %2452 ]
  %2460 = phi i32 [ %2517, %2510 ], [ 0, %2452 ]
  %2461 = shl i32 %2460, 2
  %2462 = add i32 %2328, %2461
  %2463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.f32 %2463, 0
  %2465 = add i32 %2332, %2461
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = add i32 %2467, 0
  %2469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2468, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2470 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2469, i32 0)  ; GetDimensions(handle,mipLevel)
  %2471 = extractvalue %dx.types.Dimensions %2470, 0
  %2472 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2471)  ; FirstbitLo(value)
  %2473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.i32 %2473, 1
  %2475 = sub nsw i32 %2474, %2472
  %2476 = sitofp i32 %2475 to float
  %2477 = fsub fast float %2361, %2476
  %2478 = call float @dx.op.binary.f32(i32 35, float %2477, float 0.000000e+00)  ; FMax(a,b)
  %2479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2469, %dx.types.Handle %37, float %2449, float %2450, float %2464, float undef, i32 0, i32 0, i32 undef, float %2478)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2480 = extractvalue %dx.types.ResRet.f32 %2479, 0
  %2481 = fcmp fast ogt float %2480, 0.000000e+00
  br i1 %2481, label %2482, label %2510

; <label>:2482                                    ; preds = %2453
  %2483 = add i32 %2443, %2461
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 32767
  %2487 = mul nuw nsw i32 %2486, 928
  %2488 = add nuw nsw i32 %2487, 48
  %2489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.f32 %2489, 0
  %2491 = extractvalue %dx.types.ResRet.f32 %2489, 1
  %2492 = extractvalue %dx.types.ResRet.f32 %2489, 2
  %2493 = add nuw nsw i32 %2487, 60
  %2494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.ResRet.f32 %2494, 1
  %2497 = extractvalue %dx.types.ResRet.f32 %2494, 2
  %2498 = fmul fast float %2490, %2480
  %2499 = fmul fast float %2491, %2480
  %2500 = fmul fast float %2492, %2480
  %2501 = fadd fast float %2498, %2454
  %2502 = fadd fast float %2499, %2455
  %2503 = fadd fast float %2500, %2456
  %2504 = fmul fast float %2495, %2480
  %2505 = fmul fast float %2496, %2480
  %2506 = fmul fast float %2497, %2480
  %2507 = fadd fast float %2504, %2457
  %2508 = fadd fast float %2505, %2458
  %2509 = fadd fast float %2506, %2459
  br label %2510

; <label>:2510                                    ; preds = %2482, %2453
  %2511 = phi float [ %2501, %2482 ], [ %2454, %2453 ]
  %2512 = phi float [ %2502, %2482 ], [ %2455, %2453 ]
  %2513 = phi float [ %2503, %2482 ], [ %2456, %2453 ]
  %2514 = phi float [ %2507, %2482 ], [ %2457, %2453 ]
  %2515 = phi float [ %2508, %2482 ], [ %2458, %2453 ]
  %2516 = phi float [ %2509, %2482 ], [ %2459, %2453 ]
  %2517 = add nuw i32 %2460, 1
  %2518 = icmp eq i32 %2517, %2442
  br i1 %2518, label %2519, label %2453

; <label>:2519                                    ; preds = %2510
  br label %2520

; <label>:2520                                    ; preds = %2519, %2383
  %2521 = phi float [ 0.000000e+00, %2383 ], [ %2511, %2519 ]
  %2522 = phi float [ 0.000000e+00, %2383 ], [ %2512, %2519 ]
  %2523 = phi float [ 0.000000e+00, %2383 ], [ %2513, %2519 ]
  %2524 = phi float [ 0.000000e+00, %2383 ], [ %2514, %2519 ]
  %2525 = phi float [ 0.000000e+00, %2383 ], [ %2515, %2519 ]
  %2526 = phi float [ 0.000000e+00, %2383 ], [ %2516, %2519 ]
  %2527 = fadd fast float %2524, %2521
  %2528 = fmul fast float %2527, 0x3F847AE140000000
  %2529 = fadd fast float %2525, %2522
  %2530 = fmul fast float %2529, 0x3F847AE140000000
  %2531 = fadd fast float %2526, %2523
  %2532 = fmul fast float %2531, 0x3F847AE140000000
  br label %2533

; <label>:2533                                    ; preds = %2520, %2317, %2262, %2259, %2230, %2192
  %2534 = phi float [ %2244, %2230 ], [ -1.310720e+05, %2192 ], [ %2436, %2520 ], [ -1.310720e+05, %2262 ], [ -1.310720e+05, %2317 ], [ -1.310720e+05, %2259 ]
  %2535 = phi float [ %2254, %2230 ], [ 0.000000e+00, %2192 ], [ %2528, %2520 ], [ 0.000000e+00, %2262 ], [ 0.000000e+00, %2317 ], [ 0.000000e+00, %2259 ]
  %2536 = phi float [ %2256, %2230 ], [ 0.000000e+00, %2192 ], [ %2530, %2520 ], [ 0.000000e+00, %2262 ], [ 0.000000e+00, %2317 ], [ 0.000000e+00, %2259 ]
  %2537 = phi float [ %2258, %2230 ], [ 0.000000e+00, %2192 ], [ %2532, %2520 ], [ 0.000000e+00, %2262 ], [ 0.000000e+00, %2317 ], [ 0.000000e+00, %2259 ]
  %2538 = phi i1 [ true, %2230 ], [ false, %2192 ], [ true, %2520 ], [ false, %2262 ], [ false, %2317 ], [ false, %2259 ]
  %2539 = and i32 %165, 3
  %2540 = icmp eq i32 %2539, 1
  %2541 = select i1 %2540, float 1.000000e+00, float 0.000000e+00
  %2542 = fsub fast float %2534, %120
  %2543 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2544 = select i1 %2538, float %2543, float 1.000000e+00
  %2545 = fmul fast float %2544, %2541
  %2546 = icmp eq i32 %2539, 3
  %2547 = select i1 %2546, float 1.000000e+00, float %2545
  %2548 = call float @dx.op.binary.f32(i32 35, float %2107, float %2547)  ; FMax(a,b)
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2550 = fcmp fast une float %2549, 0.000000e+00
  %2551 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2552 = call float @dx.op.unary.f32(i32 25, float %2551)  ; Rsqrt(value)
  br i1 %2550, label %2560, label %2553

; <label>:2553                                    ; preds = %2533
  %2554 = fmul fast float %2552, %118
  %2555 = fmul fast float %2552, %119
  %2556 = fmul fast float %2552, %120
  %2557 = fsub fast float -0.000000e+00, %2554
  %2558 = fsub fast float -0.000000e+00, %2555
  %2559 = fsub fast float -0.000000e+00, %2556
  br label %2728

; <label>:2560                                    ; preds = %2533
  %2561 = fmul fast float %118, %2552
  %2562 = fsub fast float -0.000000e+00, %2561
  %2563 = fmul fast float %119, %2552
  %2564 = fsub fast float -0.000000e+00, %2563
  %2565 = fmul fast float %120, %2552
  %2566 = fsub fast float -0.000000e+00, %2565
  %2567 = call float @dx.op.dot3.f32(i32 55, float %2562, float %2564, float %2566, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2568 = fmul fast float %2549, 2.500000e+00
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = fmul fast float %2549, 0x4013FFFFE0000000
  %2571 = fadd fast float %2570, 0xBFFFFFFFE0000000
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2573 = fmul fast float %2549, 0x4004000020000000
  %2574 = fadd fast float %2573, 0xBFF8000040000000
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2576 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2577 = fmul fast float %2138, 1.000000e+01
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fmul fast float %2578, 2.000000e+00
  %2580 = fsub fast float 3.000000e+00, %2579
  %2581 = fmul fast float %2578, %2578
  %2582 = fmul fast float %2581, %2580
  %2583 = fsub fast float 1.000000e+00, %2582
  %2584 = fsub fast float 0x3FE3333340000000, %2159
  %2585 = fmul fast float %2584, 0x400AAAAAA0000000
  %2586 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2587 = fmul fast float %2583, %2586
  %2588 = fmul fast float %2171, 0x3FEA2B8620000000
  %2589 = fmul fast float %2172, 0x3FEA2B8620000000
  %2590 = fmul fast float %2173, 0x3FEA2B8620000000
  %2591 = fadd fast float %2588, 0x3FC81DFBA0000000
  %2592 = fmul fast float %2591, %2171
  %2593 = fadd fast float %2592, 0x3F910E6020000000
  %2594 = fadd fast float %2589, 0x3FC81DFBA0000000
  %2595 = fmul fast float %2594, %2172
  %2596 = fadd fast float %2595, 0x3F910E6020000000
  %2597 = fadd fast float %2590, 0x3FC81DFBA0000000
  %2598 = fmul fast float %2597, %2173
  %2599 = fadd fast float %2598, 0x3F910E6020000000
  %2600 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2601 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  %2602 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2603 = fsub fast float %2600, %2171
  %2604 = fsub fast float %2601, %2172
  %2605 = fsub fast float %2602, %2173
  %2606 = fmul fast float %2603, %2576
  %2607 = fmul fast float %2606, %2587
  %2608 = fmul fast float %2604, %2576
  %2609 = fmul fast float %2608, %2587
  %2610 = fmul fast float %2605, %2576
  %2611 = fmul fast float %2610, %2587
  %2612 = fadd fast float %2607, %2171
  %2613 = fadd fast float %2609, %2172
  %2614 = fadd fast float %2611, %2173
  %2615 = fmul fast float %2119, %2119
  %2616 = fmul fast float %2615, %2615
  %2617 = fadd fast float %2572, 1.000000e+00
  %2618 = fsub fast float %2617, %2587
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2620 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2621 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2622 = fsub fast float 1.000000e+00, %2616
  %2623 = call float @dx.op.binary.f32(i32 36, float %2619, float %2622)  ; FMin(a,b)
  %2624 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2625 = call float @dx.op.binary.f32(i32 35, float %2623, float %2624)  ; FMax(a,b)
  %2626 = fadd fast float %2621, 0xBFE4CCCCC0000000
  %2627 = fmul fast float %2626, 0x4006DB6DA0000000
  %2628 = call float @dx.op.unary.f32(i32 7, float %2627)  ; Saturate(value)
  %2629 = fmul fast float %2628, 2.000000e+00
  %2630 = fsub fast float 3.000000e+00, %2629
  %2631 = bitcast float %2156 to i32
  %2632 = ashr i32 %2631, 1
  %2633 = add nsw i32 %2632, 532487669
  %2634 = bitcast i32 %2633 to float
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = bitcast float %2635 to i32
  %2637 = sub nsw i32 2129859010, %2636
  %2638 = bitcast i32 %2637 to float
  %2639 = fmul fast float %2638, 2.000000e+00
  %2640 = bitcast float %2157 to i32
  %2641 = ashr i32 %2640, 1
  %2642 = add nsw i32 %2641, 532487669
  %2643 = bitcast i32 %2642 to float
  %2644 = fsub fast float 1.000000e+00, %2643
  %2645 = bitcast float %2644 to i32
  %2646 = sub nsw i32 2129859010, %2645
  %2647 = bitcast i32 %2646 to float
  %2648 = fmul fast float %2647, 2.000000e+00
  %2649 = bitcast float %2158 to i32
  %2650 = ashr i32 %2649, 1
  %2651 = add nsw i32 %2650, 532487669
  %2652 = bitcast i32 %2651 to float
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = bitcast float %2653 to i32
  %2655 = sub nsw i32 2129859010, %2654
  %2656 = bitcast i32 %2655 to float
  %2657 = fmul fast float %2656, 2.000000e+00
  %2658 = fsub fast float 0x4002A9FBE0000000, %2639
  %2659 = fadd fast float %2639, 0x3FD54FDF00000000
  %2660 = bitcast float %2659 to i32
  %2661 = sub nsw i32 2129859010, %2660
  %2662 = bitcast i32 %2661 to float
  %2663 = fmul fast float %2662, %2658
  %2664 = fmul fast float %2663, %2663
  %2665 = fsub fast float 0x4002A9FBE0000000, %2648
  %2666 = fadd fast float %2648, 0x3FD54FDF00000000
  %2667 = bitcast float %2666 to i32
  %2668 = sub nsw i32 2129859010, %2667
  %2669 = bitcast i32 %2668 to float
  %2670 = fmul fast float %2669, %2665
  %2671 = fmul fast float %2670, %2670
  %2672 = fsub fast float 0x4002A9FBE0000000, %2657
  %2673 = fadd fast float %2657, 0x3FD54FDF00000000
  %2674 = bitcast float %2673 to i32
  %2675 = sub nsw i32 2129859010, %2674
  %2676 = bitcast i32 %2675 to float
  %2677 = fmul fast float %2676, %2672
  %2678 = fmul fast float %2677, %2677
  %2679 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2664)  ; FMax(a,b)
  %2680 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2671)  ; FMax(a,b)
  %2681 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2678)  ; FMax(a,b)
  %2682 = fsub fast float 1.000000e+00, %2567
  %2683 = fadd fast float %2682, %2583
  %2684 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2685 = fsub fast float 1.000000e+00, %2547
  %2686 = fmul fast float %2625, %2685
  %2687 = fmul fast float %2628, %2628
  %2688 = fmul fast float %2687, %2686
  %2689 = fmul fast float %2688, %2630
  %2690 = fmul fast float %2685, 0xBFE99999A0000000
  %2691 = fmul fast float %2690, %2576
  %2692 = fmul fast float %2691, %2587
  %2693 = fadd fast float %2692, 1.000000e+00
  %2694 = fadd fast float %2159, -1.000000e+00
  %2695 = fmul fast float %2693, %2694
  %2696 = fadd fast float %2695, 1.000000e+00
  %2697 = fsub fast float %2679, %2156
  %2698 = fsub fast float %2680, %2157
  %2699 = fsub fast float %2681, %2158
  %2700 = fmul fast float %2689, %2697
  %2701 = fmul fast float %2689, %2698
  %2702 = fmul fast float %2689, %2699
  %2703 = fadd fast float %2700, %2156
  %2704 = fadd fast float %2701, %2157
  %2705 = fadd fast float %2702, %2158
  %2706 = fsub fast float %53, %2135
  %2707 = fsub fast float %54, %2136
  %2708 = fsub fast float %55, %2137
  %2709 = fmul fast float %2689, %2706
  %2710 = fmul fast float %2689, %2707
  %2711 = fmul fast float %2689, %2708
  %2712 = fadd fast float %2709, %2135
  %2713 = fadd fast float %2710, %2136
  %2714 = fadd fast float %2711, %2137
  %2715 = fmul fast float %2689, %2684
  %2716 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = fmul fast float %2715, %2717
  %2719 = fadd fast float %2718, %2716
  %2720 = fsub fast float 1.000000e+00, %2119
  %2721 = fmul fast float %2689, %2720
  %2722 = fadd fast float %2721, %2119
  %2723 = call float @dx.op.dot3.f32(i32 55, float %2712, float %2713, float %2714, float %2712, float %2713, float %2714)  ; Dot3(ax,ay,az,bx,by,bz)
  %2724 = call float @dx.op.unary.f32(i32 25, float %2723)  ; Rsqrt(value)
  %2725 = fmul fast float %2712, %2724
  %2726 = fmul fast float %2713, %2724
  %2727 = fmul fast float %2714, %2724
  br label %2728

; <label>:2728                                    ; preds = %2560, %2553
  %2729 = phi float [ %2559, %2553 ], [ %2566, %2560 ]
  %2730 = phi float [ %2558, %2553 ], [ %2564, %2560 ]
  %2731 = phi float [ %2557, %2553 ], [ %2562, %2560 ]
  %2732 = phi float [ %2556, %2553 ], [ %2565, %2560 ]
  %2733 = phi float [ %2555, %2553 ], [ %2563, %2560 ]
  %2734 = phi float [ %2554, %2553 ], [ %2561, %2560 ]
  %2735 = phi float [ %2156, %2553 ], [ %2703, %2560 ]
  %2736 = phi float [ %2157, %2553 ], [ %2704, %2560 ]
  %2737 = phi float [ %2158, %2553 ], [ %2705, %2560 ]
  %2738 = phi float [ %2171, %2553 ], [ %2612, %2560 ]
  %2739 = phi float [ %2172, %2553 ], [ %2613, %2560 ]
  %2740 = phi float [ %2173, %2553 ], [ %2614, %2560 ]
  %2741 = phi float [ %2135, %2553 ], [ %2725, %2560 ]
  %2742 = phi float [ %2136, %2553 ], [ %2726, %2560 ]
  %2743 = phi float [ %2137, %2553 ], [ %2727, %2560 ]
  %2744 = phi float [ %2159, %2553 ], [ %2719, %2560 ]
  %2745 = phi float [ %2119, %2553 ], [ %2722, %2560 ]
  %2746 = select i1 %189, float 0.000000e+00, float %2737
  %2747 = call float @dx.op.dot3.f32(i32 55, float %2741, float %2742, float %2743, float %2731, float %2730, float %2729)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = call float @dx.op.dot3.f32(i32 55, float %2734, float %2733, float %2732, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %2750 = fmul fast float %2749, 2.000000e+00
  %2751 = fmul fast float %2750, %2741
  %2752 = fmul fast float %2750, %2742
  %2753 = fmul fast float %2750, %2743
  %2754 = fsub fast float %2734, %2751
  %2755 = fsub fast float %2733, %2752
  %2756 = fsub fast float %2732, %2753
  %2757 = call float @dx.op.binary.f32(i32 36, float %2745, float 1.000000e+00)  ; FMin(a,b)
  %2758 = fsub fast float 1.000000e+00, %2745
  %2759 = bitcast float %2758 to i32
  %2760 = sub nsw i32 2129859010, %2759
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.CBufRet.f32 %2761, 1
  %2764 = fadd fast float %2762, %118
  %2765 = fadd fast float %2763, %119
  %2766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.i32 %2766, 0
  %2768 = icmp eq i32 %2767, 1
  br i1 %2768, label %2769, label %2804

; <label>:2769                                    ; preds = %2728
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = fsub fast float %2764, %2771
  %2774 = fsub fast float %2765, %2772
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = fmul fast float %2773, %2776
  %2779 = fmul fast float %2774, %2777
  %2780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2778, float %2779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2781 = extractvalue %dx.types.ResRet.f32 %2780, 0
  %2782 = fcmp fast ogt float %2781, 0.000000e+00
  %2783 = extractvalue %dx.types.CBufRet.i32 %2766, 3
  %2784 = icmp ne i32 %2783, 0
  %2785 = and i1 %2782, %2784
  br i1 %2785, label %2786, label %2804, !dx.controlflow.hints !81

; <label>:2786                                    ; preds = %2769
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 0
  %2789 = extractvalue %dx.types.CBufRet.f32 %2787, 1
  %2790 = fsub fast float %2764, %2788
  %2791 = fsub fast float %2765, %2789
  %2792 = fmul fast float %2790, %2790
  %2793 = fmul fast float %2791, %2791
  %2794 = fadd fast float %2792, %2793
  %2795 = uitofp i32 %2783 to float
  %2796 = fmul fast float %2795, %2795
  %2797 = fcmp fast ogt float %2794, %2796
  br i1 %2797, label %2804, label %2798

; <label>:2798                                    ; preds = %2786
  %2799 = call float @dx.op.unary.f32(i32 24, float %2794)  ; Sqrt(value)
  %2800 = fsub fast float %2795, %2799
  %2801 = fmul fast float %2800, 0x3F75555560000000
  %2802 = call float @dx.op.unary.f32(i32 7, float %2801)  ; Saturate(value)
  %2803 = call float @dx.op.binary.f32(i32 36, float %2802, float %2781)  ; FMin(a,b)
  br label %2804

; <label>:2804                                    ; preds = %2798, %2786, %2769, %2728
  %2805 = phi float [ 1.000000e+00, %2728 ], [ %2803, %2798 ], [ %2781, %2769 ], [ 0.000000e+00, %2786 ]
  %2806 = fcmp fast ogt float %2805, 0.000000e+00
  br i1 %2806, label %2807, label %2905, !dx.controlflow.hints !82

; <label>:2807                                    ; preds = %2804
  %2808 = fadd fast float %149, 5.000000e-01
  %2809 = call float @dx.op.unary.f32(i32 27, float %2808)  ; Round_ni(value)
  %2810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %147, float %148, float %2809, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2811 = extractvalue %dx.types.ResRet.f32 %2810, 0
  %2812 = extractvalue %dx.types.ResRet.f32 %2810, 1
  %2813 = extractvalue %dx.types.ResRet.f32 %2810, 2
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 3
  %2816 = fmul fast float %2815, %2811
  %2817 = fmul fast float %2815, %2812
  %2818 = fmul fast float %2815, %2813
  %2819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %147, float %148, float %2809, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %147, float %148, float %2809, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.ResRet.f32 %2821, 1
  %2824 = fmul fast float %2822, 2.000000e+00
  %2825 = fmul fast float %2823, 2.000000e+00
  %2826 = fadd fast float %2824, -1.000000e+00
  %2827 = fadd fast float %2825, -1.000000e+00
  %2828 = fadd fast float %2826, %2827
  %2829 = fmul fast float %2828, 5.000000e-01
  %2830 = fsub fast float %2826, %2827
  %2831 = fmul fast float %2830, 5.000000e-01
  %2832 = call float @dx.op.unary.f32(i32 6, float %2829)  ; FAbs(value)
  %2833 = fsub fast float 1.000000e+00, %2832
  %2834 = call float @dx.op.unary.f32(i32 6, float %2831)  ; FAbs(value)
  %2835 = fsub fast float %2833, %2834
  %2836 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2835)  ; FMax(a,b)
  %2837 = call float @dx.op.dot3.f32(i32 55, float %2829, float %2831, float %2836, float %2829, float %2831, float %2836)  ; Dot3(ax,ay,az,bx,by,bz)
  %2838 = bitcast float %2837 to i32
  %2839 = ashr i32 %2838, 1
  %2840 = sub nsw i32 1597250115, %2839
  %2841 = bitcast i32 %2840 to float
  %2842 = fmul fast float %2841, %2829
  %2843 = fmul fast float %2841, %2831
  %2844 = fmul fast float %2841, %2836
  %2845 = fsub fast float 1.000000e+00, %2820
  %2846 = fdiv fast float %2845, %2844
  %2847 = fmul fast float %2844, %53
  %2848 = fmul fast float %2844, %54
  %2849 = fmul fast float %2844, %55
  %2850 = fmul fast float %2842, %49
  %2851 = fmul fast float %2842, %50
  %2852 = fmul fast float %2842, %51
  %2853 = fadd fast float %2847, %2850
  %2854 = fadd fast float %2848, %2851
  %2855 = fadd fast float %2849, %2852
  %2856 = fmul fast float %2843, %82
  %2857 = fmul fast float %2843, %83
  %2858 = fmul fast float %2843, %84
  %2859 = fadd fast float %2853, %2856
  %2860 = fadd fast float %2854, %2857
  %2861 = fadd fast float %2855, %2858
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2859, float %2860, float %2861, float %2859, float %2860, float %2861)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = call float @dx.op.unary.f32(i32 25, float %2862)  ; Rsqrt(value)
  %2864 = fmul fast float %2859, %2863
  %2865 = fmul fast float %2860, %2863
  %2866 = fmul fast float %2861, %2863
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2741, float %2742, float %2743, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = fmul fast float %2868, 5.000000e-01
  %2870 = fadd fast float %2869, 5.000000e-01
  %2871 = fmul fast float %2870, %2820
  %2872 = call float @dx.op.dot3.f32(i32 55, float %2741, float %2742, float %2743, float %2864, float %2865, float %2866)  ; Dot3(ax,ay,az,bx,by,bz)
  %2873 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2874 = fmul fast float %2873, %2846
  %2875 = fadd fast float %2871, %2874
  %2876 = fsub fast float 5.000000e-01, %2869
  %2877 = fmul fast float %2876, %2738
  %2878 = fmul fast float %2876, %2739
  %2879 = fmul fast float %2876, %2740
  %2880 = fadd fast float %2875, %2877
  %2881 = fmul fast float %2880, %2816
  %2882 = fadd fast float %2875, %2878
  %2883 = fmul fast float %2882, %2817
  %2884 = fadd fast float %2875, %2879
  %2885 = fmul fast float %2884, %2818
  %2886 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2888 = fmul fast float %2887, 5.000000e-01
  %2889 = fadd fast float %2888, 5.000000e-01
  %2890 = fmul fast float %2889, %2820
  %2891 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %2864, float %2865, float %2866)  ; Dot3(ax,ay,az,bx,by,bz)
  %2892 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2893 = fmul fast float %2892, %2846
  %2894 = fadd fast float %2890, %2893
  %2895 = fsub fast float 5.000000e-01, %2888
  %2896 = fmul fast float %2895, %2738
  %2897 = fmul fast float %2895, %2739
  %2898 = fmul fast float %2895, %2740
  %2899 = fadd fast float %2894, %2896
  %2900 = fmul fast float %2899, %2816
  %2901 = fadd fast float %2894, %2897
  %2902 = fmul fast float %2901, %2817
  %2903 = fadd fast float %2894, %2898
  %2904 = fmul fast float %2903, %2818
  br label %2905

; <label>:2905                                    ; preds = %2807, %2804
  %2906 = phi float [ %2900, %2807 ], [ 0.000000e+00, %2804 ]
  %2907 = phi float [ %2902, %2807 ], [ 0.000000e+00, %2804 ]
  %2908 = phi float [ %2904, %2807 ], [ 0.000000e+00, %2804 ]
  %2909 = phi float [ %2881, %2807 ], [ 0.000000e+00, %2804 ]
  %2910 = phi float [ %2883, %2807 ], [ 0.000000e+00, %2804 ]
  %2911 = phi float [ %2885, %2807 ], [ 0.000000e+00, %2804 ]
  %2912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2913 = extractvalue %dx.types.CBufRet.f32 %2912, 0
  %2914 = fcmp fast ogt float %2913, 0.000000e+00
  %2915 = and i1 %2806, %2914
  br i1 %2915, label %2916, label %3120, !dx.controlflow.hints !83

; <label>:2916                                    ; preds = %2905
  %2917 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2918 = fadd fast float %2917, %120
  %2919 = fmul fast float %2741, 3.200000e+01
  %2920 = fmul fast float %2742, 3.200000e+01
  %2921 = fadd fast float %2764, %2919
  %2922 = fadd fast float %2765, %2920
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = extractvalue %dx.types.CBufRet.f32 %2923, 1
  %2926 = fsub fast float %2921, %2924
  %2927 = fsub fast float %2922, %2925
  %2928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2929 = extractvalue %dx.types.CBufRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.CBufRet.f32 %2928, 1
  %2931 = fmul fast float %2926, %2929
  %2932 = fmul fast float %2927, %2930
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.CBufRet.f32 %2933, 1
  %2936 = fsub fast float %2764, %2934
  %2937 = fsub fast float %2765, %2935
  %2938 = fmul fast float %2936, %2936
  %2939 = fmul fast float %2937, %2937
  %2940 = fadd fast float %2938, %2939
  %2941 = call float @dx.op.unary.f32(i32 24, float %2940)  ; Sqrt(value)
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2945 = fsub fast float %2941, %2943
  %2946 = fdiv fast float %2945, %2944
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = fmul fast float %2947, 2.000000e+00
  %2949 = fsub fast float 3.000000e+00, %2948
  %2950 = fmul fast float %2947, %2947
  %2951 = fmul fast float %2950, %2949
  %2952 = fcmp fast oge float %2931, 0.000000e+00
  %2953 = fcmp fast ole float %2931, 1.000000e+00
  %2954 = and i1 %2953, %2952
  %2955 = fcmp fast oge float %2932, 0.000000e+00
  %2956 = and i1 %2955, %2954
  %2957 = fcmp fast ole float %2932, 1.000000e+00
  %2958 = and i1 %2957, %2956
  %2959 = fcmp fast ogt float %2951, 0.000000e+00
  %2960 = and i1 %2959, %2958
  br i1 %2960, label %2961, label %3084, !dx.controlflow.hints !84

; <label>:2961                                    ; preds = %2916
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2964 = extractvalue %dx.types.CBufRet.f32 %2962, 3
  %2965 = fmul fast float %2963, %2931
  %2966 = fmul fast float %2964, %2932
  %2967 = call float @dx.op.unary.f32(i32 27, float %2965)  ; Round_ni(value)
  %2968 = call float @dx.op.unary.f32(i32 27, float %2966)  ; Round_ni(value)
  %2969 = fptosi float %2967 to i32
  %2970 = fptosi float %2968 to i32
  %2971 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2969, i32 %2970, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = lshr i32 %2972, 16
  %2974 = icmp eq i32 %2973, 65535
  br i1 %2974, label %3084, label %2975

; <label>:2975                                    ; preds = %2961
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = fmul fast float %2977, %2931
  %2979 = extractvalue %dx.types.CBufRet.f32 %2976, 1
  %2980 = fadd fast float %2978, %2979
  %2981 = extractvalue %dx.types.CBufRet.f32 %2976, 2
  %2982 = fmul fast float %2981, %2932
  %2983 = extractvalue %dx.types.CBufRet.f32 %2976, 3
  %2984 = fadd fast float %2982, %2983
  %2985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2980, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %2990 = extractvalue %dx.types.CBufRet.f32 %2988, 0
  %2991 = fsub fast float %2989, %2990
  %2992 = fmul fast float %2991, %2986
  %2993 = fadd fast float %2992, %2990
  %2994 = extractvalue %dx.types.CBufRet.f32 %2988, 3
  %2995 = extractvalue %dx.types.CBufRet.f32 %2988, 2
  %2996 = fsub fast float %2994, %2995
  %2997 = fmul fast float %2996, %2987
  %2998 = fadd fast float %2997, %2995
  %2999 = fsub fast float %2918, %2993
  %3000 = fsub fast float %2998, %2993
  %3001 = fdiv fast float %2999, %3000
  %3002 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  %3003 = extractvalue %dx.types.CBufRet.f32 %2912, 1
  %3004 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %3005 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %3006 = fmul fast float %3004, %2931
  %3007 = fmul fast float %3005, %2932
  %3008 = fmul fast float %3006, 1.250000e-01
  %3009 = fmul fast float %3007, 1.250000e-01
  %3010 = call float @dx.op.unary.f32(i32 27, float %3008)  ; Round_ni(value)
  %3011 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3012 = fmul fast float %3010, 8.000000e+00
  %3013 = fmul fast float %3011, 8.000000e+00
  %3014 = fsub fast float %3006, %3012
  %3015 = fsub fast float %3007, %3013
  %3016 = fadd fast float %3014, 5.000000e-01
  %3017 = fadd fast float %3015, 5.000000e-01
  %3018 = and i32 %2973, 255
  %3019 = lshr i32 %2972, 24
  %3020 = mul nuw nsw i32 %3018, 9
  %3021 = uitofp i32 %3020 to float
  %3022 = mul nuw nsw i32 %3019, 9
  %3023 = uitofp i32 %3022 to float
  %3024 = fadd fast float %3016, %3021
  %3025 = fadd fast float %3017, %3023
  %3026 = fdiv fast float %3024, %2913
  %3027 = fdiv fast float %3025, %3003
  %3028 = fmul fast float %3002, 4.375000e-01
  %3029 = fadd fast float %3028, 3.125000e-02
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3026, float %3027, float %3029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = extractvalue %dx.types.ResRet.f32 %3030, 1
  %3033 = extractvalue %dx.types.ResRet.f32 %3030, 2
  %3034 = fadd fast float %3028, 5.312500e-01
  %3035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3026, float %3027, float %3034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3036 = extractvalue %dx.types.ResRet.f32 %3035, 0
  %3037 = extractvalue %dx.types.ResRet.f32 %3035, 1
  %3038 = extractvalue %dx.types.ResRet.f32 %3035, 2
  %3039 = fmul fast float %3036, 2.000000e+00
  %3040 = fmul fast float %3037, 2.000000e+00
  %3041 = fmul fast float %3038, 2.000000e+00
  %3042 = fadd fast float %3039, -1.000000e+00
  %3043 = fadd fast float %3040, -1.000000e+00
  %3044 = fadd fast float %3041, -1.000000e+00
  %3045 = fmul fast float %3042, %3042
  %3046 = fmul fast float %3043, %3043
  %3047 = fadd fast float %3045, %3046
  %3048 = fmul fast float %3044, %3044
  %3049 = fadd fast float %3047, %3048
  %3050 = call float @dx.op.unary.f32(i32 24, float %3049)  ; Sqrt(value)
  %3051 = fcmp fast ogt float %3050, 0.000000e+00
  br i1 %3051, label %3052, label %3056

; <label>:3052                                    ; preds = %2975
  %3053 = fdiv fast float %3042, %3050
  %3054 = fdiv fast float %3043, %3050
  %3055 = fdiv fast float %3044, %3050
  br label %3056

; <label>:3056                                    ; preds = %3052, %2975
  %3057 = phi float [ %3053, %3052 ], [ 0.000000e+00, %2975 ]
  %3058 = phi float [ %3054, %3052 ], [ 0.000000e+00, %2975 ]
  %3059 = phi float [ %3055, %3052 ], [ 0.000000e+00, %2975 ]
  %3060 = call float @dx.op.dot3.f32(i32 55, float %3057, float %3058, float %3059, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3060)  ; FMax(a,b)
  %3062 = fmul fast float %3061, 0x400C5BF8A0000000
  %3063 = fmul fast float %3031, %2951
  %3064 = fmul fast float %3063, %3062
  %3065 = fmul fast float %3032, %2951
  %3066 = fmul fast float %3065, %3062
  %3067 = fmul fast float %3033, %2951
  %3068 = fmul fast float %3067, %3062
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 3
  %3071 = fmul fast float %3064, %3070
  %3072 = fmul fast float %3066, %3070
  %3073 = fmul fast float %3068, %3070
  %3074 = fcmp fast ogt float %2918, %2998
  br i1 %3074, label %3075, label %3084

; <label>:3075                                    ; preds = %3056
  %3076 = fmul fast float %3000, 0x3FC24924A0000000
  %3077 = fsub fast float %2918, %2998
  %3078 = fdiv fast float %3077, %3076
  %3079 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = fmul fast float %3080, %3071
  %3082 = fmul fast float %3080, %3072
  %3083 = fmul fast float %3080, %3073
  br label %3084

; <label>:3084                                    ; preds = %3075, %3056, %2961, %2916
  %3085 = phi float [ %3083, %3075 ], [ %3073, %3056 ], [ 0.000000e+00, %2961 ], [ 0.000000e+00, %2916 ]
  %3086 = phi float [ %3082, %3075 ], [ %3072, %3056 ], [ 0.000000e+00, %2961 ], [ 0.000000e+00, %2916 ]
  %3087 = phi float [ %3081, %3075 ], [ %3071, %3056 ], [ 0.000000e+00, %2961 ], [ 0.000000e+00, %2916 ]
  %3088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3087)  ; FMax(a,b)
  %3089 = fmul fast float %3088, 0x3FD20DD760000000
  %3090 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3091 = fmul fast float %3090, 0x3FDF454380000000
  %3092 = fmul fast float %3090, %3090
  %3093 = fmul fast float %3092, 0x3FEE471020000000
  %3094 = fadd fast float %3093, 0xBFD42F6020000000
  %3095 = call float @dx.op.dot3.f32(i32 55, float %3088, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3091, float %3094)  ; Dot3(ax,ay,az,bx,by,bz)
  %3096 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3086)  ; FMax(a,b)
  %3097 = fmul fast float %3096, 0x3FD20DD760000000
  %3098 = call float @dx.op.dot3.f32(i32 55, float %3096, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3091, float %3094)  ; Dot3(ax,ay,az,bx,by,bz)
  %3099 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3085)  ; FMax(a,b)
  %3100 = fmul fast float %3099, 0x3FD20DD760000000
  %3101 = call float @dx.op.dot3.f32(i32 55, float %3099, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3091, float %3094)  ; Dot3(ax,ay,az,bx,by,bz)
  %3102 = call float @dx.op.binary.f32(i32 35, float %3089, float 0.000000e+00)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 35, float %3097, float 0.000000e+00)  ; FMax(a,b)
  %3104 = call float @dx.op.binary.f32(i32 35, float %3100, float 0.000000e+00)  ; FMax(a,b)
  %3105 = call float @dx.op.binary.f32(i32 35, float %3095, float 0.000000e+00)  ; FMax(a,b)
  %3106 = call float @dx.op.binary.f32(i32 35, float %3098, float 0.000000e+00)  ; FMax(a,b)
  %3107 = call float @dx.op.binary.f32(i32 35, float %3101, float 0.000000e+00)  ; FMax(a,b)
  %3108 = fmul fast float %3102, %2805
  %3109 = fmul fast float %3103, %2805
  %3110 = fmul fast float %3104, %2805
  %3111 = fadd fast float %3108, %2909
  %3112 = fadd fast float %3109, %2910
  %3113 = fadd fast float %3110, %2911
  %3114 = fmul fast float %3105, %2805
  %3115 = fmul fast float %3106, %2805
  %3116 = fmul fast float %3107, %2805
  %3117 = fadd fast float %3114, %2906
  %3118 = fadd fast float %3115, %2907
  %3119 = fadd fast float %3116, %2908
  br label %3120

; <label>:3120                                    ; preds = %3084, %2905
  %3121 = phi float [ %3117, %3084 ], [ %2906, %2905 ]
  %3122 = phi float [ %3118, %3084 ], [ %2907, %2905 ]
  %3123 = phi float [ %3119, %3084 ], [ %2908, %2905 ]
  %3124 = phi float [ %3111, %3084 ], [ %2909, %2905 ]
  %3125 = phi float [ %3112, %3084 ], [ %2910, %2905 ]
  %3126 = phi float [ %3113, %3084 ], [ %2911, %2905 ]
  %3127 = fcmp fast olt float %2805, 1.000000e+00
  br i1 %3127, label %3128, label %3946, !dx.controlflow.hints !85

; <label>:3128                                    ; preds = %3120
  %3129 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %3130 = fadd fast float %3129, %120
  %3131 = fmul fast float %2741, 3.200000e+01
  %3132 = fmul fast float %2742, 3.200000e+01
  %3133 = fadd fast float %2764, %3131
  %3134 = fadd fast float %2765, %3132
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.CBufRet.f32 %3135, 1
  %3138 = fsub fast float %3133, %3136
  %3139 = fsub fast float %3134, %3137
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = fmul fast float %3138, %3141
  %3144 = fmul fast float %3139, %3142
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 0
  %3147 = fmul fast float %3143, %3146
  %3148 = extractvalue %dx.types.CBufRet.f32 %3145, 1
  %3149 = fadd fast float %3147, %3148
  %3150 = extractvalue %dx.types.CBufRet.f32 %3145, 2
  %3151 = fmul fast float %3150, %3144
  %3152 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3153 = fadd fast float %3151, %3152
  %3154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3149, float %3153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.ResRet.f32 %3154, 1
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 1
  %3159 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3160 = fsub fast float %3158, %3159
  %3161 = fmul fast float %3160, %3155
  %3162 = fadd fast float %3161, %3159
  %3163 = extractvalue %dx.types.CBufRet.f32 %3157, 3
  %3164 = extractvalue %dx.types.CBufRet.f32 %3157, 2
  %3165 = fsub fast float %3163, %3164
  %3166 = fmul fast float %3165, %3156
  %3167 = fadd fast float %3166, %3164
  %3168 = fsub fast float %3130, %3162
  %3169 = fsub fast float %3167, %3162
  %3170 = fdiv fast float %3168, %3169
  %3171 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = fmul fast float %3173, %3171
  %3175 = extractvalue %dx.types.CBufRet.f32 %3172, 1
  %3176 = fadd fast float %3174, %3175
  %3177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3149, float %3153, float %3176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3178 = extractvalue %dx.types.ResRet.f32 %3177, 0
  %3179 = extractvalue %dx.types.ResRet.f32 %3177, 1
  %3180 = extractvalue %dx.types.ResRet.f32 %3177, 2
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.CBufRet.f32 %3181, 1
  %3184 = extractvalue %dx.types.CBufRet.f32 %3181, 2
  %3185 = fmul fast float %3182, %3178
  %3186 = fmul fast float %3183, %3179
  %3187 = fmul fast float %3184, %3180
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.CBufRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.CBufRet.f32 %3188, 2
  %3192 = fadd fast float %3185, %3189
  %3193 = fadd fast float %3186, %3190
  %3194 = fadd fast float %3187, %3191
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 0
  %3197 = fmul fast float %3196, %3143
  %3198 = extractvalue %dx.types.CBufRet.f32 %3195, 1
  %3199 = fadd fast float %3197, %3198
  %3200 = extractvalue %dx.types.CBufRet.f32 %3195, 2
  %3201 = fmul fast float %3200, %3144
  %3202 = extractvalue %dx.types.CBufRet.f32 %3195, 3
  %3203 = fadd fast float %3201, %3202
  %3204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3205 = extractvalue %dx.types.CBufRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.CBufRet.f32 %3204, 1
  %3207 = extractvalue %dx.types.CBufRet.f32 %3204, 2
  %3208 = extractvalue %dx.types.CBufRet.f32 %3204, 3
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.CBufRet.f32 %3209, 1
  %3212 = extractvalue %dx.types.CBufRet.f32 %3209, 2
  %3213 = extractvalue %dx.types.CBufRet.f32 %3209, 3
  %3214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3199, float %3203, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.ResRet.f32 %3214, 1
  %3217 = extractvalue %dx.types.ResRet.f32 %3214, 2
  %3218 = extractvalue %dx.types.ResRet.f32 %3214, 3
  %3219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3199, float %3203, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3220 = extractvalue %dx.types.ResRet.f32 %3219, 0
  %3221 = extractvalue %dx.types.ResRet.f32 %3219, 1
  %3222 = extractvalue %dx.types.ResRet.f32 %3219, 2
  %3223 = extractvalue %dx.types.ResRet.f32 %3219, 3
  %3224 = fmul fast float %3215, %3192
  %3225 = fmul fast float %3220, %3192
  %3226 = fmul fast float %3222, %3192
  %3227 = fmul fast float %3218, %3192
  %3228 = fadd fast float %3224, %3205
  %3229 = fadd fast float %3225, %3206
  %3230 = fadd fast float %3226, %3207
  %3231 = fadd fast float %3227, %3208
  %3232 = fmul fast float %3216, %3192
  %3233 = fmul fast float %3221, %3192
  %3234 = fadd fast float %3232, %3210
  %3235 = fadd fast float %3233, %3211
  %3236 = fmul fast float %3217, %3192
  %3237 = fmul fast float %3223, %3192
  %3238 = fadd fast float %3236, %3212
  %3239 = fadd fast float %3237, %3213
  %3240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3199, float %3203, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = extractvalue %dx.types.ResRet.f32 %3240, 3
  %3245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3199, float %3203, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.ResRet.f32 %3245, 1
  %3248 = extractvalue %dx.types.ResRet.f32 %3245, 2
  %3249 = extractvalue %dx.types.ResRet.f32 %3245, 3
  %3250 = fmul fast float %3241, %3193
  %3251 = fmul fast float %3246, %3193
  %3252 = fmul fast float %3248, %3193
  %3253 = fmul fast float %3244, %3193
  %3254 = fadd fast float %3228, %3250
  %3255 = fadd fast float %3229, %3251
  %3256 = fadd fast float %3230, %3252
  %3257 = fadd fast float %3231, %3253
  %3258 = fmul fast float %3242, %3193
  %3259 = fmul fast float %3247, %3193
  %3260 = fadd fast float %3234, %3258
  %3261 = fadd fast float %3235, %3259
  %3262 = fmul fast float %3243, %3193
  %3263 = fmul fast float %3249, %3193
  %3264 = fadd fast float %3238, %3262
  %3265 = fadd fast float %3239, %3263
  %3266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3199, float %3203, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = extractvalue %dx.types.ResRet.f32 %3266, 3
  %3271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3199, float %3203, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.ResRet.f32 %3271, 1
  %3274 = extractvalue %dx.types.ResRet.f32 %3271, 2
  %3275 = extractvalue %dx.types.ResRet.f32 %3271, 3
  %3276 = fmul fast float %3267, %3194
  %3277 = fmul fast float %3272, %3194
  %3278 = fmul fast float %3274, %3194
  %3279 = fmul fast float %3270, %3194
  %3280 = fadd fast float %3254, %3276
  %3281 = fadd fast float %3255, %3277
  %3282 = fadd fast float %3256, %3278
  %3283 = fadd fast float %3257, %3279
  %3284 = fmul fast float %3268, %3194
  %3285 = fmul fast float %3273, %3194
  %3286 = fadd fast float %3260, %3284
  %3287 = fadd fast float %3261, %3285
  %3288 = fmul fast float %3269, %3194
  %3289 = fmul fast float %3275, %3194
  %3290 = fadd fast float %3264, %3288
  %3291 = fadd fast float %3265, %3289
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = fsub fast float %2764, %3293
  %3295 = fsub fast float %3136, %2764
  %3296 = call float @dx.op.binary.f32(i32 35, float %3295, float %3294)  ; FMax(a,b)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3292, 1
  %3298 = fsub fast float %2765, %3297
  %3299 = fsub fast float %3137, %2765
  %3300 = call float @dx.op.binary.f32(i32 35, float %3299, float %3298)  ; FMax(a,b)
  %3301 = call float @dx.op.binary.f32(i32 35, float %3296, float %3300)  ; FMax(a,b)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3303 = fmul fast float %3302, %3301
  %3304 = call float @dx.op.unary.f32(i32 7, float %3303)  ; Saturate(value)
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.CBufRet.f32 %3305, 2
  %3309 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3310 = fsub fast float %3306, %3280
  %3311 = fsub fast float %3307, %3281
  %3312 = fsub fast float %3308, %3282
  %3313 = fsub fast float %3309, %3283
  %3314 = fmul fast float %3310, %3304
  %3315 = fmul fast float %3311, %3304
  %3316 = fmul fast float %3312, %3304
  %3317 = fmul fast float %3313, %3304
  %3318 = fadd fast float %3314, %3280
  %3319 = fadd fast float %3315, %3281
  %3320 = fadd fast float %3316, %3282
  %3321 = fadd fast float %3317, %3283
  %3322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3323 = extractvalue %dx.types.CBufRet.f32 %3322, 0
  %3324 = extractvalue %dx.types.CBufRet.f32 %3322, 1
  %3325 = fsub fast float %3323, %3286
  %3326 = fsub fast float %3324, %3287
  %3327 = fmul fast float %3325, %3304
  %3328 = fmul fast float %3326, %3304
  %3329 = fadd fast float %3327, %3286
  %3330 = fadd fast float %3328, %3287
  %3331 = extractvalue %dx.types.CBufRet.f32 %3322, 2
  %3332 = extractvalue %dx.types.CBufRet.f32 %3322, 3
  %3333 = fsub fast float %3331, %3290
  %3334 = fsub fast float %3332, %3291
  %3335 = fmul fast float %3333, %3304
  %3336 = fmul fast float %3334, %3304
  %3337 = fadd fast float %3335, %3290
  %3338 = fadd fast float %3336, %3291
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 0
  %3341 = fmul fast float %3340, %3318
  %3342 = fmul fast float %3340, %3319
  %3343 = fmul fast float %3340, %3320
  %3344 = fmul fast float %3340, %3321
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 0
  %3347 = fmul fast float %3346, %3329
  %3348 = fmul fast float %3346, %3330
  %3349 = fadd fast float %3347, %3341
  %3350 = fadd fast float %3348, %3343
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = fmul fast float %3352, %3337
  %3354 = fmul fast float %3352, %3338
  %3355 = fadd fast float %3349, %3353
  %3356 = fadd fast float %3350, %3354
  %3357 = extractvalue %dx.types.CBufRet.f32 %3339, 1
  %3358 = fmul fast float %3357, %3318
  %3359 = fmul fast float %3357, %3319
  %3360 = fmul fast float %3357, %3320
  %3361 = fmul fast float %3357, %3321
  %3362 = extractvalue %dx.types.CBufRet.f32 %3345, 1
  %3363 = fmul fast float %3362, %3329
  %3364 = fmul fast float %3362, %3330
  %3365 = fadd fast float %3363, %3358
  %3366 = fadd fast float %3364, %3360
  %3367 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3368 = fmul fast float %3367, %3337
  %3369 = fmul fast float %3367, %3338
  %3370 = fadd fast float %3365, %3368
  %3371 = fadd fast float %3366, %3369
  %3372 = extractvalue %dx.types.CBufRet.f32 %3339, 2
  %3373 = fmul fast float %3372, %3318
  %3374 = fmul fast float %3372, %3319
  %3375 = fmul fast float %3372, %3320
  %3376 = fmul fast float %3372, %3321
  %3377 = extractvalue %dx.types.CBufRet.f32 %3345, 2
  %3378 = fmul fast float %3377, %3329
  %3379 = fmul fast float %3377, %3330
  %3380 = fadd fast float %3378, %3373
  %3381 = fadd fast float %3379, %3375
  %3382 = extractvalue %dx.types.CBufRet.f32 %3351, 2
  %3383 = fmul fast float %3382, %3337
  %3384 = fmul fast float %3382, %3338
  %3385 = fadd fast float %3380, %3383
  %3386 = fadd fast float %3381, %3384
  %3387 = fmul fast float %3374, %3374
  %3388 = fmul fast float %3386, %3386
  %3389 = fmul fast float %3376, %3376
  %3390 = fadd fast float %3389, %3387
  %3391 = fadd fast float %3390, %3388
  %3392 = call float @dx.op.unary.f32(i32 24, float %3391)  ; Sqrt(value)
  %3393 = fcmp fast ugt float %3392, 0.000000e+00
  br i1 %3393, label %3394, label %3409

; <label>:3394                                    ; preds = %3128
  %3395 = fsub fast float -0.000000e+00, %3376
  %3396 = fdiv fast float %3395, %3392
  %3397 = fsub fast float -0.000000e+00, %3374
  %3398 = fdiv fast float %3397, %3392
  %3399 = fdiv fast float %3386, %3392
  %3400 = fmul fast float %3385, 0x3FE279A760000000
  %3401 = fmul fast float %3398, %3374
  %3402 = fmul fast float %3399, %3386
  %3403 = fmul fast float %3396, %3376
  %3404 = fadd fast float %3401, %3403
  %3405 = fsub fast float %3404, %3402
  %3406 = call float @dx.op.unary.f32(i32 6, float %3405)  ; FAbs(value)
  %3407 = fadd fast float %3406, 0x3DDB7CDFE0000000
  %3408 = fdiv fast float %3400, %3407
  br label %3409

; <label>:3409                                    ; preds = %3394, %3128
  %3410 = phi float [ %3408, %3394 ], [ 1.000000e+00, %3128 ]
  %3411 = fmul fast float %3359, %3359
  %3412 = fmul fast float %3371, %3371
  %3413 = fmul fast float %3361, %3361
  %3414 = fadd fast float %3413, %3411
  %3415 = fadd fast float %3414, %3412
  %3416 = call float @dx.op.unary.f32(i32 24, float %3415)  ; Sqrt(value)
  %3417 = fcmp fast ugt float %3416, 0.000000e+00
  br i1 %3417, label %3418, label %3433

; <label>:3418                                    ; preds = %3409
  %3419 = fsub fast float -0.000000e+00, %3361
  %3420 = fdiv fast float %3419, %3416
  %3421 = fsub fast float -0.000000e+00, %3359
  %3422 = fdiv fast float %3421, %3416
  %3423 = fdiv fast float %3371, %3416
  %3424 = fmul fast float %3370, 0x3FE279A760000000
  %3425 = fmul fast float %3422, %3359
  %3426 = fmul fast float %3423, %3371
  %3427 = fmul fast float %3420, %3361
  %3428 = fadd fast float %3425, %3427
  %3429 = fsub fast float %3428, %3426
  %3430 = call float @dx.op.unary.f32(i32 6, float %3429)  ; FAbs(value)
  %3431 = fadd fast float %3430, 0x3DDB7CDFE0000000
  %3432 = fdiv fast float %3424, %3431
  br label %3433

; <label>:3433                                    ; preds = %3418, %3409
  %3434 = phi float [ %3432, %3418 ], [ 1.000000e+00, %3409 ]
  %3435 = call float @dx.op.binary.f32(i32 36, float %3434, float %3410)  ; FMin(a,b)
  %3436 = fmul fast float %3342, %3342
  %3437 = fmul fast float %3356, %3356
  %3438 = fmul fast float %3344, %3344
  %3439 = fadd fast float %3438, %3436
  %3440 = fadd fast float %3439, %3437
  %3441 = call float @dx.op.unary.f32(i32 24, float %3440)  ; Sqrt(value)
  %3442 = fcmp fast ugt float %3441, 0.000000e+00
  br i1 %3442, label %3443, label %3458

; <label>:3443                                    ; preds = %3433
  %3444 = fsub fast float -0.000000e+00, %3344
  %3445 = fdiv fast float %3444, %3441
  %3446 = fsub fast float -0.000000e+00, %3342
  %3447 = fdiv fast float %3446, %3441
  %3448 = fdiv fast float %3356, %3441
  %3449 = fmul fast float %3355, 0x3FE279A760000000
  %3450 = fmul fast float %3447, %3342
  %3451 = fmul fast float %3448, %3356
  %3452 = fmul fast float %3445, %3344
  %3453 = fadd fast float %3450, %3452
  %3454 = fsub fast float %3453, %3451
  %3455 = call float @dx.op.unary.f32(i32 6, float %3454)  ; FAbs(value)
  %3456 = fadd fast float %3455, 0x3DDB7CDFE0000000
  %3457 = fdiv fast float %3449, %3456
  br label %3458

; <label>:3458                                    ; preds = %3443, %3433
  %3459 = phi float [ %3457, %3443 ], [ 1.000000e+00, %3433 ]
  %3460 = call float @dx.op.binary.f32(i32 36, float %3459, float %3435)  ; FMin(a,b)
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = fcmp fast olt float %3461, 1.000000e+00
  br i1 %3462, label %3463, label %3473

; <label>:3463                                    ; preds = %3458
  %3464 = fmul fast float %3461, %3342
  %3465 = fmul fast float %3461, %3356
  %3466 = fmul fast float %3461, %3344
  %3467 = fmul fast float %3461, %3359
  %3468 = fmul fast float %3461, %3371
  %3469 = fmul fast float %3461, %3361
  %3470 = fmul fast float %3461, %3374
  %3471 = fmul fast float %3461, %3386
  %3472 = fmul fast float %3461, %3376
  br label %3473

; <label>:3473                                    ; preds = %3463, %3458
  %3474 = phi float [ %3470, %3463 ], [ %3374, %3458 ]
  %3475 = phi float [ %3471, %3463 ], [ %3386, %3458 ]
  %3476 = phi float [ %3472, %3463 ], [ %3376, %3458 ]
  %3477 = phi float [ %3467, %3463 ], [ %3359, %3458 ]
  %3478 = phi float [ %3468, %3463 ], [ %3371, %3458 ]
  %3479 = phi float [ %3469, %3463 ], [ %3361, %3458 ]
  %3480 = phi float [ %3464, %3463 ], [ %3342, %3458 ]
  %3481 = phi float [ %3465, %3463 ], [ %3356, %3458 ]
  %3482 = phi float [ %3466, %3463 ], [ %3344, %3458 ]
  %3483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3355)  ; FMax(a,b)
  %3484 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3370)  ; FMax(a,b)
  %3485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3385)  ; FMax(a,b)
  %3486 = fcmp fast oge float %3143, 0.000000e+00
  %3487 = and i1 %3486, %2914
  %3488 = fcmp fast ole float %3143, 1.000000e+00
  %3489 = and i1 %3488, %3487
  %3490 = fcmp fast oge float %3144, 0.000000e+00
  %3491 = and i1 %3490, %3489
  %3492 = fcmp fast ole float %3144, 1.000000e+00
  %3493 = and i1 %3492, %3491
  br i1 %3493, label %3494, label %3639, !dx.controlflow.hints !86

; <label>:3494                                    ; preds = %3473
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3497 = extractvalue %dx.types.CBufRet.f32 %3495, 3
  %3498 = fmul fast float %3496, %3143
  %3499 = fmul fast float %3497, %3144
  %3500 = call float @dx.op.unary.f32(i32 27, float %3498)  ; Round_ni(value)
  %3501 = call float @dx.op.unary.f32(i32 27, float %3499)  ; Round_ni(value)
  %3502 = fptosi float %3500 to i32
  %3503 = fptosi float %3501 to i32
  %3504 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3502, i32 %3503, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 65535
  %3507 = lshr i32 %3505, 16
  %3508 = icmp eq i32 %3506, 65535
  br i1 %3508, label %3545, label %3509

; <label>:3509                                    ; preds = %3494
  %3510 = extractvalue %dx.types.CBufRet.f32 %2912, 1
  %3511 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3512 = extractvalue %dx.types.CBufRet.f32 %3495, 1
  %3513 = fmul fast float %3511, %3143
  %3514 = fmul fast float %3512, %3144
  %3515 = fmul fast float %3513, 1.250000e-01
  %3516 = fmul fast float %3514, 1.250000e-01
  %3517 = call float @dx.op.unary.f32(i32 27, float %3515)  ; Round_ni(value)
  %3518 = call float @dx.op.unary.f32(i32 27, float %3516)  ; Round_ni(value)
  %3519 = fmul fast float %3517, 8.000000e+00
  %3520 = fmul fast float %3518, 8.000000e+00
  %3521 = and i32 %3505, 255
  %3522 = lshr i32 %3505, 8
  %3523 = and i32 %3522, 255
  %3524 = mul nuw nsw i32 %3521, 9
  %3525 = uitofp i32 %3524 to float
  %3526 = mul nuw nsw i32 %3523, 9
  %3527 = uitofp i32 %3526 to float
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fadd fast float %3528, %3513
  %3530 = fsub fast float %3529, %3519
  %3531 = fadd fast float %3527, 5.000000e-01
  %3532 = fadd fast float %3531, %3514
  %3533 = fsub fast float %3532, %3520
  %3534 = fdiv fast float %3530, %2913
  %3535 = fdiv fast float %3533, %3510
  %3536 = fmul fast float %3171, 4.375000e-01
  %3537 = fadd fast float %3536, 3.125000e-02
  %3538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3534, float %3535, float %3537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = fadd fast float %3539, %3483
  %3543 = fadd fast float %3540, %3484
  %3544 = fadd fast float %3541, %3485
  br label %3545

; <label>:3545                                    ; preds = %3509, %3494
  %3546 = phi float [ %3544, %3509 ], [ %3485, %3494 ]
  %3547 = phi float [ %3543, %3509 ], [ %3484, %3494 ]
  %3548 = phi float [ %3542, %3509 ], [ %3483, %3494 ]
  %3549 = icmp eq i32 %3507, 65535
  br i1 %3549, label %3639, label %3550

; <label>:3550                                    ; preds = %3545
  %3551 = extractvalue %dx.types.CBufRet.f32 %2912, 1
  %3552 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3553 = extractvalue %dx.types.CBufRet.f32 %3495, 1
  %3554 = fmul fast float %3552, %3143
  %3555 = fmul fast float %3553, %3144
  %3556 = fmul fast float %3554, 1.250000e-01
  %3557 = fmul fast float %3555, 1.250000e-01
  %3558 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3559 = call float @dx.op.unary.f32(i32 27, float %3557)  ; Round_ni(value)
  %3560 = fmul fast float %3558, 8.000000e+00
  %3561 = fmul fast float %3559, 8.000000e+00
  %3562 = fsub fast float %3554, %3560
  %3563 = fsub fast float %3555, %3561
  %3564 = fadd fast float %3562, 5.000000e-01
  %3565 = fadd fast float %3563, 5.000000e-01
  %3566 = and i32 %3507, 255
  %3567 = lshr i32 %3505, 24
  %3568 = mul nuw nsw i32 %3566, 9
  %3569 = uitofp i32 %3568 to float
  %3570 = mul nuw nsw i32 %3567, 9
  %3571 = uitofp i32 %3570 to float
  %3572 = fadd fast float %3564, %3569
  %3573 = fadd fast float %3565, %3571
  %3574 = fdiv fast float %3572, %2913
  %3575 = fdiv fast float %3573, %3551
  %3576 = fmul fast float %3171, 4.375000e-01
  %3577 = fadd fast float %3576, 3.125000e-02
  %3578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3574, float %3575, float %3577, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = fadd fast float %3576, 5.312500e-01
  %3583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3574, float %3575, float %3582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = fmul fast float %3584, 2.000000e+00
  %3588 = fmul fast float %3585, 2.000000e+00
  %3589 = fmul fast float %3586, 2.000000e+00
  %3590 = fadd fast float %3587, -1.000000e+00
  %3591 = fadd fast float %3588, -1.000000e+00
  %3592 = fadd fast float %3589, -1.000000e+00
  %3593 = fmul fast float %3590, %3590
  %3594 = fmul fast float %3591, %3591
  %3595 = fadd fast float %3593, %3594
  %3596 = fmul fast float %3592, %3592
  %3597 = fadd fast float %3595, %3596
  %3598 = call float @dx.op.unary.f32(i32 24, float %3597)  ; Sqrt(value)
  %3599 = fcmp fast ogt float %3598, 0.000000e+00
  br i1 %3599, label %3600, label %3604

; <label>:3600                                    ; preds = %3550
  %3601 = fdiv fast float %3590, %3598
  %3602 = fdiv fast float %3591, %3598
  %3603 = fdiv fast float %3592, %3598
  br label %3604

; <label>:3604                                    ; preds = %3600, %3550
  %3605 = phi float [ %3601, %3600 ], [ 0.000000e+00, %3550 ]
  %3606 = phi float [ %3602, %3600 ], [ 0.000000e+00, %3550 ]
  %3607 = phi float [ %3603, %3600 ], [ 0.000000e+00, %3550 ]
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3611 = fsub fast float %2764, %3609
  %3612 = fsub fast float %2765, %3610
  %3613 = fmul fast float %3611, %3611
  %3614 = fmul fast float %3612, %3612
  %3615 = fadd fast float %3613, %3614
  %3616 = call float @dx.op.unary.f32(i32 24, float %3615)  ; Sqrt(value)
  %3617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.CBufRet.f32 %3617, 1
  %3620 = fsub fast float %3616, %3618
  %3621 = fdiv fast float %3620, %3619
  %3622 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  %3623 = fmul fast float %3622, 2.000000e+00
  %3624 = fsub fast float 3.000000e+00, %3623
  %3625 = fmul fast float %3622, %3622
  %3626 = fmul fast float %3625, %3624
  %3627 = call float @dx.op.dot3.f32(i32 55, float %3605, float %3606, float %3607, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3628 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3627)  ; FMax(a,b)
  %3629 = fmul fast float %3628, 0x400C5BF8A0000000
  %3630 = fmul fast float %3626, %3579
  %3631 = fmul fast float %3630, %3629
  %3632 = fadd fast float %3631, %3548
  %3633 = fmul fast float %3626, %3580
  %3634 = fmul fast float %3633, %3629
  %3635 = fadd fast float %3634, %3547
  %3636 = fmul fast float %3626, %3581
  %3637 = fmul fast float %3636, %3629
  %3638 = fadd fast float %3637, %3546
  br label %3639

; <label>:3639                                    ; preds = %3604, %3545, %3473
  %3640 = phi float [ %3638, %3604 ], [ %3546, %3545 ], [ %3485, %3473 ]
  %3641 = phi float [ %3635, %3604 ], [ %3547, %3545 ], [ %3484, %3473 ]
  %3642 = phi float [ %3632, %3604 ], [ %3548, %3545 ], [ %3483, %3473 ]
  %3643 = fcmp fast ogt float %3130, %3167
  %3644 = and i1 %3486, %3643
  %3645 = and i1 %3488, %3644
  %3646 = and i1 %3490, %3645
  %3647 = and i1 %3492, %3646
  br i1 %3647, label %3648, label %3705, !dx.controlflow.hints !87

; <label>:3648                                    ; preds = %3639
  %3649 = fmul fast float %3169, 0x3FC24924A0000000
  %3650 = fsub fast float %3130, %3167
  %3651 = fdiv fast float %3650, %3649
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 0
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3659 = fsub fast float %3654, %3642
  %3660 = fsub fast float %3656, %3480
  %3661 = fsub fast float %3657, %3481
  %3662 = fsub fast float %3658, %3482
  %3663 = fmul fast float %3659, %3652
  %3664 = fmul fast float %3660, %3652
  %3665 = fmul fast float %3661, %3652
  %3666 = fmul fast float %3662, %3652
  %3667 = fadd fast float %3663, %3642
  %3668 = fadd fast float %3664, %3480
  %3669 = fadd fast float %3665, %3481
  %3670 = fadd fast float %3666, %3482
  %3671 = extractvalue %dx.types.CBufRet.f32 %3653, 1
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.CBufRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3676 = fsub fast float %3671, %3641
  %3677 = fsub fast float %3673, %3477
  %3678 = fsub fast float %3674, %3478
  %3679 = fsub fast float %3675, %3479
  %3680 = fmul fast float %3676, %3652
  %3681 = fmul fast float %3677, %3652
  %3682 = fmul fast float %3678, %3652
  %3683 = fmul fast float %3679, %3652
  %3684 = fadd fast float %3680, %3641
  %3685 = fadd fast float %3681, %3477
  %3686 = fadd fast float %3682, %3478
  %3687 = fadd fast float %3683, %3479
  %3688 = extractvalue %dx.types.CBufRet.f32 %3653, 2
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3692 = extractvalue %dx.types.CBufRet.f32 %3689, 2
  %3693 = fsub fast float %3688, %3640
  %3694 = fsub fast float %3690, %3474
  %3695 = fsub fast float %3691, %3475
  %3696 = fsub fast float %3692, %3476
  %3697 = fmul fast float %3693, %3652
  %3698 = fmul fast float %3694, %3652
  %3699 = fmul fast float %3695, %3652
  %3700 = fmul fast float %3696, %3652
  %3701 = fadd fast float %3697, %3640
  %3702 = fadd fast float %3698, %3474
  %3703 = fadd fast float %3699, %3475
  %3704 = fadd fast float %3700, %3476
  br label %3705

; <label>:3705                                    ; preds = %3648, %3639
  %3706 = phi float [ %3701, %3648 ], [ %3640, %3639 ]
  %3707 = phi float [ %3702, %3648 ], [ %3474, %3639 ]
  %3708 = phi float [ %3703, %3648 ], [ %3475, %3639 ]
  %3709 = phi float [ %3704, %3648 ], [ %3476, %3639 ]
  %3710 = phi float [ %3684, %3648 ], [ %3641, %3639 ]
  %3711 = phi float [ %3685, %3648 ], [ %3477, %3639 ]
  %3712 = phi float [ %3686, %3648 ], [ %3478, %3639 ]
  %3713 = phi float [ %3687, %3648 ], [ %3479, %3639 ]
  %3714 = phi float [ %3667, %3648 ], [ %3642, %3639 ]
  %3715 = phi float [ %3668, %3648 ], [ %3480, %3639 ]
  %3716 = phi float [ %3669, %3648 ], [ %3481, %3639 ]
  %3717 = phi float [ %3670, %3648 ], [ %3482, %3639 ]
  %3718 = extractvalue %dx.types.CBufRet.f32 %3292, 3
  %3719 = fmul fast float %3718, %3714
  %3720 = fmul fast float %3718, %3710
  %3721 = fmul fast float %3718, %3706
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 3
  %3724 = fmul fast float %3719, %3723
  %3725 = fmul fast float %3720, %3723
  %3726 = fmul fast float %3721, %3723
  %3727 = fmul fast float %3715, 1.500000e+00
  %3728 = fmul fast float %3727, %3718
  %3729 = fmul fast float %3728, %3723
  %3730 = fmul fast float %3716, 1.500000e+00
  %3731 = fmul fast float %3730, %3718
  %3732 = fmul fast float %3731, %3723
  %3733 = fmul fast float %3717, 1.500000e+00
  %3734 = fmul fast float %3733, %3718
  %3735 = fmul fast float %3734, %3723
  %3736 = fmul fast float %3711, 1.500000e+00
  %3737 = fmul fast float %3736, %3718
  %3738 = fmul fast float %3737, %3723
  %3739 = fmul fast float %3712, 1.500000e+00
  %3740 = fmul fast float %3739, %3718
  %3741 = fmul fast float %3740, %3723
  %3742 = fmul fast float %3713, 1.500000e+00
  %3743 = fmul fast float %3742, %3718
  %3744 = fmul fast float %3743, %3723
  %3745 = fmul fast float %3707, 1.500000e+00
  %3746 = fmul fast float %3745, %3718
  %3747 = fmul fast float %3746, %3723
  %3748 = fmul fast float %3708, 1.500000e+00
  %3749 = fmul fast float %3748, %3718
  %3750 = fmul fast float %3749, %3723
  %3751 = fmul fast float %3709, 1.500000e+00
  %3752 = fmul fast float %3751, %3718
  %3753 = fmul fast float %3752, %3723
  %3754 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3724)  ; FMax(a,b)
  %3755 = call float @dx.op.dot3.f32(i32 55, float %3729, float %3732, float %3735, float %3729, float %3732, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %3756 = fcmp fast oeq float %3755, 0.000000e+00
  %3757 = fcmp fast oeq float %3754, 0.000000e+00
  %3758 = or i1 %3757, %3756
  br i1 %3758, label %3788, label %3759

; <label>:3759                                    ; preds = %3705
  %3760 = fsub fast float -0.000000e+00, %3735
  %3761 = fsub fast float -0.000000e+00, %3729
  %3762 = call float @dx.op.unary.f32(i32 24, float %3755)  ; Sqrt(value)
  %3763 = fdiv fast float %3762, %3754
  %3764 = fcmp fast ogt float %3763, 0x3FFB6F8900000000
  %3765 = select i1 %3764, float 0x3FFB6F8900000000, float %3763
  %3766 = fmul fast float %3765, 0x3FE8A23460000000
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = call float @dx.op.binary.f32(i32 35, float %3765, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3769 = fmul fast float %3767, %3754
  %3770 = fmul fast float %3768, 0x3FF279A740000000
  %3771 = fadd fast float %3770, -1.000000e+00
  %3772 = call float @dx.op.dot3.f32(i32 55, float %3760, float %3761, float %3732, float %3760, float %3761, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3773 = call float @dx.op.unary.f32(i32 25, float %3772)  ; Rsqrt(value)
  %3774 = fmul fast float %3773, %3760
  %3775 = fmul fast float %3773, %3761
  %3776 = fmul fast float %3773, %3732
  %3777 = fmul fast float %3771, %3771
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = fmul fast float %3768, 0x40005F8BE0000000
  %3780 = fsub fast float 0x400C5BF8A0000000, %3779
  %3781 = fdiv fast float %3769, %3780
  %3782 = fmul fast float %3781, 0x3FEE31C3C0000000
  %3783 = fmul fast float %3782, %3778
  %3784 = fmul fast float %3768, 0x3FDACB7480000000
  %3785 = fadd fast float %3784, 0xBFD7347680000000
  %3786 = fmul fast float %3785, %3781
  %3787 = fmul fast float %3786, %3778
  br label %3788

; <label>:3788                                    ; preds = %3759, %3705
  %3789 = phi float [ %3774, %3759 ], [ 0.000000e+00, %3705 ]
  %3790 = phi float [ %3775, %3759 ], [ 0.000000e+00, %3705 ]
  %3791 = phi float [ %3776, %3759 ], [ 0.000000e+00, %3705 ]
  %3792 = phi float [ %3783, %3759 ], [ 0.000000e+00, %3705 ]
  %3793 = phi float [ %3787, %3759 ], [ 0.000000e+00, %3705 ]
  %3794 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3790, float %3791, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3795 = fmul fast float %3794, %3794
  %3796 = fmul fast float %3795, 0x3FEE471020000000
  %3797 = fadd fast float %3796, 0xBFD42F6020000000
  %3798 = fmul fast float %3754, 0x3FD20DD760000000
  %3799 = fmul fast float %3797, %3793
  %3800 = fmul fast float %3792, 0x3FDF454380000000
  %3801 = fmul fast float %3800, %3794
  %3802 = fadd fast float %3801, %3798
  %3803 = fadd fast float %3802, %3799
  %3804 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3790, float %3791, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3805 = fmul fast float %3804, 0x3FDF454380000000
  %3806 = fmul fast float %3804, %3804
  %3807 = fmul fast float %3806, 0x3FEE471020000000
  %3808 = fadd fast float %3807, 0xBFD42F6020000000
  %3809 = call float @dx.op.dot3.f32(i32 55, float %3754, float %3792, float %3793, float 0x3FD20DD760000000, float %3805, float %3808)  ; Dot3(ax,ay,az,bx,by,bz)
  %3810 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3725)  ; FMax(a,b)
  %3811 = call float @dx.op.dot3.f32(i32 55, float %3738, float %3741, float %3744, float %3738, float %3741, float %3744)  ; Dot3(ax,ay,az,bx,by,bz)
  %3812 = fcmp fast oeq float %3811, 0.000000e+00
  %3813 = fcmp fast oeq float %3810, 0.000000e+00
  %3814 = or i1 %3813, %3812
  br i1 %3814, label %3844, label %3815

; <label>:3815                                    ; preds = %3788
  %3816 = fsub fast float -0.000000e+00, %3744
  %3817 = fsub fast float -0.000000e+00, %3738
  %3818 = call float @dx.op.unary.f32(i32 24, float %3811)  ; Sqrt(value)
  %3819 = fdiv fast float %3818, %3810
  %3820 = fcmp fast ogt float %3819, 0x3FFB6F8900000000
  %3821 = select i1 %3820, float 0x3FFB6F8900000000, float %3819
  %3822 = fmul fast float %3821, 0x3FE8A23460000000
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = call float @dx.op.binary.f32(i32 35, float %3821, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3825 = fmul fast float %3823, %3810
  %3826 = fmul fast float %3824, 0x3FF279A740000000
  %3827 = fadd fast float %3826, -1.000000e+00
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3816, float %3817, float %3741, float %3816, float %3817, float %3741)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = call float @dx.op.unary.f32(i32 25, float %3828)  ; Rsqrt(value)
  %3830 = fmul fast float %3829, %3816
  %3831 = fmul fast float %3829, %3817
  %3832 = fmul fast float %3829, %3741
  %3833 = fmul fast float %3827, %3827
  %3834 = fsub fast float 1.000000e+00, %3833
  %3835 = fmul fast float %3824, 0x40005F8BE0000000
  %3836 = fsub fast float 0x400C5BF8A0000000, %3835
  %3837 = fdiv fast float %3825, %3836
  %3838 = fmul fast float %3837, 0x3FEE31C3C0000000
  %3839 = fmul fast float %3838, %3834
  %3840 = fmul fast float %3824, 0x3FDACB7480000000
  %3841 = fadd fast float %3840, 0xBFD7347680000000
  %3842 = fmul fast float %3841, %3837
  %3843 = fmul fast float %3842, %3834
  br label %3844

; <label>:3844                                    ; preds = %3815, %3788
  %3845 = phi float [ %3830, %3815 ], [ 0.000000e+00, %3788 ]
  %3846 = phi float [ %3831, %3815 ], [ 0.000000e+00, %3788 ]
  %3847 = phi float [ %3832, %3815 ], [ 0.000000e+00, %3788 ]
  %3848 = phi float [ %3839, %3815 ], [ 0.000000e+00, %3788 ]
  %3849 = phi float [ %3843, %3815 ], [ 0.000000e+00, %3788 ]
  %3850 = call float @dx.op.dot3.f32(i32 55, float %3845, float %3846, float %3847, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = fmul fast float %3850, %3850
  %3852 = fmul fast float %3851, 0x3FEE471020000000
  %3853 = fadd fast float %3852, 0xBFD42F6020000000
  %3854 = fmul fast float %3810, 0x3FD20DD760000000
  %3855 = fmul fast float %3853, %3849
  %3856 = fmul fast float %3848, 0x3FDF454380000000
  %3857 = fmul fast float %3856, %3850
  %3858 = fadd fast float %3857, %3854
  %3859 = fadd fast float %3858, %3855
  %3860 = call float @dx.op.dot3.f32(i32 55, float %3845, float %3846, float %3847, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3861 = fmul fast float %3860, 0x3FDF454380000000
  %3862 = fmul fast float %3860, %3860
  %3863 = fmul fast float %3862, 0x3FEE471020000000
  %3864 = fadd fast float %3863, 0xBFD42F6020000000
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3848, float %3849, float 0x3FD20DD760000000, float %3861, float %3864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3726)  ; FMax(a,b)
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3747, float %3750, float %3753, float %3747, float %3750, float %3753)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = fcmp fast oeq float %3867, 0.000000e+00
  %3869 = fcmp fast oeq float %3866, 0.000000e+00
  %3870 = or i1 %3869, %3868
  br i1 %3870, label %3900, label %3871

; <label>:3871                                    ; preds = %3844
  %3872 = fsub fast float -0.000000e+00, %3753
  %3873 = fsub fast float -0.000000e+00, %3747
  %3874 = call float @dx.op.unary.f32(i32 24, float %3867)  ; Sqrt(value)
  %3875 = fdiv fast float %3874, %3866
  %3876 = fcmp fast ogt float %3875, 0x3FFB6F8900000000
  %3877 = select i1 %3876, float 0x3FFB6F8900000000, float %3875
  %3878 = fmul fast float %3877, 0x3FE8A23460000000
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = call float @dx.op.binary.f32(i32 35, float %3877, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3881 = fmul fast float %3879, %3866
  %3882 = fmul fast float %3880, 0x3FF279A740000000
  %3883 = fadd fast float %3882, -1.000000e+00
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3750, float %3872, float %3873, float %3750)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = call float @dx.op.unary.f32(i32 25, float %3884)  ; Rsqrt(value)
  %3886 = fmul fast float %3885, %3872
  %3887 = fmul fast float %3885, %3873
  %3888 = fmul fast float %3885, %3750
  %3889 = fmul fast float %3883, %3883
  %3890 = fsub fast float 1.000000e+00, %3889
  %3891 = fmul fast float %3880, 0x40005F8BE0000000
  %3892 = fsub fast float 0x400C5BF8A0000000, %3891
  %3893 = fdiv fast float %3881, %3892
  %3894 = fmul fast float %3893, 0x3FEE31C3C0000000
  %3895 = fmul fast float %3894, %3890
  %3896 = fmul fast float %3880, 0x3FDACB7480000000
  %3897 = fadd fast float %3896, 0xBFD7347680000000
  %3898 = fmul fast float %3897, %3893
  %3899 = fmul fast float %3898, %3890
  br label %3900

; <label>:3900                                    ; preds = %3871, %3844
  %3901 = phi float [ %3886, %3871 ], [ 0.000000e+00, %3844 ]
  %3902 = phi float [ %3887, %3871 ], [ 0.000000e+00, %3844 ]
  %3903 = phi float [ %3888, %3871 ], [ 0.000000e+00, %3844 ]
  %3904 = phi float [ %3895, %3871 ], [ 0.000000e+00, %3844 ]
  %3905 = phi float [ %3899, %3871 ], [ 0.000000e+00, %3844 ]
  %3906 = call float @dx.op.dot3.f32(i32 55, float %3901, float %3902, float %3903, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3907 = fmul fast float %3906, %3906
  %3908 = fmul fast float %3907, 0x3FEE471020000000
  %3909 = fadd fast float %3908, 0xBFD42F6020000000
  %3910 = fmul fast float %3866, 0x3FD20DD760000000
  %3911 = fmul fast float %3909, %3905
  %3912 = fmul fast float %3904, 0x3FDF454380000000
  %3913 = fmul fast float %3912, %3906
  %3914 = fadd fast float %3913, %3910
  %3915 = fadd fast float %3914, %3911
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3901, float %3902, float %3903, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = fmul fast float %3916, 0x3FDF454380000000
  %3918 = fmul fast float %3916, %3916
  %3919 = fmul fast float %3918, 0x3FEE471020000000
  %3920 = fadd fast float %3919, 0xBFD42F6020000000
  %3921 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3904, float %3905, float 0x3FD20DD760000000, float %3917, float %3920)  ; Dot3(ax,ay,az,bx,by,bz)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3803, float 0.000000e+00)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3859, float 0.000000e+00)  ; FMax(a,b)
  %3924 = call float @dx.op.binary.f32(i32 35, float %3915, float 0.000000e+00)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float %3809, float 0.000000e+00)  ; FMax(a,b)
  %3926 = call float @dx.op.binary.f32(i32 35, float %3865, float 0.000000e+00)  ; FMax(a,b)
  %3927 = call float @dx.op.binary.f32(i32 35, float %3921, float 0.000000e+00)  ; FMax(a,b)
  %3928 = fsub fast float %3124, %3922
  %3929 = fsub fast float %3125, %3923
  %3930 = fsub fast float %3126, %3924
  %3931 = fmul fast float %3928, %2805
  %3932 = fmul fast float %3929, %2805
  %3933 = fmul fast float %3930, %2805
  %3934 = fadd fast float %3931, %3922
  %3935 = fadd fast float %3932, %3923
  %3936 = fadd fast float %3933, %3924
  %3937 = fsub fast float %3121, %3925
  %3938 = fsub fast float %3122, %3926
  %3939 = fsub fast float %3123, %3927
  %3940 = fmul fast float %3937, %2805
  %3941 = fmul fast float %3938, %2805
  %3942 = fmul fast float %3939, %2805
  %3943 = fadd fast float %3940, %3925
  %3944 = fadd fast float %3941, %3926
  %3945 = fadd fast float %3942, %3927
  br label %3946

; <label>:3946                                    ; preds = %3900, %3120
  %3947 = phi float [ %3943, %3900 ], [ %3121, %3120 ]
  %3948 = phi float [ %3944, %3900 ], [ %3122, %3120 ]
  %3949 = phi float [ %3945, %3900 ], [ %3123, %3120 ]
  %3950 = phi float [ %3934, %3900 ], [ %3124, %3120 ]
  %3951 = phi float [ %3935, %3900 ], [ %3125, %3120 ]
  %3952 = phi float [ %3936, %3900 ], [ %3126, %3120 ]
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = call float @dx.op.binary.f32(i32 36, float %2738, float %3954)  ; FMin(a,b)
  %3956 = fsub fast float 1.000000e+00, %2757
  %3957 = fmul fast float %3955, %3956
  %3958 = fsub fast float 1.000000e+00, %3957
  %3959 = bitcast float %3958 to i32
  %3960 = sub nsw i32 2129859010, %3959
  %3961 = bitcast i32 %3960 to float
  %3962 = call float @dx.op.binary.f32(i32 36, float %2739, float %3954)  ; FMin(a,b)
  %3963 = fmul fast float %3962, %3956
  %3964 = fsub fast float 1.000000e+00, %3963
  %3965 = bitcast float %3964 to i32
  %3966 = sub nsw i32 2129859010, %3965
  %3967 = bitcast i32 %3966 to float
  %3968 = call float @dx.op.binary.f32(i32 36, float %2740, float %3954)  ; FMin(a,b)
  %3969 = fmul fast float %3968, %3956
  %3970 = fsub fast float 1.000000e+00, %3969
  %3971 = bitcast float %3970 to i32
  %3972 = sub nsw i32 2129859010, %3971
  %3973 = bitcast i32 %3972 to float
  %3974 = fmul fast float %3950, %2757
  %3975 = fmul fast float %3974, %3961
  %3976 = fmul fast float %3951, %2757
  %3977 = fmul fast float %3976, %3967
  %3978 = fmul fast float %3952, %2757
  %3979 = fmul fast float %3978, %3973
  %3980 = call float @dx.op.binary.f32(i32 36, float %2735, float %3954)  ; FMin(a,b)
  %3981 = fmul fast float %3980, %3956
  %3982 = fsub fast float 1.000000e+00, %3981
  %3983 = bitcast float %3982 to i32
  %3984 = sub nsw i32 2129859010, %3983
  %3985 = bitcast i32 %3984 to float
  %3986 = call float @dx.op.binary.f32(i32 36, float %2736, float %3954)  ; FMin(a,b)
  %3987 = fmul fast float %3986, %3956
  %3988 = fsub fast float 1.000000e+00, %3987
  %3989 = bitcast float %3988 to i32
  %3990 = sub nsw i32 2129859010, %3989
  %3991 = bitcast i32 %3990 to float
  %3992 = call float @dx.op.binary.f32(i32 36, float %2746, float %3954)  ; FMin(a,b)
  %3993 = fmul fast float %3992, %3956
  %3994 = fsub fast float 1.000000e+00, %3993
  %3995 = bitcast float %3994 to i32
  %3996 = sub nsw i32 2129859010, %3995
  %3997 = bitcast i32 %3996 to float
  %3998 = fmul fast float %3947, %2757
  %3999 = fmul fast float %3998, %3985
  %4000 = fmul fast float %3948, %2757
  %4001 = fmul fast float %4000, %3991
  %4002 = fmul fast float %3949, %2757
  %4003 = fmul fast float %4002, %3997
  %4004 = call float @dx.op.dot3.f32(i32 55, float %3975, float %3977, float %3979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = select i1 %189, float 0.000000e+00, float %3975
  %4006 = select i1 %189, float %4004, float %3977
  %4007 = select i1 %189, float 0.000000e+00, float %3979
  %4008 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4001, float %4003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = select i1 %189, float 0.000000e+00, float %3999
  %4010 = select i1 %189, float %4008, float %4001
  %4011 = select i1 %189, float 0.000000e+00, float %4003
  %4012 = fmul fast float %2748, 9.843750e-01
  %4013 = fmul fast float %2744, 9.843750e-01
  %4014 = fadd fast float %4012, 7.812500e-03
  %4015 = fadd fast float %4013, 7.812500e-03
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4014, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4019 = fmul fast float %4017, %2735
  %4020 = fmul fast float %4017, %2736
  %4021 = fmul fast float %4017, %2746
  %4022 = fadd fast float %4019, %4018
  %4023 = fadd fast float %4020, %4018
  %4024 = fadd fast float %4021, %4018
  %4025 = fcmp fast ogt float %2112, 0.000000e+00
  br i1 %4025, label %4026, label %4052

; <label>:4026                                    ; preds = %3946
  %4027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2112, float %2748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.ResRet.f32 %4027, 1
  %4030 = extractvalue %dx.types.ResRet.f32 %4027, 2
  %4031 = fadd fast float %4028, -5.000000e-01
  %4032 = fadd fast float %4029, -5.000000e-01
  %4033 = fadd fast float %4030, -5.000000e-01
  %4034 = fsub fast float 1.000000e+00, %2735
  %4035 = fsub fast float 1.000000e+00, %2736
  %4036 = fsub fast float 1.000000e+00, %2746
  %4037 = fmul fast float %2735, 4.000000e+00
  %4038 = fmul fast float %4037, %4034
  %4039 = fmul fast float %4038, %4031
  %4040 = fmul fast float %2736, 4.000000e+00
  %4041 = fmul fast float %4040, %4035
  %4042 = fmul fast float %4041, %4032
  %4043 = fmul fast float %2746, 4.000000e+00
  %4044 = fmul fast float %4043, %4036
  %4045 = fmul fast float %4044, %4033
  %4046 = fadd fast float %4039, %4022
  %4047 = fadd fast float %4042, %4023
  %4048 = fadd fast float %4045, %4024
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  br label %4052

; <label>:4052                                    ; preds = %4026, %3946
  %4053 = phi float [ %4049, %4026 ], [ %4022, %3946 ]
  %4054 = phi float [ %4050, %4026 ], [ %4023, %3946 ]
  %4055 = phi float [ %4051, %4026 ], [ %4024, %3946 ]
  %4056 = call float @dx.op.binary.f32(i32 35, float %4054, float %4055)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 35, float %4053, float %4056)  ; FMax(a,b)
  %4058 = fsub fast float 1.000000e+00, %4057
  %4059 = fmul fast float %4058, %4005
  %4060 = fmul fast float %4058, %4006
  %4061 = fmul fast float %4058, %4007
  %4062 = call float @dx.op.dot3.f32(i32 55, float %2738, float %2739, float %2740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4063 = fcmp fast ogt float %4062, 0x3E7FF19E20000000
  %4064 = fdiv fast float 1.000000e+00, %4062
  %4065 = select i1 %4063, float %4064, float 0.000000e+00
  %4066 = fmul fast float %4065, %2738
  %4067 = fmul fast float %4065, %2739
  %4068 = fmul fast float %4065, %2740
  %4069 = fadd fast float %4066, -1.000000e+00
  %4070 = fadd fast float %4067, -1.000000e+00
  %4071 = fadd fast float %4068, -1.000000e+00
  %4072 = fmul fast float %4069, 5.000000e-01
  %4073 = fmul fast float %4070, 5.000000e-01
  %4074 = fmul fast float %4071, 5.000000e-01
  %4075 = fadd fast float %4072, 1.000000e+00
  %4076 = fadd fast float %4073, 1.000000e+00
  %4077 = fadd fast float %4074, 1.000000e+00
  %4078 = fmul fast float %4053, %4009
  %4079 = fmul fast float %4054, %4010
  %4080 = fmul fast float %4055, %4011
  %4081 = fsub fast float 1.000000e+00, %2748
  %4082 = bitcast float %4081 to i32
  %4083 = sitofp i32 %4082 to float
  %4084 = fmul fast float %4083, 5.000000e+00
  %4085 = fadd fast float %4084, 0xC1EFBF8940000000
  %4086 = fptosi float %4085 to i32
  %4087 = bitcast i32 %4086 to float
  %4088 = fmul fast float %4087, %2111
  %4089 = fmul fast float %4005, %4088
  %4090 = fmul fast float %4089, %4058
  %4091 = fmul fast float %4090, %4075
  %4092 = fmul fast float %4006, %4088
  %4093 = fmul fast float %4092, %4058
  %4094 = fmul fast float %4093, %4076
  %4095 = fmul fast float %4007, %4088
  %4096 = fmul fast float %4095, %4058
  %4097 = fmul fast float %4096, %4077
  %4098 = fmul fast float %4059, %2132
  %4099 = fmul fast float %4060, %2132
  %4100 = fmul fast float %4061, %2132
  %4101 = fadd fast float %4078, %2113
  %4102 = fadd fast float %4101, %4091
  %4103 = fmul fast float %4102, %2132
  %4104 = fadd fast float %4079, %2114
  %4105 = fadd fast float %4104, %4094
  %4106 = fmul fast float %4105, %2132
  %4107 = fadd fast float %4080, %2115
  %4108 = fadd fast float %4107, %4097
  %4109 = fmul fast float %4108, %2132
  %4110 = bitcast i32 %2760 to float
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4113 = fcmp fast oeq float %4112, 0.000000e+00
  br i1 %4113, label %4341, label %4114

; <label>:4114                                    ; preds = %4052
  %4115 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4116 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4117 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.CBufRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.CBufRet.f32 %4118, 2
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4125 = call float @dx.op.dot3.f32(i32 55, float %4119, float %4120, float %4121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4126 = select i1 %189, float %4123, float %4119
  %4127 = select i1 %189, float %4125, float %4120
  %4128 = select i1 %189, float %4124, float %4121
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4131 = fcmp fast une float %4130, 0.000000e+00
  br i1 %4131, label %4132, label %4149

; <label>:4132                                    ; preds = %4114
  %4133 = fptoui float %71 to i32
  %4134 = fptoui float %72 to i32
  %4135 = lshr i32 %4133, 4
  %4136 = lshr i32 %4134, 4
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 0
  %4139 = fptoui float %4138 to i32
  %4140 = add i32 %4139, 15
  %4141 = lshr i32 %4140, 4
  %4142 = mul i32 %4141, %4136
  %4143 = add i32 %4142, %4135
  %4144 = shl i32 %4143, 3
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = and i32 %4146, -268435456
  %4148 = icmp eq i32 %4147, -1342177280
  br i1 %4148, label %4159, label %4149

; <label>:4149                                    ; preds = %4132, %4114
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 2
  %4152 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4153 = fmul fast float %4151, %71
  %4154 = fmul fast float %4152, %72
  %4155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4153, float %4154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.ResRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.ResRet.f32 %4155, 2
  br label %4159

; <label>:4159                                    ; preds = %4149, %4132
  %4160 = phi float [ %4156, %4149 ], [ 0.000000e+00, %4132 ]
  %4161 = phi float [ %4157, %4149 ], [ 0.000000e+00, %4132 ]
  %4162 = phi float [ %4158, %4149 ], [ 0.000000e+00, %4132 ]
  %4163 = call float @dx.op.binary.f32(i32 36, float %4161, float %4162)  ; FMin(a,b)
  %4164 = call float @dx.op.binary.f32(i32 36, float %4160, float %4163)  ; FMin(a,b)
  %4165 = fcmp fast ogt float %4164, 0.000000e+00
  br i1 %4165, label %4166, label %4341, !dx.controlflow.hints !88

; <label>:4166                                    ; preds = %4159
  %4167 = fmul fast float %4160, %4126
  %4168 = fmul fast float %4161, %4127
  %4169 = fmul fast float %4162, %4128
  %4170 = fsub fast float %4115, %2734
  %4171 = fsub fast float %4116, %2733
  %4172 = fsub fast float %4117, %2732
  %4173 = call float @dx.op.dot3.f32(i32 55, float %4170, float %4171, float %4172, float %4170, float %4171, float %4172)  ; Dot3(ax,ay,az,bx,by,bz)
  %4174 = call float @dx.op.unary.f32(i32 25, float %4173)  ; Rsqrt(value)
  %4175 = fmul fast float %4174, %4170
  %4176 = fmul fast float %4174, %4171
  %4177 = fmul fast float %4174, %4172
  %4178 = call float @dx.op.dot3.f32(i32 55, float %4115, float %4116, float %4117, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4179 = call float @dx.op.dot3.f32(i32 55, float %2731, float %2730, float %2729, float %4175, float %4176, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4181 = fmul fast float %4180, %4180
  %4182 = fmul fast float %4181, %4110
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fmul fast float %4183, %4180
  %4185 = call float @dx.op.dot3.f32(i32 55, float %2741, float %2742, float %2743, float %4175, float %4176, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4186 = fmul fast float %4185, %4185
  %4187 = call float @dx.op.unary.f32(i32 6, float %4178)  ; FAbs(value)
  %4188 = fsub fast float 1.000000e+00, %2744
  %4189 = call float @dx.op.binary.f32(i32 35, float %4188, float 0x3F847AE140000000)  ; FMax(a,b)
  %4190 = fmul fast float %4189, %4189
  %4191 = fmul fast float %4190, %4190
  %4192 = fsub fast float 1.000000e+00, %4191
  %4193 = fmul fast float %2748, %2748
  %4194 = fmul fast float %4193, %4192
  %4195 = fadd fast float %4194, %4191
  %4196 = bitcast float %4195 to i32
  %4197 = ashr i32 %4196, 1
  %4198 = add nsw i32 %4197, 532487669
  %4199 = bitcast i32 %4198 to float
  %4200 = fadd fast float %4199, %2748
  %4201 = fmul fast float %4191, %4186
  %4202 = fsub fast float 1.000000e+00, %4186
  %4203 = fadd fast float %4202, %4201
  %4204 = fmul fast float %4187, %4187
  %4205 = fmul fast float %4204, %4192
  %4206 = fadd fast float %4205, %4191
  %4207 = bitcast float %4206 to i32
  %4208 = ashr i32 %4207, 1
  %4209 = add nsw i32 %4208, 532487669
  %4210 = bitcast i32 %4209 to float
  %4211 = fadd fast float %4210, %4187
  %4212 = fmul fast float %4203, %4203
  %4213 = fmul fast float %4212, %4200
  %4214 = fmul fast float %4213, %4211
  %4215 = fdiv fast float 0x3FF0A00000000000, %4214
  %4216 = fmul fast float %4215, %4191
  %4217 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4218 = fsub fast float 1.000000e+00, %4217
  %4219 = bitcast float %4218 to i32
  %4220 = sitofp i32 %4219 to float
  %4221 = fmul fast float %4220, 5.000000e+00
  %4222 = fadd fast float %4221, 0xC1EFBF8940000000
  %4223 = fptosi float %4222 to i32
  %4224 = bitcast i32 %4223 to float
  %4225 = fsub fast float 1.000000e+00, %2735
  %4226 = fsub fast float 1.000000e+00, %2736
  %4227 = fsub fast float 1.000000e+00, %2746
  %4228 = fmul fast float %4224, %4225
  %4229 = fmul fast float %4224, %4226
  %4230 = fmul fast float %4224, %4227
  %4231 = fadd fast float %4228, %2735
  %4232 = fadd fast float %4229, %2736
  %4233 = fadd fast float %4230, %2746
  br i1 %4025, label %4234, label %4257

; <label>:4234                                    ; preds = %4166
  %4235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2112, float %4217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = fadd fast float %4236, -5.000000e-01
  %4240 = fadd fast float %4237, -5.000000e-01
  %4241 = fadd fast float %4238, -5.000000e-01
  %4242 = fmul fast float %2735, 4.000000e+00
  %4243 = fmul fast float %4242, %4225
  %4244 = fmul fast float %4243, %4239
  %4245 = fmul fast float %2736, 4.000000e+00
  %4246 = fmul fast float %4245, %4226
  %4247 = fmul fast float %4246, %4240
  %4248 = fmul fast float %2746, 4.000000e+00
  %4249 = fmul fast float %4248, %4227
  %4250 = fmul fast float %4249, %4241
  %4251 = fadd fast float %4244, %4231
  %4252 = fadd fast float %4247, %4232
  %4253 = fadd fast float %4250, %4233
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  br label %4257

; <label>:4257                                    ; preds = %4234, %4166
  %4258 = phi float [ %4254, %4234 ], [ %4231, %4166 ]
  %4259 = phi float [ %4255, %4234 ], [ %4232, %4166 ]
  %4260 = phi float [ %4256, %4234 ], [ %4233, %4166 ]
  %4261 = fmul fast float %4178, 9.843750e-01
  %4262 = fadd fast float %4261, 7.812500e-03
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4262, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 2
  %4265 = extractvalue %dx.types.ResRet.f32 %4263, 3
  %4266 = fmul fast float %4264, %2735
  %4267 = fmul fast float %4264, %2736
  %4268 = fmul fast float %4264, %2746
  %4269 = fadd fast float %4266, %4265
  %4270 = fadd fast float %4267, %4265
  %4271 = fadd fast float %4268, %4265
  br i1 %4025, label %4272, label %4295

; <label>:4272                                    ; preds = %4257
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2112, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.ResRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.ResRet.f32 %4273, 2
  %4277 = fadd fast float %4274, -5.000000e-01
  %4278 = fadd fast float %4275, -5.000000e-01
  %4279 = fadd fast float %4276, -5.000000e-01
  %4280 = fmul fast float %2735, 4.000000e+00
  %4281 = fmul fast float %4280, %4225
  %4282 = fmul fast float %4281, %4277
  %4283 = fmul fast float %2736, 4.000000e+00
  %4284 = fmul fast float %4283, %4226
  %4285 = fmul fast float %4284, %4278
  %4286 = fmul fast float %2746, 4.000000e+00
  %4287 = fmul fast float %4286, %4227
  %4288 = fmul fast float %4287, %4279
  %4289 = fadd fast float %4282, %4269
  %4290 = fadd fast float %4285, %4270
  %4291 = fadd fast float %4288, %4271
  %4292 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4293 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4294 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  br label %4295

; <label>:4295                                    ; preds = %4272, %4257
  %4296 = phi float [ %4292, %4272 ], [ %4269, %4257 ]
  %4297 = phi float [ %4293, %4272 ], [ %4270, %4257 ]
  %4298 = phi float [ %4294, %4272 ], [ %4271, %4257 ]
  %4299 = call float @dx.op.binary.f32(i32 35, float %4297, float %4298)  ; FMax(a,b)
  %4300 = call float @dx.op.binary.f32(i32 35, float %4296, float %4299)  ; FMax(a,b)
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4258, %4216
  %4303 = fmul fast float %4259, %4216
  %4304 = fmul fast float %4260, %4216
  %4305 = fsub fast float 1.000000e+00, %4179
  %4306 = bitcast float %4305 to i32
  %4307 = sitofp i32 %4306 to float
  %4308 = fmul fast float %4307, 5.000000e+00
  %4309 = fadd fast float %4308, 0xC1EFBF8940000000
  %4310 = fptosi float %4309 to i32
  %4311 = bitcast i32 %4310 to float
  %4312 = fmul fast float %4311, %2111
  %4313 = fmul fast float %4301, %4312
  %4314 = fmul fast float %4313, %4075
  %4315 = fmul fast float %4313, %4076
  %4316 = fmul fast float %4313, %4077
  %4317 = fadd fast float %4314, %4302
  %4318 = fadd fast float %4315, %4303
  %4319 = fadd fast float %4316, %4304
  %4320 = fmul fast float %4184, %4167
  %4321 = fmul fast float %4320, %4301
  %4322 = fmul fast float %4184, %4168
  %4323 = fmul fast float %4322, %4301
  %4324 = fmul fast float %4184, %4169
  %4325 = fmul fast float %4324, %4301
  %4326 = fmul fast float %4320, %4317
  %4327 = fmul fast float %4322, %4318
  %4328 = fmul fast float %4324, %4319
  %4329 = fadd fast float %4321, %4059
  %4330 = fmul fast float %4329, %2132
  %4331 = fadd fast float %4323, %4060
  %4332 = fmul fast float %4331, %2132
  %4333 = fadd fast float %4325, %4061
  %4334 = fmul fast float %4333, %2132
  %4335 = fadd fast float %4326, %4102
  %4336 = fmul fast float %4335, %2132
  %4337 = fadd fast float %4327, %4105
  %4338 = fmul fast float %4337, %2132
  %4339 = fadd fast float %4328, %4108
  %4340 = fmul fast float %4339, %2132
  br label %4341

; <label>:4341                                    ; preds = %4295, %4159, %4052
  %4342 = phi float [ %4103, %4052 ], [ %4103, %4159 ], [ %4336, %4295 ]
  %4343 = phi float [ %4106, %4052 ], [ %4106, %4159 ], [ %4338, %4295 ]
  %4344 = phi float [ %4109, %4052 ], [ %4109, %4159 ], [ %4340, %4295 ]
  %4345 = phi float [ %4098, %4052 ], [ %4098, %4159 ], [ %4330, %4295 ]
  %4346 = phi float [ %4099, %4052 ], [ %4099, %4159 ], [ %4332, %4295 ]
  %4347 = phi float [ %4100, %4052 ], [ %4100, %4159 ], [ %4334, %4295 ]
  %4348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.i32 %4348, 0
  %4350 = icmp eq i32 %4349, 0
  br i1 %4350, label %4785, label %4351

; <label>:4351                                    ; preds = %4341
  %4352 = fptoui float %71 to i32
  %4353 = fptoui float %72 to i32
  %4354 = lshr i32 %4352, 4
  %4355 = lshr i32 %4353, 4
  %4356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.i32 %4356, 0
  %4358 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4355, i32 %4357, i32 %4354)  ; UMad(a,b,c)
  %4359 = add nsw i32 %4349, -1
  %4360 = call i32 @dx.op.binary.i32(i32 37, i32 %4359, i32 0)  ; IMax(a,b)
  %4361 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4362 = fptoui float %4361 to i32
  %4363 = lshr i32 %4362, 5
  %4364 = call i32 @dx.op.binary.i32(i32 40, i32 %4363, i32 8191)  ; UMin(a,b)
  %4365 = shl i32 %4364, 2
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = lshr i32 %4367, 16
  %4369 = and i32 %4367, 65535
  %4370 = lshr i32 %4367, 21
  %4371 = lshr i32 %4369, 5
  %4372 = call i32 @dx.op.binary.i32(i32 40, i32 %4371, i32 %4360)  ; UMin(a,b)
  %4373 = icmp ugt i32 %4370, %4372
  br i1 %4373, label %4785, label %4374

; <label>:4374                                    ; preds = %4351
  br label %4375

; <label>:4375                                    ; preds = %4775, %4374
  %4376 = phi i32 [ %4782, %4775 ], [ %4370, %4374 ]
  %4377 = phi float [ %4776, %4775 ], [ %4342, %4374 ]
  %4378 = phi float [ %4777, %4775 ], [ %4343, %4374 ]
  %4379 = phi float [ %4778, %4775 ], [ %4344, %4374 ]
  %4380 = phi float [ %4779, %4775 ], [ %4345, %4374 ]
  %4381 = phi float [ %4780, %4775 ], [ %4346, %4374 ]
  %4382 = phi float [ %4781, %4775 ], [ %4347, %4374 ]
  %4383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.i32 %4383, 0
  %4385 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4358, i32 %4384, i32 %4376)  ; UMad(a,b,c)
  %4386 = shl i32 %4385, 2
  %4387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.i32 %4387, 0
  %4389 = shl i32 %4376, 5
  %4390 = sub nsw i32 %4368, %4389
  %4391 = call i32 @dx.op.binary.i32(i32 37, i32 %4390, i32 0)  ; IMax(a,b)
  %4392 = call i32 @dx.op.binary.i32(i32 38, i32 %4391, i32 31)  ; IMin(a,b)
  %4393 = sub nsw i32 1, %4368
  %4394 = add nsw i32 %4393, %4369
  %4395 = call i32 @dx.op.binary.i32(i32 37, i32 %4394, i32 0)  ; IMax(a,b)
  %4396 = call i32 @dx.op.binary.i32(i32 38, i32 %4395, i32 32)  ; IMin(a,b)
  %4397 = and i32 %4396, 31
  %4398 = shl i32 -1, %4397
  %4399 = xor i32 %4398, -1
  %4400 = and i32 %4392, 31
  %4401 = shl i32 %4399, %4400
  %4402 = icmp eq i32 %4396, 32
  %4403 = select i1 %4402, i32 -1, i32 %4401
  %4404 = and i32 %4403, %4388
  %4405 = icmp eq i32 %4404, 0
  br i1 %4405, label %4775, label %4406

; <label>:4406                                    ; preds = %4375
  br label %4407

; <label>:4407                                    ; preds = %4487, %4406
  %4408 = phi i32 [ %4419, %4487 ], [ %4404, %4406 ]
  %4409 = phi float [ %4488, %4487 ], [ %4377, %4406 ]
  %4410 = phi float [ %4489, %4487 ], [ %4378, %4406 ]
  %4411 = phi float [ %4490, %4487 ], [ %4379, %4406 ]
  %4412 = phi float [ %4491, %4487 ], [ %4380, %4406 ]
  %4413 = phi float [ %4492, %4487 ], [ %4381, %4406 ]
  %4414 = phi float [ %4493, %4487 ], [ %4382, %4406 ]
  %4415 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4408)  ; FirstbitLo(value)
  %4416 = add i32 %4415, %4389
  %4417 = and i32 %4415, 31
  %4418 = shl i32 1, %4417
  %4419 = xor i32 %4418, %4408
  %4420 = mul i32 %4416, 112
  %4421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.ResRet.f32 %4421, 1
  %4424 = extractvalue %dx.types.ResRet.f32 %4421, 2
  %4425 = or i32 %4420, 12
  %4426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = add i32 %4420, 44
  %4429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = add i32 %4420, 48
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = add i32 %4420, 80
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4440 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = select i1 %189, float %4438, float %4422
  %4442 = select i1 %189, float %4440, float %4423
  %4443 = select i1 %189, float %4439, float %4424
  %4444 = fsub fast float %4433, %118
  %4445 = fsub fast float %4434, %119
  %4446 = fsub fast float %4435, %120
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4444, float %4445, float %4446, float %4444, float %4445, float %4446)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 24, float %4447)  ; Sqrt(value)
  %4449 = fdiv fast float 1.000000e+00, %4448
  %4450 = fmul fast float %4449, %4444
  %4451 = fmul fast float %4449, %4445
  %4452 = fmul fast float %4449, %4446
  %4453 = fadd fast float %4448, %4427
  %4454 = fdiv fast float 1.000000e+00, %4453
  %4455 = fmul float %4430, %4454
  %4456 = fmul float %4455, %4455
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = and i32 %4418, %4404
  %4459 = icmp eq i32 %4458, 0
  br i1 %4459, label %4482, label %4460, !dx.controlflow.hints !89

; <label>:4460                                    ; preds = %4407
  %4461 = lshr i32 %4352, 5
  %4462 = lshr i32 %4353, 5
  %4463 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4461, i32 %4462, i32 %4416, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4464 = extractvalue %dx.types.ResRet.i32 %4463, 0
  %4465 = and i32 %4464, 3
  %4466 = icmp eq i32 %4465, 0
  %4467 = select i1 %4466, float 1.000000e+00, float 0.000000e+00
  %4468 = icmp eq i32 %4465, 3
  br i1 %4468, label %4469, label %4482

; <label>:4469                                    ; preds = %4460
  %4470 = lshr i32 %4464, 10
  %4471 = and i32 %4470, 8160
  %4472 = and i32 %4353, 31
  %4473 = or i32 %4471, %4472
  %4474 = lshr i32 %4464, 1
  %4475 = and i32 %4474, 16352
  %4476 = and i32 %4352, 31
  %4477 = or i32 %4475, %4476
  %4478 = lshr i32 %4464, 23
  %4479 = and i32 %4478, 255
  %4480 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4477, i32 %4473, i32 %4479, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 0
  br label %4482

; <label>:4482                                    ; preds = %4469, %4460, %4407
  %4483 = phi float [ %4481, %4469 ], [ %4467, %4460 ], [ 0.000000e+00, %4407 ]
  %4484 = call float @dx.op.binary.f32(i32 36, float %4483, float %4483)  ; FMin(a,b)
  %4485 = call float @dx.op.binary.f32(i32 36, float %4483, float %4484)  ; FMin(a,b)
  %4486 = fcmp fast ogt float %4485, 0.000000e+00
  br i1 %4486, label %4495, label %4487, !dx.controlflow.hints !90

; <label>:4487                                    ; preds = %4731, %4482
  %4488 = phi float [ %4409, %4482 ], [ %4771, %4731 ]
  %4489 = phi float [ %4410, %4482 ], [ %4772, %4731 ]
  %4490 = phi float [ %4411, %4482 ], [ %4773, %4731 ]
  %4491 = phi float [ %4412, %4482 ], [ %4765, %4731 ]
  %4492 = phi float [ %4413, %4482 ], [ %4766, %4731 ]
  %4493 = phi float [ %4414, %4482 ], [ %4767, %4731 ]
  %4494 = icmp eq i32 %4408, %4418
  br i1 %4494, label %4774, label %4407

; <label>:4495                                    ; preds = %4482
  %4496 = fmul fast float %4483, %4441
  %4497 = fmul fast float %4483, %4442
  %4498 = fmul fast float %4483, %4443
  %4499 = fsub fast float %4435, %2534
  %4500 = fcmp fast ogt float %4499, 0.000000e+00
  %4501 = fsub fast float %120, %2534
  %4502 = fcmp fast ogt float %4501, 0.000000e+00
  %4503 = xor i1 %4502, %4500
  %4504 = fsub fast float %2534, %4435
  %4505 = fmul fast float %4504, 2.000000e+00
  %4506 = fadd fast float %4505, %4435
  %4507 = select i1 %4503, float %4435, float %4506
  %4508 = fsub fast float %4507, %120
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4444, float %4445, float %4508, float %4444, float %4445, float %4508)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = call float @dx.op.unary.f32(i32 25, float %4509)  ; Rsqrt(value)
  %4511 = fmul fast float %4510, %4444
  %4512 = fmul fast float %4510, %4445
  %4513 = fmul fast float %4510, %4508
  %4514 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2542)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4511, float %4512, float %4513)  ; Dot3(ax,ay,az,bx,by,bz)
  %4516 = fdiv fast float 1.000000e+00, %4515
  %4517 = fmul fast float %4516, %4514
  %4518 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4501, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = fcmp fast ogt float %4518, 0.000000e+00
  %4520 = fcmp fast olt float %4518, 0.000000e+00
  %4521 = zext i1 %4519 to i32
  %4522 = zext i1 %4520 to i32
  %4523 = sub nsw i32 %4521, %4522
  %4524 = sitofp i32 %4523 to float
  %4525 = fsub fast float %4507, %2534
  %4526 = call float @dx.op.dot3.f32(i32 55, float %4444, float %4445, float %4525, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4527 = fcmp fast ogt float %4526, 0.000000e+00
  %4528 = fcmp fast olt float %4526, 0.000000e+00
  %4529 = zext i1 %4527 to i32
  %4530 = zext i1 %4528 to i32
  %4531 = sub nsw i32 %4529, %4530
  %4532 = sitofp i32 %4531 to float
  %4533 = fcmp fast une float %4524, %4532
  br i1 %4533, label %4534, label %4544

; <label>:4534                                    ; preds = %4495
  %4535 = fmul fast float %4517, %4513
  %4536 = fmul fast float %4517, %4512
  %4537 = fmul fast float %4517, %4511
  %4538 = fmul fast float %4537, %4537
  %4539 = fmul fast float %4536, %4536
  %4540 = fadd fast float %4538, %4539
  %4541 = fmul fast float %4535, %4535
  %4542 = fadd fast float %4540, %4541
  %4543 = call float @dx.op.unary.f32(i32 24, float %4542)  ; Sqrt(value)
  br label %4556

; <label>:4544                                    ; preds = %4495
  %4545 = icmp slt i32 %4523, 0
  br i1 %4545, label %4546, label %4556

; <label>:4546                                    ; preds = %4544
  %4547 = fsub fast float %118, %4433
  %4548 = fsub fast float %119, %4434
  %4549 = fsub fast float %120, %4507
  %4550 = fmul fast float %4547, %4547
  %4551 = fmul fast float %4548, %4548
  %4552 = fadd fast float %4550, %4551
  %4553 = fmul fast float %4549, %4549
  %4554 = fadd fast float %4552, %4553
  %4555 = call float @dx.op.unary.f32(i32 24, float %4554)  ; Sqrt(value)
  br label %4556

; <label>:4556                                    ; preds = %4546, %4544, %4534
  %4557 = phi float [ %4543, %4534 ], [ %4555, %4546 ], [ 0.000000e+00, %4544 ]
  %4558 = and i1 %4502, %4500
  %4559 = fsub fast float -0.000000e+00, %4557
  %4560 = select i1 %4558, float -0.000000e+00, float %4559
  %4561 = fmul fast float %2535, 0x3FF7154760000000
  %4562 = fmul fast float %4561, %4560
  %4563 = fmul fast float %2536, 0x3FF7154760000000
  %4564 = fmul fast float %4563, %4560
  %4565 = fmul fast float %2537, 0x3FF7154760000000
  %4566 = fmul fast float %4565, %4560
  %4567 = call float @dx.op.unary.f32(i32 21, float %4562)  ; Exp(value)
  %4568 = call float @dx.op.unary.f32(i32 21, float %4564)  ; Exp(value)
  %4569 = call float @dx.op.unary.f32(i32 21, float %4566)  ; Exp(value)
  %4570 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4571 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4572 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4573 = fmul fast float %4496, %4570
  %4574 = fmul fast float %4497, %4571
  %4575 = fmul fast float %4498, %4572
  %4576 = fsub fast float %4450, %2734
  %4577 = fsub fast float %4451, %2733
  %4578 = fsub fast float %4452, %2732
  %4579 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4577, float %4578, float %4576, float %4577, float %4578)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = call float @dx.op.unary.f32(i32 25, float %4579)  ; Rsqrt(value)
  %4581 = fmul fast float %4580, %4576
  %4582 = fmul fast float %4580, %4577
  %4583 = fmul fast float %4580, %4578
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4450, float %4451, float %4452, float %2741, float %2742, float %2743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = call float @dx.op.dot3.f32(i32 55, float %2731, float %2730, float %2729, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4587 = fmul fast float %4586, %4457
  %4588 = fmul fast float %4586, %4586
  %4589 = fmul fast float %4588, %4110
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fmul fast float %4587, %4590
  %4592 = bitcast float %4447 to i32
  %4593 = ashr i32 %4592, 1
  %4594 = sub nsw i32 1597463007, %4593
  %4595 = bitcast i32 %4594 to float
  %4596 = fmul fast float %4595, %4444
  %4597 = fmul fast float %4595, %4445
  %4598 = fmul fast float %4595, %4446
  %4599 = fsub fast float %4596, %2734
  %4600 = fsub fast float %4597, %2733
  %4601 = fsub fast float %4598, %2732
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4600, float %4601, float %4599, float %4600, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = call float @dx.op.unary.f32(i32 25, float %4602)  ; Rsqrt(value)
  %4604 = fmul fast float %4599, %4603
  %4605 = fmul fast float %4600, %4603
  %4606 = fmul fast float %4601, %4603
  %4607 = call float @dx.op.dot3.f32(i32 55, float %2741, float %2742, float %2743, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = fmul fast float %4607, %4607
  %4609 = call float @dx.op.unary.f32(i32 6, float %4584)  ; FAbs(value)
  %4610 = fsub fast float 1.000000e+00, %2744
  %4611 = call float @dx.op.binary.f32(i32 35, float %4610, float 0x3F847AE140000000)  ; FMax(a,b)
  %4612 = fmul fast float %4611, %4611
  %4613 = fmul fast float %4612, %4612
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = fmul fast float %2748, %2748
  %4616 = fmul fast float %4615, %4614
  %4617 = fadd fast float %4616, %4613
  %4618 = bitcast float %4617 to i32
  %4619 = ashr i32 %4618, 1
  %4620 = add nsw i32 %4619, 532487669
  %4621 = bitcast i32 %4620 to float
  %4622 = fadd fast float %4621, %2748
  %4623 = fmul fast float %4613, %4608
  %4624 = fsub fast float 1.000000e+00, %4608
  %4625 = fadd fast float %4624, %4623
  %4626 = fmul fast float %4609, %4609
  %4627 = fmul fast float %4626, %4614
  %4628 = fadd fast float %4627, %4613
  %4629 = bitcast float %4628 to i32
  %4630 = ashr i32 %4629, 1
  %4631 = add nsw i32 %4630, 532487669
  %4632 = bitcast i32 %4631 to float
  %4633 = fadd fast float %4632, %4609
  %4634 = fmul fast float %4625, %4625
  %4635 = fmul fast float %4634, %4622
  %4636 = fmul fast float %4635, %4633
  %4637 = fdiv fast float 1.000000e+00, %4636
  %4638 = bitcast float %4613 to i32
  %4639 = sitofp i32 %4638 to float
  %4640 = fmul fast float %4639, 0x3FE7F73180000000
  %4641 = fadd fast float %4640, 0x41AFE27C40000000
  %4642 = fptosi float %4641 to i32
  %4643 = bitcast i32 %4642 to float
  %4644 = fmul fast float %4430, 0x3FD80E9D60000000
  %4645 = fmul fast float %4644, %4595
  %4646 = fadd fast float %4643, %4645
  %4647 = bitcast float %4646 to i32
  %4648 = sub nsw i32 2129859010, %4647
  %4649 = bitcast i32 %4648 to float
  %4650 = fmul fast float %4613, %4637
  %4651 = fmul fast float %4650, %4643
  %4652 = fmul fast float %4651, %4649
  %4653 = call float @dx.op.unary.f32(i32 6, float %4585)  ; FAbs(value)
  %4654 = fsub fast float 1.000000e+00, %4653
  %4655 = bitcast float %4654 to i32
  %4656 = sitofp i32 %4655 to float
  %4657 = fmul fast float %4656, 5.000000e+00
  %4658 = fadd fast float %4657, 0xC1EFBF8940000000
  %4659 = fptosi float %4658 to i32
  %4660 = bitcast i32 %4659 to float
  %4661 = fsub fast float 1.000000e+00, %2735
  %4662 = fsub fast float 1.000000e+00, %2736
  %4663 = fsub fast float 1.000000e+00, %2746
  %4664 = fmul fast float %4660, %4661
  %4665 = fmul fast float %4660, %4662
  %4666 = fmul fast float %4660, %4663
  %4667 = fadd fast float %4664, %2735
  %4668 = fadd fast float %4665, %2736
  %4669 = fadd fast float %4666, %2746
  br i1 %4025, label %4670, label %4693

; <label>:4670                                    ; preds = %4556
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2112, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = extractvalue %dx.types.ResRet.f32 %4671, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4671, 2
  %4675 = fadd fast float %4672, -5.000000e-01
  %4676 = fadd fast float %4673, -5.000000e-01
  %4677 = fadd fast float %4674, -5.000000e-01
  %4678 = fmul fast float %2735, 4.000000e+00
  %4679 = fmul fast float %4678, %4661
  %4680 = fmul fast float %4679, %4675
  %4681 = fmul fast float %2736, 4.000000e+00
  %4682 = fmul fast float %4681, %4662
  %4683 = fmul fast float %4682, %4676
  %4684 = fmul fast float %2746, 4.000000e+00
  %4685 = fmul fast float %4684, %4663
  %4686 = fmul fast float %4685, %4677
  %4687 = fadd fast float %4680, %4667
  %4688 = fadd fast float %4683, %4668
  %4689 = fadd fast float %4686, %4669
  %4690 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4692 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  br label %4693

; <label>:4693                                    ; preds = %4670, %4556
  %4694 = phi float [ %4690, %4670 ], [ %4667, %4556 ]
  %4695 = phi float [ %4691, %4670 ], [ %4668, %4556 ]
  %4696 = phi float [ %4692, %4670 ], [ %4669, %4556 ]
  %4697 = fmul fast float %4584, 9.843750e-01
  %4698 = fadd fast float %4697, 7.812500e-03
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4698, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 2
  %4701 = extractvalue %dx.types.ResRet.f32 %4699, 3
  %4702 = fmul fast float %4700, %2735
  %4703 = fmul fast float %4700, %2736
  %4704 = fmul fast float %4700, %2746
  %4705 = fadd fast float %4702, %4701
  %4706 = fadd fast float %4703, %4701
  %4707 = fadd fast float %4704, %4701
  br i1 %4025, label %4708, label %4731

; <label>:4708                                    ; preds = %4693
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2112, float %4584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4709, 2
  %4713 = fadd fast float %4710, -5.000000e-01
  %4714 = fadd fast float %4711, -5.000000e-01
  %4715 = fadd fast float %4712, -5.000000e-01
  %4716 = fmul fast float %2735, 4.000000e+00
  %4717 = fmul fast float %4716, %4661
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %2736, 4.000000e+00
  %4720 = fmul fast float %4719, %4662
  %4721 = fmul fast float %4720, %4714
  %4722 = fmul fast float %2746, 4.000000e+00
  %4723 = fmul fast float %4722, %4663
  %4724 = fmul fast float %4723, %4715
  %4725 = fadd fast float %4718, %4705
  %4726 = fadd fast float %4721, %4706
  %4727 = fadd fast float %4724, %4707
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  br label %4731

; <label>:4731                                    ; preds = %4708, %4693
  %4732 = phi float [ %4728, %4708 ], [ %4705, %4693 ]
  %4733 = phi float [ %4729, %4708 ], [ %4706, %4693 ]
  %4734 = phi float [ %4730, %4708 ], [ %4707, %4693 ]
  %4735 = call float @dx.op.binary.f32(i32 35, float %4733, float %4734)  ; FMax(a,b)
  %4736 = call float @dx.op.binary.f32(i32 35, float %4732, float %4735)  ; FMax(a,b)
  %4737 = fsub fast float 1.000000e+00, %4736
  %4738 = fmul fast float %4694, %4652
  %4739 = fmul fast float %4695, %4652
  %4740 = fmul fast float %4696, %4652
  %4741 = fsub fast float 1.000000e+00, %4585
  %4742 = bitcast float %4741 to i32
  %4743 = sitofp i32 %4742 to float
  %4744 = fmul fast float %4743, 5.000000e+00
  %4745 = fadd fast float %4744, 0xC1EFBF8940000000
  %4746 = fptosi float %4745 to i32
  %4747 = bitcast i32 %4746 to float
  %4748 = fmul fast float %4747, %2111
  %4749 = fmul fast float %4737, %4748
  %4750 = fmul fast float %4749, %4075
  %4751 = fmul fast float %4749, %4076
  %4752 = fmul fast float %4749, %4077
  %4753 = fadd fast float %4750, %4738
  %4754 = fadd fast float %4751, %4739
  %4755 = fadd fast float %4752, %4740
  %4756 = fmul fast float %4573, %2132
  %4757 = fmul fast float %4756, %4591
  %4758 = fmul fast float %4757, %4737
  %4759 = fmul fast float %4574, %2132
  %4760 = fmul fast float %4759, %4591
  %4761 = fmul fast float %4760, %4737
  %4762 = fmul fast float %4575, %2132
  %4763 = fmul fast float %4762, %4591
  %4764 = fmul fast float %4763, %4737
  %4765 = fadd fast float %4758, %4412
  %4766 = fadd fast float %4761, %4413
  %4767 = fadd fast float %4764, %4414
  %4768 = fmul fast float %4757, %4753
  %4769 = fmul fast float %4760, %4754
  %4770 = fmul fast float %4763, %4755
  %4771 = fadd fast float %4768, %4409
  %4772 = fadd fast float %4769, %4410
  %4773 = fadd fast float %4770, %4411
  br label %4487

; <label>:4774                                    ; preds = %4487
  br label %4775

; <label>:4775                                    ; preds = %4774, %4375
  %4776 = phi float [ %4377, %4375 ], [ %4488, %4774 ]
  %4777 = phi float [ %4378, %4375 ], [ %4489, %4774 ]
  %4778 = phi float [ %4379, %4375 ], [ %4490, %4774 ]
  %4779 = phi float [ %4380, %4375 ], [ %4491, %4774 ]
  %4780 = phi float [ %4381, %4375 ], [ %4492, %4774 ]
  %4781 = phi float [ %4382, %4375 ], [ %4493, %4774 ]
  %4782 = add i32 %4376, 1
  %4783 = icmp ugt i32 %4782, %4372
  br i1 %4783, label %4784, label %4375

; <label>:4784                                    ; preds = %4775
  br label %4785

; <label>:4785                                    ; preds = %4784, %4351, %4341
  %4786 = phi float [ %4342, %4341 ], [ %4342, %4351 ], [ %4776, %4784 ]
  %4787 = phi float [ %4343, %4341 ], [ %4343, %4351 ], [ %4777, %4784 ]
  %4788 = phi float [ %4344, %4341 ], [ %4344, %4351 ], [ %4778, %4784 ]
  %4789 = phi float [ %4345, %4341 ], [ %4345, %4351 ], [ %4779, %4784 ]
  %4790 = phi float [ %4346, %4341 ], [ %4346, %4351 ], [ %4780, %4784 ]
  %4791 = phi float [ %4347, %4341 ], [ %4347, %4351 ], [ %4781, %4784 ]
  %4792 = call float @dx.op.unary.f32(i32 24, float %2738)  ; Sqrt(value)
  %4793 = call float @dx.op.unary.f32(i32 24, float %2739)  ; Sqrt(value)
  %4794 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %4795 = fmul fast float %4792, %4789
  %4796 = fmul fast float %4793, %4790
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  br i1 %189, label %4799, label %4828

; <label>:4799                                    ; preds = %4785
  %4800 = fadd fast float %4791, %2109
  %4801 = fmul fast float %4800, %2110
  %4802 = fsub fast float 1.000000e+00, %2110
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 3
  %4806 = fmul fast float %4805, %4803
  %4807 = fadd fast float %4806, %4801
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4810 = fmul fast float %4809, %4081
  %4811 = fsub fast float %4807, %4810
  %4812 = fadd fast float %4796, %4795
  %4813 = fmul fast float %4798, %4812
  %4814 = extractvalue %dx.types.CBufRet.f32 %4804, 1
  %4815 = fsub fast float %4811, %4814
  %4816 = extractvalue %dx.types.CBufRet.f32 %4804, 2
  %4817 = fmul fast float %4815, %4816
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = fsub fast float %4818, %4820
  %4822 = fmul fast float %4821, 1.000000e+01
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = fadd fast float %2108, -1.000000e+00
  %4825 = fmul fast float %4823, %4824
  %4826 = fadd fast float %4825, 1.000000e+00
  %4827 = fmul fast float %4826, %4818
  br label %4844

; <label>:4828                                    ; preds = %4785
  %4829 = fmul fast float %4794, %4791
  %4830 = fmul fast float %4798, %4795
  %4831 = fmul fast float %4798, %4796
  %4832 = fmul fast float %4829, %4798
  %4833 = add i32 %44, 212
  %4834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4833, i32 undef)  ; BufferLoad(srv,index,wot)
  %4835 = extractvalue %dx.types.ResRet.i32 %4834, 0
  %4836 = and i32 %4835, 32
  %4837 = icmp eq i32 %4836, 0
  br i1 %4837, label %4844, label %4838

; <label>:4838                                    ; preds = %4828
  %4839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.f32 %4839, 0
  %4841 = fmul fast float %4840, 0x3FE99999A0000000
  %4842 = fadd fast float %4840, %4830
  %4843 = fadd fast float %4841, %4832
  br label %4844

; <label>:4844                                    ; preds = %4838, %4828, %4799
  %4845 = phi float [ %4813, %4799 ], [ %4842, %4838 ], [ %4830, %4828 ]
  %4846 = phi float [ %4827, %4799 ], [ %4831, %4838 ], [ %4831, %4828 ]
  %4847 = phi float [ %4826, %4799 ], [ %4843, %4838 ], [ %4832, %4828 ]
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = fmul fast float %4849, %4787
  %4851 = fmul fast float %4849, %4788
  %4852 = fadd fast float %4787, %4786
  %4853 = select i1 %189, float %4852, float %4786
  %4854 = fmul float %4853, %4849
  %4855 = select i1 %189, float 0.000000e+00, float %4850
  %4856 = select i1 %189, float 0.000000e+00, float %4851
  %4857 = fmul fast float %4845, %4792
  %4858 = fmul fast float %4846, %4793
  %4859 = fmul fast float %4847, %4794
  %4860 = fadd fast float %4854, %4857
  %4861 = fadd fast float %4855, %4858
  %4862 = fadd fast float %4856, %4859
  %4863 = select i1 %189, float %4846, float %4861
  %4864 = select i1 %189, float %4847, float %4862
  %4865 = call float @dx.op.binary.f32(i32 36, float %4860, float 3.225500e+04)  ; FMin(a,b)
  %4866 = call float @dx.op.binary.f32(i32 36, float %4863, float 3.225500e+04)  ; FMin(a,b)
  %4867 = call float @dx.op.binary.f32(i32 36, float %4864, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4865)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4866)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4867)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[32 x i32] [i32 30, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !80}
!59 = !{!60, !78, null}
!60 = !{!61, !64, !66, !68, !70, !71, !72, !74, !76, !77}
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
!74 = !{i32 7, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 7, i8 0, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 7, i8 1, !75}
!77 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!80 = !{i32 0, i64 24}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}

