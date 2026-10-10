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
; MATERIAL_DATA_OFFSET     0   x           9     NONE    uint   x   
; TRANSIENT_INDEX          0    y          9     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 104243b7b0b5eaefbda8bb9178f6079c
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
; Number of inputs: 38, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %71
  %79 = fmul fast float %77, %72
  %80 = fmul fast float %58, %55
  %81 = fmul fast float %59, %54
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %59, %53
  %84 = fmul fast float %57, %55
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %57, %54
  %87 = fmul fast float %58, %53
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %82, %56
  %90 = fmul fast float %85, %56
  %91 = fmul fast float %88, %56
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = fmul fast float %93, 2.000000e+00
  %96 = fmul fast float %95, %78
  %97 = fmul fast float %94, 2.000000e+00
  %98 = fmul fast float %97, %79
  %99 = fsub fast float 1.000000e+00, %96
  %100 = fsub fast float 1.000000e+00, %98
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %99, %102
  %106 = fmul fast float %99, %103
  %107 = fmul fast float %99, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %100, %109
  %113 = fmul fast float %100, %110
  %114 = fmul fast float %100, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fadd fast float %112, %116
  %120 = fadd fast float %119, %105
  %121 = fadd fast float %113, %117
  %122 = fadd fast float %121, %106
  %123 = fadd fast float %114, %118
  %124 = fadd fast float %123, %107
  %125 = fmul fast float %120, %73
  %126 = fmul fast float %122, %73
  %127 = fmul fast float %124, %73
  %128 = fadd fast float %62, 5.000000e-01
  %129 = fptoui float %128 to i32
  %130 = shl i32 %129, 3
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = or i32 %130, 4
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %132, 8191
  %137 = lshr i32 %132, 13
  %138 = and i32 %137, 8191
  %139 = lshr i32 %132, 26
  %140 = and i32 %135, 65535
  %141 = lshr i32 %135, 16
  %142 = uitofp i32 %140 to float
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %145 = uitofp i32 %141 to float
  %146 = uitofp i32 %136 to float
  %147 = fmul fast float %144, %146
  %148 = uitofp i32 %138 to float
  %149 = fmul fast float %144, %148
  %150 = fmul fast float %144, %60
  %151 = fmul fast float %150, %142
  %152 = fmul fast float %144, %61
  %153 = fmul fast float %152, %145
  %154 = fadd fast float %151, %147
  %155 = fadd fast float %149, %153
  %156 = uitofp i32 %139 to float
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %160 = fmul fast float %158, %78
  %161 = fmul fast float %159, %79
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = and i32 %163, 114688
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float %160, float 0.000000e+00
  %167 = select i1 %165, float %161, float 0.000000e+00
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %166, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = fmul fast float %169, 2.550000e+02
  %171 = fptoui float %170 to i32
  %172 = select i1 %165, i32 %171, i32 0
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 3
  %176 = and i32 %175, 3
  %177 = icmp ne i32 %176, 0
  %178 = and i32 %175, 4
  %179 = icmp ne i32 %178, 0
  %180 = and i1 %177, %179
  br i1 %180, label %181, label %192

; <label>:181                                     ; preds = %0
  %182 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %183 = fmul fast float %182, %79
  %184 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %185 = fmul fast float %184, %78
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %185, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = fcmp fast olt float %188, %190
  br label %195

; <label>:192                                     ; preds = %0
  %193 = icmp eq i32 %178, 0
  %194 = and i1 %177, %193
  br label %195

; <label>:195                                     ; preds = %192, %181
  %196 = phi i1 [ %191, %181 ], [ %194, %192 ]
  %197 = add i32 %44, 124
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = shl i32 %199, 4
  %201 = and i32 %200, 32752
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %199, 7
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %199, 22
  %207 = shl nuw nsw i32 %206, 5
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = add i32 %44, 168
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %211, 8
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %211, 16
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = add i32 %44, 36
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = add i32 %44, 224
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = add i32 %44, 140
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %44, 184
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %255 = add i32 %44, 52
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %44, 240
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %44, 156
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %44, 200
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %44, 68
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %44, 256
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %44, 300
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = lshr i32 %315, 20
  %317 = and i32 %316, 3
  %318 = add nuw nsw i32 %317, 1
  %319 = add i32 %44, 24
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %44, 28
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = or i32 %324, %321
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %787, label %327

; <label>:327                                     ; preds = %195
  %328 = lshr i32 %228, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %329, 0x3F50624DE0000000
  %331 = and i32 %228, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = fmul fast float %332, 0x3F50624DE0000000
  %334 = lshr i32 %225, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = and i32 %225, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %44, 220
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = lshr i32 %340, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %342, 0x3F50624DE0000000
  %344 = add i32 %44, 72
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  %349 = lshr i32 %346, 24
  %350 = add i32 %44, 228
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %44, 32
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = lshr i32 %359, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = shl i32 %359, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %371 = fmul fast float %370, 1.000000e+03
  %372 = fmul fast float %333, %371
  %373 = call float @dx.op.unary.f32(i32 22, float %372)  ; Frc(value)
  %374 = fadd fast float %373, %337
  %375 = fmul fast float %330, %371
  %376 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %377 = fadd fast float %376, %335
  %378 = fmul fast float %343, %371
  %379 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %380 = fmul fast float %379, 0x401921FB60000000
  %381 = fadd fast float %380, %362
  %382 = call float @dx.op.unary.f32(i32 13, float %381)  ; Sin(value)
  %383 = call float @dx.op.unary.f32(i32 12, float %381)  ; Cos(value)
  %384 = fsub fast float -0.000000e+00, %382
  %385 = fadd fast float %65, -5.000000e-01
  %386 = fadd fast float %66, -5.000000e-01
  %387 = fmul fast float %354, %385
  %388 = fmul fast float %356, %386
  %389 = fadd fast float %387, 5.000000e-01
  %390 = fadd fast float %388, 5.000000e-01
  %391 = fmul fast float %365, %389
  %392 = fmul fast float %368, %390
  %393 = fmul fast float %383, %391
  %394 = call float @dx.op.tertiary.f32(i32 46, float %384, float %392, float %393)  ; FMad(a,b,c)
  %395 = fmul fast float %382, %391
  %396 = call float @dx.op.tertiary.f32(i32 46, float %383, float %392, float %395)  ; FMad(a,b,c)
  %397 = fadd fast float %374, %394
  %398 = fadd fast float %377, %396
  %399 = icmp ugt i32 %348, 1
  %400 = icmp ugt i32 %346, 33554431
  %401 = or i1 %400, %399
  br i1 %401, label %402, label %427

; <label>:402                                     ; preds = %327
  %403 = add i32 %44, 180
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = lshr i32 %405, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = fmul fast float %370, %407
  %409 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %410 = mul nuw nsw i32 %348, %349
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %409, %411
  %413 = call float @dx.op.unary.f32(i32 27, float %412)  ; Round_ni(value)
  %414 = fptoui float %413 to i32
  %415 = urem i32 %414, %348
  %416 = udiv i32 %414, %349
  %417 = call float @dx.op.unary.f32(i32 22, float %397)  ; Frc(value)
  %418 = call float @dx.op.unary.f32(i32 22, float %398)  ; Frc(value)
  %419 = uitofp i32 %415 to float
  %420 = uitofp i32 %416 to float
  %421 = fadd fast float %417, %419
  %422 = fadd fast float %418, %420
  %423 = uitofp i32 %348 to float
  %424 = uitofp i32 %349 to float
  %425 = fdiv fast float %421, %423
  %426 = fdiv fast float %422, %424
  br label %427

; <label>:427                                     ; preds = %402, %327
  %428 = phi float [ %425, %402 ], [ %397, %327 ]
  %429 = phi float [ %426, %402 ], [ %398, %327 ]
  %430 = and i32 %321, 16
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %628, label %432

; <label>:432                                     ; preds = %427
  %433 = add i32 %44, 312
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %435, 0
  %437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %437, %dx.types.Handle %74, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = and i32 %346, 255
  %444 = uitofp i32 %443 to float
  %445 = lshr i32 %346, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %442, %444
  %449 = fadd fast float %448, %447
  %450 = fmul fast float %449, 0x3F70101000000000
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 512
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %463, label %455

; <label>:455                                     ; preds = %432
  %456 = add i32 %44, 372
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %460, %dx.types.Handle %75, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  br label %463

; <label>:463                                     ; preds = %455, %432
  %464 = phi float [ %462, %455 ], [ 1.000000e+00, %432 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 33554432
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %575, label %469

; <label>:469                                     ; preds = %463
  %470 = add i32 %44, 176
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = add i32 %44, 180
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 24
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = and i32 %483, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = lshr i32 %483, 8
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = lshr i32 %483, 16
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = add i32 %44, 172
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = lshr i32 %500, 24
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101020000000
  %504 = and i32 %500, 255
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = lshr i32 %500, 8
  %508 = and i32 %507, 255
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101020000000
  %511 = lshr i32 %500, 16
  %512 = and i32 %511, 255
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %513, 0x3F70101020000000
  %515 = bitcast float %439 to i32
  %516 = ashr i32 %515, 1
  %517 = sub nsw i32 1597463174, %516
  %518 = bitcast i32 %517 to float
  %519 = fmul fast float %439, 5.000000e-01
  %520 = fmul fast float %518, %518
  %521 = fmul fast float %520, %519
  %522 = fsub fast float 1.500000e+00, %521
  %523 = fmul fast float %518, %439
  %524 = fmul fast float %523, %522
  %525 = bitcast float %440 to i32
  %526 = ashr i32 %525, 1
  %527 = sub nsw i32 1597463174, %526
  %528 = bitcast i32 %527 to float
  %529 = fmul fast float %440, 5.000000e-01
  %530 = fmul fast float %528, %528
  %531 = fmul fast float %530, %529
  %532 = fsub fast float 1.500000e+00, %531
  %533 = fmul fast float %528, %440
  %534 = fmul fast float %533, %532
  %535 = bitcast float %441 to i32
  %536 = ashr i32 %535, 1
  %537 = sub nsw i32 1597463174, %536
  %538 = bitcast i32 %537 to float
  %539 = fmul fast float %441, 5.000000e-01
  %540 = fmul fast float %538, %538
  %541 = fmul fast float %540, %539
  %542 = fsub fast float 1.500000e+00, %541
  %543 = fmul fast float %538, %441
  %544 = fmul fast float %543, %542
  %545 = fsub fast float %524, %506
  %546 = fsub fast float %534, %510
  %547 = fsub fast float %544, %514
  %548 = fmul fast float %545, %474
  %549 = fmul fast float %546, %476
  %550 = fmul fast float %547, %481
  %551 = fadd fast float %548, %489
  %552 = fadd fast float %549, %493
  %553 = fadd fast float %550, %497
  %554 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %555 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %556 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %557 = fmul fast float %554, %554
  %558 = fmul fast float %555, %555
  %559 = fmul fast float %556, %556
  %560 = fsub fast float %557, %439
  %561 = fsub fast float %558, %440
  %562 = fsub fast float %559, %441
  %563 = fmul fast float %560, %464
  %564 = fmul fast float %561, %464
  %565 = fmul fast float %562, %464
  %566 = fadd fast float %563, %439
  %567 = fadd fast float %564, %440
  %568 = fadd fast float %565, %441
  %569 = fadd fast float %486, %450
  %570 = fsub fast float %569, %503
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %572 = fsub fast float %571, %450
  %573 = fmul fast float %572, %464
  %574 = fadd fast float %573, %450
  br label %628

; <label>:575                                     ; preds = %463
  %576 = and i32 %466, 134217728
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %612, label %578

; <label>:578                                     ; preds = %575
  %579 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %580 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %581 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %582 = fadd fast float %579, -5.000000e-01
  %583 = fadd fast float %580, -5.000000e-01
  %584 = fadd fast float %581, -5.000000e-01
  %585 = fmul fast float %582, %464
  %586 = fmul fast float %583, %464
  %587 = fmul fast float %584, %464
  %588 = fadd fast float %585, 5.000000e-01
  %589 = fadd fast float %586, 5.000000e-01
  %590 = fadd fast float %587, 5.000000e-01
  %591 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %592 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %593 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %594 = fmul fast float %588, 2.000000e+00
  %595 = fsub fast float 1.000000e+00, %594
  %596 = fmul fast float %595, %591
  %597 = fadd fast float %596, %594
  %598 = fmul fast float %597, %591
  %599 = fmul fast float %589, 2.000000e+00
  %600 = fsub fast float 1.000000e+00, %599
  %601 = fmul fast float %600, %592
  %602 = fadd fast float %601, %599
  %603 = fmul fast float %602, %592
  %604 = fmul fast float %590, 2.000000e+00
  %605 = fsub fast float 1.000000e+00, %604
  %606 = fmul fast float %605, %593
  %607 = fadd fast float %606, %604
  %608 = fmul fast float %607, %593
  %609 = fmul fast float %598, %598
  %610 = fmul fast float %603, %603
  %611 = fmul fast float %608, %608
  br label %628

; <label>:612                                     ; preds = %575
  %613 = fmul fast float %214, %214
  %614 = fmul fast float %218, %218
  %615 = fmul fast float %222, %222
  %616 = fadd fast float %613, -1.000000e+00
  %617 = fadd fast float %614, -1.000000e+00
  %618 = fadd fast float %615, -1.000000e+00
  %619 = fmul fast float %464, %616
  %620 = fmul fast float %464, %617
  %621 = fmul fast float %464, %618
  %622 = fadd fast float %619, 1.000000e+00
  %623 = fadd fast float %620, 1.000000e+00
  %624 = fadd fast float %621, 1.000000e+00
  %625 = fmul fast float %622, %439
  %626 = fmul fast float %623, %440
  %627 = fmul fast float %624, %441
  br label %628

; <label>:628                                     ; preds = %612, %578, %469, %427
  %629 = phi float [ %574, %469 ], [ %450, %578 ], [ %450, %612 ], [ 0x3FA23C0BE0000000, %427 ]
  %630 = phi float [ %566, %469 ], [ %609, %578 ], [ %625, %612 ], [ 1.000000e+00, %427 ]
  %631 = phi float [ %567, %469 ], [ %610, %578 ], [ %626, %612 ], [ 1.000000e+00, %427 ]
  %632 = phi float [ %568, %469 ], [ %611, %578 ], [ %627, %612 ], [ 1.000000e+00, %427 ]
  %633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.i32 %633, 1
  %635 = and i32 %634, 1
  %636 = icmp ne i32 %635, 0
  %637 = add i32 %44, 308
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 32
  %641 = icmp ne i32 %640, 0
  %642 = and i1 %636, %641
  %643 = select i1 %642, float 1.000000e+00, float %630
  %644 = select i1 %642, float 0x3FD3333340000000, float %631
  %645 = select i1 %642, float 0x3FD3333340000000, float %632
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 32
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %722, label %650

; <label>:650                                     ; preds = %628
  %651 = add i32 %44, 76
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %44, 324
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %74, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = and i32 %653, 255
  %665 = uitofp i32 %664 to float
  %666 = lshr i32 %653, 8
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %653, 16
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101000000000
  %673 = fmul fast float %660, %665
  %674 = fadd fast float %673, %668
  %675 = fmul fast float %674, 0x3F70101000000000
  %676 = fadd fast float %661, -5.000000e-01
  %677 = fadd fast float %663, -5.000000e-01
  %678 = fmul fast float %676, %672
  %679 = fmul fast float %677, %672
  %680 = fadd fast float %678, 5.000000e-01
  %681 = fadd fast float %679, 5.000000e-01
  %682 = fmul fast float %680, 2.000000e+00
  %683 = fadd fast float %682, -1.000000e+00
  %684 = fmul fast float %681, 2.000000e+00
  %685 = fadd fast float %684, -1.000000e+00
  %686 = fadd fast float %683, %685
  %687 = fmul fast float %686, 5.000000e-01
  %688 = fsub fast float %683, %685
  %689 = fmul fast float %688, 5.000000e-01
  %690 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %691 = fsub fast float 1.000000e+00, %690
  %692 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %693 = fsub fast float %691, %692
  %694 = call float @dx.op.dot3.f32(i32 55, float %687, float %689, float %693, float %687, float %689, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %687, %695
  %697 = fmul fast float %689, %695
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 67108864
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %718, label %702

; <label>:702                                     ; preds = %650
  %703 = add i32 %44, 216
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 65535
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 65535
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = lshr i32 %705, 16
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = fsub fast float %675, %713
  %715 = fmul fast float %714, %707
  %716 = fadd fast float %715, %711
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  br label %718

; <label>:718                                     ; preds = %702, %650
  %719 = phi float [ %717, %702 ], [ %675, %650 ]
  %720 = call float @dx.op.dot2.f32(i32 54, float %696, float %697, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %721 = call float @dx.op.dot2.f32(i32 54, float %696, float %697, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %722

; <label>:722                                     ; preds = %718, %628
  %723 = phi float [ %719, %718 ], [ 0x3FD6666660000000, %628 ]
  %724 = phi float [ %720, %718 ], [ 0.000000e+00, %628 ]
  %725 = phi float [ %721, %718 ], [ 0.000000e+00, %628 ]
  %726 = phi float [ %662, %718 ], [ 1.000000e+00, %628 ]
  %727 = add i32 %44, 128
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 22
  %731 = shl nuw nsw i32 %730, 5
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 64
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %770, label %737

; <label>:737                                     ; preds = %722
  %738 = add i32 %44, 336
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 131072
  %746 = icmp eq i32 %745, 0
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %74, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = fmul fast float %748, %202
  %752 = fmul fast float %749, %205
  %753 = fmul fast float %750, %208
  br i1 %746, label %760, label %754

; <label>:754                                     ; preds = %737
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = fmul fast float %756, %751
  %758 = fmul fast float %756, %752
  %759 = fmul fast float %756, %753
  br label %760

; <label>:760                                     ; preds = %754, %737
  %761 = phi float [ %757, %754 ], [ %751, %737 ]
  %762 = phi float [ %758, %754 ], [ %752, %737 ]
  %763 = phi float [ %759, %754 ], [ %753, %737 ]
  %764 = fmul fast float %761, %732
  %765 = select i1 %196, float %764, float %761
  %766 = call float @dx.op.dot3.f32(i32 55, float %765, float %762, float %763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = select i1 %196, float 0.000000e+00, float %761
  %768 = select i1 %196, float %766, float %762
  %769 = select i1 %196, float 0.000000e+00, float %763
  br label %770

; <label>:770                                     ; preds = %760, %722
  %771 = phi float [ %767, %760 ], [ 0.000000e+00, %722 ]
  %772 = phi float [ %768, %760 ], [ 0.000000e+00, %722 ]
  %773 = phi float [ %769, %760 ], [ 0.000000e+00, %722 ]
  %774 = add i32 %44, 80
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = lshr i32 %776, 8
  %780 = and i32 %779, 255
  %781 = uitofp i32 %780 to float
  %782 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = fmul fast float %781, %782
  %784 = fadd fast float %783, %778
  %785 = fmul fast float %784, 0x3F70101020000000
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  br label %787

; <label>:787                                     ; preds = %770, %195
  %788 = phi float [ %724, %770 ], [ 0.000000e+00, %195 ]
  %789 = phi float [ %725, %770 ], [ 0.000000e+00, %195 ]
  %790 = phi float [ %643, %770 ], [ 0.000000e+00, %195 ]
  %791 = phi float [ %644, %770 ], [ 0.000000e+00, %195 ]
  %792 = phi float [ %645, %770 ], [ 0.000000e+00, %195 ]
  %793 = phi float [ %771, %770 ], [ 0.000000e+00, %195 ]
  %794 = phi float [ %772, %770 ], [ 0.000000e+00, %195 ]
  %795 = phi float [ %773, %770 ], [ 0.000000e+00, %195 ]
  %796 = phi float [ %629, %770 ], [ 0.000000e+00, %195 ]
  %797 = phi float [ 1.000000e+00, %770 ], [ 0.000000e+00, %195 ]
  %798 = phi float [ %723, %770 ], [ 0.000000e+00, %195 ]
  %799 = phi float [ %726, %770 ], [ 0.000000e+00, %195 ]
  %800 = phi float [ %786, %770 ], [ 0.000000e+00, %195 ]
  %801 = icmp ult i32 %318, 2
  %802 = add i32 %44, 40
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = add i32 %44, 44
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = or i32 %807, %804
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %1633, label %810

; <label>:810                                     ; preds = %787
  %811 = add i32 %44, 236
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 16
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = fmul fast float %815, 0x3F50624DE0000000
  %817 = add i32 %44, 88
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = lshr i32 %819, 16
  %821 = and i32 %820, 255
  %822 = lshr i32 %819, 24
  %823 = add i32 %44, 244
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %825, 16
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = add i32 %44, 48
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 22
  %834 = shl nuw nsw i32 %833, 5
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = shl i32 %832, 4
  %837 = and i32 %836, 32752
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %832, 7
  %840 = and i32 %839, 32752
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %844 = fmul fast float %843, 1.000000e+03
  %845 = fmul fast float %269, %844
  %846 = call float @dx.op.unary.f32(i32 22, float %845)  ; Frc(value)
  %847 = fadd fast float %846, %259
  %848 = fmul fast float %270, %844
  %849 = call float @dx.op.unary.f32(i32 22, float %848)  ; Frc(value)
  %850 = fadd fast float %849, %261
  %851 = fmul fast float %816, %844
  %852 = call float @dx.op.unary.f32(i32 22, float %851)  ; Frc(value)
  %853 = fmul fast float %852, 0x401921FB60000000
  %854 = fadd fast float %853, %835
  %855 = call float @dx.op.unary.f32(i32 13, float %854)  ; Sin(value)
  %856 = call float @dx.op.unary.f32(i32 12, float %854)  ; Cos(value)
  %857 = fsub fast float -0.000000e+00, %855
  %858 = fadd fast float %67, -5.000000e-01
  %859 = fadd fast float %68, -5.000000e-01
  %860 = fmul fast float %827, %858
  %861 = fmul fast float %829, %859
  %862 = fadd fast float %860, 5.000000e-01
  %863 = fadd fast float %861, 5.000000e-01
  %864 = fmul fast float %838, %862
  %865 = fmul fast float %841, %863
  %866 = fmul fast float %856, %864
  %867 = call float @dx.op.tertiary.f32(i32 46, float %857, float %865, float %866)  ; FMad(a,b,c)
  %868 = fmul fast float %855, %864
  %869 = call float @dx.op.tertiary.f32(i32 46, float %856, float %865, float %868)  ; FMad(a,b,c)
  %870 = fadd fast float %847, %867
  %871 = fadd fast float %850, %869
  %872 = icmp ugt i32 %821, 1
  %873 = icmp ugt i32 %819, 33554431
  %874 = or i1 %873, %872
  br i1 %874, label %875, label %900

; <label>:875                                     ; preds = %810
  %876 = add i32 %44, 196
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 16
  %880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %879)  ; LegacyF16ToF32(value)
  %881 = fmul fast float %843, %880
  %882 = call float @dx.op.unary.f32(i32 22, float %881)  ; Frc(value)
  %883 = mul nuw nsw i32 %821, %822
  %884 = uitofp i32 %883 to float
  %885 = fmul fast float %882, %884
  %886 = call float @dx.op.unary.f32(i32 27, float %885)  ; Round_ni(value)
  %887 = fptoui float %886 to i32
  %888 = urem i32 %887, %821
  %889 = udiv i32 %887, %822
  %890 = call float @dx.op.unary.f32(i32 22, float %870)  ; Frc(value)
  %891 = call float @dx.op.unary.f32(i32 22, float %871)  ; Frc(value)
  %892 = uitofp i32 %888 to float
  %893 = uitofp i32 %889 to float
  %894 = fadd fast float %890, %892
  %895 = fadd fast float %891, %893
  %896 = uitofp i32 %821 to float
  %897 = uitofp i32 %822 to float
  %898 = fdiv fast float %894, %896
  %899 = fdiv fast float %895, %897
  br label %900

; <label>:900                                     ; preds = %875, %810
  %901 = phi float [ %898, %875 ], [ %870, %810 ]
  %902 = phi float [ %899, %875 ], [ %871, %810 ]
  %903 = and i32 %804, 16777216
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %1014, label %905

; <label>:905                                     ; preds = %900
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = extractvalue %dx.types.CBufRet.f32 %906, 2
  %910 = fadd fast float %907, %125
  %911 = fadd fast float %908, %126
  %912 = fadd fast float %909, %127
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = icmp eq i32 %43, 65535
  br i1 %916, label %1011, label %917

; <label>:917                                     ; preds = %905
  %918 = lshr i32 %43, 1
  %919 = shl i32 %918, 2
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %43, 1
  %923 = icmp ne i32 %922, 0
  %924 = lshr i32 %921, 16
  %925 = and i32 %921, 65535
  %926 = select i1 %923, i32 %924, i32 %925
  %927 = icmp eq i32 %926, 65535
  br i1 %927, label %1007, label %928

; <label>:928                                     ; preds = %917
  %929 = mul nuw nsw i32 %926, 40
  %930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = extractvalue %dx.types.ResRet.f32 %930, 1
  %933 = extractvalue %dx.types.ResRet.f32 %930, 2
  %934 = add nuw nsw i32 %929, 12
  %935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = add nuw nsw i32 %929, 24
  %940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.f32 %940, 0
  %942 = extractvalue %dx.types.ResRet.f32 %940, 1
  %943 = extractvalue %dx.types.ResRet.f32 %940, 2
  %944 = add nuw nsw i32 %929, 36
  %945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = fsub fast float %910, %931
  %948 = fsub fast float %911, %932
  %949 = fsub fast float %912, %933
  %950 = fmul fast float %946, %947
  %951 = fmul fast float %946, %948
  %952 = fmul fast float %946, %949
  %953 = call float @dx.op.unary.f32(i32 27, float %950)  ; Round_ni(value)
  %954 = call float @dx.op.unary.f32(i32 27, float %951)  ; Round_ni(value)
  %955 = call float @dx.op.unary.f32(i32 27, float %952)  ; Round_ni(value)
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fadd fast float %954, 5.000000e-01
  %958 = fadd fast float %955, 5.000000e-01
  %959 = fmul fast float %956, %936
  %960 = fmul fast float %957, %937
  %961 = fmul fast float %958, %938
  %962 = shl i32 %43, 2
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = add i32 %964, 0
  %966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %967 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %968 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %969 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %966, %dx.types.Handle %40, float %967, float %968, float %969, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = fmul fast float %971, 1.023000e+03
  %975 = fmul fast float %972, 1.023000e+03
  %976 = fmul fast float %973, 1.023000e+03
  %977 = fadd fast float %974, 5.000000e-01
  %978 = fadd fast float %975, 5.000000e-01
  %979 = fadd fast float %976, 5.000000e-01
  %980 = call float @dx.op.unary.f32(i32 27, float %977)  ; Round_ni(value)
  %981 = call float @dx.op.unary.f32(i32 27, float %978)  ; Round_ni(value)
  %982 = call float @dx.op.unary.f32(i32 27, float %979)  ; Round_ni(value)
  %983 = fsub fast float %950, %953
  %984 = fsub fast float %951, %954
  %985 = fsub fast float %952, %955
  %986 = fmul fast float %983, 7.500000e-01
  %987 = fmul fast float %984, 7.500000e-01
  %988 = fmul fast float %985, 7.500000e-01
  %989 = fadd fast float %953, 1.250000e-01
  %990 = fadd fast float %989, %986
  %991 = fadd fast float %990, %980
  %992 = fadd fast float %954, 1.250000e-01
  %993 = fadd fast float %992, %987
  %994 = fadd fast float %993, %981
  %995 = fadd fast float %955, 1.250000e-01
  %996 = fadd fast float %995, %988
  %997 = fadd fast float %996, %982
  %998 = fmul fast float %991, %941
  %999 = fmul fast float %994, %942
  %1000 = fmul fast float %997, %943
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = add i32 %1002, 0
  %1004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1004, %dx.types.Handle %38, float %998, float %999, float %1000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  br label %1007

; <label>:1007                                    ; preds = %928, %917
  %1008 = phi float [ %1006, %928 ], [ -1.000000e+00, %917 ]
  %1009 = fadd fast float %1008, %915
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  br label %1011

; <label>:1011                                    ; preds = %1007, %905
  %1012 = phi float [ %1010, %1007 ], [ %915, %905 ]
  %1013 = fmul fast float %1012, %69
  br label %1014

; <label>:1014                                    ; preds = %1011, %900
  %1015 = phi float [ %1013, %1011 ], [ %69, %900 ]
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = and i32 %1017, 256
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1066, label %1020

; <label>:1020                                    ; preds = %1014
  %1021 = add i32 %44, 364
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = add i32 %1023, 0
  %1025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1025, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = add i32 %44, 100
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = shl i32 %1030, 4
  %1032 = and i32 %1031, 32752
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = lshr i32 %1030, 7
  %1035 = and i32 %1034, 32752
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = fsub fast float 1.000000e+00, %1015
  %1038 = call float @dx.op.binary.f32(i32 35, float %1037, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1039 = bitcast float %1015 to i32
  %1040 = sitofp i32 %1039 to float
  %1041 = fadd fast float %1040, 0xC1CFBF8940000000
  %1042 = fmul fast float %1036, %1041
  %1043 = fadd fast float %1042, 0x41CFBF8940000000
  %1044 = fptosi float %1043 to i32
  %1045 = bitcast i32 %1044 to float
  %1046 = bitcast float %1038 to i32
  %1047 = sitofp i32 %1046 to float
  %1048 = fadd fast float %1047, 0xC1CFBF8940000000
  %1049 = fmul fast float %1048, %1036
  %1050 = fadd fast float %1049, 0x41CFBF8940000000
  %1051 = fptosi float %1050 to i32
  %1052 = bitcast i32 %1051 to float
  %1053 = fmul fast float %1045, %1033
  %1054 = fmul fast float %1052, %1033
  %1055 = fsub fast float %1038, %1053
  %1056 = fadd fast float %1054, %1038
  %1057 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1058 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1059 = fsub fast float %1027, %1057
  %1060 = fsub fast float %1058, %1057
  %1061 = bitcast float %1060 to i32
  %1062 = sub nsw i32 2129859010, %1061
  %1063 = bitcast i32 %1062 to float
  %1064 = fmul fast float %1063, %1059
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  br label %1066

; <label>:1066                                    ; preds = %1020, %1014
  %1067 = phi float [ %1065, %1020 ], [ %1015, %1014 ]
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 128
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1088, label %1072

; <label>:1072                                    ; preds = %1066
  %1073 = add i32 %44, 352
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 524288
  %1083 = icmp ne i32 %1082, 0
  %1084 = fcmp fast ogt float %1079, 0x3FE0101020000000
  %1085 = select i1 %1084, float 1.000000e+00, float 0.000000e+00
  %1086 = select i1 %1083, float %1085, float %1079
  %1087 = fmul fast float %1086, %1067
  br label %1088

; <label>:1088                                    ; preds = %1072, %1066
  %1089 = phi float [ %1087, %1072 ], [ %1067, %1066 ]
  %1090 = fcmp fast ult float %1089, 0x3F70101020000000
  br i1 %1090, label %1633, label %1091

; <label>:1091                                    ; preds = %1088
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 16
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1294, label %1096

; <label>:1096                                    ; preds = %1091
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = add i32 %44, 316
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %74, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1109 = and i32 %1098, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = lshr i32 %1098, 8
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1108, %1110
  %1115 = fadd fast float %1114, %1113
  %1116 = fmul fast float %1115, 0x3F70101000000000
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 512
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1129, label %1121

; <label>:1121                                    ; preds = %1096
  %1122 = add i32 %44, 376
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1126, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  br label %1129

; <label>:1129                                    ; preds = %1121, %1096
  %1130 = phi float [ %1128, %1121 ], [ 1.000000e+00, %1096 ]
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = and i32 %1132, 33554432
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1241, label %1135

; <label>:1135                                    ; preds = %1129
  %1136 = add i32 %44, 192
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 65535
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = lshr i32 %1138, 16
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = add i32 %44, 196
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 65535
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 24
  %1151 = uitofp i32 %1150 to float
  %1152 = fmul fast float %1151, 0x3F70101020000000
  %1153 = and i32 %1149, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = lshr i32 %1149, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = lshr i32 %1149, 16
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = add i32 %44, 188
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = lshr i32 %1166, 24
  %1168 = uitofp i32 %1167 to float
  %1169 = fmul fast float %1168, 0x3F70101020000000
  %1170 = and i32 %1166, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F70101020000000
  %1173 = lshr i32 %1166, 8
  %1174 = and i32 %1173, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F70101020000000
  %1177 = lshr i32 %1166, 16
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F70101020000000
  %1181 = bitcast float %1105 to i32
  %1182 = ashr i32 %1181, 1
  %1183 = sub nsw i32 1597463174, %1182
  %1184 = bitcast i32 %1183 to float
  %1185 = fmul fast float %1105, 5.000000e-01
  %1186 = fmul fast float %1184, %1184
  %1187 = fmul fast float %1186, %1185
  %1188 = fsub fast float 1.500000e+00, %1187
  %1189 = fmul fast float %1184, %1105
  %1190 = fmul fast float %1189, %1188
  %1191 = bitcast float %1106 to i32
  %1192 = ashr i32 %1191, 1
  %1193 = sub nsw i32 1597463174, %1192
  %1194 = bitcast i32 %1193 to float
  %1195 = fmul fast float %1106, 5.000000e-01
  %1196 = fmul fast float %1194, %1194
  %1197 = fmul fast float %1196, %1195
  %1198 = fsub fast float 1.500000e+00, %1197
  %1199 = fmul fast float %1194, %1106
  %1200 = fmul fast float %1199, %1198
  %1201 = bitcast float %1107 to i32
  %1202 = ashr i32 %1201, 1
  %1203 = sub nsw i32 1597463174, %1202
  %1204 = bitcast i32 %1203 to float
  %1205 = fmul fast float %1107, 5.000000e-01
  %1206 = fmul fast float %1204, %1204
  %1207 = fmul fast float %1206, %1205
  %1208 = fsub fast float 1.500000e+00, %1207
  %1209 = fmul fast float %1204, %1107
  %1210 = fmul fast float %1209, %1208
  %1211 = fsub fast float %1190, %1172
  %1212 = fsub fast float %1200, %1176
  %1213 = fsub fast float %1210, %1180
  %1214 = fmul fast float %1211, %1140
  %1215 = fmul fast float %1212, %1142
  %1216 = fmul fast float %1213, %1147
  %1217 = fadd fast float %1214, %1155
  %1218 = fadd fast float %1215, %1159
  %1219 = fadd fast float %1216, %1163
  %1220 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1221 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1222 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1223 = fmul fast float %1220, %1220
  %1224 = fmul fast float %1221, %1221
  %1225 = fmul fast float %1222, %1222
  %1226 = fsub fast float %1223, %1105
  %1227 = fsub fast float %1224, %1106
  %1228 = fsub fast float %1225, %1107
  %1229 = fmul fast float %1226, %1130
  %1230 = fmul fast float %1227, %1130
  %1231 = fmul fast float %1228, %1130
  %1232 = fadd fast float %1229, %1105
  %1233 = fadd fast float %1230, %1106
  %1234 = fadd fast float %1231, %1107
  %1235 = fadd fast float %1152, %1116
  %1236 = fsub fast float %1235, %1169
  %1237 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1238 = fsub fast float %1237, %1116
  %1239 = fmul fast float %1238, %1130
  %1240 = fadd fast float %1239, %1116
  br label %1294

; <label>:1241                                    ; preds = %1129
  %1242 = and i32 %1132, 134217728
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1278, label %1244

; <label>:1244                                    ; preds = %1241
  %1245 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1246 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %1247 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %1248 = fadd fast float %1245, -5.000000e-01
  %1249 = fadd fast float %1246, -5.000000e-01
  %1250 = fadd fast float %1247, -5.000000e-01
  %1251 = fmul fast float %1248, %1130
  %1252 = fmul fast float %1249, %1130
  %1253 = fmul fast float %1250, %1130
  %1254 = fadd fast float %1251, 5.000000e-01
  %1255 = fadd fast float %1252, 5.000000e-01
  %1256 = fadd fast float %1253, 5.000000e-01
  %1257 = call float @dx.op.unary.f32(i32 24, float %1105)  ; Sqrt(value)
  %1258 = call float @dx.op.unary.f32(i32 24, float %1106)  ; Sqrt(value)
  %1259 = call float @dx.op.unary.f32(i32 24, float %1107)  ; Sqrt(value)
  %1260 = fmul fast float %1254, 2.000000e+00
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = fmul fast float %1261, %1257
  %1263 = fadd fast float %1262, %1260
  %1264 = fmul fast float %1263, %1257
  %1265 = fmul fast float %1255, 2.000000e+00
  %1266 = fsub fast float 1.000000e+00, %1265
  %1267 = fmul fast float %1266, %1258
  %1268 = fadd fast float %1267, %1265
  %1269 = fmul fast float %1268, %1258
  %1270 = fmul fast float %1256, 2.000000e+00
  %1271 = fsub fast float 1.000000e+00, %1270
  %1272 = fmul fast float %1271, %1259
  %1273 = fadd fast float %1272, %1270
  %1274 = fmul fast float %1273, %1259
  %1275 = fmul fast float %1264, %1264
  %1276 = fmul fast float %1269, %1269
  %1277 = fmul fast float %1274, %1274
  br label %1294

; <label>:1278                                    ; preds = %1241
  %1279 = fmul fast float %246, %246
  %1280 = fmul fast float %250, %250
  %1281 = fmul fast float %254, %254
  %1282 = fadd fast float %1279, -1.000000e+00
  %1283 = fadd fast float %1280, -1.000000e+00
  %1284 = fadd fast float %1281, -1.000000e+00
  %1285 = fmul fast float %1130, %1282
  %1286 = fmul fast float %1130, %1283
  %1287 = fmul fast float %1130, %1284
  %1288 = fadd fast float %1285, 1.000000e+00
  %1289 = fadd fast float %1286, 1.000000e+00
  %1290 = fadd fast float %1287, 1.000000e+00
  %1291 = fmul fast float %1288, %1105
  %1292 = fmul fast float %1289, %1106
  %1293 = fmul fast float %1290, %1107
  br label %1294

; <label>:1294                                    ; preds = %1278, %1244, %1135, %1091
  %1295 = phi float [ %1240, %1135 ], [ %1116, %1244 ], [ %1116, %1278 ], [ 0x3FA23C0BE0000000, %1091 ]
  %1296 = phi float [ %1232, %1135 ], [ %1275, %1244 ], [ %1291, %1278 ], [ 1.000000e+00, %1091 ]
  %1297 = phi float [ %1233, %1135 ], [ %1276, %1244 ], [ %1292, %1278 ], [ 1.000000e+00, %1091 ]
  %1298 = phi float [ %1234, %1135 ], [ %1277, %1244 ], [ %1293, %1278 ], [ 1.000000e+00, %1091 ]
  %1299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.i32 %1299, 1
  %1301 = and i32 %1300, 1
  %1302 = icmp ne i32 %1301, 0
  %1303 = add i32 %44, 308
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 32
  %1307 = icmp ne i32 %1306, 0
  %1308 = and i1 %1302, %1307
  %1309 = select i1 %1308, float 1.000000e+00, float %1296
  %1310 = select i1 %1308, float 0x3FD3333340000000, float %1297
  %1311 = select i1 %1308, float 0x3FD3333340000000, float %1298
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %1313, 32
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1388, label %1316

; <label>:1316                                    ; preds = %1294
  %1317 = add i32 %44, 92
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = add i32 %44, 328
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = add i32 %1322, 0
  %1324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1324, %dx.types.Handle %74, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = extractvalue %dx.types.ResRet.f32 %1325, 3
  %1330 = and i32 %1319, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = lshr i32 %1319, 8
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = lshr i32 %1319, 16
  %1336 = and i32 %1335, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1337, 0x3F70101000000000
  %1339 = fmul fast float %1326, %1331
  %1340 = fadd fast float %1339, %1334
  %1341 = fmul fast float %1340, 0x3F70101000000000
  %1342 = fadd fast float %1327, -5.000000e-01
  %1343 = fadd fast float %1329, -5.000000e-01
  %1344 = fmul fast float %1342, %1338
  %1345 = fmul fast float %1343, %1338
  %1346 = fadd fast float %1344, 5.000000e-01
  %1347 = fadd fast float %1345, 5.000000e-01
  %1348 = fmul fast float %1346, 2.000000e+00
  %1349 = fadd fast float %1348, -1.000000e+00
  %1350 = fmul fast float %1347, 2.000000e+00
  %1351 = fadd fast float %1350, -1.000000e+00
  %1352 = fadd fast float %1349, %1351
  %1353 = fmul fast float %1352, 5.000000e-01
  %1354 = fsub fast float %1349, %1351
  %1355 = fmul fast float %1354, 5.000000e-01
  %1356 = call float @dx.op.unary.f32(i32 6, float %1353)  ; FAbs(value)
  %1357 = fsub fast float 1.000000e+00, %1356
  %1358 = call float @dx.op.unary.f32(i32 6, float %1355)  ; FAbs(value)
  %1359 = fsub fast float %1357, %1358
  %1360 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1355, float %1359, float %1353, float %1355, float %1359)  ; Dot3(ax,ay,az,bx,by,bz)
  %1361 = call float @dx.op.unary.f32(i32 25, float %1360)  ; Rsqrt(value)
  %1362 = fmul fast float %1353, %1361
  %1363 = fmul fast float %1355, %1361
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 67108864
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1384, label %1368

; <label>:1368                                    ; preds = %1316
  %1369 = add i32 %44, 232
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 65535
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 65535
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = lshr i32 %1371, 16
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = fsub fast float %1341, %1379
  %1381 = fmul fast float %1380, %1373
  %1382 = fadd fast float %1381, %1377
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  br label %1384

; <label>:1384                                    ; preds = %1368, %1316
  %1385 = phi float [ %1383, %1368 ], [ %1341, %1316 ]
  %1386 = call float @dx.op.dot2.f32(i32 54, float %1362, float %1363, float %49, float %50)  ; Dot2(ax,ay,bx,by)
  %1387 = call float @dx.op.dot2.f32(i32 54, float %1362, float %1363, float %51, float %52)  ; Dot2(ax,ay,bx,by)
  br label %1388

; <label>:1388                                    ; preds = %1384, %1294
  %1389 = phi float [ %1385, %1384 ], [ 0x3FD6666660000000, %1294 ]
  %1390 = phi float [ %1386, %1384 ], [ 0.000000e+00, %1294 ]
  %1391 = phi float [ %1387, %1384 ], [ 0.000000e+00, %1294 ]
  %1392 = phi float [ %1328, %1384 ], [ 1.000000e+00, %1294 ]
  %1393 = add i32 %44, 144
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = lshr i32 %1395, 22
  %1397 = shl nuw nsw i32 %1396, 5
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = and i32 %1400, 64
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1436, label %1403

; <label>:1403                                    ; preds = %1388
  %1404 = add i32 %44, 340
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 131072
  %1412 = icmp eq i32 %1411, 0
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %74, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = fmul fast float %1414, %234
  %1418 = fmul fast float %1415, %237
  %1419 = fmul fast float %1416, %240
  br i1 %1412, label %1426, label %1420

; <label>:1420                                    ; preds = %1403
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = fmul fast float %1422, %1417
  %1424 = fmul fast float %1422, %1418
  %1425 = fmul fast float %1422, %1419
  br label %1426

; <label>:1426                                    ; preds = %1420, %1403
  %1427 = phi float [ %1423, %1420 ], [ %1417, %1403 ]
  %1428 = phi float [ %1424, %1420 ], [ %1418, %1403 ]
  %1429 = phi float [ %1425, %1420 ], [ %1419, %1403 ]
  %1430 = fmul fast float %1427, %1398
  %1431 = select i1 %196, float %1430, float %1427
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1428, float %1429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = select i1 %196, float 0.000000e+00, float %1427
  %1434 = select i1 %196, float %1432, float %1428
  %1435 = select i1 %196, float 0.000000e+00, float %1429
  br label %1436

; <label>:1436                                    ; preds = %1426, %1388
  %1437 = phi float [ %1433, %1426 ], [ 0.000000e+00, %1388 ]
  %1438 = phi float [ %1434, %1426 ], [ 0.000000e+00, %1388 ]
  %1439 = phi float [ %1435, %1426 ], [ 0.000000e+00, %1388 ]
  %1440 = add i32 %44, 96
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 255
  %1444 = uitofp i32 %1443 to float
  %1445 = lshr i32 %1442, 8
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1309, float %1310, float %1311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = fmul fast float %1447, %1448
  %1450 = fadd fast float %1449, %1444
  %1451 = fmul fast float %1450, 0x3F70101020000000
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  br i1 %801, label %1453, label %1461

; <label>:1453                                    ; preds = %1436
  %1454 = fsub fast float 1.000000e+00, %1089
  %1455 = fmul fast float %1454, %790
  %1456 = fmul fast float %1454, %791
  %1457 = fmul fast float %1454, %792
  %1458 = fmul fast float %1454, %793
  %1459 = fmul fast float %1454, %794
  %1460 = fmul fast float %1454, %795
  br label %1461

; <label>:1461                                    ; preds = %1453, %1436
  %1462 = phi float [ %1455, %1453 ], [ %790, %1436 ]
  %1463 = phi float [ %1456, %1453 ], [ %791, %1436 ]
  %1464 = phi float [ %1457, %1453 ], [ %792, %1436 ]
  %1465 = phi float [ %1458, %1453 ], [ %793, %1436 ]
  %1466 = phi float [ %1459, %1453 ], [ %794, %1436 ]
  %1467 = phi float [ %1460, %1453 ], [ %795, %1436 ]
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = and i32 %1469, 3
  %1471 = icmp eq i32 %1470, 3
  br i1 %1471, label %1550, label %1472

; <label>:1472                                    ; preds = %1461
  %1473 = and i32 %1469, 16
  %1474 = icmp ne i32 %1473, 0
  %1475 = select i1 %1474, float %1089, float 0.000000e+00
  %1476 = icmp eq i32 %1470, 0
  br i1 %1476, label %1477, label %1505

; <label>:1477                                    ; preds = %1472
  %1478 = and i32 %1469, 64
  %1479 = icmp ne i32 %1478, 0
  %1480 = select i1 %1479, float %1089, float 0.000000e+00
  %1481 = fsub fast float %1309, %1462
  %1482 = fsub fast float %1310, %1463
  %1483 = fsub fast float %1311, %1464
  %1484 = fmul fast float %1475, %1481
  %1485 = fmul fast float %1475, %1482
  %1486 = fmul fast float %1475, %1483
  %1487 = fadd fast float %1484, %1462
  %1488 = fadd fast float %1485, %1463
  %1489 = fadd fast float %1486, %1464
  %1490 = fsub fast float %1295, %796
  %1491 = fmul fast float %1475, %1490
  %1492 = fadd fast float %1491, %796
  %1493 = fsub fast float %1437, %1465
  %1494 = fsub fast float %1438, %1466
  %1495 = fsub fast float %1439, %1467
  %1496 = fmul fast float %1480, %1493
  %1497 = fmul fast float %1480, %1494
  %1498 = fmul fast float %1480, %1495
  %1499 = fadd fast float %1496, %1465
  %1500 = fadd fast float %1497, %1466
  %1501 = fadd fast float %1498, %1467
  %1502 = fsub fast float %1452, %800
  %1503 = fmul fast float %1475, %1502
  %1504 = fadd fast float %1503, %800
  br label %1550

; <label>:1505                                    ; preds = %1472
  %1506 = icmp eq i32 %1470, 1
  br i1 %1506, label %1507, label %1520

; <label>:1507                                    ; preds = %1505
  %1508 = fadd fast float %1309, -1.000000e+00
  %1509 = fadd fast float %1310, -1.000000e+00
  %1510 = fadd fast float %1311, -1.000000e+00
  %1511 = fmul fast float %1475, %1508
  %1512 = fmul fast float %1475, %1509
  %1513 = fmul fast float %1475, %1510
  %1514 = fadd fast float %1511, 1.000000e+00
  %1515 = fadd fast float %1512, 1.000000e+00
  %1516 = fadd fast float %1513, 1.000000e+00
  %1517 = fmul fast float %1514, %1462
  %1518 = fmul fast float %1515, %1463
  %1519 = fmul fast float %1516, %1464
  br label %1550

; <label>:1520                                    ; preds = %1505
  %1521 = icmp eq i32 %1470, 2
  br i1 %1521, label %1522, label %1550

; <label>:1522                                    ; preds = %1520
  %1523 = call float @dx.op.unary.f32(i32 24, float %1309)  ; Sqrt(value)
  %1524 = call float @dx.op.unary.f32(i32 24, float %1310)  ; Sqrt(value)
  %1525 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  %1526 = fadd fast float %1523, -5.000000e-01
  %1527 = fadd fast float %1524, -5.000000e-01
  %1528 = fadd fast float %1525, -5.000000e-01
  %1529 = fmul fast float %1526, %1475
  %1530 = fmul fast float %1527, %1475
  %1531 = fmul fast float %1528, %1475
  %1532 = fadd fast float %1529, 5.000000e-01
  %1533 = fadd fast float %1530, 5.000000e-01
  %1534 = fadd fast float %1531, 5.000000e-01
  %1535 = fmul fast float %1532, 2.000000e+00
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1536, %1462
  %1538 = fadd fast float %1537, %1535
  %1539 = fmul fast float %1538, %1462
  %1540 = fmul fast float %1533, 2.000000e+00
  %1541 = fsub fast float 1.000000e+00, %1540
  %1542 = fmul fast float %1541, %1463
  %1543 = fadd fast float %1542, %1540
  %1544 = fmul fast float %1543, %1463
  %1545 = fmul fast float %1534, 2.000000e+00
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = fmul fast float %1546, %1464
  %1548 = fadd fast float %1547, %1545
  %1549 = fmul fast float %1548, %1464
  br label %1550

; <label>:1550                                    ; preds = %1522, %1520, %1507, %1477, %1461
  %1551 = phi float [ %1462, %1461 ], [ %1539, %1522 ], [ %1462, %1520 ], [ %1517, %1507 ], [ %1487, %1477 ]
  %1552 = phi float [ %1463, %1461 ], [ %1544, %1522 ], [ %1463, %1520 ], [ %1518, %1507 ], [ %1488, %1477 ]
  %1553 = phi float [ %1464, %1461 ], [ %1549, %1522 ], [ %1464, %1520 ], [ %1519, %1507 ], [ %1489, %1477 ]
  %1554 = phi float [ %1465, %1461 ], [ %1465, %1522 ], [ %1465, %1520 ], [ %1465, %1507 ], [ %1499, %1477 ]
  %1555 = phi float [ %1466, %1461 ], [ %1466, %1522 ], [ %1466, %1520 ], [ %1466, %1507 ], [ %1500, %1477 ]
  %1556 = phi float [ %1467, %1461 ], [ %1467, %1522 ], [ %1467, %1520 ], [ %1467, %1507 ], [ %1501, %1477 ]
  %1557 = phi float [ %796, %1461 ], [ %796, %1522 ], [ %796, %1520 ], [ %796, %1507 ], [ %1492, %1477 ]
  %1558 = phi float [ %800, %1461 ], [ %800, %1522 ], [ %800, %1520 ], [ %800, %1507 ], [ %1504, %1477 ]
  %1559 = and i32 %1469, 12
  %1560 = icmp eq i32 %1559, 12
  br i1 %1560, label %1633, label %1561

; <label>:1561                                    ; preds = %1550
  %1562 = and i32 %1469, 2097184
  %1563 = icmp eq i32 %1562, 2097184
  %1564 = select i1 %1563, float %1089, float 0.000000e+00
  %1565 = and i32 %1469, 4194336
  %1566 = icmp eq i32 %1565, 4194336
  %1567 = select i1 %1566, float %1089, float 0.000000e+00
  %1568 = and i32 %1469, 8388640
  %1569 = icmp eq i32 %1568, 8388640
  %1570 = select i1 %1569, float %1089, float 0.000000e+00
  %1571 = icmp eq i32 %1559, 0
  br i1 %1571, label %1572, label %1585

; <label>:1572                                    ; preds = %1561
  %1573 = fsub fast float %1390, %788
  %1574 = fsub fast float %1391, %789
  %1575 = fmul fast float %1564, %1573
  %1576 = fmul fast float %1564, %1574
  %1577 = fadd fast float %1575, %788
  %1578 = fadd fast float %1576, %789
  %1579 = fsub fast float %1392, %799
  %1580 = fmul fast float %1567, %1579
  %1581 = fadd fast float %1580, %799
  %1582 = fsub fast float %1389, %798
  %1583 = fmul fast float %1570, %1582
  %1584 = fadd fast float %1583, %798
  br label %1633

; <label>:1585                                    ; preds = %1561
  %1586 = icmp eq i32 %1559, 4
  br i1 %1586, label %1587, label %1619

; <label>:1587                                    ; preds = %1585
  %1588 = fmul fast float %1564, %1390
  %1589 = fmul fast float %1564, %1391
  %1590 = fadd fast float %1588, %788
  %1591 = fadd fast float %1589, %789
  %1592 = call float @dx.op.binary.f32(i32 36, float %799, float %1392)  ; FMin(a,b)
  %1593 = fsub fast float %1592, %799
  %1594 = fmul fast float %1593, %1567
  %1595 = fadd fast float %1594, %799
  %1596 = fadd fast float %1389, %798
  %1597 = fmul fast float %1596, 0x3FF337FAE0000000
  %1598 = fmul fast float %798, %798
  %1599 = fmul fast float %1389, %1389
  %1600 = fadd fast float %1599, %1598
  %1601 = fmul fast float %1600, 0x3FE5152B00000000
  %1602 = fmul fast float %798, 0xBFCC1F85E0000000
  %1603 = fmul fast float %1602, %1389
  %1604 = fadd fast float %1603, 0xBFE1363700000000
  %1605 = fadd fast float %1604, %1597
  %1606 = fsub fast float %1605, %1601
  %1607 = fmul fast float %1596, 0x3FBA6F0D00000000
  %1608 = fmul fast float %1600, 0x3FD0432880000000
  %1609 = fmul fast float %798, 0xBFEF110800000000
  %1610 = fmul fast float %1609, %1389
  %1611 = fadd fast float %1610, 1.000000e+00
  %1612 = fsub fast float %1611, %1607
  %1613 = fadd fast float %1612, %1608
  %1614 = fdiv fast float %1606, %1613
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fsub fast float %1615, %798
  %1617 = fmul fast float %1616, %1570
  %1618 = fadd fast float %1617, %798
  br label %1633

; <label>:1619                                    ; preds = %1585
  %1620 = icmp eq i32 %1559, 8
  br i1 %1620, label %1621, label %1633

; <label>:1621                                    ; preds = %1619
  %1622 = fmul fast float %1564, %1390
  %1623 = fmul fast float %1564, %1391
  %1624 = fadd fast float %1622, %788
  %1625 = fadd fast float %1623, %789
  %1626 = call float @dx.op.binary.f32(i32 36, float %799, float %1392)  ; FMin(a,b)
  %1627 = fsub fast float %1626, %799
  %1628 = fmul fast float %1627, %1567
  %1629 = fadd fast float %1628, %799
  %1630 = fsub fast float %1389, %798
  %1631 = fmul fast float %1570, %1630
  %1632 = fadd fast float %1631, %798
  br label %1633

; <label>:1633                                    ; preds = %1621, %1619, %1587, %1572, %1550, %1088, %787
  %1634 = phi float [ %788, %1550 ], [ %788, %1088 ], [ %788, %787 ], [ %1577, %1572 ], [ %1590, %1587 ], [ %788, %1619 ], [ %1624, %1621 ]
  %1635 = phi float [ %789, %1550 ], [ %789, %1088 ], [ %789, %787 ], [ %1578, %1572 ], [ %1591, %1587 ], [ %789, %1619 ], [ %1625, %1621 ]
  %1636 = phi float [ %1551, %1550 ], [ %790, %1088 ], [ %790, %787 ], [ %1551, %1572 ], [ %1551, %1587 ], [ %1551, %1619 ], [ %1551, %1621 ]
  %1637 = phi float [ %1552, %1550 ], [ %791, %1088 ], [ %791, %787 ], [ %1552, %1572 ], [ %1552, %1587 ], [ %1552, %1619 ], [ %1552, %1621 ]
  %1638 = phi float [ %1553, %1550 ], [ %792, %1088 ], [ %792, %787 ], [ %1553, %1572 ], [ %1553, %1587 ], [ %1553, %1619 ], [ %1553, %1621 ]
  %1639 = phi float [ %1554, %1550 ], [ %793, %1088 ], [ %793, %787 ], [ %1554, %1572 ], [ %1554, %1587 ], [ %1554, %1619 ], [ %1554, %1621 ]
  %1640 = phi float [ %1555, %1550 ], [ %794, %1088 ], [ %794, %787 ], [ %1555, %1572 ], [ %1555, %1587 ], [ %1555, %1619 ], [ %1555, %1621 ]
  %1641 = phi float [ %1556, %1550 ], [ %795, %1088 ], [ %795, %787 ], [ %1556, %1572 ], [ %1556, %1587 ], [ %1556, %1619 ], [ %1556, %1621 ]
  %1642 = phi float [ %1557, %1550 ], [ %796, %1088 ], [ %796, %787 ], [ %1557, %1572 ], [ %1557, %1587 ], [ %1557, %1619 ], [ %1557, %1621 ]
  %1643 = phi float [ %798, %1550 ], [ %798, %1088 ], [ %798, %787 ], [ %1584, %1572 ], [ %1618, %1587 ], [ %798, %1619 ], [ %1632, %1621 ]
  %1644 = phi float [ %799, %1550 ], [ %799, %1088 ], [ %799, %787 ], [ %1581, %1572 ], [ %1595, %1587 ], [ %799, %1619 ], [ %1629, %1621 ]
  %1645 = phi float [ %1558, %1550 ], [ %800, %1088 ], [ %800, %787 ], [ %1558, %1572 ], [ %1558, %1587 ], [ %1558, %1619 ], [ %1558, %1621 ]
  %1646 = icmp ult i32 %318, 3
  %1647 = add i32 %44, 56
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = add i32 %44, 60
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = or i32 %1652, %1649
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %2478, label %1655

; <label>:1655                                    ; preds = %1633
  %1656 = add i32 %44, 252
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = lshr i32 %1658, 16
  %1660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1659)  ; LegacyF16ToF32(value)
  %1661 = fmul fast float %1660, 0x3F50624DE0000000
  %1662 = add i32 %44, 104
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = lshr i32 %1664, 16
  %1666 = and i32 %1665, 255
  %1667 = lshr i32 %1664, 24
  %1668 = add i32 %44, 260
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 65535
  %1672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1671)  ; LegacyF16ToF32(value)
  %1673 = lshr i32 %1670, 16
  %1674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1673)  ; LegacyF16ToF32(value)
  %1675 = add i32 %44, 64
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = lshr i32 %1677, 22
  %1679 = shl nuw nsw i32 %1678, 5
  %1680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1679)  ; LegacyF16ToF32(value)
  %1681 = shl i32 %1677, 4
  %1682 = and i32 %1681, 32752
  %1683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1682)  ; LegacyF16ToF32(value)
  %1684 = lshr i32 %1677, 7
  %1685 = and i32 %1684, 32752
  %1686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1685)  ; LegacyF16ToF32(value)
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 3
  %1689 = fmul fast float %1688, 1.000000e+03
  %1690 = fmul fast float %311, %1689
  %1691 = call float @dx.op.unary.f32(i32 22, float %1690)  ; Frc(value)
  %1692 = fadd fast float %1691, %301
  %1693 = fmul fast float %312, %1689
  %1694 = call float @dx.op.unary.f32(i32 22, float %1693)  ; Frc(value)
  %1695 = fadd fast float %1694, %303
  %1696 = fmul fast float %1661, %1689
  %1697 = call float @dx.op.unary.f32(i32 22, float %1696)  ; Frc(value)
  %1698 = fmul fast float %1697, 0x401921FB60000000
  %1699 = fadd fast float %1698, %1680
  %1700 = call float @dx.op.unary.f32(i32 13, float %1699)  ; Sin(value)
  %1701 = call float @dx.op.unary.f32(i32 12, float %1699)  ; Cos(value)
  %1702 = fsub fast float -0.000000e+00, %1700
  %1703 = fadd fast float %63, -5.000000e-01
  %1704 = fadd fast float %64, -5.000000e-01
  %1705 = fmul fast float %1672, %1703
  %1706 = fmul fast float %1674, %1704
  %1707 = fadd fast float %1705, 5.000000e-01
  %1708 = fadd fast float %1706, 5.000000e-01
  %1709 = fmul fast float %1683, %1707
  %1710 = fmul fast float %1686, %1708
  %1711 = fmul fast float %1701, %1709
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1702, float %1710, float %1711)  ; FMad(a,b,c)
  %1713 = fmul fast float %1700, %1709
  %1714 = call float @dx.op.tertiary.f32(i32 46, float %1701, float %1710, float %1713)  ; FMad(a,b,c)
  %1715 = fadd fast float %1692, %1712
  %1716 = fadd fast float %1695, %1714
  %1717 = icmp ugt i32 %1666, 1
  %1718 = icmp ugt i32 %1664, 33554431
  %1719 = or i1 %1718, %1717
  br i1 %1719, label %1720, label %1745

; <label>:1720                                    ; preds = %1655
  %1721 = add i32 %44, 212
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = lshr i32 %1723, 16
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = fmul fast float %1688, %1725
  %1727 = call float @dx.op.unary.f32(i32 22, float %1726)  ; Frc(value)
  %1728 = mul nuw nsw i32 %1666, %1667
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1727, %1729
  %1731 = call float @dx.op.unary.f32(i32 27, float %1730)  ; Round_ni(value)
  %1732 = fptoui float %1731 to i32
  %1733 = urem i32 %1732, %1666
  %1734 = udiv i32 %1732, %1667
  %1735 = call float @dx.op.unary.f32(i32 22, float %1715)  ; Frc(value)
  %1736 = call float @dx.op.unary.f32(i32 22, float %1716)  ; Frc(value)
  %1737 = uitofp i32 %1733 to float
  %1738 = uitofp i32 %1734 to float
  %1739 = fadd fast float %1735, %1737
  %1740 = fadd fast float %1736, %1738
  %1741 = uitofp i32 %1666 to float
  %1742 = uitofp i32 %1667 to float
  %1743 = fdiv fast float %1739, %1741
  %1744 = fdiv fast float %1740, %1742
  br label %1745

; <label>:1745                                    ; preds = %1720, %1655
  %1746 = phi float [ %1743, %1720 ], [ %1715, %1655 ]
  %1747 = phi float [ %1744, %1720 ], [ %1716, %1655 ]
  %1748 = and i32 %1649, 16777216
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %1859, label %1750

; <label>:1750                                    ; preds = %1745
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.CBufRet.f32 %1751, 2
  %1755 = fadd fast float %1752, %125
  %1756 = fadd fast float %1753, %126
  %1757 = fadd fast float %1754, %127
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = icmp eq i32 %43, 65535
  br i1 %1761, label %1856, label %1762

; <label>:1762                                    ; preds = %1750
  %1763 = lshr i32 %43, 1
  %1764 = shl i32 %1763, 2
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %43, 1
  %1768 = icmp ne i32 %1767, 0
  %1769 = lshr i32 %1766, 16
  %1770 = and i32 %1766, 65535
  %1771 = select i1 %1768, i32 %1769, i32 %1770
  %1772 = icmp eq i32 %1771, 65535
  br i1 %1772, label %1852, label %1773

; <label>:1773                                    ; preds = %1762
  %1774 = mul nuw nsw i32 %1771, 40
  %1775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = add nuw nsw i32 %1774, 12
  %1780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = add nuw nsw i32 %1774, 24
  %1785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = add nuw nsw i32 %1774, 36
  %1790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1792 = fsub fast float %1755, %1776
  %1793 = fsub fast float %1756, %1777
  %1794 = fsub fast float %1757, %1778
  %1795 = fmul fast float %1791, %1792
  %1796 = fmul fast float %1791, %1793
  %1797 = fmul fast float %1791, %1794
  %1798 = call float @dx.op.unary.f32(i32 27, float %1795)  ; Round_ni(value)
  %1799 = call float @dx.op.unary.f32(i32 27, float %1796)  ; Round_ni(value)
  %1800 = call float @dx.op.unary.f32(i32 27, float %1797)  ; Round_ni(value)
  %1801 = fadd fast float %1798, 5.000000e-01
  %1802 = fadd fast float %1799, 5.000000e-01
  %1803 = fadd fast float %1800, 5.000000e-01
  %1804 = fmul fast float %1801, %1781
  %1805 = fmul fast float %1802, %1782
  %1806 = fmul fast float %1803, %1783
  %1807 = shl i32 %43, 2
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %1809, 0
  %1811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1812 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1813 = call float @dx.op.unary.f32(i32 22, float %1805)  ; Frc(value)
  %1814 = call float @dx.op.unary.f32(i32 22, float %1806)  ; Frc(value)
  %1815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1811, %dx.types.Handle %40, float %1812, float %1813, float %1814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1819 = fmul fast float %1816, 1.023000e+03
  %1820 = fmul fast float %1817, 1.023000e+03
  %1821 = fmul fast float %1818, 1.023000e+03
  %1822 = fadd fast float %1819, 5.000000e-01
  %1823 = fadd fast float %1820, 5.000000e-01
  %1824 = fadd fast float %1821, 5.000000e-01
  %1825 = call float @dx.op.unary.f32(i32 27, float %1822)  ; Round_ni(value)
  %1826 = call float @dx.op.unary.f32(i32 27, float %1823)  ; Round_ni(value)
  %1827 = call float @dx.op.unary.f32(i32 27, float %1824)  ; Round_ni(value)
  %1828 = fsub fast float %1795, %1798
  %1829 = fsub fast float %1796, %1799
  %1830 = fsub fast float %1797, %1800
  %1831 = fmul fast float %1828, 7.500000e-01
  %1832 = fmul fast float %1829, 7.500000e-01
  %1833 = fmul fast float %1830, 7.500000e-01
  %1834 = fadd fast float %1798, 1.250000e-01
  %1835 = fadd fast float %1834, %1831
  %1836 = fadd fast float %1835, %1825
  %1837 = fadd fast float %1799, 1.250000e-01
  %1838 = fadd fast float %1837, %1832
  %1839 = fadd fast float %1838, %1826
  %1840 = fadd fast float %1800, 1.250000e-01
  %1841 = fadd fast float %1840, %1833
  %1842 = fadd fast float %1841, %1827
  %1843 = fmul fast float %1836, %1786
  %1844 = fmul fast float %1839, %1787
  %1845 = fmul fast float %1842, %1788
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = add i32 %1847, 0
  %1849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1849, %dx.types.Handle %38, float %1843, float %1844, float %1845, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  br label %1852

; <label>:1852                                    ; preds = %1773, %1762
  %1853 = phi float [ %1851, %1773 ], [ -1.000000e+00, %1762 ]
  %1854 = fadd fast float %1853, %1760
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  br label %1856

; <label>:1856                                    ; preds = %1852, %1750
  %1857 = phi float [ %1855, %1852 ], [ %1760, %1750 ]
  %1858 = fmul fast float %1857, %70
  br label %1859

; <label>:1859                                    ; preds = %1856, %1745
  %1860 = phi float [ %1858, %1856 ], [ %70, %1745 ]
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 256
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1911, label %1865

; <label>:1865                                    ; preds = %1859
  %1866 = add i32 %44, 368
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = add i32 %1868, 0
  %1870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1870, %dx.types.Handle %75, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = add i32 %44, 116
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = shl i32 %1875, 4
  %1877 = and i32 %1876, 32752
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = lshr i32 %1875, 7
  %1880 = and i32 %1879, 32752
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = fsub fast float 1.000000e+00, %1860
  %1883 = call float @dx.op.binary.f32(i32 35, float %1882, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1884 = bitcast float %1860 to i32
  %1885 = sitofp i32 %1884 to float
  %1886 = fadd fast float %1885, 0xC1CFBF8940000000
  %1887 = fmul fast float %1881, %1886
  %1888 = fadd fast float %1887, 0x41CFBF8940000000
  %1889 = fptosi float %1888 to i32
  %1890 = bitcast i32 %1889 to float
  %1891 = bitcast float %1883 to i32
  %1892 = sitofp i32 %1891 to float
  %1893 = fadd fast float %1892, 0xC1CFBF8940000000
  %1894 = fmul fast float %1893, %1881
  %1895 = fadd fast float %1894, 0x41CFBF8940000000
  %1896 = fptosi float %1895 to i32
  %1897 = bitcast i32 %1896 to float
  %1898 = fmul fast float %1890, %1878
  %1899 = fmul fast float %1897, %1878
  %1900 = fsub fast float %1883, %1898
  %1901 = fadd fast float %1899, %1883
  %1902 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1903 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1904 = fsub fast float %1872, %1902
  %1905 = fsub fast float %1903, %1902
  %1906 = bitcast float %1905 to i32
  %1907 = sub nsw i32 2129859010, %1906
  %1908 = bitcast i32 %1907 to float
  %1909 = fmul fast float %1908, %1904
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  br label %1911

; <label>:1911                                    ; preds = %1865, %1859
  %1912 = phi float [ %1910, %1865 ], [ %1860, %1859 ]
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 128
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %1933, label %1917

; <label>:1917                                    ; preds = %1911
  %1918 = add i32 %44, 356
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = add i32 %1920, 0
  %1922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1923 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1922, %dx.types.Handle %75, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 524288
  %1928 = icmp ne i32 %1927, 0
  %1929 = fcmp fast ogt float %1924, 0x3FE0101020000000
  %1930 = select i1 %1929, float 1.000000e+00, float 0.000000e+00
  %1931 = select i1 %1928, float %1930, float %1924
  %1932 = fmul fast float %1931, %1912
  br label %1933

; <label>:1933                                    ; preds = %1917, %1911
  %1934 = phi float [ %1932, %1917 ], [ %1912, %1911 ]
  %1935 = fcmp fast ult float %1934, 0x3F70101020000000
  br i1 %1935, label %2478, label %1936

; <label>:1936                                    ; preds = %1933
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = and i32 %1938, 16
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %2139, label %1941

; <label>:1941                                    ; preds = %1936
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = add i32 %44, 320
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = add i32 %1946, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1948, %dx.types.Handle %74, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.ResRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.ResRet.f32 %1949, 2
  %1953 = extractvalue %dx.types.ResRet.f32 %1949, 3
  %1954 = and i32 %1943, 255
  %1955 = uitofp i32 %1954 to float
  %1956 = lshr i32 %1943, 8
  %1957 = and i32 %1956, 255
  %1958 = uitofp i32 %1957 to float
  %1959 = fmul fast float %1953, %1955
  %1960 = fadd fast float %1959, %1958
  %1961 = fmul fast float %1960, 0x3F70101000000000
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = and i32 %1963, 512
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %1974, label %1966

; <label>:1966                                    ; preds = %1941
  %1967 = add i32 %44, 380
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %1969, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1971, %dx.types.Handle %75, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  br label %1974

; <label>:1974                                    ; preds = %1966, %1941
  %1975 = phi float [ %1973, %1966 ], [ 1.000000e+00, %1941 ]
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 33554432
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2086, label %1980

; <label>:1980                                    ; preds = %1974
  %1981 = add i32 %44, 208
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 65535
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = lshr i32 %1983, 16
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = add i32 %44, 212
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = and i32 %1990, 65535
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = lshr i32 %1994, 24
  %1996 = uitofp i32 %1995 to float
  %1997 = fmul fast float %1996, 0x3F70101020000000
  %1998 = and i32 %1994, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = fmul fast float %1999, 0x3F70101020000000
  %2001 = lshr i32 %1994, 8
  %2002 = and i32 %2001, 255
  %2003 = uitofp i32 %2002 to float
  %2004 = fmul fast float %2003, 0x3F70101020000000
  %2005 = lshr i32 %1994, 16
  %2006 = and i32 %2005, 255
  %2007 = uitofp i32 %2006 to float
  %2008 = fmul fast float %2007, 0x3F70101020000000
  %2009 = add i32 %44, 204
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = lshr i32 %2011, 24
  %2013 = uitofp i32 %2012 to float
  %2014 = fmul fast float %2013, 0x3F70101020000000
  %2015 = and i32 %2011, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F70101020000000
  %2018 = lshr i32 %2011, 8
  %2019 = and i32 %2018, 255
  %2020 = uitofp i32 %2019 to float
  %2021 = fmul fast float %2020, 0x3F70101020000000
  %2022 = lshr i32 %2011, 16
  %2023 = and i32 %2022, 255
  %2024 = uitofp i32 %2023 to float
  %2025 = fmul fast float %2024, 0x3F70101020000000
  %2026 = bitcast float %1950 to i32
  %2027 = ashr i32 %2026, 1
  %2028 = sub nsw i32 1597463174, %2027
  %2029 = bitcast i32 %2028 to float
  %2030 = fmul fast float %1950, 5.000000e-01
  %2031 = fmul fast float %2029, %2029
  %2032 = fmul fast float %2031, %2030
  %2033 = fsub fast float 1.500000e+00, %2032
  %2034 = fmul fast float %2029, %1950
  %2035 = fmul fast float %2034, %2033
  %2036 = bitcast float %1951 to i32
  %2037 = ashr i32 %2036, 1
  %2038 = sub nsw i32 1597463174, %2037
  %2039 = bitcast i32 %2038 to float
  %2040 = fmul fast float %1951, 5.000000e-01
  %2041 = fmul fast float %2039, %2039
  %2042 = fmul fast float %2041, %2040
  %2043 = fsub fast float 1.500000e+00, %2042
  %2044 = fmul fast float %2039, %1951
  %2045 = fmul fast float %2044, %2043
  %2046 = bitcast float %1952 to i32
  %2047 = ashr i32 %2046, 1
  %2048 = sub nsw i32 1597463174, %2047
  %2049 = bitcast i32 %2048 to float
  %2050 = fmul fast float %1952, 5.000000e-01
  %2051 = fmul fast float %2049, %2049
  %2052 = fmul fast float %2051, %2050
  %2053 = fsub fast float 1.500000e+00, %2052
  %2054 = fmul fast float %2049, %1952
  %2055 = fmul fast float %2054, %2053
  %2056 = fsub fast float %2035, %2017
  %2057 = fsub fast float %2045, %2021
  %2058 = fsub fast float %2055, %2025
  %2059 = fmul fast float %2056, %1985
  %2060 = fmul fast float %2057, %1987
  %2061 = fmul fast float %2058, %1992
  %2062 = fadd fast float %2059, %2000
  %2063 = fadd fast float %2060, %2004
  %2064 = fadd fast float %2061, %2008
  %2065 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2066 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2067 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2068 = fmul fast float %2065, %2065
  %2069 = fmul fast float %2066, %2066
  %2070 = fmul fast float %2067, %2067
  %2071 = fsub fast float %2068, %1950
  %2072 = fsub fast float %2069, %1951
  %2073 = fsub fast float %2070, %1952
  %2074 = fmul fast float %2071, %1975
  %2075 = fmul fast float %2072, %1975
  %2076 = fmul fast float %2073, %1975
  %2077 = fadd fast float %2074, %1950
  %2078 = fadd fast float %2075, %1951
  %2079 = fadd fast float %2076, %1952
  %2080 = fadd fast float %1997, %1961
  %2081 = fsub fast float %2080, %2014
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fsub fast float %2082, %1961
  %2084 = fmul fast float %2083, %1975
  %2085 = fadd fast float %2084, %1961
  br label %2139

; <label>:2086                                    ; preds = %1974
  %2087 = and i32 %1977, 134217728
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2123, label %2089

; <label>:2089                                    ; preds = %2086
  %2090 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2091 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %2092 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %2093 = fadd fast float %2090, -5.000000e-01
  %2094 = fadd fast float %2091, -5.000000e-01
  %2095 = fadd fast float %2092, -5.000000e-01
  %2096 = fmul fast float %2093, %1975
  %2097 = fmul fast float %2094, %1975
  %2098 = fmul fast float %2095, %1975
  %2099 = fadd fast float %2096, 5.000000e-01
  %2100 = fadd fast float %2097, 5.000000e-01
  %2101 = fadd fast float %2098, 5.000000e-01
  %2102 = call float @dx.op.unary.f32(i32 24, float %1950)  ; Sqrt(value)
  %2103 = call float @dx.op.unary.f32(i32 24, float %1951)  ; Sqrt(value)
  %2104 = call float @dx.op.unary.f32(i32 24, float %1952)  ; Sqrt(value)
  %2105 = fmul fast float %2099, 2.000000e+00
  %2106 = fsub fast float 1.000000e+00, %2105
  %2107 = fmul fast float %2106, %2102
  %2108 = fadd fast float %2107, %2105
  %2109 = fmul fast float %2108, %2102
  %2110 = fmul fast float %2100, 2.000000e+00
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = fmul fast float %2111, %2103
  %2113 = fadd fast float %2112, %2110
  %2114 = fmul fast float %2113, %2103
  %2115 = fmul fast float %2101, 2.000000e+00
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = fmul fast float %2116, %2104
  %2118 = fadd fast float %2117, %2115
  %2119 = fmul fast float %2118, %2104
  %2120 = fmul fast float %2109, %2109
  %2121 = fmul fast float %2114, %2114
  %2122 = fmul fast float %2119, %2119
  br label %2139

; <label>:2123                                    ; preds = %2086
  %2124 = fmul fast float %288, %288
  %2125 = fmul fast float %292, %292
  %2126 = fmul fast float %296, %296
  %2127 = fadd fast float %2124, -1.000000e+00
  %2128 = fadd fast float %2125, -1.000000e+00
  %2129 = fadd fast float %2126, -1.000000e+00
  %2130 = fmul fast float %1975, %2127
  %2131 = fmul fast float %1975, %2128
  %2132 = fmul fast float %1975, %2129
  %2133 = fadd fast float %2130, 1.000000e+00
  %2134 = fadd fast float %2131, 1.000000e+00
  %2135 = fadd fast float %2132, 1.000000e+00
  %2136 = fmul fast float %2133, %1950
  %2137 = fmul fast float %2134, %1951
  %2138 = fmul fast float %2135, %1952
  br label %2139

; <label>:2139                                    ; preds = %2123, %2089, %1980, %1936
  %2140 = phi float [ %2085, %1980 ], [ %1961, %2089 ], [ %1961, %2123 ], [ 0x3FA23C0BE0000000, %1936 ]
  %2141 = phi float [ %2077, %1980 ], [ %2120, %2089 ], [ %2136, %2123 ], [ 1.000000e+00, %1936 ]
  %2142 = phi float [ %2078, %1980 ], [ %2121, %2089 ], [ %2137, %2123 ], [ 1.000000e+00, %1936 ]
  %2143 = phi float [ %2079, %1980 ], [ %2122, %2089 ], [ %2138, %2123 ], [ 1.000000e+00, %1936 ]
  %2144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.i32 %2144, 1
  %2146 = and i32 %2145, 1
  %2147 = icmp ne i32 %2146, 0
  %2148 = add i32 %44, 308
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = and i32 %2150, 32
  %2152 = icmp ne i32 %2151, 0
  %2153 = and i1 %2147, %2152
  %2154 = select i1 %2153, float 1.000000e+00, float %2141
  %2155 = select i1 %2153, float 0x3FD3333340000000, float %2142
  %2156 = select i1 %2153, float 0x3FD3333340000000, float %2143
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 32
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2233, label %2161

; <label>:2161                                    ; preds = %2139
  %2162 = add i32 %44, 108
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %44, 332
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = add i32 %2167, 0
  %2169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2169, %dx.types.Handle %74, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = extractvalue %dx.types.ResRet.f32 %2170, 3
  %2175 = and i32 %2164, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = lshr i32 %2164, 8
  %2178 = and i32 %2177, 255
  %2179 = uitofp i32 %2178 to float
  %2180 = lshr i32 %2164, 16
  %2181 = and i32 %2180, 255
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101000000000
  %2184 = fmul fast float %2171, %2176
  %2185 = fadd fast float %2184, %2179
  %2186 = fmul fast float %2185, 0x3F70101000000000
  %2187 = fadd fast float %2172, -5.000000e-01
  %2188 = fadd fast float %2174, -5.000000e-01
  %2189 = fmul fast float %2187, %2183
  %2190 = fmul fast float %2188, %2183
  %2191 = fadd fast float %2189, 5.000000e-01
  %2192 = fadd fast float %2190, 5.000000e-01
  %2193 = fmul fast float %2191, 2.000000e+00
  %2194 = fadd fast float %2193, -1.000000e+00
  %2195 = fmul fast float %2192, 2.000000e+00
  %2196 = fadd fast float %2195, -1.000000e+00
  %2197 = fadd fast float %2194, %2196
  %2198 = fmul fast float %2197, 5.000000e-01
  %2199 = fsub fast float %2194, %2196
  %2200 = fmul fast float %2199, 5.000000e-01
  %2201 = call float @dx.op.unary.f32(i32 6, float %2198)  ; FAbs(value)
  %2202 = fsub fast float 1.000000e+00, %2201
  %2203 = call float @dx.op.unary.f32(i32 6, float %2200)  ; FAbs(value)
  %2204 = fsub fast float %2202, %2203
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2198, float %2200, float %2204, float %2198, float %2200, float %2204)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = call float @dx.op.unary.f32(i32 25, float %2205)  ; Rsqrt(value)
  %2207 = fmul fast float %2198, %2206
  %2208 = fmul fast float %2200, %2206
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 67108864
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2229, label %2213

; <label>:2213                                    ; preds = %2161
  %2214 = add i32 %44, 248
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 65535
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 65535
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = lshr i32 %2216, 16
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = fsub fast float %2186, %2224
  %2226 = fmul fast float %2225, %2218
  %2227 = fadd fast float %2226, %2222
  %2228 = call float @dx.op.unary.f32(i32 7, float %2227)  ; Saturate(value)
  br label %2229

; <label>:2229                                    ; preds = %2213, %2161
  %2230 = phi float [ %2228, %2213 ], [ %2186, %2161 ]
  %2231 = call float @dx.op.dot2.f32(i32 54, float %2207, float %2208, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %2232 = call float @dx.op.dot2.f32(i32 54, float %2207, float %2208, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %2233

; <label>:2233                                    ; preds = %2229, %2139
  %2234 = phi float [ %2230, %2229 ], [ 0x3FD6666660000000, %2139 ]
  %2235 = phi float [ %2231, %2229 ], [ 0.000000e+00, %2139 ]
  %2236 = phi float [ %2232, %2229 ], [ 0.000000e+00, %2139 ]
  %2237 = phi float [ %2173, %2229 ], [ 1.000000e+00, %2139 ]
  %2238 = add i32 %44, 160
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = lshr i32 %2240, 22
  %2242 = shl nuw nsw i32 %2241, 5
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 64
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2281, label %2248

; <label>:2248                                    ; preds = %2233
  %2249 = add i32 %44, 344
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = add i32 %2251, 0
  %2253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 131072
  %2257 = icmp eq i32 %2256, 0
  %2258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2253, %dx.types.Handle %74, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.ResRet.f32 %2258, 2
  %2262 = fmul fast float %2259, %276
  %2263 = fmul fast float %2260, %279
  %2264 = fmul fast float %2261, %282
  br i1 %2257, label %2271, label %2265

; <label>:2265                                    ; preds = %2248
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 0
  %2268 = fmul fast float %2267, %2262
  %2269 = fmul fast float %2267, %2263
  %2270 = fmul fast float %2267, %2264
  br label %2271

; <label>:2271                                    ; preds = %2265, %2248
  %2272 = phi float [ %2268, %2265 ], [ %2262, %2248 ]
  %2273 = phi float [ %2269, %2265 ], [ %2263, %2248 ]
  %2274 = phi float [ %2270, %2265 ], [ %2264, %2248 ]
  %2275 = fmul fast float %2272, %2243
  %2276 = select i1 %196, float %2275, float %2272
  %2277 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2273, float %2274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2278 = select i1 %196, float 0.000000e+00, float %2272
  %2279 = select i1 %196, float %2277, float %2273
  %2280 = select i1 %196, float 0.000000e+00, float %2274
  br label %2281

; <label>:2281                                    ; preds = %2271, %2233
  %2282 = phi float [ %2278, %2271 ], [ 0.000000e+00, %2233 ]
  %2283 = phi float [ %2279, %2271 ], [ 0.000000e+00, %2233 ]
  %2284 = phi float [ %2280, %2271 ], [ 0.000000e+00, %2233 ]
  %2285 = add i32 %44, 112
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = and i32 %2287, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = lshr i32 %2287, 8
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2155, float %2156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2294 = fmul fast float %2292, %2293
  %2295 = fadd fast float %2294, %2289
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  br i1 %1646, label %2298, label %2306

; <label>:2298                                    ; preds = %2281
  %2299 = fsub fast float 1.000000e+00, %1934
  %2300 = fmul fast float %2299, %1636
  %2301 = fmul fast float %2299, %1637
  %2302 = fmul fast float %2299, %1638
  %2303 = fmul fast float %2299, %1639
  %2304 = fmul fast float %2299, %1640
  %2305 = fmul fast float %2299, %1641
  br label %2306

; <label>:2306                                    ; preds = %2298, %2281
  %2307 = phi float [ %2300, %2298 ], [ %1636, %2281 ]
  %2308 = phi float [ %2301, %2298 ], [ %1637, %2281 ]
  %2309 = phi float [ %2302, %2298 ], [ %1638, %2281 ]
  %2310 = phi float [ %2303, %2298 ], [ %1639, %2281 ]
  %2311 = phi float [ %2304, %2298 ], [ %1640, %2281 ]
  %2312 = phi float [ %2305, %2298 ], [ %1641, %2281 ]
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 3
  %2316 = icmp eq i32 %2315, 3
  br i1 %2316, label %2395, label %2317

; <label>:2317                                    ; preds = %2306
  %2318 = and i32 %2314, 16
  %2319 = icmp ne i32 %2318, 0
  %2320 = select i1 %2319, float %1934, float 0.000000e+00
  %2321 = icmp eq i32 %2315, 0
  br i1 %2321, label %2322, label %2350

; <label>:2322                                    ; preds = %2317
  %2323 = and i32 %2314, 64
  %2324 = icmp ne i32 %2323, 0
  %2325 = select i1 %2324, float %1934, float 0.000000e+00
  %2326 = fsub fast float %2154, %2307
  %2327 = fsub fast float %2155, %2308
  %2328 = fsub fast float %2156, %2309
  %2329 = fmul fast float %2320, %2326
  %2330 = fmul fast float %2320, %2327
  %2331 = fmul fast float %2320, %2328
  %2332 = fadd fast float %2329, %2307
  %2333 = fadd fast float %2330, %2308
  %2334 = fadd fast float %2331, %2309
  %2335 = fsub fast float %2140, %1642
  %2336 = fmul fast float %2320, %2335
  %2337 = fadd fast float %2336, %1642
  %2338 = fsub fast float %2282, %2310
  %2339 = fsub fast float %2283, %2311
  %2340 = fsub fast float %2284, %2312
  %2341 = fmul fast float %2325, %2338
  %2342 = fmul fast float %2325, %2339
  %2343 = fmul fast float %2325, %2340
  %2344 = fadd fast float %2341, %2310
  %2345 = fadd fast float %2342, %2311
  %2346 = fadd fast float %2343, %2312
  %2347 = fsub fast float %2297, %1645
  %2348 = fmul fast float %2320, %2347
  %2349 = fadd fast float %2348, %1645
  br label %2395

; <label>:2350                                    ; preds = %2317
  %2351 = icmp eq i32 %2315, 1
  br i1 %2351, label %2352, label %2365

; <label>:2352                                    ; preds = %2350
  %2353 = fadd fast float %2154, -1.000000e+00
  %2354 = fadd fast float %2155, -1.000000e+00
  %2355 = fadd fast float %2156, -1.000000e+00
  %2356 = fmul fast float %2320, %2353
  %2357 = fmul fast float %2320, %2354
  %2358 = fmul fast float %2320, %2355
  %2359 = fadd fast float %2356, 1.000000e+00
  %2360 = fadd fast float %2357, 1.000000e+00
  %2361 = fadd fast float %2358, 1.000000e+00
  %2362 = fmul fast float %2359, %2307
  %2363 = fmul fast float %2360, %2308
  %2364 = fmul fast float %2361, %2309
  br label %2395

; <label>:2365                                    ; preds = %2350
  %2366 = icmp eq i32 %2315, 2
  br i1 %2366, label %2367, label %2395

; <label>:2367                                    ; preds = %2365
  %2368 = call float @dx.op.unary.f32(i32 24, float %2154)  ; Sqrt(value)
  %2369 = call float @dx.op.unary.f32(i32 24, float %2155)  ; Sqrt(value)
  %2370 = call float @dx.op.unary.f32(i32 24, float %2156)  ; Sqrt(value)
  %2371 = fadd fast float %2368, -5.000000e-01
  %2372 = fadd fast float %2369, -5.000000e-01
  %2373 = fadd fast float %2370, -5.000000e-01
  %2374 = fmul fast float %2371, %2320
  %2375 = fmul fast float %2372, %2320
  %2376 = fmul fast float %2373, %2320
  %2377 = fadd fast float %2374, 5.000000e-01
  %2378 = fadd fast float %2375, 5.000000e-01
  %2379 = fadd fast float %2376, 5.000000e-01
  %2380 = fmul fast float %2377, 2.000000e+00
  %2381 = fsub fast float 1.000000e+00, %2380
  %2382 = fmul fast float %2381, %2307
  %2383 = fadd fast float %2382, %2380
  %2384 = fmul fast float %2383, %2307
  %2385 = fmul fast float %2378, 2.000000e+00
  %2386 = fsub fast float 1.000000e+00, %2385
  %2387 = fmul fast float %2386, %2308
  %2388 = fadd fast float %2387, %2385
  %2389 = fmul fast float %2388, %2308
  %2390 = fmul fast float %2379, 2.000000e+00
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %2391, %2309
  %2393 = fadd fast float %2392, %2390
  %2394 = fmul fast float %2393, %2309
  br label %2395

; <label>:2395                                    ; preds = %2367, %2365, %2352, %2322, %2306
  %2396 = phi float [ %2307, %2306 ], [ %2384, %2367 ], [ %2307, %2365 ], [ %2362, %2352 ], [ %2332, %2322 ]
  %2397 = phi float [ %2308, %2306 ], [ %2389, %2367 ], [ %2308, %2365 ], [ %2363, %2352 ], [ %2333, %2322 ]
  %2398 = phi float [ %2309, %2306 ], [ %2394, %2367 ], [ %2309, %2365 ], [ %2364, %2352 ], [ %2334, %2322 ]
  %2399 = phi float [ %2310, %2306 ], [ %2310, %2367 ], [ %2310, %2365 ], [ %2310, %2352 ], [ %2344, %2322 ]
  %2400 = phi float [ %2311, %2306 ], [ %2311, %2367 ], [ %2311, %2365 ], [ %2311, %2352 ], [ %2345, %2322 ]
  %2401 = phi float [ %2312, %2306 ], [ %2312, %2367 ], [ %2312, %2365 ], [ %2312, %2352 ], [ %2346, %2322 ]
  %2402 = phi float [ %1642, %2306 ], [ %1642, %2367 ], [ %1642, %2365 ], [ %1642, %2352 ], [ %2337, %2322 ]
  %2403 = phi float [ %1645, %2306 ], [ %1645, %2367 ], [ %1645, %2365 ], [ %1645, %2352 ], [ %2349, %2322 ]
  %2404 = and i32 %2314, 12
  %2405 = icmp eq i32 %2404, 12
  br i1 %2405, label %2478, label %2406

; <label>:2406                                    ; preds = %2395
  %2407 = and i32 %2314, 2097184
  %2408 = icmp eq i32 %2407, 2097184
  %2409 = select i1 %2408, float %1934, float 0.000000e+00
  %2410 = and i32 %2314, 4194336
  %2411 = icmp eq i32 %2410, 4194336
  %2412 = select i1 %2411, float %1934, float 0.000000e+00
  %2413 = and i32 %2314, 8388640
  %2414 = icmp eq i32 %2413, 8388640
  %2415 = select i1 %2414, float %1934, float 0.000000e+00
  %2416 = icmp eq i32 %2404, 0
  br i1 %2416, label %2417, label %2430

; <label>:2417                                    ; preds = %2406
  %2418 = fsub fast float %2235, %1634
  %2419 = fsub fast float %2236, %1635
  %2420 = fmul fast float %2409, %2418
  %2421 = fmul fast float %2409, %2419
  %2422 = fadd fast float %2420, %1634
  %2423 = fadd fast float %2421, %1635
  %2424 = fsub fast float %2237, %1644
  %2425 = fmul fast float %2412, %2424
  %2426 = fadd fast float %2425, %1644
  %2427 = fsub fast float %2234, %1643
  %2428 = fmul fast float %2415, %2427
  %2429 = fadd fast float %2428, %1643
  br label %2478

; <label>:2430                                    ; preds = %2406
  %2431 = icmp eq i32 %2404, 4
  br i1 %2431, label %2432, label %2464

; <label>:2432                                    ; preds = %2430
  %2433 = fmul fast float %2409, %2235
  %2434 = fmul fast float %2409, %2236
  %2435 = fadd fast float %2433, %1634
  %2436 = fadd fast float %2434, %1635
  %2437 = call float @dx.op.binary.f32(i32 36, float %1644, float %2237)  ; FMin(a,b)
  %2438 = fsub fast float %2437, %1644
  %2439 = fmul fast float %2438, %2412
  %2440 = fadd fast float %2439, %1644
  %2441 = fadd fast float %2234, %1643
  %2442 = fmul fast float %2441, 0x3FF337FAE0000000
  %2443 = fmul fast float %1643, %1643
  %2444 = fmul fast float %2234, %2234
  %2445 = fadd fast float %2444, %2443
  %2446 = fmul fast float %2445, 0x3FE5152B00000000
  %2447 = fmul fast float %1643, 0xBFCC1F85E0000000
  %2448 = fmul fast float %2447, %2234
  %2449 = fadd fast float %2448, 0xBFE1363700000000
  %2450 = fadd fast float %2449, %2442
  %2451 = fsub fast float %2450, %2446
  %2452 = fmul fast float %2441, 0x3FBA6F0D00000000
  %2453 = fmul fast float %2445, 0x3FD0432880000000
  %2454 = fmul fast float %1643, 0xBFEF110800000000
  %2455 = fmul fast float %2454, %2234
  %2456 = fadd fast float %2455, 1.000000e+00
  %2457 = fsub fast float %2456, %2452
  %2458 = fadd fast float %2457, %2453
  %2459 = fdiv fast float %2451, %2458
  %2460 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2461 = fsub fast float %2460, %1643
  %2462 = fmul fast float %2461, %2415
  %2463 = fadd fast float %2462, %1643
  br label %2478

; <label>:2464                                    ; preds = %2430
  %2465 = icmp eq i32 %2404, 8
  br i1 %2465, label %2466, label %2478

; <label>:2466                                    ; preds = %2464
  %2467 = fmul fast float %2409, %2235
  %2468 = fmul fast float %2409, %2236
  %2469 = fadd fast float %2467, %1634
  %2470 = fadd fast float %2468, %1635
  %2471 = call float @dx.op.binary.f32(i32 36, float %1644, float %2237)  ; FMin(a,b)
  %2472 = fsub fast float %2471, %1644
  %2473 = fmul fast float %2472, %2412
  %2474 = fadd fast float %2473, %1644
  %2475 = fsub fast float %2234, %1643
  %2476 = fmul fast float %2415, %2475
  %2477 = fadd fast float %2476, %1643
  br label %2478

; <label>:2478                                    ; preds = %2466, %2464, %2432, %2417, %2395, %1933, %1633
  %2479 = phi float [ %1634, %2395 ], [ %1634, %1933 ], [ %1634, %1633 ], [ %2422, %2417 ], [ %2435, %2432 ], [ %1634, %2464 ], [ %2469, %2466 ]
  %2480 = phi float [ %1635, %2395 ], [ %1635, %1933 ], [ %1635, %1633 ], [ %2423, %2417 ], [ %2436, %2432 ], [ %1635, %2464 ], [ %2470, %2466 ]
  %2481 = phi float [ %2396, %2395 ], [ %1636, %1933 ], [ %1636, %1633 ], [ %2396, %2417 ], [ %2396, %2432 ], [ %2396, %2464 ], [ %2396, %2466 ]
  %2482 = phi float [ %2397, %2395 ], [ %1637, %1933 ], [ %1637, %1633 ], [ %2397, %2417 ], [ %2397, %2432 ], [ %2397, %2464 ], [ %2397, %2466 ]
  %2483 = phi float [ %2398, %2395 ], [ %1638, %1933 ], [ %1638, %1633 ], [ %2398, %2417 ], [ %2398, %2432 ], [ %2398, %2464 ], [ %2398, %2466 ]
  %2484 = phi float [ %2399, %2395 ], [ %1639, %1933 ], [ %1639, %1633 ], [ %2399, %2417 ], [ %2399, %2432 ], [ %2399, %2464 ], [ %2399, %2466 ]
  %2485 = phi float [ %2400, %2395 ], [ %1640, %1933 ], [ %1640, %1633 ], [ %2400, %2417 ], [ %2400, %2432 ], [ %2400, %2464 ], [ %2400, %2466 ]
  %2486 = phi float [ %2401, %2395 ], [ %1641, %1933 ], [ %1641, %1633 ], [ %2401, %2417 ], [ %2401, %2432 ], [ %2401, %2464 ], [ %2401, %2466 ]
  %2487 = phi float [ %2402, %2395 ], [ %1642, %1933 ], [ %1642, %1633 ], [ %2402, %2417 ], [ %2402, %2432 ], [ %2402, %2464 ], [ %2402, %2466 ]
  %2488 = phi float [ %1643, %2395 ], [ %1643, %1933 ], [ %1643, %1633 ], [ %2429, %2417 ], [ %2463, %2432 ], [ %1643, %2464 ], [ %2477, %2466 ]
  %2489 = phi float [ %1644, %2395 ], [ %1644, %1933 ], [ %1644, %1633 ], [ %2426, %2417 ], [ %2440, %2432 ], [ %1644, %2464 ], [ %2474, %2466 ]
  %2490 = phi float [ %2403, %2395 ], [ %1645, %1933 ], [ %1645, %1633 ], [ %2403, %2417 ], [ %2403, %2432 ], [ %2403, %2464 ], [ %2403, %2466 ]
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 0
  %2493 = call float @dx.op.dot2.f32(i32 54, float %2479, float %2480, float %2479, float %2480)  ; Dot2(ax,ay,bx,by)
  %2494 = fmul fast float %2493, 0x3FE3333340000000
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = call float @dx.op.dot3.f32(i32 55, float %2479, float %2480, float %2495, float %2479, float %2480, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2497 = call float @dx.op.unary.f32(i32 25, float %2496)  ; Rsqrt(value)
  %2498 = fmul fast float %2497, %2479
  %2499 = fmul fast float %2497, %2480
  %2500 = fmul fast float %2495, %2497
  %2501 = fmul fast float %2500, %57
  %2502 = fmul fast float %2500, %58
  %2503 = fmul fast float %2500, %59
  %2504 = fmul fast float %2498, %53
  %2505 = fmul fast float %2498, %54
  %2506 = fmul fast float %2498, %55
  %2507 = fadd fast float %2501, %2504
  %2508 = fadd fast float %2502, %2505
  %2509 = fadd fast float %2503, %2506
  %2510 = fmul fast float %2499, %89
  %2511 = fmul fast float %2499, %90
  %2512 = fmul fast float %2499, %91
  %2513 = fadd fast float %2507, %2510
  %2514 = fadd fast float %2508, %2511
  %2515 = fadd fast float %2509, %2512
  %2516 = call float @dx.op.dot3.f32(i32 55, float %2513, float %2514, float %2515, float %2513, float %2514, float %2515)  ; Dot3(ax,ay,az,bx,by,bz)
  %2517 = call float @dx.op.unary.f32(i32 25, float %2516)  ; Rsqrt(value)
  %2518 = fmul fast float %2513, %2517
  %2519 = fmul fast float %2514, %2517
  %2520 = fmul fast float %2515, %2517
  %2521 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %2522 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %2523 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %2524 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %2525 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %2526 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %2527 = fadd fast float %2521, %125
  %2528 = fadd fast float %2522, %126
  %2529 = fadd fast float %2523, %127
  %2530 = fadd fast float %2524, %125
  %2531 = fadd fast float %2525, %126
  %2532 = fadd fast float %2526, %127
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.CBufRet.f32 %2533, 1
  %2536 = extractvalue %dx.types.CBufRet.f32 %2533, 2
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 2
  %2539 = extractvalue %dx.types.CBufRet.f32 %2537, 3
  %2540 = fmul fast float %2534, %78
  %2541 = fmul fast float %2540, %2538
  %2542 = fmul fast float %2535, %79
  %2543 = fmul fast float %2542, %2539
  %2544 = fptoui float %2541 to i32
  %2545 = fptoui float %2543 to i32
  %2546 = fadd fast float %2534, -1.000000e+00
  %2547 = fadd fast float %2535, -1.000000e+00
  %2548 = fptoui float %2546 to i32
  %2549 = fptoui float %2547 to i32
  %2550 = call i32 @dx.op.binary.i32(i32 40, i32 %2544, i32 %2548)  ; UMin(a,b)
  %2551 = call i32 @dx.op.binary.i32(i32 40, i32 %2545, i32 %2549)  ; UMin(a,b)
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2555 = fmul fast float %2553, %73
  %2556 = fsub fast float %2555, %2554
  %2557 = fadd fast float %2536, -1.000000e+00
  %2558 = call float @dx.op.binary.f32(i32 36, float %2556, float %2557)  ; FMin(a,b)
  %2559 = fptoui float %2558 to i32
  %2560 = fptoui float %2534 to i32
  %2561 = fptoui float %2535 to i32
  %2562 = mul i32 %2559, %2561
  %2563 = add i32 %2562, %2551
  %2564 = mul i32 %2563, %2560
  %2565 = add i32 %2564, %2550
  %2566 = shl i32 %2565, 2
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 1023
  %2570 = lshr i32 %2568, 10
  %2571 = icmp eq i32 %2569, 0
  br i1 %2571, label %3000, label %2572

; <label>:2572                                    ; preds = %2478
  %2573 = and i32 %2568, 1023
  br label %2574

; <label>:2574                                    ; preds = %2701, %2572
  %2575 = phi float [ %2702, %2701 ], [ 0.000000e+00, %2572 ]
  %2576 = phi float [ %2703, %2701 ], [ %797, %2572 ]
  %2577 = phi float [ %2704, %2701 ], [ %2492, %2572 ]
  %2578 = phi float [ %2705, %2701 ], [ %2490, %2572 ]
  %2579 = phi float [ %2706, %2701 ], [ 0.000000e+00, %2572 ]
  %2580 = phi float [ %2707, %2701 ], [ 0.000000e+00, %2572 ]
  %2581 = phi float [ %2708, %2701 ], [ %2484, %2572 ]
  %2582 = phi float [ %2709, %2701 ], [ %2485, %2572 ]
  %2583 = phi float [ %2710, %2701 ], [ %2486, %2572 ]
  %2584 = phi float [ %2711, %2701 ], [ %2518, %2572 ]
  %2585 = phi float [ %2712, %2701 ], [ %2519, %2572 ]
  %2586 = phi float [ %2713, %2701 ], [ %2520, %2572 ]
  %2587 = phi float [ %2714, %2701 ], [ %2489, %2572 ]
  %2588 = phi float [ %2715, %2701 ], [ %2488, %2572 ]
  %2589 = phi float [ %2716, %2701 ], [ 0.000000e+00, %2572 ]
  %2590 = phi float [ %2717, %2701 ], [ %2487, %2572 ]
  %2591 = phi float [ %2718, %2701 ], [ %2481, %2572 ]
  %2592 = phi float [ %2719, %2701 ], [ %2482, %2572 ]
  %2593 = phi float [ %2720, %2701 ], [ %2483, %2572 ]
  %2594 = phi i32 [ %2651, %2701 ], [ 0, %2572 ]
  %2595 = add nuw nsw i32 %2594, %2570
  %2596 = shl i32 %2595, 2
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = shl i32 %2598, 8
  %2600 = or i32 %2599, 48
  %2601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.ResRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.ResRet.f32 %2601, 2
  %2605 = extractvalue %dx.types.ResRet.f32 %2601, 3
  %2606 = or i32 %2599, 64
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = extractvalue %dx.types.ResRet.i32 %2607, 1
  %2610 = or i32 %2599, 80
  %2611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 2
  %2613 = extractvalue %dx.types.ResRet.f32 %2611, 3
  %2614 = or i32 %2599, 96
  %2615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.ResRet.f32 %2615, 1
  %2618 = extractvalue %dx.types.ResRet.f32 %2615, 2
  %2619 = extractvalue %dx.types.ResRet.f32 %2615, 3
  %2620 = or i32 %2599, 112
  %2621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 2
  %2623 = or i32 %2599, 128
  %2624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.ResRet.f32 %2624, 1
  %2627 = extractvalue %dx.types.ResRet.f32 %2624, 2
  %2628 = extractvalue %dx.types.ResRet.f32 %2624, 3
  %2629 = or i32 %2599, 144
  %2630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.ResRet.f32 %2630, 1
  %2633 = extractvalue %dx.types.ResRet.f32 %2630, 2
  %2634 = extractvalue %dx.types.ResRet.f32 %2630, 3
  %2635 = or i32 %2599, 160
  %2636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.ResRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.ResRet.f32 %2636, 2
  %2640 = extractvalue %dx.types.ResRet.f32 %2636, 3
  %2641 = or i32 %2599, 192
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = or i32 %2599, 208
  %2645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = or i32 %2599, 248
  %2648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.f32 %2648, 0
  %2650 = extractvalue %dx.types.ResRet.f32 %2648, 1
  %2651 = add nuw nsw i32 %2594, 1
  %2652 = bitcast float %2605 to i32
  %2653 = and i32 %2652, 2560
  %2654 = icmp eq i32 %2653, 0
  %2655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.ResRet.f32 %2655, 1
  %2658 = extractvalue %dx.types.ResRet.f32 %2655, 2
  %2659 = extractvalue %dx.types.ResRet.f32 %2655, 3
  %2660 = call float @dx.op.dot4.f32(i32 56, float %2656, float %2657, float %2658, float %2659, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2661 = or i32 %2599, 16
  %2662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.f32 %2662, 0
  %2664 = extractvalue %dx.types.ResRet.f32 %2662, 1
  %2665 = extractvalue %dx.types.ResRet.f32 %2662, 2
  %2666 = extractvalue %dx.types.ResRet.f32 %2662, 3
  %2667 = call float @dx.op.dot4.f32(i32 56, float %2663, float %2664, float %2665, float %2666, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2668 = or i32 %2599, 32
  %2669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = extractvalue %dx.types.ResRet.f32 %2669, 1
  %2672 = extractvalue %dx.types.ResRet.f32 %2669, 2
  %2673 = extractvalue %dx.types.ResRet.f32 %2669, 3
  %2674 = call float @dx.op.dot4.f32(i32 56, float %2670, float %2671, float %2672, float %2673, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2675 = call float @dx.op.unary.f32(i32 27, float %2660)  ; Round_ni(value)
  %2676 = call float @dx.op.unary.f32(i32 6, float %2675)  ; FAbs(value)
  %2677 = call float @dx.op.unary.f32(i32 27, float %2667)  ; Round_ni(value)
  %2678 = call float @dx.op.unary.f32(i32 6, float %2677)  ; FAbs(value)
  %2679 = call float @dx.op.unary.f32(i32 6, float %2674)  ; FAbs(value)
  %2680 = call float @dx.op.unary.f32(i32 27, float %2679)  ; Round_ni(value)
  %2681 = fadd fast float %2678, %2676
  %2682 = fadd fast float %2681, %2680
  %2683 = fcmp fast oeq float %2682, 0.000000e+00
  %2684 = call float @dx.op.dot4.f32(i32 56, float %2656, float %2657, float %2658, float %2659, float %2527, float %2528, float %2529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2685 = call float @dx.op.dot4.f32(i32 56, float %2663, float %2664, float %2665, float %2666, float %2527, float %2528, float %2529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2686 = call float @dx.op.dot4.f32(i32 56, float %2656, float %2657, float %2658, float %2659, float %2530, float %2531, float %2532, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2687 = call float @dx.op.dot4.f32(i32 56, float %2663, float %2664, float %2665, float %2666, float %2530, float %2531, float %2532, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2688 = fsub fast float %2684, %2660
  %2689 = fsub fast float %2686, %2660
  %2690 = fsub fast float %2685, %2667
  %2691 = fsub fast float %2687, %2667
  %2692 = call float @dx.op.dot3.f32(i32 55, float %2602, float %2603, float %2604, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2695 = fadd fast float %2694, %2692
  %2696 = call float @dx.op.unary.f32(i32 7, float %2695)  ; Saturate(value)
  %2697 = extractvalue %dx.types.CBufRet.f32 %2693, 0
  %2698 = fcmp fast ogt float %2696, %2697
  %2699 = and i1 %2683, %2698
  %2700 = and i1 %2654, %2699
  br i1 %2700, label %2722, label %2701

; <label>:2701                                    ; preds = %2986, %2803, %2722, %2574
  %2702 = phi float [ %2575, %2722 ], [ %2806, %2803 ], [ %2806, %2986 ], [ %2575, %2574 ]
  %2703 = phi float [ %2576, %2722 ], [ %2576, %2803 ], [ %2961, %2986 ], [ %2576, %2574 ]
  %2704 = phi float [ %2577, %2722 ], [ %2577, %2803 ], [ %2960, %2986 ], [ %2577, %2574 ]
  %2705 = phi float [ %2578, %2722 ], [ %2578, %2803 ], [ %2958, %2986 ], [ %2578, %2574 ]
  %2706 = phi float [ %2579, %2722 ], [ %2579, %2803 ], [ %2930, %2986 ], [ %2579, %2574 ]
  %2707 = phi float [ %2580, %2722 ], [ %2580, %2803 ], [ %2928, %2986 ], [ %2580, %2574 ]
  %2708 = phi float [ %2581, %2722 ], [ %2581, %2803 ], [ %2996, %2986 ], [ %2581, %2574 ]
  %2709 = phi float [ %2582, %2722 ], [ %2582, %2803 ], [ %2997, %2986 ], [ %2582, %2574 ]
  %2710 = phi float [ %2583, %2722 ], [ %2583, %2803 ], [ %2998, %2986 ], [ %2583, %2574 ]
  %2711 = phi float [ %2584, %2722 ], [ %2584, %2803 ], [ %2909, %2986 ], [ %2584, %2574 ]
  %2712 = phi float [ %2585, %2722 ], [ %2585, %2803 ], [ %2910, %2986 ], [ %2585, %2574 ]
  %2713 = phi float [ %2586, %2722 ], [ %2586, %2803 ], [ %2911, %2986 ], [ %2586, %2574 ]
  %2714 = phi float [ %2587, %2722 ], [ %2587, %2803 ], [ %2938, %2986 ], [ %2587, %2574 ]
  %2715 = phi float [ %2588, %2722 ], [ %2588, %2803 ], [ %2935, %2986 ], [ %2588, %2574 ]
  %2716 = phi float [ %2589, %2722 ], [ %2589, %2803 ], [ %2932, %2986 ], [ %2589, %2574 ]
  %2717 = phi float [ %2590, %2722 ], [ %2590, %2803 ], [ %2926, %2986 ], [ %2590, %2574 ]
  %2718 = phi float [ %2591, %2722 ], [ %2591, %2803 ], [ %2921, %2986 ], [ %2591, %2574 ]
  %2719 = phi float [ %2592, %2722 ], [ %2592, %2803 ], [ %2922, %2986 ], [ %2592, %2574 ]
  %2720 = phi float [ %2593, %2722 ], [ %2593, %2803 ], [ %2923, %2986 ], [ %2593, %2574 ]
  %2721 = icmp eq i32 %2651, %2573
  br i1 %2721, label %2999, label %2574

; <label>:2722                                    ; preds = %2574
  %2723 = extractvalue %dx.types.ResRet.f32 %2621, 3
  %2724 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2725 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2611, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2728 = extractvalue %dx.types.ResRet.i32 %2607, 3
  %2729 = extractvalue %dx.types.ResRet.i32 %2607, 2
  %2730 = add i32 %2728, 0
  %2731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2730, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2733 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2731, %dx.types.Handle %2732, float %2660, float %2667, float undef, float undef, i32 0, i32 0, i32 undef, float %2688, float %2690, float undef, float %2689, float %2691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = fmul fast float %2734, %2727
  %2736 = fadd fast float %2735, %2726
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = fmul fast float %2660, %2616
  %2739 = call float @dx.op.tertiary.f32(i32 46, float %2617, float %2667, float %2738)  ; FMad(a,b,c)
  %2740 = fadd fast float %2739, %2725
  %2741 = fmul fast float %2660, %2618
  %2742 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2667, float %2741)  ; FMad(a,b,c)
  %2743 = fadd fast float %2742, %2724
  %2744 = fmul fast float %2688, %2616
  %2745 = call float @dx.op.tertiary.f32(i32 46, float %2617, float %2690, float %2744)  ; FMad(a,b,c)
  %2746 = fmul fast float %2688, %2618
  %2747 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2690, float %2746)  ; FMad(a,b,c)
  %2748 = fmul fast float %2689, %2616
  %2749 = call float @dx.op.tertiary.f32(i32 46, float %2617, float %2691, float %2748)  ; FMad(a,b,c)
  %2750 = fmul fast float %2689, %2618
  %2751 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2691, float %2750)  ; FMad(a,b,c)
  %2752 = add i32 %2729, 0
  %2753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2754 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2753, %dx.types.Handle %2732, float %2740, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float %2745, float %2747, float undef, float %2749, float %2751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2756 = and i32 %2652, 1024
  %2757 = icmp ne i32 %2756, 0
  %2758 = fcmp fast ogt float %2755, 0x3FE0101020000000
  %2759 = uitofp i1 %2758 to float
  %2760 = select i1 %2757, float %2759, float %2755
  %2761 = and i32 %2652, 8192
  %2762 = icmp ne i32 %2761, 0
  %2763 = select i1 %2762, float %2723, float 1.000000e+00
  %2764 = fmul fast float %2660, 2.000000e+00
  %2765 = fadd fast float %2764, -1.000000e+00
  %2766 = call float @dx.op.unary.f32(i32 6, float %2765)  ; FAbs(value)
  %2767 = fmul fast float %2766, %2649
  %2768 = fsub fast float %2767, %2649
  %2769 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2770 = fmul fast float %2667, 2.000000e+00
  %2771 = fadd fast float %2770, -1.000000e+00
  %2772 = call float @dx.op.unary.f32(i32 6, float %2771)  ; FAbs(value)
  %2773 = fmul fast float %2772, %2650
  %2774 = fsub fast float %2773, %2650
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fmul fast float %2679, %2612
  %2777 = fsub fast float %2776, %2612
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = fmul fast float %2737, %2763
  %2780 = fmul fast float %2779, %2734
  %2781 = fmul fast float %2780, %2769
  %2782 = fmul fast float %2781, %2760
  %2783 = fmul fast float %2782, %2775
  %2784 = fmul fast float %2783, %2778
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2788 = fsub fast float %2696, %2787
  %2789 = fmul fast float %2788, %2786
  %2790 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2791 = fmul fast float %2784, %2613
  %2792 = fadd fast float %2784, %2613
  %2793 = fmul fast float %2792, %2622
  %2794 = fsub fast float %2793, %2622
  %2795 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  %2796 = and i32 %2652, 128
  %2797 = icmp ne i32 %2796, 0
  %2798 = select i1 %2797, float %2795, float %2791
  %2799 = fmul fast float %2798, %2790
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = fcmp fast ugt float %2799, %2801
  br i1 %2802, label %2803, label %2701

; <label>:2803                                    ; preds = %2722
  %2804 = select i1 %2762, float %2799, float 0.000000e+00
  %2805 = fadd fast float %2804, %2575
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  br i1 %2762, label %2701, label %2807

; <label>:2807                                    ; preds = %2803
  %2808 = and i32 %2652, 4
  %2809 = and i32 %2652, 8
  %2810 = add i32 %2608, 0
  %2811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2810, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2813 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2811, %dx.types.Handle %2812, float %2740, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float %2745, float %2747, float undef, float %2749, float %2751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.ResRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.ResRet.f32 %2813, 2
  %2817 = extractvalue %dx.types.ResRet.f32 %2813, 3
  %2818 = bitcast float %2634 to i32
  %2819 = and i32 %2818, 255
  %2820 = uitofp i32 %2819 to float
  %2821 = lshr i32 %2818, 8
  %2822 = and i32 %2821, 255
  %2823 = uitofp i32 %2822 to float
  %2824 = fmul fast float %2817, %2820
  %2825 = fadd fast float %2824, %2823
  %2826 = fmul fast float %2825, 0x3F70101000000000
  %2827 = add i32 %2609, 0
  %2828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2829 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2828, %dx.types.Handle %2812, float %2740, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float %2745, float %2747, float undef, float %2749, float %2751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.ResRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.ResRet.f32 %2829, 2
  %2833 = extractvalue %dx.types.ResRet.f32 %2829, 3
  %2834 = bitcast float %2628 to i32
  %2835 = and i32 %2834, 255
  %2836 = uitofp i32 %2835 to float
  %2837 = lshr i32 %2834, 8
  %2838 = and i32 %2837, 255
  %2839 = uitofp i32 %2838 to float
  %2840 = lshr i32 %2834, 16
  %2841 = and i32 %2840, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = fmul fast float %2842, 0x3F70101000000000
  %2844 = fmul fast float %2830, %2836
  %2845 = fadd fast float %2844, %2839
  %2846 = fmul fast float %2845, 0x3F70101000000000
  %2847 = fadd fast float %2831, -5.000000e-01
  %2848 = fadd fast float %2833, -5.000000e-01
  %2849 = fmul fast float %2847, %2843
  %2850 = fmul fast float %2848, %2843
  %2851 = fadd fast float %2849, 5.000000e-01
  %2852 = fadd fast float %2850, 5.000000e-01
  %2853 = fmul fast float %2814, %2637
  %2854 = fmul fast float %2815, %2638
  %2855 = fmul fast float %2816, %2639
  %2856 = fmul fast float %2851, 2.000000e+00
  %2857 = fadd fast float %2856, -1.000000e+00
  %2858 = fmul fast float %2852, 2.000000e+00
  %2859 = fadd fast float %2858, -1.000000e+00
  %2860 = fadd fast float %2857, %2859
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = fsub fast float %2857, %2859
  %2863 = fmul fast float %2862, 5.000000e-01
  %2864 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2865 = fsub fast float 1.000000e+00, %2864
  %2866 = call float @dx.op.unary.f32(i32 6, float %2863)  ; FAbs(value)
  %2867 = fsub fast float %2865, %2866
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2861, float %2863, float %2867, float %2861, float %2863, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.unary.f32(i32 25, float %2868)  ; Rsqrt(value)
  %2870 = fmul fast float %2861, %2869
  %2871 = fmul fast float %2863, %2869
  %2872 = fmul fast float %2869, %2867
  %2873 = fmul fast float %2872, %2602
  %2874 = fmul fast float %2872, %2603
  %2875 = fmul fast float %2872, %2604
  %2876 = fmul fast float %2870, %2625
  %2877 = fmul fast float %2870, %2626
  %2878 = fmul fast float %2870, %2627
  %2879 = fadd fast float %2876, %2873
  %2880 = fadd fast float %2877, %2874
  %2881 = fadd fast float %2878, %2875
  %2882 = fmul fast float %2871, %2631
  %2883 = fmul fast float %2871, %2632
  %2884 = fmul fast float %2871, %2633
  %2885 = fadd fast float %2879, %2882
  %2886 = fadd fast float %2880, %2883
  %2887 = fadd fast float %2881, %2884
  %2888 = call float @dx.op.dot3.f32(i32 55, float %2885, float %2886, float %2887, float %2885, float %2886, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %2889 = call float @dx.op.unary.f32(i32 25, float %2888)  ; Rsqrt(value)
  %2890 = fmul fast float %2885, %2889
  %2891 = fmul fast float %2886, %2889
  %2892 = fmul fast float %2887, %2889
  %2893 = icmp ne i32 %2809, 0
  %2894 = select i1 %2893, float 1.000000e+00, float 0.000000e+00
  %2895 = fmul fast float %2799, %2894
  %2896 = and i32 %2652, 1
  %2897 = icmp eq i32 %2896, 0
  br i1 %2897, label %2898, label %2902

; <label>:2898                                    ; preds = %2807
  %2899 = fsub fast float %2890, %2584
  %2900 = fsub fast float %2891, %2585
  %2901 = fsub fast float %2892, %2586
  br label %2902

; <label>:2902                                    ; preds = %2898, %2807
  %2903 = phi float [ %2899, %2898 ], [ %2890, %2807 ]
  %2904 = phi float [ %2900, %2898 ], [ %2891, %2807 ]
  %2905 = phi float [ %2901, %2898 ], [ %2892, %2807 ]
  %2906 = fmul float %2905, %2895
  %2907 = fmul float %2904, %2895
  %2908 = fmul float %2903, %2895
  %2909 = fadd fast float %2908, %2584
  %2910 = fadd fast float %2907, %2585
  %2911 = fadd fast float %2906, %2586
  %2912 = icmp ne i32 %2808, 0
  %2913 = select i1 %2912, float 1.000000e+00, float 0.000000e+00
  %2914 = fmul fast float %2799, %2913
  %2915 = fsub fast float %2853, %2591
  %2916 = fsub fast float %2854, %2592
  %2917 = fsub fast float %2855, %2593
  %2918 = fmul fast float %2915, %2914
  %2919 = fmul fast float %2916, %2914
  %2920 = fmul fast float %2917, %2914
  %2921 = fadd fast float %2918, %2591
  %2922 = fadd fast float %2919, %2592
  %2923 = fadd fast float %2920, %2593
  %2924 = fsub fast float %2826, %2590
  %2925 = fmul fast float %2924, %2914
  %2926 = fadd fast float %2925, %2590
  %2927 = fmul fast float %2914, %2580
  %2928 = fsub fast float %2580, %2927
  %2929 = fmul fast float %2914, %2579
  %2930 = fsub fast float %2579, %2929
  %2931 = fadd fast float %2799, %2589
  %2932 = call float @dx.op.unary.f32(i32 7, float %2931)  ; Saturate(value)
  %2933 = fsub fast float %2846, %2588
  %2934 = fmul fast float %2933, %2895
  %2935 = fadd fast float %2934, %2588
  %2936 = fsub fast float %2832, %2587
  %2937 = fmul fast float %2936, %2895
  %2938 = fadd fast float %2937, %2587
  %2939 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = fmul fast float %2942, %2939
  %2944 = fadd fast float %2943, %2941
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  %2946 = bitcast float %2640 to i32
  %2947 = and i32 %2946, 65535
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = lshr i32 %2946, 16
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = fcmp fast oge float %2948, 0.000000e+00
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = select i1 %2951, float %2948, float %2953
  %2955 = fadd fast float %2954, %2950
  %2956 = fsub fast float %2945, %2578
  %2957 = fmul fast float %2956, %2799
  %2958 = fadd fast float %2957, %2578
  %2959 = fmul fast float %2955, %2799
  %2960 = call float @dx.op.binary.f32(i32 35, float %2577, float %2959)  ; FMax(a,b)
  %2961 = call float @dx.op.binary.f32(i32 35, float %2576, float %2799)  ; FMax(a,b)
  %2962 = and i32 %2652, 16
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %2986, label %2964

; <label>:2964                                    ; preds = %2902
  %2965 = bitcast float %2646 to i32
  %2966 = add i32 %2643, 0
  %2967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2968 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2967, %dx.types.Handle %2812, float %2740, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float %2745, float %2747, float undef, float %2749, float %2751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = and i32 %2965, 65535
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = fmul fast float %2969, %2637
  %2975 = fmul fast float %2970, %2638
  %2976 = fmul fast float %2971, %2639
  %2977 = and i32 %2652, 16384
  %2978 = icmp ne i32 %2977, 0
  %2979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2980 = extractvalue %dx.types.CBufRet.f32 %2979, 0
  %2981 = select i1 %2978, float %2980, float 1.000000e+00
  %2982 = fmul fast float %2981, %2973
  %2983 = fmul fast float %2974, %2982
  %2984 = fmul fast float %2975, %2982
  %2985 = fmul fast float %2976, %2982
  br label %2986

; <label>:2986                                    ; preds = %2964, %2902
  %2987 = phi float [ %2983, %2964 ], [ 0.000000e+00, %2902 ]
  %2988 = phi float [ %2984, %2964 ], [ 0.000000e+00, %2902 ]
  %2989 = phi float [ %2985, %2964 ], [ 0.000000e+00, %2902 ]
  %2990 = fsub fast float %2987, %2581
  %2991 = fsub fast float %2988, %2582
  %2992 = fsub fast float %2989, %2583
  %2993 = fmul fast float %2990, %2799
  %2994 = fmul fast float %2991, %2799
  %2995 = fmul fast float %2992, %2799
  %2996 = fadd fast float %2993, %2581
  %2997 = fadd fast float %2994, %2582
  %2998 = fadd fast float %2995, %2583
  br label %2701

; <label>:2999                                    ; preds = %2701
  br label %3000

; <label>:3000                                    ; preds = %2999, %2478
  %3001 = phi float [ 0.000000e+00, %2478 ], [ %2702, %2999 ]
  %3002 = phi float [ %797, %2478 ], [ %2703, %2999 ]
  %3003 = phi float [ %2492, %2478 ], [ %2704, %2999 ]
  %3004 = phi float [ %2490, %2478 ], [ %2705, %2999 ]
  %3005 = phi float [ 0.000000e+00, %2478 ], [ %2706, %2999 ]
  %3006 = phi float [ 0.000000e+00, %2478 ], [ %2707, %2999 ]
  %3007 = phi float [ %2484, %2478 ], [ %2708, %2999 ]
  %3008 = phi float [ %2485, %2478 ], [ %2709, %2999 ]
  %3009 = phi float [ %2486, %2478 ], [ %2710, %2999 ]
  %3010 = phi float [ %2518, %2478 ], [ %2711, %2999 ]
  %3011 = phi float [ %2519, %2478 ], [ %2712, %2999 ]
  %3012 = phi float [ %2520, %2478 ], [ %2713, %2999 ]
  %3013 = phi float [ %2489, %2478 ], [ %2714, %2999 ]
  %3014 = phi float [ %2488, %2478 ], [ %2715, %2999 ]
  %3015 = phi float [ 0.000000e+00, %2478 ], [ %2716, %2999 ]
  %3016 = phi float [ %2487, %2478 ], [ %2717, %2999 ]
  %3017 = phi float [ %2481, %2478 ], [ %2718, %2999 ]
  %3018 = phi float [ %2482, %2478 ], [ %2719, %2999 ]
  %3019 = phi float [ %2483, %2478 ], [ %2720, %2999 ]
  %3020 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %3010, float %3011, float %3012)  ; Dot3(ax,ay,az,bx,by,bz)
  %3021 = call float @dx.op.unary.f32(i32 25, float %3020)  ; Rsqrt(value)
  %3022 = fmul fast float %3021, %3010
  %3023 = fmul fast float %3021, %3011
  %3024 = fmul fast float %3021, %3012
  %3025 = fadd fast float %3015, %797
  %3026 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3027 = call float @dx.op.dot3.f32(i32 55, float %3022, float %3023, float %3024, float %3022, float %3023, float %3024)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = call float @dx.op.unary.f32(i32 25, float %3027)  ; Rsqrt(value)
  %3029 = fmul fast float %3028, %3022
  %3030 = fmul fast float %3028, %3023
  %3031 = fmul fast float %3028, %3024
  %3032 = fadd fast float %3016, 0xBFB99999A0000000
  %3033 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3034 = fmul fast float %3033, 0x3FF1C71C80000000
  %3035 = call float @dx.op.binary.f32(i32 36, float %3016, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3036 = fsub fast float 1.000000e+00, %3034
  %3037 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3038 = fmul fast float %3037, %3017
  %3039 = fmul fast float %3037, %3018
  %3040 = fmul fast float %3037, %3019
  %3041 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3044 = fmul fast float %3034, %3017
  %3045 = fmul fast float %3034, %3018
  %3046 = fmul fast float %3034, %3019
  %3047 = fadd fast float %3044, %3035
  %3048 = fadd fast float %3045, %3035
  %3049 = fadd fast float %3046, %3035
  %3050 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3051 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3052 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3053 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.i32 %3054, 3
  %3056 = and i32 %3055, 8
  %3057 = icmp ne i32 %3056, 0
  %3058 = call float @dx.op.binary.f32(i32 35, float %3041, float %3017)  ; FMax(a,b)
  %3059 = call float @dx.op.binary.f32(i32 35, float %3042, float %3017)  ; FMax(a,b)
  %3060 = call float @dx.op.binary.f32(i32 35, float %3043, float %3017)  ; FMax(a,b)
  %3061 = call float @dx.op.dot3.f32(i32 55, float %3041, float %3042, float %3043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3062 = select i1 %196, float %3017, float %3041
  %3063 = select i1 %196, float %3061, float %3042
  %3064 = select i1 %196, float 1.000000e+00, float %3043
  %3065 = select i1 %3057, float %3058, float %3062
  %3066 = select i1 %3057, float %3059, float %3063
  %3067 = select i1 %3057, float %3060, float %3064
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.CBufRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.CBufRet.f32 %3068, 2
  %3072 = fadd fast float %3069, %125
  %3073 = fadd fast float %3070, %126
  %3074 = fadd fast float %3071, %127
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.CBufRet.f32 %3075, 1
  %3078 = fsub fast float %3072, %3076
  %3079 = fsub fast float %3073, %3077
  %3080 = fmul fast float %3078, %3078
  %3081 = fmul fast float %3079, %3079
  %3082 = fadd fast float %3080, %3081
  %3083 = call float @dx.op.unary.f32(i32 24, float %3082)  ; Sqrt(value)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3075, 2
  %3085 = fcmp fast olt float %3083, %3084
  br i1 %3085, label %3086, label %3153

; <label>:3086                                    ; preds = %3000
  %3087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3088 = extractvalue %dx.types.CBufRet.f32 %3087, 0
  %3089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3090 = extractvalue %dx.types.CBufRet.f32 %3089, 0
  %3091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3092 = extractvalue %dx.types.CBufRet.f32 %3091, 0
  %3093 = extractvalue %dx.types.CBufRet.f32 %3087, 1
  %3094 = extractvalue %dx.types.CBufRet.f32 %3089, 1
  %3095 = extractvalue %dx.types.CBufRet.f32 %3091, 1
  %3096 = extractvalue %dx.types.CBufRet.f32 %3087, 3
  %3097 = extractvalue %dx.types.CBufRet.f32 %3089, 3
  %3098 = extractvalue %dx.types.CBufRet.f32 %3091, 3
  %3099 = fadd fast float %3096, %3072
  %3100 = fadd fast float %3097, %3073
  %3101 = fadd fast float %3098, %3074
  %3102 = fmul fast float %3099, %3088
  %3103 = call float @dx.op.tertiary.f32(i32 46, float %3100, float %3090, float %3102)  ; FMad(a,b,c)
  %3104 = call float @dx.op.tertiary.f32(i32 46, float %3101, float %3092, float %3103)  ; FMad(a,b,c)
  %3105 = fmul fast float %3099, %3093
  %3106 = call float @dx.op.tertiary.f32(i32 46, float %3100, float %3094, float %3105)  ; FMad(a,b,c)
  %3107 = call float @dx.op.tertiary.f32(i32 46, float %3101, float %3095, float %3106)  ; FMad(a,b,c)
  %3108 = fsub fast float %3104, %3096
  %3109 = fsub fast float %3107, %3097
  %3110 = fsub fast float %3108, %3076
  %3111 = fadd fast float %3110, %3084
  %3112 = fsub fast float %3109, %3077
  %3113 = fadd fast float %3112, %3084
  %3114 = extractvalue %dx.types.CBufRet.f32 %3075, 3
  %3115 = fmul fast float %3111, %3114
  %3116 = fmul fast float %3113, %3114
  %3117 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3118 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3119 = fsub fast float 1.000000e+00, %3117
  %3120 = fsub fast float 1.000000e+00, %3118
  %3121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3119, float %3120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = fcmp fast ugt float %3122, 0.000000e+00
  br i1 %3123, label %3124, label %3427

; <label>:3124                                    ; preds = %3086
  %3125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.f32 %3125, 2
  %3127 = fmul fast float %3126, %3122
  %3128 = extractvalue %dx.types.CBufRet.f32 %3125, 3
  %3129 = fadd fast float %3128, %3127
  %3130 = extractvalue %dx.types.CBufRet.f32 %3091, 2
  %3131 = fadd fast float %3129, %3098
  %3132 = fmul fast float %3104, %3092
  %3133 = call float @dx.op.tertiary.f32(i32 46, float %3107, float %3095, float %3132)  ; FMad(a,b,c)
  %3134 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %3130, float %3133)  ; FMad(a,b,c)
  %3135 = fsub fast float %3134, %3098
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 2
  %3138 = fsub fast float %3135, %3137
  %3139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3119, float %3120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3140 = extractvalue %dx.types.ResRet.f32 %3139, 0
  %3141 = extractvalue %dx.types.ResRet.f32 %3139, 1
  %3142 = extractvalue %dx.types.ResRet.f32 %3139, 2
  %3143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3119, float %3120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = extractvalue %dx.types.ResRet.f32 %3143, 1
  %3146 = extractvalue %dx.types.ResRet.f32 %3143, 2
  %3147 = fadd fast float %3144, %3140
  %3148 = fmul fast float %3147, 0x3F847AE140000000
  %3149 = fadd fast float %3145, %3141
  %3150 = fmul fast float %3149, 0x3F847AE140000000
  %3151 = fadd fast float %3146, %3142
  %3152 = fmul fast float %3151, 0x3F847AE140000000
  br label %3427

; <label>:3153                                    ; preds = %3000
  %3154 = and i32 %172, 1
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3427, label %3156

; <label>:3156                                    ; preds = %3153
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.CBufRet.f32 %3157, 1
  %3164 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3165 = extractvalue %dx.types.CBufRet.f32 %3161, 1
  %3166 = extractvalue %dx.types.CBufRet.f32 %3157, 3
  %3167 = extractvalue %dx.types.CBufRet.f32 %3159, 3
  %3168 = extractvalue %dx.types.CBufRet.f32 %3161, 3
  %3169 = fadd fast float %3166, %3072
  %3170 = fadd fast float %3167, %3073
  %3171 = fadd fast float %3168, %3074
  %3172 = fmul fast float %3169, %3158
  %3173 = call float @dx.op.tertiary.f32(i32 46, float %3170, float %3160, float %3172)  ; FMad(a,b,c)
  %3174 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3162, float %3173)  ; FMad(a,b,c)
  %3175 = fmul fast float %3169, %3163
  %3176 = call float @dx.op.tertiary.f32(i32 46, float %3170, float %3164, float %3175)  ; FMad(a,b,c)
  %3177 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3165, float %3176)  ; FMad(a,b,c)
  %3178 = fsub fast float %3174, %3166
  %3179 = fsub fast float %3177, %3167
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 0
  %3182 = extractvalue %dx.types.CBufRet.f32 %3180, 1
  %3183 = extractvalue %dx.types.CBufRet.f32 %3180, 2
  %3184 = extractvalue %dx.types.CBufRet.f32 %3180, 3
  %3185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3186 = extractvalue %dx.types.CBufRet.f32 %3185, 3
  %3187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.i32 %3187, 0
  %3189 = extractvalue %dx.types.CBufRet.i32 %3187, 1
  %3190 = udiv i32 %3189, %3188
  %3191 = fsub fast float %3178, %3181
  %3192 = fsub fast float %3179, %3182
  %3193 = call float @dx.op.binary.f32(i32 35, float %3191, float 0.000000e+00)  ; FMax(a,b)
  %3194 = call float @dx.op.binary.f32(i32 35, float %3192, float 0.000000e+00)  ; FMax(a,b)
  %3195 = call float @dx.op.binary.f32(i32 36, float %3193, float %3183)  ; FMin(a,b)
  %3196 = call float @dx.op.binary.f32(i32 36, float %3194, float %3184)  ; FMin(a,b)
  %3197 = add i32 %3188, -1
  %3198 = add i32 %3190, -1
  %3199 = fmul fast float %3195, %3186
  %3200 = fmul fast float %3196, %3186
  %3201 = fptoui float %3199 to i32
  %3202 = fptoui float %3200 to i32
  %3203 = call i32 @dx.op.binary.i32(i32 40, i32 %3201, i32 %3197)  ; UMin(a,b)
  %3204 = call i32 @dx.op.binary.i32(i32 40, i32 %3202, i32 %3198)  ; UMin(a,b)
  %3205 = mul i32 %3204, %3188
  %3206 = add i32 %3205, %3203
  %3207 = shl i32 %3206, 2
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = icmp eq i32 %3209, -1
  br i1 %3210, label %3427, label %3211

; <label>:3211                                    ; preds = %3156
  %3212 = mul i32 %3209, 148
  %3213 = add i32 %3212, 4
  %3214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = add i32 %3212, 8
  %3217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = add i32 %3212, 36
  %3220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = add i32 %3212, 60
  %3223 = add i32 %3212, 92
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = add i32 %3212, 116
  %3227 = fsub fast float %3178, %3215
  %3228 = fsub fast float %3179, %3218
  %3229 = fmul fast float %3186, %3227
  %3230 = fmul fast float %3186, %3228
  %3231 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3232 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3233 = fsub fast float 1.000000e+00, %3232
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 2
  %3236 = call float @dx.op.unary.f32(i32 83, float %3231)  ; DerivCoarseX(value)
  %3237 = call float @dx.op.unary.f32(i32 83, float %3233)  ; DerivCoarseX(value)
  %3238 = call float @dx.op.unary.f32(i32 84, float %3231)  ; DerivCoarseY(value)
  %3239 = call float @dx.op.unary.f32(i32 84, float %3233)  ; DerivCoarseY(value)
  %3240 = fmul fast float %3236, %3235
  %3241 = fmul fast float %3237, %3235
  %3242 = fmul fast float %3238, %3235
  %3243 = fmul fast float %3239, %3235
  %3244 = call float @dx.op.dot2.f32(i32 54, float %3242, float %3243, float %3242, float %3243)  ; Dot2(ax,ay,bx,by)
  %3245 = call float @dx.op.dot2.f32(i32 54, float %3240, float %3241, float %3240, float %3241)  ; Dot2(ax,ay,bx,by)
  %3246 = call float @dx.op.binary.f32(i32 35, float %3245, float %3244)  ; FMax(a,b)
  %3247 = call float @dx.op.unary.f32(i32 23, float %3246)  ; Log(value)
  %3248 = fmul fast float %3247, 5.000000e-01
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 1
  %3251 = fadd fast float %3250, %3248
  %3252 = call float @dx.op.binary.f32(i32 35, float %3251, float 0.000000e+00)  ; FMax(a,b)
  %3253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3254 = extractvalue %dx.types.CBufRet.f32 %3253, 3
  %3255 = fadd fast float %3254, %3252
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3258 = fadd fast float %3255, %3257
  %3259 = add i32 %3225, 0
  %3260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3259, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3261 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3260, i32 0)  ; GetDimensions(handle,mipLevel)
  %3262 = extractvalue %dx.types.Dimensions %3261, 0
  %3263 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3262)  ; FirstbitLo(value)
  %3264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.i32 %3264, 1
  %3266 = sub nsw i32 %3265, %3263
  %3267 = sitofp i32 %3266 to float
  %3268 = fsub fast float %3258, %3267
  %3269 = call float @dx.op.binary.f32(i32 35, float %3268, float 0.000000e+00)  ; FMax(a,b)
  %3270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3260, %dx.types.Handle %37, float %3231, float %3233, float %3221, float undef, i32 0, i32 0, i32 undef, float %3269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = fcmp ule float %3271, 0x3FE0101020000000
  %3273 = extractvalue %dx.types.CBufRet.i32 %3264, 0
  %3274 = and i32 %3273, 128
  %3275 = icmp ne i32 %3274, 0
  %3276 = and i1 %3272, %3275
  br i1 %3276, label %3427, label %3277

; <label>:3277                                    ; preds = %3211
  %3278 = add i32 %3212, 20
  %3279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = add i32 %3212, 24
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = add i32 %3212, 40
  %3285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = add i32 %3212, 96
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 2
  %3292 = fmul fast float %3291, %3231
  %3293 = fmul fast float %3291, %3233
  %3294 = extractvalue %dx.types.CBufRet.f32 %3290, 3
  %3295 = fadd fast float %3292, %3294
  %3296 = fadd fast float %3293, %3294
  %3297 = add i32 %3289, 0
  %3298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3297, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3299 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3298, i32 0)  ; GetDimensions(handle,mipLevel)
  %3300 = extractvalue %dx.types.Dimensions %3299, 0
  %3301 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3300)  ; FirstbitLo(value)
  %3302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3303 = extractvalue %dx.types.CBufRet.i32 %3302, 1
  %3304 = sub nsw i32 %3303, %3301
  %3305 = sitofp i32 %3304 to float
  %3306 = fsub fast float %3255, %3305
  %3307 = call float @dx.op.binary.f32(i32 35, float %3306, float 0.000000e+00)  ; FMax(a,b)
  %3308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3298, %dx.types.Handle %37, float %3295, float %3296, float %3286, float undef, i32 0, i32 0, i32 undef, float %3307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = fmul fast float %3309, %3280
  %3311 = fadd fast float %3310, %3283
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.f32 %3316, 3
  %3318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.f32 %3318, 3
  %3320 = extractvalue %dx.types.CBufRet.f32 %3312, 3
  %3321 = fadd fast float %3317, %3178
  %3322 = fadd fast float %3319, %3179
  %3323 = fadd fast float %3311, %3320
  %3324 = fmul fast float %3321, %3313
  %3325 = call float @dx.op.tertiary.f32(i32 46, float %3322, float %3314, float %3324)  ; FMad(a,b,c)
  %3326 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3315, float %3325)  ; FMad(a,b,c)
  %3327 = fsub fast float %3326, %3320
  %3328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.f32 %3328, 2
  %3330 = fsub fast float %3327, %3329
  %3331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.i32 %3331, 0
  %3333 = call i32 @dx.op.binary.i32(i32 40, i32 %3209, i32 %3332)  ; UMin(a,b)
  %3334 = mul i32 %3333, 36
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = add i32 %3334, 4
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 0
  %3340 = fmul fast float %3339, %3231
  %3341 = fmul fast float %3339, %3233
  %3342 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3343 = fadd fast float %3340, %3342
  %3344 = fadd fast float %3341, %3342
  %3345 = icmp eq i32 %3336, 0
  br i1 %3345, label %3414, label %3346

; <label>:3346                                    ; preds = %3277
  br label %3347

; <label>:3347                                    ; preds = %3404, %3346
  %3348 = phi float [ %3405, %3404 ], [ 0.000000e+00, %3346 ]
  %3349 = phi float [ %3406, %3404 ], [ 0.000000e+00, %3346 ]
  %3350 = phi float [ %3407, %3404 ], [ 0.000000e+00, %3346 ]
  %3351 = phi float [ %3408, %3404 ], [ 0.000000e+00, %3346 ]
  %3352 = phi float [ %3409, %3404 ], [ 0.000000e+00, %3346 ]
  %3353 = phi float [ %3410, %3404 ], [ 0.000000e+00, %3346 ]
  %3354 = phi i32 [ %3411, %3404 ], [ 0, %3346 ]
  %3355 = shl i32 %3354, 2
  %3356 = add i32 %3222, %3355
  %3357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3356, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = add i32 %3226, %3355
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = add i32 %3361, 0
  %3363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3362, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3363, i32 0)  ; GetDimensions(handle,mipLevel)
  %3365 = extractvalue %dx.types.Dimensions %3364, 0
  %3366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3365)  ; FirstbitLo(value)
  %3367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.i32 %3367, 1
  %3369 = sub nsw i32 %3368, %3366
  %3370 = sitofp i32 %3369 to float
  %3371 = fsub fast float %3255, %3370
  %3372 = call float @dx.op.binary.f32(i32 35, float %3371, float 0.000000e+00)  ; FMax(a,b)
  %3373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3363, %dx.types.Handle %37, float %3343, float %3344, float %3358, float undef, i32 0, i32 0, i32 undef, float %3372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3374 = extractvalue %dx.types.ResRet.f32 %3373, 0
  %3375 = fcmp fast ogt float %3374, 0.000000e+00
  br i1 %3375, label %3376, label %3404

; <label>:3376                                    ; preds = %3347
  %3377 = add i32 %3337, %3355
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 32767
  %3381 = mul nuw nsw i32 %3380, 928
  %3382 = add nuw nsw i32 %3381, 48
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = add nuw nsw i32 %3381, 60
  %3388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = fmul fast float %3384, %3374
  %3393 = fmul fast float %3385, %3374
  %3394 = fmul fast float %3386, %3374
  %3395 = fadd fast float %3392, %3348
  %3396 = fadd fast float %3393, %3349
  %3397 = fadd fast float %3394, %3350
  %3398 = fmul fast float %3389, %3374
  %3399 = fmul fast float %3390, %3374
  %3400 = fmul fast float %3391, %3374
  %3401 = fadd fast float %3398, %3351
  %3402 = fadd fast float %3399, %3352
  %3403 = fadd fast float %3400, %3353
  br label %3404

; <label>:3404                                    ; preds = %3376, %3347
  %3405 = phi float [ %3395, %3376 ], [ %3348, %3347 ]
  %3406 = phi float [ %3396, %3376 ], [ %3349, %3347 ]
  %3407 = phi float [ %3397, %3376 ], [ %3350, %3347 ]
  %3408 = phi float [ %3401, %3376 ], [ %3351, %3347 ]
  %3409 = phi float [ %3402, %3376 ], [ %3352, %3347 ]
  %3410 = phi float [ %3403, %3376 ], [ %3353, %3347 ]
  %3411 = add nuw i32 %3354, 1
  %3412 = icmp eq i32 %3411, %3336
  br i1 %3412, label %3413, label %3347

; <label>:3413                                    ; preds = %3404
  br label %3414

; <label>:3414                                    ; preds = %3413, %3277
  %3415 = phi float [ 0.000000e+00, %3277 ], [ %3405, %3413 ]
  %3416 = phi float [ 0.000000e+00, %3277 ], [ %3406, %3413 ]
  %3417 = phi float [ 0.000000e+00, %3277 ], [ %3407, %3413 ]
  %3418 = phi float [ 0.000000e+00, %3277 ], [ %3408, %3413 ]
  %3419 = phi float [ 0.000000e+00, %3277 ], [ %3409, %3413 ]
  %3420 = phi float [ 0.000000e+00, %3277 ], [ %3410, %3413 ]
  %3421 = fadd fast float %3418, %3415
  %3422 = fmul fast float %3421, 0x3F847AE140000000
  %3423 = fadd fast float %3419, %3416
  %3424 = fmul fast float %3423, 0x3F847AE140000000
  %3425 = fadd fast float %3420, %3417
  %3426 = fmul fast float %3425, 0x3F847AE140000000
  br label %3427

; <label>:3427                                    ; preds = %3414, %3211, %3156, %3153, %3124, %3086
  %3428 = phi float [ %3138, %3124 ], [ -1.310720e+05, %3086 ], [ %3330, %3414 ], [ -1.310720e+05, %3156 ], [ -1.310720e+05, %3211 ], [ -1.310720e+05, %3153 ]
  %3429 = phi float [ %3148, %3124 ], [ 0.000000e+00, %3086 ], [ %3422, %3414 ], [ 0.000000e+00, %3156 ], [ 0.000000e+00, %3211 ], [ 0.000000e+00, %3153 ]
  %3430 = phi float [ %3150, %3124 ], [ 0.000000e+00, %3086 ], [ %3424, %3414 ], [ 0.000000e+00, %3156 ], [ 0.000000e+00, %3211 ], [ 0.000000e+00, %3153 ]
  %3431 = phi float [ %3152, %3124 ], [ 0.000000e+00, %3086 ], [ %3426, %3414 ], [ 0.000000e+00, %3156 ], [ 0.000000e+00, %3211 ], [ 0.000000e+00, %3153 ]
  %3432 = phi i1 [ true, %3124 ], [ false, %3086 ], [ true, %3414 ], [ false, %3156 ], [ false, %3211 ], [ false, %3153 ]
  %3433 = and i32 %172, 3
  %3434 = icmp eq i32 %3433, 1
  %3435 = select i1 %3434, float 1.000000e+00, float 0.000000e+00
  %3436 = fsub fast float %3428, %127
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3438 = select i1 %3432, float %3437, float 1.000000e+00
  %3439 = fmul fast float %3438, %3435
  %3440 = icmp eq i32 %3433, 3
  %3441 = select i1 %3440, float 1.000000e+00, float %3439
  %3442 = call float @dx.op.binary.f32(i32 35, float %3001, float %3441)  ; FMax(a,b)
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = fcmp fast une float %3443, 0.000000e+00
  %3445 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3446 = call float @dx.op.unary.f32(i32 25, float %3445)  ; Rsqrt(value)
  br i1 %3444, label %3454, label %3447

; <label>:3447                                    ; preds = %3427
  %3448 = fmul fast float %3446, %125
  %3449 = fmul fast float %3446, %126
  %3450 = fmul fast float %3446, %127
  %3451 = fsub fast float -0.000000e+00, %3448
  %3452 = fsub fast float -0.000000e+00, %3449
  %3453 = fsub fast float -0.000000e+00, %3450
  br label %3622

; <label>:3454                                    ; preds = %3427
  %3455 = fmul fast float %125, %3446
  %3456 = fsub fast float -0.000000e+00, %3455
  %3457 = fmul fast float %126, %3446
  %3458 = fsub fast float -0.000000e+00, %3457
  %3459 = fmul fast float %127, %3446
  %3460 = fsub fast float -0.000000e+00, %3459
  %3461 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3458, float %3460, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %3462 = fmul fast float %3443, 2.500000e+00
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = fmul fast float %3443, 0x4013FFFFE0000000
  %3465 = fadd fast float %3464, 0xBFFFFFFFE0000000
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3467 = fmul fast float %3443, 0x4004000020000000
  %3468 = fadd fast float %3467, 0xBFF8000040000000
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = call float @dx.op.unary.f32(i32 7, float %3463)  ; Saturate(value)
  %3471 = fmul fast float %3032, 1.000000e+01
  %3472 = call float @dx.op.unary.f32(i32 7, float %3471)  ; Saturate(value)
  %3473 = fmul fast float %3472, 2.000000e+00
  %3474 = fsub fast float 3.000000e+00, %3473
  %3475 = fmul fast float %3472, %3472
  %3476 = fmul fast float %3475, %3474
  %3477 = fsub fast float 1.000000e+00, %3476
  %3478 = fsub fast float 0x3FE3333340000000, %3053
  %3479 = fmul fast float %3478, 0x400AAAAAA0000000
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3481 = fmul fast float %3477, %3480
  %3482 = fmul fast float %3065, 0x3FEA2B8620000000
  %3483 = fmul fast float %3066, 0x3FEA2B8620000000
  %3484 = fmul fast float %3067, 0x3FEA2B8620000000
  %3485 = fadd fast float %3482, 0x3FC81DFBA0000000
  %3486 = fmul fast float %3485, %3065
  %3487 = fadd fast float %3486, 0x3F910E6020000000
  %3488 = fadd fast float %3483, 0x3FC81DFBA0000000
  %3489 = fmul fast float %3488, %3066
  %3490 = fadd fast float %3489, 0x3F910E6020000000
  %3491 = fadd fast float %3484, 0x3FC81DFBA0000000
  %3492 = fmul fast float %3491, %3067
  %3493 = fadd fast float %3492, 0x3F910E6020000000
  %3494 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3495 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3496 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3497 = fsub fast float %3494, %3065
  %3498 = fsub fast float %3495, %3066
  %3499 = fsub fast float %3496, %3067
  %3500 = fmul fast float %3497, %3470
  %3501 = fmul fast float %3500, %3481
  %3502 = fmul fast float %3498, %3470
  %3503 = fmul fast float %3502, %3481
  %3504 = fmul fast float %3499, %3470
  %3505 = fmul fast float %3504, %3481
  %3506 = fadd fast float %3501, %3065
  %3507 = fadd fast float %3503, %3066
  %3508 = fadd fast float %3505, %3067
  %3509 = fmul fast float %3013, %3013
  %3510 = fmul fast float %3509, %3509
  %3511 = fadd fast float %3466, 1.000000e+00
  %3512 = fsub fast float %3511, %3481
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3514 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3516 = fsub fast float 1.000000e+00, %3510
  %3517 = call float @dx.op.binary.f32(i32 36, float %3513, float %3516)  ; FMin(a,b)
  %3518 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3519 = call float @dx.op.binary.f32(i32 35, float %3517, float %3518)  ; FMax(a,b)
  %3520 = fadd fast float %3515, 0xBFE4CCCCC0000000
  %3521 = fmul fast float %3520, 0x4006DB6DA0000000
  %3522 = call float @dx.op.unary.f32(i32 7, float %3521)  ; Saturate(value)
  %3523 = fmul fast float %3522, 2.000000e+00
  %3524 = fsub fast float 3.000000e+00, %3523
  %3525 = bitcast float %3050 to i32
  %3526 = ashr i32 %3525, 1
  %3527 = add nsw i32 %3526, 532487669
  %3528 = bitcast i32 %3527 to float
  %3529 = fsub fast float 1.000000e+00, %3528
  %3530 = bitcast float %3529 to i32
  %3531 = sub nsw i32 2129859010, %3530
  %3532 = bitcast i32 %3531 to float
  %3533 = fmul fast float %3532, 2.000000e+00
  %3534 = bitcast float %3051 to i32
  %3535 = ashr i32 %3534, 1
  %3536 = add nsw i32 %3535, 532487669
  %3537 = bitcast i32 %3536 to float
  %3538 = fsub fast float 1.000000e+00, %3537
  %3539 = bitcast float %3538 to i32
  %3540 = sub nsw i32 2129859010, %3539
  %3541 = bitcast i32 %3540 to float
  %3542 = fmul fast float %3541, 2.000000e+00
  %3543 = bitcast float %3052 to i32
  %3544 = ashr i32 %3543, 1
  %3545 = add nsw i32 %3544, 532487669
  %3546 = bitcast i32 %3545 to float
  %3547 = fsub fast float 1.000000e+00, %3546
  %3548 = bitcast float %3547 to i32
  %3549 = sub nsw i32 2129859010, %3548
  %3550 = bitcast i32 %3549 to float
  %3551 = fmul fast float %3550, 2.000000e+00
  %3552 = fsub fast float 0x4002A9FBE0000000, %3533
  %3553 = fadd fast float %3533, 0x3FD54FDF00000000
  %3554 = bitcast float %3553 to i32
  %3555 = sub nsw i32 2129859010, %3554
  %3556 = bitcast i32 %3555 to float
  %3557 = fmul fast float %3556, %3552
  %3558 = fmul fast float %3557, %3557
  %3559 = fsub fast float 0x4002A9FBE0000000, %3542
  %3560 = fadd fast float %3542, 0x3FD54FDF00000000
  %3561 = bitcast float %3560 to i32
  %3562 = sub nsw i32 2129859010, %3561
  %3563 = bitcast i32 %3562 to float
  %3564 = fmul fast float %3563, %3559
  %3565 = fmul fast float %3564, %3564
  %3566 = fsub fast float 0x4002A9FBE0000000, %3551
  %3567 = fadd fast float %3551, 0x3FD54FDF00000000
  %3568 = bitcast float %3567 to i32
  %3569 = sub nsw i32 2129859010, %3568
  %3570 = bitcast i32 %3569 to float
  %3571 = fmul fast float %3570, %3566
  %3572 = fmul fast float %3571, %3571
  %3573 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3558)  ; FMax(a,b)
  %3574 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3565)  ; FMax(a,b)
  %3575 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3572)  ; FMax(a,b)
  %3576 = fsub fast float 1.000000e+00, %3461
  %3577 = fadd fast float %3576, %3477
  %3578 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3579 = fsub fast float 1.000000e+00, %3441
  %3580 = fmul fast float %3519, %3579
  %3581 = fmul fast float %3522, %3522
  %3582 = fmul fast float %3581, %3580
  %3583 = fmul fast float %3582, %3524
  %3584 = fmul fast float %3579, 0xBFE99999A0000000
  %3585 = fmul fast float %3584, %3470
  %3586 = fmul fast float %3585, %3481
  %3587 = fadd fast float %3586, 1.000000e+00
  %3588 = fadd fast float %3053, -1.000000e+00
  %3589 = fmul fast float %3587, %3588
  %3590 = fadd fast float %3589, 1.000000e+00
  %3591 = fsub fast float %3573, %3050
  %3592 = fsub fast float %3574, %3051
  %3593 = fsub fast float %3575, %3052
  %3594 = fmul fast float %3583, %3591
  %3595 = fmul fast float %3583, %3592
  %3596 = fmul fast float %3583, %3593
  %3597 = fadd fast float %3594, %3050
  %3598 = fadd fast float %3595, %3051
  %3599 = fadd fast float %3596, %3052
  %3600 = fsub fast float %57, %3029
  %3601 = fsub fast float %58, %3030
  %3602 = fsub fast float %59, %3031
  %3603 = fmul fast float %3583, %3600
  %3604 = fmul fast float %3583, %3601
  %3605 = fmul fast float %3583, %3602
  %3606 = fadd fast float %3603, %3029
  %3607 = fadd fast float %3604, %3030
  %3608 = fadd fast float %3605, %3031
  %3609 = fmul fast float %3583, %3578
  %3610 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3611 = fsub fast float 1.000000e+00, %3610
  %3612 = fmul fast float %3609, %3611
  %3613 = fadd fast float %3612, %3610
  %3614 = fsub fast float 1.000000e+00, %3013
  %3615 = fmul fast float %3583, %3614
  %3616 = fadd fast float %3615, %3013
  %3617 = call float @dx.op.dot3.f32(i32 55, float %3606, float %3607, float %3608, float %3606, float %3607, float %3608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3618 = call float @dx.op.unary.f32(i32 25, float %3617)  ; Rsqrt(value)
  %3619 = fmul fast float %3606, %3618
  %3620 = fmul fast float %3607, %3618
  %3621 = fmul fast float %3608, %3618
  br label %3622

; <label>:3622                                    ; preds = %3454, %3447
  %3623 = phi float [ %3453, %3447 ], [ %3460, %3454 ]
  %3624 = phi float [ %3452, %3447 ], [ %3458, %3454 ]
  %3625 = phi float [ %3451, %3447 ], [ %3456, %3454 ]
  %3626 = phi float [ %3450, %3447 ], [ %3459, %3454 ]
  %3627 = phi float [ %3449, %3447 ], [ %3457, %3454 ]
  %3628 = phi float [ %3448, %3447 ], [ %3455, %3454 ]
  %3629 = phi float [ %3065, %3447 ], [ %3506, %3454 ]
  %3630 = phi float [ %3066, %3447 ], [ %3507, %3454 ]
  %3631 = phi float [ %3067, %3447 ], [ %3508, %3454 ]
  %3632 = phi float [ %3050, %3447 ], [ %3597, %3454 ]
  %3633 = phi float [ %3051, %3447 ], [ %3598, %3454 ]
  %3634 = phi float [ %3052, %3447 ], [ %3599, %3454 ]
  %3635 = phi float [ %3029, %3447 ], [ %3619, %3454 ]
  %3636 = phi float [ %3030, %3447 ], [ %3620, %3454 ]
  %3637 = phi float [ %3031, %3447 ], [ %3621, %3454 ]
  %3638 = phi float [ %3053, %3447 ], [ %3613, %3454 ]
  %3639 = phi float [ %3013, %3447 ], [ %3616, %3454 ]
  %3640 = select i1 %196, float 0.000000e+00, float %3634
  %3641 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3636, float %3637, float %3625, float %3624, float %3623)  ; Dot3(ax,ay,az,bx,by,bz)
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3627, float %3626, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = fmul fast float %3643, 2.000000e+00
  %3645 = fmul fast float %3644, %3635
  %3646 = fmul fast float %3644, %3636
  %3647 = fmul fast float %3644, %3637
  %3648 = fsub fast float %3628, %3645
  %3649 = fsub fast float %3627, %3646
  %3650 = fsub fast float %3626, %3647
  %3651 = call float @dx.op.binary.f32(i32 36, float %3639, float 1.000000e+00)  ; FMin(a,b)
  %3652 = fsub fast float 1.000000e+00, %3639
  %3653 = bitcast float %3652 to i32
  %3654 = sub nsw i32 2129859010, %3653
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3658 = fadd fast float %3656, %125
  %3659 = fadd fast float %3657, %126
  %3660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.i32 %3660, 0
  %3662 = icmp eq i32 %3661, 1
  br i1 %3662, label %3663, label %3698

; <label>:3663                                    ; preds = %3622
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 1
  %3667 = fsub fast float %3658, %3665
  %3668 = fsub fast float %3659, %3666
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = fmul fast float %3667, %3670
  %3673 = fmul fast float %3668, %3671
  %3674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3672, float %3673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = fcmp fast ogt float %3675, 0.000000e+00
  %3677 = extractvalue %dx.types.CBufRet.i32 %3660, 3
  %3678 = icmp ne i32 %3677, 0
  %3679 = and i1 %3676, %3678
  br i1 %3679, label %3680, label %3698, !dx.controlflow.hints !85

; <label>:3680                                    ; preds = %3663
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3684 = fsub fast float %3658, %3682
  %3685 = fsub fast float %3659, %3683
  %3686 = fmul fast float %3684, %3684
  %3687 = fmul fast float %3685, %3685
  %3688 = fadd fast float %3686, %3687
  %3689 = uitofp i32 %3677 to float
  %3690 = fmul fast float %3689, %3689
  %3691 = fcmp fast ogt float %3688, %3690
  br i1 %3691, label %3698, label %3692

; <label>:3692                                    ; preds = %3680
  %3693 = call float @dx.op.unary.f32(i32 24, float %3688)  ; Sqrt(value)
  %3694 = fsub fast float %3689, %3693
  %3695 = fmul fast float %3694, 0x3F75555560000000
  %3696 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3697 = call float @dx.op.binary.f32(i32 36, float %3696, float %3675)  ; FMin(a,b)
  br label %3698

; <label>:3698                                    ; preds = %3692, %3680, %3663, %3622
  %3699 = phi float [ 1.000000e+00, %3622 ], [ %3697, %3692 ], [ %3675, %3663 ], [ 0.000000e+00, %3680 ]
  %3700 = fcmp fast ogt float %3699, 0.000000e+00
  br i1 %3700, label %3701, label %3799, !dx.controlflow.hints !86

; <label>:3701                                    ; preds = %3698
  %3702 = fadd fast float %156, 5.000000e-01
  %3703 = call float @dx.op.unary.f32(i32 27, float %3702)  ; Round_ni(value)
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %154, float %155, float %3703, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 3
  %3710 = fmul fast float %3709, %3705
  %3711 = fmul fast float %3709, %3706
  %3712 = fmul fast float %3709, %3707
  %3713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %154, float %155, float %3703, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %154, float %155, float %3703, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = extractvalue %dx.types.ResRet.f32 %3715, 1
  %3718 = fmul fast float %3716, 2.000000e+00
  %3719 = fmul fast float %3717, 2.000000e+00
  %3720 = fadd fast float %3718, -1.000000e+00
  %3721 = fadd fast float %3719, -1.000000e+00
  %3722 = fadd fast float %3720, %3721
  %3723 = fmul fast float %3722, 5.000000e-01
  %3724 = fsub fast float %3720, %3721
  %3725 = fmul fast float %3724, 5.000000e-01
  %3726 = call float @dx.op.unary.f32(i32 6, float %3723)  ; FAbs(value)
  %3727 = fsub fast float 1.000000e+00, %3726
  %3728 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3729 = fsub fast float %3727, %3728
  %3730 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3729)  ; FMax(a,b)
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3723, float %3725, float %3730, float %3723, float %3725, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = bitcast float %3731 to i32
  %3733 = ashr i32 %3732, 1
  %3734 = sub nsw i32 1597250115, %3733
  %3735 = bitcast i32 %3734 to float
  %3736 = fmul fast float %3735, %3723
  %3737 = fmul fast float %3735, %3725
  %3738 = fmul fast float %3735, %3730
  %3739 = fsub fast float 1.000000e+00, %3714
  %3740 = fdiv fast float %3739, %3738
  %3741 = fmul fast float %3738, %57
  %3742 = fmul fast float %3738, %58
  %3743 = fmul fast float %3738, %59
  %3744 = fmul fast float %3736, %53
  %3745 = fmul fast float %3736, %54
  %3746 = fmul fast float %3736, %55
  %3747 = fadd fast float %3741, %3744
  %3748 = fadd fast float %3742, %3745
  %3749 = fadd fast float %3743, %3746
  %3750 = fmul fast float %3737, %89
  %3751 = fmul fast float %3737, %90
  %3752 = fmul fast float %3737, %91
  %3753 = fadd fast float %3747, %3750
  %3754 = fadd fast float %3748, %3751
  %3755 = fadd fast float %3749, %3752
  %3756 = call float @dx.op.dot3.f32(i32 55, float %3753, float %3754, float %3755, float %3753, float %3754, float %3755)  ; Dot3(ax,ay,az,bx,by,bz)
  %3757 = call float @dx.op.unary.f32(i32 25, float %3756)  ; Rsqrt(value)
  %3758 = fmul fast float %3753, %3757
  %3759 = fmul fast float %3754, %3757
  %3760 = fmul fast float %3755, %3757
  %3761 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3636, float %3637, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = fmul fast float %3762, 5.000000e-01
  %3764 = fadd fast float %3763, 5.000000e-01
  %3765 = fmul fast float %3764, %3714
  %3766 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3636, float %3637, float %3758, float %3759, float %3760)  ; Dot3(ax,ay,az,bx,by,bz)
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = fmul fast float %3767, %3740
  %3769 = fadd fast float %3765, %3768
  %3770 = fsub fast float 5.000000e-01, %3763
  %3771 = fmul fast float %3770, %3629
  %3772 = fmul fast float %3770, %3630
  %3773 = fmul fast float %3770, %3631
  %3774 = fadd fast float %3769, %3771
  %3775 = fmul fast float %3774, %3710
  %3776 = fadd fast float %3769, %3772
  %3777 = fmul fast float %3776, %3711
  %3778 = fadd fast float %3769, %3773
  %3779 = fmul fast float %3778, %3712
  %3780 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = fmul fast float %3781, 5.000000e-01
  %3783 = fadd fast float %3782, 5.000000e-01
  %3784 = fmul fast float %3783, %3714
  %3785 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3758, float %3759, float %3760)  ; Dot3(ax,ay,az,bx,by,bz)
  %3786 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3787 = fmul fast float %3786, %3740
  %3788 = fadd fast float %3784, %3787
  %3789 = fsub fast float 5.000000e-01, %3782
  %3790 = fmul fast float %3789, %3629
  %3791 = fmul fast float %3789, %3630
  %3792 = fmul fast float %3789, %3631
  %3793 = fadd fast float %3788, %3790
  %3794 = fmul fast float %3793, %3710
  %3795 = fadd fast float %3788, %3791
  %3796 = fmul fast float %3795, %3711
  %3797 = fadd fast float %3788, %3792
  %3798 = fmul fast float %3797, %3712
  br label %3799

; <label>:3799                                    ; preds = %3701, %3698
  %3800 = phi float [ %3794, %3701 ], [ 0.000000e+00, %3698 ]
  %3801 = phi float [ %3796, %3701 ], [ 0.000000e+00, %3698 ]
  %3802 = phi float [ %3798, %3701 ], [ 0.000000e+00, %3698 ]
  %3803 = phi float [ %3775, %3701 ], [ 0.000000e+00, %3698 ]
  %3804 = phi float [ %3777, %3701 ], [ 0.000000e+00, %3698 ]
  %3805 = phi float [ %3779, %3701 ], [ 0.000000e+00, %3698 ]
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = fcmp fast ogt float %3807, 0.000000e+00
  %3809 = and i1 %3700, %3808
  br i1 %3809, label %3810, label %4014, !dx.controlflow.hints !87

; <label>:3810                                    ; preds = %3799
  %3811 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3812 = fadd fast float %3811, %127
  %3813 = fmul fast float %3635, 3.200000e+01
  %3814 = fmul fast float %3636, 3.200000e+01
  %3815 = fadd fast float %3658, %3813
  %3816 = fadd fast float %3659, %3814
  %3817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3818 = extractvalue %dx.types.CBufRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.CBufRet.f32 %3817, 1
  %3820 = fsub fast float %3815, %3818
  %3821 = fsub fast float %3816, %3819
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.CBufRet.f32 %3822, 1
  %3825 = fmul fast float %3820, %3823
  %3826 = fmul fast float %3821, %3824
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.CBufRet.f32 %3827, 1
  %3830 = fsub fast float %3658, %3828
  %3831 = fsub fast float %3659, %3829
  %3832 = fmul fast float %3830, %3830
  %3833 = fmul fast float %3831, %3831
  %3834 = fadd fast float %3832, %3833
  %3835 = call float @dx.op.unary.f32(i32 24, float %3834)  ; Sqrt(value)
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3839 = fsub fast float %3835, %3837
  %3840 = fdiv fast float %3839, %3838
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fmul fast float %3841, 2.000000e+00
  %3843 = fsub fast float 3.000000e+00, %3842
  %3844 = fmul fast float %3841, %3841
  %3845 = fmul fast float %3844, %3843
  %3846 = fcmp fast oge float %3825, 0.000000e+00
  %3847 = fcmp fast ole float %3825, 1.000000e+00
  %3848 = and i1 %3847, %3846
  %3849 = fcmp fast oge float %3826, 0.000000e+00
  %3850 = and i1 %3849, %3848
  %3851 = fcmp fast ole float %3826, 1.000000e+00
  %3852 = and i1 %3851, %3850
  %3853 = fcmp fast ogt float %3845, 0.000000e+00
  %3854 = and i1 %3853, %3852
  br i1 %3854, label %3855, label %3978, !dx.controlflow.hints !88

; <label>:3855                                    ; preds = %3810
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3858 = extractvalue %dx.types.CBufRet.f32 %3856, 3
  %3859 = fmul fast float %3857, %3825
  %3860 = fmul fast float %3858, %3826
  %3861 = call float @dx.op.unary.f32(i32 27, float %3859)  ; Round_ni(value)
  %3862 = call float @dx.op.unary.f32(i32 27, float %3860)  ; Round_ni(value)
  %3863 = fptosi float %3861 to i32
  %3864 = fptosi float %3862 to i32
  %3865 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3863, i32 %3864, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = lshr i32 %3866, 16
  %3868 = icmp eq i32 %3867, 65535
  br i1 %3868, label %3978, label %3869

; <label>:3869                                    ; preds = %3855
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = fmul fast float %3871, %3825
  %3873 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3874 = fadd fast float %3872, %3873
  %3875 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3876 = fmul fast float %3875, %3826
  %3877 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3878 = fadd fast float %3876, %3877
  %3879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3874, float %3878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 1
  %3884 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3885 = fsub fast float %3883, %3884
  %3886 = fmul fast float %3885, %3880
  %3887 = fadd fast float %3886, %3884
  %3888 = extractvalue %dx.types.CBufRet.f32 %3882, 3
  %3889 = extractvalue %dx.types.CBufRet.f32 %3882, 2
  %3890 = fsub fast float %3888, %3889
  %3891 = fmul fast float %3890, %3881
  %3892 = fadd fast float %3891, %3889
  %3893 = fsub fast float %3812, %3887
  %3894 = fsub fast float %3892, %3887
  %3895 = fdiv fast float %3893, %3894
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %3898 = extractvalue %dx.types.CBufRet.f32 %3856, 0
  %3899 = extractvalue %dx.types.CBufRet.f32 %3856, 1
  %3900 = fmul fast float %3898, %3825
  %3901 = fmul fast float %3899, %3826
  %3902 = fmul fast float %3900, 1.250000e-01
  %3903 = fmul fast float %3901, 1.250000e-01
  %3904 = call float @dx.op.unary.f32(i32 27, float %3902)  ; Round_ni(value)
  %3905 = call float @dx.op.unary.f32(i32 27, float %3903)  ; Round_ni(value)
  %3906 = fmul fast float %3904, 8.000000e+00
  %3907 = fmul fast float %3905, 8.000000e+00
  %3908 = fsub fast float %3900, %3906
  %3909 = fsub fast float %3901, %3907
  %3910 = fadd fast float %3908, 5.000000e-01
  %3911 = fadd fast float %3909, 5.000000e-01
  %3912 = and i32 %3867, 255
  %3913 = lshr i32 %3866, 24
  %3914 = mul nuw nsw i32 %3912, 9
  %3915 = uitofp i32 %3914 to float
  %3916 = mul nuw nsw i32 %3913, 9
  %3917 = uitofp i32 %3916 to float
  %3918 = fadd fast float %3910, %3915
  %3919 = fadd fast float %3911, %3917
  %3920 = fdiv fast float %3918, %3807
  %3921 = fdiv fast float %3919, %3897
  %3922 = fmul fast float %3896, 4.375000e-01
  %3923 = fadd fast float %3922, 3.125000e-02
  %3924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3920, float %3921, float %3923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = fadd fast float %3922, 5.312500e-01
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3920, float %3921, float %3928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = fmul fast float %3930, 2.000000e+00
  %3934 = fmul fast float %3931, 2.000000e+00
  %3935 = fmul fast float %3932, 2.000000e+00
  %3936 = fadd fast float %3933, -1.000000e+00
  %3937 = fadd fast float %3934, -1.000000e+00
  %3938 = fadd fast float %3935, -1.000000e+00
  %3939 = fmul fast float %3936, %3936
  %3940 = fmul fast float %3937, %3937
  %3941 = fadd fast float %3939, %3940
  %3942 = fmul fast float %3938, %3938
  %3943 = fadd fast float %3941, %3942
  %3944 = call float @dx.op.unary.f32(i32 24, float %3943)  ; Sqrt(value)
  %3945 = fcmp fast ogt float %3944, 0.000000e+00
  br i1 %3945, label %3946, label %3950

; <label>:3946                                    ; preds = %3869
  %3947 = fdiv fast float %3936, %3944
  %3948 = fdiv fast float %3937, %3944
  %3949 = fdiv fast float %3938, %3944
  br label %3950

; <label>:3950                                    ; preds = %3946, %3869
  %3951 = phi float [ %3947, %3946 ], [ 0.000000e+00, %3869 ]
  %3952 = phi float [ %3948, %3946 ], [ 0.000000e+00, %3869 ]
  %3953 = phi float [ %3949, %3946 ], [ 0.000000e+00, %3869 ]
  %3954 = call float @dx.op.dot3.f32(i32 55, float %3951, float %3952, float %3953, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3954)  ; FMax(a,b)
  %3956 = fmul fast float %3955, 0x400C5BF8A0000000
  %3957 = fmul fast float %3925, %3845
  %3958 = fmul fast float %3957, %3956
  %3959 = fmul fast float %3926, %3845
  %3960 = fmul fast float %3959, %3956
  %3961 = fmul fast float %3927, %3845
  %3962 = fmul fast float %3961, %3956
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3965 = fmul fast float %3958, %3964
  %3966 = fmul fast float %3960, %3964
  %3967 = fmul fast float %3962, %3964
  %3968 = fcmp fast ogt float %3812, %3892
  br i1 %3968, label %3969, label %3978

; <label>:3969                                    ; preds = %3950
  %3970 = fmul fast float %3894, 0x3FC24924A0000000
  %3971 = fsub fast float %3812, %3892
  %3972 = fdiv fast float %3971, %3970
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fsub fast float 1.000000e+00, %3973
  %3975 = fmul fast float %3974, %3965
  %3976 = fmul fast float %3974, %3966
  %3977 = fmul fast float %3974, %3967
  br label %3978

; <label>:3978                                    ; preds = %3969, %3950, %3855, %3810
  %3979 = phi float [ %3977, %3969 ], [ %3967, %3950 ], [ 0.000000e+00, %3855 ], [ 0.000000e+00, %3810 ]
  %3980 = phi float [ %3976, %3969 ], [ %3966, %3950 ], [ 0.000000e+00, %3855 ], [ 0.000000e+00, %3810 ]
  %3981 = phi float [ %3975, %3969 ], [ %3965, %3950 ], [ 0.000000e+00, %3855 ], [ 0.000000e+00, %3810 ]
  %3982 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3981)  ; FMax(a,b)
  %3983 = fmul fast float %3982, 0x3FD20DD760000000
  %3984 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3985 = fmul fast float %3984, 0x3FDF454380000000
  %3986 = fmul fast float %3984, %3984
  %3987 = fmul fast float %3986, 0x3FEE471020000000
  %3988 = fadd fast float %3987, 0xBFD42F6020000000
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3982, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3985, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3980)  ; FMax(a,b)
  %3991 = fmul fast float %3990, 0x3FD20DD760000000
  %3992 = call float @dx.op.dot3.f32(i32 55, float %3990, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3985, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3993 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3979)  ; FMax(a,b)
  %3994 = fmul fast float %3993, 0x3FD20DD760000000
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3993, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3985, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = call float @dx.op.binary.f32(i32 35, float %3983, float 0.000000e+00)  ; FMax(a,b)
  %3997 = call float @dx.op.binary.f32(i32 35, float %3991, float 0.000000e+00)  ; FMax(a,b)
  %3998 = call float @dx.op.binary.f32(i32 35, float %3994, float 0.000000e+00)  ; FMax(a,b)
  %3999 = call float @dx.op.binary.f32(i32 35, float %3989, float 0.000000e+00)  ; FMax(a,b)
  %4000 = call float @dx.op.binary.f32(i32 35, float %3992, float 0.000000e+00)  ; FMax(a,b)
  %4001 = call float @dx.op.binary.f32(i32 35, float %3995, float 0.000000e+00)  ; FMax(a,b)
  %4002 = fmul fast float %3996, %3699
  %4003 = fmul fast float %3997, %3699
  %4004 = fmul fast float %3998, %3699
  %4005 = fadd fast float %4002, %3803
  %4006 = fadd fast float %4003, %3804
  %4007 = fadd fast float %4004, %3805
  %4008 = fmul fast float %3999, %3699
  %4009 = fmul fast float %4000, %3699
  %4010 = fmul fast float %4001, %3699
  %4011 = fadd fast float %4008, %3800
  %4012 = fadd fast float %4009, %3801
  %4013 = fadd fast float %4010, %3802
  br label %4014

; <label>:4014                                    ; preds = %3978, %3799
  %4015 = phi float [ %4011, %3978 ], [ %3800, %3799 ]
  %4016 = phi float [ %4012, %3978 ], [ %3801, %3799 ]
  %4017 = phi float [ %4013, %3978 ], [ %3802, %3799 ]
  %4018 = phi float [ %4005, %3978 ], [ %3803, %3799 ]
  %4019 = phi float [ %4006, %3978 ], [ %3804, %3799 ]
  %4020 = phi float [ %4007, %3978 ], [ %3805, %3799 ]
  %4021 = fcmp fast olt float %3699, 1.000000e+00
  br i1 %4021, label %4022, label %4840, !dx.controlflow.hints !89

; <label>:4022                                    ; preds = %4014
  %4023 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %4024 = fadd fast float %4023, %127
  %4025 = fmul fast float %3635, 3.200000e+01
  %4026 = fmul fast float %3636, 3.200000e+01
  %4027 = fadd fast float %3658, %4025
  %4028 = fadd fast float %3659, %4026
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4032 = fsub fast float %4027, %4030
  %4033 = fsub fast float %4028, %4031
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4037 = fmul fast float %4032, %4035
  %4038 = fmul fast float %4033, %4036
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = fmul fast float %4037, %4040
  %4042 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4043 = fadd fast float %4041, %4042
  %4044 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4045 = fmul fast float %4044, %4038
  %4046 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4047 = fadd fast float %4045, %4046
  %4048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4043, float %4047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4049 = extractvalue %dx.types.ResRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.ResRet.f32 %4048, 1
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4054 = fsub fast float %4052, %4053
  %4055 = fmul fast float %4054, %4049
  %4056 = fadd fast float %4055, %4053
  %4057 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4058 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4059 = fsub fast float %4057, %4058
  %4060 = fmul fast float %4059, %4050
  %4061 = fadd fast float %4060, %4058
  %4062 = fsub fast float %4024, %4056
  %4063 = fsub fast float %4061, %4056
  %4064 = fdiv fast float %4062, %4063
  %4065 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = fmul fast float %4067, %4065
  %4069 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4070 = fadd fast float %4068, %4069
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4043, float %4047, float %4070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4078 = extractvalue %dx.types.CBufRet.f32 %4075, 2
  %4079 = fmul fast float %4076, %4072
  %4080 = fmul fast float %4077, %4073
  %4081 = fmul fast float %4078, %4074
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4085 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4086 = fadd fast float %4079, %4083
  %4087 = fadd fast float %4080, %4084
  %4088 = fadd fast float %4081, %4085
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = fmul fast float %4090, %4037
  %4092 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4093 = fadd fast float %4091, %4092
  %4094 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4095 = fmul fast float %4094, %4038
  %4096 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4097 = fadd fast float %4095, %4096
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.CBufRet.f32 %4103, 1
  %4106 = extractvalue %dx.types.CBufRet.f32 %4103, 2
  %4107 = extractvalue %dx.types.CBufRet.f32 %4103, 3
  %4108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4093, float %4097, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4109 = extractvalue %dx.types.ResRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.ResRet.f32 %4108, 1
  %4111 = extractvalue %dx.types.ResRet.f32 %4108, 2
  %4112 = extractvalue %dx.types.ResRet.f32 %4108, 3
  %4113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4093, float %4097, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = extractvalue %dx.types.ResRet.f32 %4113, 1
  %4116 = extractvalue %dx.types.ResRet.f32 %4113, 2
  %4117 = extractvalue %dx.types.ResRet.f32 %4113, 3
  %4118 = fmul fast float %4109, %4086
  %4119 = fmul fast float %4114, %4086
  %4120 = fmul fast float %4116, %4086
  %4121 = fmul fast float %4112, %4086
  %4122 = fadd fast float %4118, %4099
  %4123 = fadd fast float %4119, %4100
  %4124 = fadd fast float %4120, %4101
  %4125 = fadd fast float %4121, %4102
  %4126 = fmul fast float %4110, %4086
  %4127 = fmul fast float %4115, %4086
  %4128 = fadd fast float %4126, %4104
  %4129 = fadd fast float %4127, %4105
  %4130 = fmul fast float %4111, %4086
  %4131 = fmul fast float %4117, %4086
  %4132 = fadd fast float %4130, %4106
  %4133 = fadd fast float %4131, %4107
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4093, float %4097, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4093, float %4097, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = fmul fast float %4135, %4087
  %4145 = fmul fast float %4140, %4087
  %4146 = fmul fast float %4142, %4087
  %4147 = fmul fast float %4138, %4087
  %4148 = fadd fast float %4122, %4144
  %4149 = fadd fast float %4123, %4145
  %4150 = fadd fast float %4124, %4146
  %4151 = fadd fast float %4125, %4147
  %4152 = fmul fast float %4136, %4087
  %4153 = fmul fast float %4141, %4087
  %4154 = fadd fast float %4128, %4152
  %4155 = fadd fast float %4129, %4153
  %4156 = fmul fast float %4137, %4087
  %4157 = fmul fast float %4143, %4087
  %4158 = fadd fast float %4132, %4156
  %4159 = fadd fast float %4133, %4157
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4093, float %4097, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = extractvalue %dx.types.ResRet.f32 %4160, 3
  %4165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4093, float %4097, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.ResRet.f32 %4165, 1
  %4168 = extractvalue %dx.types.ResRet.f32 %4165, 2
  %4169 = extractvalue %dx.types.ResRet.f32 %4165, 3
  %4170 = fmul fast float %4161, %4088
  %4171 = fmul fast float %4166, %4088
  %4172 = fmul fast float %4168, %4088
  %4173 = fmul fast float %4164, %4088
  %4174 = fadd fast float %4148, %4170
  %4175 = fadd fast float %4149, %4171
  %4176 = fadd fast float %4150, %4172
  %4177 = fadd fast float %4151, %4173
  %4178 = fmul fast float %4162, %4088
  %4179 = fmul fast float %4167, %4088
  %4180 = fadd fast float %4154, %4178
  %4181 = fadd fast float %4155, %4179
  %4182 = fmul fast float %4163, %4088
  %4183 = fmul fast float %4169, %4088
  %4184 = fadd fast float %4158, %4182
  %4185 = fadd fast float %4159, %4183
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = fsub fast float %3658, %4187
  %4189 = fsub fast float %4030, %3658
  %4190 = call float @dx.op.binary.f32(i32 35, float %4189, float %4188)  ; FMax(a,b)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4192 = fsub fast float %3659, %4191
  %4193 = fsub fast float %4031, %3659
  %4194 = call float @dx.op.binary.f32(i32 35, float %4193, float %4192)  ; FMax(a,b)
  %4195 = call float @dx.op.binary.f32(i32 35, float %4190, float %4194)  ; FMax(a,b)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4034, 3
  %4197 = fmul fast float %4196, %4195
  %4198 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4204 = fsub fast float %4200, %4174
  %4205 = fsub fast float %4201, %4175
  %4206 = fsub fast float %4202, %4176
  %4207 = fsub fast float %4203, %4177
  %4208 = fmul fast float %4204, %4198
  %4209 = fmul fast float %4205, %4198
  %4210 = fmul fast float %4206, %4198
  %4211 = fmul fast float %4207, %4198
  %4212 = fadd fast float %4208, %4174
  %4213 = fadd fast float %4209, %4175
  %4214 = fadd fast float %4210, %4176
  %4215 = fadd fast float %4211, %4177
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.CBufRet.f32 %4216, 1
  %4219 = fsub fast float %4217, %4180
  %4220 = fsub fast float %4218, %4181
  %4221 = fmul fast float %4219, %4198
  %4222 = fmul fast float %4220, %4198
  %4223 = fadd fast float %4221, %4180
  %4224 = fadd fast float %4222, %4181
  %4225 = extractvalue %dx.types.CBufRet.f32 %4216, 2
  %4226 = extractvalue %dx.types.CBufRet.f32 %4216, 3
  %4227 = fsub fast float %4225, %4184
  %4228 = fsub fast float %4226, %4185
  %4229 = fmul fast float %4227, %4198
  %4230 = fmul fast float %4228, %4198
  %4231 = fadd fast float %4229, %4184
  %4232 = fadd fast float %4230, %4185
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = fmul fast float %4234, %4212
  %4236 = fmul fast float %4234, %4213
  %4237 = fmul fast float %4234, %4214
  %4238 = fmul fast float %4234, %4215
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 0
  %4241 = fmul fast float %4240, %4223
  %4242 = fmul fast float %4240, %4224
  %4243 = fadd fast float %4241, %4235
  %4244 = fadd fast float %4242, %4237
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = fmul fast float %4246, %4231
  %4248 = fmul fast float %4246, %4232
  %4249 = fadd fast float %4243, %4247
  %4250 = fadd fast float %4244, %4248
  %4251 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4252 = fmul fast float %4251, %4212
  %4253 = fmul fast float %4251, %4213
  %4254 = fmul fast float %4251, %4214
  %4255 = fmul fast float %4251, %4215
  %4256 = extractvalue %dx.types.CBufRet.f32 %4239, 1
  %4257 = fmul fast float %4256, %4223
  %4258 = fmul fast float %4256, %4224
  %4259 = fadd fast float %4257, %4252
  %4260 = fadd fast float %4258, %4254
  %4261 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4262 = fmul fast float %4261, %4231
  %4263 = fmul fast float %4261, %4232
  %4264 = fadd fast float %4259, %4262
  %4265 = fadd fast float %4260, %4263
  %4266 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4267 = fmul fast float %4266, %4212
  %4268 = fmul fast float %4266, %4213
  %4269 = fmul fast float %4266, %4214
  %4270 = fmul fast float %4266, %4215
  %4271 = extractvalue %dx.types.CBufRet.f32 %4239, 2
  %4272 = fmul fast float %4271, %4223
  %4273 = fmul fast float %4271, %4224
  %4274 = fadd fast float %4272, %4267
  %4275 = fadd fast float %4273, %4269
  %4276 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4277 = fmul fast float %4276, %4231
  %4278 = fmul fast float %4276, %4232
  %4279 = fadd fast float %4274, %4277
  %4280 = fadd fast float %4275, %4278
  %4281 = fmul fast float %4268, %4268
  %4282 = fmul fast float %4280, %4280
  %4283 = fmul fast float %4270, %4270
  %4284 = fadd fast float %4283, %4281
  %4285 = fadd fast float %4284, %4282
  %4286 = call float @dx.op.unary.f32(i32 24, float %4285)  ; Sqrt(value)
  %4287 = fcmp fast ugt float %4286, 0.000000e+00
  br i1 %4287, label %4288, label %4303

; <label>:4288                                    ; preds = %4022
  %4289 = fsub fast float -0.000000e+00, %4270
  %4290 = fdiv fast float %4289, %4286
  %4291 = fsub fast float -0.000000e+00, %4268
  %4292 = fdiv fast float %4291, %4286
  %4293 = fdiv fast float %4280, %4286
  %4294 = fmul fast float %4279, 0x3FE279A760000000
  %4295 = fmul fast float %4292, %4268
  %4296 = fmul fast float %4293, %4280
  %4297 = fmul fast float %4290, %4270
  %4298 = fadd fast float %4295, %4297
  %4299 = fsub fast float %4298, %4296
  %4300 = call float @dx.op.unary.f32(i32 6, float %4299)  ; FAbs(value)
  %4301 = fadd fast float %4300, 0x3DDB7CDFE0000000
  %4302 = fdiv fast float %4294, %4301
  br label %4303

; <label>:4303                                    ; preds = %4288, %4022
  %4304 = phi float [ %4302, %4288 ], [ 1.000000e+00, %4022 ]
  %4305 = fmul fast float %4253, %4253
  %4306 = fmul fast float %4265, %4265
  %4307 = fmul fast float %4255, %4255
  %4308 = fadd fast float %4307, %4305
  %4309 = fadd fast float %4308, %4306
  %4310 = call float @dx.op.unary.f32(i32 24, float %4309)  ; Sqrt(value)
  %4311 = fcmp fast ugt float %4310, 0.000000e+00
  br i1 %4311, label %4312, label %4327

; <label>:4312                                    ; preds = %4303
  %4313 = fsub fast float -0.000000e+00, %4255
  %4314 = fdiv fast float %4313, %4310
  %4315 = fsub fast float -0.000000e+00, %4253
  %4316 = fdiv fast float %4315, %4310
  %4317 = fdiv fast float %4265, %4310
  %4318 = fmul fast float %4264, 0x3FE279A760000000
  %4319 = fmul fast float %4316, %4253
  %4320 = fmul fast float %4317, %4265
  %4321 = fmul fast float %4314, %4255
  %4322 = fadd fast float %4319, %4321
  %4323 = fsub fast float %4322, %4320
  %4324 = call float @dx.op.unary.f32(i32 6, float %4323)  ; FAbs(value)
  %4325 = fadd fast float %4324, 0x3DDB7CDFE0000000
  %4326 = fdiv fast float %4318, %4325
  br label %4327

; <label>:4327                                    ; preds = %4312, %4303
  %4328 = phi float [ %4326, %4312 ], [ 1.000000e+00, %4303 ]
  %4329 = call float @dx.op.binary.f32(i32 36, float %4328, float %4304)  ; FMin(a,b)
  %4330 = fmul fast float %4236, %4236
  %4331 = fmul fast float %4250, %4250
  %4332 = fmul fast float %4238, %4238
  %4333 = fadd fast float %4332, %4330
  %4334 = fadd fast float %4333, %4331
  %4335 = call float @dx.op.unary.f32(i32 24, float %4334)  ; Sqrt(value)
  %4336 = fcmp fast ugt float %4335, 0.000000e+00
  br i1 %4336, label %4337, label %4352

; <label>:4337                                    ; preds = %4327
  %4338 = fsub fast float -0.000000e+00, %4238
  %4339 = fdiv fast float %4338, %4335
  %4340 = fsub fast float -0.000000e+00, %4236
  %4341 = fdiv fast float %4340, %4335
  %4342 = fdiv fast float %4250, %4335
  %4343 = fmul fast float %4249, 0x3FE279A760000000
  %4344 = fmul fast float %4341, %4236
  %4345 = fmul fast float %4342, %4250
  %4346 = fmul fast float %4339, %4238
  %4347 = fadd fast float %4344, %4346
  %4348 = fsub fast float %4347, %4345
  %4349 = call float @dx.op.unary.f32(i32 6, float %4348)  ; FAbs(value)
  %4350 = fadd fast float %4349, 0x3DDB7CDFE0000000
  %4351 = fdiv fast float %4343, %4350
  br label %4352

; <label>:4352                                    ; preds = %4337, %4327
  %4353 = phi float [ %4351, %4337 ], [ 1.000000e+00, %4327 ]
  %4354 = call float @dx.op.binary.f32(i32 36, float %4353, float %4329)  ; FMin(a,b)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fcmp fast olt float %4355, 1.000000e+00
  br i1 %4356, label %4357, label %4367

; <label>:4357                                    ; preds = %4352
  %4358 = fmul fast float %4355, %4236
  %4359 = fmul fast float %4355, %4250
  %4360 = fmul fast float %4355, %4238
  %4361 = fmul fast float %4355, %4253
  %4362 = fmul fast float %4355, %4265
  %4363 = fmul fast float %4355, %4255
  %4364 = fmul fast float %4355, %4268
  %4365 = fmul fast float %4355, %4280
  %4366 = fmul fast float %4355, %4270
  br label %4367

; <label>:4367                                    ; preds = %4357, %4352
  %4368 = phi float [ %4364, %4357 ], [ %4268, %4352 ]
  %4369 = phi float [ %4365, %4357 ], [ %4280, %4352 ]
  %4370 = phi float [ %4366, %4357 ], [ %4270, %4352 ]
  %4371 = phi float [ %4361, %4357 ], [ %4253, %4352 ]
  %4372 = phi float [ %4362, %4357 ], [ %4265, %4352 ]
  %4373 = phi float [ %4363, %4357 ], [ %4255, %4352 ]
  %4374 = phi float [ %4358, %4357 ], [ %4236, %4352 ]
  %4375 = phi float [ %4359, %4357 ], [ %4250, %4352 ]
  %4376 = phi float [ %4360, %4357 ], [ %4238, %4352 ]
  %4377 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4249)  ; FMax(a,b)
  %4378 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4264)  ; FMax(a,b)
  %4379 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4279)  ; FMax(a,b)
  %4380 = fcmp fast oge float %4037, 0.000000e+00
  %4381 = and i1 %4380, %3808
  %4382 = fcmp fast ole float %4037, 1.000000e+00
  %4383 = and i1 %4382, %4381
  %4384 = fcmp fast oge float %4038, 0.000000e+00
  %4385 = and i1 %4384, %4383
  %4386 = fcmp fast ole float %4038, 1.000000e+00
  %4387 = and i1 %4386, %4385
  br i1 %4387, label %4388, label %4533, !dx.controlflow.hints !90

; <label>:4388                                    ; preds = %4367
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 2
  %4391 = extractvalue %dx.types.CBufRet.f32 %4389, 3
  %4392 = fmul fast float %4390, %4037
  %4393 = fmul fast float %4391, %4038
  %4394 = call float @dx.op.unary.f32(i32 27, float %4392)  ; Round_ni(value)
  %4395 = call float @dx.op.unary.f32(i32 27, float %4393)  ; Round_ni(value)
  %4396 = fptosi float %4394 to i32
  %4397 = fptosi float %4395 to i32
  %4398 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4396, i32 %4397, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4399 = extractvalue %dx.types.ResRet.i32 %4398, 0
  %4400 = and i32 %4399, 65535
  %4401 = lshr i32 %4399, 16
  %4402 = icmp eq i32 %4400, 65535
  br i1 %4402, label %4439, label %4403

; <label>:4403                                    ; preds = %4388
  %4404 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4406 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4407 = fmul fast float %4405, %4037
  %4408 = fmul fast float %4406, %4038
  %4409 = fmul fast float %4407, 1.250000e-01
  %4410 = fmul fast float %4408, 1.250000e-01
  %4411 = call float @dx.op.unary.f32(i32 27, float %4409)  ; Round_ni(value)
  %4412 = call float @dx.op.unary.f32(i32 27, float %4410)  ; Round_ni(value)
  %4413 = fmul fast float %4411, 8.000000e+00
  %4414 = fmul fast float %4412, 8.000000e+00
  %4415 = and i32 %4399, 255
  %4416 = lshr i32 %4399, 8
  %4417 = and i32 %4416, 255
  %4418 = mul nuw nsw i32 %4415, 9
  %4419 = uitofp i32 %4418 to float
  %4420 = mul nuw nsw i32 %4417, 9
  %4421 = uitofp i32 %4420 to float
  %4422 = fadd fast float %4419, 5.000000e-01
  %4423 = fadd fast float %4422, %4407
  %4424 = fsub fast float %4423, %4413
  %4425 = fadd fast float %4421, 5.000000e-01
  %4426 = fadd fast float %4425, %4408
  %4427 = fsub fast float %4426, %4414
  %4428 = fdiv fast float %4424, %3807
  %4429 = fdiv fast float %4427, %4404
  %4430 = fmul fast float %4065, 4.375000e-01
  %4431 = fadd fast float %4430, 3.125000e-02
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4428, float %4429, float %4431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = fadd fast float %4433, %4377
  %4437 = fadd fast float %4434, %4378
  %4438 = fadd fast float %4435, %4379
  br label %4439

; <label>:4439                                    ; preds = %4403, %4388
  %4440 = phi float [ %4438, %4403 ], [ %4379, %4388 ]
  %4441 = phi float [ %4437, %4403 ], [ %4378, %4388 ]
  %4442 = phi float [ %4436, %4403 ], [ %4377, %4388 ]
  %4443 = icmp eq i32 %4401, 65535
  br i1 %4443, label %4533, label %4444

; <label>:4444                                    ; preds = %4439
  %4445 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %4446 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4447 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4448 = fmul fast float %4446, %4037
  %4449 = fmul fast float %4447, %4038
  %4450 = fmul fast float %4448, 1.250000e-01
  %4451 = fmul fast float %4449, 1.250000e-01
  %4452 = call float @dx.op.unary.f32(i32 27, float %4450)  ; Round_ni(value)
  %4453 = call float @dx.op.unary.f32(i32 27, float %4451)  ; Round_ni(value)
  %4454 = fmul fast float %4452, 8.000000e+00
  %4455 = fmul fast float %4453, 8.000000e+00
  %4456 = fsub fast float %4448, %4454
  %4457 = fsub fast float %4449, %4455
  %4458 = fadd fast float %4456, 5.000000e-01
  %4459 = fadd fast float %4457, 5.000000e-01
  %4460 = and i32 %4401, 255
  %4461 = lshr i32 %4399, 24
  %4462 = mul nuw nsw i32 %4460, 9
  %4463 = uitofp i32 %4462 to float
  %4464 = mul nuw nsw i32 %4461, 9
  %4465 = uitofp i32 %4464 to float
  %4466 = fadd fast float %4458, %4463
  %4467 = fadd fast float %4459, %4465
  %4468 = fdiv fast float %4466, %3807
  %4469 = fdiv fast float %4467, %4445
  %4470 = fmul fast float %4065, 4.375000e-01
  %4471 = fadd fast float %4470, 3.125000e-02
  %4472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4468, float %4469, float %4471, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4473 = extractvalue %dx.types.ResRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.ResRet.f32 %4472, 1
  %4475 = extractvalue %dx.types.ResRet.f32 %4472, 2
  %4476 = fadd fast float %4470, 5.312500e-01
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4468, float %4469, float %4476, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.ResRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.ResRet.f32 %4477, 2
  %4481 = fmul fast float %4478, 2.000000e+00
  %4482 = fmul fast float %4479, 2.000000e+00
  %4483 = fmul fast float %4480, 2.000000e+00
  %4484 = fadd fast float %4481, -1.000000e+00
  %4485 = fadd fast float %4482, -1.000000e+00
  %4486 = fadd fast float %4483, -1.000000e+00
  %4487 = fmul fast float %4484, %4484
  %4488 = fmul fast float %4485, %4485
  %4489 = fadd fast float %4487, %4488
  %4490 = fmul fast float %4486, %4486
  %4491 = fadd fast float %4489, %4490
  %4492 = call float @dx.op.unary.f32(i32 24, float %4491)  ; Sqrt(value)
  %4493 = fcmp fast ogt float %4492, 0.000000e+00
  br i1 %4493, label %4494, label %4498

; <label>:4494                                    ; preds = %4444
  %4495 = fdiv fast float %4484, %4492
  %4496 = fdiv fast float %4485, %4492
  %4497 = fdiv fast float %4486, %4492
  br label %4498

; <label>:4498                                    ; preds = %4494, %4444
  %4499 = phi float [ %4495, %4494 ], [ 0.000000e+00, %4444 ]
  %4500 = phi float [ %4496, %4494 ], [ 0.000000e+00, %4444 ]
  %4501 = phi float [ %4497, %4494 ], [ 0.000000e+00, %4444 ]
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = fsub fast float %3658, %4503
  %4506 = fsub fast float %3659, %4504
  %4507 = fmul fast float %4505, %4505
  %4508 = fmul fast float %4506, %4506
  %4509 = fadd fast float %4507, %4508
  %4510 = call float @dx.op.unary.f32(i32 24, float %4509)  ; Sqrt(value)
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.CBufRet.f32 %4511, 1
  %4514 = fsub fast float %4510, %4512
  %4515 = fdiv fast float %4514, %4513
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fmul fast float %4516, 2.000000e+00
  %4518 = fsub fast float 3.000000e+00, %4517
  %4519 = fmul fast float %4516, %4516
  %4520 = fmul fast float %4519, %4518
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4499, float %4500, float %4501, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4521)  ; FMax(a,b)
  %4523 = fmul fast float %4522, 0x400C5BF8A0000000
  %4524 = fmul fast float %4520, %4473
  %4525 = fmul fast float %4524, %4523
  %4526 = fadd fast float %4525, %4442
  %4527 = fmul fast float %4520, %4474
  %4528 = fmul fast float %4527, %4523
  %4529 = fadd fast float %4528, %4441
  %4530 = fmul fast float %4520, %4475
  %4531 = fmul fast float %4530, %4523
  %4532 = fadd fast float %4531, %4440
  br label %4533

; <label>:4533                                    ; preds = %4498, %4439, %4367
  %4534 = phi float [ %4532, %4498 ], [ %4440, %4439 ], [ %4379, %4367 ]
  %4535 = phi float [ %4529, %4498 ], [ %4441, %4439 ], [ %4378, %4367 ]
  %4536 = phi float [ %4526, %4498 ], [ %4442, %4439 ], [ %4377, %4367 ]
  %4537 = fcmp fast ogt float %4024, %4061
  %4538 = and i1 %4380, %4537
  %4539 = and i1 %4382, %4538
  %4540 = and i1 %4384, %4539
  %4541 = and i1 %4386, %4540
  br i1 %4541, label %4542, label %4599, !dx.controlflow.hints !91

; <label>:4542                                    ; preds = %4533
  %4543 = fmul fast float %4063, 0x3FC24924A0000000
  %4544 = fsub fast float %4024, %4061
  %4545 = fdiv fast float %4544, %4543
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.CBufRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.CBufRet.f32 %4549, 2
  %4553 = fsub fast float %4548, %4536
  %4554 = fsub fast float %4550, %4374
  %4555 = fsub fast float %4551, %4375
  %4556 = fsub fast float %4552, %4376
  %4557 = fmul fast float %4553, %4546
  %4558 = fmul fast float %4554, %4546
  %4559 = fmul fast float %4555, %4546
  %4560 = fmul fast float %4556, %4546
  %4561 = fadd fast float %4557, %4536
  %4562 = fadd fast float %4558, %4374
  %4563 = fadd fast float %4559, %4375
  %4564 = fadd fast float %4560, %4376
  %4565 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.CBufRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.CBufRet.f32 %4566, 2
  %4570 = fsub fast float %4565, %4535
  %4571 = fsub fast float %4567, %4371
  %4572 = fsub fast float %4568, %4372
  %4573 = fsub fast float %4569, %4373
  %4574 = fmul fast float %4570, %4546
  %4575 = fmul fast float %4571, %4546
  %4576 = fmul fast float %4572, %4546
  %4577 = fmul fast float %4573, %4546
  %4578 = fadd fast float %4574, %4535
  %4579 = fadd fast float %4575, %4371
  %4580 = fadd fast float %4576, %4372
  %4581 = fadd fast float %4577, %4373
  %4582 = extractvalue %dx.types.CBufRet.f32 %4547, 2
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.CBufRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.CBufRet.f32 %4583, 2
  %4587 = fsub fast float %4582, %4534
  %4588 = fsub fast float %4584, %4368
  %4589 = fsub fast float %4585, %4369
  %4590 = fsub fast float %4586, %4370
  %4591 = fmul fast float %4587, %4546
  %4592 = fmul fast float %4588, %4546
  %4593 = fmul fast float %4589, %4546
  %4594 = fmul fast float %4590, %4546
  %4595 = fadd fast float %4591, %4534
  %4596 = fadd fast float %4592, %4368
  %4597 = fadd fast float %4593, %4369
  %4598 = fadd fast float %4594, %4370
  br label %4599

; <label>:4599                                    ; preds = %4542, %4533
  %4600 = phi float [ %4595, %4542 ], [ %4534, %4533 ]
  %4601 = phi float [ %4596, %4542 ], [ %4368, %4533 ]
  %4602 = phi float [ %4597, %4542 ], [ %4369, %4533 ]
  %4603 = phi float [ %4598, %4542 ], [ %4370, %4533 ]
  %4604 = phi float [ %4578, %4542 ], [ %4535, %4533 ]
  %4605 = phi float [ %4579, %4542 ], [ %4371, %4533 ]
  %4606 = phi float [ %4580, %4542 ], [ %4372, %4533 ]
  %4607 = phi float [ %4581, %4542 ], [ %4373, %4533 ]
  %4608 = phi float [ %4561, %4542 ], [ %4536, %4533 ]
  %4609 = phi float [ %4562, %4542 ], [ %4374, %4533 ]
  %4610 = phi float [ %4563, %4542 ], [ %4375, %4533 ]
  %4611 = phi float [ %4564, %4542 ], [ %4376, %4533 ]
  %4612 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4613 = fmul fast float %4612, %4608
  %4614 = fmul fast float %4612, %4604
  %4615 = fmul fast float %4612, %4600
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 3
  %4618 = fmul fast float %4613, %4617
  %4619 = fmul fast float %4614, %4617
  %4620 = fmul fast float %4615, %4617
  %4621 = fmul fast float %4609, 1.500000e+00
  %4622 = fmul fast float %4621, %4612
  %4623 = fmul fast float %4622, %4617
  %4624 = fmul fast float %4610, 1.500000e+00
  %4625 = fmul fast float %4624, %4612
  %4626 = fmul fast float %4625, %4617
  %4627 = fmul fast float %4611, 1.500000e+00
  %4628 = fmul fast float %4627, %4612
  %4629 = fmul fast float %4628, %4617
  %4630 = fmul fast float %4605, 1.500000e+00
  %4631 = fmul fast float %4630, %4612
  %4632 = fmul fast float %4631, %4617
  %4633 = fmul fast float %4606, 1.500000e+00
  %4634 = fmul fast float %4633, %4612
  %4635 = fmul fast float %4634, %4617
  %4636 = fmul fast float %4607, 1.500000e+00
  %4637 = fmul fast float %4636, %4612
  %4638 = fmul fast float %4637, %4617
  %4639 = fmul fast float %4601, 1.500000e+00
  %4640 = fmul fast float %4639, %4612
  %4641 = fmul fast float %4640, %4617
  %4642 = fmul fast float %4602, 1.500000e+00
  %4643 = fmul fast float %4642, %4612
  %4644 = fmul fast float %4643, %4617
  %4645 = fmul fast float %4603, 1.500000e+00
  %4646 = fmul fast float %4645, %4612
  %4647 = fmul fast float %4646, %4617
  %4648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4618)  ; FMax(a,b)
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4626, float %4629, float %4623, float %4626, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = fcmp fast oeq float %4649, 0.000000e+00
  %4651 = fcmp fast oeq float %4648, 0.000000e+00
  %4652 = or i1 %4651, %4650
  br i1 %4652, label %4682, label %4653

; <label>:4653                                    ; preds = %4599
  %4654 = fsub fast float -0.000000e+00, %4629
  %4655 = fsub fast float -0.000000e+00, %4623
  %4656 = call float @dx.op.unary.f32(i32 24, float %4649)  ; Sqrt(value)
  %4657 = fdiv fast float %4656, %4648
  %4658 = fcmp fast ogt float %4657, 0x3FFB6F8900000000
  %4659 = select i1 %4658, float 0x3FFB6F8900000000, float %4657
  %4660 = fmul fast float %4659, 0x3FE8A23460000000
  %4661 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4662 = call float @dx.op.binary.f32(i32 35, float %4659, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4663 = fmul fast float %4661, %4648
  %4664 = fmul fast float %4662, 0x3FF279A740000000
  %4665 = fadd fast float %4664, -1.000000e+00
  %4666 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4626, float %4654, float %4655, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = call float @dx.op.unary.f32(i32 25, float %4666)  ; Rsqrt(value)
  %4668 = fmul fast float %4667, %4654
  %4669 = fmul fast float %4667, %4655
  %4670 = fmul fast float %4667, %4626
  %4671 = fmul fast float %4665, %4665
  %4672 = fsub fast float 1.000000e+00, %4671
  %4673 = fmul fast float %4662, 0x40005F8BE0000000
  %4674 = fsub fast float 0x400C5BF8A0000000, %4673
  %4675 = fdiv fast float %4663, %4674
  %4676 = fmul fast float %4675, 0x3FEE31C3C0000000
  %4677 = fmul fast float %4676, %4672
  %4678 = fmul fast float %4662, 0x3FDACB7480000000
  %4679 = fadd fast float %4678, 0xBFD7347680000000
  %4680 = fmul fast float %4679, %4675
  %4681 = fmul fast float %4680, %4672
  br label %4682

; <label>:4682                                    ; preds = %4653, %4599
  %4683 = phi float [ %4668, %4653 ], [ 0.000000e+00, %4599 ]
  %4684 = phi float [ %4669, %4653 ], [ 0.000000e+00, %4599 ]
  %4685 = phi float [ %4670, %4653 ], [ 0.000000e+00, %4599 ]
  %4686 = phi float [ %4677, %4653 ], [ 0.000000e+00, %4599 ]
  %4687 = phi float [ %4681, %4653 ], [ 0.000000e+00, %4599 ]
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = fmul fast float %4688, %4688
  %4690 = fmul fast float %4689, 0x3FEE471020000000
  %4691 = fadd fast float %4690, 0xBFD42F6020000000
  %4692 = fmul fast float %4648, 0x3FD20DD760000000
  %4693 = fmul fast float %4691, %4687
  %4694 = fmul fast float %4686, 0x3FDF454380000000
  %4695 = fmul fast float %4694, %4688
  %4696 = fadd fast float %4695, %4692
  %4697 = fadd fast float %4696, %4693
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = fmul fast float %4698, 0x3FDF454380000000
  %4700 = fmul fast float %4698, %4698
  %4701 = fmul fast float %4700, 0x3FEE471020000000
  %4702 = fadd fast float %4701, 0xBFD42F6020000000
  %4703 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4686, float %4687, float 0x3FD20DD760000000, float %4699, float %4702)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4619)  ; FMax(a,b)
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4635, float %4638, float %4632, float %4635, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = fcmp fast oeq float %4705, 0.000000e+00
  %4707 = fcmp fast oeq float %4704, 0.000000e+00
  %4708 = or i1 %4707, %4706
  br i1 %4708, label %4738, label %4709

; <label>:4709                                    ; preds = %4682
  %4710 = fsub fast float -0.000000e+00, %4638
  %4711 = fsub fast float -0.000000e+00, %4632
  %4712 = call float @dx.op.unary.f32(i32 24, float %4705)  ; Sqrt(value)
  %4713 = fdiv fast float %4712, %4704
  %4714 = fcmp fast ogt float %4713, 0x3FFB6F8900000000
  %4715 = select i1 %4714, float 0x3FFB6F8900000000, float %4713
  %4716 = fmul fast float %4715, 0x3FE8A23460000000
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = call float @dx.op.binary.f32(i32 35, float %4715, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4719 = fmul fast float %4717, %4704
  %4720 = fmul fast float %4718, 0x3FF279A740000000
  %4721 = fadd fast float %4720, -1.000000e+00
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4710, float %4711, float %4635, float %4710, float %4711, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call float @dx.op.unary.f32(i32 25, float %4722)  ; Rsqrt(value)
  %4724 = fmul fast float %4723, %4710
  %4725 = fmul fast float %4723, %4711
  %4726 = fmul fast float %4723, %4635
  %4727 = fmul fast float %4721, %4721
  %4728 = fsub fast float 1.000000e+00, %4727
  %4729 = fmul fast float %4718, 0x40005F8BE0000000
  %4730 = fsub fast float 0x400C5BF8A0000000, %4729
  %4731 = fdiv fast float %4719, %4730
  %4732 = fmul fast float %4731, 0x3FEE31C3C0000000
  %4733 = fmul fast float %4732, %4728
  %4734 = fmul fast float %4718, 0x3FDACB7480000000
  %4735 = fadd fast float %4734, 0xBFD7347680000000
  %4736 = fmul fast float %4735, %4731
  %4737 = fmul fast float %4736, %4728
  br label %4738

; <label>:4738                                    ; preds = %4709, %4682
  %4739 = phi float [ %4724, %4709 ], [ 0.000000e+00, %4682 ]
  %4740 = phi float [ %4725, %4709 ], [ 0.000000e+00, %4682 ]
  %4741 = phi float [ %4726, %4709 ], [ 0.000000e+00, %4682 ]
  %4742 = phi float [ %4733, %4709 ], [ 0.000000e+00, %4682 ]
  %4743 = phi float [ %4737, %4709 ], [ 0.000000e+00, %4682 ]
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = fmul fast float %4744, %4744
  %4746 = fmul fast float %4745, 0x3FEE471020000000
  %4747 = fadd fast float %4746, 0xBFD42F6020000000
  %4748 = fmul fast float %4704, 0x3FD20DD760000000
  %4749 = fmul fast float %4747, %4743
  %4750 = fmul fast float %4742, 0x3FDF454380000000
  %4751 = fmul fast float %4750, %4744
  %4752 = fadd fast float %4751, %4748
  %4753 = fadd fast float %4752, %4749
  %4754 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = fmul fast float %4754, 0x3FDF454380000000
  %4756 = fmul fast float %4754, %4754
  %4757 = fmul fast float %4756, 0x3FEE471020000000
  %4758 = fadd fast float %4757, 0xBFD42F6020000000
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4704, float %4742, float %4743, float 0x3FD20DD760000000, float %4755, float %4758)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4620)  ; FMax(a,b)
  %4761 = call float @dx.op.dot3.f32(i32 55, float %4641, float %4644, float %4647, float %4641, float %4644, float %4647)  ; Dot3(ax,ay,az,bx,by,bz)
  %4762 = fcmp fast oeq float %4761, 0.000000e+00
  %4763 = fcmp fast oeq float %4760, 0.000000e+00
  %4764 = or i1 %4763, %4762
  br i1 %4764, label %4794, label %4765

; <label>:4765                                    ; preds = %4738
  %4766 = fsub fast float -0.000000e+00, %4647
  %4767 = fsub fast float -0.000000e+00, %4641
  %4768 = call float @dx.op.unary.f32(i32 24, float %4761)  ; Sqrt(value)
  %4769 = fdiv fast float %4768, %4760
  %4770 = fcmp fast ogt float %4769, 0x3FFB6F8900000000
  %4771 = select i1 %4770, float 0x3FFB6F8900000000, float %4769
  %4772 = fmul fast float %4771, 0x3FE8A23460000000
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = call float @dx.op.binary.f32(i32 35, float %4771, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4775 = fmul fast float %4773, %4760
  %4776 = fmul fast float %4774, 0x3FF279A740000000
  %4777 = fadd fast float %4776, -1.000000e+00
  %4778 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4767, float %4644, float %4766, float %4767, float %4644)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = call float @dx.op.unary.f32(i32 25, float %4778)  ; Rsqrt(value)
  %4780 = fmul fast float %4779, %4766
  %4781 = fmul fast float %4779, %4767
  %4782 = fmul fast float %4779, %4644
  %4783 = fmul fast float %4777, %4777
  %4784 = fsub fast float 1.000000e+00, %4783
  %4785 = fmul fast float %4774, 0x40005F8BE0000000
  %4786 = fsub fast float 0x400C5BF8A0000000, %4785
  %4787 = fdiv fast float %4775, %4786
  %4788 = fmul fast float %4787, 0x3FEE31C3C0000000
  %4789 = fmul fast float %4788, %4784
  %4790 = fmul fast float %4774, 0x3FDACB7480000000
  %4791 = fadd fast float %4790, 0xBFD7347680000000
  %4792 = fmul fast float %4791, %4787
  %4793 = fmul fast float %4792, %4784
  br label %4794

; <label>:4794                                    ; preds = %4765, %4738
  %4795 = phi float [ %4780, %4765 ], [ 0.000000e+00, %4738 ]
  %4796 = phi float [ %4781, %4765 ], [ 0.000000e+00, %4738 ]
  %4797 = phi float [ %4782, %4765 ], [ 0.000000e+00, %4738 ]
  %4798 = phi float [ %4789, %4765 ], [ 0.000000e+00, %4738 ]
  %4799 = phi float [ %4793, %4765 ], [ 0.000000e+00, %4738 ]
  %4800 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4796, float %4797, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = fmul fast float %4800, %4800
  %4802 = fmul fast float %4801, 0x3FEE471020000000
  %4803 = fadd fast float %4802, 0xBFD42F6020000000
  %4804 = fmul fast float %4760, 0x3FD20DD760000000
  %4805 = fmul fast float %4803, %4799
  %4806 = fmul fast float %4798, 0x3FDF454380000000
  %4807 = fmul fast float %4806, %4800
  %4808 = fadd fast float %4807, %4804
  %4809 = fadd fast float %4808, %4805
  %4810 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4796, float %4797, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = fmul fast float %4810, 0x3FDF454380000000
  %4812 = fmul fast float %4810, %4810
  %4813 = fmul fast float %4812, 0x3FEE471020000000
  %4814 = fadd fast float %4813, 0xBFD42F6020000000
  %4815 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4798, float %4799, float 0x3FD20DD760000000, float %4811, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4697, float 0.000000e+00)  ; FMax(a,b)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4753, float 0.000000e+00)  ; FMax(a,b)
  %4818 = call float @dx.op.binary.f32(i32 35, float %4809, float 0.000000e+00)  ; FMax(a,b)
  %4819 = call float @dx.op.binary.f32(i32 35, float %4703, float 0.000000e+00)  ; FMax(a,b)
  %4820 = call float @dx.op.binary.f32(i32 35, float %4759, float 0.000000e+00)  ; FMax(a,b)
  %4821 = call float @dx.op.binary.f32(i32 35, float %4815, float 0.000000e+00)  ; FMax(a,b)
  %4822 = fsub fast float %4018, %4816
  %4823 = fsub fast float %4019, %4817
  %4824 = fsub fast float %4020, %4818
  %4825 = fmul fast float %4822, %3699
  %4826 = fmul fast float %4823, %3699
  %4827 = fmul fast float %4824, %3699
  %4828 = fadd fast float %4825, %4816
  %4829 = fadd fast float %4826, %4817
  %4830 = fadd fast float %4827, %4818
  %4831 = fsub fast float %4015, %4819
  %4832 = fsub fast float %4016, %4820
  %4833 = fsub fast float %4017, %4821
  %4834 = fmul fast float %4831, %3699
  %4835 = fmul fast float %4832, %3699
  %4836 = fmul fast float %4833, %3699
  %4837 = fadd fast float %4834, %4819
  %4838 = fadd fast float %4835, %4820
  %4839 = fadd fast float %4836, %4821
  br label %4840

; <label>:4840                                    ; preds = %4794, %4014
  %4841 = phi float [ %4837, %4794 ], [ %4015, %4014 ]
  %4842 = phi float [ %4838, %4794 ], [ %4016, %4014 ]
  %4843 = phi float [ %4839, %4794 ], [ %4017, %4014 ]
  %4844 = phi float [ %4828, %4794 ], [ %4018, %4014 ]
  %4845 = phi float [ %4829, %4794 ], [ %4019, %4014 ]
  %4846 = phi float [ %4830, %4794 ], [ %4020, %4014 ]
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = call float @dx.op.binary.f32(i32 36, float %3629, float %4848)  ; FMin(a,b)
  %4850 = fsub fast float 1.000000e+00, %3651
  %4851 = fmul fast float %4849, %4850
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = call float @dx.op.binary.f32(i32 36, float %3630, float %4848)  ; FMin(a,b)
  %4857 = fmul fast float %4856, %4850
  %4858 = fsub fast float 1.000000e+00, %4857
  %4859 = bitcast float %4858 to i32
  %4860 = sub nsw i32 2129859010, %4859
  %4861 = bitcast i32 %4860 to float
  %4862 = call float @dx.op.binary.f32(i32 36, float %3631, float %4848)  ; FMin(a,b)
  %4863 = fmul fast float %4862, %4850
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = bitcast float %4864 to i32
  %4866 = sub nsw i32 2129859010, %4865
  %4867 = bitcast i32 %4866 to float
  %4868 = fmul fast float %4844, %3651
  %4869 = fmul fast float %4868, %4855
  %4870 = fmul fast float %4845, %3651
  %4871 = fmul fast float %4870, %4861
  %4872 = fmul fast float %4846, %3651
  %4873 = fmul fast float %4872, %4867
  %4874 = call float @dx.op.binary.f32(i32 36, float %3632, float %4848)  ; FMin(a,b)
  %4875 = fmul fast float %4874, %4850
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = bitcast float %4876 to i32
  %4878 = sub nsw i32 2129859010, %4877
  %4879 = bitcast i32 %4878 to float
  %4880 = call float @dx.op.binary.f32(i32 36, float %3633, float %4848)  ; FMin(a,b)
  %4881 = fmul fast float %4880, %4850
  %4882 = fsub fast float 1.000000e+00, %4881
  %4883 = bitcast float %4882 to i32
  %4884 = sub nsw i32 2129859010, %4883
  %4885 = bitcast i32 %4884 to float
  %4886 = call float @dx.op.binary.f32(i32 36, float %3640, float %4848)  ; FMin(a,b)
  %4887 = fmul fast float %4886, %4850
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = bitcast float %4888 to i32
  %4890 = sub nsw i32 2129859010, %4889
  %4891 = bitcast i32 %4890 to float
  %4892 = fmul fast float %4841, %3651
  %4893 = fmul fast float %4892, %4879
  %4894 = fmul fast float %4842, %3651
  %4895 = fmul fast float %4894, %4885
  %4896 = fmul fast float %4843, %3651
  %4897 = fmul fast float %4896, %4891
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4871, float %4873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = select i1 %196, float 0.000000e+00, float %4869
  %4900 = select i1 %196, float %4898, float %4871
  %4901 = select i1 %196, float 0.000000e+00, float %4873
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4895, float %4897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = select i1 %196, float 0.000000e+00, float %4893
  %4904 = select i1 %196, float %4902, float %4895
  %4905 = select i1 %196, float 0.000000e+00, float %4897
  %4906 = fmul fast float %3642, 9.843750e-01
  %4907 = fmul fast float %3638, 9.843750e-01
  %4908 = fadd fast float %4906, 7.812500e-03
  %4909 = fadd fast float %4907, 7.812500e-03
  %4910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4908, float %4909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 2
  %4912 = extractvalue %dx.types.ResRet.f32 %4910, 3
  %4913 = fmul fast float %4911, %3632
  %4914 = fmul fast float %4911, %3633
  %4915 = fmul fast float %4911, %3640
  %4916 = fadd fast float %4913, %4912
  %4917 = fadd fast float %4914, %4912
  %4918 = fadd fast float %4915, %4912
  %4919 = fcmp fast ogt float %3006, 0.000000e+00
  br i1 %4919, label %4920, label %4946

; <label>:4920                                    ; preds = %4840
  %4921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3006, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = fadd fast float %4922, -5.000000e-01
  %4926 = fadd fast float %4923, -5.000000e-01
  %4927 = fadd fast float %4924, -5.000000e-01
  %4928 = fsub fast float 1.000000e+00, %3632
  %4929 = fsub fast float 1.000000e+00, %3633
  %4930 = fsub fast float 1.000000e+00, %3640
  %4931 = fmul fast float %3632, 4.000000e+00
  %4932 = fmul fast float %4931, %4928
  %4933 = fmul fast float %4932, %4925
  %4934 = fmul fast float %3633, 4.000000e+00
  %4935 = fmul fast float %4934, %4929
  %4936 = fmul fast float %4935, %4926
  %4937 = fmul fast float %3640, 4.000000e+00
  %4938 = fmul fast float %4937, %4930
  %4939 = fmul fast float %4938, %4927
  %4940 = fadd fast float %4933, %4916
  %4941 = fadd fast float %4936, %4917
  %4942 = fadd fast float %4939, %4918
  %4943 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  br label %4946

; <label>:4946                                    ; preds = %4920, %4840
  %4947 = phi float [ %4943, %4920 ], [ %4916, %4840 ]
  %4948 = phi float [ %4944, %4920 ], [ %4917, %4840 ]
  %4949 = phi float [ %4945, %4920 ], [ %4918, %4840 ]
  %4950 = call float @dx.op.binary.f32(i32 35, float %4948, float %4949)  ; FMax(a,b)
  %4951 = call float @dx.op.binary.f32(i32 35, float %4947, float %4950)  ; FMax(a,b)
  %4952 = fsub fast float 1.000000e+00, %4951
  %4953 = fmul fast float %4952, %4899
  %4954 = fmul fast float %4952, %4900
  %4955 = fmul fast float %4952, %4901
  %4956 = call float @dx.op.dot3.f32(i32 55, float %3629, float %3630, float %3631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = fcmp fast ogt float %4956, 0x3E7FF19E20000000
  %4958 = fdiv fast float 1.000000e+00, %4956
  %4959 = select i1 %4957, float %4958, float 0.000000e+00
  %4960 = fmul fast float %4959, %3629
  %4961 = fmul fast float %4959, %3630
  %4962 = fmul fast float %4959, %3631
  %4963 = fadd fast float %4960, -1.000000e+00
  %4964 = fadd fast float %4961, -1.000000e+00
  %4965 = fadd fast float %4962, -1.000000e+00
  %4966 = fmul fast float %4963, 5.000000e-01
  %4967 = fmul fast float %4964, 5.000000e-01
  %4968 = fmul fast float %4965, 5.000000e-01
  %4969 = fadd fast float %4966, 1.000000e+00
  %4970 = fadd fast float %4967, 1.000000e+00
  %4971 = fadd fast float %4968, 1.000000e+00
  %4972 = fmul fast float %4947, %4903
  %4973 = fmul fast float %4948, %4904
  %4974 = fmul fast float %4949, %4905
  %4975 = fsub fast float 1.000000e+00, %3642
  %4976 = bitcast float %4975 to i32
  %4977 = sitofp i32 %4976 to float
  %4978 = fmul fast float %4977, 5.000000e+00
  %4979 = fadd fast float %4978, 0xC1EFBF8940000000
  %4980 = fptosi float %4979 to i32
  %4981 = bitcast i32 %4980 to float
  %4982 = fmul fast float %4981, %3005
  %4983 = fmul fast float %4899, %4982
  %4984 = fmul fast float %4983, %4952
  %4985 = fmul fast float %4984, %4969
  %4986 = fmul fast float %4900, %4982
  %4987 = fmul fast float %4986, %4952
  %4988 = fmul fast float %4987, %4970
  %4989 = fmul fast float %4901, %4982
  %4990 = fmul fast float %4989, %4952
  %4991 = fmul fast float %4990, %4971
  %4992 = fmul fast float %4953, %3026
  %4993 = fmul fast float %4954, %3026
  %4994 = fmul fast float %4955, %3026
  %4995 = fadd fast float %4972, %3007
  %4996 = fadd fast float %4995, %4985
  %4997 = fmul fast float %4996, %3026
  %4998 = fadd fast float %4973, %3008
  %4999 = fadd fast float %4998, %4988
  %5000 = fmul fast float %4999, %3026
  %5001 = fadd fast float %4974, %3009
  %5002 = fadd fast float %5001, %4991
  %5003 = fmul fast float %5002, %3026
  %5004 = bitcast i32 %3654 to float
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5007 = fcmp fast oeq float %5006, 0.000000e+00
  br i1 %5007, label %5235, label %5008

; <label>:5008                                    ; preds = %4946
  %5009 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5010 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5011 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5019 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = select i1 %196, float %5017, float %5013
  %5021 = select i1 %196, float %5019, float %5014
  %5022 = select i1 %196, float %5018, float %5015
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5025 = fcmp fast une float %5024, 0.000000e+00
  br i1 %5025, label %5026, label %5043

; <label>:5026                                    ; preds = %5008
  %5027 = fptoui float %78 to i32
  %5028 = fptoui float %79 to i32
  %5029 = lshr i32 %5027, 4
  %5030 = lshr i32 %5028, 4
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 0
  %5033 = fptoui float %5032 to i32
  %5034 = add i32 %5033, 15
  %5035 = lshr i32 %5034, 4
  %5036 = mul i32 %5035, %5030
  %5037 = add i32 %5036, %5029
  %5038 = shl i32 %5037, 3
  %5039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5038, i32 undef)  ; BufferLoad(srv,index,wot)
  %5040 = extractvalue %dx.types.ResRet.i32 %5039, 0
  %5041 = and i32 %5040, -268435456
  %5042 = icmp eq i32 %5041, -1342177280
  br i1 %5042, label %5053, label %5043

; <label>:5043                                    ; preds = %5026, %5008
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %5046 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5047 = fmul fast float %5045, %78
  %5048 = fmul fast float %5046, %79
  %5049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5047, float %5048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.ResRet.f32 %5049, 2
  br label %5053

; <label>:5053                                    ; preds = %5043, %5026
  %5054 = phi float [ %5050, %5043 ], [ 0.000000e+00, %5026 ]
  %5055 = phi float [ %5051, %5043 ], [ 0.000000e+00, %5026 ]
  %5056 = phi float [ %5052, %5043 ], [ 0.000000e+00, %5026 ]
  %5057 = call float @dx.op.binary.f32(i32 36, float %5055, float %5056)  ; FMin(a,b)
  %5058 = call float @dx.op.binary.f32(i32 36, float %5054, float %5057)  ; FMin(a,b)
  %5059 = fcmp fast ogt float %5058, 0.000000e+00
  br i1 %5059, label %5060, label %5235, !dx.controlflow.hints !92

; <label>:5060                                    ; preds = %5053
  %5061 = fmul fast float %5054, %5020
  %5062 = fmul fast float %5055, %5021
  %5063 = fmul fast float %5056, %5022
  %5064 = fsub fast float %5009, %3628
  %5065 = fsub fast float %5010, %3627
  %5066 = fsub fast float %5011, %3626
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %5066, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 25, float %5067)  ; Rsqrt(value)
  %5069 = fmul fast float %5068, %5064
  %5070 = fmul fast float %5068, %5065
  %5071 = fmul fast float %5068, %5066
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5009, float %5010, float %5011, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.dot3.f32(i32 55, float %3625, float %3624, float %3623, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5075 = fmul fast float %5074, %5074
  %5076 = fmul fast float %5075, %5004
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fmul fast float %5077, %5074
  %5079 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3636, float %3637, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = fmul fast float %5079, %5079
  %5081 = call float @dx.op.unary.f32(i32 6, float %5072)  ; FAbs(value)
  %5082 = fsub fast float 1.000000e+00, %3638
  %5083 = call float @dx.op.binary.f32(i32 35, float %5082, float 0x3F847AE140000000)  ; FMax(a,b)
  %5084 = fmul fast float %5083, %5083
  %5085 = fmul fast float %5084, %5084
  %5086 = fsub fast float 1.000000e+00, %5085
  %5087 = fmul fast float %3642, %3642
  %5088 = fmul fast float %5087, %5086
  %5089 = fadd fast float %5088, %5085
  %5090 = bitcast float %5089 to i32
  %5091 = ashr i32 %5090, 1
  %5092 = add nsw i32 %5091, 532487669
  %5093 = bitcast i32 %5092 to float
  %5094 = fadd fast float %5093, %3642
  %5095 = fmul fast float %5085, %5080
  %5096 = fsub fast float 1.000000e+00, %5080
  %5097 = fadd fast float %5096, %5095
  %5098 = fmul fast float %5081, %5081
  %5099 = fmul fast float %5098, %5086
  %5100 = fadd fast float %5099, %5085
  %5101 = bitcast float %5100 to i32
  %5102 = ashr i32 %5101, 1
  %5103 = add nsw i32 %5102, 532487669
  %5104 = bitcast i32 %5103 to float
  %5105 = fadd fast float %5104, %5081
  %5106 = fmul fast float %5097, %5097
  %5107 = fmul fast float %5106, %5094
  %5108 = fmul fast float %5107, %5105
  %5109 = fdiv fast float 0x3FF0A00000000000, %5108
  %5110 = fmul fast float %5109, %5085
  %5111 = call float @dx.op.unary.f32(i32 6, float %5073)  ; FAbs(value)
  %5112 = fsub fast float 1.000000e+00, %5111
  %5113 = bitcast float %5112 to i32
  %5114 = sitofp i32 %5113 to float
  %5115 = fmul fast float %5114, 5.000000e+00
  %5116 = fadd fast float %5115, 0xC1EFBF8940000000
  %5117 = fptosi float %5116 to i32
  %5118 = bitcast i32 %5117 to float
  %5119 = fsub fast float 1.000000e+00, %3632
  %5120 = fsub fast float 1.000000e+00, %3633
  %5121 = fsub fast float 1.000000e+00, %3640
  %5122 = fmul fast float %5118, %5119
  %5123 = fmul fast float %5118, %5120
  %5124 = fmul fast float %5118, %5121
  %5125 = fadd fast float %5122, %3632
  %5126 = fadd fast float %5123, %3633
  %5127 = fadd fast float %5124, %3640
  br i1 %4919, label %5128, label %5151

; <label>:5128                                    ; preds = %5060
  %5129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3006, float %5111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5130 = extractvalue %dx.types.ResRet.f32 %5129, 0
  %5131 = extractvalue %dx.types.ResRet.f32 %5129, 1
  %5132 = extractvalue %dx.types.ResRet.f32 %5129, 2
  %5133 = fadd fast float %5130, -5.000000e-01
  %5134 = fadd fast float %5131, -5.000000e-01
  %5135 = fadd fast float %5132, -5.000000e-01
  %5136 = fmul fast float %3632, 4.000000e+00
  %5137 = fmul fast float %5136, %5119
  %5138 = fmul fast float %5137, %5133
  %5139 = fmul fast float %3633, 4.000000e+00
  %5140 = fmul fast float %5139, %5120
  %5141 = fmul fast float %5140, %5134
  %5142 = fmul fast float %3640, 4.000000e+00
  %5143 = fmul fast float %5142, %5121
  %5144 = fmul fast float %5143, %5135
  %5145 = fadd fast float %5138, %5125
  %5146 = fadd fast float %5141, %5126
  %5147 = fadd fast float %5144, %5127
  %5148 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  br label %5151

; <label>:5151                                    ; preds = %5128, %5060
  %5152 = phi float [ %5148, %5128 ], [ %5125, %5060 ]
  %5153 = phi float [ %5149, %5128 ], [ %5126, %5060 ]
  %5154 = phi float [ %5150, %5128 ], [ %5127, %5060 ]
  %5155 = fmul fast float %5072, 9.843750e-01
  %5156 = fadd fast float %5155, 7.812500e-03
  %5157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5156, float %4909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5158 = extractvalue %dx.types.ResRet.f32 %5157, 2
  %5159 = extractvalue %dx.types.ResRet.f32 %5157, 3
  %5160 = fmul fast float %5158, %3632
  %5161 = fmul fast float %5158, %3633
  %5162 = fmul fast float %5158, %3640
  %5163 = fadd fast float %5160, %5159
  %5164 = fadd fast float %5161, %5159
  %5165 = fadd fast float %5162, %5159
  br i1 %4919, label %5166, label %5189

; <label>:5166                                    ; preds = %5151
  %5167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3006, float %5072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5168 = extractvalue %dx.types.ResRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.ResRet.f32 %5167, 1
  %5170 = extractvalue %dx.types.ResRet.f32 %5167, 2
  %5171 = fadd fast float %5168, -5.000000e-01
  %5172 = fadd fast float %5169, -5.000000e-01
  %5173 = fadd fast float %5170, -5.000000e-01
  %5174 = fmul fast float %3632, 4.000000e+00
  %5175 = fmul fast float %5174, %5119
  %5176 = fmul fast float %5175, %5171
  %5177 = fmul fast float %3633, 4.000000e+00
  %5178 = fmul fast float %5177, %5120
  %5179 = fmul fast float %5178, %5172
  %5180 = fmul fast float %3640, 4.000000e+00
  %5181 = fmul fast float %5180, %5121
  %5182 = fmul fast float %5181, %5173
  %5183 = fadd fast float %5176, %5163
  %5184 = fadd fast float %5179, %5164
  %5185 = fadd fast float %5182, %5165
  %5186 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  br label %5189

; <label>:5189                                    ; preds = %5166, %5151
  %5190 = phi float [ %5186, %5166 ], [ %5163, %5151 ]
  %5191 = phi float [ %5187, %5166 ], [ %5164, %5151 ]
  %5192 = phi float [ %5188, %5166 ], [ %5165, %5151 ]
  %5193 = call float @dx.op.binary.f32(i32 35, float %5191, float %5192)  ; FMax(a,b)
  %5194 = call float @dx.op.binary.f32(i32 35, float %5190, float %5193)  ; FMax(a,b)
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = fmul fast float %5152, %5110
  %5197 = fmul fast float %5153, %5110
  %5198 = fmul fast float %5154, %5110
  %5199 = fsub fast float 1.000000e+00, %5073
  %5200 = bitcast float %5199 to i32
  %5201 = sitofp i32 %5200 to float
  %5202 = fmul fast float %5201, 5.000000e+00
  %5203 = fadd fast float %5202, 0xC1EFBF8940000000
  %5204 = fptosi float %5203 to i32
  %5205 = bitcast i32 %5204 to float
  %5206 = fmul fast float %5205, %3005
  %5207 = fmul fast float %5195, %5206
  %5208 = fmul fast float %5207, %4969
  %5209 = fmul fast float %5207, %4970
  %5210 = fmul fast float %5207, %4971
  %5211 = fadd fast float %5208, %5196
  %5212 = fadd fast float %5209, %5197
  %5213 = fadd fast float %5210, %5198
  %5214 = fmul fast float %5078, %5061
  %5215 = fmul fast float %5214, %5195
  %5216 = fmul fast float %5078, %5062
  %5217 = fmul fast float %5216, %5195
  %5218 = fmul fast float %5078, %5063
  %5219 = fmul fast float %5218, %5195
  %5220 = fmul fast float %5214, %5211
  %5221 = fmul fast float %5216, %5212
  %5222 = fmul fast float %5218, %5213
  %5223 = fadd fast float %5215, %4953
  %5224 = fmul fast float %5223, %3026
  %5225 = fadd fast float %5217, %4954
  %5226 = fmul fast float %5225, %3026
  %5227 = fadd fast float %5219, %4955
  %5228 = fmul fast float %5227, %3026
  %5229 = fadd fast float %5220, %4996
  %5230 = fmul fast float %5229, %3026
  %5231 = fadd fast float %5221, %4999
  %5232 = fmul fast float %5231, %3026
  %5233 = fadd fast float %5222, %5002
  %5234 = fmul fast float %5233, %3026
  br label %5235

; <label>:5235                                    ; preds = %5189, %5053, %4946
  %5236 = phi float [ %4997, %4946 ], [ %4997, %5053 ], [ %5230, %5189 ]
  %5237 = phi float [ %5000, %4946 ], [ %5000, %5053 ], [ %5232, %5189 ]
  %5238 = phi float [ %5003, %4946 ], [ %5003, %5053 ], [ %5234, %5189 ]
  %5239 = phi float [ %4992, %4946 ], [ %4992, %5053 ], [ %5224, %5189 ]
  %5240 = phi float [ %4993, %4946 ], [ %4993, %5053 ], [ %5226, %5189 ]
  %5241 = phi float [ %4994, %4946 ], [ %4994, %5053 ], [ %5228, %5189 ]
  %5242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.i32 %5242, 0
  %5244 = icmp eq i32 %5243, 0
  br i1 %5244, label %5679, label %5245

; <label>:5245                                    ; preds = %5235
  %5246 = fptoui float %78 to i32
  %5247 = fptoui float %79 to i32
  %5248 = lshr i32 %5246, 4
  %5249 = lshr i32 %5247, 4
  %5250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.i32 %5250, 0
  %5252 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5249, i32 %5251, i32 %5248)  ; UMad(a,b,c)
  %5253 = add nsw i32 %5243, -1
  %5254 = call i32 @dx.op.binary.i32(i32 37, i32 %5253, i32 0)  ; IMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5256 = fptoui float %5255 to i32
  %5257 = lshr i32 %5256, 5
  %5258 = call i32 @dx.op.binary.i32(i32 40, i32 %5257, i32 8191)  ; UMin(a,b)
  %5259 = shl i32 %5258, 2
  %5260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.i32 %5260, 0
  %5262 = lshr i32 %5261, 16
  %5263 = and i32 %5261, 65535
  %5264 = lshr i32 %5261, 21
  %5265 = lshr i32 %5263, 5
  %5266 = call i32 @dx.op.binary.i32(i32 40, i32 %5265, i32 %5254)  ; UMin(a,b)
  %5267 = icmp ugt i32 %5264, %5266
  br i1 %5267, label %5679, label %5268

; <label>:5268                                    ; preds = %5245
  br label %5269

; <label>:5269                                    ; preds = %5669, %5268
  %5270 = phi i32 [ %5676, %5669 ], [ %5264, %5268 ]
  %5271 = phi float [ %5670, %5669 ], [ %5236, %5268 ]
  %5272 = phi float [ %5671, %5669 ], [ %5237, %5268 ]
  %5273 = phi float [ %5672, %5669 ], [ %5238, %5268 ]
  %5274 = phi float [ %5673, %5669 ], [ %5239, %5268 ]
  %5275 = phi float [ %5674, %5669 ], [ %5240, %5268 ]
  %5276 = phi float [ %5675, %5669 ], [ %5241, %5268 ]
  %5277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.i32 %5277, 0
  %5279 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5252, i32 %5278, i32 %5270)  ; UMad(a,b,c)
  %5280 = shl i32 %5279, 2
  %5281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5280, i32 undef)  ; BufferLoad(srv,index,wot)
  %5282 = extractvalue %dx.types.ResRet.i32 %5281, 0
  %5283 = shl i32 %5270, 5
  %5284 = sub nsw i32 %5262, %5283
  %5285 = call i32 @dx.op.binary.i32(i32 37, i32 %5284, i32 0)  ; IMax(a,b)
  %5286 = call i32 @dx.op.binary.i32(i32 38, i32 %5285, i32 31)  ; IMin(a,b)
  %5287 = sub nsw i32 1, %5262
  %5288 = add nsw i32 %5287, %5263
  %5289 = call i32 @dx.op.binary.i32(i32 37, i32 %5288, i32 0)  ; IMax(a,b)
  %5290 = call i32 @dx.op.binary.i32(i32 38, i32 %5289, i32 32)  ; IMin(a,b)
  %5291 = and i32 %5290, 31
  %5292 = shl i32 -1, %5291
  %5293 = xor i32 %5292, -1
  %5294 = and i32 %5286, 31
  %5295 = shl i32 %5293, %5294
  %5296 = icmp eq i32 %5290, 32
  %5297 = select i1 %5296, i32 -1, i32 %5295
  %5298 = and i32 %5297, %5282
  %5299 = icmp eq i32 %5298, 0
  br i1 %5299, label %5669, label %5300

; <label>:5300                                    ; preds = %5269
  br label %5301

; <label>:5301                                    ; preds = %5381, %5300
  %5302 = phi i32 [ %5313, %5381 ], [ %5298, %5300 ]
  %5303 = phi float [ %5382, %5381 ], [ %5271, %5300 ]
  %5304 = phi float [ %5383, %5381 ], [ %5272, %5300 ]
  %5305 = phi float [ %5384, %5381 ], [ %5273, %5300 ]
  %5306 = phi float [ %5385, %5381 ], [ %5274, %5300 ]
  %5307 = phi float [ %5386, %5381 ], [ %5275, %5300 ]
  %5308 = phi float [ %5387, %5381 ], [ %5276, %5300 ]
  %5309 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5302)  ; FirstbitLo(value)
  %5310 = add i32 %5309, %5283
  %5311 = and i32 %5309, 31
  %5312 = shl i32 1, %5311
  %5313 = xor i32 %5312, %5302
  %5314 = mul i32 %5310, 112
  %5315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5314, i32 undef)  ; BufferLoad(srv,index,wot)
  %5316 = extractvalue %dx.types.ResRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.ResRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5315, 2
  %5319 = or i32 %5314, 12
  %5320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 0
  %5322 = add i32 %5314, 44
  %5323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5322, i32 undef)  ; BufferLoad(srv,index,wot)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 0
  %5325 = add i32 %5314, 48
  %5326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.ResRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.ResRet.f32 %5326, 2
  %5330 = add i32 %5314, 80
  %5331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5330, i32 undef)  ; BufferLoad(srv,index,wot)
  %5332 = extractvalue %dx.types.ResRet.f32 %5331, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5331, 2
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = select i1 %196, float %5332, float %5316
  %5336 = select i1 %196, float %5334, float %5317
  %5337 = select i1 %196, float %5333, float %5318
  %5338 = fsub fast float %5327, %125
  %5339 = fsub fast float %5328, %126
  %5340 = fsub fast float %5329, %127
  %5341 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %5338, float %5339, float %5340)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = call float @dx.op.unary.f32(i32 24, float %5341)  ; Sqrt(value)
  %5343 = fdiv fast float 1.000000e+00, %5342
  %5344 = fmul fast float %5343, %5338
  %5345 = fmul fast float %5343, %5339
  %5346 = fmul fast float %5343, %5340
  %5347 = fadd fast float %5342, %5321
  %5348 = fdiv fast float 1.000000e+00, %5347
  %5349 = fmul float %5324, %5348
  %5350 = fmul float %5349, %5349
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = and i32 %5312, %5298
  %5353 = icmp eq i32 %5352, 0
  br i1 %5353, label %5376, label %5354, !dx.controlflow.hints !93

; <label>:5354                                    ; preds = %5301
  %5355 = lshr i32 %5246, 5
  %5356 = lshr i32 %5247, 5
  %5357 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5355, i32 %5356, i32 %5310, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5358 = extractvalue %dx.types.ResRet.i32 %5357, 0
  %5359 = and i32 %5358, 3
  %5360 = icmp eq i32 %5359, 0
  %5361 = select i1 %5360, float 1.000000e+00, float 0.000000e+00
  %5362 = icmp eq i32 %5359, 3
  br i1 %5362, label %5363, label %5376

; <label>:5363                                    ; preds = %5354
  %5364 = lshr i32 %5358, 10
  %5365 = and i32 %5364, 8160
  %5366 = and i32 %5247, 31
  %5367 = or i32 %5365, %5366
  %5368 = lshr i32 %5358, 1
  %5369 = and i32 %5368, 16352
  %5370 = and i32 %5246, 31
  %5371 = or i32 %5369, %5370
  %5372 = lshr i32 %5358, 23
  %5373 = and i32 %5372, 255
  %5374 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5371, i32 %5367, i32 %5373, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  br label %5376

; <label>:5376                                    ; preds = %5363, %5354, %5301
  %5377 = phi float [ %5375, %5363 ], [ %5361, %5354 ], [ 0.000000e+00, %5301 ]
  %5378 = call float @dx.op.binary.f32(i32 36, float %5377, float %5377)  ; FMin(a,b)
  %5379 = call float @dx.op.binary.f32(i32 36, float %5377, float %5378)  ; FMin(a,b)
  %5380 = fcmp fast ogt float %5379, 0.000000e+00
  br i1 %5380, label %5389, label %5381, !dx.controlflow.hints !94

; <label>:5381                                    ; preds = %5625, %5376
  %5382 = phi float [ %5303, %5376 ], [ %5665, %5625 ]
  %5383 = phi float [ %5304, %5376 ], [ %5666, %5625 ]
  %5384 = phi float [ %5305, %5376 ], [ %5667, %5625 ]
  %5385 = phi float [ %5306, %5376 ], [ %5659, %5625 ]
  %5386 = phi float [ %5307, %5376 ], [ %5660, %5625 ]
  %5387 = phi float [ %5308, %5376 ], [ %5661, %5625 ]
  %5388 = icmp eq i32 %5302, %5312
  br i1 %5388, label %5668, label %5301

; <label>:5389                                    ; preds = %5376
  %5390 = fmul fast float %5377, %5335
  %5391 = fmul fast float %5377, %5336
  %5392 = fmul fast float %5377, %5337
  %5393 = fsub fast float %5329, %3428
  %5394 = fcmp fast ogt float %5393, 0.000000e+00
  %5395 = fsub fast float %127, %3428
  %5396 = fcmp fast ogt float %5395, 0.000000e+00
  %5397 = xor i1 %5396, %5394
  %5398 = fsub fast float %3428, %5329
  %5399 = fmul fast float %5398, 2.000000e+00
  %5400 = fadd fast float %5399, %5329
  %5401 = select i1 %5397, float %5329, float %5400
  %5402 = fsub fast float %5401, %127
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5402, float %5338, float %5339, float %5402)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = call float @dx.op.unary.f32(i32 25, float %5403)  ; Rsqrt(value)
  %5405 = fmul fast float %5404, %5338
  %5406 = fmul fast float %5404, %5339
  %5407 = fmul fast float %5404, %5402
  %5408 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = fdiv fast float 1.000000e+00, %5409
  %5411 = fmul fast float %5410, %5408
  %5412 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5395, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fcmp fast ogt float %5412, 0.000000e+00
  %5414 = fcmp fast olt float %5412, 0.000000e+00
  %5415 = zext i1 %5413 to i32
  %5416 = zext i1 %5414 to i32
  %5417 = sub nsw i32 %5415, %5416
  %5418 = sitofp i32 %5417 to float
  %5419 = fsub fast float %5401, %3428
  %5420 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5419, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5421 = fcmp fast ogt float %5420, 0.000000e+00
  %5422 = fcmp fast olt float %5420, 0.000000e+00
  %5423 = zext i1 %5421 to i32
  %5424 = zext i1 %5422 to i32
  %5425 = sub nsw i32 %5423, %5424
  %5426 = sitofp i32 %5425 to float
  %5427 = fcmp fast une float %5418, %5426
  br i1 %5427, label %5428, label %5438

; <label>:5428                                    ; preds = %5389
  %5429 = fmul fast float %5411, %5407
  %5430 = fmul fast float %5411, %5406
  %5431 = fmul fast float %5411, %5405
  %5432 = fmul fast float %5431, %5431
  %5433 = fmul fast float %5430, %5430
  %5434 = fadd fast float %5432, %5433
  %5435 = fmul fast float %5429, %5429
  %5436 = fadd fast float %5434, %5435
  %5437 = call float @dx.op.unary.f32(i32 24, float %5436)  ; Sqrt(value)
  br label %5450

; <label>:5438                                    ; preds = %5389
  %5439 = icmp slt i32 %5417, 0
  br i1 %5439, label %5440, label %5450

; <label>:5440                                    ; preds = %5438
  %5441 = fsub fast float %125, %5327
  %5442 = fsub fast float %126, %5328
  %5443 = fsub fast float %127, %5401
  %5444 = fmul fast float %5441, %5441
  %5445 = fmul fast float %5442, %5442
  %5446 = fadd fast float %5444, %5445
  %5447 = fmul fast float %5443, %5443
  %5448 = fadd fast float %5446, %5447
  %5449 = call float @dx.op.unary.f32(i32 24, float %5448)  ; Sqrt(value)
  br label %5450

; <label>:5450                                    ; preds = %5440, %5438, %5428
  %5451 = phi float [ %5437, %5428 ], [ %5449, %5440 ], [ 0.000000e+00, %5438 ]
  %5452 = and i1 %5396, %5394
  %5453 = fsub fast float -0.000000e+00, %5451
  %5454 = select i1 %5452, float -0.000000e+00, float %5453
  %5455 = fmul fast float %3429, 0x3FF7154760000000
  %5456 = fmul fast float %5455, %5454
  %5457 = fmul fast float %3430, 0x3FF7154760000000
  %5458 = fmul fast float %5457, %5454
  %5459 = fmul fast float %3431, 0x3FF7154760000000
  %5460 = fmul fast float %5459, %5454
  %5461 = call float @dx.op.unary.f32(i32 21, float %5456)  ; Exp(value)
  %5462 = call float @dx.op.unary.f32(i32 21, float %5458)  ; Exp(value)
  %5463 = call float @dx.op.unary.f32(i32 21, float %5460)  ; Exp(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5466 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5467 = fmul fast float %5390, %5464
  %5468 = fmul fast float %5391, %5465
  %5469 = fmul fast float %5392, %5466
  %5470 = fsub fast float %5344, %3628
  %5471 = fsub fast float %5345, %3627
  %5472 = fsub fast float %5346, %3626
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5472, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.unary.f32(i32 25, float %5473)  ; Rsqrt(value)
  %5475 = fmul fast float %5474, %5470
  %5476 = fmul fast float %5474, %5471
  %5477 = fmul fast float %5474, %5472
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5344, float %5345, float %5346, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.dot3.f32(i32 55, float %3625, float %3624, float %3623, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5481 = fmul fast float %5480, %5351
  %5482 = fmul fast float %5480, %5480
  %5483 = fmul fast float %5482, %5004
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fmul fast float %5481, %5484
  %5486 = bitcast float %5341 to i32
  %5487 = ashr i32 %5486, 1
  %5488 = sub nsw i32 1597463007, %5487
  %5489 = bitcast i32 %5488 to float
  %5490 = fmul fast float %5489, %5338
  %5491 = fmul fast float %5489, %5339
  %5492 = fmul fast float %5489, %5340
  %5493 = fsub fast float %5490, %3628
  %5494 = fsub fast float %5491, %3627
  %5495 = fsub fast float %5492, %3626
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.unary.f32(i32 25, float %5496)  ; Rsqrt(value)
  %5498 = fmul fast float %5493, %5497
  %5499 = fmul fast float %5494, %5497
  %5500 = fmul fast float %5495, %5497
  %5501 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3636, float %3637, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fmul fast float %5501, %5501
  %5503 = call float @dx.op.unary.f32(i32 6, float %5478)  ; FAbs(value)
  %5504 = fsub fast float 1.000000e+00, %3638
  %5505 = call float @dx.op.binary.f32(i32 35, float %5504, float 0x3F847AE140000000)  ; FMax(a,b)
  %5506 = fmul fast float %5505, %5505
  %5507 = fmul fast float %5506, %5506
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = fmul fast float %3642, %3642
  %5510 = fmul fast float %5509, %5508
  %5511 = fadd fast float %5510, %5507
  %5512 = bitcast float %5511 to i32
  %5513 = ashr i32 %5512, 1
  %5514 = add nsw i32 %5513, 532487669
  %5515 = bitcast i32 %5514 to float
  %5516 = fadd fast float %5515, %3642
  %5517 = fmul fast float %5507, %5502
  %5518 = fsub fast float 1.000000e+00, %5502
  %5519 = fadd fast float %5518, %5517
  %5520 = fmul fast float %5503, %5503
  %5521 = fmul fast float %5520, %5508
  %5522 = fadd fast float %5521, %5507
  %5523 = bitcast float %5522 to i32
  %5524 = ashr i32 %5523, 1
  %5525 = add nsw i32 %5524, 532487669
  %5526 = bitcast i32 %5525 to float
  %5527 = fadd fast float %5526, %5503
  %5528 = fmul fast float %5519, %5519
  %5529 = fmul fast float %5528, %5516
  %5530 = fmul fast float %5529, %5527
  %5531 = fdiv fast float 1.000000e+00, %5530
  %5532 = bitcast float %5507 to i32
  %5533 = sitofp i32 %5532 to float
  %5534 = fmul fast float %5533, 0x3FE7F73180000000
  %5535 = fadd fast float %5534, 0x41AFE27C40000000
  %5536 = fptosi float %5535 to i32
  %5537 = bitcast i32 %5536 to float
  %5538 = fmul fast float %5324, 0x3FD80E9D60000000
  %5539 = fmul fast float %5538, %5489
  %5540 = fadd fast float %5537, %5539
  %5541 = bitcast float %5540 to i32
  %5542 = sub nsw i32 2129859010, %5541
  %5543 = bitcast i32 %5542 to float
  %5544 = fmul fast float %5507, %5531
  %5545 = fmul fast float %5544, %5537
  %5546 = fmul fast float %5545, %5543
  %5547 = call float @dx.op.unary.f32(i32 6, float %5479)  ; FAbs(value)
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = bitcast float %5548 to i32
  %5550 = sitofp i32 %5549 to float
  %5551 = fmul fast float %5550, 5.000000e+00
  %5552 = fadd fast float %5551, 0xC1EFBF8940000000
  %5553 = fptosi float %5552 to i32
  %5554 = bitcast i32 %5553 to float
  %5555 = fsub fast float 1.000000e+00, %3632
  %5556 = fsub fast float 1.000000e+00, %3633
  %5557 = fsub fast float 1.000000e+00, %3640
  %5558 = fmul fast float %5554, %5555
  %5559 = fmul fast float %5554, %5556
  %5560 = fmul fast float %5554, %5557
  %5561 = fadd fast float %5558, %3632
  %5562 = fadd fast float %5559, %3633
  %5563 = fadd fast float %5560, %3640
  br i1 %4919, label %5564, label %5587

; <label>:5564                                    ; preds = %5450
  %5565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3006, float %5547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5566 = extractvalue %dx.types.ResRet.f32 %5565, 0
  %5567 = extractvalue %dx.types.ResRet.f32 %5565, 1
  %5568 = extractvalue %dx.types.ResRet.f32 %5565, 2
  %5569 = fadd fast float %5566, -5.000000e-01
  %5570 = fadd fast float %5567, -5.000000e-01
  %5571 = fadd fast float %5568, -5.000000e-01
  %5572 = fmul fast float %3632, 4.000000e+00
  %5573 = fmul fast float %5572, %5555
  %5574 = fmul fast float %5573, %5569
  %5575 = fmul fast float %3633, 4.000000e+00
  %5576 = fmul fast float %5575, %5556
  %5577 = fmul fast float %5576, %5570
  %5578 = fmul fast float %3640, 4.000000e+00
  %5579 = fmul fast float %5578, %5557
  %5580 = fmul fast float %5579, %5571
  %5581 = fadd fast float %5574, %5561
  %5582 = fadd fast float %5577, %5562
  %5583 = fadd fast float %5580, %5563
  %5584 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  br label %5587

; <label>:5587                                    ; preds = %5564, %5450
  %5588 = phi float [ %5584, %5564 ], [ %5561, %5450 ]
  %5589 = phi float [ %5585, %5564 ], [ %5562, %5450 ]
  %5590 = phi float [ %5586, %5564 ], [ %5563, %5450 ]
  %5591 = fmul fast float %5478, 9.843750e-01
  %5592 = fadd fast float %5591, 7.812500e-03
  %5593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5592, float %4909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 3
  %5596 = fmul fast float %5594, %3632
  %5597 = fmul fast float %5594, %3633
  %5598 = fmul fast float %5594, %3640
  %5599 = fadd fast float %5596, %5595
  %5600 = fadd fast float %5597, %5595
  %5601 = fadd fast float %5598, %5595
  br i1 %4919, label %5602, label %5625

; <label>:5602                                    ; preds = %5587
  %5603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3006, float %5478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5604 = extractvalue %dx.types.ResRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.ResRet.f32 %5603, 1
  %5606 = extractvalue %dx.types.ResRet.f32 %5603, 2
  %5607 = fadd fast float %5604, -5.000000e-01
  %5608 = fadd fast float %5605, -5.000000e-01
  %5609 = fadd fast float %5606, -5.000000e-01
  %5610 = fmul fast float %3632, 4.000000e+00
  %5611 = fmul fast float %5610, %5555
  %5612 = fmul fast float %5611, %5607
  %5613 = fmul fast float %3633, 4.000000e+00
  %5614 = fmul fast float %5613, %5556
  %5615 = fmul fast float %5614, %5608
  %5616 = fmul fast float %3640, 4.000000e+00
  %5617 = fmul fast float %5616, %5557
  %5618 = fmul fast float %5617, %5609
  %5619 = fadd fast float %5612, %5599
  %5620 = fadd fast float %5615, %5600
  %5621 = fadd fast float %5618, %5601
  %5622 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5624 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  br label %5625

; <label>:5625                                    ; preds = %5602, %5587
  %5626 = phi float [ %5622, %5602 ], [ %5599, %5587 ]
  %5627 = phi float [ %5623, %5602 ], [ %5600, %5587 ]
  %5628 = phi float [ %5624, %5602 ], [ %5601, %5587 ]
  %5629 = call float @dx.op.binary.f32(i32 35, float %5627, float %5628)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5626, float %5629)  ; FMax(a,b)
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = fmul fast float %5588, %5546
  %5633 = fmul fast float %5589, %5546
  %5634 = fmul fast float %5590, %5546
  %5635 = fsub fast float 1.000000e+00, %5479
  %5636 = bitcast float %5635 to i32
  %5637 = sitofp i32 %5636 to float
  %5638 = fmul fast float %5637, 5.000000e+00
  %5639 = fadd fast float %5638, 0xC1EFBF8940000000
  %5640 = fptosi float %5639 to i32
  %5641 = bitcast i32 %5640 to float
  %5642 = fmul fast float %5641, %3005
  %5643 = fmul fast float %5631, %5642
  %5644 = fmul fast float %5643, %4969
  %5645 = fmul fast float %5643, %4970
  %5646 = fmul fast float %5643, %4971
  %5647 = fadd fast float %5644, %5632
  %5648 = fadd fast float %5645, %5633
  %5649 = fadd fast float %5646, %5634
  %5650 = fmul fast float %5467, %3026
  %5651 = fmul fast float %5650, %5485
  %5652 = fmul fast float %5651, %5631
  %5653 = fmul fast float %5468, %3026
  %5654 = fmul fast float %5653, %5485
  %5655 = fmul fast float %5654, %5631
  %5656 = fmul fast float %5469, %3026
  %5657 = fmul fast float %5656, %5485
  %5658 = fmul fast float %5657, %5631
  %5659 = fadd fast float %5652, %5306
  %5660 = fadd fast float %5655, %5307
  %5661 = fadd fast float %5658, %5308
  %5662 = fmul fast float %5651, %5647
  %5663 = fmul fast float %5654, %5648
  %5664 = fmul fast float %5657, %5649
  %5665 = fadd fast float %5662, %5303
  %5666 = fadd fast float %5663, %5304
  %5667 = fadd fast float %5664, %5305
  br label %5381

; <label>:5668                                    ; preds = %5381
  br label %5669

; <label>:5669                                    ; preds = %5668, %5269
  %5670 = phi float [ %5271, %5269 ], [ %5382, %5668 ]
  %5671 = phi float [ %5272, %5269 ], [ %5383, %5668 ]
  %5672 = phi float [ %5273, %5269 ], [ %5384, %5668 ]
  %5673 = phi float [ %5274, %5269 ], [ %5385, %5668 ]
  %5674 = phi float [ %5275, %5269 ], [ %5386, %5668 ]
  %5675 = phi float [ %5276, %5269 ], [ %5387, %5668 ]
  %5676 = add i32 %5270, 1
  %5677 = icmp ugt i32 %5676, %5266
  br i1 %5677, label %5678, label %5269

; <label>:5678                                    ; preds = %5669
  br label %5679

; <label>:5679                                    ; preds = %5678, %5245, %5235
  %5680 = phi float [ %5236, %5235 ], [ %5236, %5245 ], [ %5670, %5678 ]
  %5681 = phi float [ %5237, %5235 ], [ %5237, %5245 ], [ %5671, %5678 ]
  %5682 = phi float [ %5238, %5235 ], [ %5238, %5245 ], [ %5672, %5678 ]
  %5683 = phi float [ %5239, %5235 ], [ %5239, %5245 ], [ %5673, %5678 ]
  %5684 = phi float [ %5240, %5235 ], [ %5240, %5245 ], [ %5674, %5678 ]
  %5685 = phi float [ %5241, %5235 ], [ %5241, %5245 ], [ %5675, %5678 ]
  %5686 = call float @dx.op.unary.f32(i32 24, float %3629)  ; Sqrt(value)
  %5687 = call float @dx.op.unary.f32(i32 24, float %3630)  ; Sqrt(value)
  %5688 = call float @dx.op.unary.f32(i32 24, float %3631)  ; Sqrt(value)
  %5689 = fmul fast float %5686, %5683
  %5690 = fmul fast float %5687, %5684
  %5691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5692 = extractvalue %dx.types.CBufRet.f32 %5691, 0
  br i1 %196, label %5693, label %5722

; <label>:5693                                    ; preds = %5679
  %5694 = fadd fast float %5685, %3003
  %5695 = fmul fast float %5694, %3004
  %5696 = fsub fast float 1.000000e+00, %3004
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 3
  %5700 = fmul fast float %5699, %5697
  %5701 = fadd fast float %5700, %5695
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = fmul fast float %5703, %4975
  %5705 = fsub fast float %5701, %5704
  %5706 = fadd fast float %5690, %5689
  %5707 = fmul fast float %5692, %5706
  %5708 = extractvalue %dx.types.CBufRet.f32 %5698, 1
  %5709 = fsub fast float %5705, %5708
  %5710 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5711 = fmul fast float %5709, %5710
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 0
  %5715 = fsub fast float %5712, %5714
  %5716 = fmul fast float %5715, 1.000000e+01
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fadd fast float %3002, -1.000000e+00
  %5719 = fmul fast float %5717, %5718
  %5720 = fadd fast float %5719, 1.000000e+00
  %5721 = fmul fast float %5720, %5712
  br label %5738

; <label>:5722                                    ; preds = %5679
  %5723 = fmul fast float %5688, %5685
  %5724 = fmul fast float %5692, %5689
  %5725 = fmul fast float %5692, %5690
  %5726 = fmul fast float %5723, %5692
  %5727 = add i32 %44, 308
  %5728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5727, i32 undef)  ; BufferLoad(srv,index,wot)
  %5729 = extractvalue %dx.types.ResRet.i32 %5728, 0
  %5730 = and i32 %5729, 32
  %5731 = icmp eq i32 %5730, 0
  br i1 %5731, label %5738, label %5732

; <label>:5732                                    ; preds = %5722
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = fmul fast float %5734, 0x3FE99999A0000000
  %5736 = fadd fast float %5734, %5724
  %5737 = fadd fast float %5735, %5726
  br label %5738

; <label>:5738                                    ; preds = %5732, %5722, %5693
  %5739 = phi float [ %5707, %5693 ], [ %5736, %5732 ], [ %5724, %5722 ]
  %5740 = phi float [ %5721, %5693 ], [ %5725, %5732 ], [ %5725, %5722 ]
  %5741 = phi float [ %5720, %5693 ], [ %5737, %5732 ], [ %5726, %5722 ]
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = fmul fast float %5743, %5681
  %5745 = fmul fast float %5743, %5682
  %5746 = fadd fast float %5681, %5680
  %5747 = select i1 %196, float %5746, float %5680
  %5748 = fmul float %5747, %5743
  %5749 = select i1 %196, float 0.000000e+00, float %5744
  %5750 = select i1 %196, float 0.000000e+00, float %5745
  %5751 = fmul fast float %5739, %5686
  %5752 = fmul fast float %5740, %5687
  %5753 = fmul fast float %5741, %5688
  %5754 = fadd fast float %5748, %5751
  %5755 = fadd fast float %5749, %5752
  %5756 = fadd fast float %5750, %5753
  %5757 = select i1 %196, float %5740, float %5755
  %5758 = select i1 %196, float %5741, float %5756
  %5759 = call float @dx.op.binary.f32(i32 36, float %5754, float 3.225500e+04)  ; FMin(a,b)
  %5760 = call float @dx.op.binary.f32(i32 36, float %5757, float 3.225500e+04)  ; FMin(a,b)
  %5761 = call float @dx.op.binary.f32(i32 36, float %5758, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5759)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5760)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5761)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[40 x i32] [i32 38, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !84}
!59 = !{!60, !82, null}
!60 = !{!61, !64, !66, !68, !71, !73, !74, !75, !76, !78, !80, !81}
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
!78 = !{i32 9, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 9, i8 0, !79}
!79 = !{i32 3, i32 1}
!80 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 9, i8 1, !79}
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

