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
; MATERIAL_DATA_OFFSET     0   x          10     NONE    uint   x   
; TRANSIENT_INDEX          0    y         10     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0b0b775c051f38cdeec15170d4b56f1a
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
; Number of inputs: 42, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %78
  %86 = fmul fast float %84, %79
  %87 = fmul fast float %62, %59
  %88 = fmul fast float %63, %58
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %63, %57
  %91 = fmul fast float %61, %59
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %61, %58
  %94 = fmul fast float %62, %57
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %89, %60
  %97 = fmul fast float %92, %60
  %98 = fmul fast float %95, %60
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = fmul fast float %100, 2.000000e+00
  %103 = fmul fast float %102, %85
  %104 = fmul fast float %101, 2.000000e+00
  %105 = fmul fast float %104, %86
  %106 = fsub fast float 1.000000e+00, %103
  %107 = fsub fast float 1.000000e+00, %105
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %106, %109
  %113 = fmul fast float %106, %110
  %114 = fmul fast float %106, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %107, %116
  %120 = fmul fast float %107, %117
  %121 = fmul fast float %107, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %126, %112
  %128 = fadd fast float %120, %124
  %129 = fadd fast float %128, %113
  %130 = fadd fast float %121, %125
  %131 = fadd fast float %130, %114
  %132 = fmul fast float %127, %80
  %133 = fmul fast float %129, %80
  %134 = fmul fast float %131, %80
  %135 = fadd fast float %66, 5.000000e-01
  %136 = fptoui float %135 to i32
  %137 = shl i32 %136, 3
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = or i32 %137, 4
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %139, 8191
  %144 = lshr i32 %139, 13
  %145 = and i32 %144, 8191
  %146 = lshr i32 %139, 26
  %147 = and i32 %142, 65535
  %148 = lshr i32 %142, 16
  %149 = uitofp i32 %147 to float
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %152 = uitofp i32 %148 to float
  %153 = uitofp i32 %143 to float
  %154 = fmul fast float %151, %153
  %155 = uitofp i32 %145 to float
  %156 = fmul fast float %151, %155
  %157 = fmul fast float %151, %64
  %158 = fmul fast float %157, %149
  %159 = fmul fast float %151, %65
  %160 = fmul fast float %159, %152
  %161 = fadd fast float %158, %154
  %162 = fadd fast float %156, %160
  %163 = uitofp i32 %146 to float
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %167 = fmul fast float %165, %85
  %168 = fmul fast float %166, %86
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = and i32 %170, 114688
  %172 = icmp ne i32 %171, 0
  %173 = select i1 %172, float %167, float 0.000000e+00
  %174 = select i1 %172, float %168, float 0.000000e+00
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fmul fast float %176, 2.550000e+02
  %178 = fptoui float %177 to i32
  %179 = select i1 %172, i32 %178, i32 0
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.i32 %181, 3
  %183 = and i32 %182, 3
  %184 = icmp ne i32 %183, 0
  %185 = and i32 %182, 4
  %186 = icmp ne i32 %185, 0
  %187 = and i1 %184, %186
  br i1 %187, label %188, label %199

; <label>:188                                     ; preds = %0
  %189 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %190 = fmul fast float %189, %86
  %191 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %192 = fmul fast float %191, %85
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %192, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = fcmp fast olt float %195, %197
  br label %202

; <label>:199                                     ; preds = %0
  %200 = icmp eq i32 %185, 0
  %201 = and i1 %184, %200
  br label %202

; <label>:202                                     ; preds = %199, %188
  %203 = phi i1 [ %198, %188 ], [ %201, %199 ]
  %204 = add i32 %44, 156
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = shl i32 %206, 4
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %206, 7
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %206, 22
  %214 = shl nuw nsw i32 %213, 5
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %44, 216
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %218, 8
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = lshr i32 %218, 16
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = add i32 %44, 36
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = add i32 %44, 288
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = add i32 %44, 172
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = shl i32 %238, 4
  %240 = and i32 %239, 32752
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %238, 7
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %238, 22
  %246 = shl nuw nsw i32 %245, 5
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %44, 232
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %250, 8
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %250, 16
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = add i32 %44, 52
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %44, 304
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = fmul fast float %273, 0x3F50624DE0000000
  %277 = fmul fast float %275, 0x3F50624DE0000000
  %278 = add i32 %44, 188
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = shl i32 %280, 4
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %280, 7
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %280, 22
  %288 = shl nuw nsw i32 %287, 5
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %44, 248
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %292, 8
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %292, 16
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = add i32 %44, 68
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %44, 320
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = fmul fast float %315, 0x3F50624DE0000000
  %319 = fmul fast float %317, 0x3F50624DE0000000
  %320 = add i32 %44, 204
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = shl i32 %322, 4
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %322, 7
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %322, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %44, 264
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %334, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %334, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = add i32 %44, 84
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %44, 336
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = fmul fast float %357, 0x3F50624DE0000000
  %361 = fmul fast float %359, 0x3F50624DE0000000
  %362 = add i32 %44, 348
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = lshr i32 %364, 20
  %366 = and i32 %365, 3
  %367 = add nuw nsw i32 %366, 1
  %368 = add i32 %44, 24
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = add i32 %44, 28
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = or i32 %373, %370
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %867, label %376

; <label>:376                                     ; preds = %202
  %377 = lshr i32 %235, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = fmul fast float %378, 0x3F50624DE0000000
  %380 = and i32 %235, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = fmul fast float %381, 0x3F50624DE0000000
  %383 = lshr i32 %232, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = and i32 %232, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %44, 284
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = lshr i32 %389, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = fmul fast float %391, 0x3F50624DE0000000
  %393 = add i32 %44, 88
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = lshr i32 %395, 16
  %397 = and i32 %396, 255
  %398 = lshr i32 %395, 24
  %399 = add i32 %44, 292
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = add i32 %44, 32
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = lshr i32 %408, 22
  %410 = shl nuw nsw i32 %409, 5
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = shl i32 %408, 4
  %413 = and i32 %412, 32752
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %408, 7
  %416 = and i32 %415, 32752
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %420 = fmul fast float %419, 1.000000e+03
  %421 = fmul fast float %382, %420
  %422 = call float @dx.op.unary.f32(i32 22, float %421)  ; Frc(value)
  %423 = fadd fast float %422, %386
  %424 = fmul fast float %379, %420
  %425 = call float @dx.op.unary.f32(i32 22, float %424)  ; Frc(value)
  %426 = fadd fast float %425, %384
  %427 = fmul fast float %392, %420
  %428 = call float @dx.op.unary.f32(i32 22, float %427)  ; Frc(value)
  %429 = fmul fast float %428, 0x401921FB60000000
  %430 = fadd fast float %429, %411
  %431 = call float @dx.op.unary.f32(i32 13, float %430)  ; Sin(value)
  %432 = call float @dx.op.unary.f32(i32 12, float %430)  ; Cos(value)
  %433 = fsub fast float -0.000000e+00, %431
  %434 = fadd fast float %71, -5.000000e-01
  %435 = fadd fast float %72, -5.000000e-01
  %436 = fmul fast float %403, %434
  %437 = fmul fast float %405, %435
  %438 = fadd fast float %436, 5.000000e-01
  %439 = fadd fast float %437, 5.000000e-01
  %440 = fmul fast float %414, %438
  %441 = fmul fast float %417, %439
  %442 = fmul fast float %432, %440
  %443 = call float @dx.op.tertiary.f32(i32 46, float %433, float %441, float %442)  ; FMad(a,b,c)
  %444 = fmul fast float %431, %440
  %445 = call float @dx.op.tertiary.f32(i32 46, float %432, float %441, float %444)  ; FMad(a,b,c)
  %446 = fadd fast float %423, %443
  %447 = fadd fast float %426, %445
  %448 = icmp ugt i32 %397, 1
  %449 = icmp ugt i32 %395, 33554431
  %450 = or i1 %449, %448
  br i1 %450, label %451, label %476

; <label>:451                                     ; preds = %376
  %452 = add i32 %44, 228
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = lshr i32 %454, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = fmul fast float %419, %456
  %458 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %459 = mul nuw nsw i32 %397, %398
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %458, %460
  %462 = call float @dx.op.unary.f32(i32 27, float %461)  ; Round_ni(value)
  %463 = fptoui float %462 to i32
  %464 = urem i32 %463, %397
  %465 = udiv i32 %463, %398
  %466 = call float @dx.op.unary.f32(i32 22, float %446)  ; Frc(value)
  %467 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  %468 = uitofp i32 %464 to float
  %469 = uitofp i32 %465 to float
  %470 = fadd fast float %466, %468
  %471 = fadd fast float %467, %469
  %472 = uitofp i32 %397 to float
  %473 = uitofp i32 %398 to float
  %474 = fdiv fast float %470, %472
  %475 = fdiv fast float %471, %473
  br label %476

; <label>:476                                     ; preds = %451, %376
  %477 = phi float [ %474, %451 ], [ %446, %376 ]
  %478 = phi float [ %475, %451 ], [ %447, %376 ]
  %479 = and i32 %370, 16
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %677, label %481

; <label>:481                                     ; preds = %476
  %482 = add i32 %44, 360
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = add i32 %484, 0
  %486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %486, %dx.types.Handle %81, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = and i32 %395, 255
  %493 = uitofp i32 %492 to float
  %494 = lshr i32 %395, 8
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %491, %493
  %498 = fadd fast float %497, %496
  %499 = fmul fast float %498, 0x3F70101000000000
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 512
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %512, label %504

; <label>:504                                     ; preds = %481
  %505 = add i32 %44, 440
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %507, 0
  %509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %509, %dx.types.Handle %82, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  br label %512

; <label>:512                                     ; preds = %504, %481
  %513 = phi float [ %511, %504 ], [ 1.000000e+00, %481 ]
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 33554432
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %624, label %518

; <label>:518                                     ; preds = %512
  %519 = add i32 %44, 224
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %521, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = add i32 %44, 228
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 65535
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = lshr i32 %532, 24
  %534 = uitofp i32 %533 to float
  %535 = fmul fast float %534, 0x3F70101020000000
  %536 = and i32 %532, 255
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %537, 0x3F70101020000000
  %539 = lshr i32 %532, 8
  %540 = and i32 %539, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = lshr i32 %532, 16
  %544 = and i32 %543, 255
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %545, 0x3F70101020000000
  %547 = add i32 %44, 220
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 24
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = and i32 %549, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %549, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %549, 16
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = bitcast float %488 to i32
  %565 = ashr i32 %564, 1
  %566 = sub nsw i32 1597463174, %565
  %567 = bitcast i32 %566 to float
  %568 = fmul fast float %488, 5.000000e-01
  %569 = fmul fast float %567, %567
  %570 = fmul fast float %569, %568
  %571 = fsub fast float 1.500000e+00, %570
  %572 = fmul fast float %567, %488
  %573 = fmul fast float %572, %571
  %574 = bitcast float %489 to i32
  %575 = ashr i32 %574, 1
  %576 = sub nsw i32 1597463174, %575
  %577 = bitcast i32 %576 to float
  %578 = fmul fast float %489, 5.000000e-01
  %579 = fmul fast float %577, %577
  %580 = fmul fast float %579, %578
  %581 = fsub fast float 1.500000e+00, %580
  %582 = fmul fast float %577, %489
  %583 = fmul fast float %582, %581
  %584 = bitcast float %490 to i32
  %585 = ashr i32 %584, 1
  %586 = sub nsw i32 1597463174, %585
  %587 = bitcast i32 %586 to float
  %588 = fmul fast float %490, 5.000000e-01
  %589 = fmul fast float %587, %587
  %590 = fmul fast float %589, %588
  %591 = fsub fast float 1.500000e+00, %590
  %592 = fmul fast float %587, %490
  %593 = fmul fast float %592, %591
  %594 = fsub fast float %573, %555
  %595 = fsub fast float %583, %559
  %596 = fsub fast float %593, %563
  %597 = fmul fast float %594, %523
  %598 = fmul fast float %595, %525
  %599 = fmul fast float %596, %530
  %600 = fadd fast float %597, %538
  %601 = fadd fast float %598, %542
  %602 = fadd fast float %599, %546
  %603 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %604 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %605 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %606 = fmul fast float %603, %603
  %607 = fmul fast float %604, %604
  %608 = fmul fast float %605, %605
  %609 = fsub fast float %606, %488
  %610 = fsub fast float %607, %489
  %611 = fsub fast float %608, %490
  %612 = fmul fast float %609, %513
  %613 = fmul fast float %610, %513
  %614 = fmul fast float %611, %513
  %615 = fadd fast float %612, %488
  %616 = fadd fast float %613, %489
  %617 = fadd fast float %614, %490
  %618 = fadd fast float %535, %499
  %619 = fsub fast float %618, %552
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fsub fast float %620, %499
  %622 = fmul fast float %621, %513
  %623 = fadd fast float %622, %499
  br label %677

; <label>:624                                     ; preds = %512
  %625 = and i32 %515, 134217728
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %661, label %627

; <label>:627                                     ; preds = %624
  %628 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %629 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %630 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %631 = fadd fast float %628, -5.000000e-01
  %632 = fadd fast float %629, -5.000000e-01
  %633 = fadd fast float %630, -5.000000e-01
  %634 = fmul fast float %631, %513
  %635 = fmul fast float %632, %513
  %636 = fmul fast float %633, %513
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fadd fast float %636, 5.000000e-01
  %640 = call float @dx.op.unary.f32(i32 24, float %488)  ; Sqrt(value)
  %641 = call float @dx.op.unary.f32(i32 24, float %489)  ; Sqrt(value)
  %642 = call float @dx.op.unary.f32(i32 24, float %490)  ; Sqrt(value)
  %643 = fmul fast float %637, 2.000000e+00
  %644 = fsub fast float 1.000000e+00, %643
  %645 = fmul fast float %644, %640
  %646 = fadd fast float %645, %643
  %647 = fmul fast float %646, %640
  %648 = fmul fast float %638, 2.000000e+00
  %649 = fsub fast float 1.000000e+00, %648
  %650 = fmul fast float %649, %641
  %651 = fadd fast float %650, %648
  %652 = fmul fast float %651, %641
  %653 = fmul fast float %639, 2.000000e+00
  %654 = fsub fast float 1.000000e+00, %653
  %655 = fmul fast float %654, %642
  %656 = fadd fast float %655, %653
  %657 = fmul fast float %656, %642
  %658 = fmul fast float %647, %647
  %659 = fmul fast float %652, %652
  %660 = fmul fast float %657, %657
  br label %677

; <label>:661                                     ; preds = %624
  %662 = fmul fast float %221, %221
  %663 = fmul fast float %225, %225
  %664 = fmul fast float %229, %229
  %665 = fadd fast float %662, -1.000000e+00
  %666 = fadd fast float %663, -1.000000e+00
  %667 = fadd fast float %664, -1.000000e+00
  %668 = fmul fast float %513, %665
  %669 = fmul fast float %513, %666
  %670 = fmul fast float %513, %667
  %671 = fadd fast float %668, 1.000000e+00
  %672 = fadd fast float %669, 1.000000e+00
  %673 = fadd fast float %670, 1.000000e+00
  %674 = fmul fast float %671, %488
  %675 = fmul fast float %672, %489
  %676 = fmul fast float %673, %490
  br label %677

; <label>:677                                     ; preds = %661, %627, %518, %476
  %678 = phi float [ %623, %518 ], [ %499, %627 ], [ %499, %661 ], [ 0x3FA23C0BE0000000, %476 ]
  %679 = phi float [ %615, %518 ], [ %658, %627 ], [ %674, %661 ], [ 1.000000e+00, %476 ]
  %680 = phi float [ %616, %518 ], [ %659, %627 ], [ %675, %661 ], [ 1.000000e+00, %476 ]
  %681 = phi float [ %617, %518 ], [ %660, %627 ], [ %676, %661 ], [ 1.000000e+00, %476 ]
  %682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.i32 %682, 1
  %684 = and i32 %683, 1
  %685 = icmp ne i32 %684, 0
  %686 = add i32 %44, 356
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 32
  %690 = icmp ne i32 %689, 0
  %691 = and i1 %685, %690
  %692 = select i1 %691, float 1.000000e+00, float %679
  %693 = select i1 %691, float 0x3FD3333340000000, float %680
  %694 = select i1 %691, float 0x3FD3333340000000, float %681
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 32
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %771, label %699

; <label>:699                                     ; preds = %677
  %700 = add i32 %44, 92
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %44, 376
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %707, %dx.types.Handle %81, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = extractvalue %dx.types.ResRet.f32 %708, 2
  %712 = extractvalue %dx.types.ResRet.f32 %708, 3
  %713 = and i32 %702, 255
  %714 = uitofp i32 %713 to float
  %715 = lshr i32 %702, 8
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = lshr i32 %702, 16
  %719 = and i32 %718, 255
  %720 = uitofp i32 %719 to float
  %721 = fmul fast float %720, 0x3F70101000000000
  %722 = fmul fast float %709, %714
  %723 = fadd fast float %722, %717
  %724 = fmul fast float %723, 0x3F70101000000000
  %725 = fadd fast float %710, -5.000000e-01
  %726 = fadd fast float %712, -5.000000e-01
  %727 = fmul fast float %725, %721
  %728 = fmul fast float %726, %721
  %729 = fadd fast float %727, 5.000000e-01
  %730 = fadd fast float %728, 5.000000e-01
  %731 = fmul fast float %729, 2.000000e+00
  %732 = fadd fast float %731, -1.000000e+00
  %733 = fmul fast float %730, 2.000000e+00
  %734 = fadd fast float %733, -1.000000e+00
  %735 = fadd fast float %732, %734
  %736 = fmul fast float %735, 5.000000e-01
  %737 = fsub fast float %732, %734
  %738 = fmul fast float %737, 5.000000e-01
  %739 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %740 = fsub fast float 1.000000e+00, %739
  %741 = call float @dx.op.unary.f32(i32 6, float %738)  ; FAbs(value)
  %742 = fsub fast float %740, %741
  %743 = call float @dx.op.dot3.f32(i32 55, float %736, float %738, float %742, float %736, float %738, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = call float @dx.op.unary.f32(i32 25, float %743)  ; Rsqrt(value)
  %745 = fmul fast float %736, %744
  %746 = fmul fast float %738, %744
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 67108864
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %767, label %751

; <label>:751                                     ; preds = %699
  %752 = add i32 %44, 280
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 65535
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 65535
  %760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %759)  ; LegacyF16ToF32(value)
  %761 = lshr i32 %754, 16
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = fsub fast float %724, %762
  %764 = fmul fast float %763, %756
  %765 = fadd fast float %764, %760
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  br label %767

; <label>:767                                     ; preds = %751, %699
  %768 = phi float [ %766, %751 ], [ %724, %699 ]
  %769 = call float @dx.op.dot2.f32(i32 54, float %745, float %746, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %770 = call float @dx.op.dot2.f32(i32 54, float %745, float %746, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %771

; <label>:771                                     ; preds = %767, %677
  %772 = phi float [ %768, %767 ], [ 0x3FD6666660000000, %677 ]
  %773 = phi float [ %769, %767 ], [ 0.000000e+00, %677 ]
  %774 = phi float [ %770, %767 ], [ 0.000000e+00, %677 ]
  %775 = phi float [ %711, %767 ], [ 1.000000e+00, %677 ]
  %776 = add i32 %44, 160
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = lshr i32 %778, 22
  %780 = shl nuw nsw i32 %779, 5
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 64
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %819, label %786

; <label>:786                                     ; preds = %771
  %787 = add i32 %44, 392
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 131072
  %795 = icmp eq i32 %794, 0
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %81, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = fmul fast float %797, %209
  %801 = fmul fast float %798, %212
  %802 = fmul fast float %799, %215
  br i1 %795, label %809, label %803

; <label>:803                                     ; preds = %786
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = fmul fast float %805, %800
  %807 = fmul fast float %805, %801
  %808 = fmul fast float %805, %802
  br label %809

; <label>:809                                     ; preds = %803, %786
  %810 = phi float [ %806, %803 ], [ %800, %786 ]
  %811 = phi float [ %807, %803 ], [ %801, %786 ]
  %812 = phi float [ %808, %803 ], [ %802, %786 ]
  %813 = fmul fast float %810, %781
  %814 = select i1 %203, float %813, float %810
  %815 = call float @dx.op.dot3.f32(i32 55, float %814, float %811, float %812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = select i1 %203, float 0.000000e+00, float %810
  %817 = select i1 %203, float %815, float %811
  %818 = select i1 %203, float 0.000000e+00, float %812
  br label %819

; <label>:819                                     ; preds = %809, %771
  %820 = phi float [ %816, %809 ], [ 0.000000e+00, %771 ]
  %821 = phi float [ %817, %809 ], [ 0.000000e+00, %771 ]
  %822 = phi float [ %818, %809 ], [ 0.000000e+00, %771 ]
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 14336
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %852, label %827

; <label>:827                                     ; preds = %819
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 4096
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %852, label %832

; <label>:832                                     ; preds = %827
  %833 = and i32 %829, 1048576
  %834 = icmp ne i32 %833, 0
  %835 = add i32 %44, 456
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = add i32 %837, 0
  %839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %839, %dx.types.Handle %82, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 2
  %842 = select i1 %834, float 1.000000e+00, float %841
  %843 = add i32 %44, 164
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %845, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fmul fast float %847, %842
  %851 = fadd fast float %850, %849
  br label %852

; <label>:852                                     ; preds = %832, %827, %819
  %853 = phi float [ %851, %832 ], [ 0.000000e+00, %827 ], [ 0.000000e+00, %819 ]
  %854 = add i32 %44, 96
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = lshr i32 %856, 8
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = fmul fast float %861, %862
  %864 = fadd fast float %863, %858
  %865 = fmul fast float %864, 0x3F70101020000000
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  br label %867

; <label>:867                                     ; preds = %852, %202
  %868 = phi float [ %773, %852 ], [ 0.000000e+00, %202 ]
  %869 = phi float [ %774, %852 ], [ 0.000000e+00, %202 ]
  %870 = phi float [ %692, %852 ], [ 0.000000e+00, %202 ]
  %871 = phi float [ %693, %852 ], [ 0.000000e+00, %202 ]
  %872 = phi float [ %694, %852 ], [ 0.000000e+00, %202 ]
  %873 = phi float [ %820, %852 ], [ 0.000000e+00, %202 ]
  %874 = phi float [ %821, %852 ], [ 0.000000e+00, %202 ]
  %875 = phi float [ %822, %852 ], [ 0.000000e+00, %202 ]
  %876 = phi float [ %678, %852 ], [ 0.000000e+00, %202 ]
  %877 = phi float [ 1.000000e+00, %852 ], [ 0.000000e+00, %202 ]
  %878 = phi float [ %772, %852 ], [ 0.000000e+00, %202 ]
  %879 = phi float [ %775, %852 ], [ 0.000000e+00, %202 ]
  %880 = phi float [ %853, %852 ], [ 0.000000e+00, %202 ]
  %881 = phi float [ %866, %852 ], [ 0.000000e+00, %202 ]
  %882 = icmp ult i32 %367, 2
  %883 = add i32 %44, 40
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = add i32 %44, 44
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = or i32 %888, %885
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %1755, label %891

; <label>:891                                     ; preds = %867
  %892 = add i32 %44, 300
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = lshr i32 %894, 16
  %896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %895)  ; LegacyF16ToF32(value)
  %897 = fmul fast float %896, 0x3F50624DE0000000
  %898 = add i32 %44, 104
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 16
  %902 = and i32 %901, 255
  %903 = lshr i32 %900, 24
  %904 = add i32 %44, 308
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 65535
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = lshr i32 %906, 16
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = add i32 %44, 48
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = lshr i32 %913, 22
  %915 = shl nuw nsw i32 %914, 5
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = shl i32 %913, 4
  %918 = and i32 %917, 32752
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %913, 7
  %921 = and i32 %920, 32752
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %925 = fmul fast float %924, 1.000000e+03
  %926 = fmul fast float %276, %925
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = fadd fast float %927, %266
  %929 = fmul fast float %277, %925
  %930 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %931 = fadd fast float %930, %268
  %932 = fmul fast float %897, %925
  %933 = call float @dx.op.unary.f32(i32 22, float %932)  ; Frc(value)
  %934 = fmul fast float %933, 0x401921FB60000000
  %935 = fadd fast float %934, %916
  %936 = call float @dx.op.unary.f32(i32 13, float %935)  ; Sin(value)
  %937 = call float @dx.op.unary.f32(i32 12, float %935)  ; Cos(value)
  %938 = fsub fast float -0.000000e+00, %936
  %939 = fadd fast float %73, -5.000000e-01
  %940 = fadd fast float %74, -5.000000e-01
  %941 = fmul fast float %908, %939
  %942 = fmul fast float %910, %940
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fadd fast float %942, 5.000000e-01
  %945 = fmul fast float %919, %943
  %946 = fmul fast float %922, %944
  %947 = fmul fast float %937, %945
  %948 = call float @dx.op.tertiary.f32(i32 46, float %938, float %946, float %947)  ; FMad(a,b,c)
  %949 = fmul fast float %936, %945
  %950 = call float @dx.op.tertiary.f32(i32 46, float %937, float %946, float %949)  ; FMad(a,b,c)
  %951 = fadd fast float %928, %948
  %952 = fadd fast float %931, %950
  %953 = icmp ugt i32 %902, 1
  %954 = icmp ugt i32 %900, 33554431
  %955 = or i1 %954, %953
  br i1 %955, label %956, label %981

; <label>:956                                     ; preds = %891
  %957 = add i32 %44, 244
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = lshr i32 %959, 16
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fmul fast float %924, %961
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = mul nuw nsw i32 %902, %903
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %963, %965
  %967 = call float @dx.op.unary.f32(i32 27, float %966)  ; Round_ni(value)
  %968 = fptoui float %967 to i32
  %969 = urem i32 %968, %902
  %970 = udiv i32 %968, %903
  %971 = call float @dx.op.unary.f32(i32 22, float %951)  ; Frc(value)
  %972 = call float @dx.op.unary.f32(i32 22, float %952)  ; Frc(value)
  %973 = uitofp i32 %969 to float
  %974 = uitofp i32 %970 to float
  %975 = fadd fast float %971, %973
  %976 = fadd fast float %972, %974
  %977 = uitofp i32 %902 to float
  %978 = uitofp i32 %903 to float
  %979 = fdiv fast float %975, %977
  %980 = fdiv fast float %976, %978
  br label %981

; <label>:981                                     ; preds = %956, %891
  %982 = phi float [ %979, %956 ], [ %951, %891 ]
  %983 = phi float [ %980, %956 ], [ %952, %891 ]
  %984 = and i32 %885, 16777216
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1095, label %986

; <label>:986                                     ; preds = %981
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = fadd fast float %988, %132
  %992 = fadd fast float %989, %133
  %993 = fadd fast float %990, %134
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = icmp eq i32 %43, 65535
  br i1 %997, label %1092, label %998

; <label>:998                                     ; preds = %986
  %999 = lshr i32 %43, 1
  %1000 = shl i32 %999, 2
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %43, 1
  %1004 = icmp ne i32 %1003, 0
  %1005 = lshr i32 %1002, 16
  %1006 = and i32 %1002, 65535
  %1007 = select i1 %1004, i32 %1005, i32 %1006
  %1008 = icmp eq i32 %1007, 65535
  br i1 %1008, label %1088, label %1009

; <label>:1009                                    ; preds = %998
  %1010 = mul nuw nsw i32 %1007, 40
  %1011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = add nuw nsw i32 %1010, 12
  %1016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.f32 %1016, 2
  %1020 = add nuw nsw i32 %1010, 24
  %1021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = add nuw nsw i32 %1010, 36
  %1026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = fsub fast float %991, %1012
  %1029 = fsub fast float %992, %1013
  %1030 = fsub fast float %993, %1014
  %1031 = fmul fast float %1027, %1028
  %1032 = fmul fast float %1027, %1029
  %1033 = fmul fast float %1027, %1030
  %1034 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1035 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1036 = call float @dx.op.unary.f32(i32 27, float %1033)  ; Round_ni(value)
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fadd fast float %1035, 5.000000e-01
  %1039 = fadd fast float %1036, 5.000000e-01
  %1040 = fmul fast float %1037, %1017
  %1041 = fmul fast float %1038, %1018
  %1042 = fmul fast float %1039, %1019
  %1043 = shl i32 %43, 2
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1049 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1050 = call float @dx.op.unary.f32(i32 22, float %1042)  ; Frc(value)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1047, %dx.types.Handle %40, float %1048, float %1049, float %1050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = fmul fast float %1052, 1.023000e+03
  %1056 = fmul fast float %1053, 1.023000e+03
  %1057 = fmul fast float %1054, 1.023000e+03
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = fadd fast float %1057, 5.000000e-01
  %1061 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1062 = call float @dx.op.unary.f32(i32 27, float %1059)  ; Round_ni(value)
  %1063 = call float @dx.op.unary.f32(i32 27, float %1060)  ; Round_ni(value)
  %1064 = fsub fast float %1031, %1034
  %1065 = fsub fast float %1032, %1035
  %1066 = fsub fast float %1033, %1036
  %1067 = fmul fast float %1064, 7.500000e-01
  %1068 = fmul fast float %1065, 7.500000e-01
  %1069 = fmul fast float %1066, 7.500000e-01
  %1070 = fadd fast float %1034, 1.250000e-01
  %1071 = fadd fast float %1070, %1067
  %1072 = fadd fast float %1071, %1061
  %1073 = fadd fast float %1035, 1.250000e-01
  %1074 = fadd fast float %1073, %1068
  %1075 = fadd fast float %1074, %1062
  %1076 = fadd fast float %1036, 1.250000e-01
  %1077 = fadd fast float %1076, %1069
  %1078 = fadd fast float %1077, %1063
  %1079 = fmul fast float %1072, %1022
  %1080 = fmul fast float %1075, %1023
  %1081 = fmul fast float %1078, %1024
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %1083, 0
  %1085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1085, %dx.types.Handle %38, float %1079, float %1080, float %1081, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  br label %1088

; <label>:1088                                    ; preds = %1009, %998
  %1089 = phi float [ %1087, %1009 ], [ -1.000000e+00, %998 ]
  %1090 = fadd fast float %1089, %996
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  br label %1092

; <label>:1092                                    ; preds = %1088, %986
  %1093 = phi float [ %1091, %1088 ], [ %996, %986 ]
  %1094 = fmul fast float %1093, %75
  br label %1095

; <label>:1095                                    ; preds = %1092, %981
  %1096 = phi float [ %1094, %1092 ], [ %75, %981 ]
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 256
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1147, label %1101

; <label>:1101                                    ; preds = %1095
  %1102 = add i32 %44, 428
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1106, %dx.types.Handle %82, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = add i32 %44, 116
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = shl i32 %1111, 4
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = lshr i32 %1111, 7
  %1116 = and i32 %1115, 32752
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = fsub fast float 1.000000e+00, %1096
  %1119 = call float @dx.op.binary.f32(i32 35, float %1118, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1120 = bitcast float %1096 to i32
  %1121 = sitofp i32 %1120 to float
  %1122 = fadd fast float %1121, 0xC1CFBF8940000000
  %1123 = fmul fast float %1117, %1122
  %1124 = fadd fast float %1123, 0x41CFBF8940000000
  %1125 = fptosi float %1124 to i32
  %1126 = bitcast i32 %1125 to float
  %1127 = bitcast float %1119 to i32
  %1128 = sitofp i32 %1127 to float
  %1129 = fadd fast float %1128, 0xC1CFBF8940000000
  %1130 = fmul fast float %1129, %1117
  %1131 = fadd fast float %1130, 0x41CFBF8940000000
  %1132 = fptosi float %1131 to i32
  %1133 = bitcast i32 %1132 to float
  %1134 = fmul fast float %1126, %1114
  %1135 = fmul fast float %1133, %1114
  %1136 = fsub fast float %1119, %1134
  %1137 = fadd fast float %1135, %1119
  %1138 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1139 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1140 = fsub fast float %1108, %1138
  %1141 = fsub fast float %1139, %1138
  %1142 = bitcast float %1141 to i32
  %1143 = sub nsw i32 2129859010, %1142
  %1144 = bitcast i32 %1143 to float
  %1145 = fmul fast float %1144, %1140
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  br label %1147

; <label>:1147                                    ; preds = %1101, %1095
  %1148 = phi float [ %1146, %1101 ], [ %1096, %1095 ]
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 128
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1169, label %1153

; <label>:1153                                    ; preds = %1147
  %1154 = add i32 %44, 412
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = add i32 %1156, 0
  %1158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1158, %dx.types.Handle %82, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 524288
  %1164 = icmp ne i32 %1163, 0
  %1165 = fcmp fast ogt float %1160, 0x3FE0101020000000
  %1166 = select i1 %1165, float 1.000000e+00, float 0.000000e+00
  %1167 = select i1 %1164, float %1166, float %1160
  %1168 = fmul fast float %1167, %1148
  br label %1169

; <label>:1169                                    ; preds = %1153, %1147
  %1170 = phi float [ %1168, %1153 ], [ %1148, %1147 ]
  %1171 = fcmp fast ult float %1170, 0x3F70101020000000
  br i1 %1171, label %1755, label %1172

; <label>:1172                                    ; preds = %1169
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 16
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1375, label %1177

; <label>:1177                                    ; preds = %1172
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %44, 364
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %1182, 0
  %1184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1184, %dx.types.Handle %81, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.ResRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.ResRet.f32 %1185, 2
  %1189 = extractvalue %dx.types.ResRet.f32 %1185, 3
  %1190 = and i32 %1179, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = lshr i32 %1179, 8
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1189, %1191
  %1196 = fadd fast float %1195, %1194
  %1197 = fmul fast float %1196, 0x3F70101000000000
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 512
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1210, label %1202

; <label>:1202                                    ; preds = %1177
  %1203 = add i32 %44, 444
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %1205, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1207, %dx.types.Handle %82, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  br label %1210

; <label>:1210                                    ; preds = %1202, %1177
  %1211 = phi float [ %1209, %1202 ], [ 1.000000e+00, %1177 ]
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 33554432
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1322, label %1216

; <label>:1216                                    ; preds = %1210
  %1217 = add i32 %44, 240
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 65535
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1219, 16
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = add i32 %44, 244
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 65535
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 24
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F70101020000000
  %1234 = and i32 %1230, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = lshr i32 %1230, 8
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = lshr i32 %1230, 16
  %1242 = and i32 %1241, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = add i32 %44, 236
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = lshr i32 %1247, 24
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = and i32 %1247, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = lshr i32 %1247, 8
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = lshr i32 %1247, 16
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F70101020000000
  %1262 = bitcast float %1186 to i32
  %1263 = ashr i32 %1262, 1
  %1264 = sub nsw i32 1597463174, %1263
  %1265 = bitcast i32 %1264 to float
  %1266 = fmul fast float %1186, 5.000000e-01
  %1267 = fmul fast float %1265, %1265
  %1268 = fmul fast float %1267, %1266
  %1269 = fsub fast float 1.500000e+00, %1268
  %1270 = fmul fast float %1265, %1186
  %1271 = fmul fast float %1270, %1269
  %1272 = bitcast float %1187 to i32
  %1273 = ashr i32 %1272, 1
  %1274 = sub nsw i32 1597463174, %1273
  %1275 = bitcast i32 %1274 to float
  %1276 = fmul fast float %1187, 5.000000e-01
  %1277 = fmul fast float %1275, %1275
  %1278 = fmul fast float %1277, %1276
  %1279 = fsub fast float 1.500000e+00, %1278
  %1280 = fmul fast float %1275, %1187
  %1281 = fmul fast float %1280, %1279
  %1282 = bitcast float %1188 to i32
  %1283 = ashr i32 %1282, 1
  %1284 = sub nsw i32 1597463174, %1283
  %1285 = bitcast i32 %1284 to float
  %1286 = fmul fast float %1188, 5.000000e-01
  %1287 = fmul fast float %1285, %1285
  %1288 = fmul fast float %1287, %1286
  %1289 = fsub fast float 1.500000e+00, %1288
  %1290 = fmul fast float %1285, %1188
  %1291 = fmul fast float %1290, %1289
  %1292 = fsub fast float %1271, %1253
  %1293 = fsub fast float %1281, %1257
  %1294 = fsub fast float %1291, %1261
  %1295 = fmul fast float %1292, %1221
  %1296 = fmul fast float %1293, %1223
  %1297 = fmul fast float %1294, %1228
  %1298 = fadd fast float %1295, %1236
  %1299 = fadd fast float %1296, %1240
  %1300 = fadd fast float %1297, %1244
  %1301 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1302 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1303 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1304 = fmul fast float %1301, %1301
  %1305 = fmul fast float %1302, %1302
  %1306 = fmul fast float %1303, %1303
  %1307 = fsub fast float %1304, %1186
  %1308 = fsub fast float %1305, %1187
  %1309 = fsub fast float %1306, %1188
  %1310 = fmul fast float %1307, %1211
  %1311 = fmul fast float %1308, %1211
  %1312 = fmul fast float %1309, %1211
  %1313 = fadd fast float %1310, %1186
  %1314 = fadd fast float %1311, %1187
  %1315 = fadd fast float %1312, %1188
  %1316 = fadd fast float %1233, %1197
  %1317 = fsub fast float %1316, %1250
  %1318 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1319 = fsub fast float %1318, %1197
  %1320 = fmul fast float %1319, %1211
  %1321 = fadd fast float %1320, %1197
  br label %1375

; <label>:1322                                    ; preds = %1210
  %1323 = and i32 %1213, 134217728
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1359, label %1325

; <label>:1325                                    ; preds = %1322
  %1326 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %1327 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1328 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1329 = fadd fast float %1326, -5.000000e-01
  %1330 = fadd fast float %1327, -5.000000e-01
  %1331 = fadd fast float %1328, -5.000000e-01
  %1332 = fmul fast float %1329, %1211
  %1333 = fmul fast float %1330, %1211
  %1334 = fmul fast float %1331, %1211
  %1335 = fadd fast float %1332, 5.000000e-01
  %1336 = fadd fast float %1333, 5.000000e-01
  %1337 = fadd fast float %1334, 5.000000e-01
  %1338 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %1187)  ; Sqrt(value)
  %1340 = call float @dx.op.unary.f32(i32 24, float %1188)  ; Sqrt(value)
  %1341 = fmul fast float %1335, 2.000000e+00
  %1342 = fsub fast float 1.000000e+00, %1341
  %1343 = fmul fast float %1342, %1338
  %1344 = fadd fast float %1343, %1341
  %1345 = fmul fast float %1344, %1338
  %1346 = fmul fast float %1336, 2.000000e+00
  %1347 = fsub fast float 1.000000e+00, %1346
  %1348 = fmul fast float %1347, %1339
  %1349 = fadd fast float %1348, %1346
  %1350 = fmul fast float %1349, %1339
  %1351 = fmul fast float %1337, 2.000000e+00
  %1352 = fsub fast float 1.000000e+00, %1351
  %1353 = fmul fast float %1352, %1340
  %1354 = fadd fast float %1353, %1351
  %1355 = fmul fast float %1354, %1340
  %1356 = fmul fast float %1345, %1345
  %1357 = fmul fast float %1350, %1350
  %1358 = fmul fast float %1355, %1355
  br label %1375

; <label>:1359                                    ; preds = %1322
  %1360 = fmul fast float %253, %253
  %1361 = fmul fast float %257, %257
  %1362 = fmul fast float %261, %261
  %1363 = fadd fast float %1360, -1.000000e+00
  %1364 = fadd fast float %1361, -1.000000e+00
  %1365 = fadd fast float %1362, -1.000000e+00
  %1366 = fmul fast float %1211, %1363
  %1367 = fmul fast float %1211, %1364
  %1368 = fmul fast float %1211, %1365
  %1369 = fadd fast float %1366, 1.000000e+00
  %1370 = fadd fast float %1367, 1.000000e+00
  %1371 = fadd fast float %1368, 1.000000e+00
  %1372 = fmul fast float %1369, %1186
  %1373 = fmul fast float %1370, %1187
  %1374 = fmul fast float %1371, %1188
  br label %1375

; <label>:1375                                    ; preds = %1359, %1325, %1216, %1172
  %1376 = phi float [ %1321, %1216 ], [ %1197, %1325 ], [ %1197, %1359 ], [ 0x3FA23C0BE0000000, %1172 ]
  %1377 = phi float [ %1313, %1216 ], [ %1356, %1325 ], [ %1372, %1359 ], [ 1.000000e+00, %1172 ]
  %1378 = phi float [ %1314, %1216 ], [ %1357, %1325 ], [ %1373, %1359 ], [ 1.000000e+00, %1172 ]
  %1379 = phi float [ %1315, %1216 ], [ %1358, %1325 ], [ %1374, %1359 ], [ 1.000000e+00, %1172 ]
  %1380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.i32 %1380, 1
  %1382 = and i32 %1381, 1
  %1383 = icmp ne i32 %1382, 0
  %1384 = add i32 %44, 356
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 32
  %1388 = icmp ne i32 %1387, 0
  %1389 = and i1 %1383, %1388
  %1390 = select i1 %1389, float 1.000000e+00, float %1377
  %1391 = select i1 %1389, float 0x3FD3333340000000, float %1378
  %1392 = select i1 %1389, float 0x3FD3333340000000, float %1379
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 32
  %1396 = icmp eq i32 %1395, 0
  br i1 %1396, label %1469, label %1397

; <label>:1397                                    ; preds = %1375
  %1398 = add i32 %44, 108
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %44, 380
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1403, 0
  %1405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1405, %dx.types.Handle %81, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = extractvalue %dx.types.ResRet.f32 %1406, 3
  %1411 = and i32 %1400, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1400, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = lshr i32 %1400, 16
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = fmul fast float %1407, %1412
  %1421 = fadd fast float %1420, %1415
  %1422 = fmul fast float %1421, 0x3F70101000000000
  %1423 = fadd fast float %1408, -5.000000e-01
  %1424 = fadd fast float %1410, -5.000000e-01
  %1425 = fmul fast float %1423, %1419
  %1426 = fmul fast float %1424, %1419
  %1427 = fadd fast float %1425, 5.000000e-01
  %1428 = fadd fast float %1426, 5.000000e-01
  %1429 = fmul fast float %1427, 2.000000e+00
  %1430 = fadd fast float %1429, -1.000000e+00
  %1431 = fmul fast float %1428, 2.000000e+00
  %1432 = fadd fast float %1431, -1.000000e+00
  %1433 = fadd fast float %1430, %1432
  %1434 = fmul fast float %1433, 5.000000e-01
  %1435 = fsub fast float %1430, %1432
  %1436 = fmul fast float %1435, 5.000000e-01
  %1437 = call float @dx.op.unary.f32(i32 6, float %1434)  ; FAbs(value)
  %1438 = fsub fast float 1.000000e+00, %1437
  %1439 = call float @dx.op.unary.f32(i32 6, float %1436)  ; FAbs(value)
  %1440 = fsub fast float %1438, %1439
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1436, float %1440, float %1434, float %1436, float %1440)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.unary.f32(i32 25, float %1441)  ; Rsqrt(value)
  %1443 = fmul fast float %1434, %1442
  %1444 = fmul fast float %1436, %1442
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 67108864
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1465, label %1449

; <label>:1449                                    ; preds = %1397
  %1450 = add i32 %44, 296
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 65535
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 65535
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = lshr i32 %1452, 16
  %1460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1459)  ; LegacyF16ToF32(value)
  %1461 = fsub fast float %1422, %1460
  %1462 = fmul fast float %1461, %1454
  %1463 = fadd fast float %1462, %1458
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  br label %1465

; <label>:1465                                    ; preds = %1449, %1397
  %1466 = phi float [ %1464, %1449 ], [ %1422, %1397 ]
  %1467 = call float @dx.op.dot2.f32(i32 54, float %1443, float %1444, float %53, float %54)  ; Dot2(ax,ay,bx,by)
  %1468 = call float @dx.op.dot2.f32(i32 54, float %1443, float %1444, float %55, float %56)  ; Dot2(ax,ay,bx,by)
  br label %1469

; <label>:1469                                    ; preds = %1465, %1375
  %1470 = phi float [ %1466, %1465 ], [ 0x3FD6666660000000, %1375 ]
  %1471 = phi float [ %1467, %1465 ], [ 0.000000e+00, %1375 ]
  %1472 = phi float [ %1468, %1465 ], [ 0.000000e+00, %1375 ]
  %1473 = phi float [ %1409, %1465 ], [ 1.000000e+00, %1375 ]
  %1474 = add i32 %44, 176
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = lshr i32 %1476, 22
  %1478 = shl nuw nsw i32 %1477, 5
  %1479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1478)  ; LegacyF16ToF32(value)
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 64
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1517, label %1484

; <label>:1484                                    ; preds = %1469
  %1485 = add i32 %44, 396
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 131072
  %1493 = icmp eq i32 %1492, 0
  %1494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %81, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.ResRet.f32 %1494, 1
  %1497 = extractvalue %dx.types.ResRet.f32 %1494, 2
  %1498 = fmul fast float %1495, %241
  %1499 = fmul fast float %1496, %244
  %1500 = fmul fast float %1497, %247
  br i1 %1493, label %1507, label %1501

; <label>:1501                                    ; preds = %1484
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = fmul fast float %1503, %1498
  %1505 = fmul fast float %1503, %1499
  %1506 = fmul fast float %1503, %1500
  br label %1507

; <label>:1507                                    ; preds = %1501, %1484
  %1508 = phi float [ %1504, %1501 ], [ %1498, %1484 ]
  %1509 = phi float [ %1505, %1501 ], [ %1499, %1484 ]
  %1510 = phi float [ %1506, %1501 ], [ %1500, %1484 ]
  %1511 = fmul fast float %1508, %1479
  %1512 = select i1 %203, float %1511, float %1508
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1509, float %1510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = select i1 %203, float 0.000000e+00, float %1508
  %1515 = select i1 %203, float %1513, float %1509
  %1516 = select i1 %203, float 0.000000e+00, float %1510
  br label %1517

; <label>:1517                                    ; preds = %1507, %1469
  %1518 = phi float [ %1514, %1507 ], [ 0.000000e+00, %1469 ]
  %1519 = phi float [ %1515, %1507 ], [ 0.000000e+00, %1469 ]
  %1520 = phi float [ %1516, %1507 ], [ 0.000000e+00, %1469 ]
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 14336
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1550, label %1525

; <label>:1525                                    ; preds = %1517
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 4096
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1550, label %1530

; <label>:1530                                    ; preds = %1525
  %1531 = and i32 %1527, 1048576
  %1532 = icmp ne i32 %1531, 0
  %1533 = add i32 %44, 460
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = add i32 %1535, 0
  %1537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1537, %dx.types.Handle %82, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 2
  %1540 = select i1 %1532, float 1.000000e+00, float %1539
  %1541 = add i32 %44, 180
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 65535
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = lshr i32 %1543, 16
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = fmul fast float %1545, %1540
  %1549 = fadd fast float %1548, %1547
  br label %1550

; <label>:1550                                    ; preds = %1530, %1525, %1517
  %1551 = phi float [ %1549, %1530 ], [ 0.000000e+00, %1525 ], [ 0.000000e+00, %1517 ]
  %1552 = add i32 %44, 112
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 255
  %1556 = uitofp i32 %1555 to float
  %1557 = lshr i32 %1554, 8
  %1558 = and i32 %1557, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = call float @dx.op.dot3.f32(i32 55, float %1390, float %1391, float %1392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1561 = fmul fast float %1559, %1560
  %1562 = fadd fast float %1561, %1556
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  br i1 %882, label %1565, label %1573

; <label>:1565                                    ; preds = %1550
  %1566 = fsub fast float 1.000000e+00, %1170
  %1567 = fmul fast float %1566, %870
  %1568 = fmul fast float %1566, %871
  %1569 = fmul fast float %1566, %872
  %1570 = fmul fast float %1566, %873
  %1571 = fmul fast float %1566, %874
  %1572 = fmul fast float %1566, %875
  br label %1573

; <label>:1573                                    ; preds = %1565, %1550
  %1574 = phi float [ %1567, %1565 ], [ %870, %1550 ]
  %1575 = phi float [ %1568, %1565 ], [ %871, %1550 ]
  %1576 = phi float [ %1569, %1565 ], [ %872, %1550 ]
  %1577 = phi float [ %1570, %1565 ], [ %873, %1550 ]
  %1578 = phi float [ %1571, %1565 ], [ %874, %1550 ]
  %1579 = phi float [ %1572, %1565 ], [ %875, %1550 ]
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 3
  %1583 = icmp eq i32 %1582, 3
  br i1 %1583, label %1662, label %1584

; <label>:1584                                    ; preds = %1573
  %1585 = and i32 %1581, 16
  %1586 = icmp ne i32 %1585, 0
  %1587 = select i1 %1586, float %1170, float 0.000000e+00
  %1588 = icmp eq i32 %1582, 0
  br i1 %1588, label %1589, label %1617

; <label>:1589                                    ; preds = %1584
  %1590 = and i32 %1581, 64
  %1591 = icmp ne i32 %1590, 0
  %1592 = select i1 %1591, float %1170, float 0.000000e+00
  %1593 = fsub fast float %1390, %1574
  %1594 = fsub fast float %1391, %1575
  %1595 = fsub fast float %1392, %1576
  %1596 = fmul fast float %1587, %1593
  %1597 = fmul fast float %1587, %1594
  %1598 = fmul fast float %1587, %1595
  %1599 = fadd fast float %1596, %1574
  %1600 = fadd fast float %1597, %1575
  %1601 = fadd fast float %1598, %1576
  %1602 = fsub fast float %1376, %876
  %1603 = fmul fast float %1587, %1602
  %1604 = fadd fast float %1603, %876
  %1605 = fsub fast float %1518, %1577
  %1606 = fsub fast float %1519, %1578
  %1607 = fsub fast float %1520, %1579
  %1608 = fmul fast float %1592, %1605
  %1609 = fmul fast float %1592, %1606
  %1610 = fmul fast float %1592, %1607
  %1611 = fadd fast float %1608, %1577
  %1612 = fadd fast float %1609, %1578
  %1613 = fadd fast float %1610, %1579
  %1614 = fsub fast float %1564, %881
  %1615 = fmul fast float %1587, %1614
  %1616 = fadd fast float %1615, %881
  br label %1662

; <label>:1617                                    ; preds = %1584
  %1618 = icmp eq i32 %1582, 1
  br i1 %1618, label %1619, label %1632

; <label>:1619                                    ; preds = %1617
  %1620 = fadd fast float %1390, -1.000000e+00
  %1621 = fadd fast float %1391, -1.000000e+00
  %1622 = fadd fast float %1392, -1.000000e+00
  %1623 = fmul fast float %1587, %1620
  %1624 = fmul fast float %1587, %1621
  %1625 = fmul fast float %1587, %1622
  %1626 = fadd fast float %1623, 1.000000e+00
  %1627 = fadd fast float %1624, 1.000000e+00
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fmul fast float %1626, %1574
  %1630 = fmul fast float %1627, %1575
  %1631 = fmul fast float %1628, %1576
  br label %1662

; <label>:1632                                    ; preds = %1617
  %1633 = icmp eq i32 %1582, 2
  br i1 %1633, label %1634, label %1662

; <label>:1634                                    ; preds = %1632
  %1635 = call float @dx.op.unary.f32(i32 24, float %1390)  ; Sqrt(value)
  %1636 = call float @dx.op.unary.f32(i32 24, float %1391)  ; Sqrt(value)
  %1637 = call float @dx.op.unary.f32(i32 24, float %1392)  ; Sqrt(value)
  %1638 = fadd fast float %1635, -5.000000e-01
  %1639 = fadd fast float %1636, -5.000000e-01
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fmul fast float %1638, %1587
  %1642 = fmul fast float %1639, %1587
  %1643 = fmul fast float %1640, %1587
  %1644 = fadd fast float %1641, 5.000000e-01
  %1645 = fadd fast float %1642, 5.000000e-01
  %1646 = fadd fast float %1643, 5.000000e-01
  %1647 = fmul fast float %1644, 2.000000e+00
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = fmul fast float %1648, %1574
  %1650 = fadd fast float %1649, %1647
  %1651 = fmul fast float %1650, %1574
  %1652 = fmul fast float %1645, 2.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1653, %1575
  %1655 = fadd fast float %1654, %1652
  %1656 = fmul fast float %1655, %1575
  %1657 = fmul fast float %1646, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1576
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1576
  br label %1662

; <label>:1662                                    ; preds = %1634, %1632, %1619, %1589, %1573
  %1663 = phi float [ %1574, %1573 ], [ %1651, %1634 ], [ %1574, %1632 ], [ %1629, %1619 ], [ %1599, %1589 ]
  %1664 = phi float [ %1575, %1573 ], [ %1656, %1634 ], [ %1575, %1632 ], [ %1630, %1619 ], [ %1600, %1589 ]
  %1665 = phi float [ %1576, %1573 ], [ %1661, %1634 ], [ %1576, %1632 ], [ %1631, %1619 ], [ %1601, %1589 ]
  %1666 = phi float [ %1577, %1573 ], [ %1577, %1634 ], [ %1577, %1632 ], [ %1577, %1619 ], [ %1611, %1589 ]
  %1667 = phi float [ %1578, %1573 ], [ %1578, %1634 ], [ %1578, %1632 ], [ %1578, %1619 ], [ %1612, %1589 ]
  %1668 = phi float [ %1579, %1573 ], [ %1579, %1634 ], [ %1579, %1632 ], [ %1579, %1619 ], [ %1613, %1589 ]
  %1669 = phi float [ %876, %1573 ], [ %876, %1634 ], [ %876, %1632 ], [ %876, %1619 ], [ %1604, %1589 ]
  %1670 = phi float [ %881, %1573 ], [ %881, %1634 ], [ %881, %1632 ], [ %881, %1619 ], [ %1616, %1589 ]
  %1671 = and i32 %1581, 12
  %1672 = icmp eq i32 %1671, 12
  br i1 %1672, label %1755, label %1673

; <label>:1673                                    ; preds = %1662
  %1674 = and i32 %1581, 2097184
  %1675 = icmp eq i32 %1674, 2097184
  %1676 = select i1 %1675, float %1170, float 0.000000e+00
  %1677 = and i32 %1581, 4194336
  %1678 = icmp eq i32 %1677, 4194336
  %1679 = select i1 %1678, float %1170, float 0.000000e+00
  %1680 = and i32 %1581, 8388640
  %1681 = icmp eq i32 %1680, 8388640
  %1682 = select i1 %1681, float %1170, float 0.000000e+00
  %1683 = and i32 %1581, 4096
  %1684 = icmp ne i32 %1683, 0
  %1685 = select i1 %1684, float %1170, float 0.000000e+00
  %1686 = icmp eq i32 %1671, 0
  br i1 %1686, label %1687, label %1703

; <label>:1687                                    ; preds = %1673
  %1688 = fsub fast float %1471, %868
  %1689 = fsub fast float %1472, %869
  %1690 = fmul fast float %1676, %1688
  %1691 = fmul fast float %1676, %1689
  %1692 = fadd fast float %1690, %868
  %1693 = fadd fast float %1691, %869
  %1694 = fsub fast float %1473, %879
  %1695 = fmul fast float %1679, %1694
  %1696 = fadd fast float %1695, %879
  %1697 = fsub fast float %1470, %878
  %1698 = fmul fast float %1682, %1697
  %1699 = fadd fast float %1698, %878
  %1700 = fsub fast float %1551, %880
  %1701 = fmul fast float %1685, %1700
  %1702 = fadd fast float %1701, %880
  br label %1755

; <label>:1703                                    ; preds = %1673
  %1704 = icmp eq i32 %1671, 4
  br i1 %1704, label %1705, label %1739

; <label>:1705                                    ; preds = %1703
  %1706 = fmul fast float %1676, %1471
  %1707 = fmul fast float %1676, %1472
  %1708 = fadd fast float %1706, %868
  %1709 = fadd fast float %1707, %869
  %1710 = call float @dx.op.binary.f32(i32 36, float %879, float %1473)  ; FMin(a,b)
  %1711 = fsub fast float %1710, %879
  %1712 = fmul fast float %1711, %1679
  %1713 = fadd fast float %1712, %879
  %1714 = fadd fast float %1470, %878
  %1715 = fmul fast float %1714, 0x3FF337FAE0000000
  %1716 = fmul fast float %878, %878
  %1717 = fmul fast float %1470, %1470
  %1718 = fadd fast float %1717, %1716
  %1719 = fmul fast float %1718, 0x3FE5152B00000000
  %1720 = fmul fast float %878, 0xBFCC1F85E0000000
  %1721 = fmul fast float %1720, %1470
  %1722 = fadd fast float %1721, 0xBFE1363700000000
  %1723 = fadd fast float %1722, %1715
  %1724 = fsub fast float %1723, %1719
  %1725 = fmul fast float %1714, 0x3FBA6F0D00000000
  %1726 = fmul fast float %1718, 0x3FD0432880000000
  %1727 = fmul fast float %878, 0xBFEF110800000000
  %1728 = fmul fast float %1727, %1470
  %1729 = fadd fast float %1728, 1.000000e+00
  %1730 = fsub fast float %1729, %1725
  %1731 = fadd fast float %1730, %1726
  %1732 = fdiv fast float %1724, %1731
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1734 = fsub fast float %1733, %878
  %1735 = fmul fast float %1734, %1682
  %1736 = fadd fast float %1735, %878
  %1737 = fmul fast float %1685, %1551
  %1738 = fadd fast float %1737, %880
  br label %1755

; <label>:1739                                    ; preds = %1703
  %1740 = icmp eq i32 %1671, 8
  br i1 %1740, label %1741, label %1755

; <label>:1741                                    ; preds = %1739
  %1742 = fmul fast float %1676, %1471
  %1743 = fmul fast float %1676, %1472
  %1744 = fadd fast float %1742, %868
  %1745 = fadd fast float %1743, %869
  %1746 = call float @dx.op.binary.f32(i32 36, float %879, float %1473)  ; FMin(a,b)
  %1747 = fsub fast float %1746, %879
  %1748 = fmul fast float %1747, %1679
  %1749 = fadd fast float %1748, %879
  %1750 = fsub fast float %1470, %878
  %1751 = fmul fast float %1682, %1750
  %1752 = fadd fast float %1751, %878
  %1753 = fmul fast float %1685, %1551
  %1754 = fadd fast float %1753, %880
  br label %1755

; <label>:1755                                    ; preds = %1741, %1739, %1705, %1687, %1662, %1169, %867
  %1756 = phi float [ %868, %1662 ], [ %868, %1169 ], [ %868, %867 ], [ %1692, %1687 ], [ %1708, %1705 ], [ %868, %1739 ], [ %1744, %1741 ]
  %1757 = phi float [ %869, %1662 ], [ %869, %1169 ], [ %869, %867 ], [ %1693, %1687 ], [ %1709, %1705 ], [ %869, %1739 ], [ %1745, %1741 ]
  %1758 = phi float [ %1663, %1662 ], [ %870, %1169 ], [ %870, %867 ], [ %1663, %1687 ], [ %1663, %1705 ], [ %1663, %1739 ], [ %1663, %1741 ]
  %1759 = phi float [ %1664, %1662 ], [ %871, %1169 ], [ %871, %867 ], [ %1664, %1687 ], [ %1664, %1705 ], [ %1664, %1739 ], [ %1664, %1741 ]
  %1760 = phi float [ %1665, %1662 ], [ %872, %1169 ], [ %872, %867 ], [ %1665, %1687 ], [ %1665, %1705 ], [ %1665, %1739 ], [ %1665, %1741 ]
  %1761 = phi float [ %1666, %1662 ], [ %873, %1169 ], [ %873, %867 ], [ %1666, %1687 ], [ %1666, %1705 ], [ %1666, %1739 ], [ %1666, %1741 ]
  %1762 = phi float [ %1667, %1662 ], [ %874, %1169 ], [ %874, %867 ], [ %1667, %1687 ], [ %1667, %1705 ], [ %1667, %1739 ], [ %1667, %1741 ]
  %1763 = phi float [ %1668, %1662 ], [ %875, %1169 ], [ %875, %867 ], [ %1668, %1687 ], [ %1668, %1705 ], [ %1668, %1739 ], [ %1668, %1741 ]
  %1764 = phi float [ %1669, %1662 ], [ %876, %1169 ], [ %876, %867 ], [ %1669, %1687 ], [ %1669, %1705 ], [ %1669, %1739 ], [ %1669, %1741 ]
  %1765 = phi float [ %878, %1662 ], [ %878, %1169 ], [ %878, %867 ], [ %1699, %1687 ], [ %1736, %1705 ], [ %878, %1739 ], [ %1752, %1741 ]
  %1766 = phi float [ %879, %1662 ], [ %879, %1169 ], [ %879, %867 ], [ %1696, %1687 ], [ %1713, %1705 ], [ %879, %1739 ], [ %1749, %1741 ]
  %1767 = phi float [ %880, %1662 ], [ %880, %1169 ], [ %880, %867 ], [ %1702, %1687 ], [ %1738, %1705 ], [ %880, %1739 ], [ %1754, %1741 ]
  %1768 = phi float [ %1670, %1662 ], [ %881, %1169 ], [ %881, %867 ], [ %1670, %1687 ], [ %1670, %1705 ], [ %1670, %1739 ], [ %1670, %1741 ]
  %1769 = icmp ult i32 %367, 3
  %1770 = add i32 %44, 56
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = add i32 %44, 60
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = or i32 %1775, %1772
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %2642, label %1778

; <label>:1778                                    ; preds = %1755
  %1779 = add i32 %44, 316
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = lshr i32 %1781, 16
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = fmul fast float %1783, 0x3F50624DE0000000
  %1785 = add i32 %44, 120
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 16
  %1789 = and i32 %1788, 255
  %1790 = lshr i32 %1787, 24
  %1791 = add i32 %44, 324
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 65535
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = lshr i32 %1793, 16
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = add i32 %44, 64
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = lshr i32 %1800, 22
  %1802 = shl nuw nsw i32 %1801, 5
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = shl i32 %1800, 4
  %1805 = and i32 %1804, 32752
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = lshr i32 %1800, 7
  %1808 = and i32 %1807, 32752
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 3
  %1812 = fmul fast float %1811, 1.000000e+03
  %1813 = fmul fast float %318, %1812
  %1814 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1815 = fadd fast float %1814, %308
  %1816 = fmul fast float %319, %1812
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = fadd fast float %1817, %310
  %1819 = fmul fast float %1784, %1812
  %1820 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1821 = fmul fast float %1820, 0x401921FB60000000
  %1822 = fadd fast float %1821, %1803
  %1823 = call float @dx.op.unary.f32(i32 13, float %1822)  ; Sin(value)
  %1824 = call float @dx.op.unary.f32(i32 12, float %1822)  ; Cos(value)
  %1825 = fsub fast float -0.000000e+00, %1823
  %1826 = fadd fast float %67, -5.000000e-01
  %1827 = fadd fast float %68, -5.000000e-01
  %1828 = fmul fast float %1795, %1826
  %1829 = fmul fast float %1797, %1827
  %1830 = fadd fast float %1828, 5.000000e-01
  %1831 = fadd fast float %1829, 5.000000e-01
  %1832 = fmul fast float %1806, %1830
  %1833 = fmul fast float %1809, %1831
  %1834 = fmul fast float %1824, %1832
  %1835 = call float @dx.op.tertiary.f32(i32 46, float %1825, float %1833, float %1834)  ; FMad(a,b,c)
  %1836 = fmul fast float %1823, %1832
  %1837 = call float @dx.op.tertiary.f32(i32 46, float %1824, float %1833, float %1836)  ; FMad(a,b,c)
  %1838 = fadd fast float %1815, %1835
  %1839 = fadd fast float %1818, %1837
  %1840 = icmp ugt i32 %1789, 1
  %1841 = icmp ugt i32 %1787, 33554431
  %1842 = or i1 %1841, %1840
  br i1 %1842, label %1843, label %1868

; <label>:1843                                    ; preds = %1778
  %1844 = add i32 %44, 260
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = lshr i32 %1846, 16
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = fmul fast float %1811, %1848
  %1850 = call float @dx.op.unary.f32(i32 22, float %1849)  ; Frc(value)
  %1851 = mul nuw nsw i32 %1789, %1790
  %1852 = uitofp i32 %1851 to float
  %1853 = fmul fast float %1850, %1852
  %1854 = call float @dx.op.unary.f32(i32 27, float %1853)  ; Round_ni(value)
  %1855 = fptoui float %1854 to i32
  %1856 = urem i32 %1855, %1789
  %1857 = udiv i32 %1855, %1790
  %1858 = call float @dx.op.unary.f32(i32 22, float %1838)  ; Frc(value)
  %1859 = call float @dx.op.unary.f32(i32 22, float %1839)  ; Frc(value)
  %1860 = uitofp i32 %1856 to float
  %1861 = uitofp i32 %1857 to float
  %1862 = fadd fast float %1858, %1860
  %1863 = fadd fast float %1859, %1861
  %1864 = uitofp i32 %1789 to float
  %1865 = uitofp i32 %1790 to float
  %1866 = fdiv fast float %1862, %1864
  %1867 = fdiv fast float %1863, %1865
  br label %1868

; <label>:1868                                    ; preds = %1843, %1778
  %1869 = phi float [ %1866, %1843 ], [ %1838, %1778 ]
  %1870 = phi float [ %1867, %1843 ], [ %1839, %1778 ]
  %1871 = and i32 %1772, 16777216
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1982, label %1873

; <label>:1873                                    ; preds = %1868
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1874, 2
  %1878 = fadd fast float %1875, %132
  %1879 = fadd fast float %1876, %133
  %1880 = fadd fast float %1877, %134
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1884 = icmp eq i32 %43, 65535
  br i1 %1884, label %1979, label %1885

; <label>:1885                                    ; preds = %1873
  %1886 = lshr i32 %43, 1
  %1887 = shl i32 %1886, 2
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %43, 1
  %1891 = icmp ne i32 %1890, 0
  %1892 = lshr i32 %1889, 16
  %1893 = and i32 %1889, 65535
  %1894 = select i1 %1891, i32 %1892, i32 %1893
  %1895 = icmp eq i32 %1894, 65535
  br i1 %1895, label %1975, label %1896

; <label>:1896                                    ; preds = %1885
  %1897 = mul nuw nsw i32 %1894, 40
  %1898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1898, 2
  %1902 = add nuw nsw i32 %1897, 12
  %1903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.ResRet.f32 %1903, 1
  %1906 = extractvalue %dx.types.ResRet.f32 %1903, 2
  %1907 = add nuw nsw i32 %1897, 24
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = add nuw nsw i32 %1897, 36
  %1913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = fsub fast float %1878, %1899
  %1916 = fsub fast float %1879, %1900
  %1917 = fsub fast float %1880, %1901
  %1918 = fmul fast float %1914, %1915
  %1919 = fmul fast float %1914, %1916
  %1920 = fmul fast float %1914, %1917
  %1921 = call float @dx.op.unary.f32(i32 27, float %1918)  ; Round_ni(value)
  %1922 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fmul fast float %1924, %1904
  %1928 = fmul fast float %1925, %1905
  %1929 = fmul fast float %1926, %1906
  %1930 = shl i32 %43, 2
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = add i32 %1932, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1936 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1937 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1934, %dx.types.Handle %40, float %1935, float %1936, float %1937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.ResRet.f32 %1938, 2
  %1942 = fmul fast float %1939, 1.023000e+03
  %1943 = fmul fast float %1940, 1.023000e+03
  %1944 = fmul fast float %1941, 1.023000e+03
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = fadd fast float %1943, 5.000000e-01
  %1947 = fadd fast float %1944, 5.000000e-01
  %1948 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1949 = call float @dx.op.unary.f32(i32 27, float %1946)  ; Round_ni(value)
  %1950 = call float @dx.op.unary.f32(i32 27, float %1947)  ; Round_ni(value)
  %1951 = fsub fast float %1918, %1921
  %1952 = fsub fast float %1919, %1922
  %1953 = fsub fast float %1920, %1923
  %1954 = fmul fast float %1951, 7.500000e-01
  %1955 = fmul fast float %1952, 7.500000e-01
  %1956 = fmul fast float %1953, 7.500000e-01
  %1957 = fadd fast float %1921, 1.250000e-01
  %1958 = fadd fast float %1957, %1954
  %1959 = fadd fast float %1958, %1948
  %1960 = fadd fast float %1922, 1.250000e-01
  %1961 = fadd fast float %1960, %1955
  %1962 = fadd fast float %1961, %1949
  %1963 = fadd fast float %1923, 1.250000e-01
  %1964 = fadd fast float %1963, %1956
  %1965 = fadd fast float %1964, %1950
  %1966 = fmul fast float %1959, %1909
  %1967 = fmul fast float %1962, %1910
  %1968 = fmul fast float %1965, %1911
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = add i32 %1970, 0
  %1972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1972, %dx.types.Handle %38, float %1966, float %1967, float %1968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  br label %1975

; <label>:1975                                    ; preds = %1896, %1885
  %1976 = phi float [ %1974, %1896 ], [ -1.000000e+00, %1885 ]
  %1977 = fadd fast float %1976, %1883
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  br label %1979

; <label>:1979                                    ; preds = %1975, %1873
  %1980 = phi float [ %1978, %1975 ], [ %1883, %1873 ]
  %1981 = fmul fast float %1980, %76
  br label %1982

; <label>:1982                                    ; preds = %1979, %1868
  %1983 = phi float [ %1981, %1979 ], [ %76, %1868 ]
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, 256
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2034, label %1988

; <label>:1988                                    ; preds = %1982
  %1989 = add i32 %44, 432
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = add i32 %1991, 0
  %1993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1993, %dx.types.Handle %82, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = add i32 %44, 132
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = shl i32 %1998, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = lshr i32 %1998, 7
  %2003 = and i32 %2002, 32752
  %2004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2003)  ; LegacyF16ToF32(value)
  %2005 = fsub fast float 1.000000e+00, %1983
  %2006 = call float @dx.op.binary.f32(i32 35, float %2005, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2007 = bitcast float %1983 to i32
  %2008 = sitofp i32 %2007 to float
  %2009 = fadd fast float %2008, 0xC1CFBF8940000000
  %2010 = fmul fast float %2004, %2009
  %2011 = fadd fast float %2010, 0x41CFBF8940000000
  %2012 = fptosi float %2011 to i32
  %2013 = bitcast i32 %2012 to float
  %2014 = bitcast float %2006 to i32
  %2015 = sitofp i32 %2014 to float
  %2016 = fadd fast float %2015, 0xC1CFBF8940000000
  %2017 = fmul fast float %2016, %2004
  %2018 = fadd fast float %2017, 0x41CFBF8940000000
  %2019 = fptosi float %2018 to i32
  %2020 = bitcast i32 %2019 to float
  %2021 = fmul fast float %2013, %2001
  %2022 = fmul fast float %2020, %2001
  %2023 = fsub fast float %2006, %2021
  %2024 = fadd fast float %2022, %2006
  %2025 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2027 = fsub fast float %1995, %2025
  %2028 = fsub fast float %2026, %2025
  %2029 = bitcast float %2028 to i32
  %2030 = sub nsw i32 2129859010, %2029
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %2031, %2027
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  br label %2034

; <label>:2034                                    ; preds = %1988, %1982
  %2035 = phi float [ %2033, %1988 ], [ %1983, %1982 ]
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 128
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2056, label %2040

; <label>:2040                                    ; preds = %2034
  %2041 = add i32 %44, 416
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2043, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2045, %dx.types.Handle %82, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 524288
  %2051 = icmp ne i32 %2050, 0
  %2052 = fcmp fast ogt float %2047, 0x3FE0101020000000
  %2053 = select i1 %2052, float 1.000000e+00, float 0.000000e+00
  %2054 = select i1 %2051, float %2053, float %2047
  %2055 = fmul fast float %2054, %2035
  br label %2056

; <label>:2056                                    ; preds = %2040, %2034
  %2057 = phi float [ %2055, %2040 ], [ %2035, %2034 ]
  %2058 = fcmp fast ult float %2057, 0x3F70101020000000
  br i1 %2058, label %2642, label %2059

; <label>:2059                                    ; preds = %2056
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 16
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2262, label %2064

; <label>:2064                                    ; preds = %2059
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = add i32 %44, 368
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %2069, 0
  %2071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2071, %dx.types.Handle %81, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.ResRet.f32 %2072, 3
  %2077 = and i32 %2066, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = lshr i32 %2066, 8
  %2080 = and i32 %2079, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = fmul fast float %2076, %2078
  %2083 = fadd fast float %2082, %2081
  %2084 = fmul fast float %2083, 0x3F70101000000000
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 512
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2097, label %2089

; <label>:2089                                    ; preds = %2064
  %2090 = add i32 %44, 448
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = add i32 %2092, 0
  %2094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2094, %dx.types.Handle %82, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  br label %2097

; <label>:2097                                    ; preds = %2089, %2064
  %2098 = phi float [ %2096, %2089 ], [ 1.000000e+00, %2064 ]
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = and i32 %2100, 33554432
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2209, label %2103

; <label>:2103                                    ; preds = %2097
  %2104 = add i32 %44, 256
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 65535
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = lshr i32 %2106, 16
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = add i32 %44, 260
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = and i32 %2113, 65535
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = lshr i32 %2117, 24
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = and i32 %2117, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = lshr i32 %2117, 8
  %2125 = and i32 %2124, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = lshr i32 %2117, 16
  %2129 = and i32 %2128, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = add i32 %44, 252
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = lshr i32 %2134, 24
  %2136 = uitofp i32 %2135 to float
  %2137 = fmul fast float %2136, 0x3F70101020000000
  %2138 = and i32 %2134, 255
  %2139 = uitofp i32 %2138 to float
  %2140 = fmul fast float %2139, 0x3F70101020000000
  %2141 = lshr i32 %2134, 8
  %2142 = and i32 %2141, 255
  %2143 = uitofp i32 %2142 to float
  %2144 = fmul fast float %2143, 0x3F70101020000000
  %2145 = lshr i32 %2134, 16
  %2146 = and i32 %2145, 255
  %2147 = uitofp i32 %2146 to float
  %2148 = fmul fast float %2147, 0x3F70101020000000
  %2149 = bitcast float %2073 to i32
  %2150 = ashr i32 %2149, 1
  %2151 = sub nsw i32 1597463174, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2073, 5.000000e-01
  %2154 = fmul fast float %2152, %2152
  %2155 = fmul fast float %2154, %2153
  %2156 = fsub fast float 1.500000e+00, %2155
  %2157 = fmul fast float %2152, %2073
  %2158 = fmul fast float %2157, %2156
  %2159 = bitcast float %2074 to i32
  %2160 = ashr i32 %2159, 1
  %2161 = sub nsw i32 1597463174, %2160
  %2162 = bitcast i32 %2161 to float
  %2163 = fmul fast float %2074, 5.000000e-01
  %2164 = fmul fast float %2162, %2162
  %2165 = fmul fast float %2164, %2163
  %2166 = fsub fast float 1.500000e+00, %2165
  %2167 = fmul fast float %2162, %2074
  %2168 = fmul fast float %2167, %2166
  %2169 = bitcast float %2075 to i32
  %2170 = ashr i32 %2169, 1
  %2171 = sub nsw i32 1597463174, %2170
  %2172 = bitcast i32 %2171 to float
  %2173 = fmul fast float %2075, 5.000000e-01
  %2174 = fmul fast float %2172, %2172
  %2175 = fmul fast float %2174, %2173
  %2176 = fsub fast float 1.500000e+00, %2175
  %2177 = fmul fast float %2172, %2075
  %2178 = fmul fast float %2177, %2176
  %2179 = fsub fast float %2158, %2140
  %2180 = fsub fast float %2168, %2144
  %2181 = fsub fast float %2178, %2148
  %2182 = fmul fast float %2179, %2108
  %2183 = fmul fast float %2180, %2110
  %2184 = fmul fast float %2181, %2115
  %2185 = fadd fast float %2182, %2123
  %2186 = fadd fast float %2183, %2127
  %2187 = fadd fast float %2184, %2131
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2190 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2191 = fmul fast float %2188, %2188
  %2192 = fmul fast float %2189, %2189
  %2193 = fmul fast float %2190, %2190
  %2194 = fsub fast float %2191, %2073
  %2195 = fsub fast float %2192, %2074
  %2196 = fsub fast float %2193, %2075
  %2197 = fmul fast float %2194, %2098
  %2198 = fmul fast float %2195, %2098
  %2199 = fmul fast float %2196, %2098
  %2200 = fadd fast float %2197, %2073
  %2201 = fadd fast float %2198, %2074
  %2202 = fadd fast float %2199, %2075
  %2203 = fadd fast float %2120, %2084
  %2204 = fsub fast float %2203, %2137
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float %2205, %2084
  %2207 = fmul fast float %2206, %2098
  %2208 = fadd fast float %2207, %2084
  br label %2262

; <label>:2209                                    ; preds = %2097
  %2210 = and i32 %2100, 134217728
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2246, label %2212

; <label>:2212                                    ; preds = %2209
  %2213 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %2214 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2215 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2216 = fadd fast float %2213, -5.000000e-01
  %2217 = fadd fast float %2214, -5.000000e-01
  %2218 = fadd fast float %2215, -5.000000e-01
  %2219 = fmul fast float %2216, %2098
  %2220 = fmul fast float %2217, %2098
  %2221 = fmul fast float %2218, %2098
  %2222 = fadd fast float %2219, 5.000000e-01
  %2223 = fadd fast float %2220, 5.000000e-01
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = call float @dx.op.unary.f32(i32 24, float %2073)  ; Sqrt(value)
  %2226 = call float @dx.op.unary.f32(i32 24, float %2074)  ; Sqrt(value)
  %2227 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2228 = fmul fast float %2222, 2.000000e+00
  %2229 = fsub fast float 1.000000e+00, %2228
  %2230 = fmul fast float %2229, %2225
  %2231 = fadd fast float %2230, %2228
  %2232 = fmul fast float %2231, %2225
  %2233 = fmul fast float %2223, 2.000000e+00
  %2234 = fsub fast float 1.000000e+00, %2233
  %2235 = fmul fast float %2234, %2226
  %2236 = fadd fast float %2235, %2233
  %2237 = fmul fast float %2236, %2226
  %2238 = fmul fast float %2224, 2.000000e+00
  %2239 = fsub fast float 1.000000e+00, %2238
  %2240 = fmul fast float %2239, %2227
  %2241 = fadd fast float %2240, %2238
  %2242 = fmul fast float %2241, %2227
  %2243 = fmul fast float %2232, %2232
  %2244 = fmul fast float %2237, %2237
  %2245 = fmul fast float %2242, %2242
  br label %2262

; <label>:2246                                    ; preds = %2209
  %2247 = fmul fast float %295, %295
  %2248 = fmul fast float %299, %299
  %2249 = fmul fast float %303, %303
  %2250 = fadd fast float %2247, -1.000000e+00
  %2251 = fadd fast float %2248, -1.000000e+00
  %2252 = fadd fast float %2249, -1.000000e+00
  %2253 = fmul fast float %2098, %2250
  %2254 = fmul fast float %2098, %2251
  %2255 = fmul fast float %2098, %2252
  %2256 = fadd fast float %2253, 1.000000e+00
  %2257 = fadd fast float %2254, 1.000000e+00
  %2258 = fadd fast float %2255, 1.000000e+00
  %2259 = fmul fast float %2256, %2073
  %2260 = fmul fast float %2257, %2074
  %2261 = fmul fast float %2258, %2075
  br label %2262

; <label>:2262                                    ; preds = %2246, %2212, %2103, %2059
  %2263 = phi float [ %2208, %2103 ], [ %2084, %2212 ], [ %2084, %2246 ], [ 0x3FA23C0BE0000000, %2059 ]
  %2264 = phi float [ %2200, %2103 ], [ %2243, %2212 ], [ %2259, %2246 ], [ 1.000000e+00, %2059 ]
  %2265 = phi float [ %2201, %2103 ], [ %2244, %2212 ], [ %2260, %2246 ], [ 1.000000e+00, %2059 ]
  %2266 = phi float [ %2202, %2103 ], [ %2245, %2212 ], [ %2261, %2246 ], [ 1.000000e+00, %2059 ]
  %2267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.i32 %2267, 1
  %2269 = and i32 %2268, 1
  %2270 = icmp ne i32 %2269, 0
  %2271 = add i32 %44, 356
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 32
  %2275 = icmp ne i32 %2274, 0
  %2276 = and i1 %2270, %2275
  %2277 = select i1 %2276, float 1.000000e+00, float %2264
  %2278 = select i1 %2276, float 0x3FD3333340000000, float %2265
  %2279 = select i1 %2276, float 0x3FD3333340000000, float %2266
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 32
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2356, label %2284

; <label>:2284                                    ; preds = %2262
  %2285 = add i32 %44, 124
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %44, 384
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %2290, 0
  %2292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2292, %dx.types.Handle %81, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.ResRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.ResRet.f32 %2293, 2
  %2297 = extractvalue %dx.types.ResRet.f32 %2293, 3
  %2298 = and i32 %2287, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = lshr i32 %2287, 8
  %2301 = and i32 %2300, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2287, 16
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, 0x3F70101000000000
  %2307 = fmul fast float %2294, %2299
  %2308 = fadd fast float %2307, %2302
  %2309 = fmul fast float %2308, 0x3F70101000000000
  %2310 = fadd fast float %2295, -5.000000e-01
  %2311 = fadd fast float %2297, -5.000000e-01
  %2312 = fmul fast float %2310, %2306
  %2313 = fmul fast float %2311, %2306
  %2314 = fadd fast float %2312, 5.000000e-01
  %2315 = fadd fast float %2313, 5.000000e-01
  %2316 = fmul fast float %2314, 2.000000e+00
  %2317 = fadd fast float %2316, -1.000000e+00
  %2318 = fmul fast float %2315, 2.000000e+00
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = fadd fast float %2317, %2319
  %2321 = fmul fast float %2320, 5.000000e-01
  %2322 = fsub fast float %2317, %2319
  %2323 = fmul fast float %2322, 5.000000e-01
  %2324 = call float @dx.op.unary.f32(i32 6, float %2321)  ; FAbs(value)
  %2325 = fsub fast float 1.000000e+00, %2324
  %2326 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2327 = fsub fast float %2325, %2326
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2323, float %2327, float %2321, float %2323, float %2327)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = call float @dx.op.unary.f32(i32 25, float %2328)  ; Rsqrt(value)
  %2330 = fmul fast float %2321, %2329
  %2331 = fmul fast float %2323, %2329
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 67108864
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2352, label %2336

; <label>:2336                                    ; preds = %2284
  %2337 = add i32 %44, 312
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 65535
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = lshr i32 %2339, 16
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = fsub fast float %2309, %2347
  %2349 = fmul fast float %2348, %2341
  %2350 = fadd fast float %2349, %2345
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  br label %2352

; <label>:2352                                    ; preds = %2336, %2284
  %2353 = phi float [ %2351, %2336 ], [ %2309, %2284 ]
  %2354 = call float @dx.op.dot2.f32(i32 54, float %2330, float %2331, float %49, float %50)  ; Dot2(ax,ay,bx,by)
  %2355 = call float @dx.op.dot2.f32(i32 54, float %2330, float %2331, float %51, float %52)  ; Dot2(ax,ay,bx,by)
  br label %2356

; <label>:2356                                    ; preds = %2352, %2262
  %2357 = phi float [ %2353, %2352 ], [ 0x3FD6666660000000, %2262 ]
  %2358 = phi float [ %2354, %2352 ], [ 0.000000e+00, %2262 ]
  %2359 = phi float [ %2355, %2352 ], [ 0.000000e+00, %2262 ]
  %2360 = phi float [ %2296, %2352 ], [ 1.000000e+00, %2262 ]
  %2361 = add i32 %44, 192
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = lshr i32 %2363, 22
  %2365 = shl nuw nsw i32 %2364, 5
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 64
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2404, label %2371

; <label>:2371                                    ; preds = %2356
  %2372 = add i32 %44, 400
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = add i32 %2374, 0
  %2376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 131072
  %2380 = icmp eq i32 %2379, 0
  %2381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2376, %dx.types.Handle %81, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = fmul fast float %2382, %283
  %2386 = fmul fast float %2383, %286
  %2387 = fmul fast float %2384, %289
  br i1 %2380, label %2394, label %2388

; <label>:2388                                    ; preds = %2371
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = fmul fast float %2390, %2385
  %2392 = fmul fast float %2390, %2386
  %2393 = fmul fast float %2390, %2387
  br label %2394

; <label>:2394                                    ; preds = %2388, %2371
  %2395 = phi float [ %2391, %2388 ], [ %2385, %2371 ]
  %2396 = phi float [ %2392, %2388 ], [ %2386, %2371 ]
  %2397 = phi float [ %2393, %2388 ], [ %2387, %2371 ]
  %2398 = fmul fast float %2395, %2366
  %2399 = select i1 %203, float %2398, float %2395
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2396, float %2397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = select i1 %203, float 0.000000e+00, float %2395
  %2402 = select i1 %203, float %2400, float %2396
  %2403 = select i1 %203, float 0.000000e+00, float %2397
  br label %2404

; <label>:2404                                    ; preds = %2394, %2356
  %2405 = phi float [ %2401, %2394 ], [ 0.000000e+00, %2356 ]
  %2406 = phi float [ %2402, %2394 ], [ 0.000000e+00, %2356 ]
  %2407 = phi float [ %2403, %2394 ], [ 0.000000e+00, %2356 ]
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 14336
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2437, label %2412

; <label>:2412                                    ; preds = %2404
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 4096
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2437, label %2417

; <label>:2417                                    ; preds = %2412
  %2418 = and i32 %2414, 1048576
  %2419 = icmp ne i32 %2418, 0
  %2420 = add i32 %44, 464
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = add i32 %2422, 0
  %2424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2425 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2424, %dx.types.Handle %82, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2426 = extractvalue %dx.types.ResRet.f32 %2425, 2
  %2427 = select i1 %2419, float 1.000000e+00, float %2426
  %2428 = add i32 %44, 196
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 65535
  %2432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2431)  ; LegacyF16ToF32(value)
  %2433 = lshr i32 %2430, 16
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = fmul fast float %2432, %2427
  %2436 = fadd fast float %2435, %2434
  br label %2437

; <label>:2437                                    ; preds = %2417, %2412, %2404
  %2438 = phi float [ %2436, %2417 ], [ 0.000000e+00, %2412 ], [ 0.000000e+00, %2404 ]
  %2439 = add i32 %44, 128
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = lshr i32 %2441, 8
  %2445 = and i32 %2444, 255
  %2446 = uitofp i32 %2445 to float
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2277, float %2278, float %2279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = fmul fast float %2446, %2447
  %2449 = fadd fast float %2448, %2443
  %2450 = fmul fast float %2449, 0x3F70101020000000
  %2451 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  br i1 %1769, label %2452, label %2460

; <label>:2452                                    ; preds = %2437
  %2453 = fsub fast float 1.000000e+00, %2057
  %2454 = fmul fast float %2453, %1758
  %2455 = fmul fast float %2453, %1759
  %2456 = fmul fast float %2453, %1760
  %2457 = fmul fast float %2453, %1761
  %2458 = fmul fast float %2453, %1762
  %2459 = fmul fast float %2453, %1763
  br label %2460

; <label>:2460                                    ; preds = %2452, %2437
  %2461 = phi float [ %2454, %2452 ], [ %1758, %2437 ]
  %2462 = phi float [ %2455, %2452 ], [ %1759, %2437 ]
  %2463 = phi float [ %2456, %2452 ], [ %1760, %2437 ]
  %2464 = phi float [ %2457, %2452 ], [ %1761, %2437 ]
  %2465 = phi float [ %2458, %2452 ], [ %1762, %2437 ]
  %2466 = phi float [ %2459, %2452 ], [ %1763, %2437 ]
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 3
  %2470 = icmp eq i32 %2469, 3
  br i1 %2470, label %2549, label %2471

; <label>:2471                                    ; preds = %2460
  %2472 = and i32 %2468, 16
  %2473 = icmp ne i32 %2472, 0
  %2474 = select i1 %2473, float %2057, float 0.000000e+00
  %2475 = icmp eq i32 %2469, 0
  br i1 %2475, label %2476, label %2504

; <label>:2476                                    ; preds = %2471
  %2477 = and i32 %2468, 64
  %2478 = icmp ne i32 %2477, 0
  %2479 = select i1 %2478, float %2057, float 0.000000e+00
  %2480 = fsub fast float %2277, %2461
  %2481 = fsub fast float %2278, %2462
  %2482 = fsub fast float %2279, %2463
  %2483 = fmul fast float %2474, %2480
  %2484 = fmul fast float %2474, %2481
  %2485 = fmul fast float %2474, %2482
  %2486 = fadd fast float %2483, %2461
  %2487 = fadd fast float %2484, %2462
  %2488 = fadd fast float %2485, %2463
  %2489 = fsub fast float %2263, %1764
  %2490 = fmul fast float %2474, %2489
  %2491 = fadd fast float %2490, %1764
  %2492 = fsub fast float %2405, %2464
  %2493 = fsub fast float %2406, %2465
  %2494 = fsub fast float %2407, %2466
  %2495 = fmul fast float %2479, %2492
  %2496 = fmul fast float %2479, %2493
  %2497 = fmul fast float %2479, %2494
  %2498 = fadd fast float %2495, %2464
  %2499 = fadd fast float %2496, %2465
  %2500 = fadd fast float %2497, %2466
  %2501 = fsub fast float %2451, %1768
  %2502 = fmul fast float %2474, %2501
  %2503 = fadd fast float %2502, %1768
  br label %2549

; <label>:2504                                    ; preds = %2471
  %2505 = icmp eq i32 %2469, 1
  br i1 %2505, label %2506, label %2519

; <label>:2506                                    ; preds = %2504
  %2507 = fadd fast float %2277, -1.000000e+00
  %2508 = fadd fast float %2278, -1.000000e+00
  %2509 = fadd fast float %2279, -1.000000e+00
  %2510 = fmul fast float %2474, %2507
  %2511 = fmul fast float %2474, %2508
  %2512 = fmul fast float %2474, %2509
  %2513 = fadd fast float %2510, 1.000000e+00
  %2514 = fadd fast float %2511, 1.000000e+00
  %2515 = fadd fast float %2512, 1.000000e+00
  %2516 = fmul fast float %2513, %2461
  %2517 = fmul fast float %2514, %2462
  %2518 = fmul fast float %2515, %2463
  br label %2549

; <label>:2519                                    ; preds = %2504
  %2520 = icmp eq i32 %2469, 2
  br i1 %2520, label %2521, label %2549

; <label>:2521                                    ; preds = %2519
  %2522 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2523 = call float @dx.op.unary.f32(i32 24, float %2278)  ; Sqrt(value)
  %2524 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2525 = fadd fast float %2522, -5.000000e-01
  %2526 = fadd fast float %2523, -5.000000e-01
  %2527 = fadd fast float %2524, -5.000000e-01
  %2528 = fmul fast float %2525, %2474
  %2529 = fmul fast float %2526, %2474
  %2530 = fmul fast float %2527, %2474
  %2531 = fadd fast float %2528, 5.000000e-01
  %2532 = fadd fast float %2529, 5.000000e-01
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = fmul fast float %2531, 2.000000e+00
  %2535 = fsub fast float 1.000000e+00, %2534
  %2536 = fmul fast float %2535, %2461
  %2537 = fadd fast float %2536, %2534
  %2538 = fmul fast float %2537, %2461
  %2539 = fmul fast float %2532, 2.000000e+00
  %2540 = fsub fast float 1.000000e+00, %2539
  %2541 = fmul fast float %2540, %2462
  %2542 = fadd fast float %2541, %2539
  %2543 = fmul fast float %2542, %2462
  %2544 = fmul fast float %2533, 2.000000e+00
  %2545 = fsub fast float 1.000000e+00, %2544
  %2546 = fmul fast float %2545, %2463
  %2547 = fadd fast float %2546, %2544
  %2548 = fmul fast float %2547, %2463
  br label %2549

; <label>:2549                                    ; preds = %2521, %2519, %2506, %2476, %2460
  %2550 = phi float [ %2461, %2460 ], [ %2538, %2521 ], [ %2461, %2519 ], [ %2516, %2506 ], [ %2486, %2476 ]
  %2551 = phi float [ %2462, %2460 ], [ %2543, %2521 ], [ %2462, %2519 ], [ %2517, %2506 ], [ %2487, %2476 ]
  %2552 = phi float [ %2463, %2460 ], [ %2548, %2521 ], [ %2463, %2519 ], [ %2518, %2506 ], [ %2488, %2476 ]
  %2553 = phi float [ %2464, %2460 ], [ %2464, %2521 ], [ %2464, %2519 ], [ %2464, %2506 ], [ %2498, %2476 ]
  %2554 = phi float [ %2465, %2460 ], [ %2465, %2521 ], [ %2465, %2519 ], [ %2465, %2506 ], [ %2499, %2476 ]
  %2555 = phi float [ %2466, %2460 ], [ %2466, %2521 ], [ %2466, %2519 ], [ %2466, %2506 ], [ %2500, %2476 ]
  %2556 = phi float [ %1764, %2460 ], [ %1764, %2521 ], [ %1764, %2519 ], [ %1764, %2506 ], [ %2491, %2476 ]
  %2557 = phi float [ %1768, %2460 ], [ %1768, %2521 ], [ %1768, %2519 ], [ %1768, %2506 ], [ %2503, %2476 ]
  %2558 = and i32 %2468, 12
  %2559 = icmp eq i32 %2558, 12
  br i1 %2559, label %2642, label %2560

; <label>:2560                                    ; preds = %2549
  %2561 = and i32 %2468, 2097184
  %2562 = icmp eq i32 %2561, 2097184
  %2563 = select i1 %2562, float %2057, float 0.000000e+00
  %2564 = and i32 %2468, 4194336
  %2565 = icmp eq i32 %2564, 4194336
  %2566 = select i1 %2565, float %2057, float 0.000000e+00
  %2567 = and i32 %2468, 8388640
  %2568 = icmp eq i32 %2567, 8388640
  %2569 = select i1 %2568, float %2057, float 0.000000e+00
  %2570 = and i32 %2468, 4096
  %2571 = icmp ne i32 %2570, 0
  %2572 = select i1 %2571, float %2057, float 0.000000e+00
  %2573 = icmp eq i32 %2558, 0
  br i1 %2573, label %2574, label %2590

; <label>:2574                                    ; preds = %2560
  %2575 = fsub fast float %2358, %1756
  %2576 = fsub fast float %2359, %1757
  %2577 = fmul fast float %2563, %2575
  %2578 = fmul fast float %2563, %2576
  %2579 = fadd fast float %2577, %1756
  %2580 = fadd fast float %2578, %1757
  %2581 = fsub fast float %2360, %1766
  %2582 = fmul fast float %2566, %2581
  %2583 = fadd fast float %2582, %1766
  %2584 = fsub fast float %2357, %1765
  %2585 = fmul fast float %2569, %2584
  %2586 = fadd fast float %2585, %1765
  %2587 = fsub fast float %2438, %1767
  %2588 = fmul fast float %2572, %2587
  %2589 = fadd fast float %2588, %1767
  br label %2642

; <label>:2590                                    ; preds = %2560
  %2591 = icmp eq i32 %2558, 4
  br i1 %2591, label %2592, label %2626

; <label>:2592                                    ; preds = %2590
  %2593 = fmul fast float %2563, %2358
  %2594 = fmul fast float %2563, %2359
  %2595 = fadd fast float %2593, %1756
  %2596 = fadd fast float %2594, %1757
  %2597 = call float @dx.op.binary.f32(i32 36, float %1766, float %2360)  ; FMin(a,b)
  %2598 = fsub fast float %2597, %1766
  %2599 = fmul fast float %2598, %2566
  %2600 = fadd fast float %2599, %1766
  %2601 = fadd fast float %2357, %1765
  %2602 = fmul fast float %2601, 0x3FF337FAE0000000
  %2603 = fmul fast float %1765, %1765
  %2604 = fmul fast float %2357, %2357
  %2605 = fadd fast float %2604, %2603
  %2606 = fmul fast float %2605, 0x3FE5152B00000000
  %2607 = fmul fast float %1765, 0xBFCC1F85E0000000
  %2608 = fmul fast float %2607, %2357
  %2609 = fadd fast float %2608, 0xBFE1363700000000
  %2610 = fadd fast float %2609, %2602
  %2611 = fsub fast float %2610, %2606
  %2612 = fmul fast float %2601, 0x3FBA6F0D00000000
  %2613 = fmul fast float %2605, 0x3FD0432880000000
  %2614 = fmul fast float %1765, 0xBFEF110800000000
  %2615 = fmul fast float %2614, %2357
  %2616 = fadd fast float %2615, 1.000000e+00
  %2617 = fsub fast float %2616, %2612
  %2618 = fadd fast float %2617, %2613
  %2619 = fdiv fast float %2611, %2618
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  %2621 = fsub fast float %2620, %1765
  %2622 = fmul fast float %2621, %2569
  %2623 = fadd fast float %2622, %1765
  %2624 = fmul fast float %2572, %2438
  %2625 = fadd fast float %2624, %1767
  br label %2642

; <label>:2626                                    ; preds = %2590
  %2627 = icmp eq i32 %2558, 8
  br i1 %2627, label %2628, label %2642

; <label>:2628                                    ; preds = %2626
  %2629 = fmul fast float %2563, %2358
  %2630 = fmul fast float %2563, %2359
  %2631 = fadd fast float %2629, %1756
  %2632 = fadd fast float %2630, %1757
  %2633 = call float @dx.op.binary.f32(i32 36, float %1766, float %2360)  ; FMin(a,b)
  %2634 = fsub fast float %2633, %1766
  %2635 = fmul fast float %2634, %2566
  %2636 = fadd fast float %2635, %1766
  %2637 = fsub fast float %2357, %1765
  %2638 = fmul fast float %2569, %2637
  %2639 = fadd fast float %2638, %1765
  %2640 = fmul fast float %2572, %2438
  %2641 = fadd fast float %2640, %1767
  br label %2642

; <label>:2642                                    ; preds = %2628, %2626, %2592, %2574, %2549, %2056, %1755
  %2643 = phi float [ %1756, %2549 ], [ %1756, %2056 ], [ %1756, %1755 ], [ %2579, %2574 ], [ %2595, %2592 ], [ %1756, %2626 ], [ %2631, %2628 ]
  %2644 = phi float [ %1757, %2549 ], [ %1757, %2056 ], [ %1757, %1755 ], [ %2580, %2574 ], [ %2596, %2592 ], [ %1757, %2626 ], [ %2632, %2628 ]
  %2645 = phi float [ %2550, %2549 ], [ %1758, %2056 ], [ %1758, %1755 ], [ %2550, %2574 ], [ %2550, %2592 ], [ %2550, %2626 ], [ %2550, %2628 ]
  %2646 = phi float [ %2551, %2549 ], [ %1759, %2056 ], [ %1759, %1755 ], [ %2551, %2574 ], [ %2551, %2592 ], [ %2551, %2626 ], [ %2551, %2628 ]
  %2647 = phi float [ %2552, %2549 ], [ %1760, %2056 ], [ %1760, %1755 ], [ %2552, %2574 ], [ %2552, %2592 ], [ %2552, %2626 ], [ %2552, %2628 ]
  %2648 = phi float [ %2553, %2549 ], [ %1761, %2056 ], [ %1761, %1755 ], [ %2553, %2574 ], [ %2553, %2592 ], [ %2553, %2626 ], [ %2553, %2628 ]
  %2649 = phi float [ %2554, %2549 ], [ %1762, %2056 ], [ %1762, %1755 ], [ %2554, %2574 ], [ %2554, %2592 ], [ %2554, %2626 ], [ %2554, %2628 ]
  %2650 = phi float [ %2555, %2549 ], [ %1763, %2056 ], [ %1763, %1755 ], [ %2555, %2574 ], [ %2555, %2592 ], [ %2555, %2626 ], [ %2555, %2628 ]
  %2651 = phi float [ %2556, %2549 ], [ %1764, %2056 ], [ %1764, %1755 ], [ %2556, %2574 ], [ %2556, %2592 ], [ %2556, %2626 ], [ %2556, %2628 ]
  %2652 = phi float [ %1765, %2549 ], [ %1765, %2056 ], [ %1765, %1755 ], [ %2586, %2574 ], [ %2623, %2592 ], [ %1765, %2626 ], [ %2639, %2628 ]
  %2653 = phi float [ %1766, %2549 ], [ %1766, %2056 ], [ %1766, %1755 ], [ %2583, %2574 ], [ %2600, %2592 ], [ %1766, %2626 ], [ %2636, %2628 ]
  %2654 = phi float [ %1767, %2549 ], [ %1767, %2056 ], [ %1767, %1755 ], [ %2589, %2574 ], [ %2625, %2592 ], [ %1767, %2626 ], [ %2641, %2628 ]
  %2655 = phi float [ %2557, %2549 ], [ %1768, %2056 ], [ %1768, %1755 ], [ %2557, %2574 ], [ %2557, %2592 ], [ %2557, %2626 ], [ %2557, %2628 ]
  %2656 = icmp ult i32 %367, 4
  %2657 = add i32 %44, 72
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = add i32 %44, 76
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = or i32 %2662, %2659
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %3529, label %2665

; <label>:2665                                    ; preds = %2642
  %2666 = add i32 %44, 332
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = lshr i32 %2668, 16
  %2670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2669)  ; LegacyF16ToF32(value)
  %2671 = fmul fast float %2670, 0x3F50624DE0000000
  %2672 = add i32 %44, 136
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = lshr i32 %2674, 16
  %2676 = and i32 %2675, 255
  %2677 = lshr i32 %2674, 24
  %2678 = add i32 %44, 340
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = and i32 %2680, 65535
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = lshr i32 %2680, 16
  %2684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2683)  ; LegacyF16ToF32(value)
  %2685 = add i32 %44, 80
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = lshr i32 %2687, 22
  %2689 = shl nuw nsw i32 %2688, 5
  %2690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2689)  ; LegacyF16ToF32(value)
  %2691 = shl i32 %2687, 4
  %2692 = and i32 %2691, 32752
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = lshr i32 %2687, 7
  %2695 = and i32 %2694, 32752
  %2696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2695)  ; LegacyF16ToF32(value)
  %2697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2698 = extractvalue %dx.types.CBufRet.f32 %2697, 3
  %2699 = fmul fast float %2698, 1.000000e+03
  %2700 = fmul fast float %360, %2699
  %2701 = call float @dx.op.unary.f32(i32 22, float %2700)  ; Frc(value)
  %2702 = fadd fast float %2701, %350
  %2703 = fmul fast float %361, %2699
  %2704 = call float @dx.op.unary.f32(i32 22, float %2703)  ; Frc(value)
  %2705 = fadd fast float %2704, %352
  %2706 = fmul fast float %2671, %2699
  %2707 = call float @dx.op.unary.f32(i32 22, float %2706)  ; Frc(value)
  %2708 = fmul fast float %2707, 0x401921FB60000000
  %2709 = fadd fast float %2708, %2690
  %2710 = call float @dx.op.unary.f32(i32 13, float %2709)  ; Sin(value)
  %2711 = call float @dx.op.unary.f32(i32 12, float %2709)  ; Cos(value)
  %2712 = fsub fast float -0.000000e+00, %2710
  %2713 = fadd fast float %69, -5.000000e-01
  %2714 = fadd fast float %70, -5.000000e-01
  %2715 = fmul fast float %2682, %2713
  %2716 = fmul fast float %2684, %2714
  %2717 = fadd fast float %2715, 5.000000e-01
  %2718 = fadd fast float %2716, 5.000000e-01
  %2719 = fmul fast float %2693, %2717
  %2720 = fmul fast float %2696, %2718
  %2721 = fmul fast float %2711, %2719
  %2722 = call float @dx.op.tertiary.f32(i32 46, float %2712, float %2720, float %2721)  ; FMad(a,b,c)
  %2723 = fmul fast float %2710, %2719
  %2724 = call float @dx.op.tertiary.f32(i32 46, float %2711, float %2720, float %2723)  ; FMad(a,b,c)
  %2725 = fadd fast float %2702, %2722
  %2726 = fadd fast float %2705, %2724
  %2727 = icmp ugt i32 %2676, 1
  %2728 = icmp ugt i32 %2674, 33554431
  %2729 = or i1 %2728, %2727
  br i1 %2729, label %2730, label %2755

; <label>:2730                                    ; preds = %2665
  %2731 = add i32 %44, 276
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = lshr i32 %2733, 16
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = fmul fast float %2698, %2735
  %2737 = call float @dx.op.unary.f32(i32 22, float %2736)  ; Frc(value)
  %2738 = mul nuw nsw i32 %2676, %2677
  %2739 = uitofp i32 %2738 to float
  %2740 = fmul fast float %2737, %2739
  %2741 = call float @dx.op.unary.f32(i32 27, float %2740)  ; Round_ni(value)
  %2742 = fptoui float %2741 to i32
  %2743 = urem i32 %2742, %2676
  %2744 = udiv i32 %2742, %2677
  %2745 = call float @dx.op.unary.f32(i32 22, float %2725)  ; Frc(value)
  %2746 = call float @dx.op.unary.f32(i32 22, float %2726)  ; Frc(value)
  %2747 = uitofp i32 %2743 to float
  %2748 = uitofp i32 %2744 to float
  %2749 = fadd fast float %2745, %2747
  %2750 = fadd fast float %2746, %2748
  %2751 = uitofp i32 %2676 to float
  %2752 = uitofp i32 %2677 to float
  %2753 = fdiv fast float %2749, %2751
  %2754 = fdiv fast float %2750, %2752
  br label %2755

; <label>:2755                                    ; preds = %2730, %2665
  %2756 = phi float [ %2753, %2730 ], [ %2725, %2665 ]
  %2757 = phi float [ %2754, %2730 ], [ %2726, %2665 ]
  %2758 = and i32 %2659, 16777216
  %2759 = icmp eq i32 %2758, 0
  br i1 %2759, label %2869, label %2760

; <label>:2760                                    ; preds = %2755
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.CBufRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2765 = fadd fast float %2762, %132
  %2766 = fadd fast float %2763, %133
  %2767 = fadd fast float %2764, %134
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  %2771 = icmp eq i32 %43, 65535
  br i1 %2771, label %2866, label %2772

; <label>:2772                                    ; preds = %2760
  %2773 = lshr i32 %43, 1
  %2774 = shl i32 %2773, 2
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = and i32 %43, 1
  %2778 = icmp ne i32 %2777, 0
  %2779 = lshr i32 %2776, 16
  %2780 = and i32 %2776, 65535
  %2781 = select i1 %2778, i32 %2779, i32 %2780
  %2782 = icmp eq i32 %2781, 65535
  br i1 %2782, label %2862, label %2783

; <label>:2783                                    ; preds = %2772
  %2784 = mul nuw nsw i32 %2781, 40
  %2785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.ResRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.ResRet.f32 %2785, 2
  %2789 = add nuw nsw i32 %2784, 12
  %2790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = add nuw nsw i32 %2784, 24
  %2795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.f32 %2795, 0
  %2797 = extractvalue %dx.types.ResRet.f32 %2795, 1
  %2798 = extractvalue %dx.types.ResRet.f32 %2795, 2
  %2799 = add nuw nsw i32 %2784, 36
  %2800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.f32 %2800, 0
  %2802 = fsub fast float %2765, %2786
  %2803 = fsub fast float %2766, %2787
  %2804 = fsub fast float %2767, %2788
  %2805 = fmul fast float %2801, %2802
  %2806 = fmul fast float %2801, %2803
  %2807 = fmul fast float %2801, %2804
  %2808 = call float @dx.op.unary.f32(i32 27, float %2805)  ; Round_ni(value)
  %2809 = call float @dx.op.unary.f32(i32 27, float %2806)  ; Round_ni(value)
  %2810 = call float @dx.op.unary.f32(i32 27, float %2807)  ; Round_ni(value)
  %2811 = fadd fast float %2808, 5.000000e-01
  %2812 = fadd fast float %2809, 5.000000e-01
  %2813 = fadd fast float %2810, 5.000000e-01
  %2814 = fmul fast float %2811, %2791
  %2815 = fmul fast float %2812, %2792
  %2816 = fmul fast float %2813, %2793
  %2817 = shl i32 %43, 2
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = add i32 %2819, 0
  %2821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2822 = call float @dx.op.unary.f32(i32 22, float %2814)  ; Frc(value)
  %2823 = call float @dx.op.unary.f32(i32 22, float %2815)  ; Frc(value)
  %2824 = call float @dx.op.unary.f32(i32 22, float %2816)  ; Frc(value)
  %2825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2821, %dx.types.Handle %40, float %2822, float %2823, float %2824, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.ResRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.ResRet.f32 %2825, 2
  %2829 = fmul fast float %2826, 1.023000e+03
  %2830 = fmul fast float %2827, 1.023000e+03
  %2831 = fmul fast float %2828, 1.023000e+03
  %2832 = fadd fast float %2829, 5.000000e-01
  %2833 = fadd fast float %2830, 5.000000e-01
  %2834 = fadd fast float %2831, 5.000000e-01
  %2835 = call float @dx.op.unary.f32(i32 27, float %2832)  ; Round_ni(value)
  %2836 = call float @dx.op.unary.f32(i32 27, float %2833)  ; Round_ni(value)
  %2837 = call float @dx.op.unary.f32(i32 27, float %2834)  ; Round_ni(value)
  %2838 = fsub fast float %2805, %2808
  %2839 = fsub fast float %2806, %2809
  %2840 = fsub fast float %2807, %2810
  %2841 = fmul fast float %2838, 7.500000e-01
  %2842 = fmul fast float %2839, 7.500000e-01
  %2843 = fmul fast float %2840, 7.500000e-01
  %2844 = fadd fast float %2808, 1.250000e-01
  %2845 = fadd fast float %2844, %2841
  %2846 = fadd fast float %2845, %2835
  %2847 = fadd fast float %2809, 1.250000e-01
  %2848 = fadd fast float %2847, %2842
  %2849 = fadd fast float %2848, %2836
  %2850 = fadd fast float %2810, 1.250000e-01
  %2851 = fadd fast float %2850, %2843
  %2852 = fadd fast float %2851, %2837
  %2853 = fmul fast float %2846, %2796
  %2854 = fmul fast float %2849, %2797
  %2855 = fmul fast float %2852, %2798
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = add i32 %2857, 0
  %2859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2858, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2859, %dx.types.Handle %38, float %2853, float %2854, float %2855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2861 = extractvalue %dx.types.ResRet.f32 %2860, 0
  br label %2862

; <label>:2862                                    ; preds = %2783, %2772
  %2863 = phi float [ %2861, %2783 ], [ -1.000000e+00, %2772 ]
  %2864 = fadd fast float %2863, %2770
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  br label %2866

; <label>:2866                                    ; preds = %2862, %2760
  %2867 = phi float [ %2865, %2862 ], [ %2770, %2760 ]
  %2868 = fmul fast float %2867, %77
  br label %2869

; <label>:2869                                    ; preds = %2866, %2755
  %2870 = phi float [ %2868, %2866 ], [ %77, %2755 ]
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = and i32 %2872, 256
  %2874 = icmp eq i32 %2873, 0
  br i1 %2874, label %2921, label %2875

; <label>:2875                                    ; preds = %2869
  %2876 = add i32 %44, 436
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = add i32 %2878, 0
  %2880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2880, %dx.types.Handle %82, float %2756, float %2757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = add i32 %44, 148
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = shl i32 %2885, 4
  %2887 = and i32 %2886, 32752
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2885, 7
  %2890 = and i32 %2889, 32752
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = fsub fast float 1.000000e+00, %2870
  %2893 = call float @dx.op.binary.f32(i32 35, float %2892, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2894 = bitcast float %2870 to i32
  %2895 = sitofp i32 %2894 to float
  %2896 = fadd fast float %2895, 0xC1CFBF8940000000
  %2897 = fmul fast float %2891, %2896
  %2898 = fadd fast float %2897, 0x41CFBF8940000000
  %2899 = fptosi float %2898 to i32
  %2900 = bitcast i32 %2899 to float
  %2901 = bitcast float %2893 to i32
  %2902 = sitofp i32 %2901 to float
  %2903 = fadd fast float %2902, 0xC1CFBF8940000000
  %2904 = fmul fast float %2903, %2891
  %2905 = fadd fast float %2904, 0x41CFBF8940000000
  %2906 = fptosi float %2905 to i32
  %2907 = bitcast i32 %2906 to float
  %2908 = fmul fast float %2900, %2888
  %2909 = fmul fast float %2907, %2888
  %2910 = fsub fast float %2893, %2908
  %2911 = fadd fast float %2909, %2893
  %2912 = call float @dx.op.unary.f32(i32 7, float %2910)  ; Saturate(value)
  %2913 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  %2914 = fsub fast float %2882, %2912
  %2915 = fsub fast float %2913, %2912
  %2916 = bitcast float %2915 to i32
  %2917 = sub nsw i32 2129859010, %2916
  %2918 = bitcast i32 %2917 to float
  %2919 = fmul fast float %2918, %2914
  %2920 = call float @dx.op.unary.f32(i32 7, float %2919)  ; Saturate(value)
  br label %2921

; <label>:2921                                    ; preds = %2875, %2869
  %2922 = phi float [ %2920, %2875 ], [ %2870, %2869 ]
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 128
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %2943, label %2927

; <label>:2927                                    ; preds = %2921
  %2928 = add i32 %44, 420
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = add i32 %2930, 0
  %2932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2932, %dx.types.Handle %82, float %2756, float %2757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2934 = extractvalue %dx.types.ResRet.f32 %2933, 0
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 524288
  %2938 = icmp ne i32 %2937, 0
  %2939 = fcmp fast ogt float %2934, 0x3FE0101020000000
  %2940 = select i1 %2939, float 1.000000e+00, float 0.000000e+00
  %2941 = select i1 %2938, float %2940, float %2934
  %2942 = fmul fast float %2941, %2922
  br label %2943

; <label>:2943                                    ; preds = %2927, %2921
  %2944 = phi float [ %2942, %2927 ], [ %2922, %2921 ]
  %2945 = fcmp fast ult float %2944, 0x3F70101020000000
  br i1 %2945, label %3529, label %2946

; <label>:2946                                    ; preds = %2943
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 16
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3149, label %2951

; <label>:2951                                    ; preds = %2946
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = add i32 %44, 372
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = add i32 %2956, 0
  %2958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2957, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2959 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2958, %dx.types.Handle %81, float %2756, float %2757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2960 = extractvalue %dx.types.ResRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.ResRet.f32 %2959, 1
  %2962 = extractvalue %dx.types.ResRet.f32 %2959, 2
  %2963 = extractvalue %dx.types.ResRet.f32 %2959, 3
  %2964 = and i32 %2953, 255
  %2965 = uitofp i32 %2964 to float
  %2966 = lshr i32 %2953, 8
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2963, %2965
  %2970 = fadd fast float %2969, %2968
  %2971 = fmul fast float %2970, 0x3F70101000000000
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, 512
  %2975 = icmp eq i32 %2974, 0
  br i1 %2975, label %2984, label %2976

; <label>:2976                                    ; preds = %2951
  %2977 = add i32 %44, 452
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = add i32 %2979, 0
  %2981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2981, %dx.types.Handle %82, float %2756, float %2757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  br label %2984

; <label>:2984                                    ; preds = %2976, %2951
  %2985 = phi float [ %2983, %2976 ], [ 1.000000e+00, %2951 ]
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = and i32 %2987, 33554432
  %2989 = icmp eq i32 %2988, 0
  br i1 %2989, label %3096, label %2990

; <label>:2990                                    ; preds = %2984
  %2991 = add i32 %44, 272
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = and i32 %2993, 65535
  %2995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2994)  ; LegacyF16ToF32(value)
  %2996 = lshr i32 %2993, 16
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = add i32 %44, 276
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 65535
  %3002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3001)  ; LegacyF16ToF32(value)
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = lshr i32 %3004, 24
  %3006 = uitofp i32 %3005 to float
  %3007 = fmul fast float %3006, 0x3F70101020000000
  %3008 = and i32 %3004, 255
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = lshr i32 %3004, 8
  %3012 = and i32 %3011, 255
  %3013 = uitofp i32 %3012 to float
  %3014 = fmul fast float %3013, 0x3F70101020000000
  %3015 = lshr i32 %3004, 16
  %3016 = and i32 %3015, 255
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = add i32 %44, 268
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3019, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = lshr i32 %3021, 24
  %3023 = uitofp i32 %3022 to float
  %3024 = fmul fast float %3023, 0x3F70101020000000
  %3025 = and i32 %3021, 255
  %3026 = uitofp i32 %3025 to float
  %3027 = fmul fast float %3026, 0x3F70101020000000
  %3028 = lshr i32 %3021, 8
  %3029 = and i32 %3028, 255
  %3030 = uitofp i32 %3029 to float
  %3031 = fmul fast float %3030, 0x3F70101020000000
  %3032 = lshr i32 %3021, 16
  %3033 = and i32 %3032, 255
  %3034 = uitofp i32 %3033 to float
  %3035 = fmul fast float %3034, 0x3F70101020000000
  %3036 = bitcast float %2960 to i32
  %3037 = ashr i32 %3036, 1
  %3038 = sub nsw i32 1597463174, %3037
  %3039 = bitcast i32 %3038 to float
  %3040 = fmul fast float %2960, 5.000000e-01
  %3041 = fmul fast float %3039, %3039
  %3042 = fmul fast float %3041, %3040
  %3043 = fsub fast float 1.500000e+00, %3042
  %3044 = fmul fast float %3039, %2960
  %3045 = fmul fast float %3044, %3043
  %3046 = bitcast float %2961 to i32
  %3047 = ashr i32 %3046, 1
  %3048 = sub nsw i32 1597463174, %3047
  %3049 = bitcast i32 %3048 to float
  %3050 = fmul fast float %2961, 5.000000e-01
  %3051 = fmul fast float %3049, %3049
  %3052 = fmul fast float %3051, %3050
  %3053 = fsub fast float 1.500000e+00, %3052
  %3054 = fmul fast float %3049, %2961
  %3055 = fmul fast float %3054, %3053
  %3056 = bitcast float %2962 to i32
  %3057 = ashr i32 %3056, 1
  %3058 = sub nsw i32 1597463174, %3057
  %3059 = bitcast i32 %3058 to float
  %3060 = fmul fast float %2962, 5.000000e-01
  %3061 = fmul fast float %3059, %3059
  %3062 = fmul fast float %3061, %3060
  %3063 = fsub fast float 1.500000e+00, %3062
  %3064 = fmul fast float %3059, %2962
  %3065 = fmul fast float %3064, %3063
  %3066 = fsub fast float %3045, %3027
  %3067 = fsub fast float %3055, %3031
  %3068 = fsub fast float %3065, %3035
  %3069 = fmul fast float %3066, %2995
  %3070 = fmul fast float %3067, %2997
  %3071 = fmul fast float %3068, %3002
  %3072 = fadd fast float %3069, %3010
  %3073 = fadd fast float %3070, %3014
  %3074 = fadd fast float %3071, %3018
  %3075 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3076 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3077 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3078 = fmul fast float %3075, %3075
  %3079 = fmul fast float %3076, %3076
  %3080 = fmul fast float %3077, %3077
  %3081 = fsub fast float %3078, %2960
  %3082 = fsub fast float %3079, %2961
  %3083 = fsub fast float %3080, %2962
  %3084 = fmul fast float %3081, %2985
  %3085 = fmul fast float %3082, %2985
  %3086 = fmul fast float %3083, %2985
  %3087 = fadd fast float %3084, %2960
  %3088 = fadd fast float %3085, %2961
  %3089 = fadd fast float %3086, %2962
  %3090 = fadd fast float %3007, %2971
  %3091 = fsub fast float %3090, %3024
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3093 = fsub fast float %3092, %2971
  %3094 = fmul fast float %3093, %2985
  %3095 = fadd fast float %3094, %2971
  br label %3149

; <label>:3096                                    ; preds = %2984
  %3097 = and i32 %2987, 134217728
  %3098 = icmp eq i32 %3097, 0
  br i1 %3098, label %3133, label %3099

; <label>:3099                                    ; preds = %3096
  %3100 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %3101 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3102 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3103 = fadd fast float %3100, -5.000000e-01
  %3104 = fadd fast float %3101, -5.000000e-01
  %3105 = fadd fast float %3102, -5.000000e-01
  %3106 = fmul fast float %3103, %2985
  %3107 = fmul fast float %3104, %2985
  %3108 = fmul fast float %3105, %2985
  %3109 = fadd fast float %3106, 5.000000e-01
  %3110 = fadd fast float %3107, 5.000000e-01
  %3111 = fadd fast float %3108, 5.000000e-01
  %3112 = call float @dx.op.unary.f32(i32 24, float %2960)  ; Sqrt(value)
  %3113 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %3114 = call float @dx.op.unary.f32(i32 24, float %2962)  ; Sqrt(value)
  %3115 = fmul fast float %3109, 2.000000e+00
  %3116 = fsub fast float 1.000000e+00, %3115
  %3117 = fmul fast float %3116, %3112
  %3118 = fadd fast float %3117, %3115
  %3119 = fmul fast float %3118, %3112
  %3120 = fmul fast float %3110, 2.000000e+00
  %3121 = fsub fast float 1.000000e+00, %3120
  %3122 = fmul fast float %3121, %3113
  %3123 = fadd fast float %3122, %3120
  %3124 = fmul fast float %3123, %3113
  %3125 = fmul fast float %3111, 2.000000e+00
  %3126 = fsub fast float 1.000000e+00, %3125
  %3127 = fmul fast float %3126, %3114
  %3128 = fadd fast float %3127, %3125
  %3129 = fmul fast float %3128, %3114
  %3130 = fmul fast float %3119, %3119
  %3131 = fmul fast float %3124, %3124
  %3132 = fmul fast float %3129, %3129
  br label %3149

; <label>:3133                                    ; preds = %3096
  %3134 = fmul fast float %337, %337
  %3135 = fmul fast float %341, %341
  %3136 = fmul fast float %345, %345
  %3137 = fadd fast float %3134, -1.000000e+00
  %3138 = fadd fast float %3135, -1.000000e+00
  %3139 = fadd fast float %3136, -1.000000e+00
  %3140 = fmul fast float %2985, %3137
  %3141 = fmul fast float %2985, %3138
  %3142 = fmul fast float %2985, %3139
  %3143 = fadd fast float %3140, 1.000000e+00
  %3144 = fadd fast float %3141, 1.000000e+00
  %3145 = fadd fast float %3142, 1.000000e+00
  %3146 = fmul fast float %3143, %2960
  %3147 = fmul fast float %3144, %2961
  %3148 = fmul fast float %3145, %2962
  br label %3149

; <label>:3149                                    ; preds = %3133, %3099, %2990, %2946
  %3150 = phi float [ %3095, %2990 ], [ %2971, %3099 ], [ %2971, %3133 ], [ 0x3FA23C0BE0000000, %2946 ]
  %3151 = phi float [ %3087, %2990 ], [ %3130, %3099 ], [ %3146, %3133 ], [ 1.000000e+00, %2946 ]
  %3152 = phi float [ %3088, %2990 ], [ %3131, %3099 ], [ %3147, %3133 ], [ 1.000000e+00, %2946 ]
  %3153 = phi float [ %3089, %2990 ], [ %3132, %3099 ], [ %3148, %3133 ], [ 1.000000e+00, %2946 ]
  %3154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3155 = extractvalue %dx.types.CBufRet.i32 %3154, 1
  %3156 = and i32 %3155, 1
  %3157 = icmp ne i32 %3156, 0
  %3158 = add i32 %44, 356
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 32
  %3162 = icmp ne i32 %3161, 0
  %3163 = and i1 %3157, %3162
  %3164 = select i1 %3163, float 1.000000e+00, float %3151
  %3165 = select i1 %3163, float 0x3FD3333340000000, float %3152
  %3166 = select i1 %3163, float 0x3FD3333340000000, float %3153
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 32
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3243, label %3171

; <label>:3171                                    ; preds = %3149
  %3172 = add i32 %44, 140
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = add i32 %44, 388
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = add i32 %3177, 0
  %3179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3179, %dx.types.Handle %81, float %2756, float %2757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3181 = extractvalue %dx.types.ResRet.f32 %3180, 0
  %3182 = extractvalue %dx.types.ResRet.f32 %3180, 1
  %3183 = extractvalue %dx.types.ResRet.f32 %3180, 2
  %3184 = extractvalue %dx.types.ResRet.f32 %3180, 3
  %3185 = and i32 %3174, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = lshr i32 %3174, 8
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = lshr i32 %3174, 16
  %3191 = and i32 %3190, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101000000000
  %3194 = fmul fast float %3181, %3186
  %3195 = fadd fast float %3194, %3189
  %3196 = fmul fast float %3195, 0x3F70101000000000
  %3197 = fadd fast float %3182, -5.000000e-01
  %3198 = fadd fast float %3184, -5.000000e-01
  %3199 = fmul fast float %3197, %3193
  %3200 = fmul fast float %3198, %3193
  %3201 = fadd fast float %3199, 5.000000e-01
  %3202 = fadd fast float %3200, 5.000000e-01
  %3203 = fmul fast float %3201, 2.000000e+00
  %3204 = fadd fast float %3203, -1.000000e+00
  %3205 = fmul fast float %3202, 2.000000e+00
  %3206 = fadd fast float %3205, -1.000000e+00
  %3207 = fadd fast float %3204, %3206
  %3208 = fmul fast float %3207, 5.000000e-01
  %3209 = fsub fast float %3204, %3206
  %3210 = fmul fast float %3209, 5.000000e-01
  %3211 = call float @dx.op.unary.f32(i32 6, float %3208)  ; FAbs(value)
  %3212 = fsub fast float 1.000000e+00, %3211
  %3213 = call float @dx.op.unary.f32(i32 6, float %3210)  ; FAbs(value)
  %3214 = fsub fast float %3212, %3213
  %3215 = call float @dx.op.dot3.f32(i32 55, float %3208, float %3210, float %3214, float %3208, float %3210, float %3214)  ; Dot3(ax,ay,az,bx,by,bz)
  %3216 = call float @dx.op.unary.f32(i32 25, float %3215)  ; Rsqrt(value)
  %3217 = fmul fast float %3208, %3216
  %3218 = fmul fast float %3210, %3216
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 67108864
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3239, label %3223

; <label>:3223                                    ; preds = %3171
  %3224 = add i32 %44, 328
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 65535
  %3228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3227)  ; LegacyF16ToF32(value)
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 65535
  %3232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3231)  ; LegacyF16ToF32(value)
  %3233 = lshr i32 %3226, 16
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = fsub fast float %3196, %3234
  %3236 = fmul fast float %3235, %3228
  %3237 = fadd fast float %3236, %3232
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  br label %3239

; <label>:3239                                    ; preds = %3223, %3171
  %3240 = phi float [ %3238, %3223 ], [ %3196, %3171 ]
  %3241 = call float @dx.op.dot2.f32(i32 54, float %3217, float %3218, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %3242 = call float @dx.op.dot2.f32(i32 54, float %3217, float %3218, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %3243

; <label>:3243                                    ; preds = %3239, %3149
  %3244 = phi float [ %3240, %3239 ], [ 0x3FD6666660000000, %3149 ]
  %3245 = phi float [ %3241, %3239 ], [ 0.000000e+00, %3149 ]
  %3246 = phi float [ %3242, %3239 ], [ 0.000000e+00, %3149 ]
  %3247 = phi float [ %3183, %3239 ], [ 1.000000e+00, %3149 ]
  %3248 = add i32 %44, 208
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = lshr i32 %3250, 22
  %3252 = shl nuw nsw i32 %3251, 5
  %3253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3252)  ; LegacyF16ToF32(value)
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 64
  %3257 = icmp eq i32 %3256, 0
  br i1 %3257, label %3291, label %3258

; <label>:3258                                    ; preds = %3243
  %3259 = add i32 %44, 404
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = add i32 %3261, 0
  %3263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = and i32 %3265, 131072
  %3267 = icmp eq i32 %3266, 0
  %3268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3263, %dx.types.Handle %81, float %2756, float %2757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.ResRet.f32 %3268, 2
  %3272 = fmul fast float %3269, %325
  %3273 = fmul fast float %3270, %328
  %3274 = fmul fast float %3271, %331
  br i1 %3267, label %3281, label %3275

; <label>:3275                                    ; preds = %3258
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = fmul fast float %3277, %3272
  %3279 = fmul fast float %3277, %3273
  %3280 = fmul fast float %3277, %3274
  br label %3281

; <label>:3281                                    ; preds = %3275, %3258
  %3282 = phi float [ %3278, %3275 ], [ %3272, %3258 ]
  %3283 = phi float [ %3279, %3275 ], [ %3273, %3258 ]
  %3284 = phi float [ %3280, %3275 ], [ %3274, %3258 ]
  %3285 = fmul fast float %3282, %3253
  %3286 = select i1 %203, float %3285, float %3282
  %3287 = call float @dx.op.dot3.f32(i32 55, float %3286, float %3283, float %3284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3288 = select i1 %203, float 0.000000e+00, float %3282
  %3289 = select i1 %203, float %3287, float %3283
  %3290 = select i1 %203, float 0.000000e+00, float %3284
  br label %3291

; <label>:3291                                    ; preds = %3281, %3243
  %3292 = phi float [ %3288, %3281 ], [ 0.000000e+00, %3243 ]
  %3293 = phi float [ %3289, %3281 ], [ 0.000000e+00, %3243 ]
  %3294 = phi float [ %3290, %3281 ], [ 0.000000e+00, %3243 ]
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = and i32 %3296, 14336
  %3298 = icmp eq i32 %3297, 0
  br i1 %3298, label %3324, label %3299

; <label>:3299                                    ; preds = %3291
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 4096
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3324, label %3304

; <label>:3304                                    ; preds = %3299
  %3305 = and i32 %3301, 1048576
  %3306 = icmp ne i32 %3305, 0
  %3307 = add i32 %44, 468
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3311, %dx.types.Handle %82, float %2756, float %2757, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3314 = select i1 %3306, float 1.000000e+00, float %3313
  %3315 = add i32 %44, 212
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = and i32 %3317, 65535
  %3319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3318)  ; LegacyF16ToF32(value)
  %3320 = lshr i32 %3317, 16
  %3321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3320)  ; LegacyF16ToF32(value)
  %3322 = fmul fast float %3319, %3314
  %3323 = fadd fast float %3322, %3321
  br label %3324

; <label>:3324                                    ; preds = %3304, %3299, %3291
  %3325 = phi float [ %3323, %3304 ], [ 0.000000e+00, %3299 ], [ 0.000000e+00, %3291 ]
  %3326 = add i32 %44, 144
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = and i32 %3328, 255
  %3330 = uitofp i32 %3329 to float
  %3331 = lshr i32 %3328, 8
  %3332 = and i32 %3331, 255
  %3333 = uitofp i32 %3332 to float
  %3334 = call float @dx.op.dot3.f32(i32 55, float %3164, float %3165, float %3166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3335 = fmul fast float %3333, %3334
  %3336 = fadd fast float %3335, %3330
  %3337 = fmul fast float %3336, 0x3F70101020000000
  %3338 = call float @dx.op.unary.f32(i32 7, float %3337)  ; Saturate(value)
  br i1 %2656, label %3339, label %3347

; <label>:3339                                    ; preds = %3324
  %3340 = fsub fast float 1.000000e+00, %2944
  %3341 = fmul fast float %3340, %2645
  %3342 = fmul fast float %3340, %2646
  %3343 = fmul fast float %3340, %2647
  %3344 = fmul fast float %3340, %2648
  %3345 = fmul fast float %3340, %2649
  %3346 = fmul fast float %3340, %2650
  br label %3347

; <label>:3347                                    ; preds = %3339, %3324
  %3348 = phi float [ %3341, %3339 ], [ %2645, %3324 ]
  %3349 = phi float [ %3342, %3339 ], [ %2646, %3324 ]
  %3350 = phi float [ %3343, %3339 ], [ %2647, %3324 ]
  %3351 = phi float [ %3344, %3339 ], [ %2648, %3324 ]
  %3352 = phi float [ %3345, %3339 ], [ %2649, %3324 ]
  %3353 = phi float [ %3346, %3339 ], [ %2650, %3324 ]
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 3
  %3357 = icmp eq i32 %3356, 3
  br i1 %3357, label %3436, label %3358

; <label>:3358                                    ; preds = %3347
  %3359 = and i32 %3355, 16
  %3360 = icmp ne i32 %3359, 0
  %3361 = select i1 %3360, float %2944, float 0.000000e+00
  %3362 = icmp eq i32 %3356, 0
  br i1 %3362, label %3363, label %3391

; <label>:3363                                    ; preds = %3358
  %3364 = and i32 %3355, 64
  %3365 = icmp ne i32 %3364, 0
  %3366 = select i1 %3365, float %2944, float 0.000000e+00
  %3367 = fsub fast float %3164, %3348
  %3368 = fsub fast float %3165, %3349
  %3369 = fsub fast float %3166, %3350
  %3370 = fmul fast float %3361, %3367
  %3371 = fmul fast float %3361, %3368
  %3372 = fmul fast float %3361, %3369
  %3373 = fadd fast float %3370, %3348
  %3374 = fadd fast float %3371, %3349
  %3375 = fadd fast float %3372, %3350
  %3376 = fsub fast float %3150, %2651
  %3377 = fmul fast float %3361, %3376
  %3378 = fadd fast float %3377, %2651
  %3379 = fsub fast float %3292, %3351
  %3380 = fsub fast float %3293, %3352
  %3381 = fsub fast float %3294, %3353
  %3382 = fmul fast float %3366, %3379
  %3383 = fmul fast float %3366, %3380
  %3384 = fmul fast float %3366, %3381
  %3385 = fadd fast float %3382, %3351
  %3386 = fadd fast float %3383, %3352
  %3387 = fadd fast float %3384, %3353
  %3388 = fsub fast float %3338, %2655
  %3389 = fmul fast float %3361, %3388
  %3390 = fadd fast float %3389, %2655
  br label %3436

; <label>:3391                                    ; preds = %3358
  %3392 = icmp eq i32 %3356, 1
  br i1 %3392, label %3393, label %3406

; <label>:3393                                    ; preds = %3391
  %3394 = fadd fast float %3164, -1.000000e+00
  %3395 = fadd fast float %3165, -1.000000e+00
  %3396 = fadd fast float %3166, -1.000000e+00
  %3397 = fmul fast float %3361, %3394
  %3398 = fmul fast float %3361, %3395
  %3399 = fmul fast float %3361, %3396
  %3400 = fadd fast float %3397, 1.000000e+00
  %3401 = fadd fast float %3398, 1.000000e+00
  %3402 = fadd fast float %3399, 1.000000e+00
  %3403 = fmul fast float %3400, %3348
  %3404 = fmul fast float %3401, %3349
  %3405 = fmul fast float %3402, %3350
  br label %3436

; <label>:3406                                    ; preds = %3391
  %3407 = icmp eq i32 %3356, 2
  br i1 %3407, label %3408, label %3436

; <label>:3408                                    ; preds = %3406
  %3409 = call float @dx.op.unary.f32(i32 24, float %3164)  ; Sqrt(value)
  %3410 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3411 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3412 = fadd fast float %3409, -5.000000e-01
  %3413 = fadd fast float %3410, -5.000000e-01
  %3414 = fadd fast float %3411, -5.000000e-01
  %3415 = fmul fast float %3412, %3361
  %3416 = fmul fast float %3413, %3361
  %3417 = fmul fast float %3414, %3361
  %3418 = fadd fast float %3415, 5.000000e-01
  %3419 = fadd fast float %3416, 5.000000e-01
  %3420 = fadd fast float %3417, 5.000000e-01
  %3421 = fmul fast float %3418, 2.000000e+00
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3348
  %3424 = fadd fast float %3423, %3421
  %3425 = fmul fast float %3424, %3348
  %3426 = fmul fast float %3419, 2.000000e+00
  %3427 = fsub fast float 1.000000e+00, %3426
  %3428 = fmul fast float %3427, %3349
  %3429 = fadd fast float %3428, %3426
  %3430 = fmul fast float %3429, %3349
  %3431 = fmul fast float %3420, 2.000000e+00
  %3432 = fsub fast float 1.000000e+00, %3431
  %3433 = fmul fast float %3432, %3350
  %3434 = fadd fast float %3433, %3431
  %3435 = fmul fast float %3434, %3350
  br label %3436

; <label>:3436                                    ; preds = %3408, %3406, %3393, %3363, %3347
  %3437 = phi float [ %3348, %3347 ], [ %3425, %3408 ], [ %3348, %3406 ], [ %3403, %3393 ], [ %3373, %3363 ]
  %3438 = phi float [ %3349, %3347 ], [ %3430, %3408 ], [ %3349, %3406 ], [ %3404, %3393 ], [ %3374, %3363 ]
  %3439 = phi float [ %3350, %3347 ], [ %3435, %3408 ], [ %3350, %3406 ], [ %3405, %3393 ], [ %3375, %3363 ]
  %3440 = phi float [ %3351, %3347 ], [ %3351, %3408 ], [ %3351, %3406 ], [ %3351, %3393 ], [ %3385, %3363 ]
  %3441 = phi float [ %3352, %3347 ], [ %3352, %3408 ], [ %3352, %3406 ], [ %3352, %3393 ], [ %3386, %3363 ]
  %3442 = phi float [ %3353, %3347 ], [ %3353, %3408 ], [ %3353, %3406 ], [ %3353, %3393 ], [ %3387, %3363 ]
  %3443 = phi float [ %2651, %3347 ], [ %2651, %3408 ], [ %2651, %3406 ], [ %2651, %3393 ], [ %3378, %3363 ]
  %3444 = phi float [ %2655, %3347 ], [ %2655, %3408 ], [ %2655, %3406 ], [ %2655, %3393 ], [ %3390, %3363 ]
  %3445 = and i32 %3355, 12
  %3446 = icmp eq i32 %3445, 12
  br i1 %3446, label %3529, label %3447

; <label>:3447                                    ; preds = %3436
  %3448 = and i32 %3355, 2097184
  %3449 = icmp eq i32 %3448, 2097184
  %3450 = select i1 %3449, float %2944, float 0.000000e+00
  %3451 = and i32 %3355, 4194336
  %3452 = icmp eq i32 %3451, 4194336
  %3453 = select i1 %3452, float %2944, float 0.000000e+00
  %3454 = and i32 %3355, 8388640
  %3455 = icmp eq i32 %3454, 8388640
  %3456 = select i1 %3455, float %2944, float 0.000000e+00
  %3457 = and i32 %3355, 4096
  %3458 = icmp ne i32 %3457, 0
  %3459 = select i1 %3458, float %2944, float 0.000000e+00
  %3460 = icmp eq i32 %3445, 0
  br i1 %3460, label %3461, label %3477

; <label>:3461                                    ; preds = %3447
  %3462 = fsub fast float %3245, %2643
  %3463 = fsub fast float %3246, %2644
  %3464 = fmul fast float %3450, %3462
  %3465 = fmul fast float %3450, %3463
  %3466 = fadd fast float %3464, %2643
  %3467 = fadd fast float %3465, %2644
  %3468 = fsub fast float %3247, %2653
  %3469 = fmul fast float %3453, %3468
  %3470 = fadd fast float %3469, %2653
  %3471 = fsub fast float %3244, %2652
  %3472 = fmul fast float %3456, %3471
  %3473 = fadd fast float %3472, %2652
  %3474 = fsub fast float %3325, %2654
  %3475 = fmul fast float %3459, %3474
  %3476 = fadd fast float %3475, %2654
  br label %3529

; <label>:3477                                    ; preds = %3447
  %3478 = icmp eq i32 %3445, 4
  br i1 %3478, label %3479, label %3513

; <label>:3479                                    ; preds = %3477
  %3480 = fmul fast float %3450, %3245
  %3481 = fmul fast float %3450, %3246
  %3482 = fadd fast float %3480, %2643
  %3483 = fadd fast float %3481, %2644
  %3484 = call float @dx.op.binary.f32(i32 36, float %2653, float %3247)  ; FMin(a,b)
  %3485 = fsub fast float %3484, %2653
  %3486 = fmul fast float %3485, %3453
  %3487 = fadd fast float %3486, %2653
  %3488 = fadd fast float %3244, %2652
  %3489 = fmul fast float %3488, 0x3FF337FAE0000000
  %3490 = fmul fast float %2652, %2652
  %3491 = fmul fast float %3244, %3244
  %3492 = fadd fast float %3491, %3490
  %3493 = fmul fast float %3492, 0x3FE5152B00000000
  %3494 = fmul fast float %2652, 0xBFCC1F85E0000000
  %3495 = fmul fast float %3494, %3244
  %3496 = fadd fast float %3495, 0xBFE1363700000000
  %3497 = fadd fast float %3496, %3489
  %3498 = fsub fast float %3497, %3493
  %3499 = fmul fast float %3488, 0x3FBA6F0D00000000
  %3500 = fmul fast float %3492, 0x3FD0432880000000
  %3501 = fmul fast float %2652, 0xBFEF110800000000
  %3502 = fmul fast float %3501, %3244
  %3503 = fadd fast float %3502, 1.000000e+00
  %3504 = fsub fast float %3503, %3499
  %3505 = fadd fast float %3504, %3500
  %3506 = fdiv fast float %3498, %3505
  %3507 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3508 = fsub fast float %3507, %2652
  %3509 = fmul fast float %3508, %3456
  %3510 = fadd fast float %3509, %2652
  %3511 = fmul fast float %3459, %3325
  %3512 = fadd fast float %3511, %2654
  br label %3529

; <label>:3513                                    ; preds = %3477
  %3514 = icmp eq i32 %3445, 8
  br i1 %3514, label %3515, label %3529

; <label>:3515                                    ; preds = %3513
  %3516 = fmul fast float %3450, %3245
  %3517 = fmul fast float %3450, %3246
  %3518 = fadd fast float %3516, %2643
  %3519 = fadd fast float %3517, %2644
  %3520 = call float @dx.op.binary.f32(i32 36, float %2653, float %3247)  ; FMin(a,b)
  %3521 = fsub fast float %3520, %2653
  %3522 = fmul fast float %3521, %3453
  %3523 = fadd fast float %3522, %2653
  %3524 = fsub fast float %3244, %2652
  %3525 = fmul fast float %3456, %3524
  %3526 = fadd fast float %3525, %2652
  %3527 = fmul fast float %3459, %3325
  %3528 = fadd fast float %3527, %2654
  br label %3529

; <label>:3529                                    ; preds = %3515, %3513, %3479, %3461, %3436, %2943, %2642
  %3530 = phi float [ %2643, %3436 ], [ %2643, %2943 ], [ %2643, %2642 ], [ %3466, %3461 ], [ %3482, %3479 ], [ %2643, %3513 ], [ %3518, %3515 ]
  %3531 = phi float [ %2644, %3436 ], [ %2644, %2943 ], [ %2644, %2642 ], [ %3467, %3461 ], [ %3483, %3479 ], [ %2644, %3513 ], [ %3519, %3515 ]
  %3532 = phi float [ %3437, %3436 ], [ %2645, %2943 ], [ %2645, %2642 ], [ %3437, %3461 ], [ %3437, %3479 ], [ %3437, %3513 ], [ %3437, %3515 ]
  %3533 = phi float [ %3438, %3436 ], [ %2646, %2943 ], [ %2646, %2642 ], [ %3438, %3461 ], [ %3438, %3479 ], [ %3438, %3513 ], [ %3438, %3515 ]
  %3534 = phi float [ %3439, %3436 ], [ %2647, %2943 ], [ %2647, %2642 ], [ %3439, %3461 ], [ %3439, %3479 ], [ %3439, %3513 ], [ %3439, %3515 ]
  %3535 = phi float [ %3440, %3436 ], [ %2648, %2943 ], [ %2648, %2642 ], [ %3440, %3461 ], [ %3440, %3479 ], [ %3440, %3513 ], [ %3440, %3515 ]
  %3536 = phi float [ %3441, %3436 ], [ %2649, %2943 ], [ %2649, %2642 ], [ %3441, %3461 ], [ %3441, %3479 ], [ %3441, %3513 ], [ %3441, %3515 ]
  %3537 = phi float [ %3442, %3436 ], [ %2650, %2943 ], [ %2650, %2642 ], [ %3442, %3461 ], [ %3442, %3479 ], [ %3442, %3513 ], [ %3442, %3515 ]
  %3538 = phi float [ %3443, %3436 ], [ %2651, %2943 ], [ %2651, %2642 ], [ %3443, %3461 ], [ %3443, %3479 ], [ %3443, %3513 ], [ %3443, %3515 ]
  %3539 = phi float [ %2652, %3436 ], [ %2652, %2943 ], [ %2652, %2642 ], [ %3473, %3461 ], [ %3510, %3479 ], [ %2652, %3513 ], [ %3526, %3515 ]
  %3540 = phi float [ %2653, %3436 ], [ %2653, %2943 ], [ %2653, %2642 ], [ %3470, %3461 ], [ %3487, %3479 ], [ %2653, %3513 ], [ %3523, %3515 ]
  %3541 = phi float [ %2654, %3436 ], [ %2654, %2943 ], [ %2654, %2642 ], [ %3476, %3461 ], [ %3512, %3479 ], [ %2654, %3513 ], [ %3528, %3515 ]
  %3542 = phi float [ %3444, %3436 ], [ %2655, %2943 ], [ %2655, %2642 ], [ %3444, %3461 ], [ %3444, %3479 ], [ %3444, %3513 ], [ %3444, %3515 ]
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3545 = call float @dx.op.dot2.f32(i32 54, float %3530, float %3531, float %3530, float %3531)  ; Dot2(ax,ay,bx,by)
  %3546 = fmul fast float %3545, 0x3FE3333340000000
  %3547 = fsub fast float 1.000000e+00, %3546
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3530, float %3531, float %3547, float %3530, float %3531, float %3547)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = call float @dx.op.unary.f32(i32 25, float %3548)  ; Rsqrt(value)
  %3550 = fmul fast float %3549, %3530
  %3551 = fmul fast float %3549, %3531
  %3552 = fmul fast float %3547, %3549
  %3553 = fmul fast float %3552, %61
  %3554 = fmul fast float %3552, %62
  %3555 = fmul fast float %3552, %63
  %3556 = fmul fast float %3550, %57
  %3557 = fmul fast float %3550, %58
  %3558 = fmul fast float %3550, %59
  %3559 = fadd fast float %3553, %3556
  %3560 = fadd fast float %3554, %3557
  %3561 = fadd fast float %3555, %3558
  %3562 = fmul fast float %3551, %96
  %3563 = fmul fast float %3551, %97
  %3564 = fmul fast float %3551, %98
  %3565 = fadd fast float %3559, %3562
  %3566 = fadd fast float %3560, %3563
  %3567 = fadd fast float %3561, %3564
  %3568 = call float @dx.op.dot3.f32(i32 55, float %3565, float %3566, float %3567, float %3565, float %3566, float %3567)  ; Dot3(ax,ay,az,bx,by,bz)
  %3569 = call float @dx.op.unary.f32(i32 25, float %3568)  ; Rsqrt(value)
  %3570 = fmul fast float %3565, %3569
  %3571 = fmul fast float %3566, %3569
  %3572 = fmul fast float %3567, %3569
  %3573 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3574 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3575 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3576 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3577 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3578 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3579 = fadd fast float %3573, %132
  %3580 = fadd fast float %3574, %133
  %3581 = fadd fast float %3575, %134
  %3582 = fadd fast float %3576, %132
  %3583 = fadd fast float %3577, %133
  %3584 = fadd fast float %3578, %134
  %3585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.CBufRet.f32 %3585, 2
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 2
  %3591 = extractvalue %dx.types.CBufRet.f32 %3589, 3
  %3592 = fmul fast float %3586, %85
  %3593 = fmul fast float %3592, %3590
  %3594 = fmul fast float %3587, %86
  %3595 = fmul fast float %3594, %3591
  %3596 = fptoui float %3593 to i32
  %3597 = fptoui float %3595 to i32
  %3598 = fadd fast float %3586, -1.000000e+00
  %3599 = fadd fast float %3587, -1.000000e+00
  %3600 = fptoui float %3598 to i32
  %3601 = fptoui float %3599 to i32
  %3602 = call i32 @dx.op.binary.i32(i32 40, i32 %3596, i32 %3600)  ; UMin(a,b)
  %3603 = call i32 @dx.op.binary.i32(i32 40, i32 %3597, i32 %3601)  ; UMin(a,b)
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 2
  %3606 = extractvalue %dx.types.CBufRet.f32 %3604, 3
  %3607 = fmul fast float %3605, %80
  %3608 = fsub fast float %3607, %3606
  %3609 = fadd fast float %3588, -1.000000e+00
  %3610 = call float @dx.op.binary.f32(i32 36, float %3608, float %3609)  ; FMin(a,b)
  %3611 = fptoui float %3610 to i32
  %3612 = fptoui float %3586 to i32
  %3613 = fptoui float %3587 to i32
  %3614 = mul i32 %3611, %3613
  %3615 = add i32 %3614, %3603
  %3616 = mul i32 %3615, %3612
  %3617 = add i32 %3616, %3602
  %3618 = shl i32 %3617, 2
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = and i32 %3620, 1023
  %3622 = lshr i32 %3620, 10
  %3623 = icmp eq i32 %3621, 0
  br i1 %3623, label %4049, label %3624

; <label>:3624                                    ; preds = %3529
  %3625 = and i32 %3620, 1023
  br label %3626

; <label>:3626                                    ; preds = %3752, %3624
  %3627 = phi i32 [ %3702, %3752 ], [ 0, %3624 ]
  %3628 = phi float [ %3753, %3752 ], [ 0.000000e+00, %3624 ]
  %3629 = phi float [ %3754, %3752 ], [ %3544, %3624 ]
  %3630 = phi float [ %3755, %3752 ], [ %3542, %3624 ]
  %3631 = phi float [ %3756, %3752 ], [ 0.000000e+00, %3624 ]
  %3632 = phi float [ %3757, %3752 ], [ %3541, %3624 ]
  %3633 = phi float [ %3758, %3752 ], [ %3535, %3624 ]
  %3634 = phi float [ %3759, %3752 ], [ %3536, %3624 ]
  %3635 = phi float [ %3760, %3752 ], [ %3537, %3624 ]
  %3636 = phi float [ %3761, %3752 ], [ %3570, %3624 ]
  %3637 = phi float [ %3762, %3752 ], [ %3571, %3624 ]
  %3638 = phi float [ %3763, %3752 ], [ %3572, %3624 ]
  %3639 = phi float [ %3764, %3752 ], [ %3540, %3624 ]
  %3640 = phi float [ %3765, %3752 ], [ %3539, %3624 ]
  %3641 = phi float [ %3766, %3752 ], [ 0.000000e+00, %3624 ]
  %3642 = phi float [ %3767, %3752 ], [ %3538, %3624 ]
  %3643 = phi float [ %3768, %3752 ], [ %3532, %3624 ]
  %3644 = phi float [ %3769, %3752 ], [ %3533, %3624 ]
  %3645 = phi float [ %3770, %3752 ], [ %3534, %3624 ]
  %3646 = add nuw nsw i32 %3627, %3622
  %3647 = shl i32 %3646, 2
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = shl i32 %3649, 8
  %3651 = or i32 %3650, 48
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = or i32 %3650, 64
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.i32 %3658, 1
  %3661 = or i32 %3650, 80
  %3662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3661, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 3
  %3665 = or i32 %3650, 96
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3671 = or i32 %3650, 112
  %3672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3674 = or i32 %3650, 128
  %3675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  %3680 = or i32 %3650, 144
  %3681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.ResRet.f32 %3681, 3
  %3686 = or i32 %3650, 160
  %3687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.ResRet.f32 %3687, 1
  %3690 = extractvalue %dx.types.ResRet.f32 %3687, 2
  %3691 = extractvalue %dx.types.ResRet.f32 %3687, 3
  %3692 = or i32 %3650, 192
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = or i32 %3650, 208
  %3696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3695, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = or i32 %3650, 248
  %3699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3702 = add nuw nsw i32 %3627, 1
  %3703 = bitcast float %3656 to i32
  %3704 = and i32 %3703, 2560
  %3705 = icmp eq i32 %3704, 0
  %3706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3711 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3712 = or i32 %3650, 16
  %3713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.ResRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.ResRet.f32 %3713, 3
  %3718 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3719 = or i32 %3650, 32
  %3720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = extractvalue %dx.types.ResRet.f32 %3720, 3
  %3725 = call float @dx.op.dot4.f32(i32 56, float %3721, float %3722, float %3723, float %3724, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3726 = call float @dx.op.unary.f32(i32 27, float %3711)  ; Round_ni(value)
  %3727 = call float @dx.op.unary.f32(i32 6, float %3726)  ; FAbs(value)
  %3728 = call float @dx.op.unary.f32(i32 27, float %3718)  ; Round_ni(value)
  %3729 = call float @dx.op.unary.f32(i32 6, float %3728)  ; FAbs(value)
  %3730 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3731 = call float @dx.op.unary.f32(i32 27, float %3730)  ; Round_ni(value)
  %3732 = fadd fast float %3729, %3727
  %3733 = fadd fast float %3732, %3731
  %3734 = fcmp fast oeq float %3733, 0.000000e+00
  %3735 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3579, float %3580, float %3581, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3736 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %3579, float %3580, float %3581, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3737 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3582, float %3583, float %3584, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3738 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %3582, float %3583, float %3584, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3739 = fsub fast float %3735, %3711
  %3740 = fsub fast float %3737, %3711
  %3741 = fsub fast float %3736, %3718
  %3742 = fsub fast float %3738, %3718
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3653, float %3654, float %3655, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3746 = fadd fast float %3745, %3743
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3749 = fcmp fast ogt float %3747, %3748
  %3750 = and i1 %3734, %3749
  %3751 = and i1 %3705, %3750
  br i1 %3751, label %3772, label %3752

; <label>:3752                                    ; preds = %4035, %3853, %3772, %3626
  %3753 = phi float [ %3628, %3772 ], [ %3856, %3853 ], [ %3856, %4035 ], [ %3628, %3626 ]
  %3754 = phi float [ %3629, %3772 ], [ %3629, %3853 ], [ %4010, %4035 ], [ %3629, %3626 ]
  %3755 = phi float [ %3630, %3772 ], [ %3630, %3853 ], [ %4008, %4035 ], [ %3630, %3626 ]
  %3756 = phi float [ %3631, %3772 ], [ %3631, %3853 ], [ %3980, %4035 ], [ %3631, %3626 ]
  %3757 = phi float [ %3632, %3772 ], [ %3632, %3853 ], [ %3978, %4035 ], [ %3632, %3626 ]
  %3758 = phi float [ %3633, %3772 ], [ %3633, %3853 ], [ %4045, %4035 ], [ %3633, %3626 ]
  %3759 = phi float [ %3634, %3772 ], [ %3634, %3853 ], [ %4046, %4035 ], [ %3634, %3626 ]
  %3760 = phi float [ %3635, %3772 ], [ %3635, %3853 ], [ %4047, %4035 ], [ %3635, %3626 ]
  %3761 = phi float [ %3636, %3772 ], [ %3636, %3853 ], [ %3959, %4035 ], [ %3636, %3626 ]
  %3762 = phi float [ %3637, %3772 ], [ %3637, %3853 ], [ %3960, %4035 ], [ %3637, %3626 ]
  %3763 = phi float [ %3638, %3772 ], [ %3638, %3853 ], [ %3961, %4035 ], [ %3638, %3626 ]
  %3764 = phi float [ %3639, %3772 ], [ %3639, %3853 ], [ %3988, %4035 ], [ %3639, %3626 ]
  %3765 = phi float [ %3640, %3772 ], [ %3640, %3853 ], [ %3985, %4035 ], [ %3640, %3626 ]
  %3766 = phi float [ %3641, %3772 ], [ %3641, %3853 ], [ %3982, %4035 ], [ %3641, %3626 ]
  %3767 = phi float [ %3642, %3772 ], [ %3642, %3853 ], [ %3976, %4035 ], [ %3642, %3626 ]
  %3768 = phi float [ %3643, %3772 ], [ %3643, %3853 ], [ %3971, %4035 ], [ %3643, %3626 ]
  %3769 = phi float [ %3644, %3772 ], [ %3644, %3853 ], [ %3972, %4035 ], [ %3644, %3626 ]
  %3770 = phi float [ %3645, %3772 ], [ %3645, %3853 ], [ %3973, %4035 ], [ %3645, %3626 ]
  %3771 = icmp eq i32 %3702, %3625
  br i1 %3771, label %4048, label %3626

; <label>:3772                                    ; preds = %3626
  %3773 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3774 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3775 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3778 = extractvalue %dx.types.ResRet.i32 %3658, 3
  %3779 = extractvalue %dx.types.ResRet.i32 %3658, 2
  %3780 = add i32 %3778, 0
  %3781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3781, %dx.types.Handle %3782, float %3711, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float %3739, float %3741, float undef, float %3740, float %3742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = fmul fast float %3784, %3777
  %3786 = fadd fast float %3785, %3776
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fmul fast float %3711, %3667
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3668, float %3718, float %3788)  ; FMad(a,b,c)
  %3790 = fadd fast float %3789, %3775
  %3791 = fmul fast float %3711, %3669
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3718, float %3791)  ; FMad(a,b,c)
  %3793 = fadd fast float %3792, %3774
  %3794 = fmul fast float %3739, %3667
  %3795 = call float @dx.op.tertiary.f32(i32 46, float %3668, float %3741, float %3794)  ; FMad(a,b,c)
  %3796 = fmul fast float %3739, %3669
  %3797 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3741, float %3796)  ; FMad(a,b,c)
  %3798 = fmul fast float %3740, %3667
  %3799 = call float @dx.op.tertiary.f32(i32 46, float %3668, float %3742, float %3798)  ; FMad(a,b,c)
  %3800 = fmul fast float %3740, %3669
  %3801 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3742, float %3800)  ; FMad(a,b,c)
  %3802 = add i32 %3779, 0
  %3803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3802, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3804 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3803, %dx.types.Handle %3782, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = and i32 %3703, 1024
  %3807 = icmp ne i32 %3806, 0
  %3808 = fcmp fast ogt float %3805, 0x3FE0101020000000
  %3809 = uitofp i1 %3808 to float
  %3810 = select i1 %3807, float %3809, float %3805
  %3811 = and i32 %3703, 8192
  %3812 = icmp ne i32 %3811, 0
  %3813 = select i1 %3812, float %3773, float 1.000000e+00
  %3814 = fmul fast float %3711, 2.000000e+00
  %3815 = fadd fast float %3814, -1.000000e+00
  %3816 = call float @dx.op.unary.f32(i32 6, float %3815)  ; FAbs(value)
  %3817 = fmul fast float %3816, %3700
  %3818 = fsub fast float %3817, %3700
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = fmul fast float %3718, 2.000000e+00
  %3821 = fadd fast float %3820, -1.000000e+00
  %3822 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3823 = fmul fast float %3822, %3701
  %3824 = fsub fast float %3823, %3701
  %3825 = call float @dx.op.unary.f32(i32 7, float %3824)  ; Saturate(value)
  %3826 = fmul fast float %3730, %3663
  %3827 = fsub fast float %3826, %3663
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3829 = fmul fast float %3787, %3813
  %3830 = fmul fast float %3829, %3784
  %3831 = fmul fast float %3830, %3819
  %3832 = fmul fast float %3831, %3810
  %3833 = fmul fast float %3832, %3825
  %3834 = fmul fast float %3833, %3828
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3838 = fsub fast float %3747, %3837
  %3839 = fmul fast float %3838, %3836
  %3840 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3841 = fmul fast float %3834, %3664
  %3842 = fadd fast float %3834, %3664
  %3843 = fmul fast float %3842, %3673
  %3844 = fsub fast float %3843, %3673
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = and i32 %3703, 128
  %3847 = icmp ne i32 %3846, 0
  %3848 = select i1 %3847, float %3845, float %3841
  %3849 = fmul fast float %3848, %3840
  %3850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3851 = extractvalue %dx.types.CBufRet.f32 %3850, 0
  %3852 = fcmp fast ugt float %3849, %3851
  br i1 %3852, label %3853, label %3752

; <label>:3853                                    ; preds = %3772
  %3854 = select i1 %3812, float %3849, float 0.000000e+00
  %3855 = fadd fast float %3854, %3628
  %3856 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  br i1 %3812, label %3752, label %3857

; <label>:3857                                    ; preds = %3853
  %3858 = and i32 %3703, 4
  %3859 = and i32 %3703, 8
  %3860 = add i32 %3659, 0
  %3861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3860, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3863 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3861, %dx.types.Handle %3862, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = bitcast float %3685 to i32
  %3869 = and i32 %3868, 255
  %3870 = uitofp i32 %3869 to float
  %3871 = lshr i32 %3868, 8
  %3872 = and i32 %3871, 255
  %3873 = uitofp i32 %3872 to float
  %3874 = fmul fast float %3867, %3870
  %3875 = fadd fast float %3874, %3873
  %3876 = fmul fast float %3875, 0x3F70101000000000
  %3877 = add i32 %3660, 0
  %3878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3877, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3879 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3878, %dx.types.Handle %3862, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = bitcast float %3679 to i32
  %3885 = and i32 %3884, 255
  %3886 = uitofp i32 %3885 to float
  %3887 = lshr i32 %3884, 8
  %3888 = and i32 %3887, 255
  %3889 = uitofp i32 %3888 to float
  %3890 = lshr i32 %3884, 16
  %3891 = and i32 %3890, 255
  %3892 = uitofp i32 %3891 to float
  %3893 = fmul fast float %3892, 0x3F70101000000000
  %3894 = fmul fast float %3880, %3886
  %3895 = fadd fast float %3894, %3889
  %3896 = fmul fast float %3895, 0x3F70101000000000
  %3897 = fadd fast float %3881, -5.000000e-01
  %3898 = fadd fast float %3883, -5.000000e-01
  %3899 = fmul fast float %3897, %3893
  %3900 = fmul fast float %3898, %3893
  %3901 = fadd fast float %3899, 5.000000e-01
  %3902 = fadd fast float %3900, 5.000000e-01
  %3903 = fmul fast float %3864, %3688
  %3904 = fmul fast float %3865, %3689
  %3905 = fmul fast float %3866, %3690
  %3906 = fmul fast float %3901, 2.000000e+00
  %3907 = fadd fast float %3906, -1.000000e+00
  %3908 = fmul fast float %3902, 2.000000e+00
  %3909 = fadd fast float %3908, -1.000000e+00
  %3910 = fadd fast float %3907, %3909
  %3911 = fmul fast float %3910, 5.000000e-01
  %3912 = fsub fast float %3907, %3909
  %3913 = fmul fast float %3912, 5.000000e-01
  %3914 = call float @dx.op.unary.f32(i32 6, float %3911)  ; FAbs(value)
  %3915 = fsub fast float 1.000000e+00, %3914
  %3916 = call float @dx.op.unary.f32(i32 6, float %3913)  ; FAbs(value)
  %3917 = fsub fast float %3915, %3916
  %3918 = call float @dx.op.dot3.f32(i32 55, float %3911, float %3913, float %3917, float %3911, float %3913, float %3917)  ; Dot3(ax,ay,az,bx,by,bz)
  %3919 = call float @dx.op.unary.f32(i32 25, float %3918)  ; Rsqrt(value)
  %3920 = fmul fast float %3911, %3919
  %3921 = fmul fast float %3913, %3919
  %3922 = fmul fast float %3919, %3917
  %3923 = fmul fast float %3922, %3653
  %3924 = fmul fast float %3922, %3654
  %3925 = fmul fast float %3922, %3655
  %3926 = fmul fast float %3920, %3676
  %3927 = fmul fast float %3920, %3677
  %3928 = fmul fast float %3920, %3678
  %3929 = fadd fast float %3926, %3923
  %3930 = fadd fast float %3927, %3924
  %3931 = fadd fast float %3928, %3925
  %3932 = fmul fast float %3921, %3682
  %3933 = fmul fast float %3921, %3683
  %3934 = fmul fast float %3921, %3684
  %3935 = fadd fast float %3929, %3932
  %3936 = fadd fast float %3930, %3933
  %3937 = fadd fast float %3931, %3934
  %3938 = call float @dx.op.dot3.f32(i32 55, float %3935, float %3936, float %3937, float %3935, float %3936, float %3937)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = call float @dx.op.unary.f32(i32 25, float %3938)  ; Rsqrt(value)
  %3940 = fmul fast float %3935, %3939
  %3941 = fmul fast float %3936, %3939
  %3942 = fmul fast float %3937, %3939
  %3943 = icmp ne i32 %3859, 0
  %3944 = select i1 %3943, float 1.000000e+00, float 0.000000e+00
  %3945 = fmul fast float %3849, %3944
  %3946 = and i32 %3703, 1
  %3947 = icmp eq i32 %3946, 0
  br i1 %3947, label %3948, label %3952

; <label>:3948                                    ; preds = %3857
  %3949 = fsub fast float %3940, %3636
  %3950 = fsub fast float %3941, %3637
  %3951 = fsub fast float %3942, %3638
  br label %3952

; <label>:3952                                    ; preds = %3948, %3857
  %3953 = phi float [ %3949, %3948 ], [ %3940, %3857 ]
  %3954 = phi float [ %3950, %3948 ], [ %3941, %3857 ]
  %3955 = phi float [ %3951, %3948 ], [ %3942, %3857 ]
  %3956 = fmul float %3955, %3945
  %3957 = fmul float %3954, %3945
  %3958 = fmul float %3953, %3945
  %3959 = fadd fast float %3958, %3636
  %3960 = fadd fast float %3957, %3637
  %3961 = fadd fast float %3956, %3638
  %3962 = icmp ne i32 %3858, 0
  %3963 = select i1 %3962, float 1.000000e+00, float 0.000000e+00
  %3964 = fmul fast float %3849, %3963
  %3965 = fsub fast float %3903, %3643
  %3966 = fsub fast float %3904, %3644
  %3967 = fsub fast float %3905, %3645
  %3968 = fmul fast float %3965, %3964
  %3969 = fmul fast float %3966, %3964
  %3970 = fmul fast float %3967, %3964
  %3971 = fadd fast float %3968, %3643
  %3972 = fadd fast float %3969, %3644
  %3973 = fadd fast float %3970, %3645
  %3974 = fsub fast float %3876, %3642
  %3975 = fmul fast float %3974, %3964
  %3976 = fadd fast float %3975, %3642
  %3977 = fmul fast float %3964, %3632
  %3978 = fsub fast float %3632, %3977
  %3979 = fmul fast float %3964, %3631
  %3980 = fsub fast float %3631, %3979
  %3981 = fadd fast float %3849, %3641
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fsub fast float %3896, %3640
  %3984 = fmul fast float %3983, %3945
  %3985 = fadd fast float %3984, %3640
  %3986 = fsub fast float %3882, %3639
  %3987 = fmul fast float %3986, %3945
  %3988 = fadd fast float %3987, %3639
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3904, float %3905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.CBufRet.f32 %3990, 1
  %3993 = fmul fast float %3992, %3989
  %3994 = fadd fast float %3993, %3991
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = bitcast float %3691 to i32
  %3997 = and i32 %3996, 65535
  %3998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3997)  ; LegacyF16ToF32(value)
  %3999 = lshr i32 %3996, 16
  %4000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3999)  ; LegacyF16ToF32(value)
  %4001 = fcmp fast oge float %3998, 0.000000e+00
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = select i1 %4001, float %3998, float %4003
  %4005 = fadd fast float %4004, %4000
  %4006 = fsub fast float %3995, %3630
  %4007 = fmul fast float %4006, %3849
  %4008 = fadd fast float %4007, %3630
  %4009 = fmul fast float %4005, %3849
  %4010 = call float @dx.op.binary.f32(i32 35, float %3629, float %4009)  ; FMax(a,b)
  %4011 = and i32 %3703, 16
  %4012 = icmp eq i32 %4011, 0
  br i1 %4012, label %4035, label %4013

; <label>:4013                                    ; preds = %3952
  %4014 = bitcast float %3697 to i32
  %4015 = add i32 %3694, 0
  %4016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4015, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4017 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4016, %dx.types.Handle %3862, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = and i32 %4014, 65535
  %4022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4021)  ; LegacyF16ToF32(value)
  %4023 = fmul fast float %4018, %3688
  %4024 = fmul fast float %4019, %3689
  %4025 = fmul fast float %4020, %3690
  %4026 = and i32 %3703, 16384
  %4027 = icmp ne i32 %4026, 0
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = select i1 %4027, float %4029, float 1.000000e+00
  %4031 = fmul fast float %4030, %4022
  %4032 = fmul fast float %4023, %4031
  %4033 = fmul fast float %4024, %4031
  %4034 = fmul fast float %4025, %4031
  br label %4035

; <label>:4035                                    ; preds = %4013, %3952
  %4036 = phi float [ %4032, %4013 ], [ 0.000000e+00, %3952 ]
  %4037 = phi float [ %4033, %4013 ], [ 0.000000e+00, %3952 ]
  %4038 = phi float [ %4034, %4013 ], [ 0.000000e+00, %3952 ]
  %4039 = fsub fast float %4036, %3633
  %4040 = fsub fast float %4037, %3634
  %4041 = fsub fast float %4038, %3635
  %4042 = fmul fast float %4039, %3849
  %4043 = fmul fast float %4040, %3849
  %4044 = fmul fast float %4041, %3849
  %4045 = fadd fast float %4042, %3633
  %4046 = fadd fast float %4043, %3634
  %4047 = fadd fast float %4044, %3635
  br label %3752

; <label>:4048                                    ; preds = %3752
  br label %4049

; <label>:4049                                    ; preds = %4048, %3529
  %4050 = phi float [ 0.000000e+00, %3529 ], [ %3753, %4048 ]
  %4051 = phi float [ %3544, %3529 ], [ %3754, %4048 ]
  %4052 = phi float [ %3542, %3529 ], [ %3755, %4048 ]
  %4053 = phi float [ 0.000000e+00, %3529 ], [ %3756, %4048 ]
  %4054 = phi float [ %3541, %3529 ], [ %3757, %4048 ]
  %4055 = phi float [ %3535, %3529 ], [ %3758, %4048 ]
  %4056 = phi float [ %3536, %3529 ], [ %3759, %4048 ]
  %4057 = phi float [ %3537, %3529 ], [ %3760, %4048 ]
  %4058 = phi float [ %3570, %3529 ], [ %3761, %4048 ]
  %4059 = phi float [ %3571, %3529 ], [ %3762, %4048 ]
  %4060 = phi float [ %3572, %3529 ], [ %3763, %4048 ]
  %4061 = phi float [ %3540, %3529 ], [ %3764, %4048 ]
  %4062 = phi float [ %3539, %3529 ], [ %3765, %4048 ]
  %4063 = phi float [ 0.000000e+00, %3529 ], [ %3766, %4048 ]
  %4064 = phi float [ %3538, %3529 ], [ %3767, %4048 ]
  %4065 = phi float [ %3532, %3529 ], [ %3768, %4048 ]
  %4066 = phi float [ %3533, %3529 ], [ %3769, %4048 ]
  %4067 = phi float [ %3534, %3529 ], [ %3770, %4048 ]
  %4068 = call float @dx.op.dot3.f32(i32 55, float %4058, float %4059, float %4060, float %4058, float %4059, float %4060)  ; Dot3(ax,ay,az,bx,by,bz)
  %4069 = call float @dx.op.unary.f32(i32 25, float %4068)  ; Rsqrt(value)
  %4070 = fmul fast float %4069, %4058
  %4071 = fmul fast float %4069, %4059
  %4072 = fmul fast float %4069, %4060
  %4073 = fadd fast float %4063, %877
  %4074 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4070, float %4071, float %4072, float %4070, float %4071, float %4072)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call float @dx.op.unary.f32(i32 25, float %4075)  ; Rsqrt(value)
  %4077 = fmul fast float %4076, %4070
  %4078 = fmul fast float %4076, %4071
  %4079 = fmul fast float %4076, %4072
  %4080 = fadd fast float %4064, 0xBFB99999A0000000
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = fmul fast float %4081, 0x3FF1C71C80000000
  %4083 = call float @dx.op.binary.f32(i32 36, float %4064, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4084 = fsub fast float 1.000000e+00, %4082
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = fmul fast float %4085, %4065
  %4087 = fmul fast float %4085, %4066
  %4088 = fmul fast float %4085, %4067
  %4089 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4090 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4091 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4092 = fmul fast float %4082, %4065
  %4093 = fmul fast float %4082, %4066
  %4094 = fmul fast float %4082, %4067
  %4095 = fadd fast float %4092, %4083
  %4096 = fadd fast float %4093, %4083
  %4097 = fadd fast float %4094, %4083
  %4098 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4099 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4100 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.i32 %4102, 3
  %4104 = and i32 %4103, 8
  %4105 = icmp ne i32 %4104, 0
  %4106 = call float @dx.op.binary.f32(i32 35, float %4089, float %4065)  ; FMax(a,b)
  %4107 = call float @dx.op.binary.f32(i32 35, float %4090, float %4065)  ; FMax(a,b)
  %4108 = call float @dx.op.binary.f32(i32 35, float %4091, float %4065)  ; FMax(a,b)
  %4109 = call float @dx.op.dot3.f32(i32 55, float %4089, float %4090, float %4091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4110 = select i1 %203, float %4065, float %4089
  %4111 = select i1 %203, float %4109, float %4090
  %4112 = select i1 %203, float 1.000000e+00, float %4091
  %4113 = select i1 %4105, float %4106, float %4110
  %4114 = select i1 %4105, float %4107, float %4111
  %4115 = select i1 %4105, float %4108, float %4112
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.CBufRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.CBufRet.f32 %4116, 2
  %4120 = fadd fast float %4117, %132
  %4121 = fadd fast float %4118, %133
  %4122 = fadd fast float %4119, %134
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4126 = fsub fast float %4120, %4124
  %4127 = fsub fast float %4121, %4125
  %4128 = fmul fast float %4126, %4126
  %4129 = fmul fast float %4127, %4127
  %4130 = fadd fast float %4128, %4129
  %4131 = call float @dx.op.unary.f32(i32 24, float %4130)  ; Sqrt(value)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4123, 2
  %4133 = fcmp fast olt float %4131, %4132
  br i1 %4133, label %4134, label %4201

; <label>:4134                                    ; preds = %4049
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 0
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4142 = extractvalue %dx.types.CBufRet.f32 %4137, 1
  %4143 = extractvalue %dx.types.CBufRet.f32 %4139, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4135, 3
  %4145 = extractvalue %dx.types.CBufRet.f32 %4137, 3
  %4146 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4147 = fadd fast float %4144, %4120
  %4148 = fadd fast float %4145, %4121
  %4149 = fadd fast float %4146, %4122
  %4150 = fmul fast float %4147, %4136
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4138, float %4150)  ; FMad(a,b,c)
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4149, float %4140, float %4151)  ; FMad(a,b,c)
  %4153 = fmul fast float %4147, %4141
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4142, float %4153)  ; FMad(a,b,c)
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4149, float %4143, float %4154)  ; FMad(a,b,c)
  %4156 = fsub fast float %4152, %4144
  %4157 = fsub fast float %4155, %4145
  %4158 = fsub fast float %4156, %4124
  %4159 = fadd fast float %4158, %4132
  %4160 = fsub fast float %4157, %4125
  %4161 = fadd fast float %4160, %4132
  %4162 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4163 = fmul fast float %4159, %4162
  %4164 = fmul fast float %4161, %4162
  %4165 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4167 = fsub fast float 1.000000e+00, %4165
  %4168 = fsub fast float 1.000000e+00, %4166
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %4167, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = fcmp fast ugt float %4170, 0.000000e+00
  br i1 %4171, label %4172, label %4475

; <label>:4172                                    ; preds = %4134
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4175 = fmul fast float %4174, %4170
  %4176 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4177 = fadd fast float %4176, %4175
  %4178 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4179 = fadd fast float %4177, %4146
  %4180 = fmul fast float %4152, %4140
  %4181 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4143, float %4180)  ; FMad(a,b,c)
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4179, float %4178, float %4181)  ; FMad(a,b,c)
  %4183 = fsub fast float %4182, %4146
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4186 = fsub fast float %4183, %4185
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %4167, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.ResRet.f32 %4187, 2
  %4191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %4167, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4195 = fadd fast float %4192, %4188
  %4196 = fmul fast float %4195, 0x3F847AE140000000
  %4197 = fadd fast float %4193, %4189
  %4198 = fmul fast float %4197, 0x3F847AE140000000
  %4199 = fadd fast float %4194, %4190
  %4200 = fmul fast float %4199, 0x3F847AE140000000
  br label %4475

; <label>:4201                                    ; preds = %4049
  %4202 = and i32 %179, 1
  %4203 = icmp eq i32 %4202, 0
  br i1 %4203, label %4475, label %4204

; <label>:4204                                    ; preds = %4201
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.CBufRet.f32 %4205, 1
  %4212 = extractvalue %dx.types.CBufRet.f32 %4207, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4209, 1
  %4214 = extractvalue %dx.types.CBufRet.f32 %4205, 3
  %4215 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4216 = extractvalue %dx.types.CBufRet.f32 %4209, 3
  %4217 = fadd fast float %4214, %4120
  %4218 = fadd fast float %4215, %4121
  %4219 = fadd fast float %4216, %4122
  %4220 = fmul fast float %4217, %4206
  %4221 = call float @dx.op.tertiary.f32(i32 46, float %4218, float %4208, float %4220)  ; FMad(a,b,c)
  %4222 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4210, float %4221)  ; FMad(a,b,c)
  %4223 = fmul fast float %4217, %4211
  %4224 = call float @dx.op.tertiary.f32(i32 46, float %4218, float %4212, float %4223)  ; FMad(a,b,c)
  %4225 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4213, float %4224)  ; FMad(a,b,c)
  %4226 = fsub fast float %4222, %4214
  %4227 = fsub fast float %4225, %4215
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.CBufRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.CBufRet.f32 %4228, 2
  %4232 = extractvalue %dx.types.CBufRet.f32 %4228, 3
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.i32 %4235, 0
  %4237 = extractvalue %dx.types.CBufRet.i32 %4235, 1
  %4238 = udiv i32 %4237, %4236
  %4239 = fsub fast float %4226, %4229
  %4240 = fsub fast float %4227, %4230
  %4241 = call float @dx.op.binary.f32(i32 35, float %4239, float 0.000000e+00)  ; FMax(a,b)
  %4242 = call float @dx.op.binary.f32(i32 35, float %4240, float 0.000000e+00)  ; FMax(a,b)
  %4243 = call float @dx.op.binary.f32(i32 36, float %4241, float %4231)  ; FMin(a,b)
  %4244 = call float @dx.op.binary.f32(i32 36, float %4242, float %4232)  ; FMin(a,b)
  %4245 = add i32 %4236, -1
  %4246 = add i32 %4238, -1
  %4247 = fmul fast float %4243, %4234
  %4248 = fmul fast float %4244, %4234
  %4249 = fptoui float %4247 to i32
  %4250 = fptoui float %4248 to i32
  %4251 = call i32 @dx.op.binary.i32(i32 40, i32 %4249, i32 %4245)  ; UMin(a,b)
  %4252 = call i32 @dx.op.binary.i32(i32 40, i32 %4250, i32 %4246)  ; UMin(a,b)
  %4253 = mul i32 %4252, %4236
  %4254 = add i32 %4253, %4251
  %4255 = shl i32 %4254, 2
  %4256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.i32 %4256, 0
  %4258 = icmp eq i32 %4257, -1
  br i1 %4258, label %4475, label %4259

; <label>:4259                                    ; preds = %4204
  %4260 = mul i32 %4257, 148
  %4261 = add i32 %4260, 4
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = add i32 %4260, 8
  %4265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = add i32 %4260, 36
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = add i32 %4260, 60
  %4271 = add i32 %4260, 92
  %4272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4271, i32 undef)  ; BufferLoad(srv,index,wot)
  %4273 = extractvalue %dx.types.ResRet.i32 %4272, 0
  %4274 = add i32 %4260, 116
  %4275 = fsub fast float %4226, %4263
  %4276 = fsub fast float %4227, %4266
  %4277 = fmul fast float %4234, %4275
  %4278 = fmul fast float %4234, %4276
  %4279 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4281 = fsub fast float 1.000000e+00, %4280
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 2
  %4284 = call float @dx.op.unary.f32(i32 83, float %4279)  ; DerivCoarseX(value)
  %4285 = call float @dx.op.unary.f32(i32 83, float %4281)  ; DerivCoarseX(value)
  %4286 = call float @dx.op.unary.f32(i32 84, float %4279)  ; DerivCoarseY(value)
  %4287 = call float @dx.op.unary.f32(i32 84, float %4281)  ; DerivCoarseY(value)
  %4288 = fmul fast float %4284, %4283
  %4289 = fmul fast float %4285, %4283
  %4290 = fmul fast float %4286, %4283
  %4291 = fmul fast float %4287, %4283
  %4292 = call float @dx.op.dot2.f32(i32 54, float %4290, float %4291, float %4290, float %4291)  ; Dot2(ax,ay,bx,by)
  %4293 = call float @dx.op.dot2.f32(i32 54, float %4288, float %4289, float %4288, float %4289)  ; Dot2(ax,ay,bx,by)
  %4294 = call float @dx.op.binary.f32(i32 35, float %4293, float %4292)  ; FMax(a,b)
  %4295 = call float @dx.op.unary.f32(i32 23, float %4294)  ; Log(value)
  %4296 = fmul fast float %4295, 5.000000e-01
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4299 = fadd fast float %4298, %4296
  %4300 = call float @dx.op.binary.f32(i32 35, float %4299, float 0.000000e+00)  ; FMax(a,b)
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4303 = fadd fast float %4302, %4300
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4306 = fadd fast float %4303, %4305
  %4307 = add i32 %4273, 0
  %4308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4307, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4309 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4308, i32 0)  ; GetDimensions(handle,mipLevel)
  %4310 = extractvalue %dx.types.Dimensions %4309, 0
  %4311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4310)  ; FirstbitLo(value)
  %4312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.i32 %4312, 1
  %4314 = sub nsw i32 %4313, %4311
  %4315 = sitofp i32 %4314 to float
  %4316 = fsub fast float %4306, %4315
  %4317 = call float @dx.op.binary.f32(i32 35, float %4316, float 0.000000e+00)  ; FMax(a,b)
  %4318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4308, %dx.types.Handle %37, float %4279, float %4281, float %4269, float undef, i32 0, i32 0, i32 undef, float %4317)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = fcmp ule float %4319, 0x3FE0101020000000
  %4321 = extractvalue %dx.types.CBufRet.i32 %4312, 0
  %4322 = and i32 %4321, 128
  %4323 = icmp ne i32 %4322, 0
  %4324 = and i1 %4320, %4323
  br i1 %4324, label %4475, label %4325

; <label>:4325                                    ; preds = %4259
  %4326 = add i32 %4260, 20
  %4327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = add i32 %4260, 24
  %4330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4329, i32 undef)  ; BufferLoad(srv,index,wot)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = add i32 %4260, 40
  %4333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = add i32 %4260, 96
  %4336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.i32 %4336, 0
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 2
  %4340 = fmul fast float %4339, %4279
  %4341 = fmul fast float %4339, %4281
  %4342 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4343 = fadd fast float %4340, %4342
  %4344 = fadd fast float %4341, %4342
  %4345 = add i32 %4337, 0
  %4346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4345, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4347 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4346, i32 0)  ; GetDimensions(handle,mipLevel)
  %4348 = extractvalue %dx.types.Dimensions %4347, 0
  %4349 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4348)  ; FirstbitLo(value)
  %4350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.i32 %4350, 1
  %4352 = sub nsw i32 %4351, %4349
  %4353 = sitofp i32 %4352 to float
  %4354 = fsub fast float %4303, %4353
  %4355 = call float @dx.op.binary.f32(i32 35, float %4354, float 0.000000e+00)  ; FMax(a,b)
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4346, %dx.types.Handle %37, float %4343, float %4344, float %4334, float undef, i32 0, i32 0, i32 undef, float %4355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = fmul fast float %4357, %4328
  %4359 = fadd fast float %4358, %4331
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.CBufRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.CBufRet.f32 %4360, 2
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 3
  %4368 = extractvalue %dx.types.CBufRet.f32 %4360, 3
  %4369 = fadd fast float %4365, %4226
  %4370 = fadd fast float %4367, %4227
  %4371 = fadd fast float %4359, %4368
  %4372 = fmul fast float %4369, %4361
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4362, float %4372)  ; FMad(a,b,c)
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %4371, float %4363, float %4373)  ; FMad(a,b,c)
  %4375 = fsub fast float %4374, %4368
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4378 = fsub fast float %4375, %4377
  %4379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.i32 %4379, 0
  %4381 = call i32 @dx.op.binary.i32(i32 40, i32 %4257, i32 %4380)  ; UMin(a,b)
  %4382 = mul i32 %4381, 36
  %4383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.i32 %4383, 0
  %4385 = add i32 %4382, 4
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = fmul fast float %4387, %4279
  %4389 = fmul fast float %4387, %4281
  %4390 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4391 = fadd fast float %4388, %4390
  %4392 = fadd fast float %4389, %4390
  %4393 = icmp eq i32 %4384, 0
  br i1 %4393, label %4462, label %4394

; <label>:4394                                    ; preds = %4325
  br label %4395

; <label>:4395                                    ; preds = %4452, %4394
  %4396 = phi float [ %4453, %4452 ], [ 0.000000e+00, %4394 ]
  %4397 = phi float [ %4454, %4452 ], [ 0.000000e+00, %4394 ]
  %4398 = phi float [ %4455, %4452 ], [ 0.000000e+00, %4394 ]
  %4399 = phi float [ %4456, %4452 ], [ 0.000000e+00, %4394 ]
  %4400 = phi float [ %4457, %4452 ], [ 0.000000e+00, %4394 ]
  %4401 = phi float [ %4458, %4452 ], [ 0.000000e+00, %4394 ]
  %4402 = phi i32 [ %4459, %4452 ], [ 0, %4394 ]
  %4403 = shl i32 %4402, 2
  %4404 = add i32 %4270, %4403
  %4405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = add i32 %4274, %4403
  %4408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = add i32 %4409, 0
  %4411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4410, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4412 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4411, i32 0)  ; GetDimensions(handle,mipLevel)
  %4413 = extractvalue %dx.types.Dimensions %4412, 0
  %4414 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4413)  ; FirstbitLo(value)
  %4415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.i32 %4415, 1
  %4417 = sub nsw i32 %4416, %4414
  %4418 = sitofp i32 %4417 to float
  %4419 = fsub fast float %4303, %4418
  %4420 = call float @dx.op.binary.f32(i32 35, float %4419, float 0.000000e+00)  ; FMax(a,b)
  %4421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4411, %dx.types.Handle %37, float %4391, float %4392, float %4406, float undef, i32 0, i32 0, i32 undef, float %4420)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = fcmp fast ogt float %4422, 0.000000e+00
  br i1 %4423, label %4424, label %4452

; <label>:4424                                    ; preds = %4395
  %4425 = add i32 %4385, %4403
  %4426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.i32 %4426, 0
  %4428 = and i32 %4427, 32767
  %4429 = mul nuw nsw i32 %4428, 928
  %4430 = add nuw nsw i32 %4429, 48
  %4431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.ResRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.ResRet.f32 %4431, 2
  %4435 = add nuw nsw i32 %4429, 60
  %4436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = extractvalue %dx.types.ResRet.f32 %4436, 1
  %4439 = extractvalue %dx.types.ResRet.f32 %4436, 2
  %4440 = fmul fast float %4432, %4422
  %4441 = fmul fast float %4433, %4422
  %4442 = fmul fast float %4434, %4422
  %4443 = fadd fast float %4440, %4396
  %4444 = fadd fast float %4441, %4397
  %4445 = fadd fast float %4442, %4398
  %4446 = fmul fast float %4437, %4422
  %4447 = fmul fast float %4438, %4422
  %4448 = fmul fast float %4439, %4422
  %4449 = fadd fast float %4446, %4399
  %4450 = fadd fast float %4447, %4400
  %4451 = fadd fast float %4448, %4401
  br label %4452

; <label>:4452                                    ; preds = %4424, %4395
  %4453 = phi float [ %4443, %4424 ], [ %4396, %4395 ]
  %4454 = phi float [ %4444, %4424 ], [ %4397, %4395 ]
  %4455 = phi float [ %4445, %4424 ], [ %4398, %4395 ]
  %4456 = phi float [ %4449, %4424 ], [ %4399, %4395 ]
  %4457 = phi float [ %4450, %4424 ], [ %4400, %4395 ]
  %4458 = phi float [ %4451, %4424 ], [ %4401, %4395 ]
  %4459 = add nuw i32 %4402, 1
  %4460 = icmp eq i32 %4459, %4384
  br i1 %4460, label %4461, label %4395

; <label>:4461                                    ; preds = %4452
  br label %4462

; <label>:4462                                    ; preds = %4461, %4325
  %4463 = phi float [ 0.000000e+00, %4325 ], [ %4453, %4461 ]
  %4464 = phi float [ 0.000000e+00, %4325 ], [ %4454, %4461 ]
  %4465 = phi float [ 0.000000e+00, %4325 ], [ %4455, %4461 ]
  %4466 = phi float [ 0.000000e+00, %4325 ], [ %4456, %4461 ]
  %4467 = phi float [ 0.000000e+00, %4325 ], [ %4457, %4461 ]
  %4468 = phi float [ 0.000000e+00, %4325 ], [ %4458, %4461 ]
  %4469 = fadd fast float %4466, %4463
  %4470 = fmul fast float %4469, 0x3F847AE140000000
  %4471 = fadd fast float %4467, %4464
  %4472 = fmul fast float %4471, 0x3F847AE140000000
  %4473 = fadd fast float %4468, %4465
  %4474 = fmul fast float %4473, 0x3F847AE140000000
  br label %4475

; <label>:4475                                    ; preds = %4462, %4259, %4204, %4201, %4172, %4134
  %4476 = phi float [ %4186, %4172 ], [ -1.310720e+05, %4134 ], [ %4378, %4462 ], [ -1.310720e+05, %4204 ], [ -1.310720e+05, %4259 ], [ -1.310720e+05, %4201 ]
  %4477 = phi float [ %4196, %4172 ], [ 0.000000e+00, %4134 ], [ %4470, %4462 ], [ 0.000000e+00, %4204 ], [ 0.000000e+00, %4259 ], [ 0.000000e+00, %4201 ]
  %4478 = phi float [ %4198, %4172 ], [ 0.000000e+00, %4134 ], [ %4472, %4462 ], [ 0.000000e+00, %4204 ], [ 0.000000e+00, %4259 ], [ 0.000000e+00, %4201 ]
  %4479 = phi float [ %4200, %4172 ], [ 0.000000e+00, %4134 ], [ %4474, %4462 ], [ 0.000000e+00, %4204 ], [ 0.000000e+00, %4259 ], [ 0.000000e+00, %4201 ]
  %4480 = phi i1 [ true, %4172 ], [ false, %4134 ], [ true, %4462 ], [ false, %4204 ], [ false, %4259 ], [ false, %4201 ]
  %4481 = and i32 %179, 3
  %4482 = icmp eq i32 %4481, 1
  %4483 = select i1 %4482, float 1.000000e+00, float 0.000000e+00
  %4484 = fsub fast float %4476, %134
  %4485 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4486 = select i1 %4480, float %4485, float 1.000000e+00
  %4487 = fmul fast float %4486, %4483
  %4488 = icmp eq i32 %4481, 3
  %4489 = select i1 %4488, float 1.000000e+00, float %4487
  %4490 = call float @dx.op.binary.f32(i32 35, float %4050, float %4489)  ; FMax(a,b)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fcmp fast une float %4491, 0.000000e+00
  %4493 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4494 = call float @dx.op.unary.f32(i32 25, float %4493)  ; Rsqrt(value)
  br i1 %4492, label %4502, label %4495

; <label>:4495                                    ; preds = %4475
  %4496 = fmul fast float %4494, %132
  %4497 = fmul fast float %4494, %133
  %4498 = fmul fast float %4494, %134
  %4499 = fsub fast float -0.000000e+00, %4496
  %4500 = fsub fast float -0.000000e+00, %4497
  %4501 = fsub fast float -0.000000e+00, %4498
  br label %4670

; <label>:4502                                    ; preds = %4475
  %4503 = fmul fast float %132, %4494
  %4504 = fsub fast float -0.000000e+00, %4503
  %4505 = fmul fast float %133, %4494
  %4506 = fsub fast float -0.000000e+00, %4505
  %4507 = fmul fast float %134, %4494
  %4508 = fsub fast float -0.000000e+00, %4507
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4504, float %4506, float %4508, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = fmul fast float %4491, 2.500000e+00
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4491, 0x4013FFFFE0000000
  %4513 = fadd fast float %4512, 0xBFFFFFFFE0000000
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4491, 0x4004000020000000
  %4516 = fadd fast float %4515, 0xBFF8000040000000
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4519 = fmul fast float %4080, 1.000000e+01
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4520, 2.000000e+00
  %4522 = fsub fast float 3.000000e+00, %4521
  %4523 = fmul fast float %4520, %4520
  %4524 = fmul fast float %4523, %4522
  %4525 = fsub fast float 1.000000e+00, %4524
  %4526 = fsub fast float 0x3FE3333340000000, %4101
  %4527 = fmul fast float %4526, 0x400AAAAAA0000000
  %4528 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4529 = fmul fast float %4525, %4528
  %4530 = fmul fast float %4113, 0x3FEA2B8620000000
  %4531 = fmul fast float %4114, 0x3FEA2B8620000000
  %4532 = fmul fast float %4115, 0x3FEA2B8620000000
  %4533 = fadd fast float %4530, 0x3FC81DFBA0000000
  %4534 = fmul fast float %4533, %4113
  %4535 = fadd fast float %4534, 0x3F910E6020000000
  %4536 = fadd fast float %4531, 0x3FC81DFBA0000000
  %4537 = fmul fast float %4536, %4114
  %4538 = fadd fast float %4537, 0x3F910E6020000000
  %4539 = fadd fast float %4532, 0x3FC81DFBA0000000
  %4540 = fmul fast float %4539, %4115
  %4541 = fadd fast float %4540, 0x3F910E6020000000
  %4542 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4544 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4545 = fsub fast float %4542, %4113
  %4546 = fsub fast float %4543, %4114
  %4547 = fsub fast float %4544, %4115
  %4548 = fmul fast float %4545, %4518
  %4549 = fmul fast float %4548, %4529
  %4550 = fmul fast float %4546, %4518
  %4551 = fmul fast float %4550, %4529
  %4552 = fmul fast float %4547, %4518
  %4553 = fmul fast float %4552, %4529
  %4554 = fadd fast float %4549, %4113
  %4555 = fadd fast float %4551, %4114
  %4556 = fadd fast float %4553, %4115
  %4557 = fmul fast float %4061, %4061
  %4558 = fmul fast float %4557, %4557
  %4559 = fadd fast float %4514, 1.000000e+00
  %4560 = fsub fast float %4559, %4529
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4564 = fsub fast float 1.000000e+00, %4558
  %4565 = call float @dx.op.binary.f32(i32 36, float %4561, float %4564)  ; FMin(a,b)
  %4566 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4567 = call float @dx.op.binary.f32(i32 35, float %4565, float %4566)  ; FMax(a,b)
  %4568 = fadd fast float %4563, 0xBFE4CCCCC0000000
  %4569 = fmul fast float %4568, 0x4006DB6DA0000000
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fmul fast float %4570, 2.000000e+00
  %4572 = fsub fast float 3.000000e+00, %4571
  %4573 = bitcast float %4098 to i32
  %4574 = ashr i32 %4573, 1
  %4575 = add nsw i32 %4574, 532487669
  %4576 = bitcast i32 %4575 to float
  %4577 = fsub fast float 1.000000e+00, %4576
  %4578 = bitcast float %4577 to i32
  %4579 = sub nsw i32 2129859010, %4578
  %4580 = bitcast i32 %4579 to float
  %4581 = fmul fast float %4580, 2.000000e+00
  %4582 = bitcast float %4099 to i32
  %4583 = ashr i32 %4582, 1
  %4584 = add nsw i32 %4583, 532487669
  %4585 = bitcast i32 %4584 to float
  %4586 = fsub fast float 1.000000e+00, %4585
  %4587 = bitcast float %4586 to i32
  %4588 = sub nsw i32 2129859010, %4587
  %4589 = bitcast i32 %4588 to float
  %4590 = fmul fast float %4589, 2.000000e+00
  %4591 = bitcast float %4100 to i32
  %4592 = ashr i32 %4591, 1
  %4593 = add nsw i32 %4592, 532487669
  %4594 = bitcast i32 %4593 to float
  %4595 = fsub fast float 1.000000e+00, %4594
  %4596 = bitcast float %4595 to i32
  %4597 = sub nsw i32 2129859010, %4596
  %4598 = bitcast i32 %4597 to float
  %4599 = fmul fast float %4598, 2.000000e+00
  %4600 = fsub fast float 0x4002A9FBE0000000, %4581
  %4601 = fadd fast float %4581, 0x3FD54FDF00000000
  %4602 = bitcast float %4601 to i32
  %4603 = sub nsw i32 2129859010, %4602
  %4604 = bitcast i32 %4603 to float
  %4605 = fmul fast float %4604, %4600
  %4606 = fmul fast float %4605, %4605
  %4607 = fsub fast float 0x4002A9FBE0000000, %4590
  %4608 = fadd fast float %4590, 0x3FD54FDF00000000
  %4609 = bitcast float %4608 to i32
  %4610 = sub nsw i32 2129859010, %4609
  %4611 = bitcast i32 %4610 to float
  %4612 = fmul fast float %4611, %4607
  %4613 = fmul fast float %4612, %4612
  %4614 = fsub fast float 0x4002A9FBE0000000, %4599
  %4615 = fadd fast float %4599, 0x3FD54FDF00000000
  %4616 = bitcast float %4615 to i32
  %4617 = sub nsw i32 2129859010, %4616
  %4618 = bitcast i32 %4617 to float
  %4619 = fmul fast float %4618, %4614
  %4620 = fmul fast float %4619, %4619
  %4621 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4606)  ; FMax(a,b)
  %4622 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4613)  ; FMax(a,b)
  %4623 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4620)  ; FMax(a,b)
  %4624 = fsub fast float 1.000000e+00, %4509
  %4625 = fadd fast float %4624, %4525
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fsub fast float 1.000000e+00, %4489
  %4628 = fmul fast float %4567, %4627
  %4629 = fmul fast float %4570, %4570
  %4630 = fmul fast float %4629, %4628
  %4631 = fmul fast float %4630, %4572
  %4632 = fmul fast float %4627, 0xBFE99999A0000000
  %4633 = fmul fast float %4632, %4518
  %4634 = fmul fast float %4633, %4529
  %4635 = fadd fast float %4634, 1.000000e+00
  %4636 = fadd fast float %4101, -1.000000e+00
  %4637 = fmul fast float %4635, %4636
  %4638 = fadd fast float %4637, 1.000000e+00
  %4639 = fsub fast float %4621, %4098
  %4640 = fsub fast float %4622, %4099
  %4641 = fsub fast float %4623, %4100
  %4642 = fmul fast float %4631, %4639
  %4643 = fmul fast float %4631, %4640
  %4644 = fmul fast float %4631, %4641
  %4645 = fadd fast float %4642, %4098
  %4646 = fadd fast float %4643, %4099
  %4647 = fadd fast float %4644, %4100
  %4648 = fsub fast float %61, %4077
  %4649 = fsub fast float %62, %4078
  %4650 = fsub fast float %63, %4079
  %4651 = fmul fast float %4631, %4648
  %4652 = fmul fast float %4631, %4649
  %4653 = fmul fast float %4631, %4650
  %4654 = fadd fast float %4651, %4077
  %4655 = fadd fast float %4652, %4078
  %4656 = fadd fast float %4653, %4079
  %4657 = fmul fast float %4631, %4626
  %4658 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4659 = fsub fast float 1.000000e+00, %4658
  %4660 = fmul fast float %4657, %4659
  %4661 = fadd fast float %4660, %4658
  %4662 = fsub fast float 1.000000e+00, %4061
  %4663 = fmul fast float %4631, %4662
  %4664 = fadd fast float %4663, %4061
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float %4654, float %4655, float %4656)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 25, float %4665)  ; Rsqrt(value)
  %4667 = fmul fast float %4654, %4666
  %4668 = fmul fast float %4655, %4666
  %4669 = fmul fast float %4656, %4666
  br label %4670

; <label>:4670                                    ; preds = %4502, %4495
  %4671 = phi float [ %4501, %4495 ], [ %4508, %4502 ]
  %4672 = phi float [ %4500, %4495 ], [ %4506, %4502 ]
  %4673 = phi float [ %4499, %4495 ], [ %4504, %4502 ]
  %4674 = phi float [ %4498, %4495 ], [ %4507, %4502 ]
  %4675 = phi float [ %4497, %4495 ], [ %4505, %4502 ]
  %4676 = phi float [ %4496, %4495 ], [ %4503, %4502 ]
  %4677 = phi float [ %4098, %4495 ], [ %4645, %4502 ]
  %4678 = phi float [ %4099, %4495 ], [ %4646, %4502 ]
  %4679 = phi float [ %4100, %4495 ], [ %4647, %4502 ]
  %4680 = phi float [ %4077, %4495 ], [ %4667, %4502 ]
  %4681 = phi float [ %4078, %4495 ], [ %4668, %4502 ]
  %4682 = phi float [ %4079, %4495 ], [ %4669, %4502 ]
  %4683 = phi float [ %4113, %4495 ], [ %4554, %4502 ]
  %4684 = phi float [ %4114, %4495 ], [ %4555, %4502 ]
  %4685 = phi float [ %4115, %4495 ], [ %4556, %4502 ]
  %4686 = phi float [ %4101, %4495 ], [ %4661, %4502 ]
  %4687 = phi float [ %4061, %4495 ], [ %4664, %4502 ]
  %4688 = select i1 %203, float 0.000000e+00, float %4679
  %4689 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %4673, float %4672, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = call float @dx.op.dot3.f32(i32 55, float %4676, float %4675, float %4674, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = fmul fast float %4691, 2.000000e+00
  %4693 = fmul fast float %4692, %4680
  %4694 = fmul fast float %4692, %4681
  %4695 = fmul fast float %4692, %4682
  %4696 = fsub fast float %4676, %4693
  %4697 = fsub fast float %4675, %4694
  %4698 = fsub fast float %4674, %4695
  %4699 = call float @dx.op.binary.f32(i32 36, float %4687, float 1.000000e+00)  ; FMin(a,b)
  %4700 = fsub fast float 1.000000e+00, %4687
  %4701 = bitcast float %4700 to i32
  %4702 = sub nsw i32 2129859010, %4701
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = fadd fast float %4704, %132
  %4707 = fadd fast float %4705, %133
  %4708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.i32 %4708, 0
  %4710 = icmp eq i32 %4709, 1
  br i1 %4710, label %4711, label %4746

; <label>:4711                                    ; preds = %4670
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.CBufRet.f32 %4712, 1
  %4715 = fsub fast float %4706, %4713
  %4716 = fsub fast float %4707, %4714
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.CBufRet.f32 %4717, 1
  %4720 = fmul fast float %4715, %4718
  %4721 = fmul fast float %4716, %4719
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = fcmp fast ogt float %4723, 0.000000e+00
  %4725 = extractvalue %dx.types.CBufRet.i32 %4708, 3
  %4726 = icmp ne i32 %4725, 0
  %4727 = and i1 %4724, %4726
  br i1 %4727, label %4728, label %4746, !dx.controlflow.hints !86

; <label>:4728                                    ; preds = %4711
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4731 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4732 = fsub fast float %4706, %4730
  %4733 = fsub fast float %4707, %4731
  %4734 = fmul fast float %4732, %4732
  %4735 = fmul fast float %4733, %4733
  %4736 = fadd fast float %4734, %4735
  %4737 = uitofp i32 %4725 to float
  %4738 = fmul fast float %4737, %4737
  %4739 = fcmp fast ogt float %4736, %4738
  br i1 %4739, label %4746, label %4740

; <label>:4740                                    ; preds = %4728
  %4741 = call float @dx.op.unary.f32(i32 24, float %4736)  ; Sqrt(value)
  %4742 = fsub fast float %4737, %4741
  %4743 = fmul fast float %4742, 0x3F75555560000000
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = call float @dx.op.binary.f32(i32 36, float %4744, float %4723)  ; FMin(a,b)
  br label %4746

; <label>:4746                                    ; preds = %4740, %4728, %4711, %4670
  %4747 = phi float [ 1.000000e+00, %4670 ], [ %4745, %4740 ], [ %4723, %4711 ], [ 0.000000e+00, %4728 ]
  %4748 = fcmp fast ogt float %4747, 0.000000e+00
  br i1 %4748, label %4749, label %4847, !dx.controlflow.hints !87

; <label>:4749                                    ; preds = %4746
  %4750 = fadd fast float %163, 5.000000e-01
  %4751 = call float @dx.op.unary.f32(i32 27, float %4750)  ; Round_ni(value)
  %4752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %161, float %162, float %4751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4753 = extractvalue %dx.types.ResRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.ResRet.f32 %4752, 1
  %4755 = extractvalue %dx.types.ResRet.f32 %4752, 2
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 3
  %4758 = fmul fast float %4757, %4753
  %4759 = fmul fast float %4757, %4754
  %4760 = fmul fast float %4757, %4755
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %161, float %162, float %4751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %161, float %162, float %4751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.ResRet.f32 %4763, 1
  %4766 = fmul fast float %4764, 2.000000e+00
  %4767 = fmul fast float %4765, 2.000000e+00
  %4768 = fadd fast float %4766, -1.000000e+00
  %4769 = fadd fast float %4767, -1.000000e+00
  %4770 = fadd fast float %4768, %4769
  %4771 = fmul fast float %4770, 5.000000e-01
  %4772 = fsub fast float %4768, %4769
  %4773 = fmul fast float %4772, 5.000000e-01
  %4774 = call float @dx.op.unary.f32(i32 6, float %4771)  ; FAbs(value)
  %4775 = fsub fast float 1.000000e+00, %4774
  %4776 = call float @dx.op.unary.f32(i32 6, float %4773)  ; FAbs(value)
  %4777 = fsub fast float %4775, %4776
  %4778 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %4777)  ; FMax(a,b)
  %4779 = call float @dx.op.dot3.f32(i32 55, float %4771, float %4773, float %4778, float %4771, float %4773, float %4778)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = bitcast float %4779 to i32
  %4781 = ashr i32 %4780, 1
  %4782 = sub nsw i32 1597250115, %4781
  %4783 = bitcast i32 %4782 to float
  %4784 = fmul fast float %4783, %4771
  %4785 = fmul fast float %4783, %4773
  %4786 = fmul fast float %4783, %4778
  %4787 = fsub fast float 1.000000e+00, %4762
  %4788 = fdiv fast float %4787, %4786
  %4789 = fmul fast float %4786, %61
  %4790 = fmul fast float %4786, %62
  %4791 = fmul fast float %4786, %63
  %4792 = fmul fast float %4784, %57
  %4793 = fmul fast float %4784, %58
  %4794 = fmul fast float %4784, %59
  %4795 = fadd fast float %4789, %4792
  %4796 = fadd fast float %4790, %4793
  %4797 = fadd fast float %4791, %4794
  %4798 = fmul fast float %4785, %96
  %4799 = fmul fast float %4785, %97
  %4800 = fmul fast float %4785, %98
  %4801 = fadd fast float %4795, %4798
  %4802 = fadd fast float %4796, %4799
  %4803 = fadd fast float %4797, %4800
  %4804 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4802, float %4803, float %4801, float %4802, float %4803)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = call float @dx.op.unary.f32(i32 25, float %4804)  ; Rsqrt(value)
  %4806 = fmul fast float %4801, %4805
  %4807 = fmul fast float %4802, %4805
  %4808 = fmul fast float %4803, %4805
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fmul fast float %4810, 5.000000e-01
  %4812 = fadd fast float %4811, 5.000000e-01
  %4813 = fmul fast float %4812, %4762
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %4806, float %4807, float %4808)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fmul fast float %4815, %4788
  %4817 = fadd fast float %4813, %4816
  %4818 = fsub fast float 5.000000e-01, %4811
  %4819 = fmul fast float %4818, %4683
  %4820 = fmul fast float %4818, %4684
  %4821 = fmul fast float %4818, %4685
  %4822 = fadd fast float %4817, %4819
  %4823 = fmul fast float %4822, %4758
  %4824 = fadd fast float %4817, %4820
  %4825 = fmul fast float %4824, %4759
  %4826 = fadd fast float %4817, %4821
  %4827 = fmul fast float %4826, %4760
  %4828 = call float @dx.op.dot3.f32(i32 55, float %4696, float %4697, float %4698, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fmul fast float %4829, 5.000000e-01
  %4831 = fadd fast float %4830, 5.000000e-01
  %4832 = fmul fast float %4831, %4762
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4696, float %4697, float %4698, float %4806, float %4807, float %4808)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fmul fast float %4834, %4788
  %4836 = fadd fast float %4832, %4835
  %4837 = fsub fast float 5.000000e-01, %4830
  %4838 = fmul fast float %4837, %4683
  %4839 = fmul fast float %4837, %4684
  %4840 = fmul fast float %4837, %4685
  %4841 = fadd fast float %4836, %4838
  %4842 = fmul fast float %4841, %4758
  %4843 = fadd fast float %4836, %4839
  %4844 = fmul fast float %4843, %4759
  %4845 = fadd fast float %4836, %4840
  %4846 = fmul fast float %4845, %4760
  br label %4847

; <label>:4847                                    ; preds = %4749, %4746
  %4848 = phi float [ %4842, %4749 ], [ 0.000000e+00, %4746 ]
  %4849 = phi float [ %4844, %4749 ], [ 0.000000e+00, %4746 ]
  %4850 = phi float [ %4846, %4749 ], [ 0.000000e+00, %4746 ]
  %4851 = phi float [ %4823, %4749 ], [ 0.000000e+00, %4746 ]
  %4852 = phi float [ %4825, %4749 ], [ 0.000000e+00, %4746 ]
  %4853 = phi float [ %4827, %4749 ], [ 0.000000e+00, %4746 ]
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = fcmp fast ogt float %4855, 0.000000e+00
  %4857 = and i1 %4748, %4856
  br i1 %4857, label %4858, label %5062, !dx.controlflow.hints !88

; <label>:4858                                    ; preds = %4847
  %4859 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4860 = fadd fast float %4859, %134
  %4861 = fmul fast float %4680, 3.200000e+01
  %4862 = fmul fast float %4681, 3.200000e+01
  %4863 = fadd fast float %4706, %4861
  %4864 = fadd fast float %4707, %4862
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = fsub fast float %4863, %4866
  %4869 = fsub fast float %4864, %4867
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4873 = fmul fast float %4868, %4871
  %4874 = fmul fast float %4869, %4872
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4878 = fsub fast float %4706, %4876
  %4879 = fsub fast float %4707, %4877
  %4880 = fmul fast float %4878, %4878
  %4881 = fmul fast float %4879, %4879
  %4882 = fadd fast float %4880, %4881
  %4883 = call float @dx.op.unary.f32(i32 24, float %4882)  ; Sqrt(value)
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = fsub fast float %4883, %4885
  %4888 = fdiv fast float %4887, %4886
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fmul fast float %4889, 2.000000e+00
  %4891 = fsub fast float 3.000000e+00, %4890
  %4892 = fmul fast float %4889, %4889
  %4893 = fmul fast float %4892, %4891
  %4894 = fcmp fast oge float %4873, 0.000000e+00
  %4895 = fcmp fast ole float %4873, 1.000000e+00
  %4896 = and i1 %4895, %4894
  %4897 = fcmp fast oge float %4874, 0.000000e+00
  %4898 = and i1 %4897, %4896
  %4899 = fcmp fast ole float %4874, 1.000000e+00
  %4900 = and i1 %4899, %4898
  %4901 = fcmp fast ogt float %4893, 0.000000e+00
  %4902 = and i1 %4901, %4900
  br i1 %4902, label %4903, label %5026, !dx.controlflow.hints !89

; <label>:4903                                    ; preds = %4858
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4907 = fmul fast float %4905, %4873
  %4908 = fmul fast float %4906, %4874
  %4909 = call float @dx.op.unary.f32(i32 27, float %4907)  ; Round_ni(value)
  %4910 = call float @dx.op.unary.f32(i32 27, float %4908)  ; Round_ni(value)
  %4911 = fptosi float %4909 to i32
  %4912 = fptosi float %4910 to i32
  %4913 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4911, i32 %4912, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4914 = extractvalue %dx.types.ResRet.i32 %4913, 0
  %4915 = lshr i32 %4914, 16
  %4916 = icmp eq i32 %4915, 65535
  br i1 %4916, label %5026, label %4917

; <label>:4917                                    ; preds = %4903
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 0
  %4920 = fmul fast float %4919, %4873
  %4921 = extractvalue %dx.types.CBufRet.f32 %4918, 1
  %4922 = fadd fast float %4920, %4921
  %4923 = extractvalue %dx.types.CBufRet.f32 %4918, 2
  %4924 = fmul fast float %4923, %4874
  %4925 = extractvalue %dx.types.CBufRet.f32 %4918, 3
  %4926 = fadd fast float %4924, %4925
  %4927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4922, float %4926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4932 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4933 = fsub fast float %4931, %4932
  %4934 = fmul fast float %4933, %4928
  %4935 = fadd fast float %4934, %4932
  %4936 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %4937 = extractvalue %dx.types.CBufRet.f32 %4930, 2
  %4938 = fsub fast float %4936, %4937
  %4939 = fmul fast float %4938, %4929
  %4940 = fadd fast float %4939, %4937
  %4941 = fsub fast float %4860, %4935
  %4942 = fsub fast float %4940, %4935
  %4943 = fdiv fast float %4941, %4942
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4946 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4947 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4948 = fmul fast float %4946, %4873
  %4949 = fmul fast float %4947, %4874
  %4950 = fmul fast float %4948, 1.250000e-01
  %4951 = fmul fast float %4949, 1.250000e-01
  %4952 = call float @dx.op.unary.f32(i32 27, float %4950)  ; Round_ni(value)
  %4953 = call float @dx.op.unary.f32(i32 27, float %4951)  ; Round_ni(value)
  %4954 = fmul fast float %4952, 8.000000e+00
  %4955 = fmul fast float %4953, 8.000000e+00
  %4956 = fsub fast float %4948, %4954
  %4957 = fsub fast float %4949, %4955
  %4958 = fadd fast float %4956, 5.000000e-01
  %4959 = fadd fast float %4957, 5.000000e-01
  %4960 = and i32 %4915, 255
  %4961 = lshr i32 %4914, 24
  %4962 = mul nuw nsw i32 %4960, 9
  %4963 = uitofp i32 %4962 to float
  %4964 = mul nuw nsw i32 %4961, 9
  %4965 = uitofp i32 %4964 to float
  %4966 = fadd fast float %4958, %4963
  %4967 = fadd fast float %4959, %4965
  %4968 = fdiv fast float %4966, %4855
  %4969 = fdiv fast float %4967, %4945
  %4970 = fmul fast float %4944, 4.375000e-01
  %4971 = fadd fast float %4970, 3.125000e-02
  %4972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4968, float %4969, float %4971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.ResRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.ResRet.f32 %4972, 2
  %4976 = fadd fast float %4970, 5.312500e-01
  %4977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4968, float %4969, float %4976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4978 = extractvalue %dx.types.ResRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.ResRet.f32 %4977, 1
  %4980 = extractvalue %dx.types.ResRet.f32 %4977, 2
  %4981 = fmul fast float %4978, 2.000000e+00
  %4982 = fmul fast float %4979, 2.000000e+00
  %4983 = fmul fast float %4980, 2.000000e+00
  %4984 = fadd fast float %4981, -1.000000e+00
  %4985 = fadd fast float %4982, -1.000000e+00
  %4986 = fadd fast float %4983, -1.000000e+00
  %4987 = fmul fast float %4984, %4984
  %4988 = fmul fast float %4985, %4985
  %4989 = fadd fast float %4987, %4988
  %4990 = fmul fast float %4986, %4986
  %4991 = fadd fast float %4989, %4990
  %4992 = call float @dx.op.unary.f32(i32 24, float %4991)  ; Sqrt(value)
  %4993 = fcmp fast ogt float %4992, 0.000000e+00
  br i1 %4993, label %4994, label %4998

; <label>:4994                                    ; preds = %4917
  %4995 = fdiv fast float %4984, %4992
  %4996 = fdiv fast float %4985, %4992
  %4997 = fdiv fast float %4986, %4992
  br label %4998

; <label>:4998                                    ; preds = %4994, %4917
  %4999 = phi float [ %4995, %4994 ], [ 0.000000e+00, %4917 ]
  %5000 = phi float [ %4996, %4994 ], [ 0.000000e+00, %4917 ]
  %5001 = phi float [ %4997, %4994 ], [ 0.000000e+00, %4917 ]
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4999, float %5000, float %5001, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5002)  ; FMax(a,b)
  %5004 = fmul fast float %5003, 0x400C5BF8A0000000
  %5005 = fmul fast float %4973, %4893
  %5006 = fmul fast float %5005, %5004
  %5007 = fmul fast float %4974, %4893
  %5008 = fmul fast float %5007, %5004
  %5009 = fmul fast float %4975, %4893
  %5010 = fmul fast float %5009, %5004
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 3
  %5013 = fmul fast float %5006, %5012
  %5014 = fmul fast float %5008, %5012
  %5015 = fmul fast float %5010, %5012
  %5016 = fcmp fast ogt float %4860, %4940
  br i1 %5016, label %5017, label %5026

; <label>:5017                                    ; preds = %4998
  %5018 = fmul fast float %4942, 0x3FC24924A0000000
  %5019 = fsub fast float %4860, %4940
  %5020 = fdiv fast float %5019, %5018
  %5021 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = fmul fast float %5022, %5013
  %5024 = fmul fast float %5022, %5014
  %5025 = fmul fast float %5022, %5015
  br label %5026

; <label>:5026                                    ; preds = %5017, %4998, %4903, %4858
  %5027 = phi float [ %5025, %5017 ], [ %5015, %4998 ], [ 0.000000e+00, %4903 ], [ 0.000000e+00, %4858 ]
  %5028 = phi float [ %5024, %5017 ], [ %5014, %4998 ], [ 0.000000e+00, %4903 ], [ 0.000000e+00, %4858 ]
  %5029 = phi float [ %5023, %5017 ], [ %5013, %4998 ], [ 0.000000e+00, %4903 ], [ 0.000000e+00, %4858 ]
  %5030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5029)  ; FMax(a,b)
  %5031 = fmul fast float %5030, 0x3FD20DD760000000
  %5032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4696, float %4697, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = fmul fast float %5032, 0x3FDF454380000000
  %5034 = fmul fast float %5032, %5032
  %5035 = fmul fast float %5034, 0x3FEE471020000000
  %5036 = fadd fast float %5035, 0xBFD42F6020000000
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5030, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %5033, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5028)  ; FMax(a,b)
  %5039 = fmul fast float %5038, 0x3FD20DD760000000
  %5040 = call float @dx.op.dot3.f32(i32 55, float %5038, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %5033, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5027)  ; FMax(a,b)
  %5042 = fmul fast float %5041, 0x3FD20DD760000000
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5041, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %5033, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.binary.f32(i32 35, float %5031, float 0.000000e+00)  ; FMax(a,b)
  %5045 = call float @dx.op.binary.f32(i32 35, float %5039, float 0.000000e+00)  ; FMax(a,b)
  %5046 = call float @dx.op.binary.f32(i32 35, float %5042, float 0.000000e+00)  ; FMax(a,b)
  %5047 = call float @dx.op.binary.f32(i32 35, float %5037, float 0.000000e+00)  ; FMax(a,b)
  %5048 = call float @dx.op.binary.f32(i32 35, float %5040, float 0.000000e+00)  ; FMax(a,b)
  %5049 = call float @dx.op.binary.f32(i32 35, float %5043, float 0.000000e+00)  ; FMax(a,b)
  %5050 = fmul fast float %5044, %4747
  %5051 = fmul fast float %5045, %4747
  %5052 = fmul fast float %5046, %4747
  %5053 = fadd fast float %5050, %4851
  %5054 = fadd fast float %5051, %4852
  %5055 = fadd fast float %5052, %4853
  %5056 = fmul fast float %5047, %4747
  %5057 = fmul fast float %5048, %4747
  %5058 = fmul fast float %5049, %4747
  %5059 = fadd fast float %5056, %4848
  %5060 = fadd fast float %5057, %4849
  %5061 = fadd fast float %5058, %4850
  br label %5062

; <label>:5062                                    ; preds = %5026, %4847
  %5063 = phi float [ %5059, %5026 ], [ %4848, %4847 ]
  %5064 = phi float [ %5060, %5026 ], [ %4849, %4847 ]
  %5065 = phi float [ %5061, %5026 ], [ %4850, %4847 ]
  %5066 = phi float [ %5053, %5026 ], [ %4851, %4847 ]
  %5067 = phi float [ %5054, %5026 ], [ %4852, %4847 ]
  %5068 = phi float [ %5055, %5026 ], [ %4853, %4847 ]
  %5069 = fcmp fast olt float %4747, 1.000000e+00
  br i1 %5069, label %5070, label %5888, !dx.controlflow.hints !90

; <label>:5070                                    ; preds = %5062
  %5071 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %5072 = fadd fast float %5071, %134
  %5073 = fmul fast float %4680, 3.200000e+01
  %5074 = fmul fast float %4681, 3.200000e+01
  %5075 = fadd fast float %4706, %5073
  %5076 = fadd fast float %4707, %5074
  %5077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.CBufRet.f32 %5077, 1
  %5080 = fsub fast float %5075, %5078
  %5081 = fsub fast float %5076, %5079
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.CBufRet.f32 %5082, 1
  %5085 = fmul fast float %5080, %5083
  %5086 = fmul fast float %5081, %5084
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 0
  %5089 = fmul fast float %5085, %5088
  %5090 = extractvalue %dx.types.CBufRet.f32 %5087, 1
  %5091 = fadd fast float %5089, %5090
  %5092 = extractvalue %dx.types.CBufRet.f32 %5087, 2
  %5093 = fmul fast float %5092, %5086
  %5094 = extractvalue %dx.types.CBufRet.f32 %5087, 3
  %5095 = fadd fast float %5093, %5094
  %5096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %5091, float %5095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5097 = extractvalue %dx.types.ResRet.f32 %5096, 0
  %5098 = extractvalue %dx.types.ResRet.f32 %5096, 1
  %5099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.f32 %5099, 1
  %5101 = extractvalue %dx.types.CBufRet.f32 %5099, 0
  %5102 = fsub fast float %5100, %5101
  %5103 = fmul fast float %5102, %5097
  %5104 = fadd fast float %5103, %5101
  %5105 = extractvalue %dx.types.CBufRet.f32 %5099, 3
  %5106 = extractvalue %dx.types.CBufRet.f32 %5099, 2
  %5107 = fsub fast float %5105, %5106
  %5108 = fmul fast float %5107, %5098
  %5109 = fadd fast float %5108, %5106
  %5110 = fsub fast float %5072, %5104
  %5111 = fsub fast float %5109, %5104
  %5112 = fdiv fast float %5110, %5111
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = fmul fast float %5115, %5113
  %5117 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5118 = fadd fast float %5116, %5117
  %5119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %5091, float %5095, float %5118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.ResRet.f32 %5119, 1
  %5122 = extractvalue %dx.types.ResRet.f32 %5119, 2
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.CBufRet.f32 %5123, 1
  %5126 = extractvalue %dx.types.CBufRet.f32 %5123, 2
  %5127 = fmul fast float %5124, %5120
  %5128 = fmul fast float %5125, %5121
  %5129 = fmul fast float %5126, %5122
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.CBufRet.f32 %5130, 1
  %5133 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5134 = fadd fast float %5127, %5131
  %5135 = fadd fast float %5128, %5132
  %5136 = fadd fast float %5129, %5133
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = fmul fast float %5138, %5085
  %5140 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5141 = fadd fast float %5139, %5140
  %5142 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5143 = fmul fast float %5142, %5086
  %5144 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5145 = fadd fast float %5143, %5144
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5149 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5150 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = extractvalue %dx.types.CBufRet.f32 %5151, 3
  %5156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5141, float %5145, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.ResRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.ResRet.f32 %5156, 2
  %5160 = extractvalue %dx.types.ResRet.f32 %5156, 3
  %5161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5141, float %5145, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5162 = extractvalue %dx.types.ResRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.ResRet.f32 %5161, 1
  %5164 = extractvalue %dx.types.ResRet.f32 %5161, 2
  %5165 = extractvalue %dx.types.ResRet.f32 %5161, 3
  %5166 = fmul fast float %5157, %5134
  %5167 = fmul fast float %5162, %5134
  %5168 = fmul fast float %5164, %5134
  %5169 = fmul fast float %5160, %5134
  %5170 = fadd fast float %5166, %5147
  %5171 = fadd fast float %5167, %5148
  %5172 = fadd fast float %5168, %5149
  %5173 = fadd fast float %5169, %5150
  %5174 = fmul fast float %5158, %5134
  %5175 = fmul fast float %5163, %5134
  %5176 = fadd fast float %5174, %5152
  %5177 = fadd fast float %5175, %5153
  %5178 = fmul fast float %5159, %5134
  %5179 = fmul fast float %5165, %5134
  %5180 = fadd fast float %5178, %5154
  %5181 = fadd fast float %5179, %5155
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5141, float %5145, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.ResRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.ResRet.f32 %5182, 2
  %5186 = extractvalue %dx.types.ResRet.f32 %5182, 3
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5141, float %5145, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.ResRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.ResRet.f32 %5187, 2
  %5191 = extractvalue %dx.types.ResRet.f32 %5187, 3
  %5192 = fmul fast float %5183, %5135
  %5193 = fmul fast float %5188, %5135
  %5194 = fmul fast float %5190, %5135
  %5195 = fmul fast float %5186, %5135
  %5196 = fadd fast float %5170, %5192
  %5197 = fadd fast float %5171, %5193
  %5198 = fadd fast float %5172, %5194
  %5199 = fadd fast float %5173, %5195
  %5200 = fmul fast float %5184, %5135
  %5201 = fmul fast float %5189, %5135
  %5202 = fadd fast float %5176, %5200
  %5203 = fadd fast float %5177, %5201
  %5204 = fmul fast float %5185, %5135
  %5205 = fmul fast float %5191, %5135
  %5206 = fadd fast float %5180, %5204
  %5207 = fadd fast float %5181, %5205
  %5208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5141, float %5145, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = extractvalue %dx.types.ResRet.f32 %5208, 3
  %5213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5141, float %5145, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5214 = extractvalue %dx.types.ResRet.f32 %5213, 0
  %5215 = extractvalue %dx.types.ResRet.f32 %5213, 1
  %5216 = extractvalue %dx.types.ResRet.f32 %5213, 2
  %5217 = extractvalue %dx.types.ResRet.f32 %5213, 3
  %5218 = fmul fast float %5209, %5136
  %5219 = fmul fast float %5214, %5136
  %5220 = fmul fast float %5216, %5136
  %5221 = fmul fast float %5212, %5136
  %5222 = fadd fast float %5196, %5218
  %5223 = fadd fast float %5197, %5219
  %5224 = fadd fast float %5198, %5220
  %5225 = fadd fast float %5199, %5221
  %5226 = fmul fast float %5210, %5136
  %5227 = fmul fast float %5215, %5136
  %5228 = fadd fast float %5202, %5226
  %5229 = fadd fast float %5203, %5227
  %5230 = fmul fast float %5211, %5136
  %5231 = fmul fast float %5217, %5136
  %5232 = fadd fast float %5206, %5230
  %5233 = fadd fast float %5207, %5231
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 0
  %5236 = fsub fast float %4706, %5235
  %5237 = fsub fast float %5078, %4706
  %5238 = call float @dx.op.binary.f32(i32 35, float %5237, float %5236)  ; FMax(a,b)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5240 = fsub fast float %4707, %5239
  %5241 = fsub fast float %5079, %4707
  %5242 = call float @dx.op.binary.f32(i32 35, float %5241, float %5240)  ; FMax(a,b)
  %5243 = call float @dx.op.binary.f32(i32 35, float %5238, float %5242)  ; FMax(a,b)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5082, 3
  %5245 = fmul fast float %5244, %5243
  %5246 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.CBufRet.f32 %5247, 2
  %5251 = extractvalue %dx.types.CBufRet.f32 %5247, 3
  %5252 = fsub fast float %5248, %5222
  %5253 = fsub fast float %5249, %5223
  %5254 = fsub fast float %5250, %5224
  %5255 = fsub fast float %5251, %5225
  %5256 = fmul fast float %5252, %5246
  %5257 = fmul fast float %5253, %5246
  %5258 = fmul fast float %5254, %5246
  %5259 = fmul fast float %5255, %5246
  %5260 = fadd fast float %5256, %5222
  %5261 = fadd fast float %5257, %5223
  %5262 = fadd fast float %5258, %5224
  %5263 = fadd fast float %5259, %5225
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.CBufRet.f32 %5264, 1
  %5267 = fsub fast float %5265, %5228
  %5268 = fsub fast float %5266, %5229
  %5269 = fmul fast float %5267, %5246
  %5270 = fmul fast float %5268, %5246
  %5271 = fadd fast float %5269, %5228
  %5272 = fadd fast float %5270, %5229
  %5273 = extractvalue %dx.types.CBufRet.f32 %5264, 2
  %5274 = extractvalue %dx.types.CBufRet.f32 %5264, 3
  %5275 = fsub fast float %5273, %5232
  %5276 = fsub fast float %5274, %5233
  %5277 = fmul fast float %5275, %5246
  %5278 = fmul fast float %5276, %5246
  %5279 = fadd fast float %5277, %5232
  %5280 = fadd fast float %5278, %5233
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = fmul fast float %5282, %5260
  %5284 = fmul fast float %5282, %5261
  %5285 = fmul fast float %5282, %5262
  %5286 = fmul fast float %5282, %5263
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 0
  %5289 = fmul fast float %5288, %5271
  %5290 = fmul fast float %5288, %5272
  %5291 = fadd fast float %5289, %5283
  %5292 = fadd fast float %5290, %5285
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = fmul fast float %5294, %5279
  %5296 = fmul fast float %5294, %5280
  %5297 = fadd fast float %5291, %5295
  %5298 = fadd fast float %5292, %5296
  %5299 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5300 = fmul fast float %5299, %5260
  %5301 = fmul fast float %5299, %5261
  %5302 = fmul fast float %5299, %5262
  %5303 = fmul fast float %5299, %5263
  %5304 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5305 = fmul fast float %5304, %5271
  %5306 = fmul fast float %5304, %5272
  %5307 = fadd fast float %5305, %5300
  %5308 = fadd fast float %5306, %5302
  %5309 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5310 = fmul fast float %5309, %5279
  %5311 = fmul fast float %5309, %5280
  %5312 = fadd fast float %5307, %5310
  %5313 = fadd fast float %5308, %5311
  %5314 = extractvalue %dx.types.CBufRet.f32 %5281, 2
  %5315 = fmul fast float %5314, %5260
  %5316 = fmul fast float %5314, %5261
  %5317 = fmul fast float %5314, %5262
  %5318 = fmul fast float %5314, %5263
  %5319 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5320 = fmul fast float %5319, %5271
  %5321 = fmul fast float %5319, %5272
  %5322 = fadd fast float %5320, %5315
  %5323 = fadd fast float %5321, %5317
  %5324 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5325 = fmul fast float %5324, %5279
  %5326 = fmul fast float %5324, %5280
  %5327 = fadd fast float %5322, %5325
  %5328 = fadd fast float %5323, %5326
  %5329 = fmul fast float %5316, %5316
  %5330 = fmul fast float %5328, %5328
  %5331 = fmul fast float %5318, %5318
  %5332 = fadd fast float %5331, %5329
  %5333 = fadd fast float %5332, %5330
  %5334 = call float @dx.op.unary.f32(i32 24, float %5333)  ; Sqrt(value)
  %5335 = fcmp fast ugt float %5334, 0.000000e+00
  br i1 %5335, label %5336, label %5351

; <label>:5336                                    ; preds = %5070
  %5337 = fsub fast float -0.000000e+00, %5318
  %5338 = fdiv fast float %5337, %5334
  %5339 = fsub fast float -0.000000e+00, %5316
  %5340 = fdiv fast float %5339, %5334
  %5341 = fdiv fast float %5328, %5334
  %5342 = fmul fast float %5327, 0x3FE279A760000000
  %5343 = fmul fast float %5340, %5316
  %5344 = fmul fast float %5341, %5328
  %5345 = fmul fast float %5338, %5318
  %5346 = fadd fast float %5343, %5345
  %5347 = fsub fast float %5346, %5344
  %5348 = call float @dx.op.unary.f32(i32 6, float %5347)  ; FAbs(value)
  %5349 = fadd fast float %5348, 0x3DDB7CDFE0000000
  %5350 = fdiv fast float %5342, %5349
  br label %5351

; <label>:5351                                    ; preds = %5336, %5070
  %5352 = phi float [ %5350, %5336 ], [ 1.000000e+00, %5070 ]
  %5353 = fmul fast float %5301, %5301
  %5354 = fmul fast float %5313, %5313
  %5355 = fmul fast float %5303, %5303
  %5356 = fadd fast float %5355, %5353
  %5357 = fadd fast float %5356, %5354
  %5358 = call float @dx.op.unary.f32(i32 24, float %5357)  ; Sqrt(value)
  %5359 = fcmp fast ugt float %5358, 0.000000e+00
  br i1 %5359, label %5360, label %5375

; <label>:5360                                    ; preds = %5351
  %5361 = fsub fast float -0.000000e+00, %5303
  %5362 = fdiv fast float %5361, %5358
  %5363 = fsub fast float -0.000000e+00, %5301
  %5364 = fdiv fast float %5363, %5358
  %5365 = fdiv fast float %5313, %5358
  %5366 = fmul fast float %5312, 0x3FE279A760000000
  %5367 = fmul fast float %5364, %5301
  %5368 = fmul fast float %5365, %5313
  %5369 = fmul fast float %5362, %5303
  %5370 = fadd fast float %5367, %5369
  %5371 = fsub fast float %5370, %5368
  %5372 = call float @dx.op.unary.f32(i32 6, float %5371)  ; FAbs(value)
  %5373 = fadd fast float %5372, 0x3DDB7CDFE0000000
  %5374 = fdiv fast float %5366, %5373
  br label %5375

; <label>:5375                                    ; preds = %5360, %5351
  %5376 = phi float [ %5374, %5360 ], [ 1.000000e+00, %5351 ]
  %5377 = call float @dx.op.binary.f32(i32 36, float %5376, float %5352)  ; FMin(a,b)
  %5378 = fmul fast float %5284, %5284
  %5379 = fmul fast float %5298, %5298
  %5380 = fmul fast float %5286, %5286
  %5381 = fadd fast float %5380, %5378
  %5382 = fadd fast float %5381, %5379
  %5383 = call float @dx.op.unary.f32(i32 24, float %5382)  ; Sqrt(value)
  %5384 = fcmp fast ugt float %5383, 0.000000e+00
  br i1 %5384, label %5385, label %5400

; <label>:5385                                    ; preds = %5375
  %5386 = fsub fast float -0.000000e+00, %5286
  %5387 = fdiv fast float %5386, %5383
  %5388 = fsub fast float -0.000000e+00, %5284
  %5389 = fdiv fast float %5388, %5383
  %5390 = fdiv fast float %5298, %5383
  %5391 = fmul fast float %5297, 0x3FE279A760000000
  %5392 = fmul fast float %5389, %5284
  %5393 = fmul fast float %5390, %5298
  %5394 = fmul fast float %5387, %5286
  %5395 = fadd fast float %5392, %5394
  %5396 = fsub fast float %5395, %5393
  %5397 = call float @dx.op.unary.f32(i32 6, float %5396)  ; FAbs(value)
  %5398 = fadd fast float %5397, 0x3DDB7CDFE0000000
  %5399 = fdiv fast float %5391, %5398
  br label %5400

; <label>:5400                                    ; preds = %5385, %5375
  %5401 = phi float [ %5399, %5385 ], [ 1.000000e+00, %5375 ]
  %5402 = call float @dx.op.binary.f32(i32 36, float %5401, float %5377)  ; FMin(a,b)
  %5403 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5404 = fcmp fast olt float %5403, 1.000000e+00
  br i1 %5404, label %5405, label %5415

; <label>:5405                                    ; preds = %5400
  %5406 = fmul fast float %5403, %5284
  %5407 = fmul fast float %5403, %5298
  %5408 = fmul fast float %5403, %5286
  %5409 = fmul fast float %5403, %5301
  %5410 = fmul fast float %5403, %5313
  %5411 = fmul fast float %5403, %5303
  %5412 = fmul fast float %5403, %5316
  %5413 = fmul fast float %5403, %5328
  %5414 = fmul fast float %5403, %5318
  br label %5415

; <label>:5415                                    ; preds = %5405, %5400
  %5416 = phi float [ %5412, %5405 ], [ %5316, %5400 ]
  %5417 = phi float [ %5413, %5405 ], [ %5328, %5400 ]
  %5418 = phi float [ %5414, %5405 ], [ %5318, %5400 ]
  %5419 = phi float [ %5409, %5405 ], [ %5301, %5400 ]
  %5420 = phi float [ %5410, %5405 ], [ %5313, %5400 ]
  %5421 = phi float [ %5411, %5405 ], [ %5303, %5400 ]
  %5422 = phi float [ %5406, %5405 ], [ %5284, %5400 ]
  %5423 = phi float [ %5407, %5405 ], [ %5298, %5400 ]
  %5424 = phi float [ %5408, %5405 ], [ %5286, %5400 ]
  %5425 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5297)  ; FMax(a,b)
  %5426 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5312)  ; FMax(a,b)
  %5427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5327)  ; FMax(a,b)
  %5428 = fcmp fast oge float %5085, 0.000000e+00
  %5429 = and i1 %5428, %4856
  %5430 = fcmp fast ole float %5085, 1.000000e+00
  %5431 = and i1 %5430, %5429
  %5432 = fcmp fast oge float %5086, 0.000000e+00
  %5433 = and i1 %5432, %5431
  %5434 = fcmp fast ole float %5086, 1.000000e+00
  %5435 = and i1 %5434, %5433
  br i1 %5435, label %5436, label %5581, !dx.controlflow.hints !91

; <label>:5436                                    ; preds = %5415
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5440 = fmul fast float %5438, %5085
  %5441 = fmul fast float %5439, %5086
  %5442 = call float @dx.op.unary.f32(i32 27, float %5440)  ; Round_ni(value)
  %5443 = call float @dx.op.unary.f32(i32 27, float %5441)  ; Round_ni(value)
  %5444 = fptosi float %5442 to i32
  %5445 = fptosi float %5443 to i32
  %5446 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %5444, i32 %5445, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5447 = extractvalue %dx.types.ResRet.i32 %5446, 0
  %5448 = and i32 %5447, 65535
  %5449 = lshr i32 %5447, 16
  %5450 = icmp eq i32 %5448, 65535
  br i1 %5450, label %5487, label %5451

; <label>:5451                                    ; preds = %5436
  %5452 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %5453 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5455 = fmul fast float %5453, %5085
  %5456 = fmul fast float %5454, %5086
  %5457 = fmul fast float %5455, 1.250000e-01
  %5458 = fmul fast float %5456, 1.250000e-01
  %5459 = call float @dx.op.unary.f32(i32 27, float %5457)  ; Round_ni(value)
  %5460 = call float @dx.op.unary.f32(i32 27, float %5458)  ; Round_ni(value)
  %5461 = fmul fast float %5459, 8.000000e+00
  %5462 = fmul fast float %5460, 8.000000e+00
  %5463 = and i32 %5447, 255
  %5464 = lshr i32 %5447, 8
  %5465 = and i32 %5464, 255
  %5466 = mul nuw nsw i32 %5463, 9
  %5467 = uitofp i32 %5466 to float
  %5468 = mul nuw nsw i32 %5465, 9
  %5469 = uitofp i32 %5468 to float
  %5470 = fadd fast float %5467, 5.000000e-01
  %5471 = fadd fast float %5470, %5455
  %5472 = fsub fast float %5471, %5461
  %5473 = fadd fast float %5469, 5.000000e-01
  %5474 = fadd fast float %5473, %5456
  %5475 = fsub fast float %5474, %5462
  %5476 = fdiv fast float %5472, %4855
  %5477 = fdiv fast float %5475, %5452
  %5478 = fmul fast float %5113, 4.375000e-01
  %5479 = fadd fast float %5478, 3.125000e-02
  %5480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5476, float %5477, float %5479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.ResRet.f32 %5480, 2
  %5484 = fadd fast float %5481, %5425
  %5485 = fadd fast float %5482, %5426
  %5486 = fadd fast float %5483, %5427
  br label %5487

; <label>:5487                                    ; preds = %5451, %5436
  %5488 = phi float [ %5486, %5451 ], [ %5427, %5436 ]
  %5489 = phi float [ %5485, %5451 ], [ %5426, %5436 ]
  %5490 = phi float [ %5484, %5451 ], [ %5425, %5436 ]
  %5491 = icmp eq i32 %5449, 65535
  br i1 %5491, label %5581, label %5492

; <label>:5492                                    ; preds = %5487
  %5493 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %5494 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5496 = fmul fast float %5494, %5085
  %5497 = fmul fast float %5495, %5086
  %5498 = fmul fast float %5496, 1.250000e-01
  %5499 = fmul fast float %5497, 1.250000e-01
  %5500 = call float @dx.op.unary.f32(i32 27, float %5498)  ; Round_ni(value)
  %5501 = call float @dx.op.unary.f32(i32 27, float %5499)  ; Round_ni(value)
  %5502 = fmul fast float %5500, 8.000000e+00
  %5503 = fmul fast float %5501, 8.000000e+00
  %5504 = fsub fast float %5496, %5502
  %5505 = fsub fast float %5497, %5503
  %5506 = fadd fast float %5504, 5.000000e-01
  %5507 = fadd fast float %5505, 5.000000e-01
  %5508 = and i32 %5449, 255
  %5509 = lshr i32 %5447, 24
  %5510 = mul nuw nsw i32 %5508, 9
  %5511 = uitofp i32 %5510 to float
  %5512 = mul nuw nsw i32 %5509, 9
  %5513 = uitofp i32 %5512 to float
  %5514 = fadd fast float %5506, %5511
  %5515 = fadd fast float %5507, %5513
  %5516 = fdiv fast float %5514, %4855
  %5517 = fdiv fast float %5515, %5493
  %5518 = fmul fast float %5113, 4.375000e-01
  %5519 = fadd fast float %5518, 3.125000e-02
  %5520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5516, float %5517, float %5519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5521 = extractvalue %dx.types.ResRet.f32 %5520, 0
  %5522 = extractvalue %dx.types.ResRet.f32 %5520, 1
  %5523 = extractvalue %dx.types.ResRet.f32 %5520, 2
  %5524 = fadd fast float %5518, 5.312500e-01
  %5525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5516, float %5517, float %5524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.ResRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.ResRet.f32 %5525, 2
  %5529 = fmul fast float %5526, 2.000000e+00
  %5530 = fmul fast float %5527, 2.000000e+00
  %5531 = fmul fast float %5528, 2.000000e+00
  %5532 = fadd fast float %5529, -1.000000e+00
  %5533 = fadd fast float %5530, -1.000000e+00
  %5534 = fadd fast float %5531, -1.000000e+00
  %5535 = fmul fast float %5532, %5532
  %5536 = fmul fast float %5533, %5533
  %5537 = fadd fast float %5535, %5536
  %5538 = fmul fast float %5534, %5534
  %5539 = fadd fast float %5537, %5538
  %5540 = call float @dx.op.unary.f32(i32 24, float %5539)  ; Sqrt(value)
  %5541 = fcmp fast ogt float %5540, 0.000000e+00
  br i1 %5541, label %5542, label %5546

; <label>:5542                                    ; preds = %5492
  %5543 = fdiv fast float %5532, %5540
  %5544 = fdiv fast float %5533, %5540
  %5545 = fdiv fast float %5534, %5540
  br label %5546

; <label>:5546                                    ; preds = %5542, %5492
  %5547 = phi float [ %5543, %5542 ], [ 0.000000e+00, %5492 ]
  %5548 = phi float [ %5544, %5542 ], [ 0.000000e+00, %5492 ]
  %5549 = phi float [ %5545, %5542 ], [ 0.000000e+00, %5492 ]
  %5550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5551 = extractvalue %dx.types.CBufRet.f32 %5550, 0
  %5552 = extractvalue %dx.types.CBufRet.f32 %5550, 1
  %5553 = fsub fast float %4706, %5551
  %5554 = fsub fast float %4707, %5552
  %5555 = fmul fast float %5553, %5553
  %5556 = fmul fast float %5554, %5554
  %5557 = fadd fast float %5555, %5556
  %5558 = call float @dx.op.unary.f32(i32 24, float %5557)  ; Sqrt(value)
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.CBufRet.f32 %5559, 1
  %5562 = fsub fast float %5558, %5560
  %5563 = fdiv fast float %5562, %5561
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = fmul fast float %5564, 2.000000e+00
  %5566 = fsub fast float 3.000000e+00, %5565
  %5567 = fmul fast float %5564, %5564
  %5568 = fmul fast float %5567, %5566
  %5569 = call float @dx.op.dot3.f32(i32 55, float %5547, float %5548, float %5549, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5569)  ; FMax(a,b)
  %5571 = fmul fast float %5570, 0x400C5BF8A0000000
  %5572 = fmul fast float %5568, %5521
  %5573 = fmul fast float %5572, %5571
  %5574 = fadd fast float %5573, %5490
  %5575 = fmul fast float %5568, %5522
  %5576 = fmul fast float %5575, %5571
  %5577 = fadd fast float %5576, %5489
  %5578 = fmul fast float %5568, %5523
  %5579 = fmul fast float %5578, %5571
  %5580 = fadd fast float %5579, %5488
  br label %5581

; <label>:5581                                    ; preds = %5546, %5487, %5415
  %5582 = phi float [ %5580, %5546 ], [ %5488, %5487 ], [ %5427, %5415 ]
  %5583 = phi float [ %5577, %5546 ], [ %5489, %5487 ], [ %5426, %5415 ]
  %5584 = phi float [ %5574, %5546 ], [ %5490, %5487 ], [ %5425, %5415 ]
  %5585 = fcmp fast ogt float %5072, %5109
  %5586 = and i1 %5428, %5585
  %5587 = and i1 %5430, %5586
  %5588 = and i1 %5432, %5587
  %5589 = and i1 %5434, %5588
  br i1 %5589, label %5590, label %5647, !dx.controlflow.hints !92

; <label>:5590                                    ; preds = %5581
  %5591 = fmul fast float %5111, 0x3FC24924A0000000
  %5592 = fsub fast float %5072, %5109
  %5593 = fdiv fast float %5592, %5591
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.f32 %5597, 0
  %5599 = extractvalue %dx.types.CBufRet.f32 %5597, 1
  %5600 = extractvalue %dx.types.CBufRet.f32 %5597, 2
  %5601 = fsub fast float %5596, %5584
  %5602 = fsub fast float %5598, %5422
  %5603 = fsub fast float %5599, %5423
  %5604 = fsub fast float %5600, %5424
  %5605 = fmul fast float %5601, %5594
  %5606 = fmul fast float %5602, %5594
  %5607 = fmul fast float %5603, %5594
  %5608 = fmul fast float %5604, %5594
  %5609 = fadd fast float %5605, %5584
  %5610 = fadd fast float %5606, %5422
  %5611 = fadd fast float %5607, %5423
  %5612 = fadd fast float %5608, %5424
  %5613 = extractvalue %dx.types.CBufRet.f32 %5595, 1
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5618 = fsub fast float %5613, %5583
  %5619 = fsub fast float %5615, %5419
  %5620 = fsub fast float %5616, %5420
  %5621 = fsub fast float %5617, %5421
  %5622 = fmul fast float %5618, %5594
  %5623 = fmul fast float %5619, %5594
  %5624 = fmul fast float %5620, %5594
  %5625 = fmul fast float %5621, %5594
  %5626 = fadd fast float %5622, %5583
  %5627 = fadd fast float %5623, %5419
  %5628 = fadd fast float %5624, %5420
  %5629 = fadd fast float %5625, %5421
  %5630 = extractvalue %dx.types.CBufRet.f32 %5595, 2
  %5631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5632 = extractvalue %dx.types.CBufRet.f32 %5631, 0
  %5633 = extractvalue %dx.types.CBufRet.f32 %5631, 1
  %5634 = extractvalue %dx.types.CBufRet.f32 %5631, 2
  %5635 = fsub fast float %5630, %5582
  %5636 = fsub fast float %5632, %5416
  %5637 = fsub fast float %5633, %5417
  %5638 = fsub fast float %5634, %5418
  %5639 = fmul fast float %5635, %5594
  %5640 = fmul fast float %5636, %5594
  %5641 = fmul fast float %5637, %5594
  %5642 = fmul fast float %5638, %5594
  %5643 = fadd fast float %5639, %5582
  %5644 = fadd fast float %5640, %5416
  %5645 = fadd fast float %5641, %5417
  %5646 = fadd fast float %5642, %5418
  br label %5647

; <label>:5647                                    ; preds = %5590, %5581
  %5648 = phi float [ %5643, %5590 ], [ %5582, %5581 ]
  %5649 = phi float [ %5644, %5590 ], [ %5416, %5581 ]
  %5650 = phi float [ %5645, %5590 ], [ %5417, %5581 ]
  %5651 = phi float [ %5646, %5590 ], [ %5418, %5581 ]
  %5652 = phi float [ %5626, %5590 ], [ %5583, %5581 ]
  %5653 = phi float [ %5627, %5590 ], [ %5419, %5581 ]
  %5654 = phi float [ %5628, %5590 ], [ %5420, %5581 ]
  %5655 = phi float [ %5629, %5590 ], [ %5421, %5581 ]
  %5656 = phi float [ %5609, %5590 ], [ %5584, %5581 ]
  %5657 = phi float [ %5610, %5590 ], [ %5422, %5581 ]
  %5658 = phi float [ %5611, %5590 ], [ %5423, %5581 ]
  %5659 = phi float [ %5612, %5590 ], [ %5424, %5581 ]
  %5660 = extractvalue %dx.types.CBufRet.f32 %5234, 3
  %5661 = fmul fast float %5660, %5656
  %5662 = fmul fast float %5660, %5652
  %5663 = fmul fast float %5660, %5648
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 3
  %5666 = fmul fast float %5661, %5665
  %5667 = fmul fast float %5662, %5665
  %5668 = fmul fast float %5663, %5665
  %5669 = fmul fast float %5657, 1.500000e+00
  %5670 = fmul fast float %5669, %5660
  %5671 = fmul fast float %5670, %5665
  %5672 = fmul fast float %5658, 1.500000e+00
  %5673 = fmul fast float %5672, %5660
  %5674 = fmul fast float %5673, %5665
  %5675 = fmul fast float %5659, 1.500000e+00
  %5676 = fmul fast float %5675, %5660
  %5677 = fmul fast float %5676, %5665
  %5678 = fmul fast float %5653, 1.500000e+00
  %5679 = fmul fast float %5678, %5660
  %5680 = fmul fast float %5679, %5665
  %5681 = fmul fast float %5654, 1.500000e+00
  %5682 = fmul fast float %5681, %5660
  %5683 = fmul fast float %5682, %5665
  %5684 = fmul fast float %5655, 1.500000e+00
  %5685 = fmul fast float %5684, %5660
  %5686 = fmul fast float %5685, %5665
  %5687 = fmul fast float %5649, 1.500000e+00
  %5688 = fmul fast float %5687, %5660
  %5689 = fmul fast float %5688, %5665
  %5690 = fmul fast float %5650, 1.500000e+00
  %5691 = fmul fast float %5690, %5660
  %5692 = fmul fast float %5691, %5665
  %5693 = fmul fast float %5651, 1.500000e+00
  %5694 = fmul fast float %5693, %5660
  %5695 = fmul fast float %5694, %5665
  %5696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5666)  ; FMax(a,b)
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5674, float %5677, float %5671, float %5674, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = fcmp fast oeq float %5697, 0.000000e+00
  %5699 = fcmp fast oeq float %5696, 0.000000e+00
  %5700 = or i1 %5699, %5698
  br i1 %5700, label %5730, label %5701

; <label>:5701                                    ; preds = %5647
  %5702 = fsub fast float -0.000000e+00, %5677
  %5703 = fsub fast float -0.000000e+00, %5671
  %5704 = call float @dx.op.unary.f32(i32 24, float %5697)  ; Sqrt(value)
  %5705 = fdiv fast float %5704, %5696
  %5706 = fcmp fast ogt float %5705, 0x3FFB6F8900000000
  %5707 = select i1 %5706, float 0x3FFB6F8900000000, float %5705
  %5708 = fmul fast float %5707, 0x3FE8A23460000000
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = call float @dx.op.binary.f32(i32 35, float %5707, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5711 = fmul fast float %5709, %5696
  %5712 = fmul fast float %5710, 0x3FF279A740000000
  %5713 = fadd fast float %5712, -1.000000e+00
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5674, float %5702, float %5703, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = call float @dx.op.unary.f32(i32 25, float %5714)  ; Rsqrt(value)
  %5716 = fmul fast float %5715, %5702
  %5717 = fmul fast float %5715, %5703
  %5718 = fmul fast float %5715, %5674
  %5719 = fmul fast float %5713, %5713
  %5720 = fsub fast float 1.000000e+00, %5719
  %5721 = fmul fast float %5710, 0x40005F8BE0000000
  %5722 = fsub fast float 0x400C5BF8A0000000, %5721
  %5723 = fdiv fast float %5711, %5722
  %5724 = fmul fast float %5723, 0x3FEE31C3C0000000
  %5725 = fmul fast float %5724, %5720
  %5726 = fmul fast float %5710, 0x3FDACB7480000000
  %5727 = fadd fast float %5726, 0xBFD7347680000000
  %5728 = fmul fast float %5727, %5723
  %5729 = fmul fast float %5728, %5720
  br label %5730

; <label>:5730                                    ; preds = %5701, %5647
  %5731 = phi float [ %5716, %5701 ], [ 0.000000e+00, %5647 ]
  %5732 = phi float [ %5717, %5701 ], [ 0.000000e+00, %5647 ]
  %5733 = phi float [ %5718, %5701 ], [ 0.000000e+00, %5647 ]
  %5734 = phi float [ %5725, %5701 ], [ 0.000000e+00, %5647 ]
  %5735 = phi float [ %5729, %5701 ], [ 0.000000e+00, %5647 ]
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5731, float %5732, float %5733, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = fmul fast float %5736, %5736
  %5738 = fmul fast float %5737, 0x3FEE471020000000
  %5739 = fadd fast float %5738, 0xBFD42F6020000000
  %5740 = fmul fast float %5696, 0x3FD20DD760000000
  %5741 = fmul fast float %5739, %5735
  %5742 = fmul fast float %5734, 0x3FDF454380000000
  %5743 = fmul fast float %5742, %5736
  %5744 = fadd fast float %5743, %5740
  %5745 = fadd fast float %5744, %5741
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5731, float %5732, float %5733, float %4696, float %4697, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fmul fast float %5746, 0x3FDF454380000000
  %5748 = fmul fast float %5746, %5746
  %5749 = fmul fast float %5748, 0x3FEE471020000000
  %5750 = fadd fast float %5749, 0xBFD42F6020000000
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5734, float %5735, float 0x3FD20DD760000000, float %5747, float %5750)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5667)  ; FMax(a,b)
  %5753 = call float @dx.op.dot3.f32(i32 55, float %5680, float %5683, float %5686, float %5680, float %5683, float %5686)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = fcmp fast oeq float %5753, 0.000000e+00
  %5755 = fcmp fast oeq float %5752, 0.000000e+00
  %5756 = or i1 %5755, %5754
  br i1 %5756, label %5786, label %5757

; <label>:5757                                    ; preds = %5730
  %5758 = fsub fast float -0.000000e+00, %5686
  %5759 = fsub fast float -0.000000e+00, %5680
  %5760 = call float @dx.op.unary.f32(i32 24, float %5753)  ; Sqrt(value)
  %5761 = fdiv fast float %5760, %5752
  %5762 = fcmp fast ogt float %5761, 0x3FFB6F8900000000
  %5763 = select i1 %5762, float 0x3FFB6F8900000000, float %5761
  %5764 = fmul fast float %5763, 0x3FE8A23460000000
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5763, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5767 = fmul fast float %5765, %5752
  %5768 = fmul fast float %5766, 0x3FF279A740000000
  %5769 = fadd fast float %5768, -1.000000e+00
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %5683, float %5758, float %5759, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5771, %5758
  %5773 = fmul fast float %5771, %5759
  %5774 = fmul fast float %5771, %5683
  %5775 = fmul fast float %5769, %5769
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5766, 0x40005F8BE0000000
  %5778 = fsub fast float 0x400C5BF8A0000000, %5777
  %5779 = fdiv fast float %5767, %5778
  %5780 = fmul fast float %5779, 0x3FEE31C3C0000000
  %5781 = fmul fast float %5780, %5776
  %5782 = fmul fast float %5766, 0x3FDACB7480000000
  %5783 = fadd fast float %5782, 0xBFD7347680000000
  %5784 = fmul fast float %5783, %5779
  %5785 = fmul fast float %5784, %5776
  br label %5786

; <label>:5786                                    ; preds = %5757, %5730
  %5787 = phi float [ %5772, %5757 ], [ 0.000000e+00, %5730 ]
  %5788 = phi float [ %5773, %5757 ], [ 0.000000e+00, %5730 ]
  %5789 = phi float [ %5774, %5757 ], [ 0.000000e+00, %5730 ]
  %5790 = phi float [ %5781, %5757 ], [ 0.000000e+00, %5730 ]
  %5791 = phi float [ %5785, %5757 ], [ 0.000000e+00, %5730 ]
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fmul fast float %5792, %5792
  %5794 = fmul fast float %5793, 0x3FEE471020000000
  %5795 = fadd fast float %5794, 0xBFD42F6020000000
  %5796 = fmul fast float %5752, 0x3FD20DD760000000
  %5797 = fmul fast float %5795, %5791
  %5798 = fmul fast float %5790, 0x3FDF454380000000
  %5799 = fmul fast float %5798, %5792
  %5800 = fadd fast float %5799, %5796
  %5801 = fadd fast float %5800, %5797
  %5802 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %4696, float %4697, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fmul fast float %5802, 0x3FDF454380000000
  %5804 = fmul fast float %5802, %5802
  %5805 = fmul fast float %5804, 0x3FEE471020000000
  %5806 = fadd fast float %5805, 0xBFD42F6020000000
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5790, float %5791, float 0x3FD20DD760000000, float %5803, float %5806)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5668)  ; FMax(a,b)
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5692, float %5695, float %5689, float %5692, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = fcmp fast oeq float %5809, 0.000000e+00
  %5811 = fcmp fast oeq float %5808, 0.000000e+00
  %5812 = or i1 %5811, %5810
  br i1 %5812, label %5842, label %5813

; <label>:5813                                    ; preds = %5786
  %5814 = fsub fast float -0.000000e+00, %5695
  %5815 = fsub fast float -0.000000e+00, %5689
  %5816 = call float @dx.op.unary.f32(i32 24, float %5809)  ; Sqrt(value)
  %5817 = fdiv fast float %5816, %5808
  %5818 = fcmp fast ogt float %5817, 0x3FFB6F8900000000
  %5819 = select i1 %5818, float 0x3FFB6F8900000000, float %5817
  %5820 = fmul fast float %5819, 0x3FE8A23460000000
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5819, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5823 = fmul fast float %5821, %5808
  %5824 = fmul fast float %5822, 0x3FF279A740000000
  %5825 = fadd fast float %5824, -1.000000e+00
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %5692, float %5814, float %5815, float %5692)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = call float @dx.op.unary.f32(i32 25, float %5826)  ; Rsqrt(value)
  %5828 = fmul fast float %5827, %5814
  %5829 = fmul fast float %5827, %5815
  %5830 = fmul fast float %5827, %5692
  %5831 = fmul fast float %5825, %5825
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = fmul fast float %5822, 0x40005F8BE0000000
  %5834 = fsub fast float 0x400C5BF8A0000000, %5833
  %5835 = fdiv fast float %5823, %5834
  %5836 = fmul fast float %5835, 0x3FEE31C3C0000000
  %5837 = fmul fast float %5836, %5832
  %5838 = fmul fast float %5822, 0x3FDACB7480000000
  %5839 = fadd fast float %5838, 0xBFD7347680000000
  %5840 = fmul fast float %5839, %5835
  %5841 = fmul fast float %5840, %5832
  br label %5842

; <label>:5842                                    ; preds = %5813, %5786
  %5843 = phi float [ %5828, %5813 ], [ 0.000000e+00, %5786 ]
  %5844 = phi float [ %5829, %5813 ], [ 0.000000e+00, %5786 ]
  %5845 = phi float [ %5830, %5813 ], [ 0.000000e+00, %5786 ]
  %5846 = phi float [ %5837, %5813 ], [ 0.000000e+00, %5786 ]
  %5847 = phi float [ %5841, %5813 ], [ 0.000000e+00, %5786 ]
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, %5848
  %5850 = fmul fast float %5849, 0x3FEE471020000000
  %5851 = fadd fast float %5850, 0xBFD42F6020000000
  %5852 = fmul fast float %5808, 0x3FD20DD760000000
  %5853 = fmul fast float %5851, %5847
  %5854 = fmul fast float %5846, 0x3FDF454380000000
  %5855 = fmul fast float %5854, %5848
  %5856 = fadd fast float %5855, %5852
  %5857 = fadd fast float %5856, %5853
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %4696, float %4697, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = fmul fast float %5858, 0x3FDF454380000000
  %5860 = fmul fast float %5858, %5858
  %5861 = fmul fast float %5860, 0x3FEE471020000000
  %5862 = fadd fast float %5861, 0xBFD42F6020000000
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5846, float %5847, float 0x3FD20DD760000000, float %5859, float %5862)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.binary.f32(i32 35, float %5745, float 0.000000e+00)  ; FMax(a,b)
  %5865 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5866 = call float @dx.op.binary.f32(i32 35, float %5857, float 0.000000e+00)  ; FMax(a,b)
  %5867 = call float @dx.op.binary.f32(i32 35, float %5751, float 0.000000e+00)  ; FMax(a,b)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5807, float 0.000000e+00)  ; FMax(a,b)
  %5869 = call float @dx.op.binary.f32(i32 35, float %5863, float 0.000000e+00)  ; FMax(a,b)
  %5870 = fsub fast float %5066, %5864
  %5871 = fsub fast float %5067, %5865
  %5872 = fsub fast float %5068, %5866
  %5873 = fmul fast float %5870, %4747
  %5874 = fmul fast float %5871, %4747
  %5875 = fmul fast float %5872, %4747
  %5876 = fadd fast float %5873, %5864
  %5877 = fadd fast float %5874, %5865
  %5878 = fadd fast float %5875, %5866
  %5879 = fsub fast float %5063, %5867
  %5880 = fsub fast float %5064, %5868
  %5881 = fsub fast float %5065, %5869
  %5882 = fmul fast float %5879, %4747
  %5883 = fmul fast float %5880, %4747
  %5884 = fmul fast float %5881, %4747
  %5885 = fadd fast float %5882, %5867
  %5886 = fadd fast float %5883, %5868
  %5887 = fadd fast float %5884, %5869
  br label %5888

; <label>:5888                                    ; preds = %5842, %5062
  %5889 = phi float [ %5885, %5842 ], [ %5063, %5062 ]
  %5890 = phi float [ %5886, %5842 ], [ %5064, %5062 ]
  %5891 = phi float [ %5887, %5842 ], [ %5065, %5062 ]
  %5892 = phi float [ %5876, %5842 ], [ %5066, %5062 ]
  %5893 = phi float [ %5877, %5842 ], [ %5067, %5062 ]
  %5894 = phi float [ %5878, %5842 ], [ %5068, %5062 ]
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5897 = call float @dx.op.binary.f32(i32 36, float %4683, float %5896)  ; FMin(a,b)
  %5898 = fsub fast float 1.000000e+00, %4699
  %5899 = fmul fast float %5897, %5898
  %5900 = fsub fast float 1.000000e+00, %5899
  %5901 = bitcast float %5900 to i32
  %5902 = sub nsw i32 2129859010, %5901
  %5903 = bitcast i32 %5902 to float
  %5904 = call float @dx.op.binary.f32(i32 36, float %4684, float %5896)  ; FMin(a,b)
  %5905 = fmul fast float %5904, %5898
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = bitcast float %5906 to i32
  %5908 = sub nsw i32 2129859010, %5907
  %5909 = bitcast i32 %5908 to float
  %5910 = call float @dx.op.binary.f32(i32 36, float %4685, float %5896)  ; FMin(a,b)
  %5911 = fmul fast float %5910, %5898
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = bitcast float %5912 to i32
  %5914 = sub nsw i32 2129859010, %5913
  %5915 = bitcast i32 %5914 to float
  %5916 = fmul fast float %5892, %4699
  %5917 = fmul fast float %5916, %5903
  %5918 = fmul fast float %5893, %4699
  %5919 = fmul fast float %5918, %5909
  %5920 = fmul fast float %5894, %4699
  %5921 = fmul fast float %5920, %5915
  %5922 = call float @dx.op.binary.f32(i32 36, float %4677, float %5896)  ; FMin(a,b)
  %5923 = fmul fast float %5922, %5898
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = bitcast float %5924 to i32
  %5926 = sub nsw i32 2129859010, %5925
  %5927 = bitcast i32 %5926 to float
  %5928 = call float @dx.op.binary.f32(i32 36, float %4678, float %5896)  ; FMin(a,b)
  %5929 = fmul fast float %5928, %5898
  %5930 = fsub fast float 1.000000e+00, %5929
  %5931 = bitcast float %5930 to i32
  %5932 = sub nsw i32 2129859010, %5931
  %5933 = bitcast i32 %5932 to float
  %5934 = call float @dx.op.binary.f32(i32 36, float %4688, float %5896)  ; FMin(a,b)
  %5935 = fmul fast float %5934, %5898
  %5936 = fsub fast float 1.000000e+00, %5935
  %5937 = bitcast float %5936 to i32
  %5938 = sub nsw i32 2129859010, %5937
  %5939 = bitcast i32 %5938 to float
  %5940 = fmul fast float %5889, %4699
  %5941 = fmul fast float %5940, %5927
  %5942 = fmul fast float %5890, %4699
  %5943 = fmul fast float %5942, %5933
  %5944 = fmul fast float %5891, %4699
  %5945 = fmul fast float %5944, %5939
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5917, float %5919, float %5921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = select i1 %203, float 0.000000e+00, float %5917
  %5948 = select i1 %203, float %5946, float %5919
  %5949 = select i1 %203, float 0.000000e+00, float %5921
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5941, float %5943, float %5945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = select i1 %203, float 0.000000e+00, float %5941
  %5952 = select i1 %203, float %5950, float %5943
  %5953 = select i1 %203, float 0.000000e+00, float %5945
  %5954 = fmul fast float %4690, 9.843750e-01
  %5955 = fmul fast float %4686, 9.843750e-01
  %5956 = fadd fast float %5954, 7.812500e-03
  %5957 = fadd fast float %5955, 7.812500e-03
  %5958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5956, float %5957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 3
  %5961 = fmul fast float %5959, %4677
  %5962 = fmul fast float %5959, %4678
  %5963 = fmul fast float %5959, %4688
  %5964 = fadd fast float %5961, %5960
  %5965 = fadd fast float %5962, %5960
  %5966 = fadd fast float %5963, %5960
  %5967 = fcmp fast ogt float %4054, 0.000000e+00
  br i1 %5967, label %5968, label %5994

; <label>:5968                                    ; preds = %5888
  %5969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4054, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5973 = fadd fast float %5970, -5.000000e-01
  %5974 = fadd fast float %5971, -5.000000e-01
  %5975 = fadd fast float %5972, -5.000000e-01
  %5976 = fsub fast float 1.000000e+00, %4677
  %5977 = fsub fast float 1.000000e+00, %4678
  %5978 = fsub fast float 1.000000e+00, %4688
  %5979 = fmul fast float %4677, 4.000000e+00
  %5980 = fmul fast float %5979, %5976
  %5981 = fmul fast float %5980, %5973
  %5982 = fmul fast float %4678, 4.000000e+00
  %5983 = fmul fast float %5982, %5977
  %5984 = fmul fast float %5983, %5974
  %5985 = fmul fast float %4688, 4.000000e+00
  %5986 = fmul fast float %5985, %5978
  %5987 = fmul fast float %5986, %5975
  %5988 = fadd fast float %5981, %5964
  %5989 = fadd fast float %5984, %5965
  %5990 = fadd fast float %5987, %5966
  %5991 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5992 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5993 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  br label %5994

; <label>:5994                                    ; preds = %5968, %5888
  %5995 = phi float [ %5991, %5968 ], [ %5964, %5888 ]
  %5996 = phi float [ %5992, %5968 ], [ %5965, %5888 ]
  %5997 = phi float [ %5993, %5968 ], [ %5966, %5888 ]
  %5998 = call float @dx.op.binary.f32(i32 35, float %5996, float %5997)  ; FMax(a,b)
  %5999 = call float @dx.op.binary.f32(i32 35, float %5995, float %5998)  ; FMax(a,b)
  %6000 = fsub fast float 1.000000e+00, %5999
  %6001 = fmul fast float %6000, %5947
  %6002 = fmul fast float %6000, %5948
  %6003 = fmul fast float %6000, %5949
  %6004 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = fcmp fast ogt float %6004, 0x3E7FF19E20000000
  %6006 = fdiv fast float 1.000000e+00, %6004
  %6007 = select i1 %6005, float %6006, float 0.000000e+00
  %6008 = fmul fast float %6007, %4683
  %6009 = fmul fast float %6007, %4684
  %6010 = fmul fast float %6007, %4685
  %6011 = fadd fast float %6008, -1.000000e+00
  %6012 = fadd fast float %6009, -1.000000e+00
  %6013 = fadd fast float %6010, -1.000000e+00
  %6014 = fmul fast float %6011, 5.000000e-01
  %6015 = fmul fast float %6012, 5.000000e-01
  %6016 = fmul fast float %6013, 5.000000e-01
  %6017 = fadd fast float %6014, 1.000000e+00
  %6018 = fadd fast float %6015, 1.000000e+00
  %6019 = fadd fast float %6016, 1.000000e+00
  %6020 = fmul fast float %5995, %5951
  %6021 = fmul fast float %5996, %5952
  %6022 = fmul fast float %5997, %5953
  %6023 = fsub fast float 1.000000e+00, %4690
  %6024 = bitcast float %6023 to i32
  %6025 = sitofp i32 %6024 to float
  %6026 = fmul fast float %6025, 5.000000e+00
  %6027 = fadd fast float %6026, 0xC1EFBF8940000000
  %6028 = fptosi float %6027 to i32
  %6029 = bitcast i32 %6028 to float
  %6030 = fmul fast float %6029, %4053
  %6031 = fmul fast float %5947, %6030
  %6032 = fmul fast float %6031, %6000
  %6033 = fmul fast float %6032, %6017
  %6034 = fmul fast float %5948, %6030
  %6035 = fmul fast float %6034, %6000
  %6036 = fmul fast float %6035, %6018
  %6037 = fmul fast float %5949, %6030
  %6038 = fmul fast float %6037, %6000
  %6039 = fmul fast float %6038, %6019
  %6040 = fmul fast float %6001, %4074
  %6041 = fmul fast float %6002, %4074
  %6042 = fmul fast float %6003, %4074
  %6043 = fadd fast float %6020, %4055
  %6044 = fadd fast float %6043, %6033
  %6045 = fmul fast float %6044, %4074
  %6046 = fadd fast float %6021, %4056
  %6047 = fadd fast float %6046, %6036
  %6048 = fmul fast float %6047, %4074
  %6049 = fadd fast float %6022, %4057
  %6050 = fadd fast float %6049, %6039
  %6051 = fmul fast float %6050, %4074
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 3
  %6054 = fcmp fast oeq float %6053, 0.000000e+00
  br i1 %6054, label %6283, label %6055

; <label>:6055                                    ; preds = %5994
  %6056 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6057 = extractvalue %dx.types.CBufRet.f32 %6052, 1
  %6058 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.CBufRet.f32 %6059, 2
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6066 = call float @dx.op.dot3.f32(i32 55, float %6060, float %6061, float %6062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = select i1 %203, float %6064, float %6060
  %6068 = select i1 %203, float %6066, float %6061
  %6069 = select i1 %203, float %6065, float %6062
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6072 = fcmp fast une float %6071, 0.000000e+00
  br i1 %6072, label %6073, label %6090

; <label>:6073                                    ; preds = %6055
  %6074 = fptoui float %85 to i32
  %6075 = fptoui float %86 to i32
  %6076 = lshr i32 %6074, 4
  %6077 = lshr i32 %6075, 4
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 0
  %6080 = fptoui float %6079 to i32
  %6081 = add i32 %6080, 15
  %6082 = lshr i32 %6081, 4
  %6083 = mul i32 %6082, %6077
  %6084 = add i32 %6083, %6076
  %6085 = shl i32 %6084, 3
  %6086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %6085, i32 undef)  ; BufferLoad(srv,index,wot)
  %6087 = extractvalue %dx.types.ResRet.i32 %6086, 0
  %6088 = and i32 %6087, -268435456
  %6089 = icmp eq i32 %6088, -1342177280
  br i1 %6089, label %6100, label %6090

; <label>:6090                                    ; preds = %6073, %6055
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 3
  %6094 = fmul fast float %6092, %85
  %6095 = fmul fast float %6093, %86
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %6094, float %6095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  br label %6100

; <label>:6100                                    ; preds = %6090, %6073
  %6101 = phi float [ %6097, %6090 ], [ 0.000000e+00, %6073 ]
  %6102 = phi float [ %6098, %6090 ], [ 0.000000e+00, %6073 ]
  %6103 = phi float [ %6099, %6090 ], [ 0.000000e+00, %6073 ]
  %6104 = call float @dx.op.binary.f32(i32 36, float %6102, float %6103)  ; FMin(a,b)
  %6105 = call float @dx.op.binary.f32(i32 36, float %6101, float %6104)  ; FMin(a,b)
  %6106 = fcmp fast ogt float %6105, 0.000000e+00
  br i1 %6106, label %6107, label %6283, !dx.controlflow.hints !93

; <label>:6107                                    ; preds = %6100
  %6108 = fmul fast float %6101, %6067
  %6109 = fmul fast float %6102, %6068
  %6110 = fmul fast float %6103, %6069
  %6111 = fsub fast float %6056, %4676
  %6112 = fsub fast float %6057, %4675
  %6113 = fsub fast float %6058, %4674
  %6114 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6112, float %6113, float %6111, float %6112, float %6113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6115 = call float @dx.op.unary.f32(i32 25, float %6114)  ; Rsqrt(value)
  %6116 = fmul fast float %6115, %6111
  %6117 = fmul fast float %6115, %6112
  %6118 = fmul fast float %6115, %6113
  %6119 = call float @dx.op.dot3.f32(i32 55, float %6056, float %6057, float %6058, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4672, float %4671, float %6116, float %6117, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6122 = bitcast i32 %4702 to float
  %6123 = fmul fast float %6121, %6121
  %6124 = fmul fast float %6123, %6122
  %6125 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6126 = fmul fast float %6125, %6121
  %6127 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %6116, float %6117, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = fmul fast float %6127, %6127
  %6129 = call float @dx.op.unary.f32(i32 6, float %6119)  ; FAbs(value)
  %6130 = fsub fast float 1.000000e+00, %4686
  %6131 = call float @dx.op.binary.f32(i32 35, float %6130, float 0x3F847AE140000000)  ; FMax(a,b)
  %6132 = fmul fast float %6131, %6131
  %6133 = fmul fast float %6132, %6132
  %6134 = fsub fast float 1.000000e+00, %6133
  %6135 = fmul fast float %4690, %4690
  %6136 = fmul fast float %6135, %6134
  %6137 = fadd fast float %6136, %6133
  %6138 = bitcast float %6137 to i32
  %6139 = ashr i32 %6138, 1
  %6140 = add nsw i32 %6139, 532487669
  %6141 = bitcast i32 %6140 to float
  %6142 = fadd fast float %6141, %4690
  %6143 = fmul fast float %6133, %6128
  %6144 = fsub fast float 1.000000e+00, %6128
  %6145 = fadd fast float %6144, %6143
  %6146 = fmul fast float %6129, %6129
  %6147 = fmul fast float %6146, %6134
  %6148 = fadd fast float %6147, %6133
  %6149 = bitcast float %6148 to i32
  %6150 = ashr i32 %6149, 1
  %6151 = add nsw i32 %6150, 532487669
  %6152 = bitcast i32 %6151 to float
  %6153 = fadd fast float %6152, %6129
  %6154 = fmul fast float %6145, %6145
  %6155 = fmul fast float %6154, %6142
  %6156 = fmul fast float %6155, %6153
  %6157 = fdiv fast float 0x3FF0A00000000000, %6156
  %6158 = fmul fast float %6157, %6133
  %6159 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6160 = fsub fast float 1.000000e+00, %6159
  %6161 = bitcast float %6160 to i32
  %6162 = sitofp i32 %6161 to float
  %6163 = fmul fast float %6162, 5.000000e+00
  %6164 = fadd fast float %6163, 0xC1EFBF8940000000
  %6165 = fptosi float %6164 to i32
  %6166 = bitcast i32 %6165 to float
  %6167 = fsub fast float 1.000000e+00, %4677
  %6168 = fsub fast float 1.000000e+00, %4678
  %6169 = fsub fast float 1.000000e+00, %4688
  %6170 = fmul fast float %6166, %6167
  %6171 = fmul fast float %6166, %6168
  %6172 = fmul fast float %6166, %6169
  %6173 = fadd fast float %6170, %4677
  %6174 = fadd fast float %6171, %4678
  %6175 = fadd fast float %6172, %4688
  br i1 %5967, label %6176, label %6199

; <label>:6176                                    ; preds = %6107
  %6177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4054, float %6159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6178 = extractvalue %dx.types.ResRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.ResRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.ResRet.f32 %6177, 2
  %6181 = fadd fast float %6178, -5.000000e-01
  %6182 = fadd fast float %6179, -5.000000e-01
  %6183 = fadd fast float %6180, -5.000000e-01
  %6184 = fmul fast float %4677, 4.000000e+00
  %6185 = fmul fast float %6184, %6167
  %6186 = fmul fast float %6185, %6181
  %6187 = fmul fast float %4678, 4.000000e+00
  %6188 = fmul fast float %6187, %6168
  %6189 = fmul fast float %6188, %6182
  %6190 = fmul fast float %4688, 4.000000e+00
  %6191 = fmul fast float %6190, %6169
  %6192 = fmul fast float %6191, %6183
  %6193 = fadd fast float %6186, %6173
  %6194 = fadd fast float %6189, %6174
  %6195 = fadd fast float %6192, %6175
  %6196 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6197 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6198 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  br label %6199

; <label>:6199                                    ; preds = %6176, %6107
  %6200 = phi float [ %6196, %6176 ], [ %6173, %6107 ]
  %6201 = phi float [ %6197, %6176 ], [ %6174, %6107 ]
  %6202 = phi float [ %6198, %6176 ], [ %6175, %6107 ]
  %6203 = fmul fast float %6119, 9.843750e-01
  %6204 = fadd fast float %6203, 7.812500e-03
  %6205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6204, float %5957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6206 = extractvalue %dx.types.ResRet.f32 %6205, 2
  %6207 = extractvalue %dx.types.ResRet.f32 %6205, 3
  %6208 = fmul fast float %6206, %4677
  %6209 = fmul fast float %6206, %4678
  %6210 = fmul fast float %6206, %4688
  %6211 = fadd fast float %6208, %6207
  %6212 = fadd fast float %6209, %6207
  %6213 = fadd fast float %6210, %6207
  br i1 %5967, label %6214, label %6237

; <label>:6214                                    ; preds = %6199
  %6215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4054, float %6119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6219 = fadd fast float %6216, -5.000000e-01
  %6220 = fadd fast float %6217, -5.000000e-01
  %6221 = fadd fast float %6218, -5.000000e-01
  %6222 = fmul fast float %4677, 4.000000e+00
  %6223 = fmul fast float %6222, %6167
  %6224 = fmul fast float %6223, %6219
  %6225 = fmul fast float %4678, 4.000000e+00
  %6226 = fmul fast float %6225, %6168
  %6227 = fmul fast float %6226, %6220
  %6228 = fmul fast float %4688, 4.000000e+00
  %6229 = fmul fast float %6228, %6169
  %6230 = fmul fast float %6229, %6221
  %6231 = fadd fast float %6224, %6211
  %6232 = fadd fast float %6227, %6212
  %6233 = fadd fast float %6230, %6213
  %6234 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6235 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6236 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  br label %6237

; <label>:6237                                    ; preds = %6214, %6199
  %6238 = phi float [ %6234, %6214 ], [ %6211, %6199 ]
  %6239 = phi float [ %6235, %6214 ], [ %6212, %6199 ]
  %6240 = phi float [ %6236, %6214 ], [ %6213, %6199 ]
  %6241 = call float @dx.op.binary.f32(i32 35, float %6239, float %6240)  ; FMax(a,b)
  %6242 = call float @dx.op.binary.f32(i32 35, float %6238, float %6241)  ; FMax(a,b)
  %6243 = fsub fast float 1.000000e+00, %6242
  %6244 = fmul fast float %6200, %6158
  %6245 = fmul fast float %6201, %6158
  %6246 = fmul fast float %6202, %6158
  %6247 = fsub fast float 1.000000e+00, %6120
  %6248 = bitcast float %6247 to i32
  %6249 = sitofp i32 %6248 to float
  %6250 = fmul fast float %6249, 5.000000e+00
  %6251 = fadd fast float %6250, 0xC1EFBF8940000000
  %6252 = fptosi float %6251 to i32
  %6253 = bitcast i32 %6252 to float
  %6254 = fmul fast float %6253, %4053
  %6255 = fmul fast float %6243, %6254
  %6256 = fmul fast float %6255, %6017
  %6257 = fmul fast float %6255, %6018
  %6258 = fmul fast float %6255, %6019
  %6259 = fadd fast float %6256, %6244
  %6260 = fadd fast float %6257, %6245
  %6261 = fadd fast float %6258, %6246
  %6262 = fmul fast float %6126, %6108
  %6263 = fmul fast float %6262, %6243
  %6264 = fmul fast float %6126, %6109
  %6265 = fmul fast float %6264, %6243
  %6266 = fmul fast float %6126, %6110
  %6267 = fmul fast float %6266, %6243
  %6268 = fmul fast float %6262, %6259
  %6269 = fmul fast float %6264, %6260
  %6270 = fmul fast float %6266, %6261
  %6271 = fadd fast float %6263, %6001
  %6272 = fmul fast float %6271, %4074
  %6273 = fadd fast float %6265, %6002
  %6274 = fmul fast float %6273, %4074
  %6275 = fadd fast float %6267, %6003
  %6276 = fmul fast float %6275, %4074
  %6277 = fadd fast float %6268, %6044
  %6278 = fmul fast float %6277, %4074
  %6279 = fadd fast float %6269, %6047
  %6280 = fmul fast float %6279, %4074
  %6281 = fadd fast float %6270, %6050
  %6282 = fmul fast float %6281, %4074
  br label %6283

; <label>:6283                                    ; preds = %6237, %6100, %5994
  %6284 = phi float [ %6045, %5994 ], [ %6045, %6100 ], [ %6278, %6237 ]
  %6285 = phi float [ %6048, %5994 ], [ %6048, %6100 ], [ %6280, %6237 ]
  %6286 = phi float [ %6051, %5994 ], [ %6051, %6100 ], [ %6282, %6237 ]
  %6287 = phi float [ %6040, %5994 ], [ %6040, %6100 ], [ %6272, %6237 ]
  %6288 = phi float [ %6041, %5994 ], [ %6041, %6100 ], [ %6274, %6237 ]
  %6289 = phi float [ %6042, %5994 ], [ %6042, %6100 ], [ %6276, %6237 ]
  %6290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.i32 %6290, 0
  %6292 = icmp eq i32 %6291, 0
  br i1 %6292, label %6728, label %6293

; <label>:6293                                    ; preds = %6283
  %6294 = fptoui float %85 to i32
  %6295 = fptoui float %86 to i32
  %6296 = lshr i32 %6294, 4
  %6297 = lshr i32 %6295, 4
  %6298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.i32 %6298, 0
  %6300 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6297, i32 %6299, i32 %6296)  ; UMad(a,b,c)
  %6301 = add nsw i32 %6291, -1
  %6302 = call i32 @dx.op.binary.i32(i32 37, i32 %6301, i32 0)  ; IMax(a,b)
  %6303 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6304 = fptoui float %6303 to i32
  %6305 = lshr i32 %6304, 5
  %6306 = call i32 @dx.op.binary.i32(i32 40, i32 %6305, i32 8191)  ; UMin(a,b)
  %6307 = shl i32 %6306, 2
  %6308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6307, i32 undef)  ; BufferLoad(srv,index,wot)
  %6309 = extractvalue %dx.types.ResRet.i32 %6308, 0
  %6310 = lshr i32 %6309, 16
  %6311 = and i32 %6309, 65535
  %6312 = lshr i32 %6309, 21
  %6313 = lshr i32 %6311, 5
  %6314 = call i32 @dx.op.binary.i32(i32 40, i32 %6313, i32 %6302)  ; UMin(a,b)
  %6315 = icmp ugt i32 %6312, %6314
  br i1 %6315, label %6728, label %6316

; <label>:6316                                    ; preds = %6293
  br label %6317

; <label>:6317                                    ; preds = %6718, %6316
  %6318 = phi i32 [ %6725, %6718 ], [ %6312, %6316 ]
  %6319 = phi float [ %6719, %6718 ], [ %6284, %6316 ]
  %6320 = phi float [ %6720, %6718 ], [ %6285, %6316 ]
  %6321 = phi float [ %6721, %6718 ], [ %6286, %6316 ]
  %6322 = phi float [ %6722, %6718 ], [ %6287, %6316 ]
  %6323 = phi float [ %6723, %6718 ], [ %6288, %6316 ]
  %6324 = phi float [ %6724, %6718 ], [ %6289, %6316 ]
  %6325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.i32 %6325, 0
  %6327 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6300, i32 %6326, i32 %6318)  ; UMad(a,b,c)
  %6328 = shl i32 %6327, 2
  %6329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6328, i32 undef)  ; BufferLoad(srv,index,wot)
  %6330 = extractvalue %dx.types.ResRet.i32 %6329, 0
  %6331 = shl i32 %6318, 5
  %6332 = sub nsw i32 %6310, %6331
  %6333 = call i32 @dx.op.binary.i32(i32 37, i32 %6332, i32 0)  ; IMax(a,b)
  %6334 = call i32 @dx.op.binary.i32(i32 38, i32 %6333, i32 31)  ; IMin(a,b)
  %6335 = sub nsw i32 1, %6310
  %6336 = add nsw i32 %6335, %6311
  %6337 = call i32 @dx.op.binary.i32(i32 37, i32 %6336, i32 0)  ; IMax(a,b)
  %6338 = call i32 @dx.op.binary.i32(i32 38, i32 %6337, i32 32)  ; IMin(a,b)
  %6339 = and i32 %6338, 31
  %6340 = shl i32 -1, %6339
  %6341 = xor i32 %6340, -1
  %6342 = and i32 %6334, 31
  %6343 = shl i32 %6341, %6342
  %6344 = icmp eq i32 %6338, 32
  %6345 = select i1 %6344, i32 -1, i32 %6343
  %6346 = and i32 %6345, %6330
  %6347 = icmp eq i32 %6346, 0
  br i1 %6347, label %6718, label %6348

; <label>:6348                                    ; preds = %6317
  br label %6349

; <label>:6349                                    ; preds = %6429, %6348
  %6350 = phi i32 [ %6361, %6429 ], [ %6346, %6348 ]
  %6351 = phi float [ %6430, %6429 ], [ %6319, %6348 ]
  %6352 = phi float [ %6431, %6429 ], [ %6320, %6348 ]
  %6353 = phi float [ %6432, %6429 ], [ %6321, %6348 ]
  %6354 = phi float [ %6433, %6429 ], [ %6322, %6348 ]
  %6355 = phi float [ %6434, %6429 ], [ %6323, %6348 ]
  %6356 = phi float [ %6435, %6429 ], [ %6324, %6348 ]
  %6357 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6350)  ; FirstbitLo(value)
  %6358 = add i32 %6357, %6331
  %6359 = and i32 %6357, 31
  %6360 = shl i32 1, %6359
  %6361 = xor i32 %6360, %6350
  %6362 = mul i32 %6358, 112
  %6363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6362, i32 undef)  ; BufferLoad(srv,index,wot)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.ResRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.ResRet.f32 %6363, 2
  %6367 = or i32 %6362, 12
  %6368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6367, i32 undef)  ; BufferLoad(srv,index,wot)
  %6369 = extractvalue %dx.types.ResRet.f32 %6368, 0
  %6370 = add i32 %6362, 44
  %6371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6370, i32 undef)  ; BufferLoad(srv,index,wot)
  %6372 = extractvalue %dx.types.ResRet.f32 %6371, 0
  %6373 = add i32 %6362, 48
  %6374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6373, i32 undef)  ; BufferLoad(srv,index,wot)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  %6376 = extractvalue %dx.types.ResRet.f32 %6374, 1
  %6377 = extractvalue %dx.types.ResRet.f32 %6374, 2
  %6378 = add i32 %6362, 80
  %6379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6378, i32 undef)  ; BufferLoad(srv,index,wot)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6381 = extractvalue %dx.types.ResRet.f32 %6379, 2
  %6382 = call float @dx.op.dot3.f32(i32 55, float %6364, float %6365, float %6366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6383 = select i1 %203, float %6380, float %6364
  %6384 = select i1 %203, float %6382, float %6365
  %6385 = select i1 %203, float %6381, float %6366
  %6386 = fsub fast float %6375, %132
  %6387 = fsub fast float %6376, %133
  %6388 = fsub fast float %6377, %134
  %6389 = call float @dx.op.dot3.f32(i32 55, float %6386, float %6387, float %6388, float %6386, float %6387, float %6388)  ; Dot3(ax,ay,az,bx,by,bz)
  %6390 = call float @dx.op.unary.f32(i32 24, float %6389)  ; Sqrt(value)
  %6391 = fdiv fast float 1.000000e+00, %6390
  %6392 = fmul fast float %6391, %6386
  %6393 = fmul fast float %6391, %6387
  %6394 = fmul fast float %6391, %6388
  %6395 = fadd fast float %6390, %6369
  %6396 = fdiv fast float 1.000000e+00, %6395
  %6397 = fmul float %6372, %6396
  %6398 = fmul float %6397, %6397
  %6399 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  %6400 = and i32 %6360, %6346
  %6401 = icmp eq i32 %6400, 0
  br i1 %6401, label %6424, label %6402, !dx.controlflow.hints !94

; <label>:6402                                    ; preds = %6349
  %6403 = lshr i32 %6294, 5
  %6404 = lshr i32 %6295, 5
  %6405 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %6403, i32 %6404, i32 %6358, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6406 = extractvalue %dx.types.ResRet.i32 %6405, 0
  %6407 = and i32 %6406, 3
  %6408 = icmp eq i32 %6407, 0
  %6409 = select i1 %6408, float 1.000000e+00, float 0.000000e+00
  %6410 = icmp eq i32 %6407, 3
  br i1 %6410, label %6411, label %6424

; <label>:6411                                    ; preds = %6402
  %6412 = lshr i32 %6406, 10
  %6413 = and i32 %6412, 8160
  %6414 = and i32 %6295, 31
  %6415 = or i32 %6413, %6414
  %6416 = lshr i32 %6406, 1
  %6417 = and i32 %6416, 16352
  %6418 = and i32 %6294, 31
  %6419 = or i32 %6417, %6418
  %6420 = lshr i32 %6406, 23
  %6421 = and i32 %6420, 255
  %6422 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %6419, i32 %6415, i32 %6421, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6423 = extractvalue %dx.types.ResRet.f32 %6422, 0
  br label %6424

; <label>:6424                                    ; preds = %6411, %6402, %6349
  %6425 = phi float [ %6423, %6411 ], [ %6409, %6402 ], [ 0.000000e+00, %6349 ]
  %6426 = call float @dx.op.binary.f32(i32 36, float %6425, float %6425)  ; FMin(a,b)
  %6427 = call float @dx.op.binary.f32(i32 36, float %6425, float %6426)  ; FMin(a,b)
  %6428 = fcmp fast ogt float %6427, 0.000000e+00
  br i1 %6428, label %6437, label %6429, !dx.controlflow.hints !95

; <label>:6429                                    ; preds = %6674, %6424
  %6430 = phi float [ %6351, %6424 ], [ %6714, %6674 ]
  %6431 = phi float [ %6352, %6424 ], [ %6715, %6674 ]
  %6432 = phi float [ %6353, %6424 ], [ %6716, %6674 ]
  %6433 = phi float [ %6354, %6424 ], [ %6708, %6674 ]
  %6434 = phi float [ %6355, %6424 ], [ %6709, %6674 ]
  %6435 = phi float [ %6356, %6424 ], [ %6710, %6674 ]
  %6436 = icmp eq i32 %6350, %6360
  br i1 %6436, label %6717, label %6349

; <label>:6437                                    ; preds = %6424
  %6438 = fmul fast float %6425, %6383
  %6439 = fmul fast float %6425, %6384
  %6440 = fmul fast float %6425, %6385
  %6441 = fsub fast float %6377, %4476
  %6442 = fcmp fast ogt float %6441, 0.000000e+00
  %6443 = fsub fast float %134, %4476
  %6444 = fcmp fast ogt float %6443, 0.000000e+00
  %6445 = xor i1 %6444, %6442
  %6446 = fsub fast float %4476, %6377
  %6447 = fmul fast float %6446, 2.000000e+00
  %6448 = fadd fast float %6447, %6377
  %6449 = select i1 %6445, float %6377, float %6448
  %6450 = fsub fast float %6449, %134
  %6451 = call float @dx.op.dot3.f32(i32 55, float %6386, float %6387, float %6450, float %6386, float %6387, float %6450)  ; Dot3(ax,ay,az,bx,by,bz)
  %6452 = call float @dx.op.unary.f32(i32 25, float %6451)  ; Rsqrt(value)
  %6453 = fmul fast float %6452, %6386
  %6454 = fmul fast float %6452, %6387
  %6455 = fmul fast float %6452, %6450
  %6456 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4484)  ; Dot3(ax,ay,az,bx,by,bz)
  %6457 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6453, float %6454, float %6455)  ; Dot3(ax,ay,az,bx,by,bz)
  %6458 = fdiv fast float 1.000000e+00, %6457
  %6459 = fmul fast float %6458, %6456
  %6460 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6443, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6461 = fcmp fast ogt float %6460, 0.000000e+00
  %6462 = fcmp fast olt float %6460, 0.000000e+00
  %6463 = zext i1 %6461 to i32
  %6464 = zext i1 %6462 to i32
  %6465 = sub nsw i32 %6463, %6464
  %6466 = sitofp i32 %6465 to float
  %6467 = fsub fast float %6449, %4476
  %6468 = call float @dx.op.dot3.f32(i32 55, float %6386, float %6387, float %6467, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = fcmp fast ogt float %6468, 0.000000e+00
  %6470 = fcmp fast olt float %6468, 0.000000e+00
  %6471 = zext i1 %6469 to i32
  %6472 = zext i1 %6470 to i32
  %6473 = sub nsw i32 %6471, %6472
  %6474 = sitofp i32 %6473 to float
  %6475 = fcmp fast une float %6466, %6474
  br i1 %6475, label %6476, label %6486

; <label>:6476                                    ; preds = %6437
  %6477 = fmul fast float %6459, %6455
  %6478 = fmul fast float %6459, %6454
  %6479 = fmul fast float %6459, %6453
  %6480 = fmul fast float %6479, %6479
  %6481 = fmul fast float %6478, %6478
  %6482 = fadd fast float %6480, %6481
  %6483 = fmul fast float %6477, %6477
  %6484 = fadd fast float %6482, %6483
  %6485 = call float @dx.op.unary.f32(i32 24, float %6484)  ; Sqrt(value)
  br label %6498

; <label>:6486                                    ; preds = %6437
  %6487 = icmp slt i32 %6465, 0
  br i1 %6487, label %6488, label %6498

; <label>:6488                                    ; preds = %6486
  %6489 = fsub fast float %132, %6375
  %6490 = fsub fast float %133, %6376
  %6491 = fsub fast float %134, %6449
  %6492 = fmul fast float %6489, %6489
  %6493 = fmul fast float %6490, %6490
  %6494 = fadd fast float %6492, %6493
  %6495 = fmul fast float %6491, %6491
  %6496 = fadd fast float %6494, %6495
  %6497 = call float @dx.op.unary.f32(i32 24, float %6496)  ; Sqrt(value)
  br label %6498

; <label>:6498                                    ; preds = %6488, %6486, %6476
  %6499 = phi float [ %6485, %6476 ], [ %6497, %6488 ], [ 0.000000e+00, %6486 ]
  %6500 = and i1 %6444, %6442
  %6501 = fsub fast float -0.000000e+00, %6499
  %6502 = select i1 %6500, float -0.000000e+00, float %6501
  %6503 = fmul fast float %4477, 0x3FF7154760000000
  %6504 = fmul fast float %6503, %6502
  %6505 = fmul fast float %4478, 0x3FF7154760000000
  %6506 = fmul fast float %6505, %6502
  %6507 = fmul fast float %4479, 0x3FF7154760000000
  %6508 = fmul fast float %6507, %6502
  %6509 = call float @dx.op.unary.f32(i32 21, float %6504)  ; Exp(value)
  %6510 = call float @dx.op.unary.f32(i32 21, float %6506)  ; Exp(value)
  %6511 = call float @dx.op.unary.f32(i32 21, float %6508)  ; Exp(value)
  %6512 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  %6513 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6514 = call float @dx.op.unary.f32(i32 7, float %6511)  ; Saturate(value)
  %6515 = fmul fast float %6438, %6512
  %6516 = fmul fast float %6439, %6513
  %6517 = fmul fast float %6440, %6514
  %6518 = fsub fast float %6392, %4676
  %6519 = fsub fast float %6393, %4675
  %6520 = fsub fast float %6394, %4674
  %6521 = call float @dx.op.dot3.f32(i32 55, float %6518, float %6519, float %6520, float %6518, float %6519, float %6520)  ; Dot3(ax,ay,az,bx,by,bz)
  %6522 = call float @dx.op.unary.f32(i32 25, float %6521)  ; Rsqrt(value)
  %6523 = fmul fast float %6522, %6518
  %6524 = fmul fast float %6522, %6519
  %6525 = fmul fast float %6522, %6520
  %6526 = call float @dx.op.dot3.f32(i32 55, float %6392, float %6393, float %6394, float %4680, float %4681, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4672, float %4671, float %6523, float %6524, float %6525)  ; Dot3(ax,ay,az,bx,by,bz)
  %6528 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6529 = fmul fast float %6528, %6399
  %6530 = bitcast i32 %4702 to float
  %6531 = fmul fast float %6528, %6528
  %6532 = fmul fast float %6531, %6530
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6534 = fmul fast float %6529, %6533
  %6535 = bitcast float %6389 to i32
  %6536 = ashr i32 %6535, 1
  %6537 = sub nsw i32 1597463007, %6536
  %6538 = bitcast i32 %6537 to float
  %6539 = fmul fast float %6538, %6386
  %6540 = fmul fast float %6538, %6387
  %6541 = fmul fast float %6538, %6388
  %6542 = fsub fast float %6539, %4676
  %6543 = fsub fast float %6540, %4675
  %6544 = fsub fast float %6541, %4674
  %6545 = call float @dx.op.dot3.f32(i32 55, float %6542, float %6543, float %6544, float %6542, float %6543, float %6544)  ; Dot3(ax,ay,az,bx,by,bz)
  %6546 = call float @dx.op.unary.f32(i32 25, float %6545)  ; Rsqrt(value)
  %6547 = fmul fast float %6542, %6546
  %6548 = fmul fast float %6543, %6546
  %6549 = fmul fast float %6544, %6546
  %6550 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %6547, float %6548, float %6549)  ; Dot3(ax,ay,az,bx,by,bz)
  %6551 = fmul fast float %6550, %6550
  %6552 = call float @dx.op.unary.f32(i32 6, float %6526)  ; FAbs(value)
  %6553 = fsub fast float 1.000000e+00, %4686
  %6554 = call float @dx.op.binary.f32(i32 35, float %6553, float 0x3F847AE140000000)  ; FMax(a,b)
  %6555 = fmul fast float %6554, %6554
  %6556 = fmul fast float %6555, %6555
  %6557 = fsub fast float 1.000000e+00, %6556
  %6558 = fmul fast float %4690, %4690
  %6559 = fmul fast float %6558, %6557
  %6560 = fadd fast float %6559, %6556
  %6561 = bitcast float %6560 to i32
  %6562 = ashr i32 %6561, 1
  %6563 = add nsw i32 %6562, 532487669
  %6564 = bitcast i32 %6563 to float
  %6565 = fadd fast float %6564, %4690
  %6566 = fmul fast float %6556, %6551
  %6567 = fsub fast float 1.000000e+00, %6551
  %6568 = fadd fast float %6567, %6566
  %6569 = fmul fast float %6552, %6552
  %6570 = fmul fast float %6569, %6557
  %6571 = fadd fast float %6570, %6556
  %6572 = bitcast float %6571 to i32
  %6573 = ashr i32 %6572, 1
  %6574 = add nsw i32 %6573, 532487669
  %6575 = bitcast i32 %6574 to float
  %6576 = fadd fast float %6575, %6552
  %6577 = fmul fast float %6568, %6568
  %6578 = fmul fast float %6577, %6565
  %6579 = fmul fast float %6578, %6576
  %6580 = fdiv fast float 1.000000e+00, %6579
  %6581 = bitcast float %6556 to i32
  %6582 = sitofp i32 %6581 to float
  %6583 = fmul fast float %6582, 0x3FE7F73180000000
  %6584 = fadd fast float %6583, 0x41AFE27C40000000
  %6585 = fptosi float %6584 to i32
  %6586 = bitcast i32 %6585 to float
  %6587 = fmul fast float %6372, 0x3FD80E9D60000000
  %6588 = fmul fast float %6587, %6538
  %6589 = fadd fast float %6586, %6588
  %6590 = bitcast float %6589 to i32
  %6591 = sub nsw i32 2129859010, %6590
  %6592 = bitcast i32 %6591 to float
  %6593 = fmul fast float %6556, %6580
  %6594 = fmul fast float %6593, %6586
  %6595 = fmul fast float %6594, %6592
  %6596 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6597 = fsub fast float 1.000000e+00, %6596
  %6598 = bitcast float %6597 to i32
  %6599 = sitofp i32 %6598 to float
  %6600 = fmul fast float %6599, 5.000000e+00
  %6601 = fadd fast float %6600, 0xC1EFBF8940000000
  %6602 = fptosi float %6601 to i32
  %6603 = bitcast i32 %6602 to float
  %6604 = fsub fast float 1.000000e+00, %4677
  %6605 = fsub fast float 1.000000e+00, %4678
  %6606 = fsub fast float 1.000000e+00, %4688
  %6607 = fmul fast float %6603, %6604
  %6608 = fmul fast float %6603, %6605
  %6609 = fmul fast float %6603, %6606
  %6610 = fadd fast float %6607, %4677
  %6611 = fadd fast float %6608, %4678
  %6612 = fadd fast float %6609, %4688
  br i1 %5967, label %6613, label %6636

; <label>:6613                                    ; preds = %6498
  %6614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4054, float %6596, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  %6618 = fadd fast float %6615, -5.000000e-01
  %6619 = fadd fast float %6616, -5.000000e-01
  %6620 = fadd fast float %6617, -5.000000e-01
  %6621 = fmul fast float %4677, 4.000000e+00
  %6622 = fmul fast float %6621, %6604
  %6623 = fmul fast float %6622, %6618
  %6624 = fmul fast float %4678, 4.000000e+00
  %6625 = fmul fast float %6624, %6605
  %6626 = fmul fast float %6625, %6619
  %6627 = fmul fast float %4688, 4.000000e+00
  %6628 = fmul fast float %6627, %6606
  %6629 = fmul fast float %6628, %6620
  %6630 = fadd fast float %6623, %6610
  %6631 = fadd fast float %6626, %6611
  %6632 = fadd fast float %6629, %6612
  %6633 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  %6634 = call float @dx.op.unary.f32(i32 7, float %6631)  ; Saturate(value)
  %6635 = call float @dx.op.unary.f32(i32 7, float %6632)  ; Saturate(value)
  br label %6636

; <label>:6636                                    ; preds = %6613, %6498
  %6637 = phi float [ %6633, %6613 ], [ %6610, %6498 ]
  %6638 = phi float [ %6634, %6613 ], [ %6611, %6498 ]
  %6639 = phi float [ %6635, %6613 ], [ %6612, %6498 ]
  %6640 = fmul fast float %6526, 9.843750e-01
  %6641 = fadd fast float %6640, 7.812500e-03
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6641, float %5957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 2
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 3
  %6645 = fmul fast float %6643, %4677
  %6646 = fmul fast float %6643, %4678
  %6647 = fmul fast float %6643, %4688
  %6648 = fadd fast float %6645, %6644
  %6649 = fadd fast float %6646, %6644
  %6650 = fadd fast float %6647, %6644
  br i1 %5967, label %6651, label %6674

; <label>:6651                                    ; preds = %6636
  %6652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4054, float %6526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.ResRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.ResRet.f32 %6652, 2
  %6656 = fadd fast float %6653, -5.000000e-01
  %6657 = fadd fast float %6654, -5.000000e-01
  %6658 = fadd fast float %6655, -5.000000e-01
  %6659 = fmul fast float %4677, 4.000000e+00
  %6660 = fmul fast float %6659, %6604
  %6661 = fmul fast float %6660, %6656
  %6662 = fmul fast float %4678, 4.000000e+00
  %6663 = fmul fast float %6662, %6605
  %6664 = fmul fast float %6663, %6657
  %6665 = fmul fast float %4688, 4.000000e+00
  %6666 = fmul fast float %6665, %6606
  %6667 = fmul fast float %6666, %6658
  %6668 = fadd fast float %6661, %6648
  %6669 = fadd fast float %6664, %6649
  %6670 = fadd fast float %6667, %6650
  %6671 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6672 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6673 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  br label %6674

; <label>:6674                                    ; preds = %6651, %6636
  %6675 = phi float [ %6671, %6651 ], [ %6648, %6636 ]
  %6676 = phi float [ %6672, %6651 ], [ %6649, %6636 ]
  %6677 = phi float [ %6673, %6651 ], [ %6650, %6636 ]
  %6678 = call float @dx.op.binary.f32(i32 35, float %6676, float %6677)  ; FMax(a,b)
  %6679 = call float @dx.op.binary.f32(i32 35, float %6675, float %6678)  ; FMax(a,b)
  %6680 = fsub fast float 1.000000e+00, %6679
  %6681 = fmul fast float %6637, %6595
  %6682 = fmul fast float %6638, %6595
  %6683 = fmul fast float %6639, %6595
  %6684 = fsub fast float 1.000000e+00, %6527
  %6685 = bitcast float %6684 to i32
  %6686 = sitofp i32 %6685 to float
  %6687 = fmul fast float %6686, 5.000000e+00
  %6688 = fadd fast float %6687, 0xC1EFBF8940000000
  %6689 = fptosi float %6688 to i32
  %6690 = bitcast i32 %6689 to float
  %6691 = fmul fast float %6690, %4053
  %6692 = fmul fast float %6680, %6691
  %6693 = fmul fast float %6692, %6017
  %6694 = fmul fast float %6692, %6018
  %6695 = fmul fast float %6692, %6019
  %6696 = fadd fast float %6693, %6681
  %6697 = fadd fast float %6694, %6682
  %6698 = fadd fast float %6695, %6683
  %6699 = fmul fast float %6515, %4074
  %6700 = fmul fast float %6699, %6534
  %6701 = fmul fast float %6700, %6680
  %6702 = fmul fast float %6516, %4074
  %6703 = fmul fast float %6702, %6534
  %6704 = fmul fast float %6703, %6680
  %6705 = fmul fast float %6517, %4074
  %6706 = fmul fast float %6705, %6534
  %6707 = fmul fast float %6706, %6680
  %6708 = fadd fast float %6701, %6354
  %6709 = fadd fast float %6704, %6355
  %6710 = fadd fast float %6707, %6356
  %6711 = fmul fast float %6700, %6696
  %6712 = fmul fast float %6703, %6697
  %6713 = fmul fast float %6706, %6698
  %6714 = fadd fast float %6711, %6351
  %6715 = fadd fast float %6712, %6352
  %6716 = fadd fast float %6713, %6353
  br label %6429

; <label>:6717                                    ; preds = %6429
  br label %6718

; <label>:6718                                    ; preds = %6717, %6317
  %6719 = phi float [ %6319, %6317 ], [ %6430, %6717 ]
  %6720 = phi float [ %6320, %6317 ], [ %6431, %6717 ]
  %6721 = phi float [ %6321, %6317 ], [ %6432, %6717 ]
  %6722 = phi float [ %6322, %6317 ], [ %6433, %6717 ]
  %6723 = phi float [ %6323, %6317 ], [ %6434, %6717 ]
  %6724 = phi float [ %6324, %6317 ], [ %6435, %6717 ]
  %6725 = add i32 %6318, 1
  %6726 = icmp ugt i32 %6725, %6314
  br i1 %6726, label %6727, label %6317

; <label>:6727                                    ; preds = %6718
  br label %6728

; <label>:6728                                    ; preds = %6727, %6293, %6283
  %6729 = phi float [ %6284, %6283 ], [ %6284, %6293 ], [ %6719, %6727 ]
  %6730 = phi float [ %6285, %6283 ], [ %6285, %6293 ], [ %6720, %6727 ]
  %6731 = phi float [ %6286, %6283 ], [ %6286, %6293 ], [ %6721, %6727 ]
  %6732 = phi float [ %6287, %6283 ], [ %6287, %6293 ], [ %6722, %6727 ]
  %6733 = phi float [ %6288, %6283 ], [ %6288, %6293 ], [ %6723, %6727 ]
  %6734 = phi float [ %6289, %6283 ], [ %6289, %6293 ], [ %6724, %6727 ]
  %6735 = call float @dx.op.unary.f32(i32 24, float %4683)  ; Sqrt(value)
  %6736 = call float @dx.op.unary.f32(i32 24, float %4684)  ; Sqrt(value)
  %6737 = call float @dx.op.unary.f32(i32 24, float %4685)  ; Sqrt(value)
  %6738 = fmul fast float %6735, %6732
  %6739 = fmul fast float %6736, %6733
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 0
  br i1 %203, label %6742, label %6762

; <label>:6742                                    ; preds = %6728
  %6743 = fadd fast float %6734, %4051
  %6744 = fmul fast float %6743, %4052
  %6745 = fsub fast float 1.000000e+00, %4052
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 3
  %6749 = fmul fast float %6748, %6746
  %6750 = fadd fast float %6749, %6744
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 0
  %6753 = fmul fast float %6752, %6023
  %6754 = fsub fast float %6750, %6753
  %6755 = fadd fast float %6739, %6738
  %6756 = fmul fast float %6741, %6755
  %6757 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6758 = fsub fast float %6754, %6757
  %6759 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6760 = fmul fast float %6758, %6759
  %6761 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  br label %6778

; <label>:6762                                    ; preds = %6728
  %6763 = fmul fast float %6737, %6734
  %6764 = fmul fast float %6741, %6738
  %6765 = fmul fast float %6741, %6739
  %6766 = fmul fast float %6763, %6741
  %6767 = add i32 %44, 356
  %6768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6767, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.i32 %6768, 0
  %6770 = and i32 %6769, 32
  %6771 = icmp eq i32 %6770, 0
  br i1 %6771, label %6778, label %6772

; <label>:6772                                    ; preds = %6762
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = fmul fast float %6774, 0x3FE99999A0000000
  %6776 = fadd fast float %6774, %6764
  %6777 = fadd fast float %6775, %6766
  br label %6778

; <label>:6778                                    ; preds = %6772, %6762, %6742
  %6779 = phi float [ %6756, %6742 ], [ %6776, %6772 ], [ %6764, %6762 ]
  %6780 = phi float [ %6761, %6742 ], [ %6765, %6772 ], [ %6765, %6762 ]
  %6781 = phi float [ 1.000000e+00, %6742 ], [ %6777, %6772 ], [ %6766, %6762 ]
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 0
  %6784 = fmul fast float %6783, %6730
  %6785 = fmul fast float %6783, %6731
  %6786 = fadd fast float %6730, %6729
  %6787 = select i1 %203, float %6786, float %6729
  %6788 = fmul float %6787, %6783
  %6789 = select i1 %203, float 0.000000e+00, float %6784
  %6790 = select i1 %203, float 0.000000e+00, float %6785
  %6791 = fmul fast float %6779, %6735
  %6792 = fmul fast float %6780, %6736
  %6793 = fmul fast float %6781, %6737
  %6794 = fadd fast float %6788, %6791
  %6795 = fadd fast float %6789, %6792
  %6796 = fadd fast float %6790, %6793
  %6797 = select i1 %203, float %6780, float %6795
  %6798 = select i1 %203, float %6781, float %6796
  %6799 = call float @dx.op.binary.f32(i32 36, float %6794, float 3.225500e+04)  ; FMin(a,b)
  %6800 = call float @dx.op.binary.f32(i32 36, float %6797, float 3.225500e+04)  ; FMin(a,b)
  %6801 = call float @dx.op.binary.f32(i32 36, float %6798, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6799)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6800)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6801)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[44 x i32] [i32 42, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !85}
!59 = !{!60, !83, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !82}
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
!79 = !{i32 10, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 10, i8 0, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 11, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 10, i8 1, !80}
!82 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!85 = !{i32 0, i64 24}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}

