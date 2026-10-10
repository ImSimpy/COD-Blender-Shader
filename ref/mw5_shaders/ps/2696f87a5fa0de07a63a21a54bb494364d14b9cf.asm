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
; shader hash: f2f56277a0100b2ae194dad213bcd751
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
  br i1 %1677, label %2103, label %1678

; <label>:1678                                    ; preds = %1584
  %1679 = and i32 %1674, 1023
  br label %1680

; <label>:1680                                    ; preds = %1806, %1678
  %1681 = phi float [ %1807, %1806 ], [ 0.000000e+00, %1678 ]
  %1682 = phi float [ %1808, %1806 ], [ %1598, %1678 ]
  %1683 = phi float [ %1809, %1806 ], [ %1596, %1678 ]
  %1684 = phi float [ %1810, %1806 ], [ 0.000000e+00, %1678 ]
  %1685 = phi float [ %1811, %1806 ], [ 0.000000e+00, %1678 ]
  %1686 = phi float [ %1812, %1806 ], [ %1590, %1678 ]
  %1687 = phi float [ %1813, %1806 ], [ %1591, %1678 ]
  %1688 = phi float [ %1814, %1806 ], [ %1592, %1678 ]
  %1689 = phi float [ %1815, %1806 ], [ %1624, %1678 ]
  %1690 = phi float [ %1816, %1806 ], [ %1625, %1678 ]
  %1691 = phi float [ %1817, %1806 ], [ %1626, %1678 ]
  %1692 = phi float [ %1818, %1806 ], [ %1595, %1678 ]
  %1693 = phi float [ %1819, %1806 ], [ %1594, %1678 ]
  %1694 = phi float [ %1820, %1806 ], [ 0.000000e+00, %1678 ]
  %1695 = phi float [ %1821, %1806 ], [ %1593, %1678 ]
  %1696 = phi float [ %1822, %1806 ], [ %1587, %1678 ]
  %1697 = phi float [ %1823, %1806 ], [ %1588, %1678 ]
  %1698 = phi float [ %1824, %1806 ], [ %1589, %1678 ]
  %1699 = phi i32 [ %1756, %1806 ], [ 0, %1678 ]
  %1700 = add nuw nsw i32 %1699, %1676
  %1701 = shl i32 %1700, 2
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = shl i32 %1703, 8
  %1705 = or i32 %1704, 48
  %1706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.f32 %1706, 0
  %1708 = extractvalue %dx.types.ResRet.f32 %1706, 1
  %1709 = extractvalue %dx.types.ResRet.f32 %1706, 2
  %1710 = extractvalue %dx.types.ResRet.f32 %1706, 3
  %1711 = or i32 %1704, 64
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.i32 %1712, 1
  %1715 = or i32 %1704, 80
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 3
  %1719 = or i32 %1704, 96
  %1720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.ResRet.f32 %1720, 1
  %1723 = extractvalue %dx.types.ResRet.f32 %1720, 2
  %1724 = extractvalue %dx.types.ResRet.f32 %1720, 3
  %1725 = or i32 %1704, 112
  %1726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 2
  %1728 = or i32 %1704, 128
  %1729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.ResRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.ResRet.f32 %1729, 3
  %1734 = or i32 %1704, 144
  %1735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.ResRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.ResRet.f32 %1735, 2
  %1739 = extractvalue %dx.types.ResRet.f32 %1735, 3
  %1740 = or i32 %1704, 160
  %1741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.ResRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.ResRet.f32 %1741, 2
  %1745 = extractvalue %dx.types.ResRet.f32 %1741, 3
  %1746 = or i32 %1704, 192
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = or i32 %1704, 208
  %1750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = or i32 %1704, 248
  %1753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = add nuw nsw i32 %1699, 1
  %1757 = bitcast float %1710 to i32
  %1758 = and i32 %1757, 2560
  %1759 = icmp eq i32 %1758, 0
  %1760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = extractvalue %dx.types.ResRet.f32 %1760, 1
  %1763 = extractvalue %dx.types.ResRet.f32 %1760, 2
  %1764 = extractvalue %dx.types.ResRet.f32 %1760, 3
  %1765 = call float @dx.op.dot4.f32(i32 56, float %1761, float %1762, float %1763, float %1764, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1766 = or i32 %1704, 16
  %1767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.ResRet.f32 %1767, 1
  %1770 = extractvalue %dx.types.ResRet.f32 %1767, 2
  %1771 = extractvalue %dx.types.ResRet.f32 %1767, 3
  %1772 = call float @dx.op.dot4.f32(i32 56, float %1768, float %1769, float %1770, float %1771, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1773 = or i32 %1704, 32
  %1774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.ResRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.ResRet.f32 %1774, 2
  %1778 = extractvalue %dx.types.ResRet.f32 %1774, 3
  %1779 = call float @dx.op.dot4.f32(i32 56, float %1775, float %1776, float %1777, float %1778, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1780 = call float @dx.op.unary.f32(i32 27, float %1765)  ; Round_ni(value)
  %1781 = call float @dx.op.unary.f32(i32 6, float %1780)  ; FAbs(value)
  %1782 = call float @dx.op.unary.f32(i32 27, float %1772)  ; Round_ni(value)
  %1783 = call float @dx.op.unary.f32(i32 6, float %1782)  ; FAbs(value)
  %1784 = call float @dx.op.unary.f32(i32 6, float %1779)  ; FAbs(value)
  %1785 = call float @dx.op.unary.f32(i32 27, float %1784)  ; Round_ni(value)
  %1786 = fadd fast float %1783, %1781
  %1787 = fadd fast float %1786, %1785
  %1788 = fcmp fast oeq float %1787, 0.000000e+00
  %1789 = call float @dx.op.dot4.f32(i32 56, float %1761, float %1762, float %1763, float %1764, float %1633, float %1634, float %1635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1790 = call float @dx.op.dot4.f32(i32 56, float %1768, float %1769, float %1770, float %1771, float %1633, float %1634, float %1635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1791 = call float @dx.op.dot4.f32(i32 56, float %1761, float %1762, float %1763, float %1764, float %1636, float %1637, float %1638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1792 = call float @dx.op.dot4.f32(i32 56, float %1768, float %1769, float %1770, float %1771, float %1636, float %1637, float %1638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1793 = fsub fast float %1789, %1765
  %1794 = fsub fast float %1791, %1765
  %1795 = fsub fast float %1790, %1772
  %1796 = fsub fast float %1792, %1772
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1707, float %1708, float %1709, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1800 = fadd fast float %1799, %1797
  %1801 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1803 = fcmp fast ogt float %1801, %1802
  %1804 = and i1 %1788, %1803
  %1805 = and i1 %1759, %1804
  br i1 %1805, label %1826, label %1806

; <label>:1806                                    ; preds = %2089, %1907, %1826, %1680
  %1807 = phi float [ %1681, %1826 ], [ %1910, %1907 ], [ %1910, %2089 ], [ %1681, %1680 ]
  %1808 = phi float [ %1682, %1826 ], [ %1682, %1907 ], [ %2064, %2089 ], [ %1682, %1680 ]
  %1809 = phi float [ %1683, %1826 ], [ %1683, %1907 ], [ %2062, %2089 ], [ %1683, %1680 ]
  %1810 = phi float [ %1684, %1826 ], [ %1684, %1907 ], [ %2034, %2089 ], [ %1684, %1680 ]
  %1811 = phi float [ %1685, %1826 ], [ %1685, %1907 ], [ %2032, %2089 ], [ %1685, %1680 ]
  %1812 = phi float [ %1686, %1826 ], [ %1686, %1907 ], [ %2099, %2089 ], [ %1686, %1680 ]
  %1813 = phi float [ %1687, %1826 ], [ %1687, %1907 ], [ %2100, %2089 ], [ %1687, %1680 ]
  %1814 = phi float [ %1688, %1826 ], [ %1688, %1907 ], [ %2101, %2089 ], [ %1688, %1680 ]
  %1815 = phi float [ %1689, %1826 ], [ %1689, %1907 ], [ %2013, %2089 ], [ %1689, %1680 ]
  %1816 = phi float [ %1690, %1826 ], [ %1690, %1907 ], [ %2014, %2089 ], [ %1690, %1680 ]
  %1817 = phi float [ %1691, %1826 ], [ %1691, %1907 ], [ %2015, %2089 ], [ %1691, %1680 ]
  %1818 = phi float [ %1692, %1826 ], [ %1692, %1907 ], [ %2042, %2089 ], [ %1692, %1680 ]
  %1819 = phi float [ %1693, %1826 ], [ %1693, %1907 ], [ %2039, %2089 ], [ %1693, %1680 ]
  %1820 = phi float [ %1694, %1826 ], [ %1694, %1907 ], [ %2036, %2089 ], [ %1694, %1680 ]
  %1821 = phi float [ %1695, %1826 ], [ %1695, %1907 ], [ %2030, %2089 ], [ %1695, %1680 ]
  %1822 = phi float [ %1696, %1826 ], [ %1696, %1907 ], [ %2025, %2089 ], [ %1696, %1680 ]
  %1823 = phi float [ %1697, %1826 ], [ %1697, %1907 ], [ %2026, %2089 ], [ %1697, %1680 ]
  %1824 = phi float [ %1698, %1826 ], [ %1698, %1907 ], [ %2027, %2089 ], [ %1698, %1680 ]
  %1825 = icmp eq i32 %1756, %1679
  br i1 %1825, label %2102, label %1680

; <label>:1826                                    ; preds = %1680
  %1827 = extractvalue %dx.types.ResRet.f32 %1726, 3
  %1828 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1829 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1830 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1832 = extractvalue %dx.types.ResRet.i32 %1712, 3
  %1833 = extractvalue %dx.types.ResRet.i32 %1712, 2
  %1834 = add i32 %1832, 0
  %1835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1834, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1837 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1835, %dx.types.Handle %1836, float %1765, float %1772, float undef, float undef, i32 0, i32 0, i32 undef, float %1793, float %1795, float undef, float %1794, float %1796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = fmul fast float %1838, %1831
  %1840 = fadd fast float %1839, %1830
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1842 = fmul fast float %1765, %1721
  %1843 = call float @dx.op.tertiary.f32(i32 46, float %1722, float %1772, float %1842)  ; FMad(a,b,c)
  %1844 = fadd fast float %1843, %1829
  %1845 = fmul fast float %1765, %1723
  %1846 = call float @dx.op.tertiary.f32(i32 46, float %1724, float %1772, float %1845)  ; FMad(a,b,c)
  %1847 = fadd fast float %1846, %1828
  %1848 = fmul fast float %1793, %1721
  %1849 = call float @dx.op.tertiary.f32(i32 46, float %1722, float %1795, float %1848)  ; FMad(a,b,c)
  %1850 = fmul fast float %1793, %1723
  %1851 = call float @dx.op.tertiary.f32(i32 46, float %1724, float %1795, float %1850)  ; FMad(a,b,c)
  %1852 = fmul fast float %1794, %1721
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1722, float %1796, float %1852)  ; FMad(a,b,c)
  %1854 = fmul fast float %1794, %1723
  %1855 = call float @dx.op.tertiary.f32(i32 46, float %1724, float %1796, float %1854)  ; FMad(a,b,c)
  %1856 = add i32 %1833, 0
  %1857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1856, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1858 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1857, %dx.types.Handle %1836, float %1844, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float %1849, float %1851, float undef, float %1853, float %1855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = and i32 %1757, 1024
  %1861 = icmp ne i32 %1860, 0
  %1862 = fcmp fast ogt float %1859, 0x3FE0101020000000
  %1863 = uitofp i1 %1862 to float
  %1864 = select i1 %1861, float %1863, float %1859
  %1865 = and i32 %1757, 8192
  %1866 = icmp ne i32 %1865, 0
  %1867 = select i1 %1866, float %1827, float 1.000000e+00
  %1868 = fmul fast float %1765, 2.000000e+00
  %1869 = fadd fast float %1868, -1.000000e+00
  %1870 = call float @dx.op.unary.f32(i32 6, float %1869)  ; FAbs(value)
  %1871 = fmul fast float %1870, %1754
  %1872 = fsub fast float %1871, %1754
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1874 = fmul fast float %1772, 2.000000e+00
  %1875 = fadd fast float %1874, -1.000000e+00
  %1876 = call float @dx.op.unary.f32(i32 6, float %1875)  ; FAbs(value)
  %1877 = fmul fast float %1876, %1755
  %1878 = fsub fast float %1877, %1755
  %1879 = call float @dx.op.unary.f32(i32 7, float %1878)  ; Saturate(value)
  %1880 = fmul fast float %1784, %1717
  %1881 = fsub fast float %1880, %1717
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = fmul fast float %1841, %1867
  %1884 = fmul fast float %1883, %1838
  %1885 = fmul fast float %1884, %1873
  %1886 = fmul fast float %1885, %1864
  %1887 = fmul fast float %1886, %1879
  %1888 = fmul fast float %1887, %1882
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 1
  %1891 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1892 = fsub fast float %1801, %1891
  %1893 = fmul fast float %1892, %1890
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = fmul fast float %1888, %1718
  %1896 = fadd fast float %1888, %1718
  %1897 = fmul fast float %1896, %1727
  %1898 = fsub fast float %1897, %1727
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1900 = and i32 %1757, 128
  %1901 = icmp ne i32 %1900, 0
  %1902 = select i1 %1901, float %1899, float %1895
  %1903 = fmul fast float %1902, %1894
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = fcmp fast ugt float %1903, %1905
  br i1 %1906, label %1907, label %1806

; <label>:1907                                    ; preds = %1826
  %1908 = select i1 %1866, float %1903, float 0.000000e+00
  %1909 = fadd fast float %1908, %1681
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  br i1 %1866, label %1806, label %1911

; <label>:1911                                    ; preds = %1907
  %1912 = and i32 %1757, 4
  %1913 = and i32 %1757, 8
  %1914 = add i32 %1713, 0
  %1915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1914, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1915, %dx.types.Handle %1916, float %1844, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float %1849, float %1851, float undef, float %1853, float %1855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.ResRet.f32 %1917, 1
  %1920 = extractvalue %dx.types.ResRet.f32 %1917, 2
  %1921 = extractvalue %dx.types.ResRet.f32 %1917, 3
  %1922 = bitcast float %1739 to i32
  %1923 = and i32 %1922, 255
  %1924 = uitofp i32 %1923 to float
  %1925 = lshr i32 %1922, 8
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1921, %1924
  %1929 = fadd fast float %1928, %1927
  %1930 = fmul fast float %1929, 0x3F70101000000000
  %1931 = add i32 %1714, 0
  %1932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1933 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1932, %dx.types.Handle %1916, float %1844, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float %1849, float %1851, float undef, float %1853, float %1855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = extractvalue %dx.types.ResRet.f32 %1933, 1
  %1936 = extractvalue %dx.types.ResRet.f32 %1933, 2
  %1937 = extractvalue %dx.types.ResRet.f32 %1933, 3
  %1938 = bitcast float %1733 to i32
  %1939 = and i32 %1938, 255
  %1940 = uitofp i32 %1939 to float
  %1941 = lshr i32 %1938, 8
  %1942 = and i32 %1941, 255
  %1943 = uitofp i32 %1942 to float
  %1944 = lshr i32 %1938, 16
  %1945 = and i32 %1944, 255
  %1946 = uitofp i32 %1945 to float
  %1947 = fmul fast float %1946, 0x3F70101000000000
  %1948 = fmul fast float %1934, %1940
  %1949 = fadd fast float %1948, %1943
  %1950 = fmul fast float %1949, 0x3F70101000000000
  %1951 = fadd fast float %1935, -5.000000e-01
  %1952 = fadd fast float %1937, -5.000000e-01
  %1953 = fmul fast float %1951, %1947
  %1954 = fmul fast float %1952, %1947
  %1955 = fadd fast float %1953, 5.000000e-01
  %1956 = fadd fast float %1954, 5.000000e-01
  %1957 = fmul fast float %1918, %1742
  %1958 = fmul fast float %1919, %1743
  %1959 = fmul fast float %1920, %1744
  %1960 = fmul fast float %1955, 2.000000e+00
  %1961 = fadd fast float %1960, -1.000000e+00
  %1962 = fmul fast float %1956, 2.000000e+00
  %1963 = fadd fast float %1962, -1.000000e+00
  %1964 = fadd fast float %1961, %1963
  %1965 = fmul fast float %1964, 5.000000e-01
  %1966 = fsub fast float %1961, %1963
  %1967 = fmul fast float %1966, 5.000000e-01
  %1968 = call float @dx.op.unary.f32(i32 6, float %1965)  ; FAbs(value)
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = call float @dx.op.unary.f32(i32 6, float %1967)  ; FAbs(value)
  %1971 = fsub fast float %1969, %1970
  %1972 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1967, float %1971, float %1965, float %1967, float %1971)  ; Dot3(ax,ay,az,bx,by,bz)
  %1973 = call float @dx.op.unary.f32(i32 25, float %1972)  ; Rsqrt(value)
  %1974 = fmul fast float %1965, %1973
  %1975 = fmul fast float %1967, %1973
  %1976 = fmul fast float %1973, %1971
  %1977 = fmul fast float %1976, %1707
  %1978 = fmul fast float %1976, %1708
  %1979 = fmul fast float %1976, %1709
  %1980 = fmul fast float %1974, %1730
  %1981 = fmul fast float %1974, %1731
  %1982 = fmul fast float %1974, %1732
  %1983 = fadd fast float %1980, %1977
  %1984 = fadd fast float %1981, %1978
  %1985 = fadd fast float %1982, %1979
  %1986 = fmul fast float %1975, %1736
  %1987 = fmul fast float %1975, %1737
  %1988 = fmul fast float %1975, %1738
  %1989 = fadd fast float %1983, %1986
  %1990 = fadd fast float %1984, %1987
  %1991 = fadd fast float %1985, %1988
  %1992 = call float @dx.op.dot3.f32(i32 55, float %1989, float %1990, float %1991, float %1989, float %1990, float %1991)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = call float @dx.op.unary.f32(i32 25, float %1992)  ; Rsqrt(value)
  %1994 = fmul fast float %1989, %1993
  %1995 = fmul fast float %1990, %1993
  %1996 = fmul fast float %1991, %1993
  %1997 = icmp ne i32 %1913, 0
  %1998 = select i1 %1997, float 1.000000e+00, float 0.000000e+00
  %1999 = fmul fast float %1903, %1998
  %2000 = and i32 %1757, 1
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2002, label %2006

; <label>:2002                                    ; preds = %1911
  %2003 = fsub fast float %1994, %1689
  %2004 = fsub fast float %1995, %1690
  %2005 = fsub fast float %1996, %1691
  br label %2006

; <label>:2006                                    ; preds = %2002, %1911
  %2007 = phi float [ %2003, %2002 ], [ %1994, %1911 ]
  %2008 = phi float [ %2004, %2002 ], [ %1995, %1911 ]
  %2009 = phi float [ %2005, %2002 ], [ %1996, %1911 ]
  %2010 = fmul float %2009, %1999
  %2011 = fmul float %2008, %1999
  %2012 = fmul float %2007, %1999
  %2013 = fadd fast float %2012, %1689
  %2014 = fadd fast float %2011, %1690
  %2015 = fadd fast float %2010, %1691
  %2016 = icmp ne i32 %1912, 0
  %2017 = select i1 %2016, float 1.000000e+00, float 0.000000e+00
  %2018 = fmul fast float %1903, %2017
  %2019 = fsub fast float %1957, %1696
  %2020 = fsub fast float %1958, %1697
  %2021 = fsub fast float %1959, %1698
  %2022 = fmul fast float %2019, %2018
  %2023 = fmul fast float %2020, %2018
  %2024 = fmul fast float %2021, %2018
  %2025 = fadd fast float %2022, %1696
  %2026 = fadd fast float %2023, %1697
  %2027 = fadd fast float %2024, %1698
  %2028 = fsub fast float %1930, %1695
  %2029 = fmul fast float %2028, %2018
  %2030 = fadd fast float %2029, %1695
  %2031 = fmul fast float %2018, %1685
  %2032 = fsub fast float %1685, %2031
  %2033 = fmul fast float %2018, %1684
  %2034 = fsub fast float %1684, %2033
  %2035 = fadd fast float %1903, %1694
  %2036 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2037 = fsub fast float %1950, %1693
  %2038 = fmul fast float %2037, %1999
  %2039 = fadd fast float %2038, %1693
  %2040 = fsub fast float %1936, %1692
  %2041 = fmul fast float %2040, %1999
  %2042 = fadd fast float %2041, %1692
  %2043 = call float @dx.op.dot3.f32(i32 55, float %1957, float %1958, float %1959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2047 = fmul fast float %2046, %2043
  %2048 = fadd fast float %2047, %2045
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = bitcast float %1745 to i32
  %2051 = and i32 %2050, 65535
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = lshr i32 %2050, 16
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = fcmp fast oge float %2052, 0.000000e+00
  %2056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2057 = extractvalue %dx.types.CBufRet.f32 %2056, 0
  %2058 = select i1 %2055, float %2052, float %2057
  %2059 = fadd fast float %2058, %2054
  %2060 = fsub fast float %2049, %1683
  %2061 = fmul fast float %2060, %1903
  %2062 = fadd fast float %2061, %1683
  %2063 = fmul fast float %2059, %1903
  %2064 = call float @dx.op.binary.f32(i32 35, float %1682, float %2063)  ; FMax(a,b)
  %2065 = and i32 %1757, 16
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2089, label %2067

; <label>:2067                                    ; preds = %2006
  %2068 = bitcast float %1751 to i32
  %2069 = add i32 %1748, 0
  %2070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2070, %dx.types.Handle %1916, float %1844, float %1847, float undef, float undef, i32 0, i32 0, i32 undef, float %1849, float %1851, float undef, float %1853, float %1855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = extractvalue %dx.types.ResRet.f32 %2071, 1
  %2074 = extractvalue %dx.types.ResRet.f32 %2071, 2
  %2075 = and i32 %2068, 65535
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = fmul fast float %2072, %1742
  %2078 = fmul fast float %2073, %1743
  %2079 = fmul fast float %2074, %1744
  %2080 = and i32 %1757, 16384
  %2081 = icmp ne i32 %2080, 0
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = select i1 %2081, float %2083, float 1.000000e+00
  %2085 = fmul fast float %2084, %2076
  %2086 = fmul fast float %2077, %2085
  %2087 = fmul fast float %2078, %2085
  %2088 = fmul fast float %2079, %2085
  br label %2089

; <label>:2089                                    ; preds = %2067, %2006
  %2090 = phi float [ %2086, %2067 ], [ 0.000000e+00, %2006 ]
  %2091 = phi float [ %2087, %2067 ], [ 0.000000e+00, %2006 ]
  %2092 = phi float [ %2088, %2067 ], [ 0.000000e+00, %2006 ]
  %2093 = fsub fast float %2090, %1686
  %2094 = fsub fast float %2091, %1687
  %2095 = fsub fast float %2092, %1688
  %2096 = fmul fast float %2093, %1903
  %2097 = fmul fast float %2094, %1903
  %2098 = fmul fast float %2095, %1903
  %2099 = fadd fast float %2096, %1686
  %2100 = fadd fast float %2097, %1687
  %2101 = fadd fast float %2098, %1688
  br label %1806

; <label>:2102                                    ; preds = %1806
  br label %2103

; <label>:2103                                    ; preds = %2102, %1584
  %2104 = phi float [ 0.000000e+00, %1584 ], [ %1807, %2102 ]
  %2105 = phi float [ %1598, %1584 ], [ %1808, %2102 ]
  %2106 = phi float [ %1596, %1584 ], [ %1809, %2102 ]
  %2107 = phi float [ 0.000000e+00, %1584 ], [ %1810, %2102 ]
  %2108 = phi float [ 0.000000e+00, %1584 ], [ %1811, %2102 ]
  %2109 = phi float [ %1590, %1584 ], [ %1812, %2102 ]
  %2110 = phi float [ %1591, %1584 ], [ %1813, %2102 ]
  %2111 = phi float [ %1592, %1584 ], [ %1814, %2102 ]
  %2112 = phi float [ %1624, %1584 ], [ %1815, %2102 ]
  %2113 = phi float [ %1625, %1584 ], [ %1816, %2102 ]
  %2114 = phi float [ %1626, %1584 ], [ %1817, %2102 ]
  %2115 = phi float [ %1595, %1584 ], [ %1818, %2102 ]
  %2116 = phi float [ %1594, %1584 ], [ %1819, %2102 ]
  %2117 = phi float [ 0.000000e+00, %1584 ], [ %1820, %2102 ]
  %2118 = phi float [ %1593, %1584 ], [ %1821, %2102 ]
  %2119 = phi float [ %1587, %1584 ], [ %1822, %2102 ]
  %2120 = phi float [ %1588, %1584 ], [ %1823, %2102 ]
  %2121 = phi float [ %1589, %1584 ], [ %1824, %2102 ]
  %2122 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2123 = call float @dx.op.unary.f32(i32 25, float %2122)  ; Rsqrt(value)
  %2124 = fmul fast float %2123, %2112
  %2125 = fmul fast float %2123, %2113
  %2126 = fmul fast float %2123, %2114
  %2127 = fadd fast float %2117, %748
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2129 = call float @dx.op.dot3.f32(i32 55, float %2124, float %2125, float %2126, float %2124, float %2125, float %2126)  ; Dot3(ax,ay,az,bx,by,bz)
  %2130 = call float @dx.op.unary.f32(i32 25, float %2129)  ; Rsqrt(value)
  %2131 = fmul fast float %2130, %2124
  %2132 = fmul fast float %2130, %2125
  %2133 = fmul fast float %2130, %2126
  %2134 = fadd fast float %2118, 0xBFB99999A0000000
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = fmul fast float %2135, 0x3FF1C71C80000000
  %2137 = call float @dx.op.binary.f32(i32 36, float %2118, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2138 = fsub fast float 1.000000e+00, %2136
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fmul fast float %2139, %2119
  %2141 = fmul fast float %2139, %2120
  %2142 = fmul fast float %2139, %2121
  %2143 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2144 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2145 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2146 = fmul fast float %2136, %2119
  %2147 = fmul fast float %2136, %2120
  %2148 = fmul fast float %2136, %2121
  %2149 = fadd fast float %2146, %2137
  %2150 = fadd fast float %2147, %2137
  %2151 = fadd fast float %2148, %2137
  %2152 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2153 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2154 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2155 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.i32 %2156, 3
  %2158 = and i32 %2157, 8
  %2159 = icmp ne i32 %2158, 0
  %2160 = call float @dx.op.binary.f32(i32 35, float %2143, float %2119)  ; FMax(a,b)
  %2161 = call float @dx.op.binary.f32(i32 35, float %2144, float %2119)  ; FMax(a,b)
  %2162 = call float @dx.op.binary.f32(i32 35, float %2145, float %2119)  ; FMax(a,b)
  %2163 = call float @dx.op.dot3.f32(i32 55, float %2143, float %2144, float %2145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2164 = select i1 %189, float %2119, float %2143
  %2165 = select i1 %189, float %2163, float %2144
  %2166 = select i1 %189, float 1.000000e+00, float %2145
  %2167 = select i1 %2159, float %2160, float %2164
  %2168 = select i1 %2159, float %2161, float %2165
  %2169 = select i1 %2159, float %2162, float %2166
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2174 = fadd fast float %2171, %118
  %2175 = fadd fast float %2172, %119
  %2176 = fadd fast float %2173, %120
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.CBufRet.f32 %2177, 1
  %2180 = fsub fast float %2174, %2178
  %2181 = fsub fast float %2175, %2179
  %2182 = fmul fast float %2180, %2180
  %2183 = fmul fast float %2181, %2181
  %2184 = fadd fast float %2182, %2183
  %2185 = call float @dx.op.unary.f32(i32 24, float %2184)  ; Sqrt(value)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2187 = fcmp fast olt float %2185, %2186
  br i1 %2187, label %2188, label %2255

; <label>:2188                                    ; preds = %2103
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2196 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2197 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2198 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2199 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2200 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2201 = fadd fast float %2198, %2174
  %2202 = fadd fast float %2199, %2175
  %2203 = fadd fast float %2200, %2176
  %2204 = fmul fast float %2201, %2190
  %2205 = call float @dx.op.tertiary.f32(i32 46, float %2202, float %2192, float %2204)  ; FMad(a,b,c)
  %2206 = call float @dx.op.tertiary.f32(i32 46, float %2203, float %2194, float %2205)  ; FMad(a,b,c)
  %2207 = fmul fast float %2201, %2195
  %2208 = call float @dx.op.tertiary.f32(i32 46, float %2202, float %2196, float %2207)  ; FMad(a,b,c)
  %2209 = call float @dx.op.tertiary.f32(i32 46, float %2203, float %2197, float %2208)  ; FMad(a,b,c)
  %2210 = fsub fast float %2206, %2198
  %2211 = fsub fast float %2209, %2199
  %2212 = fsub fast float %2210, %2178
  %2213 = fadd fast float %2212, %2186
  %2214 = fsub fast float %2211, %2179
  %2215 = fadd fast float %2214, %2186
  %2216 = extractvalue %dx.types.CBufRet.f32 %2177, 3
  %2217 = fmul fast float %2213, %2216
  %2218 = fmul fast float %2215, %2216
  %2219 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2220 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2221 = fsub fast float 1.000000e+00, %2219
  %2222 = fsub fast float 1.000000e+00, %2220
  %2223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2224 = extractvalue %dx.types.ResRet.f32 %2223, 0
  %2225 = fcmp fast ugt float %2224, 0.000000e+00
  br i1 %2225, label %2226, label %2529

; <label>:2226                                    ; preds = %2188
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2229 = fmul fast float %2228, %2224
  %2230 = extractvalue %dx.types.CBufRet.f32 %2227, 3
  %2231 = fadd fast float %2230, %2229
  %2232 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2233 = fadd fast float %2231, %2200
  %2234 = fmul fast float %2206, %2194
  %2235 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2197, float %2234)  ; FMad(a,b,c)
  %2236 = call float @dx.op.tertiary.f32(i32 46, float %2233, float %2232, float %2235)  ; FMad(a,b,c)
  %2237 = fsub fast float %2236, %2200
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2240 = fsub fast float %2237, %2239
  %2241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.ResRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.ResRet.f32 %2241, 2
  %2245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  %2247 = extractvalue %dx.types.ResRet.f32 %2245, 1
  %2248 = extractvalue %dx.types.ResRet.f32 %2245, 2
  %2249 = fadd fast float %2246, %2242
  %2250 = fmul fast float %2249, 0x3F847AE140000000
  %2251 = fadd fast float %2247, %2243
  %2252 = fmul fast float %2251, 0x3F847AE140000000
  %2253 = fadd fast float %2248, %2244
  %2254 = fmul fast float %2253, 0x3F847AE140000000
  br label %2529

; <label>:2255                                    ; preds = %2103
  %2256 = and i32 %165, 1
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2529, label %2258

; <label>:2258                                    ; preds = %2255
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2267 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2268 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2269 = extractvalue %dx.types.CBufRet.f32 %2261, 3
  %2270 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2271 = fadd fast float %2268, %2174
  %2272 = fadd fast float %2269, %2175
  %2273 = fadd fast float %2270, %2176
  %2274 = fmul fast float %2271, %2260
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2272, float %2262, float %2274)  ; FMad(a,b,c)
  %2276 = call float @dx.op.tertiary.f32(i32 46, float %2273, float %2264, float %2275)  ; FMad(a,b,c)
  %2277 = fmul fast float %2271, %2265
  %2278 = call float @dx.op.tertiary.f32(i32 46, float %2272, float %2266, float %2277)  ; FMad(a,b,c)
  %2279 = call float @dx.op.tertiary.f32(i32 46, float %2273, float %2267, float %2278)  ; FMad(a,b,c)
  %2280 = fsub fast float %2276, %2268
  %2281 = fsub fast float %2279, %2269
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2286 = extractvalue %dx.types.CBufRet.f32 %2282, 3
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 3
  %2289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.i32 %2289, 0
  %2291 = extractvalue %dx.types.CBufRet.i32 %2289, 1
  %2292 = udiv i32 %2291, %2290
  %2293 = fsub fast float %2280, %2283
  %2294 = fsub fast float %2281, %2284
  %2295 = call float @dx.op.binary.f32(i32 35, float %2293, float 0.000000e+00)  ; FMax(a,b)
  %2296 = call float @dx.op.binary.f32(i32 35, float %2294, float 0.000000e+00)  ; FMax(a,b)
  %2297 = call float @dx.op.binary.f32(i32 36, float %2295, float %2285)  ; FMin(a,b)
  %2298 = call float @dx.op.binary.f32(i32 36, float %2296, float %2286)  ; FMin(a,b)
  %2299 = add i32 %2290, -1
  %2300 = add i32 %2292, -1
  %2301 = fmul fast float %2297, %2288
  %2302 = fmul fast float %2298, %2288
  %2303 = fptoui float %2301 to i32
  %2304 = fptoui float %2302 to i32
  %2305 = call i32 @dx.op.binary.i32(i32 40, i32 %2303, i32 %2299)  ; UMin(a,b)
  %2306 = call i32 @dx.op.binary.i32(i32 40, i32 %2304, i32 %2300)  ; UMin(a,b)
  %2307 = mul i32 %2306, %2290
  %2308 = add i32 %2307, %2305
  %2309 = shl i32 %2308, 2
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = icmp eq i32 %2311, -1
  br i1 %2312, label %2529, label %2313

; <label>:2313                                    ; preds = %2258
  %2314 = mul i32 %2311, 148
  %2315 = add i32 %2314, 4
  %2316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = add i32 %2314, 8
  %2319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = add i32 %2314, 36
  %2322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = add i32 %2314, 60
  %2325 = add i32 %2314, 92
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = add i32 %2314, 116
  %2329 = fsub fast float %2280, %2317
  %2330 = fsub fast float %2281, %2320
  %2331 = fmul fast float %2288, %2329
  %2332 = fmul fast float %2288, %2330
  %2333 = call float @dx.op.unary.f32(i32 7, float %2331)  ; Saturate(value)
  %2334 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2335 = fsub fast float 1.000000e+00, %2334
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 2
  %2338 = call float @dx.op.unary.f32(i32 83, float %2333)  ; DerivCoarseX(value)
  %2339 = call float @dx.op.unary.f32(i32 83, float %2335)  ; DerivCoarseX(value)
  %2340 = call float @dx.op.unary.f32(i32 84, float %2333)  ; DerivCoarseY(value)
  %2341 = call float @dx.op.unary.f32(i32 84, float %2335)  ; DerivCoarseY(value)
  %2342 = fmul fast float %2338, %2337
  %2343 = fmul fast float %2339, %2337
  %2344 = fmul fast float %2340, %2337
  %2345 = fmul fast float %2341, %2337
  %2346 = call float @dx.op.dot2.f32(i32 54, float %2344, float %2345, float %2344, float %2345)  ; Dot2(ax,ay,bx,by)
  %2347 = call float @dx.op.dot2.f32(i32 54, float %2342, float %2343, float %2342, float %2343)  ; Dot2(ax,ay,bx,by)
  %2348 = call float @dx.op.binary.f32(i32 35, float %2347, float %2346)  ; FMax(a,b)
  %2349 = call float @dx.op.unary.f32(i32 23, float %2348)  ; Log(value)
  %2350 = fmul fast float %2349, 5.000000e-01
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2353 = fadd fast float %2352, %2350
  %2354 = call float @dx.op.binary.f32(i32 35, float %2353, float 0.000000e+00)  ; FMax(a,b)
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2357 = fadd fast float %2356, %2354
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 3
  %2360 = fadd fast float %2357, %2359
  %2361 = add i32 %2327, 0
  %2362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2361, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2363 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2362, i32 0)  ; GetDimensions(handle,mipLevel)
  %2364 = extractvalue %dx.types.Dimensions %2363, 0
  %2365 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2364)  ; FirstbitLo(value)
  %2366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.i32 %2366, 1
  %2368 = sub nsw i32 %2367, %2365
  %2369 = sitofp i32 %2368 to float
  %2370 = fsub fast float %2360, %2369
  %2371 = call float @dx.op.binary.f32(i32 35, float %2370, float 0.000000e+00)  ; FMax(a,b)
  %2372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2362, %dx.types.Handle %37, float %2333, float %2335, float %2323, float undef, i32 0, i32 0, i32 undef, float %2371)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = fcmp ule float %2373, 0x3FE0101020000000
  %2375 = extractvalue %dx.types.CBufRet.i32 %2366, 0
  %2376 = and i32 %2375, 128
  %2377 = icmp ne i32 %2376, 0
  %2378 = and i1 %2374, %2377
  br i1 %2378, label %2529, label %2379

; <label>:2379                                    ; preds = %2313
  %2380 = add i32 %2314, 20
  %2381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = add i32 %2314, 24
  %2384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = add i32 %2314, 40
  %2387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.f32 %2387, 0
  %2389 = add i32 %2314, 96
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2394 = fmul fast float %2393, %2333
  %2395 = fmul fast float %2393, %2335
  %2396 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2397 = fadd fast float %2394, %2396
  %2398 = fadd fast float %2395, %2396
  %2399 = add i32 %2391, 0
  %2400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2399, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2401 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2400, i32 0)  ; GetDimensions(handle,mipLevel)
  %2402 = extractvalue %dx.types.Dimensions %2401, 0
  %2403 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2402)  ; FirstbitLo(value)
  %2404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2405 = extractvalue %dx.types.CBufRet.i32 %2404, 1
  %2406 = sub nsw i32 %2405, %2403
  %2407 = sitofp i32 %2406 to float
  %2408 = fsub fast float %2357, %2407
  %2409 = call float @dx.op.binary.f32(i32 35, float %2408, float 0.000000e+00)  ; FMax(a,b)
  %2410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2400, %dx.types.Handle %37, float %2397, float %2398, float %2388, float undef, i32 0, i32 0, i32 undef, float %2409)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2411 = extractvalue %dx.types.ResRet.f32 %2410, 0
  %2412 = fmul fast float %2411, %2382
  %2413 = fadd fast float %2412, %2385
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.CBufRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.CBufRet.f32 %2414, 2
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 3
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 3
  %2422 = extractvalue %dx.types.CBufRet.f32 %2414, 3
  %2423 = fadd fast float %2419, %2280
  %2424 = fadd fast float %2421, %2281
  %2425 = fadd fast float %2413, %2422
  %2426 = fmul fast float %2423, %2415
  %2427 = call float @dx.op.tertiary.f32(i32 46, float %2424, float %2416, float %2426)  ; FMad(a,b,c)
  %2428 = call float @dx.op.tertiary.f32(i32 46, float %2425, float %2417, float %2427)  ; FMad(a,b,c)
  %2429 = fsub fast float %2428, %2422
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2432 = fsub fast float %2429, %2431
  %2433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.i32 %2433, 0
  %2435 = call i32 @dx.op.binary.i32(i32 40, i32 %2311, i32 %2434)  ; UMin(a,b)
  %2436 = mul i32 %2435, 36
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = add i32 %2436, 4
  %2440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.f32 %2440, 0
  %2442 = fmul fast float %2441, %2333
  %2443 = fmul fast float %2441, %2335
  %2444 = extractvalue %dx.types.CBufRet.f32 %2440, 1
  %2445 = fadd fast float %2442, %2444
  %2446 = fadd fast float %2443, %2444
  %2447 = icmp eq i32 %2438, 0
  br i1 %2447, label %2516, label %2448

; <label>:2448                                    ; preds = %2379
  br label %2449

; <label>:2449                                    ; preds = %2506, %2448
  %2450 = phi float [ %2507, %2506 ], [ 0.000000e+00, %2448 ]
  %2451 = phi float [ %2508, %2506 ], [ 0.000000e+00, %2448 ]
  %2452 = phi float [ %2509, %2506 ], [ 0.000000e+00, %2448 ]
  %2453 = phi float [ %2510, %2506 ], [ 0.000000e+00, %2448 ]
  %2454 = phi float [ %2511, %2506 ], [ 0.000000e+00, %2448 ]
  %2455 = phi float [ %2512, %2506 ], [ 0.000000e+00, %2448 ]
  %2456 = phi i32 [ %2513, %2506 ], [ 0, %2448 ]
  %2457 = shl i32 %2456, 2
  %2458 = add i32 %2324, %2457
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = add i32 %2328, %2457
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = add i32 %2463, 0
  %2465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2464, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2466 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2465, i32 0)  ; GetDimensions(handle,mipLevel)
  %2467 = extractvalue %dx.types.Dimensions %2466, 0
  %2468 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2467)  ; FirstbitLo(value)
  %2469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.i32 %2469, 1
  %2471 = sub nsw i32 %2470, %2468
  %2472 = sitofp i32 %2471 to float
  %2473 = fsub fast float %2357, %2472
  %2474 = call float @dx.op.binary.f32(i32 35, float %2473, float 0.000000e+00)  ; FMax(a,b)
  %2475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2465, %dx.types.Handle %37, float %2445, float %2446, float %2460, float undef, i32 0, i32 0, i32 undef, float %2474)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2476 = extractvalue %dx.types.ResRet.f32 %2475, 0
  %2477 = fcmp fast ogt float %2476, 0.000000e+00
  br i1 %2477, label %2478, label %2506

; <label>:2478                                    ; preds = %2449
  %2479 = add i32 %2439, %2457
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 32767
  %2483 = mul nuw nsw i32 %2482, 928
  %2484 = add nuw nsw i32 %2483, 48
  %2485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = extractvalue %dx.types.ResRet.f32 %2485, 1
  %2488 = extractvalue %dx.types.ResRet.f32 %2485, 2
  %2489 = add nuw nsw i32 %2483, 60
  %2490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = fmul fast float %2486, %2476
  %2495 = fmul fast float %2487, %2476
  %2496 = fmul fast float %2488, %2476
  %2497 = fadd fast float %2494, %2450
  %2498 = fadd fast float %2495, %2451
  %2499 = fadd fast float %2496, %2452
  %2500 = fmul fast float %2491, %2476
  %2501 = fmul fast float %2492, %2476
  %2502 = fmul fast float %2493, %2476
  %2503 = fadd fast float %2500, %2453
  %2504 = fadd fast float %2501, %2454
  %2505 = fadd fast float %2502, %2455
  br label %2506

; <label>:2506                                    ; preds = %2478, %2449
  %2507 = phi float [ %2497, %2478 ], [ %2450, %2449 ]
  %2508 = phi float [ %2498, %2478 ], [ %2451, %2449 ]
  %2509 = phi float [ %2499, %2478 ], [ %2452, %2449 ]
  %2510 = phi float [ %2503, %2478 ], [ %2453, %2449 ]
  %2511 = phi float [ %2504, %2478 ], [ %2454, %2449 ]
  %2512 = phi float [ %2505, %2478 ], [ %2455, %2449 ]
  %2513 = add nuw i32 %2456, 1
  %2514 = icmp eq i32 %2513, %2438
  br i1 %2514, label %2515, label %2449

; <label>:2515                                    ; preds = %2506
  br label %2516

; <label>:2516                                    ; preds = %2515, %2379
  %2517 = phi float [ 0.000000e+00, %2379 ], [ %2507, %2515 ]
  %2518 = phi float [ 0.000000e+00, %2379 ], [ %2508, %2515 ]
  %2519 = phi float [ 0.000000e+00, %2379 ], [ %2509, %2515 ]
  %2520 = phi float [ 0.000000e+00, %2379 ], [ %2510, %2515 ]
  %2521 = phi float [ 0.000000e+00, %2379 ], [ %2511, %2515 ]
  %2522 = phi float [ 0.000000e+00, %2379 ], [ %2512, %2515 ]
  %2523 = fadd fast float %2520, %2517
  %2524 = fmul fast float %2523, 0x3F847AE140000000
  %2525 = fadd fast float %2521, %2518
  %2526 = fmul fast float %2525, 0x3F847AE140000000
  %2527 = fadd fast float %2522, %2519
  %2528 = fmul fast float %2527, 0x3F847AE140000000
  br label %2529

; <label>:2529                                    ; preds = %2516, %2313, %2258, %2255, %2226, %2188
  %2530 = phi float [ %2240, %2226 ], [ -1.310720e+05, %2188 ], [ %2432, %2516 ], [ -1.310720e+05, %2258 ], [ -1.310720e+05, %2313 ], [ -1.310720e+05, %2255 ]
  %2531 = phi float [ %2250, %2226 ], [ 0.000000e+00, %2188 ], [ %2524, %2516 ], [ 0.000000e+00, %2258 ], [ 0.000000e+00, %2313 ], [ 0.000000e+00, %2255 ]
  %2532 = phi float [ %2252, %2226 ], [ 0.000000e+00, %2188 ], [ %2526, %2516 ], [ 0.000000e+00, %2258 ], [ 0.000000e+00, %2313 ], [ 0.000000e+00, %2255 ]
  %2533 = phi float [ %2254, %2226 ], [ 0.000000e+00, %2188 ], [ %2528, %2516 ], [ 0.000000e+00, %2258 ], [ 0.000000e+00, %2313 ], [ 0.000000e+00, %2255 ]
  %2534 = phi i1 [ true, %2226 ], [ false, %2188 ], [ true, %2516 ], [ false, %2258 ], [ false, %2313 ], [ false, %2255 ]
  %2535 = and i32 %165, 3
  %2536 = icmp eq i32 %2535, 1
  %2537 = select i1 %2536, float 1.000000e+00, float 0.000000e+00
  %2538 = fsub fast float %2530, %120
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = select i1 %2534, float %2539, float 1.000000e+00
  %2541 = fmul fast float %2540, %2537
  %2542 = icmp eq i32 %2535, 3
  %2543 = select i1 %2542, float 1.000000e+00, float %2541
  %2544 = call float @dx.op.binary.f32(i32 35, float %2104, float %2543)  ; FMax(a,b)
  %2545 = call float @dx.op.unary.f32(i32 7, float %2544)  ; Saturate(value)
  %2546 = fcmp fast une float %2545, 0.000000e+00
  %2547 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2548 = call float @dx.op.unary.f32(i32 25, float %2547)  ; Rsqrt(value)
  br i1 %2546, label %2556, label %2549

; <label>:2549                                    ; preds = %2529
  %2550 = fmul fast float %2548, %118
  %2551 = fmul fast float %2548, %119
  %2552 = fmul fast float %2548, %120
  %2553 = fsub fast float -0.000000e+00, %2550
  %2554 = fsub fast float -0.000000e+00, %2551
  %2555 = fsub fast float -0.000000e+00, %2552
  br label %2724

; <label>:2556                                    ; preds = %2529
  %2557 = fmul fast float %118, %2548
  %2558 = fsub fast float -0.000000e+00, %2557
  %2559 = fmul fast float %119, %2548
  %2560 = fsub fast float -0.000000e+00, %2559
  %2561 = fmul fast float %120, %2548
  %2562 = fsub fast float -0.000000e+00, %2561
  %2563 = call float @dx.op.dot3.f32(i32 55, float %2558, float %2560, float %2562, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2564 = fmul fast float %2545, 2.500000e+00
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2566 = fmul fast float %2545, 0x4013FFFFE0000000
  %2567 = fadd fast float %2566, 0xBFFFFFFFE0000000
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2569 = fmul fast float %2545, 0x4004000020000000
  %2570 = fadd fast float %2569, 0xBFF8000040000000
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2572 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2573 = fmul fast float %2134, 1.000000e+01
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fmul fast float %2574, 2.000000e+00
  %2576 = fsub fast float 3.000000e+00, %2575
  %2577 = fmul fast float %2574, %2574
  %2578 = fmul fast float %2577, %2576
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fsub fast float 0x3FE3333340000000, %2155
  %2581 = fmul fast float %2580, 0x400AAAAAA0000000
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2583 = fmul fast float %2579, %2582
  %2584 = fmul fast float %2167, 0x3FEA2B8620000000
  %2585 = fmul fast float %2168, 0x3FEA2B8620000000
  %2586 = fmul fast float %2169, 0x3FEA2B8620000000
  %2587 = fadd fast float %2584, 0x3FC81DFBA0000000
  %2588 = fmul fast float %2587, %2167
  %2589 = fadd fast float %2588, 0x3F910E6020000000
  %2590 = fadd fast float %2585, 0x3FC81DFBA0000000
  %2591 = fmul fast float %2590, %2168
  %2592 = fadd fast float %2591, 0x3F910E6020000000
  %2593 = fadd fast float %2586, 0x3FC81DFBA0000000
  %2594 = fmul fast float %2593, %2169
  %2595 = fadd fast float %2594, 0x3F910E6020000000
  %2596 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2597 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2598 = call float @dx.op.unary.f32(i32 7, float %2595)  ; Saturate(value)
  %2599 = fsub fast float %2596, %2167
  %2600 = fsub fast float %2597, %2168
  %2601 = fsub fast float %2598, %2169
  %2602 = fmul fast float %2599, %2572
  %2603 = fmul fast float %2602, %2583
  %2604 = fmul fast float %2600, %2572
  %2605 = fmul fast float %2604, %2583
  %2606 = fmul fast float %2601, %2572
  %2607 = fmul fast float %2606, %2583
  %2608 = fadd fast float %2603, %2167
  %2609 = fadd fast float %2605, %2168
  %2610 = fadd fast float %2607, %2169
  %2611 = fmul fast float %2115, %2115
  %2612 = fmul fast float %2611, %2611
  %2613 = fadd fast float %2568, 1.000000e+00
  %2614 = fsub fast float %2613, %2583
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = fsub fast float 1.000000e+00, %2612
  %2619 = call float @dx.op.binary.f32(i32 36, float %2615, float %2618)  ; FMin(a,b)
  %2620 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2621 = call float @dx.op.binary.f32(i32 35, float %2619, float %2620)  ; FMax(a,b)
  %2622 = fadd fast float %2617, 0xBFE4CCCCC0000000
  %2623 = fmul fast float %2622, 0x4006DB6DA0000000
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2625 = fmul fast float %2624, 2.000000e+00
  %2626 = fsub fast float 3.000000e+00, %2625
  %2627 = bitcast float %2152 to i32
  %2628 = ashr i32 %2627, 1
  %2629 = add nsw i32 %2628, 532487669
  %2630 = bitcast i32 %2629 to float
  %2631 = fsub fast float 1.000000e+00, %2630
  %2632 = bitcast float %2631 to i32
  %2633 = sub nsw i32 2129859010, %2632
  %2634 = bitcast i32 %2633 to float
  %2635 = fmul fast float %2634, 2.000000e+00
  %2636 = bitcast float %2153 to i32
  %2637 = ashr i32 %2636, 1
  %2638 = add nsw i32 %2637, 532487669
  %2639 = bitcast i32 %2638 to float
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = bitcast float %2640 to i32
  %2642 = sub nsw i32 2129859010, %2641
  %2643 = bitcast i32 %2642 to float
  %2644 = fmul fast float %2643, 2.000000e+00
  %2645 = bitcast float %2154 to i32
  %2646 = ashr i32 %2645, 1
  %2647 = add nsw i32 %2646, 532487669
  %2648 = bitcast i32 %2647 to float
  %2649 = fsub fast float 1.000000e+00, %2648
  %2650 = bitcast float %2649 to i32
  %2651 = sub nsw i32 2129859010, %2650
  %2652 = bitcast i32 %2651 to float
  %2653 = fmul fast float %2652, 2.000000e+00
  %2654 = fsub fast float 0x4002A9FBE0000000, %2635
  %2655 = fadd fast float %2635, 0x3FD54FDF00000000
  %2656 = bitcast float %2655 to i32
  %2657 = sub nsw i32 2129859010, %2656
  %2658 = bitcast i32 %2657 to float
  %2659 = fmul fast float %2658, %2654
  %2660 = fmul fast float %2659, %2659
  %2661 = fsub fast float 0x4002A9FBE0000000, %2644
  %2662 = fadd fast float %2644, 0x3FD54FDF00000000
  %2663 = bitcast float %2662 to i32
  %2664 = sub nsw i32 2129859010, %2663
  %2665 = bitcast i32 %2664 to float
  %2666 = fmul fast float %2665, %2661
  %2667 = fmul fast float %2666, %2666
  %2668 = fsub fast float 0x4002A9FBE0000000, %2653
  %2669 = fadd fast float %2653, 0x3FD54FDF00000000
  %2670 = bitcast float %2669 to i32
  %2671 = sub nsw i32 2129859010, %2670
  %2672 = bitcast i32 %2671 to float
  %2673 = fmul fast float %2672, %2668
  %2674 = fmul fast float %2673, %2673
  %2675 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2660)  ; FMax(a,b)
  %2676 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2667)  ; FMax(a,b)
  %2677 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2674)  ; FMax(a,b)
  %2678 = fsub fast float 1.000000e+00, %2563
  %2679 = fadd fast float %2678, %2579
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = fsub fast float 1.000000e+00, %2543
  %2682 = fmul fast float %2621, %2681
  %2683 = fmul fast float %2624, %2624
  %2684 = fmul fast float %2683, %2682
  %2685 = fmul fast float %2684, %2626
  %2686 = fmul fast float %2681, 0xBFE99999A0000000
  %2687 = fmul fast float %2686, %2572
  %2688 = fmul fast float %2687, %2583
  %2689 = fadd fast float %2688, 1.000000e+00
  %2690 = fadd fast float %2155, -1.000000e+00
  %2691 = fmul fast float %2689, %2690
  %2692 = fadd fast float %2691, 1.000000e+00
  %2693 = fsub fast float %2675, %2152
  %2694 = fsub fast float %2676, %2153
  %2695 = fsub fast float %2677, %2154
  %2696 = fmul fast float %2685, %2693
  %2697 = fmul fast float %2685, %2694
  %2698 = fmul fast float %2685, %2695
  %2699 = fadd fast float %2696, %2152
  %2700 = fadd fast float %2697, %2153
  %2701 = fadd fast float %2698, %2154
  %2702 = fsub fast float %53, %2131
  %2703 = fsub fast float %54, %2132
  %2704 = fsub fast float %55, %2133
  %2705 = fmul fast float %2685, %2702
  %2706 = fmul fast float %2685, %2703
  %2707 = fmul fast float %2685, %2704
  %2708 = fadd fast float %2705, %2131
  %2709 = fadd fast float %2706, %2132
  %2710 = fadd fast float %2707, %2133
  %2711 = fmul fast float %2685, %2680
  %2712 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = fmul fast float %2711, %2713
  %2715 = fadd fast float %2714, %2712
  %2716 = fsub fast float 1.000000e+00, %2115
  %2717 = fmul fast float %2685, %2716
  %2718 = fadd fast float %2717, %2115
  %2719 = call float @dx.op.dot3.f32(i32 55, float %2708, float %2709, float %2710, float %2708, float %2709, float %2710)  ; Dot3(ax,ay,az,bx,by,bz)
  %2720 = call float @dx.op.unary.f32(i32 25, float %2719)  ; Rsqrt(value)
  %2721 = fmul fast float %2708, %2720
  %2722 = fmul fast float %2709, %2720
  %2723 = fmul fast float %2710, %2720
  br label %2724

; <label>:2724                                    ; preds = %2556, %2549
  %2725 = phi float [ %2555, %2549 ], [ %2562, %2556 ]
  %2726 = phi float [ %2554, %2549 ], [ %2560, %2556 ]
  %2727 = phi float [ %2553, %2549 ], [ %2558, %2556 ]
  %2728 = phi float [ %2552, %2549 ], [ %2561, %2556 ]
  %2729 = phi float [ %2551, %2549 ], [ %2559, %2556 ]
  %2730 = phi float [ %2550, %2549 ], [ %2557, %2556 ]
  %2731 = phi float [ %2152, %2549 ], [ %2699, %2556 ]
  %2732 = phi float [ %2153, %2549 ], [ %2700, %2556 ]
  %2733 = phi float [ %2154, %2549 ], [ %2701, %2556 ]
  %2734 = phi float [ %2167, %2549 ], [ %2608, %2556 ]
  %2735 = phi float [ %2168, %2549 ], [ %2609, %2556 ]
  %2736 = phi float [ %2169, %2549 ], [ %2610, %2556 ]
  %2737 = phi float [ %2131, %2549 ], [ %2721, %2556 ]
  %2738 = phi float [ %2132, %2549 ], [ %2722, %2556 ]
  %2739 = phi float [ %2133, %2549 ], [ %2723, %2556 ]
  %2740 = phi float [ %2155, %2549 ], [ %2715, %2556 ]
  %2741 = phi float [ %2115, %2549 ], [ %2718, %2556 ]
  %2742 = select i1 %189, float 0.000000e+00, float %2733
  %2743 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %2727, float %2726, float %2725)  ; Dot3(ax,ay,az,bx,by,bz)
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2745 = call float @dx.op.dot3.f32(i32 55, float %2730, float %2729, float %2728, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = fmul fast float %2745, 2.000000e+00
  %2747 = fmul fast float %2746, %2737
  %2748 = fmul fast float %2746, %2738
  %2749 = fmul fast float %2746, %2739
  %2750 = fsub fast float %2730, %2747
  %2751 = fsub fast float %2729, %2748
  %2752 = fsub fast float %2728, %2749
  %2753 = call float @dx.op.binary.f32(i32 36, float %2741, float 1.000000e+00)  ; FMin(a,b)
  %2754 = fsub fast float 1.000000e+00, %2741
  %2755 = bitcast float %2754 to i32
  %2756 = sub nsw i32 2129859010, %2755
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2760 = fadd fast float %2758, %118
  %2761 = fadd fast float %2759, %119
  %2762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.i32 %2762, 0
  %2764 = icmp eq i32 %2763, 1
  br i1 %2764, label %2765, label %2800

; <label>:2765                                    ; preds = %2724
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.CBufRet.f32 %2766, 1
  %2769 = fsub fast float %2760, %2767
  %2770 = fsub fast float %2761, %2768
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.CBufRet.f32 %2771, 1
  %2774 = fmul fast float %2769, %2772
  %2775 = fmul fast float %2770, %2773
  %2776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2774, float %2775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  %2778 = fcmp fast ogt float %2777, 0.000000e+00
  %2779 = extractvalue %dx.types.CBufRet.i32 %2762, 3
  %2780 = icmp ne i32 %2779, 0
  %2781 = and i1 %2778, %2780
  br i1 %2781, label %2782, label %2800, !dx.controlflow.hints !81

; <label>:2782                                    ; preds = %2765
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2786 = fsub fast float %2760, %2784
  %2787 = fsub fast float %2761, %2785
  %2788 = fmul fast float %2786, %2786
  %2789 = fmul fast float %2787, %2787
  %2790 = fadd fast float %2788, %2789
  %2791 = uitofp i32 %2779 to float
  %2792 = fmul fast float %2791, %2791
  %2793 = fcmp fast ogt float %2790, %2792
  br i1 %2793, label %2800, label %2794

; <label>:2794                                    ; preds = %2782
  %2795 = call float @dx.op.unary.f32(i32 24, float %2790)  ; Sqrt(value)
  %2796 = fsub fast float %2791, %2795
  %2797 = fmul fast float %2796, 0x3F75555560000000
  %2798 = call float @dx.op.unary.f32(i32 7, float %2797)  ; Saturate(value)
  %2799 = call float @dx.op.binary.f32(i32 36, float %2798, float %2777)  ; FMin(a,b)
  br label %2800

; <label>:2800                                    ; preds = %2794, %2782, %2765, %2724
  %2801 = phi float [ 1.000000e+00, %2724 ], [ %2799, %2794 ], [ %2777, %2765 ], [ 0.000000e+00, %2782 ]
  %2802 = fcmp fast ogt float %2801, 0.000000e+00
  br i1 %2802, label %2803, label %2901, !dx.controlflow.hints !82

; <label>:2803                                    ; preds = %2800
  %2804 = fadd fast float %149, 5.000000e-01
  %2805 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %147, float %148, float %2805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.ResRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.ResRet.f32 %2806, 2
  %2810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2811 = extractvalue %dx.types.CBufRet.f32 %2810, 3
  %2812 = fmul fast float %2811, %2807
  %2813 = fmul fast float %2811, %2808
  %2814 = fmul fast float %2811, %2809
  %2815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %147, float %148, float %2805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %147, float %148, float %2805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2818 = extractvalue %dx.types.ResRet.f32 %2817, 0
  %2819 = extractvalue %dx.types.ResRet.f32 %2817, 1
  %2820 = fmul fast float %2818, 2.000000e+00
  %2821 = fmul fast float %2819, 2.000000e+00
  %2822 = fadd fast float %2820, -1.000000e+00
  %2823 = fadd fast float %2821, -1.000000e+00
  %2824 = fadd fast float %2822, %2823
  %2825 = fmul fast float %2824, 5.000000e-01
  %2826 = fsub fast float %2822, %2823
  %2827 = fmul fast float %2826, 5.000000e-01
  %2828 = call float @dx.op.unary.f32(i32 6, float %2825)  ; FAbs(value)
  %2829 = fsub fast float 1.000000e+00, %2828
  %2830 = call float @dx.op.unary.f32(i32 6, float %2827)  ; FAbs(value)
  %2831 = fsub fast float %2829, %2830
  %2832 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2831)  ; FMax(a,b)
  %2833 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2827, float %2832, float %2825, float %2827, float %2832)  ; Dot3(ax,ay,az,bx,by,bz)
  %2834 = bitcast float %2833 to i32
  %2835 = ashr i32 %2834, 1
  %2836 = sub nsw i32 1597250115, %2835
  %2837 = bitcast i32 %2836 to float
  %2838 = fmul fast float %2837, %2825
  %2839 = fmul fast float %2837, %2827
  %2840 = fmul fast float %2837, %2832
  %2841 = fsub fast float 1.000000e+00, %2816
  %2842 = fdiv fast float %2841, %2840
  %2843 = fmul fast float %2840, %53
  %2844 = fmul fast float %2840, %54
  %2845 = fmul fast float %2840, %55
  %2846 = fmul fast float %2838, %49
  %2847 = fmul fast float %2838, %50
  %2848 = fmul fast float %2838, %51
  %2849 = fadd fast float %2843, %2846
  %2850 = fadd fast float %2844, %2847
  %2851 = fadd fast float %2845, %2848
  %2852 = fmul fast float %2839, %82
  %2853 = fmul fast float %2839, %83
  %2854 = fmul fast float %2839, %84
  %2855 = fadd fast float %2849, %2852
  %2856 = fadd fast float %2850, %2853
  %2857 = fadd fast float %2851, %2854
  %2858 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2856, float %2857, float %2855, float %2856, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2859 = call float @dx.op.unary.f32(i32 25, float %2858)  ; Rsqrt(value)
  %2860 = fmul fast float %2855, %2859
  %2861 = fmul fast float %2856, %2859
  %2862 = fmul fast float %2857, %2859
  %2863 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %2864 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  %2865 = fmul fast float %2864, 5.000000e-01
  %2866 = fadd fast float %2865, 5.000000e-01
  %2867 = fmul fast float %2866, %2816
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %2860, float %2861, float %2862)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2870 = fmul fast float %2869, %2842
  %2871 = fadd fast float %2867, %2870
  %2872 = fsub fast float 5.000000e-01, %2865
  %2873 = fmul fast float %2872, %2734
  %2874 = fmul fast float %2872, %2735
  %2875 = fmul fast float %2872, %2736
  %2876 = fadd fast float %2871, %2873
  %2877 = fmul fast float %2876, %2812
  %2878 = fadd fast float %2871, %2874
  %2879 = fmul fast float %2878, %2813
  %2880 = fadd fast float %2871, %2875
  %2881 = fmul fast float %2880, %2814
  %2882 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2752, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %2883 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2884 = fmul fast float %2883, 5.000000e-01
  %2885 = fadd fast float %2884, 5.000000e-01
  %2886 = fmul fast float %2885, %2816
  %2887 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2752, float %2860, float %2861, float %2862)  ; Dot3(ax,ay,az,bx,by,bz)
  %2888 = call float @dx.op.unary.f32(i32 7, float %2887)  ; Saturate(value)
  %2889 = fmul fast float %2888, %2842
  %2890 = fadd fast float %2886, %2889
  %2891 = fsub fast float 5.000000e-01, %2884
  %2892 = fmul fast float %2891, %2734
  %2893 = fmul fast float %2891, %2735
  %2894 = fmul fast float %2891, %2736
  %2895 = fadd fast float %2890, %2892
  %2896 = fmul fast float %2895, %2812
  %2897 = fadd fast float %2890, %2893
  %2898 = fmul fast float %2897, %2813
  %2899 = fadd fast float %2890, %2894
  %2900 = fmul fast float %2899, %2814
  br label %2901

; <label>:2901                                    ; preds = %2803, %2800
  %2902 = phi float [ %2896, %2803 ], [ 0.000000e+00, %2800 ]
  %2903 = phi float [ %2898, %2803 ], [ 0.000000e+00, %2800 ]
  %2904 = phi float [ %2900, %2803 ], [ 0.000000e+00, %2800 ]
  %2905 = phi float [ %2877, %2803 ], [ 0.000000e+00, %2800 ]
  %2906 = phi float [ %2879, %2803 ], [ 0.000000e+00, %2800 ]
  %2907 = phi float [ %2881, %2803 ], [ 0.000000e+00, %2800 ]
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2910 = fcmp fast ogt float %2909, 0.000000e+00
  %2911 = and i1 %2802, %2910
  br i1 %2911, label %2912, label %3116, !dx.controlflow.hints !83

; <label>:2912                                    ; preds = %2901
  %2913 = extractvalue %dx.types.CBufRet.f32 %2757, 2
  %2914 = fadd fast float %2913, %120
  %2915 = fmul fast float %2737, 3.200000e+01
  %2916 = fmul fast float %2738, 3.200000e+01
  %2917 = fadd fast float %2760, %2915
  %2918 = fadd fast float %2761, %2916
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.CBufRet.f32 %2919, 1
  %2922 = fsub fast float %2917, %2920
  %2923 = fsub fast float %2918, %2921
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.CBufRet.f32 %2924, 1
  %2927 = fmul fast float %2922, %2925
  %2928 = fmul fast float %2923, %2926
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 0
  %2931 = extractvalue %dx.types.CBufRet.f32 %2929, 1
  %2932 = fsub fast float %2760, %2930
  %2933 = fsub fast float %2761, %2931
  %2934 = fmul fast float %2932, %2932
  %2935 = fmul fast float %2933, %2933
  %2936 = fadd fast float %2934, %2935
  %2937 = call float @dx.op.unary.f32(i32 24, float %2936)  ; Sqrt(value)
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2941 = fsub fast float %2937, %2939
  %2942 = fdiv fast float %2941, %2940
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  %2944 = fmul fast float %2943, 2.000000e+00
  %2945 = fsub fast float 3.000000e+00, %2944
  %2946 = fmul fast float %2943, %2943
  %2947 = fmul fast float %2946, %2945
  %2948 = fcmp fast oge float %2927, 0.000000e+00
  %2949 = fcmp fast ole float %2927, 1.000000e+00
  %2950 = and i1 %2949, %2948
  %2951 = fcmp fast oge float %2928, 0.000000e+00
  %2952 = and i1 %2951, %2950
  %2953 = fcmp fast ole float %2928, 1.000000e+00
  %2954 = and i1 %2953, %2952
  %2955 = fcmp fast ogt float %2947, 0.000000e+00
  %2956 = and i1 %2955, %2954
  br i1 %2956, label %2957, label %3080, !dx.controlflow.hints !84

; <label>:2957                                    ; preds = %2912
  %2958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2959 = extractvalue %dx.types.CBufRet.f32 %2958, 2
  %2960 = extractvalue %dx.types.CBufRet.f32 %2958, 3
  %2961 = fmul fast float %2959, %2927
  %2962 = fmul fast float %2960, %2928
  %2963 = call float @dx.op.unary.f32(i32 27, float %2961)  ; Round_ni(value)
  %2964 = call float @dx.op.unary.f32(i32 27, float %2962)  ; Round_ni(value)
  %2965 = fptosi float %2963 to i32
  %2966 = fptosi float %2964 to i32
  %2967 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2965, i32 %2966, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = lshr i32 %2968, 16
  %2970 = icmp eq i32 %2969, 65535
  br i1 %2970, label %3080, label %2971

; <label>:2971                                    ; preds = %2957
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 0
  %2974 = fmul fast float %2973, %2927
  %2975 = extractvalue %dx.types.CBufRet.f32 %2972, 1
  %2976 = fadd fast float %2974, %2975
  %2977 = extractvalue %dx.types.CBufRet.f32 %2972, 2
  %2978 = fmul fast float %2977, %2928
  %2979 = extractvalue %dx.types.CBufRet.f32 %2972, 3
  %2980 = fadd fast float %2978, %2979
  %2981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2976, float %2980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 1
  %2986 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %2987 = fsub fast float %2985, %2986
  %2988 = fmul fast float %2987, %2982
  %2989 = fadd fast float %2988, %2986
  %2990 = extractvalue %dx.types.CBufRet.f32 %2984, 3
  %2991 = extractvalue %dx.types.CBufRet.f32 %2984, 2
  %2992 = fsub fast float %2990, %2991
  %2993 = fmul fast float %2992, %2983
  %2994 = fadd fast float %2993, %2991
  %2995 = fsub fast float %2914, %2989
  %2996 = fsub fast float %2994, %2989
  %2997 = fdiv fast float %2995, %2996
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2908, 1
  %3000 = extractvalue %dx.types.CBufRet.f32 %2958, 0
  %3001 = extractvalue %dx.types.CBufRet.f32 %2958, 1
  %3002 = fmul fast float %3000, %2927
  %3003 = fmul fast float %3001, %2928
  %3004 = fmul fast float %3002, 1.250000e-01
  %3005 = fmul fast float %3003, 1.250000e-01
  %3006 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3007 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3008 = fmul fast float %3006, 8.000000e+00
  %3009 = fmul fast float %3007, 8.000000e+00
  %3010 = fsub fast float %3002, %3008
  %3011 = fsub fast float %3003, %3009
  %3012 = fadd fast float %3010, 5.000000e-01
  %3013 = fadd fast float %3011, 5.000000e-01
  %3014 = and i32 %2969, 255
  %3015 = lshr i32 %2968, 24
  %3016 = mul nuw nsw i32 %3014, 9
  %3017 = uitofp i32 %3016 to float
  %3018 = mul nuw nsw i32 %3015, 9
  %3019 = uitofp i32 %3018 to float
  %3020 = fadd fast float %3012, %3017
  %3021 = fadd fast float %3013, %3019
  %3022 = fdiv fast float %3020, %2909
  %3023 = fdiv fast float %3021, %2999
  %3024 = fmul fast float %2998, 4.375000e-01
  %3025 = fadd fast float %3024, 3.125000e-02
  %3026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3022, float %3023, float %3025, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.ResRet.f32 %3026, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3026, 2
  %3030 = fadd fast float %3024, 5.312500e-01
  %3031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3022, float %3023, float %3030, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = fmul fast float %3032, 2.000000e+00
  %3036 = fmul fast float %3033, 2.000000e+00
  %3037 = fmul fast float %3034, 2.000000e+00
  %3038 = fadd fast float %3035, -1.000000e+00
  %3039 = fadd fast float %3036, -1.000000e+00
  %3040 = fadd fast float %3037, -1.000000e+00
  %3041 = fmul fast float %3038, %3038
  %3042 = fmul fast float %3039, %3039
  %3043 = fadd fast float %3041, %3042
  %3044 = fmul fast float %3040, %3040
  %3045 = fadd fast float %3043, %3044
  %3046 = call float @dx.op.unary.f32(i32 24, float %3045)  ; Sqrt(value)
  %3047 = fcmp fast ogt float %3046, 0.000000e+00
  br i1 %3047, label %3048, label %3052

; <label>:3048                                    ; preds = %2971
  %3049 = fdiv fast float %3038, %3046
  %3050 = fdiv fast float %3039, %3046
  %3051 = fdiv fast float %3040, %3046
  br label %3052

; <label>:3052                                    ; preds = %3048, %2971
  %3053 = phi float [ %3049, %3048 ], [ 0.000000e+00, %2971 ]
  %3054 = phi float [ %3050, %3048 ], [ 0.000000e+00, %2971 ]
  %3055 = phi float [ %3051, %3048 ], [ 0.000000e+00, %2971 ]
  %3056 = call float @dx.op.dot3.f32(i32 55, float %3053, float %3054, float %3055, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %3057 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3056)  ; FMax(a,b)
  %3058 = fmul fast float %3057, 0x400C5BF8A0000000
  %3059 = fmul fast float %3027, %2947
  %3060 = fmul fast float %3059, %3058
  %3061 = fmul fast float %3028, %2947
  %3062 = fmul fast float %3061, %3058
  %3063 = fmul fast float %3029, %2947
  %3064 = fmul fast float %3063, %3058
  %3065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3066 = extractvalue %dx.types.CBufRet.f32 %3065, 3
  %3067 = fmul fast float %3060, %3066
  %3068 = fmul fast float %3062, %3066
  %3069 = fmul fast float %3064, %3066
  %3070 = fcmp fast ogt float %2914, %2994
  br i1 %3070, label %3071, label %3080

; <label>:3071                                    ; preds = %3052
  %3072 = fmul fast float %2996, 0x3FC24924A0000000
  %3073 = fsub fast float %2914, %2994
  %3074 = fdiv fast float %3073, %3072
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3076 = fsub fast float 1.000000e+00, %3075
  %3077 = fmul fast float %3076, %3067
  %3078 = fmul fast float %3076, %3068
  %3079 = fmul fast float %3076, %3069
  br label %3080

; <label>:3080                                    ; preds = %3071, %3052, %2957, %2912
  %3081 = phi float [ %3079, %3071 ], [ %3069, %3052 ], [ 0.000000e+00, %2957 ], [ 0.000000e+00, %2912 ]
  %3082 = phi float [ %3078, %3071 ], [ %3068, %3052 ], [ 0.000000e+00, %2957 ], [ 0.000000e+00, %2912 ]
  %3083 = phi float [ %3077, %3071 ], [ %3067, %3052 ], [ 0.000000e+00, %2957 ], [ 0.000000e+00, %2912 ]
  %3084 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3083)  ; FMax(a,b)
  %3085 = fmul fast float %3084, 0x3FD20DD760000000
  %3086 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2750, float %2751, float %2752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3087 = fmul fast float %3086, 0x3FDF454380000000
  %3088 = fmul fast float %3086, %3086
  %3089 = fmul fast float %3088, 0x3FEE471020000000
  %3090 = fadd fast float %3089, 0xBFD42F6020000000
  %3091 = call float @dx.op.dot3.f32(i32 55, float %3084, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3087, float %3090)  ; Dot3(ax,ay,az,bx,by,bz)
  %3092 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3082)  ; FMax(a,b)
  %3093 = fmul fast float %3092, 0x3FD20DD760000000
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3092, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3087, float %3090)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3081)  ; FMax(a,b)
  %3096 = fmul fast float %3095, 0x3FD20DD760000000
  %3097 = call float @dx.op.dot3.f32(i32 55, float %3095, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3087, float %3090)  ; Dot3(ax,ay,az,bx,by,bz)
  %3098 = call float @dx.op.binary.f32(i32 35, float %3085, float 0.000000e+00)  ; FMax(a,b)
  %3099 = call float @dx.op.binary.f32(i32 35, float %3093, float 0.000000e+00)  ; FMax(a,b)
  %3100 = call float @dx.op.binary.f32(i32 35, float %3096, float 0.000000e+00)  ; FMax(a,b)
  %3101 = call float @dx.op.binary.f32(i32 35, float %3091, float 0.000000e+00)  ; FMax(a,b)
  %3102 = call float @dx.op.binary.f32(i32 35, float %3094, float 0.000000e+00)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 35, float %3097, float 0.000000e+00)  ; FMax(a,b)
  %3104 = fmul fast float %3098, %2801
  %3105 = fmul fast float %3099, %2801
  %3106 = fmul fast float %3100, %2801
  %3107 = fadd fast float %3104, %2905
  %3108 = fadd fast float %3105, %2906
  %3109 = fadd fast float %3106, %2907
  %3110 = fmul fast float %3101, %2801
  %3111 = fmul fast float %3102, %2801
  %3112 = fmul fast float %3103, %2801
  %3113 = fadd fast float %3110, %2902
  %3114 = fadd fast float %3111, %2903
  %3115 = fadd fast float %3112, %2904
  br label %3116

; <label>:3116                                    ; preds = %3080, %2901
  %3117 = phi float [ %3113, %3080 ], [ %2902, %2901 ]
  %3118 = phi float [ %3114, %3080 ], [ %2903, %2901 ]
  %3119 = phi float [ %3115, %3080 ], [ %2904, %2901 ]
  %3120 = phi float [ %3107, %3080 ], [ %2905, %2901 ]
  %3121 = phi float [ %3108, %3080 ], [ %2906, %2901 ]
  %3122 = phi float [ %3109, %3080 ], [ %2907, %2901 ]
  %3123 = fcmp fast olt float %2801, 1.000000e+00
  br i1 %3123, label %3124, label %3942, !dx.controlflow.hints !85

; <label>:3124                                    ; preds = %3116
  %3125 = extractvalue %dx.types.CBufRet.f32 %2757, 2
  %3126 = fadd fast float %3125, %120
  %3127 = fmul fast float %2737, 3.200000e+01
  %3128 = fmul fast float %2738, 3.200000e+01
  %3129 = fadd fast float %2760, %3127
  %3130 = fadd fast float %2761, %3128
  %3131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3132 = extractvalue %dx.types.CBufRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.CBufRet.f32 %3131, 1
  %3134 = fsub fast float %3129, %3132
  %3135 = fsub fast float %3130, %3133
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 0
  %3138 = extractvalue %dx.types.CBufRet.f32 %3136, 1
  %3139 = fmul fast float %3134, %3137
  %3140 = fmul fast float %3135, %3138
  %3141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3142 = extractvalue %dx.types.CBufRet.f32 %3141, 0
  %3143 = fmul fast float %3139, %3142
  %3144 = extractvalue %dx.types.CBufRet.f32 %3141, 1
  %3145 = fadd fast float %3143, %3144
  %3146 = extractvalue %dx.types.CBufRet.f32 %3141, 2
  %3147 = fmul fast float %3146, %3140
  %3148 = extractvalue %dx.types.CBufRet.f32 %3141, 3
  %3149 = fadd fast float %3147, %3148
  %3150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3145, float %3149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.ResRet.f32 %3150, 1
  %3153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3153, 1
  %3155 = extractvalue %dx.types.CBufRet.f32 %3153, 0
  %3156 = fsub fast float %3154, %3155
  %3157 = fmul fast float %3156, %3151
  %3158 = fadd fast float %3157, %3155
  %3159 = extractvalue %dx.types.CBufRet.f32 %3153, 3
  %3160 = extractvalue %dx.types.CBufRet.f32 %3153, 2
  %3161 = fsub fast float %3159, %3160
  %3162 = fmul fast float %3161, %3152
  %3163 = fadd fast float %3162, %3160
  %3164 = fsub fast float %3126, %3158
  %3165 = fsub fast float %3163, %3158
  %3166 = fdiv fast float %3164, %3165
  %3167 = call float @dx.op.unary.f32(i32 7, float %3166)  ; Saturate(value)
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 0
  %3170 = fmul fast float %3169, %3167
  %3171 = extractvalue %dx.types.CBufRet.f32 %3168, 1
  %3172 = fadd fast float %3170, %3171
  %3173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3145, float %3149, float %3172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3174 = extractvalue %dx.types.ResRet.f32 %3173, 0
  %3175 = extractvalue %dx.types.ResRet.f32 %3173, 1
  %3176 = extractvalue %dx.types.ResRet.f32 %3173, 2
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3179 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3180 = extractvalue %dx.types.CBufRet.f32 %3177, 2
  %3181 = fmul fast float %3178, %3174
  %3182 = fmul fast float %3179, %3175
  %3183 = fmul fast float %3180, %3176
  %3184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.CBufRet.f32 %3184, 1
  %3187 = extractvalue %dx.types.CBufRet.f32 %3184, 2
  %3188 = fadd fast float %3181, %3185
  %3189 = fadd fast float %3182, %3186
  %3190 = fadd fast float %3183, %3187
  %3191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3192 = extractvalue %dx.types.CBufRet.f32 %3191, 0
  %3193 = fmul fast float %3192, %3139
  %3194 = extractvalue %dx.types.CBufRet.f32 %3191, 1
  %3195 = fadd fast float %3193, %3194
  %3196 = extractvalue %dx.types.CBufRet.f32 %3191, 2
  %3197 = fmul fast float %3196, %3140
  %3198 = extractvalue %dx.types.CBufRet.f32 %3191, 3
  %3199 = fadd fast float %3197, %3198
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3204 = extractvalue %dx.types.CBufRet.f32 %3200, 3
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3208 = extractvalue %dx.types.CBufRet.f32 %3205, 2
  %3209 = extractvalue %dx.types.CBufRet.f32 %3205, 3
  %3210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3195, float %3199, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3211 = extractvalue %dx.types.ResRet.f32 %3210, 0
  %3212 = extractvalue %dx.types.ResRet.f32 %3210, 1
  %3213 = extractvalue %dx.types.ResRet.f32 %3210, 2
  %3214 = extractvalue %dx.types.ResRet.f32 %3210, 3
  %3215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3195, float %3199, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3216 = extractvalue %dx.types.ResRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.ResRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.ResRet.f32 %3215, 2
  %3219 = extractvalue %dx.types.ResRet.f32 %3215, 3
  %3220 = fmul fast float %3211, %3188
  %3221 = fmul fast float %3216, %3188
  %3222 = fmul fast float %3218, %3188
  %3223 = fmul fast float %3214, %3188
  %3224 = fadd fast float %3220, %3201
  %3225 = fadd fast float %3221, %3202
  %3226 = fadd fast float %3222, %3203
  %3227 = fadd fast float %3223, %3204
  %3228 = fmul fast float %3212, %3188
  %3229 = fmul fast float %3217, %3188
  %3230 = fadd fast float %3228, %3206
  %3231 = fadd fast float %3229, %3207
  %3232 = fmul fast float %3213, %3188
  %3233 = fmul fast float %3219, %3188
  %3234 = fadd fast float %3232, %3208
  %3235 = fadd fast float %3233, %3209
  %3236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3195, float %3199, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = extractvalue %dx.types.ResRet.f32 %3236, 3
  %3241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3195, float %3199, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3242 = extractvalue %dx.types.ResRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.ResRet.f32 %3241, 1
  %3244 = extractvalue %dx.types.ResRet.f32 %3241, 2
  %3245 = extractvalue %dx.types.ResRet.f32 %3241, 3
  %3246 = fmul fast float %3237, %3189
  %3247 = fmul fast float %3242, %3189
  %3248 = fmul fast float %3244, %3189
  %3249 = fmul fast float %3240, %3189
  %3250 = fadd fast float %3224, %3246
  %3251 = fadd fast float %3225, %3247
  %3252 = fadd fast float %3226, %3248
  %3253 = fadd fast float %3227, %3249
  %3254 = fmul fast float %3238, %3189
  %3255 = fmul fast float %3243, %3189
  %3256 = fadd fast float %3230, %3254
  %3257 = fadd fast float %3231, %3255
  %3258 = fmul fast float %3239, %3189
  %3259 = fmul fast float %3245, %3189
  %3260 = fadd fast float %3234, %3258
  %3261 = fadd fast float %3235, %3259
  %3262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3195, float %3199, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  %3266 = extractvalue %dx.types.ResRet.f32 %3262, 3
  %3267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3195, float %3199, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = extractvalue %dx.types.ResRet.f32 %3267, 3
  %3272 = fmul fast float %3263, %3190
  %3273 = fmul fast float %3268, %3190
  %3274 = fmul fast float %3270, %3190
  %3275 = fmul fast float %3266, %3190
  %3276 = fadd fast float %3250, %3272
  %3277 = fadd fast float %3251, %3273
  %3278 = fadd fast float %3252, %3274
  %3279 = fadd fast float %3253, %3275
  %3280 = fmul fast float %3264, %3190
  %3281 = fmul fast float %3269, %3190
  %3282 = fadd fast float %3256, %3280
  %3283 = fadd fast float %3257, %3281
  %3284 = fmul fast float %3265, %3190
  %3285 = fmul fast float %3271, %3190
  %3286 = fadd fast float %3260, %3284
  %3287 = fadd fast float %3261, %3285
  %3288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3288, 0
  %3290 = fsub fast float %2760, %3289
  %3291 = fsub fast float %3132, %2760
  %3292 = call float @dx.op.binary.f32(i32 35, float %3291, float %3290)  ; FMax(a,b)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3288, 1
  %3294 = fsub fast float %2761, %3293
  %3295 = fsub fast float %3133, %2761
  %3296 = call float @dx.op.binary.f32(i32 35, float %3295, float %3294)  ; FMax(a,b)
  %3297 = call float @dx.op.binary.f32(i32 35, float %3292, float %3296)  ; FMax(a,b)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3136, 3
  %3299 = fmul fast float %3298, %3297
  %3300 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.CBufRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.CBufRet.f32 %3301, 2
  %3305 = extractvalue %dx.types.CBufRet.f32 %3301, 3
  %3306 = fsub fast float %3302, %3276
  %3307 = fsub fast float %3303, %3277
  %3308 = fsub fast float %3304, %3278
  %3309 = fsub fast float %3305, %3279
  %3310 = fmul fast float %3306, %3300
  %3311 = fmul fast float %3307, %3300
  %3312 = fmul fast float %3308, %3300
  %3313 = fmul fast float %3309, %3300
  %3314 = fadd fast float %3310, %3276
  %3315 = fadd fast float %3311, %3277
  %3316 = fadd fast float %3312, %3278
  %3317 = fadd fast float %3313, %3279
  %3318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.CBufRet.f32 %3318, 1
  %3321 = fsub fast float %3319, %3282
  %3322 = fsub fast float %3320, %3283
  %3323 = fmul fast float %3321, %3300
  %3324 = fmul fast float %3322, %3300
  %3325 = fadd fast float %3323, %3282
  %3326 = fadd fast float %3324, %3283
  %3327 = extractvalue %dx.types.CBufRet.f32 %3318, 2
  %3328 = extractvalue %dx.types.CBufRet.f32 %3318, 3
  %3329 = fsub fast float %3327, %3286
  %3330 = fsub fast float %3328, %3287
  %3331 = fmul fast float %3329, %3300
  %3332 = fmul fast float %3330, %3300
  %3333 = fadd fast float %3331, %3286
  %3334 = fadd fast float %3332, %3287
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 0
  %3337 = fmul fast float %3336, %3314
  %3338 = fmul fast float %3336, %3315
  %3339 = fmul fast float %3336, %3316
  %3340 = fmul fast float %3336, %3317
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3343 = fmul fast float %3342, %3325
  %3344 = fmul fast float %3342, %3326
  %3345 = fadd fast float %3343, %3337
  %3346 = fadd fast float %3344, %3339
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = fmul fast float %3348, %3333
  %3350 = fmul fast float %3348, %3334
  %3351 = fadd fast float %3345, %3349
  %3352 = fadd fast float %3346, %3350
  %3353 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3354 = fmul fast float %3353, %3314
  %3355 = fmul fast float %3353, %3315
  %3356 = fmul fast float %3353, %3316
  %3357 = fmul fast float %3353, %3317
  %3358 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3359 = fmul fast float %3358, %3325
  %3360 = fmul fast float %3358, %3326
  %3361 = fadd fast float %3359, %3354
  %3362 = fadd fast float %3360, %3356
  %3363 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3364 = fmul fast float %3363, %3333
  %3365 = fmul fast float %3363, %3334
  %3366 = fadd fast float %3361, %3364
  %3367 = fadd fast float %3362, %3365
  %3368 = extractvalue %dx.types.CBufRet.f32 %3335, 2
  %3369 = fmul fast float %3368, %3314
  %3370 = fmul fast float %3368, %3315
  %3371 = fmul fast float %3368, %3316
  %3372 = fmul fast float %3368, %3317
  %3373 = extractvalue %dx.types.CBufRet.f32 %3341, 2
  %3374 = fmul fast float %3373, %3325
  %3375 = fmul fast float %3373, %3326
  %3376 = fadd fast float %3374, %3369
  %3377 = fadd fast float %3375, %3371
  %3378 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3379 = fmul fast float %3378, %3333
  %3380 = fmul fast float %3378, %3334
  %3381 = fadd fast float %3376, %3379
  %3382 = fadd fast float %3377, %3380
  %3383 = fmul fast float %3370, %3370
  %3384 = fmul fast float %3382, %3382
  %3385 = fmul fast float %3372, %3372
  %3386 = fadd fast float %3385, %3383
  %3387 = fadd fast float %3386, %3384
  %3388 = call float @dx.op.unary.f32(i32 24, float %3387)  ; Sqrt(value)
  %3389 = fcmp fast ugt float %3388, 0.000000e+00
  br i1 %3389, label %3390, label %3405

; <label>:3390                                    ; preds = %3124
  %3391 = fsub fast float -0.000000e+00, %3372
  %3392 = fdiv fast float %3391, %3388
  %3393 = fsub fast float -0.000000e+00, %3370
  %3394 = fdiv fast float %3393, %3388
  %3395 = fdiv fast float %3382, %3388
  %3396 = fmul fast float %3381, 0x3FE279A760000000
  %3397 = fmul fast float %3394, %3370
  %3398 = fmul fast float %3395, %3382
  %3399 = fmul fast float %3392, %3372
  %3400 = fadd fast float %3397, %3399
  %3401 = fsub fast float %3400, %3398
  %3402 = call float @dx.op.unary.f32(i32 6, float %3401)  ; FAbs(value)
  %3403 = fadd fast float %3402, 0x3DDB7CDFE0000000
  %3404 = fdiv fast float %3396, %3403
  br label %3405

; <label>:3405                                    ; preds = %3390, %3124
  %3406 = phi float [ %3404, %3390 ], [ 1.000000e+00, %3124 ]
  %3407 = fmul fast float %3355, %3355
  %3408 = fmul fast float %3367, %3367
  %3409 = fmul fast float %3357, %3357
  %3410 = fadd fast float %3409, %3407
  %3411 = fadd fast float %3410, %3408
  %3412 = call float @dx.op.unary.f32(i32 24, float %3411)  ; Sqrt(value)
  %3413 = fcmp fast ugt float %3412, 0.000000e+00
  br i1 %3413, label %3414, label %3429

; <label>:3414                                    ; preds = %3405
  %3415 = fsub fast float -0.000000e+00, %3357
  %3416 = fdiv fast float %3415, %3412
  %3417 = fsub fast float -0.000000e+00, %3355
  %3418 = fdiv fast float %3417, %3412
  %3419 = fdiv fast float %3367, %3412
  %3420 = fmul fast float %3366, 0x3FE279A760000000
  %3421 = fmul fast float %3418, %3355
  %3422 = fmul fast float %3419, %3367
  %3423 = fmul fast float %3416, %3357
  %3424 = fadd fast float %3421, %3423
  %3425 = fsub fast float %3424, %3422
  %3426 = call float @dx.op.unary.f32(i32 6, float %3425)  ; FAbs(value)
  %3427 = fadd fast float %3426, 0x3DDB7CDFE0000000
  %3428 = fdiv fast float %3420, %3427
  br label %3429

; <label>:3429                                    ; preds = %3414, %3405
  %3430 = phi float [ %3428, %3414 ], [ 1.000000e+00, %3405 ]
  %3431 = call float @dx.op.binary.f32(i32 36, float %3430, float %3406)  ; FMin(a,b)
  %3432 = fmul fast float %3338, %3338
  %3433 = fmul fast float %3352, %3352
  %3434 = fmul fast float %3340, %3340
  %3435 = fadd fast float %3434, %3432
  %3436 = fadd fast float %3435, %3433
  %3437 = call float @dx.op.unary.f32(i32 24, float %3436)  ; Sqrt(value)
  %3438 = fcmp fast ugt float %3437, 0.000000e+00
  br i1 %3438, label %3439, label %3454

; <label>:3439                                    ; preds = %3429
  %3440 = fsub fast float -0.000000e+00, %3340
  %3441 = fdiv fast float %3440, %3437
  %3442 = fsub fast float -0.000000e+00, %3338
  %3443 = fdiv fast float %3442, %3437
  %3444 = fdiv fast float %3352, %3437
  %3445 = fmul fast float %3351, 0x3FE279A760000000
  %3446 = fmul fast float %3443, %3338
  %3447 = fmul fast float %3444, %3352
  %3448 = fmul fast float %3441, %3340
  %3449 = fadd fast float %3446, %3448
  %3450 = fsub fast float %3449, %3447
  %3451 = call float @dx.op.unary.f32(i32 6, float %3450)  ; FAbs(value)
  %3452 = fadd fast float %3451, 0x3DDB7CDFE0000000
  %3453 = fdiv fast float %3445, %3452
  br label %3454

; <label>:3454                                    ; preds = %3439, %3429
  %3455 = phi float [ %3453, %3439 ], [ 1.000000e+00, %3429 ]
  %3456 = call float @dx.op.binary.f32(i32 36, float %3455, float %3431)  ; FMin(a,b)
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3458 = fcmp fast olt float %3457, 1.000000e+00
  br i1 %3458, label %3459, label %3469

; <label>:3459                                    ; preds = %3454
  %3460 = fmul fast float %3457, %3338
  %3461 = fmul fast float %3457, %3352
  %3462 = fmul fast float %3457, %3340
  %3463 = fmul fast float %3457, %3355
  %3464 = fmul fast float %3457, %3367
  %3465 = fmul fast float %3457, %3357
  %3466 = fmul fast float %3457, %3370
  %3467 = fmul fast float %3457, %3382
  %3468 = fmul fast float %3457, %3372
  br label %3469

; <label>:3469                                    ; preds = %3459, %3454
  %3470 = phi float [ %3466, %3459 ], [ %3370, %3454 ]
  %3471 = phi float [ %3467, %3459 ], [ %3382, %3454 ]
  %3472 = phi float [ %3468, %3459 ], [ %3372, %3454 ]
  %3473 = phi float [ %3463, %3459 ], [ %3355, %3454 ]
  %3474 = phi float [ %3464, %3459 ], [ %3367, %3454 ]
  %3475 = phi float [ %3465, %3459 ], [ %3357, %3454 ]
  %3476 = phi float [ %3460, %3459 ], [ %3338, %3454 ]
  %3477 = phi float [ %3461, %3459 ], [ %3352, %3454 ]
  %3478 = phi float [ %3462, %3459 ], [ %3340, %3454 ]
  %3479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3351)  ; FMax(a,b)
  %3480 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3366)  ; FMax(a,b)
  %3481 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3381)  ; FMax(a,b)
  %3482 = fcmp fast oge float %3139, 0.000000e+00
  %3483 = and i1 %3482, %2910
  %3484 = fcmp fast ole float %3139, 1.000000e+00
  %3485 = and i1 %3484, %3483
  %3486 = fcmp fast oge float %3140, 0.000000e+00
  %3487 = and i1 %3486, %3485
  %3488 = fcmp fast ole float %3140, 1.000000e+00
  %3489 = and i1 %3488, %3487
  br i1 %3489, label %3490, label %3635, !dx.controlflow.hints !86

; <label>:3490                                    ; preds = %3469
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 2
  %3493 = extractvalue %dx.types.CBufRet.f32 %3491, 3
  %3494 = fmul fast float %3492, %3139
  %3495 = fmul fast float %3493, %3140
  %3496 = call float @dx.op.unary.f32(i32 27, float %3494)  ; Round_ni(value)
  %3497 = call float @dx.op.unary.f32(i32 27, float %3495)  ; Round_ni(value)
  %3498 = fptosi float %3496 to i32
  %3499 = fptosi float %3497 to i32
  %3500 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3498, i32 %3499, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 65535
  %3503 = lshr i32 %3501, 16
  %3504 = icmp eq i32 %3502, 65535
  br i1 %3504, label %3541, label %3505

; <label>:3505                                    ; preds = %3490
  %3506 = extractvalue %dx.types.CBufRet.f32 %2908, 1
  %3507 = extractvalue %dx.types.CBufRet.f32 %3491, 0
  %3508 = extractvalue %dx.types.CBufRet.f32 %3491, 1
  %3509 = fmul fast float %3507, %3139
  %3510 = fmul fast float %3508, %3140
  %3511 = fmul fast float %3509, 1.250000e-01
  %3512 = fmul fast float %3510, 1.250000e-01
  %3513 = call float @dx.op.unary.f32(i32 27, float %3511)  ; Round_ni(value)
  %3514 = call float @dx.op.unary.f32(i32 27, float %3512)  ; Round_ni(value)
  %3515 = fmul fast float %3513, 8.000000e+00
  %3516 = fmul fast float %3514, 8.000000e+00
  %3517 = and i32 %3501, 255
  %3518 = lshr i32 %3501, 8
  %3519 = and i32 %3518, 255
  %3520 = mul nuw nsw i32 %3517, 9
  %3521 = uitofp i32 %3520 to float
  %3522 = mul nuw nsw i32 %3519, 9
  %3523 = uitofp i32 %3522 to float
  %3524 = fadd fast float %3521, 5.000000e-01
  %3525 = fadd fast float %3524, %3509
  %3526 = fsub fast float %3525, %3515
  %3527 = fadd fast float %3523, 5.000000e-01
  %3528 = fadd fast float %3527, %3510
  %3529 = fsub fast float %3528, %3516
  %3530 = fdiv fast float %3526, %2909
  %3531 = fdiv fast float %3529, %3506
  %3532 = fmul fast float %3167, 4.375000e-01
  %3533 = fadd fast float %3532, 3.125000e-02
  %3534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3530, float %3531, float %3533, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.ResRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3534, 2
  %3538 = fadd fast float %3535, %3479
  %3539 = fadd fast float %3536, %3480
  %3540 = fadd fast float %3537, %3481
  br label %3541

; <label>:3541                                    ; preds = %3505, %3490
  %3542 = phi float [ %3540, %3505 ], [ %3481, %3490 ]
  %3543 = phi float [ %3539, %3505 ], [ %3480, %3490 ]
  %3544 = phi float [ %3538, %3505 ], [ %3479, %3490 ]
  %3545 = icmp eq i32 %3503, 65535
  br i1 %3545, label %3635, label %3546

; <label>:3546                                    ; preds = %3541
  %3547 = extractvalue %dx.types.CBufRet.f32 %2908, 1
  %3548 = extractvalue %dx.types.CBufRet.f32 %3491, 0
  %3549 = extractvalue %dx.types.CBufRet.f32 %3491, 1
  %3550 = fmul fast float %3548, %3139
  %3551 = fmul fast float %3549, %3140
  %3552 = fmul fast float %3550, 1.250000e-01
  %3553 = fmul fast float %3551, 1.250000e-01
  %3554 = call float @dx.op.unary.f32(i32 27, float %3552)  ; Round_ni(value)
  %3555 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3556 = fmul fast float %3554, 8.000000e+00
  %3557 = fmul fast float %3555, 8.000000e+00
  %3558 = fsub fast float %3550, %3556
  %3559 = fsub fast float %3551, %3557
  %3560 = fadd fast float %3558, 5.000000e-01
  %3561 = fadd fast float %3559, 5.000000e-01
  %3562 = and i32 %3503, 255
  %3563 = lshr i32 %3501, 24
  %3564 = mul nuw nsw i32 %3562, 9
  %3565 = uitofp i32 %3564 to float
  %3566 = mul nuw nsw i32 %3563, 9
  %3567 = uitofp i32 %3566 to float
  %3568 = fadd fast float %3560, %3565
  %3569 = fadd fast float %3561, %3567
  %3570 = fdiv fast float %3568, %2909
  %3571 = fdiv fast float %3569, %3547
  %3572 = fmul fast float %3167, 4.375000e-01
  %3573 = fadd fast float %3572, 3.125000e-02
  %3574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3570, float %3571, float %3573, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = fadd fast float %3572, 5.312500e-01
  %3579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3570, float %3571, float %3578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3583 = fmul fast float %3580, 2.000000e+00
  %3584 = fmul fast float %3581, 2.000000e+00
  %3585 = fmul fast float %3582, 2.000000e+00
  %3586 = fadd fast float %3583, -1.000000e+00
  %3587 = fadd fast float %3584, -1.000000e+00
  %3588 = fadd fast float %3585, -1.000000e+00
  %3589 = fmul fast float %3586, %3586
  %3590 = fmul fast float %3587, %3587
  %3591 = fadd fast float %3589, %3590
  %3592 = fmul fast float %3588, %3588
  %3593 = fadd fast float %3591, %3592
  %3594 = call float @dx.op.unary.f32(i32 24, float %3593)  ; Sqrt(value)
  %3595 = fcmp fast ogt float %3594, 0.000000e+00
  br i1 %3595, label %3596, label %3600

; <label>:3596                                    ; preds = %3546
  %3597 = fdiv fast float %3586, %3594
  %3598 = fdiv fast float %3587, %3594
  %3599 = fdiv fast float %3588, %3594
  br label %3600

; <label>:3600                                    ; preds = %3596, %3546
  %3601 = phi float [ %3597, %3596 ], [ 0.000000e+00, %3546 ]
  %3602 = phi float [ %3598, %3596 ], [ 0.000000e+00, %3546 ]
  %3603 = phi float [ %3599, %3596 ], [ 0.000000e+00, %3546 ]
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.CBufRet.f32 %3604, 1
  %3607 = fsub fast float %2760, %3605
  %3608 = fsub fast float %2761, %3606
  %3609 = fmul fast float %3607, %3607
  %3610 = fmul fast float %3608, %3608
  %3611 = fadd fast float %3609, %3610
  %3612 = call float @dx.op.unary.f32(i32 24, float %3611)  ; Sqrt(value)
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.CBufRet.f32 %3613, 1
  %3616 = fsub fast float %3612, %3614
  %3617 = fdiv fast float %3616, %3615
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = fmul fast float %3618, 2.000000e+00
  %3620 = fsub fast float 3.000000e+00, %3619
  %3621 = fmul fast float %3618, %3618
  %3622 = fmul fast float %3621, %3620
  %3623 = call float @dx.op.dot3.f32(i32 55, float %3601, float %3602, float %3603, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3623)  ; FMax(a,b)
  %3625 = fmul fast float %3624, 0x400C5BF8A0000000
  %3626 = fmul fast float %3622, %3575
  %3627 = fmul fast float %3626, %3625
  %3628 = fadd fast float %3627, %3544
  %3629 = fmul fast float %3622, %3576
  %3630 = fmul fast float %3629, %3625
  %3631 = fadd fast float %3630, %3543
  %3632 = fmul fast float %3622, %3577
  %3633 = fmul fast float %3632, %3625
  %3634 = fadd fast float %3633, %3542
  br label %3635

; <label>:3635                                    ; preds = %3600, %3541, %3469
  %3636 = phi float [ %3634, %3600 ], [ %3542, %3541 ], [ %3481, %3469 ]
  %3637 = phi float [ %3631, %3600 ], [ %3543, %3541 ], [ %3480, %3469 ]
  %3638 = phi float [ %3628, %3600 ], [ %3544, %3541 ], [ %3479, %3469 ]
  %3639 = fcmp fast ogt float %3126, %3163
  %3640 = and i1 %3482, %3639
  %3641 = and i1 %3484, %3640
  %3642 = and i1 %3486, %3641
  %3643 = and i1 %3488, %3642
  br i1 %3643, label %3644, label %3701, !dx.controlflow.hints !87

; <label>:3644                                    ; preds = %3635
  %3645 = fmul fast float %3165, 0x3FC24924A0000000
  %3646 = fsub fast float %3126, %3163
  %3647 = fdiv fast float %3646, %3645
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.CBufRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3655 = fsub fast float %3650, %3638
  %3656 = fsub fast float %3652, %3476
  %3657 = fsub fast float %3653, %3477
  %3658 = fsub fast float %3654, %3478
  %3659 = fmul fast float %3655, %3648
  %3660 = fmul fast float %3656, %3648
  %3661 = fmul fast float %3657, %3648
  %3662 = fmul fast float %3658, %3648
  %3663 = fadd fast float %3659, %3638
  %3664 = fadd fast float %3660, %3476
  %3665 = fadd fast float %3661, %3477
  %3666 = fadd fast float %3662, %3478
  %3667 = extractvalue %dx.types.CBufRet.f32 %3649, 1
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3672 = fsub fast float %3667, %3637
  %3673 = fsub fast float %3669, %3473
  %3674 = fsub fast float %3670, %3474
  %3675 = fsub fast float %3671, %3475
  %3676 = fmul fast float %3672, %3648
  %3677 = fmul fast float %3673, %3648
  %3678 = fmul fast float %3674, %3648
  %3679 = fmul fast float %3675, %3648
  %3680 = fadd fast float %3676, %3637
  %3681 = fadd fast float %3677, %3473
  %3682 = fadd fast float %3678, %3474
  %3683 = fadd fast float %3679, %3475
  %3684 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.CBufRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.CBufRet.f32 %3685, 2
  %3689 = fsub fast float %3684, %3636
  %3690 = fsub fast float %3686, %3470
  %3691 = fsub fast float %3687, %3471
  %3692 = fsub fast float %3688, %3472
  %3693 = fmul fast float %3689, %3648
  %3694 = fmul fast float %3690, %3648
  %3695 = fmul fast float %3691, %3648
  %3696 = fmul fast float %3692, %3648
  %3697 = fadd fast float %3693, %3636
  %3698 = fadd fast float %3694, %3470
  %3699 = fadd fast float %3695, %3471
  %3700 = fadd fast float %3696, %3472
  br label %3701

; <label>:3701                                    ; preds = %3644, %3635
  %3702 = phi float [ %3697, %3644 ], [ %3636, %3635 ]
  %3703 = phi float [ %3698, %3644 ], [ %3470, %3635 ]
  %3704 = phi float [ %3699, %3644 ], [ %3471, %3635 ]
  %3705 = phi float [ %3700, %3644 ], [ %3472, %3635 ]
  %3706 = phi float [ %3680, %3644 ], [ %3637, %3635 ]
  %3707 = phi float [ %3681, %3644 ], [ %3473, %3635 ]
  %3708 = phi float [ %3682, %3644 ], [ %3474, %3635 ]
  %3709 = phi float [ %3683, %3644 ], [ %3475, %3635 ]
  %3710 = phi float [ %3663, %3644 ], [ %3638, %3635 ]
  %3711 = phi float [ %3664, %3644 ], [ %3476, %3635 ]
  %3712 = phi float [ %3665, %3644 ], [ %3477, %3635 ]
  %3713 = phi float [ %3666, %3644 ], [ %3478, %3635 ]
  %3714 = extractvalue %dx.types.CBufRet.f32 %3288, 3
  %3715 = fmul fast float %3714, %3710
  %3716 = fmul fast float %3714, %3706
  %3717 = fmul fast float %3714, %3702
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 3
  %3720 = fmul fast float %3715, %3719
  %3721 = fmul fast float %3716, %3719
  %3722 = fmul fast float %3717, %3719
  %3723 = fmul fast float %3711, 1.500000e+00
  %3724 = fmul fast float %3723, %3714
  %3725 = fmul fast float %3724, %3719
  %3726 = fmul fast float %3712, 1.500000e+00
  %3727 = fmul fast float %3726, %3714
  %3728 = fmul fast float %3727, %3719
  %3729 = fmul fast float %3713, 1.500000e+00
  %3730 = fmul fast float %3729, %3714
  %3731 = fmul fast float %3730, %3719
  %3732 = fmul fast float %3707, 1.500000e+00
  %3733 = fmul fast float %3732, %3714
  %3734 = fmul fast float %3733, %3719
  %3735 = fmul fast float %3708, 1.500000e+00
  %3736 = fmul fast float %3735, %3714
  %3737 = fmul fast float %3736, %3719
  %3738 = fmul fast float %3709, 1.500000e+00
  %3739 = fmul fast float %3738, %3714
  %3740 = fmul fast float %3739, %3719
  %3741 = fmul fast float %3703, 1.500000e+00
  %3742 = fmul fast float %3741, %3714
  %3743 = fmul fast float %3742, %3719
  %3744 = fmul fast float %3704, 1.500000e+00
  %3745 = fmul fast float %3744, %3714
  %3746 = fmul fast float %3745, %3719
  %3747 = fmul fast float %3705, 1.500000e+00
  %3748 = fmul fast float %3747, %3714
  %3749 = fmul fast float %3748, %3719
  %3750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3720)  ; FMax(a,b)
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3725, float %3728, float %3731, float %3725, float %3728, float %3731)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = fcmp fast oeq float %3751, 0.000000e+00
  %3753 = fcmp fast oeq float %3750, 0.000000e+00
  %3754 = or i1 %3753, %3752
  br i1 %3754, label %3784, label %3755

; <label>:3755                                    ; preds = %3701
  %3756 = fsub fast float -0.000000e+00, %3731
  %3757 = fsub fast float -0.000000e+00, %3725
  %3758 = call float @dx.op.unary.f32(i32 24, float %3751)  ; Sqrt(value)
  %3759 = fdiv fast float %3758, %3750
  %3760 = fcmp fast ogt float %3759, 0x3FFB6F8900000000
  %3761 = select i1 %3760, float 0x3FFB6F8900000000, float %3759
  %3762 = fmul fast float %3761, 0x3FE8A23460000000
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = call float @dx.op.binary.f32(i32 35, float %3761, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3765 = fmul fast float %3763, %3750
  %3766 = fmul fast float %3764, 0x3FF279A740000000
  %3767 = fadd fast float %3766, -1.000000e+00
  %3768 = call float @dx.op.dot3.f32(i32 55, float %3756, float %3757, float %3728, float %3756, float %3757, float %3728)  ; Dot3(ax,ay,az,bx,by,bz)
  %3769 = call float @dx.op.unary.f32(i32 25, float %3768)  ; Rsqrt(value)
  %3770 = fmul fast float %3769, %3756
  %3771 = fmul fast float %3769, %3757
  %3772 = fmul fast float %3769, %3728
  %3773 = fmul fast float %3767, %3767
  %3774 = fsub fast float 1.000000e+00, %3773
  %3775 = fmul fast float %3764, 0x40005F8BE0000000
  %3776 = fsub fast float 0x400C5BF8A0000000, %3775
  %3777 = fdiv fast float %3765, %3776
  %3778 = fmul fast float %3777, 0x3FEE31C3C0000000
  %3779 = fmul fast float %3778, %3774
  %3780 = fmul fast float %3764, 0x3FDACB7480000000
  %3781 = fadd fast float %3780, 0xBFD7347680000000
  %3782 = fmul fast float %3781, %3777
  %3783 = fmul fast float %3782, %3774
  br label %3784

; <label>:3784                                    ; preds = %3755, %3701
  %3785 = phi float [ %3770, %3755 ], [ 0.000000e+00, %3701 ]
  %3786 = phi float [ %3771, %3755 ], [ 0.000000e+00, %3701 ]
  %3787 = phi float [ %3772, %3755 ], [ 0.000000e+00, %3701 ]
  %3788 = phi float [ %3779, %3755 ], [ 0.000000e+00, %3701 ]
  %3789 = phi float [ %3783, %3755 ], [ 0.000000e+00, %3701 ]
  %3790 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3786, float %3787, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %3791 = fmul fast float %3790, %3790
  %3792 = fmul fast float %3791, 0x3FEE471020000000
  %3793 = fadd fast float %3792, 0xBFD42F6020000000
  %3794 = fmul fast float %3750, 0x3FD20DD760000000
  %3795 = fmul fast float %3793, %3789
  %3796 = fmul fast float %3788, 0x3FDF454380000000
  %3797 = fmul fast float %3796, %3790
  %3798 = fadd fast float %3797, %3794
  %3799 = fadd fast float %3798, %3795
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3786, float %3787, float %2750, float %2751, float %2752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = fmul fast float %3800, 0x3FDF454380000000
  %3802 = fmul fast float %3800, %3800
  %3803 = fmul fast float %3802, 0x3FEE471020000000
  %3804 = fadd fast float %3803, 0xBFD42F6020000000
  %3805 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3788, float %3789, float 0x3FD20DD760000000, float %3801, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3806 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3721)  ; FMax(a,b)
  %3807 = call float @dx.op.dot3.f32(i32 55, float %3734, float %3737, float %3740, float %3734, float %3737, float %3740)  ; Dot3(ax,ay,az,bx,by,bz)
  %3808 = fcmp fast oeq float %3807, 0.000000e+00
  %3809 = fcmp fast oeq float %3806, 0.000000e+00
  %3810 = or i1 %3809, %3808
  br i1 %3810, label %3840, label %3811

; <label>:3811                                    ; preds = %3784
  %3812 = fsub fast float -0.000000e+00, %3740
  %3813 = fsub fast float -0.000000e+00, %3734
  %3814 = call float @dx.op.unary.f32(i32 24, float %3807)  ; Sqrt(value)
  %3815 = fdiv fast float %3814, %3806
  %3816 = fcmp fast ogt float %3815, 0x3FFB6F8900000000
  %3817 = select i1 %3816, float 0x3FFB6F8900000000, float %3815
  %3818 = fmul fast float %3817, 0x3FE8A23460000000
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = call float @dx.op.binary.f32(i32 35, float %3817, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3821 = fmul fast float %3819, %3806
  %3822 = fmul fast float %3820, 0x3FF279A740000000
  %3823 = fadd fast float %3822, -1.000000e+00
  %3824 = call float @dx.op.dot3.f32(i32 55, float %3812, float %3813, float %3737, float %3812, float %3813, float %3737)  ; Dot3(ax,ay,az,bx,by,bz)
  %3825 = call float @dx.op.unary.f32(i32 25, float %3824)  ; Rsqrt(value)
  %3826 = fmul fast float %3825, %3812
  %3827 = fmul fast float %3825, %3813
  %3828 = fmul fast float %3825, %3737
  %3829 = fmul fast float %3823, %3823
  %3830 = fsub fast float 1.000000e+00, %3829
  %3831 = fmul fast float %3820, 0x40005F8BE0000000
  %3832 = fsub fast float 0x400C5BF8A0000000, %3831
  %3833 = fdiv fast float %3821, %3832
  %3834 = fmul fast float %3833, 0x3FEE31C3C0000000
  %3835 = fmul fast float %3834, %3830
  %3836 = fmul fast float %3820, 0x3FDACB7480000000
  %3837 = fadd fast float %3836, 0xBFD7347680000000
  %3838 = fmul fast float %3837, %3833
  %3839 = fmul fast float %3838, %3830
  br label %3840

; <label>:3840                                    ; preds = %3811, %3784
  %3841 = phi float [ %3826, %3811 ], [ 0.000000e+00, %3784 ]
  %3842 = phi float [ %3827, %3811 ], [ 0.000000e+00, %3784 ]
  %3843 = phi float [ %3828, %3811 ], [ 0.000000e+00, %3784 ]
  %3844 = phi float [ %3835, %3811 ], [ 0.000000e+00, %3784 ]
  %3845 = phi float [ %3839, %3811 ], [ 0.000000e+00, %3784 ]
  %3846 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %3847 = fmul fast float %3846, %3846
  %3848 = fmul fast float %3847, 0x3FEE471020000000
  %3849 = fadd fast float %3848, 0xBFD42F6020000000
  %3850 = fmul fast float %3806, 0x3FD20DD760000000
  %3851 = fmul fast float %3849, %3845
  %3852 = fmul fast float %3844, 0x3FDF454380000000
  %3853 = fmul fast float %3852, %3846
  %3854 = fadd fast float %3853, %3850
  %3855 = fadd fast float %3854, %3851
  %3856 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %2750, float %2751, float %2752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3857 = fmul fast float %3856, 0x3FDF454380000000
  %3858 = fmul fast float %3856, %3856
  %3859 = fmul fast float %3858, 0x3FEE471020000000
  %3860 = fadd fast float %3859, 0xBFD42F6020000000
  %3861 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3844, float %3845, float 0x3FD20DD760000000, float %3857, float %3860)  ; Dot3(ax,ay,az,bx,by,bz)
  %3862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3722)  ; FMax(a,b)
  %3863 = call float @dx.op.dot3.f32(i32 55, float %3743, float %3746, float %3749, float %3743, float %3746, float %3749)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = fcmp fast oeq float %3863, 0.000000e+00
  %3865 = fcmp fast oeq float %3862, 0.000000e+00
  %3866 = or i1 %3865, %3864
  br i1 %3866, label %3896, label %3867

; <label>:3867                                    ; preds = %3840
  %3868 = fsub fast float -0.000000e+00, %3749
  %3869 = fsub fast float -0.000000e+00, %3743
  %3870 = call float @dx.op.unary.f32(i32 24, float %3863)  ; Sqrt(value)
  %3871 = fdiv fast float %3870, %3862
  %3872 = fcmp fast ogt float %3871, 0x3FFB6F8900000000
  %3873 = select i1 %3872, float 0x3FFB6F8900000000, float %3871
  %3874 = fmul fast float %3873, 0x3FE8A23460000000
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = call float @dx.op.binary.f32(i32 35, float %3873, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3877 = fmul fast float %3875, %3862
  %3878 = fmul fast float %3876, 0x3FF279A740000000
  %3879 = fadd fast float %3878, -1.000000e+00
  %3880 = call float @dx.op.dot3.f32(i32 55, float %3868, float %3869, float %3746, float %3868, float %3869, float %3746)  ; Dot3(ax,ay,az,bx,by,bz)
  %3881 = call float @dx.op.unary.f32(i32 25, float %3880)  ; Rsqrt(value)
  %3882 = fmul fast float %3881, %3868
  %3883 = fmul fast float %3881, %3869
  %3884 = fmul fast float %3881, %3746
  %3885 = fmul fast float %3879, %3879
  %3886 = fsub fast float 1.000000e+00, %3885
  %3887 = fmul fast float %3876, 0x40005F8BE0000000
  %3888 = fsub fast float 0x400C5BF8A0000000, %3887
  %3889 = fdiv fast float %3877, %3888
  %3890 = fmul fast float %3889, 0x3FEE31C3C0000000
  %3891 = fmul fast float %3890, %3886
  %3892 = fmul fast float %3876, 0x3FDACB7480000000
  %3893 = fadd fast float %3892, 0xBFD7347680000000
  %3894 = fmul fast float %3893, %3889
  %3895 = fmul fast float %3894, %3886
  br label %3896

; <label>:3896                                    ; preds = %3867, %3840
  %3897 = phi float [ %3882, %3867 ], [ 0.000000e+00, %3840 ]
  %3898 = phi float [ %3883, %3867 ], [ 0.000000e+00, %3840 ]
  %3899 = phi float [ %3884, %3867 ], [ 0.000000e+00, %3840 ]
  %3900 = phi float [ %3891, %3867 ], [ 0.000000e+00, %3840 ]
  %3901 = phi float [ %3895, %3867 ], [ 0.000000e+00, %3840 ]
  %3902 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %3903 = fmul fast float %3902, %3902
  %3904 = fmul fast float %3903, 0x3FEE471020000000
  %3905 = fadd fast float %3904, 0xBFD42F6020000000
  %3906 = fmul fast float %3862, 0x3FD20DD760000000
  %3907 = fmul fast float %3905, %3901
  %3908 = fmul fast float %3900, 0x3FDF454380000000
  %3909 = fmul fast float %3908, %3902
  %3910 = fadd fast float %3909, %3906
  %3911 = fadd fast float %3910, %3907
  %3912 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %2750, float %2751, float %2752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3913 = fmul fast float %3912, 0x3FDF454380000000
  %3914 = fmul fast float %3912, %3912
  %3915 = fmul fast float %3914, 0x3FEE471020000000
  %3916 = fadd fast float %3915, 0xBFD42F6020000000
  %3917 = call float @dx.op.dot3.f32(i32 55, float %3862, float %3900, float %3901, float 0x3FD20DD760000000, float %3913, float %3916)  ; Dot3(ax,ay,az,bx,by,bz)
  %3918 = call float @dx.op.binary.f32(i32 35, float %3799, float 0.000000e+00)  ; FMax(a,b)
  %3919 = call float @dx.op.binary.f32(i32 35, float %3855, float 0.000000e+00)  ; FMax(a,b)
  %3920 = call float @dx.op.binary.f32(i32 35, float %3911, float 0.000000e+00)  ; FMax(a,b)
  %3921 = call float @dx.op.binary.f32(i32 35, float %3805, float 0.000000e+00)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3861, float 0.000000e+00)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3917, float 0.000000e+00)  ; FMax(a,b)
  %3924 = fsub fast float %3120, %3918
  %3925 = fsub fast float %3121, %3919
  %3926 = fsub fast float %3122, %3920
  %3927 = fmul fast float %3924, %2801
  %3928 = fmul fast float %3925, %2801
  %3929 = fmul fast float %3926, %2801
  %3930 = fadd fast float %3927, %3918
  %3931 = fadd fast float %3928, %3919
  %3932 = fadd fast float %3929, %3920
  %3933 = fsub fast float %3117, %3921
  %3934 = fsub fast float %3118, %3922
  %3935 = fsub fast float %3119, %3923
  %3936 = fmul fast float %3933, %2801
  %3937 = fmul fast float %3934, %2801
  %3938 = fmul fast float %3935, %2801
  %3939 = fadd fast float %3936, %3921
  %3940 = fadd fast float %3937, %3922
  %3941 = fadd fast float %3938, %3923
  br label %3942

; <label>:3942                                    ; preds = %3896, %3116
  %3943 = phi float [ %3939, %3896 ], [ %3117, %3116 ]
  %3944 = phi float [ %3940, %3896 ], [ %3118, %3116 ]
  %3945 = phi float [ %3941, %3896 ], [ %3119, %3116 ]
  %3946 = phi float [ %3930, %3896 ], [ %3120, %3116 ]
  %3947 = phi float [ %3931, %3896 ], [ %3121, %3116 ]
  %3948 = phi float [ %3932, %3896 ], [ %3122, %3116 ]
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = call float @dx.op.binary.f32(i32 36, float %2734, float %3950)  ; FMin(a,b)
  %3952 = fsub fast float 1.000000e+00, %2753
  %3953 = fmul fast float %3951, %3952
  %3954 = fsub fast float 1.000000e+00, %3953
  %3955 = bitcast float %3954 to i32
  %3956 = sub nsw i32 2129859010, %3955
  %3957 = bitcast i32 %3956 to float
  %3958 = call float @dx.op.binary.f32(i32 36, float %2735, float %3950)  ; FMin(a,b)
  %3959 = fmul fast float %3958, %3952
  %3960 = fsub fast float 1.000000e+00, %3959
  %3961 = bitcast float %3960 to i32
  %3962 = sub nsw i32 2129859010, %3961
  %3963 = bitcast i32 %3962 to float
  %3964 = call float @dx.op.binary.f32(i32 36, float %2736, float %3950)  ; FMin(a,b)
  %3965 = fmul fast float %3964, %3952
  %3966 = fsub fast float 1.000000e+00, %3965
  %3967 = bitcast float %3966 to i32
  %3968 = sub nsw i32 2129859010, %3967
  %3969 = bitcast i32 %3968 to float
  %3970 = fmul fast float %3946, %2753
  %3971 = fmul fast float %3970, %3957
  %3972 = fmul fast float %3947, %2753
  %3973 = fmul fast float %3972, %3963
  %3974 = fmul fast float %3948, %2753
  %3975 = fmul fast float %3974, %3969
  %3976 = call float @dx.op.binary.f32(i32 36, float %2731, float %3950)  ; FMin(a,b)
  %3977 = fmul fast float %3976, %3952
  %3978 = fsub fast float 1.000000e+00, %3977
  %3979 = bitcast float %3978 to i32
  %3980 = sub nsw i32 2129859010, %3979
  %3981 = bitcast i32 %3980 to float
  %3982 = call float @dx.op.binary.f32(i32 36, float %2732, float %3950)  ; FMin(a,b)
  %3983 = fmul fast float %3982, %3952
  %3984 = fsub fast float 1.000000e+00, %3983
  %3985 = bitcast float %3984 to i32
  %3986 = sub nsw i32 2129859010, %3985
  %3987 = bitcast i32 %3986 to float
  %3988 = call float @dx.op.binary.f32(i32 36, float %2742, float %3950)  ; FMin(a,b)
  %3989 = fmul fast float %3988, %3952
  %3990 = fsub fast float 1.000000e+00, %3989
  %3991 = bitcast float %3990 to i32
  %3992 = sub nsw i32 2129859010, %3991
  %3993 = bitcast i32 %3992 to float
  %3994 = fmul fast float %3943, %2753
  %3995 = fmul fast float %3994, %3981
  %3996 = fmul fast float %3944, %2753
  %3997 = fmul fast float %3996, %3987
  %3998 = fmul fast float %3945, %2753
  %3999 = fmul fast float %3998, %3993
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3971, float %3973, float %3975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = select i1 %189, float 0.000000e+00, float %3971
  %4002 = select i1 %189, float %4000, float %3973
  %4003 = select i1 %189, float 0.000000e+00, float %3975
  %4004 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3997, float %3999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = select i1 %189, float 0.000000e+00, float %3995
  %4006 = select i1 %189, float %4004, float %3997
  %4007 = select i1 %189, float 0.000000e+00, float %3999
  %4008 = fmul fast float %2744, 9.843750e-01
  %4009 = fmul fast float %2740, 9.843750e-01
  %4010 = fadd fast float %4008, 7.812500e-03
  %4011 = fadd fast float %4009, 7.812500e-03
  %4012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4010, float %4011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 2
  %4014 = extractvalue %dx.types.ResRet.f32 %4012, 3
  %4015 = fmul fast float %4013, %2731
  %4016 = fmul fast float %4013, %2732
  %4017 = fmul fast float %4013, %2742
  %4018 = fadd fast float %4015, %4014
  %4019 = fadd fast float %4016, %4014
  %4020 = fadd fast float %4017, %4014
  %4021 = fcmp fast ogt float %2108, 0.000000e+00
  br i1 %4021, label %4022, label %4048

; <label>:4022                                    ; preds = %3942
  %4023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2108, float %2744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = fadd fast float %4024, -5.000000e-01
  %4028 = fadd fast float %4025, -5.000000e-01
  %4029 = fadd fast float %4026, -5.000000e-01
  %4030 = fsub fast float 1.000000e+00, %2731
  %4031 = fsub fast float 1.000000e+00, %2732
  %4032 = fsub fast float 1.000000e+00, %2742
  %4033 = fmul fast float %2731, 4.000000e+00
  %4034 = fmul fast float %4033, %4030
  %4035 = fmul fast float %4034, %4027
  %4036 = fmul fast float %2732, 4.000000e+00
  %4037 = fmul fast float %4036, %4031
  %4038 = fmul fast float %4037, %4028
  %4039 = fmul fast float %2742, 4.000000e+00
  %4040 = fmul fast float %4039, %4032
  %4041 = fmul fast float %4040, %4029
  %4042 = fadd fast float %4035, %4018
  %4043 = fadd fast float %4038, %4019
  %4044 = fadd fast float %4041, %4020
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  br label %4048

; <label>:4048                                    ; preds = %4022, %3942
  %4049 = phi float [ %4045, %4022 ], [ %4018, %3942 ]
  %4050 = phi float [ %4046, %4022 ], [ %4019, %3942 ]
  %4051 = phi float [ %4047, %4022 ], [ %4020, %3942 ]
  %4052 = call float @dx.op.binary.f32(i32 35, float %4050, float %4051)  ; FMax(a,b)
  %4053 = call float @dx.op.binary.f32(i32 35, float %4049, float %4052)  ; FMax(a,b)
  %4054 = fsub fast float 1.000000e+00, %4053
  %4055 = fmul fast float %4054, %4001
  %4056 = fmul fast float %4054, %4002
  %4057 = fmul fast float %4054, %4003
  %4058 = call float @dx.op.dot3.f32(i32 55, float %2734, float %2735, float %2736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4059 = fcmp fast ogt float %4058, 0x3E7FF19E20000000
  %4060 = fdiv fast float 1.000000e+00, %4058
  %4061 = select i1 %4059, float %4060, float 0.000000e+00
  %4062 = fmul fast float %4061, %2734
  %4063 = fmul fast float %4061, %2735
  %4064 = fmul fast float %4061, %2736
  %4065 = fadd fast float %4062, -1.000000e+00
  %4066 = fadd fast float %4063, -1.000000e+00
  %4067 = fadd fast float %4064, -1.000000e+00
  %4068 = fmul fast float %4065, 5.000000e-01
  %4069 = fmul fast float %4066, 5.000000e-01
  %4070 = fmul fast float %4067, 5.000000e-01
  %4071 = fadd fast float %4068, 1.000000e+00
  %4072 = fadd fast float %4069, 1.000000e+00
  %4073 = fadd fast float %4070, 1.000000e+00
  %4074 = fmul fast float %4049, %4005
  %4075 = fmul fast float %4050, %4006
  %4076 = fmul fast float %4051, %4007
  %4077 = fsub fast float 1.000000e+00, %2744
  %4078 = bitcast float %4077 to i32
  %4079 = sitofp i32 %4078 to float
  %4080 = fmul fast float %4079, 5.000000e+00
  %4081 = fadd fast float %4080, 0xC1EFBF8940000000
  %4082 = fptosi float %4081 to i32
  %4083 = bitcast i32 %4082 to float
  %4084 = fmul fast float %4083, %2107
  %4085 = fmul fast float %4001, %4084
  %4086 = fmul fast float %4085, %4054
  %4087 = fmul fast float %4086, %4071
  %4088 = fmul fast float %4002, %4084
  %4089 = fmul fast float %4088, %4054
  %4090 = fmul fast float %4089, %4072
  %4091 = fmul fast float %4003, %4084
  %4092 = fmul fast float %4091, %4054
  %4093 = fmul fast float %4092, %4073
  %4094 = fmul fast float %4055, %2128
  %4095 = fmul fast float %4056, %2128
  %4096 = fmul fast float %4057, %2128
  %4097 = fadd fast float %4074, %2109
  %4098 = fadd fast float %4097, %4087
  %4099 = fmul fast float %4098, %2128
  %4100 = fadd fast float %4075, %2110
  %4101 = fadd fast float %4100, %4090
  %4102 = fmul fast float %4101, %2128
  %4103 = fadd fast float %4076, %2111
  %4104 = fadd fast float %4103, %4093
  %4105 = fmul fast float %4104, %2128
  %4106 = bitcast i32 %2756 to float
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4109 = fcmp fast oeq float %4108, 0.000000e+00
  br i1 %4109, label %4337, label %4110

; <label>:4110                                    ; preds = %4048
  %4111 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4112 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.CBufRet.f32 %4114, 1
  %4117 = extractvalue %dx.types.CBufRet.f32 %4114, 2
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.CBufRet.f32 %4118, 1
  %4121 = call float @dx.op.dot3.f32(i32 55, float %4115, float %4116, float %4117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4122 = select i1 %189, float %4119, float %4115
  %4123 = select i1 %189, float %4121, float %4116
  %4124 = select i1 %189, float %4120, float %4117
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4127 = fcmp fast une float %4126, 0.000000e+00
  br i1 %4127, label %4128, label %4145

; <label>:4128                                    ; preds = %4110
  %4129 = fptoui float %71 to i32
  %4130 = fptoui float %72 to i32
  %4131 = lshr i32 %4129, 4
  %4132 = lshr i32 %4130, 4
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = fptoui float %4134 to i32
  %4136 = add i32 %4135, 15
  %4137 = lshr i32 %4136, 4
  %4138 = mul i32 %4137, %4132
  %4139 = add i32 %4138, %4131
  %4140 = shl i32 %4139, 3
  %4141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.i32 %4141, 0
  %4143 = and i32 %4142, -268435456
  %4144 = icmp eq i32 %4143, -1342177280
  br i1 %4144, label %4155, label %4145

; <label>:4145                                    ; preds = %4128, %4110
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 2
  %4148 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4149 = fmul fast float %4147, %71
  %4150 = fmul fast float %4148, %72
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  br label %4155

; <label>:4155                                    ; preds = %4145, %4128
  %4156 = phi float [ %4152, %4145 ], [ 0.000000e+00, %4128 ]
  %4157 = phi float [ %4153, %4145 ], [ 0.000000e+00, %4128 ]
  %4158 = phi float [ %4154, %4145 ], [ 0.000000e+00, %4128 ]
  %4159 = call float @dx.op.binary.f32(i32 36, float %4157, float %4158)  ; FMin(a,b)
  %4160 = call float @dx.op.binary.f32(i32 36, float %4156, float %4159)  ; FMin(a,b)
  %4161 = fcmp fast ogt float %4160, 0.000000e+00
  br i1 %4161, label %4162, label %4337, !dx.controlflow.hints !88

; <label>:4162                                    ; preds = %4155
  %4163 = fmul fast float %4156, %4122
  %4164 = fmul fast float %4157, %4123
  %4165 = fmul fast float %4158, %4124
  %4166 = fsub fast float %4111, %2730
  %4167 = fsub fast float %4112, %2729
  %4168 = fsub fast float %4113, %2728
  %4169 = call float @dx.op.dot3.f32(i32 55, float %4166, float %4167, float %4168, float %4166, float %4167, float %4168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4170 = call float @dx.op.unary.f32(i32 25, float %4169)  ; Rsqrt(value)
  %4171 = fmul fast float %4170, %4166
  %4172 = fmul fast float %4170, %4167
  %4173 = fmul fast float %4170, %4168
  %4174 = call float @dx.op.dot3.f32(i32 55, float %4111, float %4112, float %4113, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4175 = call float @dx.op.dot3.f32(i32 55, float %2727, float %2726, float %2725, float %4171, float %4172, float %4173)  ; Dot3(ax,ay,az,bx,by,bz)
  %4176 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4177 = fmul fast float %4176, %4176
  %4178 = fmul fast float %4177, %4106
  %4179 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4180 = fmul fast float %4179, %4176
  %4181 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %4171, float %4172, float %4173)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = fmul fast float %4181, %4181
  %4183 = call float @dx.op.unary.f32(i32 6, float %4174)  ; FAbs(value)
  %4184 = fsub fast float 1.000000e+00, %2740
  %4185 = call float @dx.op.binary.f32(i32 35, float %4184, float 0x3F847AE140000000)  ; FMax(a,b)
  %4186 = fmul fast float %4185, %4185
  %4187 = fmul fast float %4186, %4186
  %4188 = fsub fast float 1.000000e+00, %4187
  %4189 = fmul fast float %2744, %2744
  %4190 = fmul fast float %4189, %4188
  %4191 = fadd fast float %4190, %4187
  %4192 = bitcast float %4191 to i32
  %4193 = ashr i32 %4192, 1
  %4194 = add nsw i32 %4193, 532487669
  %4195 = bitcast i32 %4194 to float
  %4196 = fadd fast float %4195, %2744
  %4197 = fmul fast float %4187, %4182
  %4198 = fsub fast float 1.000000e+00, %4182
  %4199 = fadd fast float %4198, %4197
  %4200 = fmul fast float %4183, %4183
  %4201 = fmul fast float %4200, %4188
  %4202 = fadd fast float %4201, %4187
  %4203 = bitcast float %4202 to i32
  %4204 = ashr i32 %4203, 1
  %4205 = add nsw i32 %4204, 532487669
  %4206 = bitcast i32 %4205 to float
  %4207 = fadd fast float %4206, %4183
  %4208 = fmul fast float %4199, %4199
  %4209 = fmul fast float %4208, %4196
  %4210 = fmul fast float %4209, %4207
  %4211 = fdiv fast float 0x3FF0A00000000000, %4210
  %4212 = fmul fast float %4211, %4187
  %4213 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4214 = fsub fast float 1.000000e+00, %4213
  %4215 = bitcast float %4214 to i32
  %4216 = sitofp i32 %4215 to float
  %4217 = fmul fast float %4216, 5.000000e+00
  %4218 = fadd fast float %4217, 0xC1EFBF8940000000
  %4219 = fptosi float %4218 to i32
  %4220 = bitcast i32 %4219 to float
  %4221 = fsub fast float 1.000000e+00, %2731
  %4222 = fsub fast float 1.000000e+00, %2732
  %4223 = fsub fast float 1.000000e+00, %2742
  %4224 = fmul fast float %4220, %4221
  %4225 = fmul fast float %4220, %4222
  %4226 = fmul fast float %4220, %4223
  %4227 = fadd fast float %4224, %2731
  %4228 = fadd fast float %4225, %2732
  %4229 = fadd fast float %4226, %2742
  br i1 %4021, label %4230, label %4253

; <label>:4230                                    ; preds = %4162
  %4231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2108, float %4213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = fadd fast float %4232, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fmul fast float %2731, 4.000000e+00
  %4239 = fmul fast float %4238, %4221
  %4240 = fmul fast float %4239, %4235
  %4241 = fmul fast float %2732, 4.000000e+00
  %4242 = fmul fast float %4241, %4222
  %4243 = fmul fast float %4242, %4236
  %4244 = fmul fast float %2742, 4.000000e+00
  %4245 = fmul fast float %4244, %4223
  %4246 = fmul fast float %4245, %4237
  %4247 = fadd fast float %4240, %4227
  %4248 = fadd fast float %4243, %4228
  %4249 = fadd fast float %4246, %4229
  %4250 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4251 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4252 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  br label %4253

; <label>:4253                                    ; preds = %4230, %4162
  %4254 = phi float [ %4250, %4230 ], [ %4227, %4162 ]
  %4255 = phi float [ %4251, %4230 ], [ %4228, %4162 ]
  %4256 = phi float [ %4252, %4230 ], [ %4229, %4162 ]
  %4257 = fmul fast float %4174, 9.843750e-01
  %4258 = fadd fast float %4257, 7.812500e-03
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4258, float %4011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 2
  %4261 = extractvalue %dx.types.ResRet.f32 %4259, 3
  %4262 = fmul fast float %4260, %2731
  %4263 = fmul fast float %4260, %2732
  %4264 = fmul fast float %4260, %2742
  %4265 = fadd fast float %4262, %4261
  %4266 = fadd fast float %4263, %4261
  %4267 = fadd fast float %4264, %4261
  br i1 %4021, label %4268, label %4291

; <label>:4268                                    ; preds = %4253
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2108, float %4174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  %4273 = fadd fast float %4270, -5.000000e-01
  %4274 = fadd fast float %4271, -5.000000e-01
  %4275 = fadd fast float %4272, -5.000000e-01
  %4276 = fmul fast float %2731, 4.000000e+00
  %4277 = fmul fast float %4276, %4221
  %4278 = fmul fast float %4277, %4273
  %4279 = fmul fast float %2732, 4.000000e+00
  %4280 = fmul fast float %4279, %4222
  %4281 = fmul fast float %4280, %4274
  %4282 = fmul fast float %2742, 4.000000e+00
  %4283 = fmul fast float %4282, %4223
  %4284 = fmul fast float %4283, %4275
  %4285 = fadd fast float %4278, %4265
  %4286 = fadd fast float %4281, %4266
  %4287 = fadd fast float %4284, %4267
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  br label %4291

; <label>:4291                                    ; preds = %4268, %4253
  %4292 = phi float [ %4288, %4268 ], [ %4265, %4253 ]
  %4293 = phi float [ %4289, %4268 ], [ %4266, %4253 ]
  %4294 = phi float [ %4290, %4268 ], [ %4267, %4253 ]
  %4295 = call float @dx.op.binary.f32(i32 35, float %4293, float %4294)  ; FMax(a,b)
  %4296 = call float @dx.op.binary.f32(i32 35, float %4292, float %4295)  ; FMax(a,b)
  %4297 = fsub fast float 1.000000e+00, %4296
  %4298 = fmul fast float %4254, %4212
  %4299 = fmul fast float %4255, %4212
  %4300 = fmul fast float %4256, %4212
  %4301 = fsub fast float 1.000000e+00, %4175
  %4302 = bitcast float %4301 to i32
  %4303 = sitofp i32 %4302 to float
  %4304 = fmul fast float %4303, 5.000000e+00
  %4305 = fadd fast float %4304, 0xC1EFBF8940000000
  %4306 = fptosi float %4305 to i32
  %4307 = bitcast i32 %4306 to float
  %4308 = fmul fast float %4307, %2107
  %4309 = fmul fast float %4297, %4308
  %4310 = fmul fast float %4309, %4071
  %4311 = fmul fast float %4309, %4072
  %4312 = fmul fast float %4309, %4073
  %4313 = fadd fast float %4310, %4298
  %4314 = fadd fast float %4311, %4299
  %4315 = fadd fast float %4312, %4300
  %4316 = fmul fast float %4180, %4163
  %4317 = fmul fast float %4316, %4297
  %4318 = fmul fast float %4180, %4164
  %4319 = fmul fast float %4318, %4297
  %4320 = fmul fast float %4180, %4165
  %4321 = fmul fast float %4320, %4297
  %4322 = fmul fast float %4316, %4313
  %4323 = fmul fast float %4318, %4314
  %4324 = fmul fast float %4320, %4315
  %4325 = fadd fast float %4317, %4055
  %4326 = fmul fast float %4325, %2128
  %4327 = fadd fast float %4319, %4056
  %4328 = fmul fast float %4327, %2128
  %4329 = fadd fast float %4321, %4057
  %4330 = fmul fast float %4329, %2128
  %4331 = fadd fast float %4322, %4098
  %4332 = fmul fast float %4331, %2128
  %4333 = fadd fast float %4323, %4101
  %4334 = fmul fast float %4333, %2128
  %4335 = fadd fast float %4324, %4104
  %4336 = fmul fast float %4335, %2128
  br label %4337

; <label>:4337                                    ; preds = %4291, %4155, %4048
  %4338 = phi float [ %4099, %4048 ], [ %4099, %4155 ], [ %4332, %4291 ]
  %4339 = phi float [ %4102, %4048 ], [ %4102, %4155 ], [ %4334, %4291 ]
  %4340 = phi float [ %4105, %4048 ], [ %4105, %4155 ], [ %4336, %4291 ]
  %4341 = phi float [ %4094, %4048 ], [ %4094, %4155 ], [ %4326, %4291 ]
  %4342 = phi float [ %4095, %4048 ], [ %4095, %4155 ], [ %4328, %4291 ]
  %4343 = phi float [ %4096, %4048 ], [ %4096, %4155 ], [ %4330, %4291 ]
  %4344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.i32 %4344, 0
  %4346 = icmp eq i32 %4345, 0
  br i1 %4346, label %4781, label %4347

; <label>:4347                                    ; preds = %4337
  %4348 = fptoui float %71 to i32
  %4349 = fptoui float %72 to i32
  %4350 = lshr i32 %4348, 4
  %4351 = lshr i32 %4349, 4
  %4352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.i32 %4352, 0
  %4354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4351, i32 %4353, i32 %4350)  ; UMad(a,b,c)
  %4355 = add nsw i32 %4345, -1
  %4356 = call i32 @dx.op.binary.i32(i32 37, i32 %4355, i32 0)  ; IMax(a,b)
  %4357 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4358 = fptoui float %4357 to i32
  %4359 = lshr i32 %4358, 5
  %4360 = call i32 @dx.op.binary.i32(i32 40, i32 %4359, i32 8191)  ; UMin(a,b)
  %4361 = shl i32 %4360, 2
  %4362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.i32 %4362, 0
  %4364 = lshr i32 %4363, 16
  %4365 = and i32 %4363, 65535
  %4366 = lshr i32 %4363, 21
  %4367 = lshr i32 %4365, 5
  %4368 = call i32 @dx.op.binary.i32(i32 40, i32 %4367, i32 %4356)  ; UMin(a,b)
  %4369 = icmp ugt i32 %4366, %4368
  br i1 %4369, label %4781, label %4370

; <label>:4370                                    ; preds = %4347
  br label %4371

; <label>:4371                                    ; preds = %4771, %4370
  %4372 = phi i32 [ %4778, %4771 ], [ %4366, %4370 ]
  %4373 = phi float [ %4772, %4771 ], [ %4338, %4370 ]
  %4374 = phi float [ %4773, %4771 ], [ %4339, %4370 ]
  %4375 = phi float [ %4774, %4771 ], [ %4340, %4370 ]
  %4376 = phi float [ %4775, %4771 ], [ %4341, %4370 ]
  %4377 = phi float [ %4776, %4771 ], [ %4342, %4370 ]
  %4378 = phi float [ %4777, %4771 ], [ %4343, %4370 ]
  %4379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.i32 %4379, 0
  %4381 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4354, i32 %4380, i32 %4372)  ; UMad(a,b,c)
  %4382 = shl i32 %4381, 2
  %4383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.i32 %4383, 0
  %4385 = shl i32 %4372, 5
  %4386 = sub nsw i32 %4364, %4385
  %4387 = call i32 @dx.op.binary.i32(i32 37, i32 %4386, i32 0)  ; IMax(a,b)
  %4388 = call i32 @dx.op.binary.i32(i32 38, i32 %4387, i32 31)  ; IMin(a,b)
  %4389 = sub nsw i32 1, %4364
  %4390 = add nsw i32 %4389, %4365
  %4391 = call i32 @dx.op.binary.i32(i32 37, i32 %4390, i32 0)  ; IMax(a,b)
  %4392 = call i32 @dx.op.binary.i32(i32 38, i32 %4391, i32 32)  ; IMin(a,b)
  %4393 = and i32 %4392, 31
  %4394 = shl i32 -1, %4393
  %4395 = xor i32 %4394, -1
  %4396 = and i32 %4388, 31
  %4397 = shl i32 %4395, %4396
  %4398 = icmp eq i32 %4392, 32
  %4399 = select i1 %4398, i32 -1, i32 %4397
  %4400 = and i32 %4399, %4384
  %4401 = icmp eq i32 %4400, 0
  br i1 %4401, label %4771, label %4402

; <label>:4402                                    ; preds = %4371
  br label %4403

; <label>:4403                                    ; preds = %4483, %4402
  %4404 = phi i32 [ %4415, %4483 ], [ %4400, %4402 ]
  %4405 = phi float [ %4484, %4483 ], [ %4373, %4402 ]
  %4406 = phi float [ %4485, %4483 ], [ %4374, %4402 ]
  %4407 = phi float [ %4486, %4483 ], [ %4375, %4402 ]
  %4408 = phi float [ %4487, %4483 ], [ %4376, %4402 ]
  %4409 = phi float [ %4488, %4483 ], [ %4377, %4402 ]
  %4410 = phi float [ %4489, %4483 ], [ %4378, %4402 ]
  %4411 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4404)  ; FirstbitLo(value)
  %4412 = add i32 %4411, %4385
  %4413 = and i32 %4411, 31
  %4414 = shl i32 1, %4413
  %4415 = xor i32 %4414, %4404
  %4416 = mul i32 %4412, 112
  %4417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.ResRet.f32 %4417, 2
  %4421 = or i32 %4416, 12
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = add i32 %4416, 44
  %4425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4424, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = add i32 %4416, 48
  %4428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = add i32 %4416, 80
  %4433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4433, 2
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4419, float %4420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = select i1 %189, float %4434, float %4418
  %4438 = select i1 %189, float %4436, float %4419
  %4439 = select i1 %189, float %4435, float %4420
  %4440 = fsub fast float %4429, %118
  %4441 = fsub fast float %4430, %119
  %4442 = fsub fast float %4431, %120
  %4443 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4441, float %4442, float %4440, float %4441, float %4442)  ; Dot3(ax,ay,az,bx,by,bz)
  %4444 = call float @dx.op.unary.f32(i32 24, float %4443)  ; Sqrt(value)
  %4445 = fdiv fast float 1.000000e+00, %4444
  %4446 = fmul fast float %4445, %4440
  %4447 = fmul fast float %4445, %4441
  %4448 = fmul fast float %4445, %4442
  %4449 = fadd fast float %4444, %4423
  %4450 = fdiv fast float 1.000000e+00, %4449
  %4451 = fmul float %4426, %4450
  %4452 = fmul float %4451, %4451
  %4453 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4454 = and i32 %4414, %4400
  %4455 = icmp eq i32 %4454, 0
  br i1 %4455, label %4478, label %4456, !dx.controlflow.hints !89

; <label>:4456                                    ; preds = %4403
  %4457 = lshr i32 %4348, 5
  %4458 = lshr i32 %4349, 5
  %4459 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4457, i32 %4458, i32 %4412, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4460 = extractvalue %dx.types.ResRet.i32 %4459, 0
  %4461 = and i32 %4460, 3
  %4462 = icmp eq i32 %4461, 0
  %4463 = select i1 %4462, float 1.000000e+00, float 0.000000e+00
  %4464 = icmp eq i32 %4461, 3
  br i1 %4464, label %4465, label %4478

; <label>:4465                                    ; preds = %4456
  %4466 = lshr i32 %4460, 10
  %4467 = and i32 %4466, 8160
  %4468 = and i32 %4349, 31
  %4469 = or i32 %4467, %4468
  %4470 = lshr i32 %4460, 1
  %4471 = and i32 %4470, 16352
  %4472 = and i32 %4348, 31
  %4473 = or i32 %4471, %4472
  %4474 = lshr i32 %4460, 23
  %4475 = and i32 %4474, 255
  %4476 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4473, i32 %4469, i32 %4475, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  br label %4478

; <label>:4478                                    ; preds = %4465, %4456, %4403
  %4479 = phi float [ %4477, %4465 ], [ %4463, %4456 ], [ 0.000000e+00, %4403 ]
  %4480 = call float @dx.op.binary.f32(i32 36, float %4479, float %4479)  ; FMin(a,b)
  %4481 = call float @dx.op.binary.f32(i32 36, float %4479, float %4480)  ; FMin(a,b)
  %4482 = fcmp fast ogt float %4481, 0.000000e+00
  br i1 %4482, label %4491, label %4483, !dx.controlflow.hints !90

; <label>:4483                                    ; preds = %4727, %4478
  %4484 = phi float [ %4405, %4478 ], [ %4767, %4727 ]
  %4485 = phi float [ %4406, %4478 ], [ %4768, %4727 ]
  %4486 = phi float [ %4407, %4478 ], [ %4769, %4727 ]
  %4487 = phi float [ %4408, %4478 ], [ %4761, %4727 ]
  %4488 = phi float [ %4409, %4478 ], [ %4762, %4727 ]
  %4489 = phi float [ %4410, %4478 ], [ %4763, %4727 ]
  %4490 = icmp eq i32 %4404, %4414
  br i1 %4490, label %4770, label %4403

; <label>:4491                                    ; preds = %4478
  %4492 = fmul fast float %4479, %4437
  %4493 = fmul fast float %4479, %4438
  %4494 = fmul fast float %4479, %4439
  %4495 = fsub fast float %4431, %2530
  %4496 = fcmp fast ogt float %4495, 0.000000e+00
  %4497 = fsub fast float %120, %2530
  %4498 = fcmp fast ogt float %4497, 0.000000e+00
  %4499 = xor i1 %4498, %4496
  %4500 = fsub fast float %2530, %4431
  %4501 = fmul fast float %4500, 2.000000e+00
  %4502 = fadd fast float %4501, %4431
  %4503 = select i1 %4499, float %4431, float %4502
  %4504 = fsub fast float %4503, %120
  %4505 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4441, float %4504, float %4440, float %4441, float %4504)  ; Dot3(ax,ay,az,bx,by,bz)
  %4506 = call float @dx.op.unary.f32(i32 25, float %4505)  ; Rsqrt(value)
  %4507 = fmul fast float %4506, %4440
  %4508 = fmul fast float %4506, %4441
  %4509 = fmul fast float %4506, %4504
  %4510 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2538)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4512 = fdiv fast float 1.000000e+00, %4511
  %4513 = fmul fast float %4512, %4510
  %4514 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4497, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = fcmp fast ogt float %4514, 0.000000e+00
  %4516 = fcmp fast olt float %4514, 0.000000e+00
  %4517 = zext i1 %4515 to i32
  %4518 = zext i1 %4516 to i32
  %4519 = sub nsw i32 %4517, %4518
  %4520 = sitofp i32 %4519 to float
  %4521 = fsub fast float %4503, %2530
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4441, float %4521, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = fcmp fast ogt float %4522, 0.000000e+00
  %4524 = fcmp fast olt float %4522, 0.000000e+00
  %4525 = zext i1 %4523 to i32
  %4526 = zext i1 %4524 to i32
  %4527 = sub nsw i32 %4525, %4526
  %4528 = sitofp i32 %4527 to float
  %4529 = fcmp fast une float %4520, %4528
  br i1 %4529, label %4530, label %4540

; <label>:4530                                    ; preds = %4491
  %4531 = fmul fast float %4513, %4509
  %4532 = fmul fast float %4513, %4508
  %4533 = fmul fast float %4513, %4507
  %4534 = fmul fast float %4533, %4533
  %4535 = fmul fast float %4532, %4532
  %4536 = fadd fast float %4534, %4535
  %4537 = fmul fast float %4531, %4531
  %4538 = fadd fast float %4536, %4537
  %4539 = call float @dx.op.unary.f32(i32 24, float %4538)  ; Sqrt(value)
  br label %4552

; <label>:4540                                    ; preds = %4491
  %4541 = icmp slt i32 %4519, 0
  br i1 %4541, label %4542, label %4552

; <label>:4542                                    ; preds = %4540
  %4543 = fsub fast float %118, %4429
  %4544 = fsub fast float %119, %4430
  %4545 = fsub fast float %120, %4503
  %4546 = fmul fast float %4543, %4543
  %4547 = fmul fast float %4544, %4544
  %4548 = fadd fast float %4546, %4547
  %4549 = fmul fast float %4545, %4545
  %4550 = fadd fast float %4548, %4549
  %4551 = call float @dx.op.unary.f32(i32 24, float %4550)  ; Sqrt(value)
  br label %4552

; <label>:4552                                    ; preds = %4542, %4540, %4530
  %4553 = phi float [ %4539, %4530 ], [ %4551, %4542 ], [ 0.000000e+00, %4540 ]
  %4554 = and i1 %4498, %4496
  %4555 = fsub fast float -0.000000e+00, %4553
  %4556 = select i1 %4554, float -0.000000e+00, float %4555
  %4557 = fmul fast float %2531, 0x3FF7154760000000
  %4558 = fmul fast float %4557, %4556
  %4559 = fmul fast float %2532, 0x3FF7154760000000
  %4560 = fmul fast float %4559, %4556
  %4561 = fmul fast float %2533, 0x3FF7154760000000
  %4562 = fmul fast float %4561, %4556
  %4563 = call float @dx.op.unary.f32(i32 21, float %4558)  ; Exp(value)
  %4564 = call float @dx.op.unary.f32(i32 21, float %4560)  ; Exp(value)
  %4565 = call float @dx.op.unary.f32(i32 21, float %4562)  ; Exp(value)
  %4566 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4567 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4568 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4569 = fmul fast float %4492, %4566
  %4570 = fmul fast float %4493, %4567
  %4571 = fmul fast float %4494, %4568
  %4572 = fsub fast float %4446, %2730
  %4573 = fsub fast float %4447, %2729
  %4574 = fsub fast float %4448, %2728
  %4575 = call float @dx.op.dot3.f32(i32 55, float %4572, float %4573, float %4574, float %4572, float %4573, float %4574)  ; Dot3(ax,ay,az,bx,by,bz)
  %4576 = call float @dx.op.unary.f32(i32 25, float %4575)  ; Rsqrt(value)
  %4577 = fmul fast float %4576, %4572
  %4578 = fmul fast float %4576, %4573
  %4579 = fmul fast float %4576, %4574
  %4580 = call float @dx.op.dot3.f32(i32 55, float %4446, float %4447, float %4448, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = call float @dx.op.dot3.f32(i32 55, float %2727, float %2726, float %2725, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4583 = fmul fast float %4582, %4453
  %4584 = fmul fast float %4582, %4582
  %4585 = fmul fast float %4584, %4106
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %4583, %4586
  %4588 = bitcast float %4443 to i32
  %4589 = ashr i32 %4588, 1
  %4590 = sub nsw i32 1597463007, %4589
  %4591 = bitcast i32 %4590 to float
  %4592 = fmul fast float %4591, %4440
  %4593 = fmul fast float %4591, %4441
  %4594 = fmul fast float %4591, %4442
  %4595 = fsub fast float %4592, %2730
  %4596 = fsub fast float %4593, %2729
  %4597 = fsub fast float %4594, %2728
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float %4595, float %4596, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.unary.f32(i32 25, float %4598)  ; Rsqrt(value)
  %4600 = fmul fast float %4595, %4599
  %4601 = fmul fast float %4596, %4599
  %4602 = fmul fast float %4597, %4599
  %4603 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %4600, float %4601, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = fmul fast float %4603, %4603
  %4605 = call float @dx.op.unary.f32(i32 6, float %4580)  ; FAbs(value)
  %4606 = fsub fast float 1.000000e+00, %2740
  %4607 = call float @dx.op.binary.f32(i32 35, float %4606, float 0x3F847AE140000000)  ; FMax(a,b)
  %4608 = fmul fast float %4607, %4607
  %4609 = fmul fast float %4608, %4608
  %4610 = fsub fast float 1.000000e+00, %4609
  %4611 = fmul fast float %2744, %2744
  %4612 = fmul fast float %4611, %4610
  %4613 = fadd fast float %4612, %4609
  %4614 = bitcast float %4613 to i32
  %4615 = ashr i32 %4614, 1
  %4616 = add nsw i32 %4615, 532487669
  %4617 = bitcast i32 %4616 to float
  %4618 = fadd fast float %4617, %2744
  %4619 = fmul fast float %4609, %4604
  %4620 = fsub fast float 1.000000e+00, %4604
  %4621 = fadd fast float %4620, %4619
  %4622 = fmul fast float %4605, %4605
  %4623 = fmul fast float %4622, %4610
  %4624 = fadd fast float %4623, %4609
  %4625 = bitcast float %4624 to i32
  %4626 = ashr i32 %4625, 1
  %4627 = add nsw i32 %4626, 532487669
  %4628 = bitcast i32 %4627 to float
  %4629 = fadd fast float %4628, %4605
  %4630 = fmul fast float %4621, %4621
  %4631 = fmul fast float %4630, %4618
  %4632 = fmul fast float %4631, %4629
  %4633 = fdiv fast float 1.000000e+00, %4632
  %4634 = bitcast float %4609 to i32
  %4635 = sitofp i32 %4634 to float
  %4636 = fmul fast float %4635, 0x3FE7F73180000000
  %4637 = fadd fast float %4636, 0x41AFE27C40000000
  %4638 = fptosi float %4637 to i32
  %4639 = bitcast i32 %4638 to float
  %4640 = fmul fast float %4426, 0x3FD80E9D60000000
  %4641 = fmul fast float %4640, %4591
  %4642 = fadd fast float %4639, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sub nsw i32 2129859010, %4643
  %4645 = bitcast i32 %4644 to float
  %4646 = fmul fast float %4609, %4633
  %4647 = fmul fast float %4646, %4639
  %4648 = fmul fast float %4647, %4645
  %4649 = call float @dx.op.unary.f32(i32 6, float %4581)  ; FAbs(value)
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = bitcast float %4650 to i32
  %4652 = sitofp i32 %4651 to float
  %4653 = fmul fast float %4652, 5.000000e+00
  %4654 = fadd fast float %4653, 0xC1EFBF8940000000
  %4655 = fptosi float %4654 to i32
  %4656 = bitcast i32 %4655 to float
  %4657 = fsub fast float 1.000000e+00, %2731
  %4658 = fsub fast float 1.000000e+00, %2732
  %4659 = fsub fast float 1.000000e+00, %2742
  %4660 = fmul fast float %4656, %4657
  %4661 = fmul fast float %4656, %4658
  %4662 = fmul fast float %4656, %4659
  %4663 = fadd fast float %4660, %2731
  %4664 = fadd fast float %4661, %2732
  %4665 = fadd fast float %4662, %2742
  br i1 %4021, label %4666, label %4689

; <label>:4666                                    ; preds = %4552
  %4667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2108, float %4649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4667, 2
  %4671 = fadd fast float %4668, -5.000000e-01
  %4672 = fadd fast float %4669, -5.000000e-01
  %4673 = fadd fast float %4670, -5.000000e-01
  %4674 = fmul fast float %2731, 4.000000e+00
  %4675 = fmul fast float %4674, %4657
  %4676 = fmul fast float %4675, %4671
  %4677 = fmul fast float %2732, 4.000000e+00
  %4678 = fmul fast float %4677, %4658
  %4679 = fmul fast float %4678, %4672
  %4680 = fmul fast float %2742, 4.000000e+00
  %4681 = fmul fast float %4680, %4659
  %4682 = fmul fast float %4681, %4673
  %4683 = fadd fast float %4676, %4663
  %4684 = fadd fast float %4679, %4664
  %4685 = fadd fast float %4682, %4665
  %4686 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  br label %4689

; <label>:4689                                    ; preds = %4666, %4552
  %4690 = phi float [ %4686, %4666 ], [ %4663, %4552 ]
  %4691 = phi float [ %4687, %4666 ], [ %4664, %4552 ]
  %4692 = phi float [ %4688, %4666 ], [ %4665, %4552 ]
  %4693 = fmul fast float %4580, 9.843750e-01
  %4694 = fadd fast float %4693, 7.812500e-03
  %4695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4694, float %4011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 2
  %4697 = extractvalue %dx.types.ResRet.f32 %4695, 3
  %4698 = fmul fast float %4696, %2731
  %4699 = fmul fast float %4696, %2732
  %4700 = fmul fast float %4696, %2742
  %4701 = fadd fast float %4698, %4697
  %4702 = fadd fast float %4699, %4697
  %4703 = fadd fast float %4700, %4697
  br i1 %4021, label %4704, label %4727

; <label>:4704                                    ; preds = %4689
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2108, float %4580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.ResRet.f32 %4705, 1
  %4708 = extractvalue %dx.types.ResRet.f32 %4705, 2
  %4709 = fadd fast float %4706, -5.000000e-01
  %4710 = fadd fast float %4707, -5.000000e-01
  %4711 = fadd fast float %4708, -5.000000e-01
  %4712 = fmul fast float %2731, 4.000000e+00
  %4713 = fmul fast float %4712, %4657
  %4714 = fmul fast float %4713, %4709
  %4715 = fmul fast float %2732, 4.000000e+00
  %4716 = fmul fast float %4715, %4658
  %4717 = fmul fast float %4716, %4710
  %4718 = fmul fast float %2742, 4.000000e+00
  %4719 = fmul fast float %4718, %4659
  %4720 = fmul fast float %4719, %4711
  %4721 = fadd fast float %4714, %4701
  %4722 = fadd fast float %4717, %4702
  %4723 = fadd fast float %4720, %4703
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  br label %4727

; <label>:4727                                    ; preds = %4704, %4689
  %4728 = phi float [ %4724, %4704 ], [ %4701, %4689 ]
  %4729 = phi float [ %4725, %4704 ], [ %4702, %4689 ]
  %4730 = phi float [ %4726, %4704 ], [ %4703, %4689 ]
  %4731 = call float @dx.op.binary.f32(i32 35, float %4729, float %4730)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 35, float %4728, float %4731)  ; FMax(a,b)
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = fmul fast float %4690, %4648
  %4735 = fmul fast float %4691, %4648
  %4736 = fmul fast float %4692, %4648
  %4737 = fsub fast float 1.000000e+00, %4581
  %4738 = bitcast float %4737 to i32
  %4739 = sitofp i32 %4738 to float
  %4740 = fmul fast float %4739, 5.000000e+00
  %4741 = fadd fast float %4740, 0xC1EFBF8940000000
  %4742 = fptosi float %4741 to i32
  %4743 = bitcast i32 %4742 to float
  %4744 = fmul fast float %4743, %2107
  %4745 = fmul fast float %4733, %4744
  %4746 = fmul fast float %4745, %4071
  %4747 = fmul fast float %4745, %4072
  %4748 = fmul fast float %4745, %4073
  %4749 = fadd fast float %4746, %4734
  %4750 = fadd fast float %4747, %4735
  %4751 = fadd fast float %4748, %4736
  %4752 = fmul fast float %4569, %2128
  %4753 = fmul fast float %4752, %4587
  %4754 = fmul fast float %4753, %4733
  %4755 = fmul fast float %4570, %2128
  %4756 = fmul fast float %4755, %4587
  %4757 = fmul fast float %4756, %4733
  %4758 = fmul fast float %4571, %2128
  %4759 = fmul fast float %4758, %4587
  %4760 = fmul fast float %4759, %4733
  %4761 = fadd fast float %4754, %4408
  %4762 = fadd fast float %4757, %4409
  %4763 = fadd fast float %4760, %4410
  %4764 = fmul fast float %4753, %4749
  %4765 = fmul fast float %4756, %4750
  %4766 = fmul fast float %4759, %4751
  %4767 = fadd fast float %4764, %4405
  %4768 = fadd fast float %4765, %4406
  %4769 = fadd fast float %4766, %4407
  br label %4483

; <label>:4770                                    ; preds = %4483
  br label %4771

; <label>:4771                                    ; preds = %4770, %4371
  %4772 = phi float [ %4373, %4371 ], [ %4484, %4770 ]
  %4773 = phi float [ %4374, %4371 ], [ %4485, %4770 ]
  %4774 = phi float [ %4375, %4371 ], [ %4486, %4770 ]
  %4775 = phi float [ %4376, %4371 ], [ %4487, %4770 ]
  %4776 = phi float [ %4377, %4371 ], [ %4488, %4770 ]
  %4777 = phi float [ %4378, %4371 ], [ %4489, %4770 ]
  %4778 = add i32 %4372, 1
  %4779 = icmp ugt i32 %4778, %4368
  br i1 %4779, label %4780, label %4371

; <label>:4780                                    ; preds = %4771
  br label %4781

; <label>:4781                                    ; preds = %4780, %4347, %4337
  %4782 = phi float [ %4338, %4337 ], [ %4338, %4347 ], [ %4772, %4780 ]
  %4783 = phi float [ %4339, %4337 ], [ %4339, %4347 ], [ %4773, %4780 ]
  %4784 = phi float [ %4340, %4337 ], [ %4340, %4347 ], [ %4774, %4780 ]
  %4785 = phi float [ %4341, %4337 ], [ %4341, %4347 ], [ %4775, %4780 ]
  %4786 = phi float [ %4342, %4337 ], [ %4342, %4347 ], [ %4776, %4780 ]
  %4787 = phi float [ %4343, %4337 ], [ %4343, %4347 ], [ %4777, %4780 ]
  %4788 = call float @dx.op.unary.f32(i32 24, float %2734)  ; Sqrt(value)
  %4789 = call float @dx.op.unary.f32(i32 24, float %2735)  ; Sqrt(value)
  %4790 = call float @dx.op.unary.f32(i32 24, float %2736)  ; Sqrt(value)
  %4791 = fmul fast float %4788, %4785
  %4792 = fmul fast float %4789, %4786
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  br i1 %189, label %4795, label %4815

; <label>:4795                                    ; preds = %4781
  %4796 = fadd fast float %4787, %2105
  %4797 = fmul fast float %4796, %2106
  %4798 = fsub fast float 1.000000e+00, %2106
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4802 = fmul fast float %4801, %4799
  %4803 = fadd fast float %4802, %4797
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 0
  %4806 = fmul fast float %4805, %4077
  %4807 = fsub fast float %4803, %4806
  %4808 = fadd fast float %4792, %4791
  %4809 = fmul fast float %4794, %4808
  %4810 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4811 = fsub fast float %4807, %4810
  %4812 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4813 = fmul fast float %4811, %4812
  %4814 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  br label %4831

; <label>:4815                                    ; preds = %4781
  %4816 = fmul fast float %4790, %4787
  %4817 = fmul fast float %4794, %4791
  %4818 = fmul fast float %4794, %4792
  %4819 = fmul fast float %4816, %4794
  %4820 = add i32 %44, 212
  %4821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.i32 %4821, 0
  %4823 = and i32 %4822, 32
  %4824 = icmp eq i32 %4823, 0
  br i1 %4824, label %4831, label %4825

; <label>:4825                                    ; preds = %4815
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = fmul fast float %4827, 0x3FE99999A0000000
  %4829 = fadd fast float %4827, %4817
  %4830 = fadd fast float %4828, %4819
  br label %4831

; <label>:4831                                    ; preds = %4825, %4815, %4795
  %4832 = phi float [ %4809, %4795 ], [ %4829, %4825 ], [ %4817, %4815 ]
  %4833 = phi float [ %4814, %4795 ], [ %4818, %4825 ], [ %4818, %4815 ]
  %4834 = phi float [ 1.000000e+00, %4795 ], [ %4830, %4825 ], [ %4819, %4815 ]
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = fmul fast float %4836, %4783
  %4838 = fmul fast float %4836, %4784
  %4839 = fadd fast float %4783, %4782
  %4840 = select i1 %189, float %4839, float %4782
  %4841 = fmul float %4840, %4836
  %4842 = select i1 %189, float 0.000000e+00, float %4837
  %4843 = select i1 %189, float 0.000000e+00, float %4838
  %4844 = fmul fast float %4832, %4788
  %4845 = fmul fast float %4833, %4789
  %4846 = fmul fast float %4834, %4790
  %4847 = fadd fast float %4841, %4844
  %4848 = fadd fast float %4842, %4845
  %4849 = fadd fast float %4843, %4846
  %4850 = select i1 %189, float %4833, float %4848
  %4851 = select i1 %189, float %4834, float %4849
  %4852 = call float @dx.op.binary.f32(i32 36, float %4847, float 3.225500e+04)  ; FMin(a,b)
  %4853 = call float @dx.op.binary.f32(i32 36, float %4850, float 3.225500e+04)  ; FMin(a,b)
  %4854 = call float @dx.op.binary.f32(i32 36, float %4851, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4852)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4853)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4854)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

