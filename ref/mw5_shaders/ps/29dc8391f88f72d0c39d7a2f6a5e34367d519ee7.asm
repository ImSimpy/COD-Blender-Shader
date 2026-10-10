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
; shader hash: 7318393ee720122fc6824ddcdb6d127b
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
  br i1 %2571, label %2997, label %2572

; <label>:2572                                    ; preds = %2478
  %2573 = and i32 %2568, 1023
  br label %2574

; <label>:2574                                    ; preds = %2700, %2572
  %2575 = phi float [ %2701, %2700 ], [ 0.000000e+00, %2572 ]
  %2576 = phi float [ %2702, %2700 ], [ %2492, %2572 ]
  %2577 = phi float [ %2703, %2700 ], [ %2490, %2572 ]
  %2578 = phi float [ %2704, %2700 ], [ 0.000000e+00, %2572 ]
  %2579 = phi float [ %2705, %2700 ], [ 0.000000e+00, %2572 ]
  %2580 = phi float [ %2706, %2700 ], [ %2484, %2572 ]
  %2581 = phi float [ %2707, %2700 ], [ %2485, %2572 ]
  %2582 = phi float [ %2708, %2700 ], [ %2486, %2572 ]
  %2583 = phi float [ %2709, %2700 ], [ %2518, %2572 ]
  %2584 = phi float [ %2710, %2700 ], [ %2519, %2572 ]
  %2585 = phi float [ %2711, %2700 ], [ %2520, %2572 ]
  %2586 = phi float [ %2712, %2700 ], [ %2489, %2572 ]
  %2587 = phi float [ %2713, %2700 ], [ %2488, %2572 ]
  %2588 = phi float [ %2714, %2700 ], [ 0.000000e+00, %2572 ]
  %2589 = phi float [ %2715, %2700 ], [ %2487, %2572 ]
  %2590 = phi float [ %2716, %2700 ], [ %2481, %2572 ]
  %2591 = phi float [ %2717, %2700 ], [ %2482, %2572 ]
  %2592 = phi float [ %2718, %2700 ], [ %2483, %2572 ]
  %2593 = phi i32 [ %2650, %2700 ], [ 0, %2572 ]
  %2594 = add nuw nsw i32 %2593, %2570
  %2595 = shl i32 %2594, 2
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = shl i32 %2597, 8
  %2599 = or i32 %2598, 48
  %2600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.ResRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.ResRet.f32 %2600, 2
  %2604 = extractvalue %dx.types.ResRet.f32 %2600, 3
  %2605 = or i32 %2598, 64
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = extractvalue %dx.types.ResRet.i32 %2606, 1
  %2609 = or i32 %2598, 80
  %2610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 2
  %2612 = extractvalue %dx.types.ResRet.f32 %2610, 3
  %2613 = or i32 %2598, 96
  %2614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.ResRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.ResRet.f32 %2614, 2
  %2618 = extractvalue %dx.types.ResRet.f32 %2614, 3
  %2619 = or i32 %2598, 112
  %2620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 2
  %2622 = or i32 %2598, 128
  %2623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = extractvalue %dx.types.ResRet.f32 %2623, 3
  %2628 = or i32 %2598, 144
  %2629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.ResRet.f32 %2629, 1
  %2632 = extractvalue %dx.types.ResRet.f32 %2629, 2
  %2633 = extractvalue %dx.types.ResRet.f32 %2629, 3
  %2634 = or i32 %2598, 160
  %2635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.ResRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.ResRet.f32 %2635, 2
  %2639 = extractvalue %dx.types.ResRet.f32 %2635, 3
  %2640 = or i32 %2598, 192
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = or i32 %2598, 208
  %2644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = or i32 %2598, 248
  %2647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.ResRet.f32 %2647, 1
  %2650 = add nuw nsw i32 %2593, 1
  %2651 = bitcast float %2604 to i32
  %2652 = and i32 %2651, 2560
  %2653 = icmp eq i32 %2652, 0
  %2654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.f32 %2654, 0
  %2656 = extractvalue %dx.types.ResRet.f32 %2654, 1
  %2657 = extractvalue %dx.types.ResRet.f32 %2654, 2
  %2658 = extractvalue %dx.types.ResRet.f32 %2654, 3
  %2659 = call float @dx.op.dot4.f32(i32 56, float %2655, float %2656, float %2657, float %2658, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2660 = or i32 %2598, 16
  %2661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.ResRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.ResRet.f32 %2661, 2
  %2665 = extractvalue %dx.types.ResRet.f32 %2661, 3
  %2666 = call float @dx.op.dot4.f32(i32 56, float %2662, float %2663, float %2664, float %2665, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2667 = or i32 %2598, 32
  %2668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.ResRet.f32 %2668, 2
  %2672 = extractvalue %dx.types.ResRet.f32 %2668, 3
  %2673 = call float @dx.op.dot4.f32(i32 56, float %2669, float %2670, float %2671, float %2672, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2674 = call float @dx.op.unary.f32(i32 27, float %2659)  ; Round_ni(value)
  %2675 = call float @dx.op.unary.f32(i32 6, float %2674)  ; FAbs(value)
  %2676 = call float @dx.op.unary.f32(i32 27, float %2666)  ; Round_ni(value)
  %2677 = call float @dx.op.unary.f32(i32 6, float %2676)  ; FAbs(value)
  %2678 = call float @dx.op.unary.f32(i32 6, float %2673)  ; FAbs(value)
  %2679 = call float @dx.op.unary.f32(i32 27, float %2678)  ; Round_ni(value)
  %2680 = fadd fast float %2677, %2675
  %2681 = fadd fast float %2680, %2679
  %2682 = fcmp fast oeq float %2681, 0.000000e+00
  %2683 = call float @dx.op.dot4.f32(i32 56, float %2655, float %2656, float %2657, float %2658, float %2527, float %2528, float %2529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2684 = call float @dx.op.dot4.f32(i32 56, float %2662, float %2663, float %2664, float %2665, float %2527, float %2528, float %2529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2685 = call float @dx.op.dot4.f32(i32 56, float %2655, float %2656, float %2657, float %2658, float %2530, float %2531, float %2532, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2686 = call float @dx.op.dot4.f32(i32 56, float %2662, float %2663, float %2664, float %2665, float %2530, float %2531, float %2532, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2687 = fsub fast float %2683, %2659
  %2688 = fsub fast float %2685, %2659
  %2689 = fsub fast float %2684, %2666
  %2690 = fsub fast float %2686, %2666
  %2691 = call float @dx.op.dot3.f32(i32 55, float %2601, float %2602, float %2603, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2694 = fadd fast float %2693, %2691
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2697 = fcmp fast ogt float %2695, %2696
  %2698 = and i1 %2682, %2697
  %2699 = and i1 %2653, %2698
  br i1 %2699, label %2720, label %2700

; <label>:2700                                    ; preds = %2983, %2801, %2720, %2574
  %2701 = phi float [ %2575, %2720 ], [ %2804, %2801 ], [ %2804, %2983 ], [ %2575, %2574 ]
  %2702 = phi float [ %2576, %2720 ], [ %2576, %2801 ], [ %2958, %2983 ], [ %2576, %2574 ]
  %2703 = phi float [ %2577, %2720 ], [ %2577, %2801 ], [ %2956, %2983 ], [ %2577, %2574 ]
  %2704 = phi float [ %2578, %2720 ], [ %2578, %2801 ], [ %2928, %2983 ], [ %2578, %2574 ]
  %2705 = phi float [ %2579, %2720 ], [ %2579, %2801 ], [ %2926, %2983 ], [ %2579, %2574 ]
  %2706 = phi float [ %2580, %2720 ], [ %2580, %2801 ], [ %2993, %2983 ], [ %2580, %2574 ]
  %2707 = phi float [ %2581, %2720 ], [ %2581, %2801 ], [ %2994, %2983 ], [ %2581, %2574 ]
  %2708 = phi float [ %2582, %2720 ], [ %2582, %2801 ], [ %2995, %2983 ], [ %2582, %2574 ]
  %2709 = phi float [ %2583, %2720 ], [ %2583, %2801 ], [ %2907, %2983 ], [ %2583, %2574 ]
  %2710 = phi float [ %2584, %2720 ], [ %2584, %2801 ], [ %2908, %2983 ], [ %2584, %2574 ]
  %2711 = phi float [ %2585, %2720 ], [ %2585, %2801 ], [ %2909, %2983 ], [ %2585, %2574 ]
  %2712 = phi float [ %2586, %2720 ], [ %2586, %2801 ], [ %2936, %2983 ], [ %2586, %2574 ]
  %2713 = phi float [ %2587, %2720 ], [ %2587, %2801 ], [ %2933, %2983 ], [ %2587, %2574 ]
  %2714 = phi float [ %2588, %2720 ], [ %2588, %2801 ], [ %2930, %2983 ], [ %2588, %2574 ]
  %2715 = phi float [ %2589, %2720 ], [ %2589, %2801 ], [ %2924, %2983 ], [ %2589, %2574 ]
  %2716 = phi float [ %2590, %2720 ], [ %2590, %2801 ], [ %2919, %2983 ], [ %2590, %2574 ]
  %2717 = phi float [ %2591, %2720 ], [ %2591, %2801 ], [ %2920, %2983 ], [ %2591, %2574 ]
  %2718 = phi float [ %2592, %2720 ], [ %2592, %2801 ], [ %2921, %2983 ], [ %2592, %2574 ]
  %2719 = icmp eq i32 %2650, %2573
  br i1 %2719, label %2996, label %2574

; <label>:2720                                    ; preds = %2574
  %2721 = extractvalue %dx.types.ResRet.f32 %2620, 3
  %2722 = extractvalue %dx.types.ResRet.f32 %2620, 1
  %2723 = extractvalue %dx.types.ResRet.f32 %2620, 0
  %2724 = extractvalue %dx.types.ResRet.f32 %2610, 1
  %2725 = extractvalue %dx.types.ResRet.f32 %2610, 0
  %2726 = extractvalue %dx.types.ResRet.i32 %2606, 3
  %2727 = extractvalue %dx.types.ResRet.i32 %2606, 2
  %2728 = add i32 %2726, 0
  %2729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2728, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2731 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2729, %dx.types.Handle %2730, float %2659, float %2666, float undef, float undef, i32 0, i32 0, i32 undef, float %2687, float %2689, float undef, float %2688, float %2690, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = fmul fast float %2732, %2725
  %2734 = fadd fast float %2733, %2724
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2736 = fmul fast float %2659, %2615
  %2737 = call float @dx.op.tertiary.f32(i32 46, float %2616, float %2666, float %2736)  ; FMad(a,b,c)
  %2738 = fadd fast float %2737, %2723
  %2739 = fmul fast float %2659, %2617
  %2740 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2666, float %2739)  ; FMad(a,b,c)
  %2741 = fadd fast float %2740, %2722
  %2742 = fmul fast float %2687, %2615
  %2743 = call float @dx.op.tertiary.f32(i32 46, float %2616, float %2689, float %2742)  ; FMad(a,b,c)
  %2744 = fmul fast float %2687, %2617
  %2745 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2689, float %2744)  ; FMad(a,b,c)
  %2746 = fmul fast float %2688, %2615
  %2747 = call float @dx.op.tertiary.f32(i32 46, float %2616, float %2690, float %2746)  ; FMad(a,b,c)
  %2748 = fmul fast float %2688, %2617
  %2749 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2690, float %2748)  ; FMad(a,b,c)
  %2750 = add i32 %2727, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2750, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2751, %dx.types.Handle %2730, float %2738, float %2741, float undef, float undef, i32 0, i32 0, i32 undef, float %2743, float %2745, float undef, float %2747, float %2749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = and i32 %2651, 1024
  %2755 = icmp ne i32 %2754, 0
  %2756 = fcmp fast ogt float %2753, 0x3FE0101020000000
  %2757 = uitofp i1 %2756 to float
  %2758 = select i1 %2755, float %2757, float %2753
  %2759 = and i32 %2651, 8192
  %2760 = icmp ne i32 %2759, 0
  %2761 = select i1 %2760, float %2721, float 1.000000e+00
  %2762 = fmul fast float %2659, 2.000000e+00
  %2763 = fadd fast float %2762, -1.000000e+00
  %2764 = call float @dx.op.unary.f32(i32 6, float %2763)  ; FAbs(value)
  %2765 = fmul fast float %2764, %2648
  %2766 = fsub fast float %2765, %2648
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2768 = fmul fast float %2666, 2.000000e+00
  %2769 = fadd fast float %2768, -1.000000e+00
  %2770 = call float @dx.op.unary.f32(i32 6, float %2769)  ; FAbs(value)
  %2771 = fmul fast float %2770, %2649
  %2772 = fsub fast float %2771, %2649
  %2773 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2774 = fmul fast float %2678, %2611
  %2775 = fsub fast float %2774, %2611
  %2776 = call float @dx.op.unary.f32(i32 7, float %2775)  ; Saturate(value)
  %2777 = fmul fast float %2735, %2761
  %2778 = fmul fast float %2777, %2732
  %2779 = fmul fast float %2778, %2767
  %2780 = fmul fast float %2779, %2758
  %2781 = fmul fast float %2780, %2773
  %2782 = fmul fast float %2781, %2776
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2786 = fsub fast float %2695, %2785
  %2787 = fmul fast float %2786, %2784
  %2788 = call float @dx.op.unary.f32(i32 7, float %2787)  ; Saturate(value)
  %2789 = fmul fast float %2782, %2612
  %2790 = fadd fast float %2782, %2612
  %2791 = fmul fast float %2790, %2621
  %2792 = fsub fast float %2791, %2621
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = and i32 %2651, 128
  %2795 = icmp ne i32 %2794, 0
  %2796 = select i1 %2795, float %2793, float %2789
  %2797 = fmul fast float %2796, %2788
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 0
  %2800 = fcmp fast ugt float %2797, %2799
  br i1 %2800, label %2801, label %2700

; <label>:2801                                    ; preds = %2720
  %2802 = select i1 %2760, float %2797, float 0.000000e+00
  %2803 = fadd fast float %2802, %2575
  %2804 = call float @dx.op.unary.f32(i32 7, float %2803)  ; Saturate(value)
  br i1 %2760, label %2700, label %2805

; <label>:2805                                    ; preds = %2801
  %2806 = and i32 %2651, 4
  %2807 = and i32 %2651, 8
  %2808 = add i32 %2607, 0
  %2809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2808, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2811 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2809, %dx.types.Handle %2810, float %2738, float %2741, float undef, float undef, i32 0, i32 0, i32 undef, float %2743, float %2745, float undef, float %2747, float %2749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.ResRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.ResRet.f32 %2811, 2
  %2815 = extractvalue %dx.types.ResRet.f32 %2811, 3
  %2816 = bitcast float %2633 to i32
  %2817 = and i32 %2816, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = lshr i32 %2816, 8
  %2820 = and i32 %2819, 255
  %2821 = uitofp i32 %2820 to float
  %2822 = fmul fast float %2815, %2818
  %2823 = fadd fast float %2822, %2821
  %2824 = fmul fast float %2823, 0x3F70101000000000
  %2825 = add i32 %2608, 0
  %2826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2825, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2827 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2826, %dx.types.Handle %2810, float %2738, float %2741, float undef, float undef, i32 0, i32 0, i32 undef, float %2743, float %2745, float undef, float %2747, float %2749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.ResRet.f32 %2827, 1
  %2830 = extractvalue %dx.types.ResRet.f32 %2827, 2
  %2831 = extractvalue %dx.types.ResRet.f32 %2827, 3
  %2832 = bitcast float %2627 to i32
  %2833 = and i32 %2832, 255
  %2834 = uitofp i32 %2833 to float
  %2835 = lshr i32 %2832, 8
  %2836 = and i32 %2835, 255
  %2837 = uitofp i32 %2836 to float
  %2838 = lshr i32 %2832, 16
  %2839 = and i32 %2838, 255
  %2840 = uitofp i32 %2839 to float
  %2841 = fmul fast float %2840, 0x3F70101000000000
  %2842 = fmul fast float %2828, %2834
  %2843 = fadd fast float %2842, %2837
  %2844 = fmul fast float %2843, 0x3F70101000000000
  %2845 = fadd fast float %2829, -5.000000e-01
  %2846 = fadd fast float %2831, -5.000000e-01
  %2847 = fmul fast float %2845, %2841
  %2848 = fmul fast float %2846, %2841
  %2849 = fadd fast float %2847, 5.000000e-01
  %2850 = fadd fast float %2848, 5.000000e-01
  %2851 = fmul fast float %2812, %2636
  %2852 = fmul fast float %2813, %2637
  %2853 = fmul fast float %2814, %2638
  %2854 = fmul fast float %2849, 2.000000e+00
  %2855 = fadd fast float %2854, -1.000000e+00
  %2856 = fmul fast float %2850, 2.000000e+00
  %2857 = fadd fast float %2856, -1.000000e+00
  %2858 = fadd fast float %2855, %2857
  %2859 = fmul fast float %2858, 5.000000e-01
  %2860 = fsub fast float %2855, %2857
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2863 = fsub fast float 1.000000e+00, %2862
  %2864 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2865 = fsub fast float %2863, %2864
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2859, float %2861, float %2865, float %2859, float %2861, float %2865)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.unary.f32(i32 25, float %2866)  ; Rsqrt(value)
  %2868 = fmul fast float %2859, %2867
  %2869 = fmul fast float %2861, %2867
  %2870 = fmul fast float %2867, %2865
  %2871 = fmul fast float %2870, %2601
  %2872 = fmul fast float %2870, %2602
  %2873 = fmul fast float %2870, %2603
  %2874 = fmul fast float %2868, %2624
  %2875 = fmul fast float %2868, %2625
  %2876 = fmul fast float %2868, %2626
  %2877 = fadd fast float %2874, %2871
  %2878 = fadd fast float %2875, %2872
  %2879 = fadd fast float %2876, %2873
  %2880 = fmul fast float %2869, %2630
  %2881 = fmul fast float %2869, %2631
  %2882 = fmul fast float %2869, %2632
  %2883 = fadd fast float %2877, %2880
  %2884 = fadd fast float %2878, %2881
  %2885 = fadd fast float %2879, %2882
  %2886 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float %2883, float %2884, float %2885)  ; Dot3(ax,ay,az,bx,by,bz)
  %2887 = call float @dx.op.unary.f32(i32 25, float %2886)  ; Rsqrt(value)
  %2888 = fmul fast float %2883, %2887
  %2889 = fmul fast float %2884, %2887
  %2890 = fmul fast float %2885, %2887
  %2891 = icmp ne i32 %2807, 0
  %2892 = select i1 %2891, float 1.000000e+00, float 0.000000e+00
  %2893 = fmul fast float %2797, %2892
  %2894 = and i32 %2651, 1
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2896, label %2900

; <label>:2896                                    ; preds = %2805
  %2897 = fsub fast float %2888, %2583
  %2898 = fsub fast float %2889, %2584
  %2899 = fsub fast float %2890, %2585
  br label %2900

; <label>:2900                                    ; preds = %2896, %2805
  %2901 = phi float [ %2897, %2896 ], [ %2888, %2805 ]
  %2902 = phi float [ %2898, %2896 ], [ %2889, %2805 ]
  %2903 = phi float [ %2899, %2896 ], [ %2890, %2805 ]
  %2904 = fmul float %2903, %2893
  %2905 = fmul float %2902, %2893
  %2906 = fmul float %2901, %2893
  %2907 = fadd fast float %2906, %2583
  %2908 = fadd fast float %2905, %2584
  %2909 = fadd fast float %2904, %2585
  %2910 = icmp ne i32 %2806, 0
  %2911 = select i1 %2910, float 1.000000e+00, float 0.000000e+00
  %2912 = fmul fast float %2797, %2911
  %2913 = fsub fast float %2851, %2590
  %2914 = fsub fast float %2852, %2591
  %2915 = fsub fast float %2853, %2592
  %2916 = fmul fast float %2913, %2912
  %2917 = fmul fast float %2914, %2912
  %2918 = fmul fast float %2915, %2912
  %2919 = fadd fast float %2916, %2590
  %2920 = fadd fast float %2917, %2591
  %2921 = fadd fast float %2918, %2592
  %2922 = fsub fast float %2824, %2589
  %2923 = fmul fast float %2922, %2912
  %2924 = fadd fast float %2923, %2589
  %2925 = fmul fast float %2912, %2579
  %2926 = fsub fast float %2579, %2925
  %2927 = fmul fast float %2912, %2578
  %2928 = fsub fast float %2578, %2927
  %2929 = fadd fast float %2797, %2588
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = fsub fast float %2844, %2587
  %2932 = fmul fast float %2931, %2893
  %2933 = fadd fast float %2932, %2587
  %2934 = fsub fast float %2830, %2586
  %2935 = fmul fast float %2934, %2893
  %2936 = fadd fast float %2935, %2586
  %2937 = call float @dx.op.dot3.f32(i32 55, float %2851, float %2852, float %2853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2941 = fmul fast float %2940, %2937
  %2942 = fadd fast float %2941, %2939
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  %2944 = bitcast float %2639 to i32
  %2945 = and i32 %2944, 65535
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = lshr i32 %2944, 16
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = fcmp fast oge float %2946, 0.000000e+00
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 0
  %2952 = select i1 %2949, float %2946, float %2951
  %2953 = fadd fast float %2952, %2948
  %2954 = fsub fast float %2943, %2577
  %2955 = fmul fast float %2954, %2797
  %2956 = fadd fast float %2955, %2577
  %2957 = fmul fast float %2953, %2797
  %2958 = call float @dx.op.binary.f32(i32 35, float %2576, float %2957)  ; FMax(a,b)
  %2959 = and i32 %2651, 16
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %2983, label %2961

; <label>:2961                                    ; preds = %2900
  %2962 = bitcast float %2645 to i32
  %2963 = add i32 %2642, 0
  %2964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2964, %dx.types.Handle %2810, float %2738, float %2741, float undef, float undef, i32 0, i32 0, i32 undef, float %2743, float %2745, float undef, float %2747, float %2749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = and i32 %2962, 65535
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = fmul fast float %2966, %2636
  %2972 = fmul fast float %2967, %2637
  %2973 = fmul fast float %2968, %2638
  %2974 = and i32 %2651, 16384
  %2975 = icmp ne i32 %2974, 0
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = select i1 %2975, float %2977, float 1.000000e+00
  %2979 = fmul fast float %2978, %2970
  %2980 = fmul fast float %2971, %2979
  %2981 = fmul fast float %2972, %2979
  %2982 = fmul fast float %2973, %2979
  br label %2983

; <label>:2983                                    ; preds = %2961, %2900
  %2984 = phi float [ %2980, %2961 ], [ 0.000000e+00, %2900 ]
  %2985 = phi float [ %2981, %2961 ], [ 0.000000e+00, %2900 ]
  %2986 = phi float [ %2982, %2961 ], [ 0.000000e+00, %2900 ]
  %2987 = fsub fast float %2984, %2580
  %2988 = fsub fast float %2985, %2581
  %2989 = fsub fast float %2986, %2582
  %2990 = fmul fast float %2987, %2797
  %2991 = fmul fast float %2988, %2797
  %2992 = fmul fast float %2989, %2797
  %2993 = fadd fast float %2990, %2580
  %2994 = fadd fast float %2991, %2581
  %2995 = fadd fast float %2992, %2582
  br label %2700

; <label>:2996                                    ; preds = %2700
  br label %2997

; <label>:2997                                    ; preds = %2996, %2478
  %2998 = phi float [ 0.000000e+00, %2478 ], [ %2701, %2996 ]
  %2999 = phi float [ %2492, %2478 ], [ %2702, %2996 ]
  %3000 = phi float [ %2490, %2478 ], [ %2703, %2996 ]
  %3001 = phi float [ 0.000000e+00, %2478 ], [ %2704, %2996 ]
  %3002 = phi float [ 0.000000e+00, %2478 ], [ %2705, %2996 ]
  %3003 = phi float [ %2484, %2478 ], [ %2706, %2996 ]
  %3004 = phi float [ %2485, %2478 ], [ %2707, %2996 ]
  %3005 = phi float [ %2486, %2478 ], [ %2708, %2996 ]
  %3006 = phi float [ %2518, %2478 ], [ %2709, %2996 ]
  %3007 = phi float [ %2519, %2478 ], [ %2710, %2996 ]
  %3008 = phi float [ %2520, %2478 ], [ %2711, %2996 ]
  %3009 = phi float [ %2489, %2478 ], [ %2712, %2996 ]
  %3010 = phi float [ %2488, %2478 ], [ %2713, %2996 ]
  %3011 = phi float [ 0.000000e+00, %2478 ], [ %2714, %2996 ]
  %3012 = phi float [ %2487, %2478 ], [ %2715, %2996 ]
  %3013 = phi float [ %2481, %2478 ], [ %2716, %2996 ]
  %3014 = phi float [ %2482, %2478 ], [ %2717, %2996 ]
  %3015 = phi float [ %2483, %2478 ], [ %2718, %2996 ]
  %3016 = call float @dx.op.dot3.f32(i32 55, float %3006, float %3007, float %3008, float %3006, float %3007, float %3008)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = call float @dx.op.unary.f32(i32 25, float %3016)  ; Rsqrt(value)
  %3018 = fmul fast float %3017, %3006
  %3019 = fmul fast float %3017, %3007
  %3020 = fmul fast float %3017, %3008
  %3021 = fadd fast float %3011, %797
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = call float @dx.op.dot3.f32(i32 55, float %3018, float %3019, float %3020, float %3018, float %3019, float %3020)  ; Dot3(ax,ay,az,bx,by,bz)
  %3024 = call float @dx.op.unary.f32(i32 25, float %3023)  ; Rsqrt(value)
  %3025 = fmul fast float %3024, %3018
  %3026 = fmul fast float %3024, %3019
  %3027 = fmul fast float %3024, %3020
  %3028 = fadd fast float %3012, 0xBFB99999A0000000
  %3029 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3030 = fmul fast float %3029, 0x3FF1C71C80000000
  %3031 = call float @dx.op.binary.f32(i32 36, float %3012, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3032 = fsub fast float 1.000000e+00, %3030
  %3033 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3034 = fmul fast float %3033, %3013
  %3035 = fmul fast float %3033, %3014
  %3036 = fmul fast float %3033, %3015
  %3037 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3040 = fmul fast float %3030, %3013
  %3041 = fmul fast float %3030, %3014
  %3042 = fmul fast float %3030, %3015
  %3043 = fadd fast float %3040, %3031
  %3044 = fadd fast float %3041, %3031
  %3045 = fadd fast float %3042, %3031
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3048 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3049 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.i32 %3050, 3
  %3052 = and i32 %3051, 8
  %3053 = icmp ne i32 %3052, 0
  %3054 = call float @dx.op.binary.f32(i32 35, float %3037, float %3013)  ; FMax(a,b)
  %3055 = call float @dx.op.binary.f32(i32 35, float %3038, float %3013)  ; FMax(a,b)
  %3056 = call float @dx.op.binary.f32(i32 35, float %3039, float %3013)  ; FMax(a,b)
  %3057 = call float @dx.op.dot3.f32(i32 55, float %3037, float %3038, float %3039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3058 = select i1 %196, float %3013, float %3037
  %3059 = select i1 %196, float %3057, float %3038
  %3060 = select i1 %196, float 1.000000e+00, float %3039
  %3061 = select i1 %3053, float %3054, float %3058
  %3062 = select i1 %3053, float %3055, float %3059
  %3063 = select i1 %3053, float %3056, float %3060
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.CBufRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.CBufRet.f32 %3064, 2
  %3068 = fadd fast float %3065, %125
  %3069 = fadd fast float %3066, %126
  %3070 = fadd fast float %3067, %127
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 0
  %3073 = extractvalue %dx.types.CBufRet.f32 %3071, 1
  %3074 = fsub fast float %3068, %3072
  %3075 = fsub fast float %3069, %3073
  %3076 = fmul fast float %3074, %3074
  %3077 = fmul fast float %3075, %3075
  %3078 = fadd fast float %3076, %3077
  %3079 = call float @dx.op.unary.f32(i32 24, float %3078)  ; Sqrt(value)
  %3080 = extractvalue %dx.types.CBufRet.f32 %3071, 2
  %3081 = fcmp fast olt float %3079, %3080
  br i1 %3081, label %3082, label %3149

; <label>:3082                                    ; preds = %2997
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.f32 %3085, 0
  %3087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3088 = extractvalue %dx.types.CBufRet.f32 %3087, 0
  %3089 = extractvalue %dx.types.CBufRet.f32 %3083, 1
  %3090 = extractvalue %dx.types.CBufRet.f32 %3085, 1
  %3091 = extractvalue %dx.types.CBufRet.f32 %3087, 1
  %3092 = extractvalue %dx.types.CBufRet.f32 %3083, 3
  %3093 = extractvalue %dx.types.CBufRet.f32 %3085, 3
  %3094 = extractvalue %dx.types.CBufRet.f32 %3087, 3
  %3095 = fadd fast float %3092, %3068
  %3096 = fadd fast float %3093, %3069
  %3097 = fadd fast float %3094, %3070
  %3098 = fmul fast float %3095, %3084
  %3099 = call float @dx.op.tertiary.f32(i32 46, float %3096, float %3086, float %3098)  ; FMad(a,b,c)
  %3100 = call float @dx.op.tertiary.f32(i32 46, float %3097, float %3088, float %3099)  ; FMad(a,b,c)
  %3101 = fmul fast float %3095, %3089
  %3102 = call float @dx.op.tertiary.f32(i32 46, float %3096, float %3090, float %3101)  ; FMad(a,b,c)
  %3103 = call float @dx.op.tertiary.f32(i32 46, float %3097, float %3091, float %3102)  ; FMad(a,b,c)
  %3104 = fsub fast float %3100, %3092
  %3105 = fsub fast float %3103, %3093
  %3106 = fsub fast float %3104, %3072
  %3107 = fadd fast float %3106, %3080
  %3108 = fsub fast float %3105, %3073
  %3109 = fadd fast float %3108, %3080
  %3110 = extractvalue %dx.types.CBufRet.f32 %3071, 3
  %3111 = fmul fast float %3107, %3110
  %3112 = fmul fast float %3109, %3110
  %3113 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3114 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3115 = fsub fast float 1.000000e+00, %3113
  %3116 = fsub fast float 1.000000e+00, %3114
  %3117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3115, float %3116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = fcmp fast ugt float %3118, 0.000000e+00
  br i1 %3119, label %3120, label %3423

; <label>:3120                                    ; preds = %3082
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 2
  %3123 = fmul fast float %3122, %3118
  %3124 = extractvalue %dx.types.CBufRet.f32 %3121, 3
  %3125 = fadd fast float %3124, %3123
  %3126 = extractvalue %dx.types.CBufRet.f32 %3087, 2
  %3127 = fadd fast float %3125, %3094
  %3128 = fmul fast float %3100, %3088
  %3129 = call float @dx.op.tertiary.f32(i32 46, float %3103, float %3091, float %3128)  ; FMad(a,b,c)
  %3130 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3126, float %3129)  ; FMad(a,b,c)
  %3131 = fsub fast float %3130, %3094
  %3132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.f32 %3132, 2
  %3134 = fsub fast float %3131, %3133
  %3135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3115, float %3116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.ResRet.f32 %3135, 2
  %3139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3115, float %3116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3140 = extractvalue %dx.types.ResRet.f32 %3139, 0
  %3141 = extractvalue %dx.types.ResRet.f32 %3139, 1
  %3142 = extractvalue %dx.types.ResRet.f32 %3139, 2
  %3143 = fadd fast float %3140, %3136
  %3144 = fmul fast float %3143, 0x3F847AE140000000
  %3145 = fadd fast float %3141, %3137
  %3146 = fmul fast float %3145, 0x3F847AE140000000
  %3147 = fadd fast float %3142, %3138
  %3148 = fmul fast float %3147, 0x3F847AE140000000
  br label %3423

; <label>:3149                                    ; preds = %2997
  %3150 = and i32 %172, 1
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3423, label %3152

; <label>:3152                                    ; preds = %3149
  %3153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3153, 0
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 0
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.CBufRet.f32 %3153, 1
  %3160 = extractvalue %dx.types.CBufRet.f32 %3155, 1
  %3161 = extractvalue %dx.types.CBufRet.f32 %3157, 1
  %3162 = extractvalue %dx.types.CBufRet.f32 %3153, 3
  %3163 = extractvalue %dx.types.CBufRet.f32 %3155, 3
  %3164 = extractvalue %dx.types.CBufRet.f32 %3157, 3
  %3165 = fadd fast float %3162, %3068
  %3166 = fadd fast float %3163, %3069
  %3167 = fadd fast float %3164, %3070
  %3168 = fmul fast float %3165, %3154
  %3169 = call float @dx.op.tertiary.f32(i32 46, float %3166, float %3156, float %3168)  ; FMad(a,b,c)
  %3170 = call float @dx.op.tertiary.f32(i32 46, float %3167, float %3158, float %3169)  ; FMad(a,b,c)
  %3171 = fmul fast float %3165, %3159
  %3172 = call float @dx.op.tertiary.f32(i32 46, float %3166, float %3160, float %3171)  ; FMad(a,b,c)
  %3173 = call float @dx.op.tertiary.f32(i32 46, float %3167, float %3161, float %3172)  ; FMad(a,b,c)
  %3174 = fsub fast float %3170, %3162
  %3175 = fsub fast float %3173, %3163
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.CBufRet.f32 %3176, 1
  %3179 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3180 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.i32 %3183, 0
  %3185 = extractvalue %dx.types.CBufRet.i32 %3183, 1
  %3186 = udiv i32 %3185, %3184
  %3187 = fsub fast float %3174, %3177
  %3188 = fsub fast float %3175, %3178
  %3189 = call float @dx.op.binary.f32(i32 35, float %3187, float 0.000000e+00)  ; FMax(a,b)
  %3190 = call float @dx.op.binary.f32(i32 35, float %3188, float 0.000000e+00)  ; FMax(a,b)
  %3191 = call float @dx.op.binary.f32(i32 36, float %3189, float %3179)  ; FMin(a,b)
  %3192 = call float @dx.op.binary.f32(i32 36, float %3190, float %3180)  ; FMin(a,b)
  %3193 = add i32 %3184, -1
  %3194 = add i32 %3186, -1
  %3195 = fmul fast float %3191, %3182
  %3196 = fmul fast float %3192, %3182
  %3197 = fptoui float %3195 to i32
  %3198 = fptoui float %3196 to i32
  %3199 = call i32 @dx.op.binary.i32(i32 40, i32 %3197, i32 %3193)  ; UMin(a,b)
  %3200 = call i32 @dx.op.binary.i32(i32 40, i32 %3198, i32 %3194)  ; UMin(a,b)
  %3201 = mul i32 %3200, %3184
  %3202 = add i32 %3201, %3199
  %3203 = shl i32 %3202, 2
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = icmp eq i32 %3205, -1
  br i1 %3206, label %3423, label %3207

; <label>:3207                                    ; preds = %3152
  %3208 = mul i32 %3205, 148
  %3209 = add i32 %3208, 4
  %3210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.f32 %3210, 0
  %3212 = add i32 %3208, 8
  %3213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = add i32 %3208, 36
  %3216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.f32 %3216, 0
  %3218 = add i32 %3208, 60
  %3219 = add i32 %3208, 92
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = add i32 %3208, 116
  %3223 = fsub fast float %3174, %3211
  %3224 = fsub fast float %3175, %3214
  %3225 = fmul fast float %3182, %3223
  %3226 = fmul fast float %3182, %3224
  %3227 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3228 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  %3229 = fsub fast float 1.000000e+00, %3228
  %3230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3231 = extractvalue %dx.types.CBufRet.f32 %3230, 2
  %3232 = call float @dx.op.unary.f32(i32 83, float %3227)  ; DerivCoarseX(value)
  %3233 = call float @dx.op.unary.f32(i32 83, float %3229)  ; DerivCoarseX(value)
  %3234 = call float @dx.op.unary.f32(i32 84, float %3227)  ; DerivCoarseY(value)
  %3235 = call float @dx.op.unary.f32(i32 84, float %3229)  ; DerivCoarseY(value)
  %3236 = fmul fast float %3232, %3231
  %3237 = fmul fast float %3233, %3231
  %3238 = fmul fast float %3234, %3231
  %3239 = fmul fast float %3235, %3231
  %3240 = call float @dx.op.dot2.f32(i32 54, float %3238, float %3239, float %3238, float %3239)  ; Dot2(ax,ay,bx,by)
  %3241 = call float @dx.op.dot2.f32(i32 54, float %3236, float %3237, float %3236, float %3237)  ; Dot2(ax,ay,bx,by)
  %3242 = call float @dx.op.binary.f32(i32 35, float %3241, float %3240)  ; FMax(a,b)
  %3243 = call float @dx.op.unary.f32(i32 23, float %3242)  ; Log(value)
  %3244 = fmul fast float %3243, 5.000000e-01
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 1
  %3247 = fadd fast float %3246, %3244
  %3248 = call float @dx.op.binary.f32(i32 35, float %3247, float 0.000000e+00)  ; FMax(a,b)
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 3
  %3251 = fadd fast float %3250, %3248
  %3252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3252, 3
  %3254 = fadd fast float %3251, %3253
  %3255 = add i32 %3221, 0
  %3256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3256, i32 0)  ; GetDimensions(handle,mipLevel)
  %3258 = extractvalue %dx.types.Dimensions %3257, 0
  %3259 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3258)  ; FirstbitLo(value)
  %3260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.i32 %3260, 1
  %3262 = sub nsw i32 %3261, %3259
  %3263 = sitofp i32 %3262 to float
  %3264 = fsub fast float %3254, %3263
  %3265 = call float @dx.op.binary.f32(i32 35, float %3264, float 0.000000e+00)  ; FMax(a,b)
  %3266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3256, %dx.types.Handle %37, float %3227, float %3229, float %3217, float undef, i32 0, i32 0, i32 undef, float %3265)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = fcmp ule float %3267, 0x3FE0101020000000
  %3269 = extractvalue %dx.types.CBufRet.i32 %3260, 0
  %3270 = and i32 %3269, 128
  %3271 = icmp ne i32 %3270, 0
  %3272 = and i1 %3268, %3271
  br i1 %3272, label %3423, label %3273

; <label>:3273                                    ; preds = %3207
  %3274 = add i32 %3208, 20
  %3275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = add i32 %3208, 24
  %3278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.f32 %3278, 0
  %3280 = add i32 %3208, 40
  %3281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.f32 %3281, 0
  %3283 = add i32 %3208, 96
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.f32 %3286, 2
  %3288 = fmul fast float %3287, %3227
  %3289 = fmul fast float %3287, %3229
  %3290 = extractvalue %dx.types.CBufRet.f32 %3286, 3
  %3291 = fadd fast float %3288, %3290
  %3292 = fadd fast float %3289, %3290
  %3293 = add i32 %3285, 0
  %3294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3293, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3294, i32 0)  ; GetDimensions(handle,mipLevel)
  %3296 = extractvalue %dx.types.Dimensions %3295, 0
  %3297 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3296)  ; FirstbitLo(value)
  %3298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.i32 %3298, 1
  %3300 = sub nsw i32 %3299, %3297
  %3301 = sitofp i32 %3300 to float
  %3302 = fsub fast float %3251, %3301
  %3303 = call float @dx.op.binary.f32(i32 35, float %3302, float 0.000000e+00)  ; FMax(a,b)
  %3304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3294, %dx.types.Handle %37, float %3291, float %3292, float %3282, float undef, i32 0, i32 0, i32 undef, float %3303)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = fmul fast float %3305, %3276
  %3307 = fadd fast float %3306, %3279
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.CBufRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.CBufRet.f32 %3308, 2
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 3
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 3
  %3316 = extractvalue %dx.types.CBufRet.f32 %3308, 3
  %3317 = fadd fast float %3313, %3174
  %3318 = fadd fast float %3315, %3175
  %3319 = fadd fast float %3307, %3316
  %3320 = fmul fast float %3317, %3309
  %3321 = call float @dx.op.tertiary.f32(i32 46, float %3318, float %3310, float %3320)  ; FMad(a,b,c)
  %3322 = call float @dx.op.tertiary.f32(i32 46, float %3319, float %3311, float %3321)  ; FMad(a,b,c)
  %3323 = fsub fast float %3322, %3316
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 2
  %3326 = fsub fast float %3323, %3325
  %3327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.i32 %3327, 0
  %3329 = call i32 @dx.op.binary.i32(i32 40, i32 %3205, i32 %3328)  ; UMin(a,b)
  %3330 = mul i32 %3329, 36
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = add i32 %3330, 4
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = fmul fast float %3335, %3227
  %3337 = fmul fast float %3335, %3229
  %3338 = extractvalue %dx.types.CBufRet.f32 %3334, 1
  %3339 = fadd fast float %3336, %3338
  %3340 = fadd fast float %3337, %3338
  %3341 = icmp eq i32 %3332, 0
  br i1 %3341, label %3410, label %3342

; <label>:3342                                    ; preds = %3273
  br label %3343

; <label>:3343                                    ; preds = %3400, %3342
  %3344 = phi float [ %3401, %3400 ], [ 0.000000e+00, %3342 ]
  %3345 = phi float [ %3402, %3400 ], [ 0.000000e+00, %3342 ]
  %3346 = phi float [ %3403, %3400 ], [ 0.000000e+00, %3342 ]
  %3347 = phi float [ %3404, %3400 ], [ 0.000000e+00, %3342 ]
  %3348 = phi float [ %3405, %3400 ], [ 0.000000e+00, %3342 ]
  %3349 = phi float [ %3406, %3400 ], [ 0.000000e+00, %3342 ]
  %3350 = phi i32 [ %3407, %3400 ], [ 0, %3342 ]
  %3351 = shl i32 %3350, 2
  %3352 = add i32 %3218, %3351
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = add i32 %3222, %3351
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = add i32 %3357, 0
  %3359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3360 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3359, i32 0)  ; GetDimensions(handle,mipLevel)
  %3361 = extractvalue %dx.types.Dimensions %3360, 0
  %3362 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3361)  ; FirstbitLo(value)
  %3363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3364 = extractvalue %dx.types.CBufRet.i32 %3363, 1
  %3365 = sub nsw i32 %3364, %3362
  %3366 = sitofp i32 %3365 to float
  %3367 = fsub fast float %3251, %3366
  %3368 = call float @dx.op.binary.f32(i32 35, float %3367, float 0.000000e+00)  ; FMax(a,b)
  %3369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3359, %dx.types.Handle %37, float %3339, float %3340, float %3354, float undef, i32 0, i32 0, i32 undef, float %3368)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = fcmp fast ogt float %3370, 0.000000e+00
  br i1 %3371, label %3372, label %3400

; <label>:3372                                    ; preds = %3343
  %3373 = add i32 %3333, %3351
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 32767
  %3377 = mul nuw nsw i32 %3376, 928
  %3378 = add nuw nsw i32 %3377, 48
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = add nuw nsw i32 %3377, 60
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = fmul fast float %3380, %3370
  %3389 = fmul fast float %3381, %3370
  %3390 = fmul fast float %3382, %3370
  %3391 = fadd fast float %3388, %3344
  %3392 = fadd fast float %3389, %3345
  %3393 = fadd fast float %3390, %3346
  %3394 = fmul fast float %3385, %3370
  %3395 = fmul fast float %3386, %3370
  %3396 = fmul fast float %3387, %3370
  %3397 = fadd fast float %3394, %3347
  %3398 = fadd fast float %3395, %3348
  %3399 = fadd fast float %3396, %3349
  br label %3400

; <label>:3400                                    ; preds = %3372, %3343
  %3401 = phi float [ %3391, %3372 ], [ %3344, %3343 ]
  %3402 = phi float [ %3392, %3372 ], [ %3345, %3343 ]
  %3403 = phi float [ %3393, %3372 ], [ %3346, %3343 ]
  %3404 = phi float [ %3397, %3372 ], [ %3347, %3343 ]
  %3405 = phi float [ %3398, %3372 ], [ %3348, %3343 ]
  %3406 = phi float [ %3399, %3372 ], [ %3349, %3343 ]
  %3407 = add nuw i32 %3350, 1
  %3408 = icmp eq i32 %3407, %3332
  br i1 %3408, label %3409, label %3343

; <label>:3409                                    ; preds = %3400
  br label %3410

; <label>:3410                                    ; preds = %3409, %3273
  %3411 = phi float [ 0.000000e+00, %3273 ], [ %3401, %3409 ]
  %3412 = phi float [ 0.000000e+00, %3273 ], [ %3402, %3409 ]
  %3413 = phi float [ 0.000000e+00, %3273 ], [ %3403, %3409 ]
  %3414 = phi float [ 0.000000e+00, %3273 ], [ %3404, %3409 ]
  %3415 = phi float [ 0.000000e+00, %3273 ], [ %3405, %3409 ]
  %3416 = phi float [ 0.000000e+00, %3273 ], [ %3406, %3409 ]
  %3417 = fadd fast float %3414, %3411
  %3418 = fmul fast float %3417, 0x3F847AE140000000
  %3419 = fadd fast float %3415, %3412
  %3420 = fmul fast float %3419, 0x3F847AE140000000
  %3421 = fadd fast float %3416, %3413
  %3422 = fmul fast float %3421, 0x3F847AE140000000
  br label %3423

; <label>:3423                                    ; preds = %3410, %3207, %3152, %3149, %3120, %3082
  %3424 = phi float [ %3134, %3120 ], [ -1.310720e+05, %3082 ], [ %3326, %3410 ], [ -1.310720e+05, %3152 ], [ -1.310720e+05, %3207 ], [ -1.310720e+05, %3149 ]
  %3425 = phi float [ %3144, %3120 ], [ 0.000000e+00, %3082 ], [ %3418, %3410 ], [ 0.000000e+00, %3152 ], [ 0.000000e+00, %3207 ], [ 0.000000e+00, %3149 ]
  %3426 = phi float [ %3146, %3120 ], [ 0.000000e+00, %3082 ], [ %3420, %3410 ], [ 0.000000e+00, %3152 ], [ 0.000000e+00, %3207 ], [ 0.000000e+00, %3149 ]
  %3427 = phi float [ %3148, %3120 ], [ 0.000000e+00, %3082 ], [ %3422, %3410 ], [ 0.000000e+00, %3152 ], [ 0.000000e+00, %3207 ], [ 0.000000e+00, %3149 ]
  %3428 = phi i1 [ true, %3120 ], [ false, %3082 ], [ true, %3410 ], [ false, %3152 ], [ false, %3207 ], [ false, %3149 ]
  %3429 = and i32 %172, 3
  %3430 = icmp eq i32 %3429, 1
  %3431 = select i1 %3430, float 1.000000e+00, float 0.000000e+00
  %3432 = fsub fast float %3424, %127
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3434 = select i1 %3428, float %3433, float 1.000000e+00
  %3435 = fmul fast float %3434, %3431
  %3436 = icmp eq i32 %3429, 3
  %3437 = select i1 %3436, float 1.000000e+00, float %3435
  %3438 = call float @dx.op.binary.f32(i32 35, float %2998, float %3437)  ; FMax(a,b)
  %3439 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3440 = fcmp fast une float %3439, 0.000000e+00
  %3441 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3442 = call float @dx.op.unary.f32(i32 25, float %3441)  ; Rsqrt(value)
  br i1 %3440, label %3450, label %3443

; <label>:3443                                    ; preds = %3423
  %3444 = fmul fast float %3442, %125
  %3445 = fmul fast float %3442, %126
  %3446 = fmul fast float %3442, %127
  %3447 = fsub fast float -0.000000e+00, %3444
  %3448 = fsub fast float -0.000000e+00, %3445
  %3449 = fsub fast float -0.000000e+00, %3446
  br label %3618

; <label>:3450                                    ; preds = %3423
  %3451 = fmul fast float %125, %3442
  %3452 = fsub fast float -0.000000e+00, %3451
  %3453 = fmul fast float %126, %3442
  %3454 = fsub fast float -0.000000e+00, %3453
  %3455 = fmul fast float %127, %3442
  %3456 = fsub fast float -0.000000e+00, %3455
  %3457 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3454, float %3456, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %3458 = fmul fast float %3439, 2.500000e+00
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = fmul fast float %3439, 0x4013FFFFE0000000
  %3461 = fadd fast float %3460, 0xBFFFFFFFE0000000
  %3462 = call float @dx.op.unary.f32(i32 7, float %3461)  ; Saturate(value)
  %3463 = fmul fast float %3439, 0x4004000020000000
  %3464 = fadd fast float %3463, 0xBFF8000040000000
  %3465 = call float @dx.op.unary.f32(i32 7, float %3464)  ; Saturate(value)
  %3466 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3467 = fmul fast float %3028, 1.000000e+01
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3469 = fmul fast float %3468, 2.000000e+00
  %3470 = fsub fast float 3.000000e+00, %3469
  %3471 = fmul fast float %3468, %3468
  %3472 = fmul fast float %3471, %3470
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fsub fast float 0x3FE3333340000000, %3049
  %3475 = fmul fast float %3474, 0x400AAAAAA0000000
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3477 = fmul fast float %3473, %3476
  %3478 = fmul fast float %3061, 0x3FEA2B8620000000
  %3479 = fmul fast float %3062, 0x3FEA2B8620000000
  %3480 = fmul fast float %3063, 0x3FEA2B8620000000
  %3481 = fadd fast float %3478, 0x3FC81DFBA0000000
  %3482 = fmul fast float %3481, %3061
  %3483 = fadd fast float %3482, 0x3F910E6020000000
  %3484 = fadd fast float %3479, 0x3FC81DFBA0000000
  %3485 = fmul fast float %3484, %3062
  %3486 = fadd fast float %3485, 0x3F910E6020000000
  %3487 = fadd fast float %3480, 0x3FC81DFBA0000000
  %3488 = fmul fast float %3487, %3063
  %3489 = fadd fast float %3488, 0x3F910E6020000000
  %3490 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3491 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3492 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3493 = fsub fast float %3490, %3061
  %3494 = fsub fast float %3491, %3062
  %3495 = fsub fast float %3492, %3063
  %3496 = fmul fast float %3493, %3466
  %3497 = fmul fast float %3496, %3477
  %3498 = fmul fast float %3494, %3466
  %3499 = fmul fast float %3498, %3477
  %3500 = fmul fast float %3495, %3466
  %3501 = fmul fast float %3500, %3477
  %3502 = fadd fast float %3497, %3061
  %3503 = fadd fast float %3499, %3062
  %3504 = fadd fast float %3501, %3063
  %3505 = fmul fast float %3009, %3009
  %3506 = fmul fast float %3505, %3505
  %3507 = fadd fast float %3462, 1.000000e+00
  %3508 = fsub fast float %3507, %3477
  %3509 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3510 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  %3512 = fsub fast float 1.000000e+00, %3506
  %3513 = call float @dx.op.binary.f32(i32 36, float %3509, float %3512)  ; FMin(a,b)
  %3514 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3515 = call float @dx.op.binary.f32(i32 35, float %3513, float %3514)  ; FMax(a,b)
  %3516 = fadd fast float %3511, 0xBFE4CCCCC0000000
  %3517 = fmul fast float %3516, 0x4006DB6DA0000000
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = fmul fast float %3518, 2.000000e+00
  %3520 = fsub fast float 3.000000e+00, %3519
  %3521 = bitcast float %3046 to i32
  %3522 = ashr i32 %3521, 1
  %3523 = add nsw i32 %3522, 532487669
  %3524 = bitcast i32 %3523 to float
  %3525 = fsub fast float 1.000000e+00, %3524
  %3526 = bitcast float %3525 to i32
  %3527 = sub nsw i32 2129859010, %3526
  %3528 = bitcast i32 %3527 to float
  %3529 = fmul fast float %3528, 2.000000e+00
  %3530 = bitcast float %3047 to i32
  %3531 = ashr i32 %3530, 1
  %3532 = add nsw i32 %3531, 532487669
  %3533 = bitcast i32 %3532 to float
  %3534 = fsub fast float 1.000000e+00, %3533
  %3535 = bitcast float %3534 to i32
  %3536 = sub nsw i32 2129859010, %3535
  %3537 = bitcast i32 %3536 to float
  %3538 = fmul fast float %3537, 2.000000e+00
  %3539 = bitcast float %3048 to i32
  %3540 = ashr i32 %3539, 1
  %3541 = add nsw i32 %3540, 532487669
  %3542 = bitcast i32 %3541 to float
  %3543 = fsub fast float 1.000000e+00, %3542
  %3544 = bitcast float %3543 to i32
  %3545 = sub nsw i32 2129859010, %3544
  %3546 = bitcast i32 %3545 to float
  %3547 = fmul fast float %3546, 2.000000e+00
  %3548 = fsub fast float 0x4002A9FBE0000000, %3529
  %3549 = fadd fast float %3529, 0x3FD54FDF00000000
  %3550 = bitcast float %3549 to i32
  %3551 = sub nsw i32 2129859010, %3550
  %3552 = bitcast i32 %3551 to float
  %3553 = fmul fast float %3552, %3548
  %3554 = fmul fast float %3553, %3553
  %3555 = fsub fast float 0x4002A9FBE0000000, %3538
  %3556 = fadd fast float %3538, 0x3FD54FDF00000000
  %3557 = bitcast float %3556 to i32
  %3558 = sub nsw i32 2129859010, %3557
  %3559 = bitcast i32 %3558 to float
  %3560 = fmul fast float %3559, %3555
  %3561 = fmul fast float %3560, %3560
  %3562 = fsub fast float 0x4002A9FBE0000000, %3547
  %3563 = fadd fast float %3547, 0x3FD54FDF00000000
  %3564 = bitcast float %3563 to i32
  %3565 = sub nsw i32 2129859010, %3564
  %3566 = bitcast i32 %3565 to float
  %3567 = fmul fast float %3566, %3562
  %3568 = fmul fast float %3567, %3567
  %3569 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3554)  ; FMax(a,b)
  %3570 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3561)  ; FMax(a,b)
  %3571 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3568)  ; FMax(a,b)
  %3572 = fsub fast float 1.000000e+00, %3457
  %3573 = fadd fast float %3572, %3473
  %3574 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3575 = fsub fast float 1.000000e+00, %3437
  %3576 = fmul fast float %3515, %3575
  %3577 = fmul fast float %3518, %3518
  %3578 = fmul fast float %3577, %3576
  %3579 = fmul fast float %3578, %3520
  %3580 = fmul fast float %3575, 0xBFE99999A0000000
  %3581 = fmul fast float %3580, %3466
  %3582 = fmul fast float %3581, %3477
  %3583 = fadd fast float %3582, 1.000000e+00
  %3584 = fadd fast float %3049, -1.000000e+00
  %3585 = fmul fast float %3583, %3584
  %3586 = fadd fast float %3585, 1.000000e+00
  %3587 = fsub fast float %3569, %3046
  %3588 = fsub fast float %3570, %3047
  %3589 = fsub fast float %3571, %3048
  %3590 = fmul fast float %3579, %3587
  %3591 = fmul fast float %3579, %3588
  %3592 = fmul fast float %3579, %3589
  %3593 = fadd fast float %3590, %3046
  %3594 = fadd fast float %3591, %3047
  %3595 = fadd fast float %3592, %3048
  %3596 = fsub fast float %57, %3025
  %3597 = fsub fast float %58, %3026
  %3598 = fsub fast float %59, %3027
  %3599 = fmul fast float %3579, %3596
  %3600 = fmul fast float %3579, %3597
  %3601 = fmul fast float %3579, %3598
  %3602 = fadd fast float %3599, %3025
  %3603 = fadd fast float %3600, %3026
  %3604 = fadd fast float %3601, %3027
  %3605 = fmul fast float %3579, %3574
  %3606 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  %3607 = fsub fast float 1.000000e+00, %3606
  %3608 = fmul fast float %3605, %3607
  %3609 = fadd fast float %3608, %3606
  %3610 = fsub fast float 1.000000e+00, %3009
  %3611 = fmul fast float %3579, %3610
  %3612 = fadd fast float %3611, %3009
  %3613 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float %3602, float %3603, float %3604)  ; Dot3(ax,ay,az,bx,by,bz)
  %3614 = call float @dx.op.unary.f32(i32 25, float %3613)  ; Rsqrt(value)
  %3615 = fmul fast float %3602, %3614
  %3616 = fmul fast float %3603, %3614
  %3617 = fmul fast float %3604, %3614
  br label %3618

; <label>:3618                                    ; preds = %3450, %3443
  %3619 = phi float [ %3449, %3443 ], [ %3456, %3450 ]
  %3620 = phi float [ %3448, %3443 ], [ %3454, %3450 ]
  %3621 = phi float [ %3447, %3443 ], [ %3452, %3450 ]
  %3622 = phi float [ %3446, %3443 ], [ %3455, %3450 ]
  %3623 = phi float [ %3445, %3443 ], [ %3453, %3450 ]
  %3624 = phi float [ %3444, %3443 ], [ %3451, %3450 ]
  %3625 = phi float [ %3061, %3443 ], [ %3502, %3450 ]
  %3626 = phi float [ %3062, %3443 ], [ %3503, %3450 ]
  %3627 = phi float [ %3063, %3443 ], [ %3504, %3450 ]
  %3628 = phi float [ %3046, %3443 ], [ %3593, %3450 ]
  %3629 = phi float [ %3047, %3443 ], [ %3594, %3450 ]
  %3630 = phi float [ %3048, %3443 ], [ %3595, %3450 ]
  %3631 = phi float [ %3025, %3443 ], [ %3615, %3450 ]
  %3632 = phi float [ %3026, %3443 ], [ %3616, %3450 ]
  %3633 = phi float [ %3027, %3443 ], [ %3617, %3450 ]
  %3634 = phi float [ %3049, %3443 ], [ %3609, %3450 ]
  %3635 = phi float [ %3009, %3443 ], [ %3612, %3450 ]
  %3636 = select i1 %196, float 0.000000e+00, float %3630
  %3637 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3633, float %3621, float %3620, float %3619)  ; Dot3(ax,ay,az,bx,by,bz)
  %3638 = call float @dx.op.unary.f32(i32 7, float %3637)  ; Saturate(value)
  %3639 = call float @dx.op.dot3.f32(i32 55, float %3624, float %3623, float %3622, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %3640 = fmul fast float %3639, 2.000000e+00
  %3641 = fmul fast float %3640, %3631
  %3642 = fmul fast float %3640, %3632
  %3643 = fmul fast float %3640, %3633
  %3644 = fsub fast float %3624, %3641
  %3645 = fsub fast float %3623, %3642
  %3646 = fsub fast float %3622, %3643
  %3647 = call float @dx.op.binary.f32(i32 36, float %3635, float 1.000000e+00)  ; FMin(a,b)
  %3648 = fsub fast float 1.000000e+00, %3635
  %3649 = bitcast float %3648 to i32
  %3650 = sub nsw i32 2129859010, %3649
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.CBufRet.f32 %3651, 1
  %3654 = fadd fast float %3652, %125
  %3655 = fadd fast float %3653, %126
  %3656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.i32 %3656, 0
  %3658 = icmp eq i32 %3657, 1
  br i1 %3658, label %3659, label %3694

; <label>:3659                                    ; preds = %3618
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 1
  %3663 = fsub fast float %3654, %3661
  %3664 = fsub fast float %3655, %3662
  %3665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.CBufRet.f32 %3665, 1
  %3668 = fmul fast float %3663, %3666
  %3669 = fmul fast float %3664, %3667
  %3670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3668, float %3669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3671 = extractvalue %dx.types.ResRet.f32 %3670, 0
  %3672 = fcmp fast ogt float %3671, 0.000000e+00
  %3673 = extractvalue %dx.types.CBufRet.i32 %3656, 3
  %3674 = icmp ne i32 %3673, 0
  %3675 = and i1 %3672, %3674
  br i1 %3675, label %3676, label %3694, !dx.controlflow.hints !85

; <label>:3676                                    ; preds = %3659
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.CBufRet.f32 %3677, 1
  %3680 = fsub fast float %3654, %3678
  %3681 = fsub fast float %3655, %3679
  %3682 = fmul fast float %3680, %3680
  %3683 = fmul fast float %3681, %3681
  %3684 = fadd fast float %3682, %3683
  %3685 = uitofp i32 %3673 to float
  %3686 = fmul fast float %3685, %3685
  %3687 = fcmp fast ogt float %3684, %3686
  br i1 %3687, label %3694, label %3688

; <label>:3688                                    ; preds = %3676
  %3689 = call float @dx.op.unary.f32(i32 24, float %3684)  ; Sqrt(value)
  %3690 = fsub fast float %3685, %3689
  %3691 = fmul fast float %3690, 0x3F75555560000000
  %3692 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3693 = call float @dx.op.binary.f32(i32 36, float %3692, float %3671)  ; FMin(a,b)
  br label %3694

; <label>:3694                                    ; preds = %3688, %3676, %3659, %3618
  %3695 = phi float [ 1.000000e+00, %3618 ], [ %3693, %3688 ], [ %3671, %3659 ], [ 0.000000e+00, %3676 ]
  %3696 = fcmp fast ogt float %3695, 0.000000e+00
  br i1 %3696, label %3697, label %3795, !dx.controlflow.hints !86

; <label>:3697                                    ; preds = %3694
  %3698 = fadd fast float %156, 5.000000e-01
  %3699 = call float @dx.op.unary.f32(i32 27, float %3698)  ; Round_ni(value)
  %3700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %154, float %155, float %3699, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3701 = extractvalue %dx.types.ResRet.f32 %3700, 0
  %3702 = extractvalue %dx.types.ResRet.f32 %3700, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3700, 2
  %3704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.f32 %3704, 3
  %3706 = fmul fast float %3705, %3701
  %3707 = fmul fast float %3705, %3702
  %3708 = fmul fast float %3705, %3703
  %3709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %154, float %155, float %3699, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %154, float %155, float %3699, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.ResRet.f32 %3711, 1
  %3714 = fmul fast float %3712, 2.000000e+00
  %3715 = fmul fast float %3713, 2.000000e+00
  %3716 = fadd fast float %3714, -1.000000e+00
  %3717 = fadd fast float %3715, -1.000000e+00
  %3718 = fadd fast float %3716, %3717
  %3719 = fmul fast float %3718, 5.000000e-01
  %3720 = fsub fast float %3716, %3717
  %3721 = fmul fast float %3720, 5.000000e-01
  %3722 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3723 = fsub fast float 1.000000e+00, %3722
  %3724 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3725 = fsub fast float %3723, %3724
  %3726 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3725)  ; FMax(a,b)
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3719, float %3721, float %3726, float %3719, float %3721, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = bitcast float %3727 to i32
  %3729 = ashr i32 %3728, 1
  %3730 = sub nsw i32 1597250115, %3729
  %3731 = bitcast i32 %3730 to float
  %3732 = fmul fast float %3731, %3719
  %3733 = fmul fast float %3731, %3721
  %3734 = fmul fast float %3731, %3726
  %3735 = fsub fast float 1.000000e+00, %3710
  %3736 = fdiv fast float %3735, %3734
  %3737 = fmul fast float %3734, %57
  %3738 = fmul fast float %3734, %58
  %3739 = fmul fast float %3734, %59
  %3740 = fmul fast float %3732, %53
  %3741 = fmul fast float %3732, %54
  %3742 = fmul fast float %3732, %55
  %3743 = fadd fast float %3737, %3740
  %3744 = fadd fast float %3738, %3741
  %3745 = fadd fast float %3739, %3742
  %3746 = fmul fast float %3733, %89
  %3747 = fmul fast float %3733, %90
  %3748 = fmul fast float %3733, %91
  %3749 = fadd fast float %3743, %3746
  %3750 = fadd fast float %3744, %3747
  %3751 = fadd fast float %3745, %3748
  %3752 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3750, float %3751, float %3749, float %3750, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %3753 = call float @dx.op.unary.f32(i32 25, float %3752)  ; Rsqrt(value)
  %3754 = fmul fast float %3749, %3753
  %3755 = fmul fast float %3750, %3753
  %3756 = fmul fast float %3751, %3753
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3633, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3758, 5.000000e-01
  %3760 = fadd fast float %3759, 5.000000e-01
  %3761 = fmul fast float %3760, %3710
  %3762 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3633, float %3754, float %3755, float %3756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = fmul fast float %3763, %3736
  %3765 = fadd fast float %3761, %3764
  %3766 = fsub fast float 5.000000e-01, %3759
  %3767 = fmul fast float %3766, %3625
  %3768 = fmul fast float %3766, %3626
  %3769 = fmul fast float %3766, %3627
  %3770 = fadd fast float %3765, %3767
  %3771 = fmul fast float %3770, %3706
  %3772 = fadd fast float %3765, %3768
  %3773 = fmul fast float %3772, %3707
  %3774 = fadd fast float %3765, %3769
  %3775 = fmul fast float %3774, %3708
  %3776 = call float @dx.op.dot3.f32(i32 55, float %3644, float %3645, float %3646, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fmul fast float %3777, 5.000000e-01
  %3779 = fadd fast float %3778, 5.000000e-01
  %3780 = fmul fast float %3779, %3710
  %3781 = call float @dx.op.dot3.f32(i32 55, float %3644, float %3645, float %3646, float %3754, float %3755, float %3756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = fmul fast float %3782, %3736
  %3784 = fadd fast float %3780, %3783
  %3785 = fsub fast float 5.000000e-01, %3778
  %3786 = fmul fast float %3785, %3625
  %3787 = fmul fast float %3785, %3626
  %3788 = fmul fast float %3785, %3627
  %3789 = fadd fast float %3784, %3786
  %3790 = fmul fast float %3789, %3706
  %3791 = fadd fast float %3784, %3787
  %3792 = fmul fast float %3791, %3707
  %3793 = fadd fast float %3784, %3788
  %3794 = fmul fast float %3793, %3708
  br label %3795

; <label>:3795                                    ; preds = %3697, %3694
  %3796 = phi float [ %3790, %3697 ], [ 0.000000e+00, %3694 ]
  %3797 = phi float [ %3792, %3697 ], [ 0.000000e+00, %3694 ]
  %3798 = phi float [ %3794, %3697 ], [ 0.000000e+00, %3694 ]
  %3799 = phi float [ %3771, %3697 ], [ 0.000000e+00, %3694 ]
  %3800 = phi float [ %3773, %3697 ], [ 0.000000e+00, %3694 ]
  %3801 = phi float [ %3775, %3697 ], [ 0.000000e+00, %3694 ]
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = fcmp fast ogt float %3803, 0.000000e+00
  %3805 = and i1 %3696, %3804
  br i1 %3805, label %3806, label %4010, !dx.controlflow.hints !87

; <label>:3806                                    ; preds = %3795
  %3807 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3808 = fadd fast float %3807, %127
  %3809 = fmul fast float %3631, 3.200000e+01
  %3810 = fmul fast float %3632, 3.200000e+01
  %3811 = fadd fast float %3654, %3809
  %3812 = fadd fast float %3655, %3810
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3816 = fsub fast float %3811, %3814
  %3817 = fsub fast float %3812, %3815
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.CBufRet.f32 %3818, 1
  %3821 = fmul fast float %3816, %3819
  %3822 = fmul fast float %3817, %3820
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.CBufRet.f32 %3823, 1
  %3826 = fsub fast float %3654, %3824
  %3827 = fsub fast float %3655, %3825
  %3828 = fmul fast float %3826, %3826
  %3829 = fmul fast float %3827, %3827
  %3830 = fadd fast float %3828, %3829
  %3831 = call float @dx.op.unary.f32(i32 24, float %3830)  ; Sqrt(value)
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3835 = fsub fast float %3831, %3833
  %3836 = fdiv fast float %3835, %3834
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = fmul fast float %3837, 2.000000e+00
  %3839 = fsub fast float 3.000000e+00, %3838
  %3840 = fmul fast float %3837, %3837
  %3841 = fmul fast float %3840, %3839
  %3842 = fcmp fast oge float %3821, 0.000000e+00
  %3843 = fcmp fast ole float %3821, 1.000000e+00
  %3844 = and i1 %3843, %3842
  %3845 = fcmp fast oge float %3822, 0.000000e+00
  %3846 = and i1 %3845, %3844
  %3847 = fcmp fast ole float %3822, 1.000000e+00
  %3848 = and i1 %3847, %3846
  %3849 = fcmp fast ogt float %3841, 0.000000e+00
  %3850 = and i1 %3849, %3848
  br i1 %3850, label %3851, label %3974, !dx.controlflow.hints !88

; <label>:3851                                    ; preds = %3806
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3854 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %3855 = fmul fast float %3853, %3821
  %3856 = fmul fast float %3854, %3822
  %3857 = call float @dx.op.unary.f32(i32 27, float %3855)  ; Round_ni(value)
  %3858 = call float @dx.op.unary.f32(i32 27, float %3856)  ; Round_ni(value)
  %3859 = fptosi float %3857 to i32
  %3860 = fptosi float %3858 to i32
  %3861 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3859, i32 %3860, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3862 = extractvalue %dx.types.ResRet.i32 %3861, 0
  %3863 = lshr i32 %3862, 16
  %3864 = icmp eq i32 %3863, 65535
  br i1 %3864, label %3974, label %3865

; <label>:3865                                    ; preds = %3851
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = fmul fast float %3867, %3821
  %3869 = extractvalue %dx.types.CBufRet.f32 %3866, 1
  %3870 = fadd fast float %3868, %3869
  %3871 = extractvalue %dx.types.CBufRet.f32 %3866, 2
  %3872 = fmul fast float %3871, %3822
  %3873 = extractvalue %dx.types.CBufRet.f32 %3866, 3
  %3874 = fadd fast float %3872, %3873
  %3875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3870, float %3874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 1
  %3880 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3881 = fsub fast float %3879, %3880
  %3882 = fmul fast float %3881, %3876
  %3883 = fadd fast float %3882, %3880
  %3884 = extractvalue %dx.types.CBufRet.f32 %3878, 3
  %3885 = extractvalue %dx.types.CBufRet.f32 %3878, 2
  %3886 = fsub fast float %3884, %3885
  %3887 = fmul fast float %3886, %3877
  %3888 = fadd fast float %3887, %3885
  %3889 = fsub fast float %3808, %3883
  %3890 = fsub fast float %3888, %3883
  %3891 = fdiv fast float %3889, %3890
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3894 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3895 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3896 = fmul fast float %3894, %3821
  %3897 = fmul fast float %3895, %3822
  %3898 = fmul fast float %3896, 1.250000e-01
  %3899 = fmul fast float %3897, 1.250000e-01
  %3900 = call float @dx.op.unary.f32(i32 27, float %3898)  ; Round_ni(value)
  %3901 = call float @dx.op.unary.f32(i32 27, float %3899)  ; Round_ni(value)
  %3902 = fmul fast float %3900, 8.000000e+00
  %3903 = fmul fast float %3901, 8.000000e+00
  %3904 = fsub fast float %3896, %3902
  %3905 = fsub fast float %3897, %3903
  %3906 = fadd fast float %3904, 5.000000e-01
  %3907 = fadd fast float %3905, 5.000000e-01
  %3908 = and i32 %3863, 255
  %3909 = lshr i32 %3862, 24
  %3910 = mul nuw nsw i32 %3908, 9
  %3911 = uitofp i32 %3910 to float
  %3912 = mul nuw nsw i32 %3909, 9
  %3913 = uitofp i32 %3912 to float
  %3914 = fadd fast float %3906, %3911
  %3915 = fadd fast float %3907, %3913
  %3916 = fdiv fast float %3914, %3803
  %3917 = fdiv fast float %3915, %3893
  %3918 = fmul fast float %3892, 4.375000e-01
  %3919 = fadd fast float %3918, 3.125000e-02
  %3920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3916, float %3917, float %3919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = fadd fast float %3918, 5.312500e-01
  %3925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3916, float %3917, float %3924, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3929 = fmul fast float %3926, 2.000000e+00
  %3930 = fmul fast float %3927, 2.000000e+00
  %3931 = fmul fast float %3928, 2.000000e+00
  %3932 = fadd fast float %3929, -1.000000e+00
  %3933 = fadd fast float %3930, -1.000000e+00
  %3934 = fadd fast float %3931, -1.000000e+00
  %3935 = fmul fast float %3932, %3932
  %3936 = fmul fast float %3933, %3933
  %3937 = fadd fast float %3935, %3936
  %3938 = fmul fast float %3934, %3934
  %3939 = fadd fast float %3937, %3938
  %3940 = call float @dx.op.unary.f32(i32 24, float %3939)  ; Sqrt(value)
  %3941 = fcmp fast ogt float %3940, 0.000000e+00
  br i1 %3941, label %3942, label %3946

; <label>:3942                                    ; preds = %3865
  %3943 = fdiv fast float %3932, %3940
  %3944 = fdiv fast float %3933, %3940
  %3945 = fdiv fast float %3934, %3940
  br label %3946

; <label>:3946                                    ; preds = %3942, %3865
  %3947 = phi float [ %3943, %3942 ], [ 0.000000e+00, %3865 ]
  %3948 = phi float [ %3944, %3942 ], [ 0.000000e+00, %3865 ]
  %3949 = phi float [ %3945, %3942 ], [ 0.000000e+00, %3865 ]
  %3950 = call float @dx.op.dot3.f32(i32 55, float %3947, float %3948, float %3949, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %3951 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3950)  ; FMax(a,b)
  %3952 = fmul fast float %3951, 0x400C5BF8A0000000
  %3953 = fmul fast float %3921, %3841
  %3954 = fmul fast float %3953, %3952
  %3955 = fmul fast float %3922, %3841
  %3956 = fmul fast float %3955, %3952
  %3957 = fmul fast float %3923, %3841
  %3958 = fmul fast float %3957, %3952
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 3
  %3961 = fmul fast float %3954, %3960
  %3962 = fmul fast float %3956, %3960
  %3963 = fmul fast float %3958, %3960
  %3964 = fcmp fast ogt float %3808, %3888
  br i1 %3964, label %3965, label %3974

; <label>:3965                                    ; preds = %3946
  %3966 = fmul fast float %3890, 0x3FC24924A0000000
  %3967 = fsub fast float %3808, %3888
  %3968 = fdiv fast float %3967, %3966
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = fsub fast float 1.000000e+00, %3969
  %3971 = fmul fast float %3970, %3961
  %3972 = fmul fast float %3970, %3962
  %3973 = fmul fast float %3970, %3963
  br label %3974

; <label>:3974                                    ; preds = %3965, %3946, %3851, %3806
  %3975 = phi float [ %3973, %3965 ], [ %3963, %3946 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3806 ]
  %3976 = phi float [ %3972, %3965 ], [ %3962, %3946 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3806 ]
  %3977 = phi float [ %3971, %3965 ], [ %3961, %3946 ], [ 0.000000e+00, %3851 ], [ 0.000000e+00, %3806 ]
  %3978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3977)  ; FMax(a,b)
  %3979 = fmul fast float %3978, 0x3FD20DD760000000
  %3980 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3644, float %3645, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = fmul fast float %3980, 0x3FDF454380000000
  %3982 = fmul fast float %3980, %3980
  %3983 = fmul fast float %3982, 0x3FEE471020000000
  %3984 = fadd fast float %3983, 0xBFD42F6020000000
  %3985 = call float @dx.op.dot3.f32(i32 55, float %3978, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3981, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3976)  ; FMax(a,b)
  %3987 = fmul fast float %3986, 0x3FD20DD760000000
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3986, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3981, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3975)  ; FMax(a,b)
  %3990 = fmul fast float %3989, 0x3FD20DD760000000
  %3991 = call float @dx.op.dot3.f32(i32 55, float %3989, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3981, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3992 = call float @dx.op.binary.f32(i32 35, float %3979, float 0.000000e+00)  ; FMax(a,b)
  %3993 = call float @dx.op.binary.f32(i32 35, float %3987, float 0.000000e+00)  ; FMax(a,b)
  %3994 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %3995 = call float @dx.op.binary.f32(i32 35, float %3985, float 0.000000e+00)  ; FMax(a,b)
  %3996 = call float @dx.op.binary.f32(i32 35, float %3988, float 0.000000e+00)  ; FMax(a,b)
  %3997 = call float @dx.op.binary.f32(i32 35, float %3991, float 0.000000e+00)  ; FMax(a,b)
  %3998 = fmul fast float %3992, %3695
  %3999 = fmul fast float %3993, %3695
  %4000 = fmul fast float %3994, %3695
  %4001 = fadd fast float %3998, %3799
  %4002 = fadd fast float %3999, %3800
  %4003 = fadd fast float %4000, %3801
  %4004 = fmul fast float %3995, %3695
  %4005 = fmul fast float %3996, %3695
  %4006 = fmul fast float %3997, %3695
  %4007 = fadd fast float %4004, %3796
  %4008 = fadd fast float %4005, %3797
  %4009 = fadd fast float %4006, %3798
  br label %4010

; <label>:4010                                    ; preds = %3974, %3795
  %4011 = phi float [ %4007, %3974 ], [ %3796, %3795 ]
  %4012 = phi float [ %4008, %3974 ], [ %3797, %3795 ]
  %4013 = phi float [ %4009, %3974 ], [ %3798, %3795 ]
  %4014 = phi float [ %4001, %3974 ], [ %3799, %3795 ]
  %4015 = phi float [ %4002, %3974 ], [ %3800, %3795 ]
  %4016 = phi float [ %4003, %3974 ], [ %3801, %3795 ]
  %4017 = fcmp fast olt float %3695, 1.000000e+00
  br i1 %4017, label %4018, label %4836, !dx.controlflow.hints !89

; <label>:4018                                    ; preds = %4010
  %4019 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %4020 = fadd fast float %4019, %127
  %4021 = fmul fast float %3631, 3.200000e+01
  %4022 = fmul fast float %3632, 3.200000e+01
  %4023 = fadd fast float %3654, %4021
  %4024 = fadd fast float %3655, %4022
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4028 = fsub fast float %4023, %4026
  %4029 = fsub fast float %4024, %4027
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.CBufRet.f32 %4030, 1
  %4033 = fmul fast float %4028, %4031
  %4034 = fmul fast float %4029, %4032
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = fmul fast float %4033, %4036
  %4038 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4039 = fadd fast float %4037, %4038
  %4040 = extractvalue %dx.types.CBufRet.f32 %4035, 2
  %4041 = fmul fast float %4040, %4034
  %4042 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4043 = fadd fast float %4041, %4042
  %4044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4039, float %4043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4049 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4050 = fsub fast float %4048, %4049
  %4051 = fmul fast float %4050, %4045
  %4052 = fadd fast float %4051, %4049
  %4053 = extractvalue %dx.types.CBufRet.f32 %4047, 3
  %4054 = extractvalue %dx.types.CBufRet.f32 %4047, 2
  %4055 = fsub fast float %4053, %4054
  %4056 = fmul fast float %4055, %4046
  %4057 = fadd fast float %4056, %4054
  %4058 = fsub fast float %4020, %4052
  %4059 = fsub fast float %4057, %4052
  %4060 = fdiv fast float %4058, %4059
  %4061 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = fmul fast float %4063, %4061
  %4065 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4066 = fadd fast float %4064, %4065
  %4067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4039, float %4043, float %4066, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4075 = fmul fast float %4072, %4068
  %4076 = fmul fast float %4073, %4069
  %4077 = fmul fast float %4074, %4070
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4078, 2
  %4082 = fadd fast float %4075, %4079
  %4083 = fadd fast float %4076, %4080
  %4084 = fadd fast float %4077, %4081
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 0
  %4087 = fmul fast float %4086, %4033
  %4088 = extractvalue %dx.types.CBufRet.f32 %4085, 1
  %4089 = fadd fast float %4087, %4088
  %4090 = extractvalue %dx.types.CBufRet.f32 %4085, 2
  %4091 = fmul fast float %4090, %4034
  %4092 = extractvalue %dx.types.CBufRet.f32 %4085, 3
  %4093 = fadd fast float %4091, %4092
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.CBufRet.f32 %4094, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %4094, 2
  %4098 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.CBufRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4103 = extractvalue %dx.types.CBufRet.f32 %4099, 3
  %4104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4089, float %4093, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = extractvalue %dx.types.ResRet.f32 %4104, 3
  %4109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4089, float %4093, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = extractvalue %dx.types.ResRet.f32 %4109, 3
  %4114 = fmul fast float %4105, %4082
  %4115 = fmul fast float %4110, %4082
  %4116 = fmul fast float %4112, %4082
  %4117 = fmul fast float %4108, %4082
  %4118 = fadd fast float %4114, %4095
  %4119 = fadd fast float %4115, %4096
  %4120 = fadd fast float %4116, %4097
  %4121 = fadd fast float %4117, %4098
  %4122 = fmul fast float %4106, %4082
  %4123 = fmul fast float %4111, %4082
  %4124 = fadd fast float %4122, %4100
  %4125 = fadd fast float %4123, %4101
  %4126 = fmul fast float %4107, %4082
  %4127 = fmul fast float %4113, %4082
  %4128 = fadd fast float %4126, %4102
  %4129 = fadd fast float %4127, %4103
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4089, float %4093, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = extractvalue %dx.types.ResRet.f32 %4130, 3
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4089, float %4093, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = extractvalue %dx.types.ResRet.f32 %4135, 3
  %4140 = fmul fast float %4131, %4083
  %4141 = fmul fast float %4136, %4083
  %4142 = fmul fast float %4138, %4083
  %4143 = fmul fast float %4134, %4083
  %4144 = fadd fast float %4118, %4140
  %4145 = fadd fast float %4119, %4141
  %4146 = fadd fast float %4120, %4142
  %4147 = fadd fast float %4121, %4143
  %4148 = fmul fast float %4132, %4083
  %4149 = fmul fast float %4137, %4083
  %4150 = fadd fast float %4124, %4148
  %4151 = fadd fast float %4125, %4149
  %4152 = fmul fast float %4133, %4083
  %4153 = fmul fast float %4139, %4083
  %4154 = fadd fast float %4128, %4152
  %4155 = fadd fast float %4129, %4153
  %4156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4089, float %4093, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.ResRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.ResRet.f32 %4156, 2
  %4160 = extractvalue %dx.types.ResRet.f32 %4156, 3
  %4161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4089, float %4093, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.ResRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.ResRet.f32 %4161, 2
  %4165 = extractvalue %dx.types.ResRet.f32 %4161, 3
  %4166 = fmul fast float %4157, %4084
  %4167 = fmul fast float %4162, %4084
  %4168 = fmul fast float %4164, %4084
  %4169 = fmul fast float %4160, %4084
  %4170 = fadd fast float %4144, %4166
  %4171 = fadd fast float %4145, %4167
  %4172 = fadd fast float %4146, %4168
  %4173 = fadd fast float %4147, %4169
  %4174 = fmul fast float %4158, %4084
  %4175 = fmul fast float %4163, %4084
  %4176 = fadd fast float %4150, %4174
  %4177 = fadd fast float %4151, %4175
  %4178 = fmul fast float %4159, %4084
  %4179 = fmul fast float %4165, %4084
  %4180 = fadd fast float %4154, %4178
  %4181 = fadd fast float %4155, %4179
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 0
  %4184 = fsub fast float %3654, %4183
  %4185 = fsub fast float %4026, %3654
  %4186 = call float @dx.op.binary.f32(i32 35, float %4185, float %4184)  ; FMax(a,b)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4182, 1
  %4188 = fsub fast float %3655, %4187
  %4189 = fsub fast float %4027, %3655
  %4190 = call float @dx.op.binary.f32(i32 35, float %4189, float %4188)  ; FMax(a,b)
  %4191 = call float @dx.op.binary.f32(i32 35, float %4186, float %4190)  ; FMax(a,b)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4030, 3
  %4193 = fmul fast float %4192, %4191
  %4194 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.CBufRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.CBufRet.f32 %4195, 3
  %4200 = fsub fast float %4196, %4170
  %4201 = fsub fast float %4197, %4171
  %4202 = fsub fast float %4198, %4172
  %4203 = fsub fast float %4199, %4173
  %4204 = fmul fast float %4200, %4194
  %4205 = fmul fast float %4201, %4194
  %4206 = fmul fast float %4202, %4194
  %4207 = fmul fast float %4203, %4194
  %4208 = fadd fast float %4204, %4170
  %4209 = fadd fast float %4205, %4171
  %4210 = fadd fast float %4206, %4172
  %4211 = fadd fast float %4207, %4173
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4215 = fsub fast float %4213, %4176
  %4216 = fsub fast float %4214, %4177
  %4217 = fmul fast float %4215, %4194
  %4218 = fmul fast float %4216, %4194
  %4219 = fadd fast float %4217, %4176
  %4220 = fadd fast float %4218, %4177
  %4221 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4222 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4223 = fsub fast float %4221, %4180
  %4224 = fsub fast float %4222, %4181
  %4225 = fmul fast float %4223, %4194
  %4226 = fmul fast float %4224, %4194
  %4227 = fadd fast float %4225, %4180
  %4228 = fadd fast float %4226, %4181
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = fmul fast float %4230, %4208
  %4232 = fmul fast float %4230, %4209
  %4233 = fmul fast float %4230, %4210
  %4234 = fmul fast float %4230, %4211
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4237 = fmul fast float %4236, %4219
  %4238 = fmul fast float %4236, %4220
  %4239 = fadd fast float %4237, %4231
  %4240 = fadd fast float %4238, %4233
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 0
  %4243 = fmul fast float %4242, %4227
  %4244 = fmul fast float %4242, %4228
  %4245 = fadd fast float %4239, %4243
  %4246 = fadd fast float %4240, %4244
  %4247 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4248 = fmul fast float %4247, %4208
  %4249 = fmul fast float %4247, %4209
  %4250 = fmul fast float %4247, %4210
  %4251 = fmul fast float %4247, %4211
  %4252 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4253 = fmul fast float %4252, %4219
  %4254 = fmul fast float %4252, %4220
  %4255 = fadd fast float %4253, %4248
  %4256 = fadd fast float %4254, %4250
  %4257 = extractvalue %dx.types.CBufRet.f32 %4241, 1
  %4258 = fmul fast float %4257, %4227
  %4259 = fmul fast float %4257, %4228
  %4260 = fadd fast float %4255, %4258
  %4261 = fadd fast float %4256, %4259
  %4262 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4263 = fmul fast float %4262, %4208
  %4264 = fmul fast float %4262, %4209
  %4265 = fmul fast float %4262, %4210
  %4266 = fmul fast float %4262, %4211
  %4267 = extractvalue %dx.types.CBufRet.f32 %4235, 2
  %4268 = fmul fast float %4267, %4219
  %4269 = fmul fast float %4267, %4220
  %4270 = fadd fast float %4268, %4263
  %4271 = fadd fast float %4269, %4265
  %4272 = extractvalue %dx.types.CBufRet.f32 %4241, 2
  %4273 = fmul fast float %4272, %4227
  %4274 = fmul fast float %4272, %4228
  %4275 = fadd fast float %4270, %4273
  %4276 = fadd fast float %4271, %4274
  %4277 = fmul fast float %4264, %4264
  %4278 = fmul fast float %4276, %4276
  %4279 = fmul fast float %4266, %4266
  %4280 = fadd fast float %4279, %4277
  %4281 = fadd fast float %4280, %4278
  %4282 = call float @dx.op.unary.f32(i32 24, float %4281)  ; Sqrt(value)
  %4283 = fcmp fast ugt float %4282, 0.000000e+00
  br i1 %4283, label %4284, label %4299

; <label>:4284                                    ; preds = %4018
  %4285 = fsub fast float -0.000000e+00, %4266
  %4286 = fdiv fast float %4285, %4282
  %4287 = fsub fast float -0.000000e+00, %4264
  %4288 = fdiv fast float %4287, %4282
  %4289 = fdiv fast float %4276, %4282
  %4290 = fmul fast float %4275, 0x3FE279A760000000
  %4291 = fmul fast float %4288, %4264
  %4292 = fmul fast float %4289, %4276
  %4293 = fmul fast float %4286, %4266
  %4294 = fadd fast float %4291, %4293
  %4295 = fsub fast float %4294, %4292
  %4296 = call float @dx.op.unary.f32(i32 6, float %4295)  ; FAbs(value)
  %4297 = fadd fast float %4296, 0x3DDB7CDFE0000000
  %4298 = fdiv fast float %4290, %4297
  br label %4299

; <label>:4299                                    ; preds = %4284, %4018
  %4300 = phi float [ %4298, %4284 ], [ 1.000000e+00, %4018 ]
  %4301 = fmul fast float %4249, %4249
  %4302 = fmul fast float %4261, %4261
  %4303 = fmul fast float %4251, %4251
  %4304 = fadd fast float %4303, %4301
  %4305 = fadd fast float %4304, %4302
  %4306 = call float @dx.op.unary.f32(i32 24, float %4305)  ; Sqrt(value)
  %4307 = fcmp fast ugt float %4306, 0.000000e+00
  br i1 %4307, label %4308, label %4323

; <label>:4308                                    ; preds = %4299
  %4309 = fsub fast float -0.000000e+00, %4251
  %4310 = fdiv fast float %4309, %4306
  %4311 = fsub fast float -0.000000e+00, %4249
  %4312 = fdiv fast float %4311, %4306
  %4313 = fdiv fast float %4261, %4306
  %4314 = fmul fast float %4260, 0x3FE279A760000000
  %4315 = fmul fast float %4312, %4249
  %4316 = fmul fast float %4313, %4261
  %4317 = fmul fast float %4310, %4251
  %4318 = fadd fast float %4315, %4317
  %4319 = fsub fast float %4318, %4316
  %4320 = call float @dx.op.unary.f32(i32 6, float %4319)  ; FAbs(value)
  %4321 = fadd fast float %4320, 0x3DDB7CDFE0000000
  %4322 = fdiv fast float %4314, %4321
  br label %4323

; <label>:4323                                    ; preds = %4308, %4299
  %4324 = phi float [ %4322, %4308 ], [ 1.000000e+00, %4299 ]
  %4325 = call float @dx.op.binary.f32(i32 36, float %4324, float %4300)  ; FMin(a,b)
  %4326 = fmul fast float %4232, %4232
  %4327 = fmul fast float %4246, %4246
  %4328 = fmul fast float %4234, %4234
  %4329 = fadd fast float %4328, %4326
  %4330 = fadd fast float %4329, %4327
  %4331 = call float @dx.op.unary.f32(i32 24, float %4330)  ; Sqrt(value)
  %4332 = fcmp fast ugt float %4331, 0.000000e+00
  br i1 %4332, label %4333, label %4348

; <label>:4333                                    ; preds = %4323
  %4334 = fsub fast float -0.000000e+00, %4234
  %4335 = fdiv fast float %4334, %4331
  %4336 = fsub fast float -0.000000e+00, %4232
  %4337 = fdiv fast float %4336, %4331
  %4338 = fdiv fast float %4246, %4331
  %4339 = fmul fast float %4245, 0x3FE279A760000000
  %4340 = fmul fast float %4337, %4232
  %4341 = fmul fast float %4338, %4246
  %4342 = fmul fast float %4335, %4234
  %4343 = fadd fast float %4340, %4342
  %4344 = fsub fast float %4343, %4341
  %4345 = call float @dx.op.unary.f32(i32 6, float %4344)  ; FAbs(value)
  %4346 = fadd fast float %4345, 0x3DDB7CDFE0000000
  %4347 = fdiv fast float %4339, %4346
  br label %4348

; <label>:4348                                    ; preds = %4333, %4323
  %4349 = phi float [ %4347, %4333 ], [ 1.000000e+00, %4323 ]
  %4350 = call float @dx.op.binary.f32(i32 36, float %4349, float %4325)  ; FMin(a,b)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fcmp fast olt float %4351, 1.000000e+00
  br i1 %4352, label %4353, label %4363

; <label>:4353                                    ; preds = %4348
  %4354 = fmul fast float %4351, %4232
  %4355 = fmul fast float %4351, %4246
  %4356 = fmul fast float %4351, %4234
  %4357 = fmul fast float %4351, %4249
  %4358 = fmul fast float %4351, %4261
  %4359 = fmul fast float %4351, %4251
  %4360 = fmul fast float %4351, %4264
  %4361 = fmul fast float %4351, %4276
  %4362 = fmul fast float %4351, %4266
  br label %4363

; <label>:4363                                    ; preds = %4353, %4348
  %4364 = phi float [ %4360, %4353 ], [ %4264, %4348 ]
  %4365 = phi float [ %4361, %4353 ], [ %4276, %4348 ]
  %4366 = phi float [ %4362, %4353 ], [ %4266, %4348 ]
  %4367 = phi float [ %4357, %4353 ], [ %4249, %4348 ]
  %4368 = phi float [ %4358, %4353 ], [ %4261, %4348 ]
  %4369 = phi float [ %4359, %4353 ], [ %4251, %4348 ]
  %4370 = phi float [ %4354, %4353 ], [ %4232, %4348 ]
  %4371 = phi float [ %4355, %4353 ], [ %4246, %4348 ]
  %4372 = phi float [ %4356, %4353 ], [ %4234, %4348 ]
  %4373 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4245)  ; FMax(a,b)
  %4374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4260)  ; FMax(a,b)
  %4375 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4275)  ; FMax(a,b)
  %4376 = fcmp fast oge float %4033, 0.000000e+00
  %4377 = and i1 %4376, %3804
  %4378 = fcmp fast ole float %4033, 1.000000e+00
  %4379 = and i1 %4378, %4377
  %4380 = fcmp fast oge float %4034, 0.000000e+00
  %4381 = and i1 %4380, %4379
  %4382 = fcmp fast ole float %4034, 1.000000e+00
  %4383 = and i1 %4382, %4381
  br i1 %4383, label %4384, label %4529, !dx.controlflow.hints !90

; <label>:4384                                    ; preds = %4363
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4387 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4388 = fmul fast float %4386, %4033
  %4389 = fmul fast float %4387, %4034
  %4390 = call float @dx.op.unary.f32(i32 27, float %4388)  ; Round_ni(value)
  %4391 = call float @dx.op.unary.f32(i32 27, float %4389)  ; Round_ni(value)
  %4392 = fptosi float %4390 to i32
  %4393 = fptosi float %4391 to i32
  %4394 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4392, i32 %4393, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4395 = extractvalue %dx.types.ResRet.i32 %4394, 0
  %4396 = and i32 %4395, 65535
  %4397 = lshr i32 %4395, 16
  %4398 = icmp eq i32 %4396, 65535
  br i1 %4398, label %4435, label %4399

; <label>:4399                                    ; preds = %4384
  %4400 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %4401 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4402 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4403 = fmul fast float %4401, %4033
  %4404 = fmul fast float %4402, %4034
  %4405 = fmul fast float %4403, 1.250000e-01
  %4406 = fmul fast float %4404, 1.250000e-01
  %4407 = call float @dx.op.unary.f32(i32 27, float %4405)  ; Round_ni(value)
  %4408 = call float @dx.op.unary.f32(i32 27, float %4406)  ; Round_ni(value)
  %4409 = fmul fast float %4407, 8.000000e+00
  %4410 = fmul fast float %4408, 8.000000e+00
  %4411 = and i32 %4395, 255
  %4412 = lshr i32 %4395, 8
  %4413 = and i32 %4412, 255
  %4414 = mul nuw nsw i32 %4411, 9
  %4415 = uitofp i32 %4414 to float
  %4416 = mul nuw nsw i32 %4413, 9
  %4417 = uitofp i32 %4416 to float
  %4418 = fadd fast float %4415, 5.000000e-01
  %4419 = fadd fast float %4418, %4403
  %4420 = fsub fast float %4419, %4409
  %4421 = fadd fast float %4417, 5.000000e-01
  %4422 = fadd fast float %4421, %4404
  %4423 = fsub fast float %4422, %4410
  %4424 = fdiv fast float %4420, %3803
  %4425 = fdiv fast float %4423, %4400
  %4426 = fmul fast float %4061, 4.375000e-01
  %4427 = fadd fast float %4426, 3.125000e-02
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4424, float %4425, float %4427, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = fadd fast float %4429, %4373
  %4433 = fadd fast float %4430, %4374
  %4434 = fadd fast float %4431, %4375
  br label %4435

; <label>:4435                                    ; preds = %4399, %4384
  %4436 = phi float [ %4434, %4399 ], [ %4375, %4384 ]
  %4437 = phi float [ %4433, %4399 ], [ %4374, %4384 ]
  %4438 = phi float [ %4432, %4399 ], [ %4373, %4384 ]
  %4439 = icmp eq i32 %4397, 65535
  br i1 %4439, label %4529, label %4440

; <label>:4440                                    ; preds = %4435
  %4441 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %4442 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4443 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4444 = fmul fast float %4442, %4033
  %4445 = fmul fast float %4443, %4034
  %4446 = fmul fast float %4444, 1.250000e-01
  %4447 = fmul fast float %4445, 1.250000e-01
  %4448 = call float @dx.op.unary.f32(i32 27, float %4446)  ; Round_ni(value)
  %4449 = call float @dx.op.unary.f32(i32 27, float %4447)  ; Round_ni(value)
  %4450 = fmul fast float %4448, 8.000000e+00
  %4451 = fmul fast float %4449, 8.000000e+00
  %4452 = fsub fast float %4444, %4450
  %4453 = fsub fast float %4445, %4451
  %4454 = fadd fast float %4452, 5.000000e-01
  %4455 = fadd fast float %4453, 5.000000e-01
  %4456 = and i32 %4397, 255
  %4457 = lshr i32 %4395, 24
  %4458 = mul nuw nsw i32 %4456, 9
  %4459 = uitofp i32 %4458 to float
  %4460 = mul nuw nsw i32 %4457, 9
  %4461 = uitofp i32 %4460 to float
  %4462 = fadd fast float %4454, %4459
  %4463 = fadd fast float %4455, %4461
  %4464 = fdiv fast float %4462, %3803
  %4465 = fdiv fast float %4463, %4441
  %4466 = fmul fast float %4061, 4.375000e-01
  %4467 = fadd fast float %4466, 3.125000e-02
  %4468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4464, float %4465, float %4467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4469 = extractvalue %dx.types.ResRet.f32 %4468, 0
  %4470 = extractvalue %dx.types.ResRet.f32 %4468, 1
  %4471 = extractvalue %dx.types.ResRet.f32 %4468, 2
  %4472 = fadd fast float %4466, 5.312500e-01
  %4473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4464, float %4465, float %4472, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4473, 2
  %4477 = fmul fast float %4474, 2.000000e+00
  %4478 = fmul fast float %4475, 2.000000e+00
  %4479 = fmul fast float %4476, 2.000000e+00
  %4480 = fadd fast float %4477, -1.000000e+00
  %4481 = fadd fast float %4478, -1.000000e+00
  %4482 = fadd fast float %4479, -1.000000e+00
  %4483 = fmul fast float %4480, %4480
  %4484 = fmul fast float %4481, %4481
  %4485 = fadd fast float %4483, %4484
  %4486 = fmul fast float %4482, %4482
  %4487 = fadd fast float %4485, %4486
  %4488 = call float @dx.op.unary.f32(i32 24, float %4487)  ; Sqrt(value)
  %4489 = fcmp fast ogt float %4488, 0.000000e+00
  br i1 %4489, label %4490, label %4494

; <label>:4490                                    ; preds = %4440
  %4491 = fdiv fast float %4480, %4488
  %4492 = fdiv fast float %4481, %4488
  %4493 = fdiv fast float %4482, %4488
  br label %4494

; <label>:4494                                    ; preds = %4490, %4440
  %4495 = phi float [ %4491, %4490 ], [ 0.000000e+00, %4440 ]
  %4496 = phi float [ %4492, %4490 ], [ 0.000000e+00, %4440 ]
  %4497 = phi float [ %4493, %4490 ], [ 0.000000e+00, %4440 ]
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.CBufRet.f32 %4498, 1
  %4501 = fsub fast float %3654, %4499
  %4502 = fsub fast float %3655, %4500
  %4503 = fmul fast float %4501, %4501
  %4504 = fmul fast float %4502, %4502
  %4505 = fadd fast float %4503, %4504
  %4506 = call float @dx.op.unary.f32(i32 24, float %4505)  ; Sqrt(value)
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4510 = fsub fast float %4506, %4508
  %4511 = fdiv fast float %4510, %4509
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fmul fast float %4512, 2.000000e+00
  %4514 = fsub fast float 3.000000e+00, %4513
  %4515 = fmul fast float %4512, %4512
  %4516 = fmul fast float %4515, %4514
  %4517 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4517)  ; FMax(a,b)
  %4519 = fmul fast float %4518, 0x400C5BF8A0000000
  %4520 = fmul fast float %4516, %4469
  %4521 = fmul fast float %4520, %4519
  %4522 = fadd fast float %4521, %4438
  %4523 = fmul fast float %4516, %4470
  %4524 = fmul fast float %4523, %4519
  %4525 = fadd fast float %4524, %4437
  %4526 = fmul fast float %4516, %4471
  %4527 = fmul fast float %4526, %4519
  %4528 = fadd fast float %4527, %4436
  br label %4529

; <label>:4529                                    ; preds = %4494, %4435, %4363
  %4530 = phi float [ %4528, %4494 ], [ %4436, %4435 ], [ %4375, %4363 ]
  %4531 = phi float [ %4525, %4494 ], [ %4437, %4435 ], [ %4374, %4363 ]
  %4532 = phi float [ %4522, %4494 ], [ %4438, %4435 ], [ %4373, %4363 ]
  %4533 = fcmp fast ogt float %4020, %4057
  %4534 = and i1 %4376, %4533
  %4535 = and i1 %4378, %4534
  %4536 = and i1 %4380, %4535
  %4537 = and i1 %4382, %4536
  br i1 %4537, label %4538, label %4595, !dx.controlflow.hints !91

; <label>:4538                                    ; preds = %4529
  %4539 = fmul fast float %4059, 0x3FC24924A0000000
  %4540 = fsub fast float %4020, %4057
  %4541 = fdiv fast float %4540, %4539
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.CBufRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.CBufRet.f32 %4545, 2
  %4549 = fsub fast float %4544, %4532
  %4550 = fsub fast float %4546, %4370
  %4551 = fsub fast float %4547, %4371
  %4552 = fsub fast float %4548, %4372
  %4553 = fmul fast float %4549, %4542
  %4554 = fmul fast float %4550, %4542
  %4555 = fmul fast float %4551, %4542
  %4556 = fmul fast float %4552, %4542
  %4557 = fadd fast float %4553, %4532
  %4558 = fadd fast float %4554, %4370
  %4559 = fadd fast float %4555, %4371
  %4560 = fadd fast float %4556, %4372
  %4561 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.CBufRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.CBufRet.f32 %4562, 2
  %4566 = fsub fast float %4561, %4531
  %4567 = fsub fast float %4563, %4367
  %4568 = fsub fast float %4564, %4368
  %4569 = fsub fast float %4565, %4369
  %4570 = fmul fast float %4566, %4542
  %4571 = fmul fast float %4567, %4542
  %4572 = fmul fast float %4568, %4542
  %4573 = fmul fast float %4569, %4542
  %4574 = fadd fast float %4570, %4531
  %4575 = fadd fast float %4571, %4367
  %4576 = fadd fast float %4572, %4368
  %4577 = fadd fast float %4573, %4369
  %4578 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4583 = fsub fast float %4578, %4530
  %4584 = fsub fast float %4580, %4364
  %4585 = fsub fast float %4581, %4365
  %4586 = fsub fast float %4582, %4366
  %4587 = fmul fast float %4583, %4542
  %4588 = fmul fast float %4584, %4542
  %4589 = fmul fast float %4585, %4542
  %4590 = fmul fast float %4586, %4542
  %4591 = fadd fast float %4587, %4530
  %4592 = fadd fast float %4588, %4364
  %4593 = fadd fast float %4589, %4365
  %4594 = fadd fast float %4590, %4366
  br label %4595

; <label>:4595                                    ; preds = %4538, %4529
  %4596 = phi float [ %4591, %4538 ], [ %4530, %4529 ]
  %4597 = phi float [ %4592, %4538 ], [ %4364, %4529 ]
  %4598 = phi float [ %4593, %4538 ], [ %4365, %4529 ]
  %4599 = phi float [ %4594, %4538 ], [ %4366, %4529 ]
  %4600 = phi float [ %4574, %4538 ], [ %4531, %4529 ]
  %4601 = phi float [ %4575, %4538 ], [ %4367, %4529 ]
  %4602 = phi float [ %4576, %4538 ], [ %4368, %4529 ]
  %4603 = phi float [ %4577, %4538 ], [ %4369, %4529 ]
  %4604 = phi float [ %4557, %4538 ], [ %4532, %4529 ]
  %4605 = phi float [ %4558, %4538 ], [ %4370, %4529 ]
  %4606 = phi float [ %4559, %4538 ], [ %4371, %4529 ]
  %4607 = phi float [ %4560, %4538 ], [ %4372, %4529 ]
  %4608 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4609 = fmul fast float %4608, %4604
  %4610 = fmul fast float %4608, %4600
  %4611 = fmul fast float %4608, %4596
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4614 = fmul fast float %4609, %4613
  %4615 = fmul fast float %4610, %4613
  %4616 = fmul fast float %4611, %4613
  %4617 = fmul fast float %4605, 1.500000e+00
  %4618 = fmul fast float %4617, %4608
  %4619 = fmul fast float %4618, %4613
  %4620 = fmul fast float %4606, 1.500000e+00
  %4621 = fmul fast float %4620, %4608
  %4622 = fmul fast float %4621, %4613
  %4623 = fmul fast float %4607, 1.500000e+00
  %4624 = fmul fast float %4623, %4608
  %4625 = fmul fast float %4624, %4613
  %4626 = fmul fast float %4601, 1.500000e+00
  %4627 = fmul fast float %4626, %4608
  %4628 = fmul fast float %4627, %4613
  %4629 = fmul fast float %4602, 1.500000e+00
  %4630 = fmul fast float %4629, %4608
  %4631 = fmul fast float %4630, %4613
  %4632 = fmul fast float %4603, 1.500000e+00
  %4633 = fmul fast float %4632, %4608
  %4634 = fmul fast float %4633, %4613
  %4635 = fmul fast float %4597, 1.500000e+00
  %4636 = fmul fast float %4635, %4608
  %4637 = fmul fast float %4636, %4613
  %4638 = fmul fast float %4598, 1.500000e+00
  %4639 = fmul fast float %4638, %4608
  %4640 = fmul fast float %4639, %4613
  %4641 = fmul fast float %4599, 1.500000e+00
  %4642 = fmul fast float %4641, %4608
  %4643 = fmul fast float %4642, %4613
  %4644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4614)  ; FMax(a,b)
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4622, float %4625, float %4619, float %4622, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = fcmp fast oeq float %4645, 0.000000e+00
  %4647 = fcmp fast oeq float %4644, 0.000000e+00
  %4648 = or i1 %4647, %4646
  br i1 %4648, label %4678, label %4649

; <label>:4649                                    ; preds = %4595
  %4650 = fsub fast float -0.000000e+00, %4625
  %4651 = fsub fast float -0.000000e+00, %4619
  %4652 = call float @dx.op.unary.f32(i32 24, float %4645)  ; Sqrt(value)
  %4653 = fdiv fast float %4652, %4644
  %4654 = fcmp fast ogt float %4653, 0x3FFB6F8900000000
  %4655 = select i1 %4654, float 0x3FFB6F8900000000, float %4653
  %4656 = fmul fast float %4655, 0x3FE8A23460000000
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = call float @dx.op.binary.f32(i32 35, float %4655, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4659 = fmul fast float %4657, %4644
  %4660 = fmul fast float %4658, 0x3FF279A740000000
  %4661 = fadd fast float %4660, -1.000000e+00
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4622, float %4650, float %4651, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = call float @dx.op.unary.f32(i32 25, float %4662)  ; Rsqrt(value)
  %4664 = fmul fast float %4663, %4650
  %4665 = fmul fast float %4663, %4651
  %4666 = fmul fast float %4663, %4622
  %4667 = fmul fast float %4661, %4661
  %4668 = fsub fast float 1.000000e+00, %4667
  %4669 = fmul fast float %4658, 0x40005F8BE0000000
  %4670 = fsub fast float 0x400C5BF8A0000000, %4669
  %4671 = fdiv fast float %4659, %4670
  %4672 = fmul fast float %4671, 0x3FEE31C3C0000000
  %4673 = fmul fast float %4672, %4668
  %4674 = fmul fast float %4658, 0x3FDACB7480000000
  %4675 = fadd fast float %4674, 0xBFD7347680000000
  %4676 = fmul fast float %4675, %4671
  %4677 = fmul fast float %4676, %4668
  br label %4678

; <label>:4678                                    ; preds = %4649, %4595
  %4679 = phi float [ %4664, %4649 ], [ 0.000000e+00, %4595 ]
  %4680 = phi float [ %4665, %4649 ], [ 0.000000e+00, %4595 ]
  %4681 = phi float [ %4666, %4649 ], [ 0.000000e+00, %4595 ]
  %4682 = phi float [ %4673, %4649 ], [ 0.000000e+00, %4595 ]
  %4683 = phi float [ %4677, %4649 ], [ 0.000000e+00, %4595 ]
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = fmul fast float %4684, %4684
  %4686 = fmul fast float %4685, 0x3FEE471020000000
  %4687 = fadd fast float %4686, 0xBFD42F6020000000
  %4688 = fmul fast float %4644, 0x3FD20DD760000000
  %4689 = fmul fast float %4687, %4683
  %4690 = fmul fast float %4682, 0x3FDF454380000000
  %4691 = fmul fast float %4690, %4684
  %4692 = fadd fast float %4691, %4688
  %4693 = fadd fast float %4692, %4689
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float %3644, float %3645, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = fmul fast float %4694, 0x3FDF454380000000
  %4696 = fmul fast float %4694, %4694
  %4697 = fmul fast float %4696, 0x3FEE471020000000
  %4698 = fadd fast float %4697, 0xBFD42F6020000000
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4682, float %4683, float 0x3FD20DD760000000, float %4695, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4615)  ; FMax(a,b)
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4631, float %4634, float %4628, float %4631, float %4634)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = fcmp fast oeq float %4701, 0.000000e+00
  %4703 = fcmp fast oeq float %4700, 0.000000e+00
  %4704 = or i1 %4703, %4702
  br i1 %4704, label %4734, label %4705

; <label>:4705                                    ; preds = %4678
  %4706 = fsub fast float -0.000000e+00, %4634
  %4707 = fsub fast float -0.000000e+00, %4628
  %4708 = call float @dx.op.unary.f32(i32 24, float %4701)  ; Sqrt(value)
  %4709 = fdiv fast float %4708, %4700
  %4710 = fcmp fast ogt float %4709, 0x3FFB6F8900000000
  %4711 = select i1 %4710, float 0x3FFB6F8900000000, float %4709
  %4712 = fmul fast float %4711, 0x3FE8A23460000000
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = call float @dx.op.binary.f32(i32 35, float %4711, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4715 = fmul fast float %4713, %4700
  %4716 = fmul fast float %4714, 0x3FF279A740000000
  %4717 = fadd fast float %4716, -1.000000e+00
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4706, float %4707, float %4631, float %4706, float %4707, float %4631)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call float @dx.op.unary.f32(i32 25, float %4718)  ; Rsqrt(value)
  %4720 = fmul fast float %4719, %4706
  %4721 = fmul fast float %4719, %4707
  %4722 = fmul fast float %4719, %4631
  %4723 = fmul fast float %4717, %4717
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = fmul fast float %4714, 0x40005F8BE0000000
  %4726 = fsub fast float 0x400C5BF8A0000000, %4725
  %4727 = fdiv fast float %4715, %4726
  %4728 = fmul fast float %4727, 0x3FEE31C3C0000000
  %4729 = fmul fast float %4728, %4724
  %4730 = fmul fast float %4714, 0x3FDACB7480000000
  %4731 = fadd fast float %4730, 0xBFD7347680000000
  %4732 = fmul fast float %4731, %4727
  %4733 = fmul fast float %4732, %4724
  br label %4734

; <label>:4734                                    ; preds = %4705, %4678
  %4735 = phi float [ %4720, %4705 ], [ 0.000000e+00, %4678 ]
  %4736 = phi float [ %4721, %4705 ], [ 0.000000e+00, %4678 ]
  %4737 = phi float [ %4722, %4705 ], [ 0.000000e+00, %4678 ]
  %4738 = phi float [ %4729, %4705 ], [ 0.000000e+00, %4678 ]
  %4739 = phi float [ %4733, %4705 ], [ 0.000000e+00, %4678 ]
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4736, float %4737, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = fmul fast float %4740, %4740
  %4742 = fmul fast float %4741, 0x3FEE471020000000
  %4743 = fadd fast float %4742, 0xBFD42F6020000000
  %4744 = fmul fast float %4700, 0x3FD20DD760000000
  %4745 = fmul fast float %4743, %4739
  %4746 = fmul fast float %4738, 0x3FDF454380000000
  %4747 = fmul fast float %4746, %4740
  %4748 = fadd fast float %4747, %4744
  %4749 = fadd fast float %4748, %4745
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4736, float %4737, float %3644, float %3645, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = fmul fast float %4750, 0x3FDF454380000000
  %4752 = fmul fast float %4750, %4750
  %4753 = fmul fast float %4752, 0x3FEE471020000000
  %4754 = fadd fast float %4753, 0xBFD42F6020000000
  %4755 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4738, float %4739, float 0x3FD20DD760000000, float %4751, float %4754)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4616)  ; FMax(a,b)
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4640, float %4643, float %4637, float %4640, float %4643)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = fcmp fast oeq float %4757, 0.000000e+00
  %4759 = fcmp fast oeq float %4756, 0.000000e+00
  %4760 = or i1 %4759, %4758
  br i1 %4760, label %4790, label %4761

; <label>:4761                                    ; preds = %4734
  %4762 = fsub fast float -0.000000e+00, %4643
  %4763 = fsub fast float -0.000000e+00, %4637
  %4764 = call float @dx.op.unary.f32(i32 24, float %4757)  ; Sqrt(value)
  %4765 = fdiv fast float %4764, %4756
  %4766 = fcmp fast ogt float %4765, 0x3FFB6F8900000000
  %4767 = select i1 %4766, float 0x3FFB6F8900000000, float %4765
  %4768 = fmul fast float %4767, 0x3FE8A23460000000
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = call float @dx.op.binary.f32(i32 35, float %4767, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4771 = fmul fast float %4769, %4756
  %4772 = fmul fast float %4770, 0x3FF279A740000000
  %4773 = fadd fast float %4772, -1.000000e+00
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4640, float %4762, float %4763, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = call float @dx.op.unary.f32(i32 25, float %4774)  ; Rsqrt(value)
  %4776 = fmul fast float %4775, %4762
  %4777 = fmul fast float %4775, %4763
  %4778 = fmul fast float %4775, %4640
  %4779 = fmul fast float %4773, %4773
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = fmul fast float %4770, 0x40005F8BE0000000
  %4782 = fsub fast float 0x400C5BF8A0000000, %4781
  %4783 = fdiv fast float %4771, %4782
  %4784 = fmul fast float %4783, 0x3FEE31C3C0000000
  %4785 = fmul fast float %4784, %4780
  %4786 = fmul fast float %4770, 0x3FDACB7480000000
  %4787 = fadd fast float %4786, 0xBFD7347680000000
  %4788 = fmul fast float %4787, %4783
  %4789 = fmul fast float %4788, %4780
  br label %4790

; <label>:4790                                    ; preds = %4761, %4734
  %4791 = phi float [ %4776, %4761 ], [ 0.000000e+00, %4734 ]
  %4792 = phi float [ %4777, %4761 ], [ 0.000000e+00, %4734 ]
  %4793 = phi float [ %4778, %4761 ], [ 0.000000e+00, %4734 ]
  %4794 = phi float [ %4785, %4761 ], [ 0.000000e+00, %4734 ]
  %4795 = phi float [ %4789, %4761 ], [ 0.000000e+00, %4734 ]
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = fmul fast float %4796, %4796
  %4798 = fmul fast float %4797, 0x3FEE471020000000
  %4799 = fadd fast float %4798, 0xBFD42F6020000000
  %4800 = fmul fast float %4756, 0x3FD20DD760000000
  %4801 = fmul fast float %4799, %4795
  %4802 = fmul fast float %4794, 0x3FDF454380000000
  %4803 = fmul fast float %4802, %4796
  %4804 = fadd fast float %4803, %4800
  %4805 = fadd fast float %4804, %4801
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float %3644, float %3645, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = fmul fast float %4806, 0x3FDF454380000000
  %4808 = fmul fast float %4806, %4806
  %4809 = fmul fast float %4808, 0x3FEE471020000000
  %4810 = fadd fast float %4809, 0xBFD42F6020000000
  %4811 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4794, float %4795, float 0x3FD20DD760000000, float %4807, float %4810)  ; Dot3(ax,ay,az,bx,by,bz)
  %4812 = call float @dx.op.binary.f32(i32 35, float %4693, float 0.000000e+00)  ; FMax(a,b)
  %4813 = call float @dx.op.binary.f32(i32 35, float %4749, float 0.000000e+00)  ; FMax(a,b)
  %4814 = call float @dx.op.binary.f32(i32 35, float %4805, float 0.000000e+00)  ; FMax(a,b)
  %4815 = call float @dx.op.binary.f32(i32 35, float %4699, float 0.000000e+00)  ; FMax(a,b)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4755, float 0.000000e+00)  ; FMax(a,b)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4811, float 0.000000e+00)  ; FMax(a,b)
  %4818 = fsub fast float %4014, %4812
  %4819 = fsub fast float %4015, %4813
  %4820 = fsub fast float %4016, %4814
  %4821 = fmul fast float %4818, %3695
  %4822 = fmul fast float %4819, %3695
  %4823 = fmul fast float %4820, %3695
  %4824 = fadd fast float %4821, %4812
  %4825 = fadd fast float %4822, %4813
  %4826 = fadd fast float %4823, %4814
  %4827 = fsub fast float %4011, %4815
  %4828 = fsub fast float %4012, %4816
  %4829 = fsub fast float %4013, %4817
  %4830 = fmul fast float %4827, %3695
  %4831 = fmul fast float %4828, %3695
  %4832 = fmul fast float %4829, %3695
  %4833 = fadd fast float %4830, %4815
  %4834 = fadd fast float %4831, %4816
  %4835 = fadd fast float %4832, %4817
  br label %4836

; <label>:4836                                    ; preds = %4790, %4010
  %4837 = phi float [ %4833, %4790 ], [ %4011, %4010 ]
  %4838 = phi float [ %4834, %4790 ], [ %4012, %4010 ]
  %4839 = phi float [ %4835, %4790 ], [ %4013, %4010 ]
  %4840 = phi float [ %4824, %4790 ], [ %4014, %4010 ]
  %4841 = phi float [ %4825, %4790 ], [ %4015, %4010 ]
  %4842 = phi float [ %4826, %4790 ], [ %4016, %4010 ]
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %4845 = call float @dx.op.binary.f32(i32 36, float %3625, float %4844)  ; FMin(a,b)
  %4846 = fsub fast float 1.000000e+00, %3647
  %4847 = fmul fast float %4845, %4846
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = call float @dx.op.binary.f32(i32 36, float %3626, float %4844)  ; FMin(a,b)
  %4853 = fmul fast float %4852, %4846
  %4854 = fsub fast float 1.000000e+00, %4853
  %4855 = bitcast float %4854 to i32
  %4856 = sub nsw i32 2129859010, %4855
  %4857 = bitcast i32 %4856 to float
  %4858 = call float @dx.op.binary.f32(i32 36, float %3627, float %4844)  ; FMin(a,b)
  %4859 = fmul fast float %4858, %4846
  %4860 = fsub fast float 1.000000e+00, %4859
  %4861 = bitcast float %4860 to i32
  %4862 = sub nsw i32 2129859010, %4861
  %4863 = bitcast i32 %4862 to float
  %4864 = fmul fast float %4840, %3647
  %4865 = fmul fast float %4864, %4851
  %4866 = fmul fast float %4841, %3647
  %4867 = fmul fast float %4866, %4857
  %4868 = fmul fast float %4842, %3647
  %4869 = fmul fast float %4868, %4863
  %4870 = call float @dx.op.binary.f32(i32 36, float %3628, float %4844)  ; FMin(a,b)
  %4871 = fmul fast float %4870, %4846
  %4872 = fsub fast float 1.000000e+00, %4871
  %4873 = bitcast float %4872 to i32
  %4874 = sub nsw i32 2129859010, %4873
  %4875 = bitcast i32 %4874 to float
  %4876 = call float @dx.op.binary.f32(i32 36, float %3629, float %4844)  ; FMin(a,b)
  %4877 = fmul fast float %4876, %4846
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = call float @dx.op.binary.f32(i32 36, float %3636, float %4844)  ; FMin(a,b)
  %4883 = fmul fast float %4882, %4846
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = fmul fast float %4837, %3647
  %4889 = fmul fast float %4888, %4875
  %4890 = fmul fast float %4838, %3647
  %4891 = fmul fast float %4890, %4881
  %4892 = fmul fast float %4839, %3647
  %4893 = fmul fast float %4892, %4887
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4867, float %4869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = select i1 %196, float 0.000000e+00, float %4865
  %4896 = select i1 %196, float %4894, float %4867
  %4897 = select i1 %196, float 0.000000e+00, float %4869
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4891, float %4893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = select i1 %196, float 0.000000e+00, float %4889
  %4900 = select i1 %196, float %4898, float %4891
  %4901 = select i1 %196, float 0.000000e+00, float %4893
  %4902 = fmul fast float %3638, 9.843750e-01
  %4903 = fmul fast float %3634, 9.843750e-01
  %4904 = fadd fast float %4902, 7.812500e-03
  %4905 = fadd fast float %4903, 7.812500e-03
  %4906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4904, float %4905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 2
  %4908 = extractvalue %dx.types.ResRet.f32 %4906, 3
  %4909 = fmul fast float %4907, %3628
  %4910 = fmul fast float %4907, %3629
  %4911 = fmul fast float %4907, %3636
  %4912 = fadd fast float %4909, %4908
  %4913 = fadd fast float %4910, %4908
  %4914 = fadd fast float %4911, %4908
  %4915 = fcmp fast ogt float %3002, 0.000000e+00
  br i1 %4915, label %4916, label %4942

; <label>:4916                                    ; preds = %4836
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3002, float %3638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = fadd fast float %4918, -5.000000e-01
  %4922 = fadd fast float %4919, -5.000000e-01
  %4923 = fadd fast float %4920, -5.000000e-01
  %4924 = fsub fast float 1.000000e+00, %3628
  %4925 = fsub fast float 1.000000e+00, %3629
  %4926 = fsub fast float 1.000000e+00, %3636
  %4927 = fmul fast float %3628, 4.000000e+00
  %4928 = fmul fast float %4927, %4924
  %4929 = fmul fast float %4928, %4921
  %4930 = fmul fast float %3629, 4.000000e+00
  %4931 = fmul fast float %4930, %4925
  %4932 = fmul fast float %4931, %4922
  %4933 = fmul fast float %3636, 4.000000e+00
  %4934 = fmul fast float %4933, %4926
  %4935 = fmul fast float %4934, %4923
  %4936 = fadd fast float %4929, %4912
  %4937 = fadd fast float %4932, %4913
  %4938 = fadd fast float %4935, %4914
  %4939 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4941 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  br label %4942

; <label>:4942                                    ; preds = %4916, %4836
  %4943 = phi float [ %4939, %4916 ], [ %4912, %4836 ]
  %4944 = phi float [ %4940, %4916 ], [ %4913, %4836 ]
  %4945 = phi float [ %4941, %4916 ], [ %4914, %4836 ]
  %4946 = call float @dx.op.binary.f32(i32 35, float %4944, float %4945)  ; FMax(a,b)
  %4947 = call float @dx.op.binary.f32(i32 35, float %4943, float %4946)  ; FMax(a,b)
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = fmul fast float %4948, %4895
  %4950 = fmul fast float %4948, %4896
  %4951 = fmul fast float %4948, %4897
  %4952 = call float @dx.op.dot3.f32(i32 55, float %3625, float %3626, float %3627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = fcmp fast ogt float %4952, 0x3E7FF19E20000000
  %4954 = fdiv fast float 1.000000e+00, %4952
  %4955 = select i1 %4953, float %4954, float 0.000000e+00
  %4956 = fmul fast float %4955, %3625
  %4957 = fmul fast float %4955, %3626
  %4958 = fmul fast float %4955, %3627
  %4959 = fadd fast float %4956, -1.000000e+00
  %4960 = fadd fast float %4957, -1.000000e+00
  %4961 = fadd fast float %4958, -1.000000e+00
  %4962 = fmul fast float %4959, 5.000000e-01
  %4963 = fmul fast float %4960, 5.000000e-01
  %4964 = fmul fast float %4961, 5.000000e-01
  %4965 = fadd fast float %4962, 1.000000e+00
  %4966 = fadd fast float %4963, 1.000000e+00
  %4967 = fadd fast float %4964, 1.000000e+00
  %4968 = fmul fast float %4943, %4899
  %4969 = fmul fast float %4944, %4900
  %4970 = fmul fast float %4945, %4901
  %4971 = fsub fast float 1.000000e+00, %3638
  %4972 = bitcast float %4971 to i32
  %4973 = sitofp i32 %4972 to float
  %4974 = fmul fast float %4973, 5.000000e+00
  %4975 = fadd fast float %4974, 0xC1EFBF8940000000
  %4976 = fptosi float %4975 to i32
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4977, %3001
  %4979 = fmul fast float %4895, %4978
  %4980 = fmul fast float %4979, %4948
  %4981 = fmul fast float %4980, %4965
  %4982 = fmul fast float %4896, %4978
  %4983 = fmul fast float %4982, %4948
  %4984 = fmul fast float %4983, %4966
  %4985 = fmul fast float %4897, %4978
  %4986 = fmul fast float %4985, %4948
  %4987 = fmul fast float %4986, %4967
  %4988 = fmul fast float %4949, %3022
  %4989 = fmul fast float %4950, %3022
  %4990 = fmul fast float %4951, %3022
  %4991 = fadd fast float %4968, %3003
  %4992 = fadd fast float %4991, %4981
  %4993 = fmul fast float %4992, %3022
  %4994 = fadd fast float %4969, %3004
  %4995 = fadd fast float %4994, %4984
  %4996 = fmul fast float %4995, %3022
  %4997 = fadd fast float %4970, %3005
  %4998 = fadd fast float %4997, %4987
  %4999 = fmul fast float %4998, %3022
  %5000 = bitcast i32 %3650 to float
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 3
  %5003 = fcmp fast oeq float %5002, 0.000000e+00
  br i1 %5003, label %5231, label %5004

; <label>:5004                                    ; preds = %4942
  %5005 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5001, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5001, 2
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5011 = extractvalue %dx.types.CBufRet.f32 %5008, 2
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = call float @dx.op.dot3.f32(i32 55, float %5009, float %5010, float %5011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = select i1 %196, float %5013, float %5009
  %5017 = select i1 %196, float %5015, float %5010
  %5018 = select i1 %196, float %5014, float %5011
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5021 = fcmp fast une float %5020, 0.000000e+00
  br i1 %5021, label %5022, label %5039

; <label>:5022                                    ; preds = %5004
  %5023 = fptoui float %78 to i32
  %5024 = fptoui float %79 to i32
  %5025 = lshr i32 %5023, 4
  %5026 = lshr i32 %5024, 4
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 0
  %5029 = fptoui float %5028 to i32
  %5030 = add i32 %5029, 15
  %5031 = lshr i32 %5030, 4
  %5032 = mul i32 %5031, %5026
  %5033 = add i32 %5032, %5025
  %5034 = shl i32 %5033, 3
  %5035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5034, i32 undef)  ; BufferLoad(srv,index,wot)
  %5036 = extractvalue %dx.types.ResRet.i32 %5035, 0
  %5037 = and i32 %5036, -268435456
  %5038 = icmp eq i32 %5037, -1342177280
  br i1 %5038, label %5049, label %5039

; <label>:5039                                    ; preds = %5022, %5004
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5042 = extractvalue %dx.types.CBufRet.f32 %5040, 3
  %5043 = fmul fast float %5041, %78
  %5044 = fmul fast float %5042, %79
  %5045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5043, float %5044, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.ResRet.f32 %5045, 1
  %5048 = extractvalue %dx.types.ResRet.f32 %5045, 2
  br label %5049

; <label>:5049                                    ; preds = %5039, %5022
  %5050 = phi float [ %5046, %5039 ], [ 0.000000e+00, %5022 ]
  %5051 = phi float [ %5047, %5039 ], [ 0.000000e+00, %5022 ]
  %5052 = phi float [ %5048, %5039 ], [ 0.000000e+00, %5022 ]
  %5053 = call float @dx.op.binary.f32(i32 36, float %5051, float %5052)  ; FMin(a,b)
  %5054 = call float @dx.op.binary.f32(i32 36, float %5050, float %5053)  ; FMin(a,b)
  %5055 = fcmp fast ogt float %5054, 0.000000e+00
  br i1 %5055, label %5056, label %5231, !dx.controlflow.hints !92

; <label>:5056                                    ; preds = %5049
  %5057 = fmul fast float %5050, %5016
  %5058 = fmul fast float %5051, %5017
  %5059 = fmul fast float %5052, %5018
  %5060 = fsub fast float %5005, %3624
  %5061 = fsub fast float %5006, %3623
  %5062 = fsub fast float %5007, %3622
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5060, float %5061, float %5062, float %5060, float %5061, float %5062)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = call float @dx.op.unary.f32(i32 25, float %5063)  ; Rsqrt(value)
  %5065 = fmul fast float %5064, %5060
  %5066 = fmul fast float %5064, %5061
  %5067 = fmul fast float %5064, %5062
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5005, float %5006, float %5007, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = call float @dx.op.dot3.f32(i32 55, float %3621, float %3620, float %3619, float %5065, float %5066, float %5067)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5071 = fmul fast float %5070, %5070
  %5072 = fmul fast float %5071, %5000
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, %5070
  %5075 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3633, float %5065, float %5066, float %5067)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = fmul fast float %5075, %5075
  %5077 = call float @dx.op.unary.f32(i32 6, float %5068)  ; FAbs(value)
  %5078 = fsub fast float 1.000000e+00, %3634
  %5079 = call float @dx.op.binary.f32(i32 35, float %5078, float 0x3F847AE140000000)  ; FMax(a,b)
  %5080 = fmul fast float %5079, %5079
  %5081 = fmul fast float %5080, %5080
  %5082 = fsub fast float 1.000000e+00, %5081
  %5083 = fmul fast float %3638, %3638
  %5084 = fmul fast float %5083, %5082
  %5085 = fadd fast float %5084, %5081
  %5086 = bitcast float %5085 to i32
  %5087 = ashr i32 %5086, 1
  %5088 = add nsw i32 %5087, 532487669
  %5089 = bitcast i32 %5088 to float
  %5090 = fadd fast float %5089, %3638
  %5091 = fmul fast float %5081, %5076
  %5092 = fsub fast float 1.000000e+00, %5076
  %5093 = fadd fast float %5092, %5091
  %5094 = fmul fast float %5077, %5077
  %5095 = fmul fast float %5094, %5082
  %5096 = fadd fast float %5095, %5081
  %5097 = bitcast float %5096 to i32
  %5098 = ashr i32 %5097, 1
  %5099 = add nsw i32 %5098, 532487669
  %5100 = bitcast i32 %5099 to float
  %5101 = fadd fast float %5100, %5077
  %5102 = fmul fast float %5093, %5093
  %5103 = fmul fast float %5102, %5090
  %5104 = fmul fast float %5103, %5101
  %5105 = fdiv fast float 0x3FF0A00000000000, %5104
  %5106 = fmul fast float %5105, %5081
  %5107 = call float @dx.op.unary.f32(i32 6, float %5069)  ; FAbs(value)
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = bitcast float %5108 to i32
  %5110 = sitofp i32 %5109 to float
  %5111 = fmul fast float %5110, 5.000000e+00
  %5112 = fadd fast float %5111, 0xC1EFBF8940000000
  %5113 = fptosi float %5112 to i32
  %5114 = bitcast i32 %5113 to float
  %5115 = fsub fast float 1.000000e+00, %3628
  %5116 = fsub fast float 1.000000e+00, %3629
  %5117 = fsub fast float 1.000000e+00, %3636
  %5118 = fmul fast float %5114, %5115
  %5119 = fmul fast float %5114, %5116
  %5120 = fmul fast float %5114, %5117
  %5121 = fadd fast float %5118, %3628
  %5122 = fadd fast float %5119, %3629
  %5123 = fadd fast float %5120, %3636
  br i1 %4915, label %5124, label %5147

; <label>:5124                                    ; preds = %5056
  %5125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3002, float %5107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5126 = extractvalue %dx.types.ResRet.f32 %5125, 0
  %5127 = extractvalue %dx.types.ResRet.f32 %5125, 1
  %5128 = extractvalue %dx.types.ResRet.f32 %5125, 2
  %5129 = fadd fast float %5126, -5.000000e-01
  %5130 = fadd fast float %5127, -5.000000e-01
  %5131 = fadd fast float %5128, -5.000000e-01
  %5132 = fmul fast float %3628, 4.000000e+00
  %5133 = fmul fast float %5132, %5115
  %5134 = fmul fast float %5133, %5129
  %5135 = fmul fast float %3629, 4.000000e+00
  %5136 = fmul fast float %5135, %5116
  %5137 = fmul fast float %5136, %5130
  %5138 = fmul fast float %3636, 4.000000e+00
  %5139 = fmul fast float %5138, %5117
  %5140 = fmul fast float %5139, %5131
  %5141 = fadd fast float %5134, %5121
  %5142 = fadd fast float %5137, %5122
  %5143 = fadd fast float %5140, %5123
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  br label %5147

; <label>:5147                                    ; preds = %5124, %5056
  %5148 = phi float [ %5144, %5124 ], [ %5121, %5056 ]
  %5149 = phi float [ %5145, %5124 ], [ %5122, %5056 ]
  %5150 = phi float [ %5146, %5124 ], [ %5123, %5056 ]
  %5151 = fmul fast float %5068, 9.843750e-01
  %5152 = fadd fast float %5151, 7.812500e-03
  %5153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5152, float %4905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5154 = extractvalue %dx.types.ResRet.f32 %5153, 2
  %5155 = extractvalue %dx.types.ResRet.f32 %5153, 3
  %5156 = fmul fast float %5154, %3628
  %5157 = fmul fast float %5154, %3629
  %5158 = fmul fast float %5154, %3636
  %5159 = fadd fast float %5156, %5155
  %5160 = fadd fast float %5157, %5155
  %5161 = fadd fast float %5158, %5155
  br i1 %4915, label %5162, label %5185

; <label>:5162                                    ; preds = %5147
  %5163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3002, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5164 = extractvalue %dx.types.ResRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.ResRet.f32 %5163, 1
  %5166 = extractvalue %dx.types.ResRet.f32 %5163, 2
  %5167 = fadd fast float %5164, -5.000000e-01
  %5168 = fadd fast float %5165, -5.000000e-01
  %5169 = fadd fast float %5166, -5.000000e-01
  %5170 = fmul fast float %3628, 4.000000e+00
  %5171 = fmul fast float %5170, %5115
  %5172 = fmul fast float %5171, %5167
  %5173 = fmul fast float %3629, 4.000000e+00
  %5174 = fmul fast float %5173, %5116
  %5175 = fmul fast float %5174, %5168
  %5176 = fmul fast float %3636, 4.000000e+00
  %5177 = fmul fast float %5176, %5117
  %5178 = fmul fast float %5177, %5169
  %5179 = fadd fast float %5172, %5159
  %5180 = fadd fast float %5175, %5160
  %5181 = fadd fast float %5178, %5161
  %5182 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5183 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  br label %5185

; <label>:5185                                    ; preds = %5162, %5147
  %5186 = phi float [ %5182, %5162 ], [ %5159, %5147 ]
  %5187 = phi float [ %5183, %5162 ], [ %5160, %5147 ]
  %5188 = phi float [ %5184, %5162 ], [ %5161, %5147 ]
  %5189 = call float @dx.op.binary.f32(i32 35, float %5187, float %5188)  ; FMax(a,b)
  %5190 = call float @dx.op.binary.f32(i32 35, float %5186, float %5189)  ; FMax(a,b)
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = fmul fast float %5148, %5106
  %5193 = fmul fast float %5149, %5106
  %5194 = fmul fast float %5150, %5106
  %5195 = fsub fast float 1.000000e+00, %5069
  %5196 = bitcast float %5195 to i32
  %5197 = sitofp i32 %5196 to float
  %5198 = fmul fast float %5197, 5.000000e+00
  %5199 = fadd fast float %5198, 0xC1EFBF8940000000
  %5200 = fptosi float %5199 to i32
  %5201 = bitcast i32 %5200 to float
  %5202 = fmul fast float %5201, %3001
  %5203 = fmul fast float %5191, %5202
  %5204 = fmul fast float %5203, %4965
  %5205 = fmul fast float %5203, %4966
  %5206 = fmul fast float %5203, %4967
  %5207 = fadd fast float %5204, %5192
  %5208 = fadd fast float %5205, %5193
  %5209 = fadd fast float %5206, %5194
  %5210 = fmul fast float %5074, %5057
  %5211 = fmul fast float %5210, %5191
  %5212 = fmul fast float %5074, %5058
  %5213 = fmul fast float %5212, %5191
  %5214 = fmul fast float %5074, %5059
  %5215 = fmul fast float %5214, %5191
  %5216 = fmul fast float %5210, %5207
  %5217 = fmul fast float %5212, %5208
  %5218 = fmul fast float %5214, %5209
  %5219 = fadd fast float %5211, %4949
  %5220 = fmul fast float %5219, %3022
  %5221 = fadd fast float %5213, %4950
  %5222 = fmul fast float %5221, %3022
  %5223 = fadd fast float %5215, %4951
  %5224 = fmul fast float %5223, %3022
  %5225 = fadd fast float %5216, %4992
  %5226 = fmul fast float %5225, %3022
  %5227 = fadd fast float %5217, %4995
  %5228 = fmul fast float %5227, %3022
  %5229 = fadd fast float %5218, %4998
  %5230 = fmul fast float %5229, %3022
  br label %5231

; <label>:5231                                    ; preds = %5185, %5049, %4942
  %5232 = phi float [ %4993, %4942 ], [ %4993, %5049 ], [ %5226, %5185 ]
  %5233 = phi float [ %4996, %4942 ], [ %4996, %5049 ], [ %5228, %5185 ]
  %5234 = phi float [ %4999, %4942 ], [ %4999, %5049 ], [ %5230, %5185 ]
  %5235 = phi float [ %4988, %4942 ], [ %4988, %5049 ], [ %5220, %5185 ]
  %5236 = phi float [ %4989, %4942 ], [ %4989, %5049 ], [ %5222, %5185 ]
  %5237 = phi float [ %4990, %4942 ], [ %4990, %5049 ], [ %5224, %5185 ]
  %5238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.i32 %5238, 0
  %5240 = icmp eq i32 %5239, 0
  br i1 %5240, label %5675, label %5241

; <label>:5241                                    ; preds = %5231
  %5242 = fptoui float %78 to i32
  %5243 = fptoui float %79 to i32
  %5244 = lshr i32 %5242, 4
  %5245 = lshr i32 %5243, 4
  %5246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.i32 %5246, 0
  %5248 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5245, i32 %5247, i32 %5244)  ; UMad(a,b,c)
  %5249 = add nsw i32 %5239, -1
  %5250 = call i32 @dx.op.binary.i32(i32 37, i32 %5249, i32 0)  ; IMax(a,b)
  %5251 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5252 = fptoui float %5251 to i32
  %5253 = lshr i32 %5252, 5
  %5254 = call i32 @dx.op.binary.i32(i32 40, i32 %5253, i32 8191)  ; UMin(a,b)
  %5255 = shl i32 %5254, 2
  %5256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.i32 %5256, 0
  %5258 = lshr i32 %5257, 16
  %5259 = and i32 %5257, 65535
  %5260 = lshr i32 %5257, 21
  %5261 = lshr i32 %5259, 5
  %5262 = call i32 @dx.op.binary.i32(i32 40, i32 %5261, i32 %5250)  ; UMin(a,b)
  %5263 = icmp ugt i32 %5260, %5262
  br i1 %5263, label %5675, label %5264

; <label>:5264                                    ; preds = %5241
  br label %5265

; <label>:5265                                    ; preds = %5665, %5264
  %5266 = phi i32 [ %5672, %5665 ], [ %5260, %5264 ]
  %5267 = phi float [ %5666, %5665 ], [ %5232, %5264 ]
  %5268 = phi float [ %5667, %5665 ], [ %5233, %5264 ]
  %5269 = phi float [ %5668, %5665 ], [ %5234, %5264 ]
  %5270 = phi float [ %5669, %5665 ], [ %5235, %5264 ]
  %5271 = phi float [ %5670, %5665 ], [ %5236, %5264 ]
  %5272 = phi float [ %5671, %5665 ], [ %5237, %5264 ]
  %5273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.i32 %5273, 0
  %5275 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5248, i32 %5274, i32 %5266)  ; UMad(a,b,c)
  %5276 = shl i32 %5275, 2
  %5277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.i32 %5277, 0
  %5279 = shl i32 %5266, 5
  %5280 = sub nsw i32 %5258, %5279
  %5281 = call i32 @dx.op.binary.i32(i32 37, i32 %5280, i32 0)  ; IMax(a,b)
  %5282 = call i32 @dx.op.binary.i32(i32 38, i32 %5281, i32 31)  ; IMin(a,b)
  %5283 = sub nsw i32 1, %5258
  %5284 = add nsw i32 %5283, %5259
  %5285 = call i32 @dx.op.binary.i32(i32 37, i32 %5284, i32 0)  ; IMax(a,b)
  %5286 = call i32 @dx.op.binary.i32(i32 38, i32 %5285, i32 32)  ; IMin(a,b)
  %5287 = and i32 %5286, 31
  %5288 = shl i32 -1, %5287
  %5289 = xor i32 %5288, -1
  %5290 = and i32 %5282, 31
  %5291 = shl i32 %5289, %5290
  %5292 = icmp eq i32 %5286, 32
  %5293 = select i1 %5292, i32 -1, i32 %5291
  %5294 = and i32 %5293, %5278
  %5295 = icmp eq i32 %5294, 0
  br i1 %5295, label %5665, label %5296

; <label>:5296                                    ; preds = %5265
  br label %5297

; <label>:5297                                    ; preds = %5377, %5296
  %5298 = phi i32 [ %5309, %5377 ], [ %5294, %5296 ]
  %5299 = phi float [ %5378, %5377 ], [ %5267, %5296 ]
  %5300 = phi float [ %5379, %5377 ], [ %5268, %5296 ]
  %5301 = phi float [ %5380, %5377 ], [ %5269, %5296 ]
  %5302 = phi float [ %5381, %5377 ], [ %5270, %5296 ]
  %5303 = phi float [ %5382, %5377 ], [ %5271, %5296 ]
  %5304 = phi float [ %5383, %5377 ], [ %5272, %5296 ]
  %5305 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5298)  ; FirstbitLo(value)
  %5306 = add i32 %5305, %5279
  %5307 = and i32 %5305, 31
  %5308 = shl i32 1, %5307
  %5309 = xor i32 %5308, %5298
  %5310 = mul i32 %5306, 112
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5315 = or i32 %5310, 12
  %5316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = add i32 %5310, 44
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = add i32 %5310, 48
  %5322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.ResRet.f32 %5322, 1
  %5325 = extractvalue %dx.types.ResRet.f32 %5322, 2
  %5326 = add i32 %5310, 80
  %5327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5326, i32 undef)  ; BufferLoad(srv,index,wot)
  %5328 = extractvalue %dx.types.ResRet.f32 %5327, 1
  %5329 = extractvalue %dx.types.ResRet.f32 %5327, 2
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = select i1 %196, float %5328, float %5312
  %5332 = select i1 %196, float %5330, float %5313
  %5333 = select i1 %196, float %5329, float %5314
  %5334 = fsub fast float %5323, %125
  %5335 = fsub fast float %5324, %126
  %5336 = fsub fast float %5325, %127
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5336, float %5334, float %5335, float %5336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = call float @dx.op.unary.f32(i32 24, float %5337)  ; Sqrt(value)
  %5339 = fdiv fast float 1.000000e+00, %5338
  %5340 = fmul fast float %5339, %5334
  %5341 = fmul fast float %5339, %5335
  %5342 = fmul fast float %5339, %5336
  %5343 = fadd fast float %5338, %5317
  %5344 = fdiv fast float 1.000000e+00, %5343
  %5345 = fmul float %5320, %5344
  %5346 = fmul float %5345, %5345
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = and i32 %5308, %5294
  %5349 = icmp eq i32 %5348, 0
  br i1 %5349, label %5372, label %5350, !dx.controlflow.hints !93

; <label>:5350                                    ; preds = %5297
  %5351 = lshr i32 %5242, 5
  %5352 = lshr i32 %5243, 5
  %5353 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5351, i32 %5352, i32 %5306, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5354 = extractvalue %dx.types.ResRet.i32 %5353, 0
  %5355 = and i32 %5354, 3
  %5356 = icmp eq i32 %5355, 0
  %5357 = select i1 %5356, float 1.000000e+00, float 0.000000e+00
  %5358 = icmp eq i32 %5355, 3
  br i1 %5358, label %5359, label %5372

; <label>:5359                                    ; preds = %5350
  %5360 = lshr i32 %5354, 10
  %5361 = and i32 %5360, 8160
  %5362 = and i32 %5243, 31
  %5363 = or i32 %5361, %5362
  %5364 = lshr i32 %5354, 1
  %5365 = and i32 %5364, 16352
  %5366 = and i32 %5242, 31
  %5367 = or i32 %5365, %5366
  %5368 = lshr i32 %5354, 23
  %5369 = and i32 %5368, 255
  %5370 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5367, i32 %5363, i32 %5369, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5371 = extractvalue %dx.types.ResRet.f32 %5370, 0
  br label %5372

; <label>:5372                                    ; preds = %5359, %5350, %5297
  %5373 = phi float [ %5371, %5359 ], [ %5357, %5350 ], [ 0.000000e+00, %5297 ]
  %5374 = call float @dx.op.binary.f32(i32 36, float %5373, float %5373)  ; FMin(a,b)
  %5375 = call float @dx.op.binary.f32(i32 36, float %5373, float %5374)  ; FMin(a,b)
  %5376 = fcmp fast ogt float %5375, 0.000000e+00
  br i1 %5376, label %5385, label %5377, !dx.controlflow.hints !94

; <label>:5377                                    ; preds = %5621, %5372
  %5378 = phi float [ %5299, %5372 ], [ %5661, %5621 ]
  %5379 = phi float [ %5300, %5372 ], [ %5662, %5621 ]
  %5380 = phi float [ %5301, %5372 ], [ %5663, %5621 ]
  %5381 = phi float [ %5302, %5372 ], [ %5655, %5621 ]
  %5382 = phi float [ %5303, %5372 ], [ %5656, %5621 ]
  %5383 = phi float [ %5304, %5372 ], [ %5657, %5621 ]
  %5384 = icmp eq i32 %5298, %5308
  br i1 %5384, label %5664, label %5297

; <label>:5385                                    ; preds = %5372
  %5386 = fmul fast float %5373, %5331
  %5387 = fmul fast float %5373, %5332
  %5388 = fmul fast float %5373, %5333
  %5389 = fsub fast float %5325, %3424
  %5390 = fcmp fast ogt float %5389, 0.000000e+00
  %5391 = fsub fast float %127, %3424
  %5392 = fcmp fast ogt float %5391, 0.000000e+00
  %5393 = xor i1 %5392, %5390
  %5394 = fsub fast float %3424, %5325
  %5395 = fmul fast float %5394, 2.000000e+00
  %5396 = fadd fast float %5395, %5325
  %5397 = select i1 %5393, float %5325, float %5396
  %5398 = fsub fast float %5397, %127
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5398, float %5334, float %5335, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = call float @dx.op.unary.f32(i32 25, float %5399)  ; Rsqrt(value)
  %5401 = fmul fast float %5400, %5334
  %5402 = fmul fast float %5400, %5335
  %5403 = fmul fast float %5400, %5398
  %5404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5401, float %5402, float %5403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fdiv fast float 1.000000e+00, %5405
  %5407 = fmul fast float %5406, %5404
  %5408 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5391, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = fcmp fast ogt float %5408, 0.000000e+00
  %5410 = fcmp fast olt float %5408, 0.000000e+00
  %5411 = zext i1 %5409 to i32
  %5412 = zext i1 %5410 to i32
  %5413 = sub nsw i32 %5411, %5412
  %5414 = sitofp i32 %5413 to float
  %5415 = fsub fast float %5397, %3424
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5415, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = fcmp fast ogt float %5416, 0.000000e+00
  %5418 = fcmp fast olt float %5416, 0.000000e+00
  %5419 = zext i1 %5417 to i32
  %5420 = zext i1 %5418 to i32
  %5421 = sub nsw i32 %5419, %5420
  %5422 = sitofp i32 %5421 to float
  %5423 = fcmp fast une float %5414, %5422
  br i1 %5423, label %5424, label %5434

; <label>:5424                                    ; preds = %5385
  %5425 = fmul fast float %5407, %5403
  %5426 = fmul fast float %5407, %5402
  %5427 = fmul fast float %5407, %5401
  %5428 = fmul fast float %5427, %5427
  %5429 = fmul fast float %5426, %5426
  %5430 = fadd fast float %5428, %5429
  %5431 = fmul fast float %5425, %5425
  %5432 = fadd fast float %5430, %5431
  %5433 = call float @dx.op.unary.f32(i32 24, float %5432)  ; Sqrt(value)
  br label %5446

; <label>:5434                                    ; preds = %5385
  %5435 = icmp slt i32 %5413, 0
  br i1 %5435, label %5436, label %5446

; <label>:5436                                    ; preds = %5434
  %5437 = fsub fast float %125, %5323
  %5438 = fsub fast float %126, %5324
  %5439 = fsub fast float %127, %5397
  %5440 = fmul fast float %5437, %5437
  %5441 = fmul fast float %5438, %5438
  %5442 = fadd fast float %5440, %5441
  %5443 = fmul fast float %5439, %5439
  %5444 = fadd fast float %5442, %5443
  %5445 = call float @dx.op.unary.f32(i32 24, float %5444)  ; Sqrt(value)
  br label %5446

; <label>:5446                                    ; preds = %5436, %5434, %5424
  %5447 = phi float [ %5433, %5424 ], [ %5445, %5436 ], [ 0.000000e+00, %5434 ]
  %5448 = and i1 %5392, %5390
  %5449 = fsub fast float -0.000000e+00, %5447
  %5450 = select i1 %5448, float -0.000000e+00, float %5449
  %5451 = fmul fast float %3425, 0x3FF7154760000000
  %5452 = fmul fast float %5451, %5450
  %5453 = fmul fast float %3426, 0x3FF7154760000000
  %5454 = fmul fast float %5453, %5450
  %5455 = fmul fast float %3427, 0x3FF7154760000000
  %5456 = fmul fast float %5455, %5450
  %5457 = call float @dx.op.unary.f32(i32 21, float %5452)  ; Exp(value)
  %5458 = call float @dx.op.unary.f32(i32 21, float %5454)  ; Exp(value)
  %5459 = call float @dx.op.unary.f32(i32 21, float %5456)  ; Exp(value)
  %5460 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5461 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5463 = fmul fast float %5386, %5460
  %5464 = fmul fast float %5387, %5461
  %5465 = fmul fast float %5388, %5462
  %5466 = fsub fast float %5340, %3624
  %5467 = fsub fast float %5341, %3623
  %5468 = fsub fast float %5342, %3622
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = call float @dx.op.unary.f32(i32 25, float %5469)  ; Rsqrt(value)
  %5471 = fmul fast float %5470, %5466
  %5472 = fmul fast float %5470, %5467
  %5473 = fmul fast float %5470, %5468
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %5342, float %3631, float %3632, float %3633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.dot3.f32(i32 55, float %3621, float %3620, float %3619, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5477 = fmul fast float %5476, %5347
  %5478 = fmul fast float %5476, %5476
  %5479 = fmul fast float %5478, %5000
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fmul fast float %5477, %5480
  %5482 = bitcast float %5337 to i32
  %5483 = ashr i32 %5482, 1
  %5484 = sub nsw i32 1597463007, %5483
  %5485 = bitcast i32 %5484 to float
  %5486 = fmul fast float %5485, %5334
  %5487 = fmul fast float %5485, %5335
  %5488 = fmul fast float %5485, %5336
  %5489 = fsub fast float %5486, %3624
  %5490 = fsub fast float %5487, %3623
  %5491 = fsub fast float %5488, %3622
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5491, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 25, float %5492)  ; Rsqrt(value)
  %5494 = fmul fast float %5489, %5493
  %5495 = fmul fast float %5490, %5493
  %5496 = fmul fast float %5491, %5493
  %5497 = call float @dx.op.dot3.f32(i32 55, float %3631, float %3632, float %3633, float %5494, float %5495, float %5496)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fmul fast float %5497, %5497
  %5499 = call float @dx.op.unary.f32(i32 6, float %5474)  ; FAbs(value)
  %5500 = fsub fast float 1.000000e+00, %3634
  %5501 = call float @dx.op.binary.f32(i32 35, float %5500, float 0x3F847AE140000000)  ; FMax(a,b)
  %5502 = fmul fast float %5501, %5501
  %5503 = fmul fast float %5502, %5502
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = fmul fast float %3638, %3638
  %5506 = fmul fast float %5505, %5504
  %5507 = fadd fast float %5506, %5503
  %5508 = bitcast float %5507 to i32
  %5509 = ashr i32 %5508, 1
  %5510 = add nsw i32 %5509, 532487669
  %5511 = bitcast i32 %5510 to float
  %5512 = fadd fast float %5511, %3638
  %5513 = fmul fast float %5503, %5498
  %5514 = fsub fast float 1.000000e+00, %5498
  %5515 = fadd fast float %5514, %5513
  %5516 = fmul fast float %5499, %5499
  %5517 = fmul fast float %5516, %5504
  %5518 = fadd fast float %5517, %5503
  %5519 = bitcast float %5518 to i32
  %5520 = ashr i32 %5519, 1
  %5521 = add nsw i32 %5520, 532487669
  %5522 = bitcast i32 %5521 to float
  %5523 = fadd fast float %5522, %5499
  %5524 = fmul fast float %5515, %5515
  %5525 = fmul fast float %5524, %5512
  %5526 = fmul fast float %5525, %5523
  %5527 = fdiv fast float 1.000000e+00, %5526
  %5528 = bitcast float %5503 to i32
  %5529 = sitofp i32 %5528 to float
  %5530 = fmul fast float %5529, 0x3FE7F73180000000
  %5531 = fadd fast float %5530, 0x41AFE27C40000000
  %5532 = fptosi float %5531 to i32
  %5533 = bitcast i32 %5532 to float
  %5534 = fmul fast float %5320, 0x3FD80E9D60000000
  %5535 = fmul fast float %5534, %5485
  %5536 = fadd fast float %5533, %5535
  %5537 = bitcast float %5536 to i32
  %5538 = sub nsw i32 2129859010, %5537
  %5539 = bitcast i32 %5538 to float
  %5540 = fmul fast float %5503, %5527
  %5541 = fmul fast float %5540, %5533
  %5542 = fmul fast float %5541, %5539
  %5543 = call float @dx.op.unary.f32(i32 6, float %5475)  ; FAbs(value)
  %5544 = fsub fast float 1.000000e+00, %5543
  %5545 = bitcast float %5544 to i32
  %5546 = sitofp i32 %5545 to float
  %5547 = fmul fast float %5546, 5.000000e+00
  %5548 = fadd fast float %5547, 0xC1EFBF8940000000
  %5549 = fptosi float %5548 to i32
  %5550 = bitcast i32 %5549 to float
  %5551 = fsub fast float 1.000000e+00, %3628
  %5552 = fsub fast float 1.000000e+00, %3629
  %5553 = fsub fast float 1.000000e+00, %3636
  %5554 = fmul fast float %5550, %5551
  %5555 = fmul fast float %5550, %5552
  %5556 = fmul fast float %5550, %5553
  %5557 = fadd fast float %5554, %3628
  %5558 = fadd fast float %5555, %3629
  %5559 = fadd fast float %5556, %3636
  br i1 %4915, label %5560, label %5583

; <label>:5560                                    ; preds = %5446
  %5561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3002, float %5543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5565 = fadd fast float %5562, -5.000000e-01
  %5566 = fadd fast float %5563, -5.000000e-01
  %5567 = fadd fast float %5564, -5.000000e-01
  %5568 = fmul fast float %3628, 4.000000e+00
  %5569 = fmul fast float %5568, %5551
  %5570 = fmul fast float %5569, %5565
  %5571 = fmul fast float %3629, 4.000000e+00
  %5572 = fmul fast float %5571, %5552
  %5573 = fmul fast float %5572, %5566
  %5574 = fmul fast float %3636, 4.000000e+00
  %5575 = fmul fast float %5574, %5553
  %5576 = fmul fast float %5575, %5567
  %5577 = fadd fast float %5570, %5557
  %5578 = fadd fast float %5573, %5558
  %5579 = fadd fast float %5576, %5559
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5581 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5582 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  br label %5583

; <label>:5583                                    ; preds = %5560, %5446
  %5584 = phi float [ %5580, %5560 ], [ %5557, %5446 ]
  %5585 = phi float [ %5581, %5560 ], [ %5558, %5446 ]
  %5586 = phi float [ %5582, %5560 ], [ %5559, %5446 ]
  %5587 = fmul fast float %5474, 9.843750e-01
  %5588 = fadd fast float %5587, 7.812500e-03
  %5589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5588, float %4905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 2
  %5591 = extractvalue %dx.types.ResRet.f32 %5589, 3
  %5592 = fmul fast float %5590, %3628
  %5593 = fmul fast float %5590, %3629
  %5594 = fmul fast float %5590, %3636
  %5595 = fadd fast float %5592, %5591
  %5596 = fadd fast float %5593, %5591
  %5597 = fadd fast float %5594, %5591
  br i1 %4915, label %5598, label %5621

; <label>:5598                                    ; preds = %5583
  %5599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3002, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5600 = extractvalue %dx.types.ResRet.f32 %5599, 0
  %5601 = extractvalue %dx.types.ResRet.f32 %5599, 1
  %5602 = extractvalue %dx.types.ResRet.f32 %5599, 2
  %5603 = fadd fast float %5600, -5.000000e-01
  %5604 = fadd fast float %5601, -5.000000e-01
  %5605 = fadd fast float %5602, -5.000000e-01
  %5606 = fmul fast float %3628, 4.000000e+00
  %5607 = fmul fast float %5606, %5551
  %5608 = fmul fast float %5607, %5603
  %5609 = fmul fast float %3629, 4.000000e+00
  %5610 = fmul fast float %5609, %5552
  %5611 = fmul fast float %5610, %5604
  %5612 = fmul fast float %3636, 4.000000e+00
  %5613 = fmul fast float %5612, %5553
  %5614 = fmul fast float %5613, %5605
  %5615 = fadd fast float %5608, %5595
  %5616 = fadd fast float %5611, %5596
  %5617 = fadd fast float %5614, %5597
  %5618 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5619 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5620 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  br label %5621

; <label>:5621                                    ; preds = %5598, %5583
  %5622 = phi float [ %5618, %5598 ], [ %5595, %5583 ]
  %5623 = phi float [ %5619, %5598 ], [ %5596, %5583 ]
  %5624 = phi float [ %5620, %5598 ], [ %5597, %5583 ]
  %5625 = call float @dx.op.binary.f32(i32 35, float %5623, float %5624)  ; FMax(a,b)
  %5626 = call float @dx.op.binary.f32(i32 35, float %5622, float %5625)  ; FMax(a,b)
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = fmul fast float %5584, %5542
  %5629 = fmul fast float %5585, %5542
  %5630 = fmul fast float %5586, %5542
  %5631 = fsub fast float 1.000000e+00, %5475
  %5632 = bitcast float %5631 to i32
  %5633 = sitofp i32 %5632 to float
  %5634 = fmul fast float %5633, 5.000000e+00
  %5635 = fadd fast float %5634, 0xC1EFBF8940000000
  %5636 = fptosi float %5635 to i32
  %5637 = bitcast i32 %5636 to float
  %5638 = fmul fast float %5637, %3001
  %5639 = fmul fast float %5627, %5638
  %5640 = fmul fast float %5639, %4965
  %5641 = fmul fast float %5639, %4966
  %5642 = fmul fast float %5639, %4967
  %5643 = fadd fast float %5640, %5628
  %5644 = fadd fast float %5641, %5629
  %5645 = fadd fast float %5642, %5630
  %5646 = fmul fast float %5463, %3022
  %5647 = fmul fast float %5646, %5481
  %5648 = fmul fast float %5647, %5627
  %5649 = fmul fast float %5464, %3022
  %5650 = fmul fast float %5649, %5481
  %5651 = fmul fast float %5650, %5627
  %5652 = fmul fast float %5465, %3022
  %5653 = fmul fast float %5652, %5481
  %5654 = fmul fast float %5653, %5627
  %5655 = fadd fast float %5648, %5302
  %5656 = fadd fast float %5651, %5303
  %5657 = fadd fast float %5654, %5304
  %5658 = fmul fast float %5647, %5643
  %5659 = fmul fast float %5650, %5644
  %5660 = fmul fast float %5653, %5645
  %5661 = fadd fast float %5658, %5299
  %5662 = fadd fast float %5659, %5300
  %5663 = fadd fast float %5660, %5301
  br label %5377

; <label>:5664                                    ; preds = %5377
  br label %5665

; <label>:5665                                    ; preds = %5664, %5265
  %5666 = phi float [ %5267, %5265 ], [ %5378, %5664 ]
  %5667 = phi float [ %5268, %5265 ], [ %5379, %5664 ]
  %5668 = phi float [ %5269, %5265 ], [ %5380, %5664 ]
  %5669 = phi float [ %5270, %5265 ], [ %5381, %5664 ]
  %5670 = phi float [ %5271, %5265 ], [ %5382, %5664 ]
  %5671 = phi float [ %5272, %5265 ], [ %5383, %5664 ]
  %5672 = add i32 %5266, 1
  %5673 = icmp ugt i32 %5672, %5262
  br i1 %5673, label %5674, label %5265

; <label>:5674                                    ; preds = %5665
  br label %5675

; <label>:5675                                    ; preds = %5674, %5241, %5231
  %5676 = phi float [ %5232, %5231 ], [ %5232, %5241 ], [ %5666, %5674 ]
  %5677 = phi float [ %5233, %5231 ], [ %5233, %5241 ], [ %5667, %5674 ]
  %5678 = phi float [ %5234, %5231 ], [ %5234, %5241 ], [ %5668, %5674 ]
  %5679 = phi float [ %5235, %5231 ], [ %5235, %5241 ], [ %5669, %5674 ]
  %5680 = phi float [ %5236, %5231 ], [ %5236, %5241 ], [ %5670, %5674 ]
  %5681 = phi float [ %5237, %5231 ], [ %5237, %5241 ], [ %5671, %5674 ]
  %5682 = call float @dx.op.unary.f32(i32 24, float %3625)  ; Sqrt(value)
  %5683 = call float @dx.op.unary.f32(i32 24, float %3626)  ; Sqrt(value)
  %5684 = call float @dx.op.unary.f32(i32 24, float %3627)  ; Sqrt(value)
  %5685 = fmul fast float %5682, %5679
  %5686 = fmul fast float %5683, %5680
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  br i1 %196, label %5689, label %5709

; <label>:5689                                    ; preds = %5675
  %5690 = fadd fast float %5681, %2999
  %5691 = fmul fast float %5690, %3000
  %5692 = fsub fast float 1.000000e+00, %3000
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 3
  %5696 = fmul fast float %5695, %5693
  %5697 = fadd fast float %5696, %5691
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = fmul fast float %5699, %4971
  %5701 = fsub fast float %5697, %5700
  %5702 = fadd fast float %5686, %5685
  %5703 = fmul fast float %5688, %5702
  %5704 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5705 = fsub fast float %5701, %5704
  %5706 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5707 = fmul fast float %5705, %5706
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  br label %5725

; <label>:5709                                    ; preds = %5675
  %5710 = fmul fast float %5684, %5681
  %5711 = fmul fast float %5688, %5685
  %5712 = fmul fast float %5688, %5686
  %5713 = fmul fast float %5710, %5688
  %5714 = add i32 %44, 308
  %5715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5714, i32 undef)  ; BufferLoad(srv,index,wot)
  %5716 = extractvalue %dx.types.ResRet.i32 %5715, 0
  %5717 = and i32 %5716, 32
  %5718 = icmp eq i32 %5717, 0
  br i1 %5718, label %5725, label %5719

; <label>:5719                                    ; preds = %5709
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = fmul fast float %5721, 0x3FE99999A0000000
  %5723 = fadd fast float %5721, %5711
  %5724 = fadd fast float %5722, %5713
  br label %5725

; <label>:5725                                    ; preds = %5719, %5709, %5689
  %5726 = phi float [ %5703, %5689 ], [ %5723, %5719 ], [ %5711, %5709 ]
  %5727 = phi float [ %5708, %5689 ], [ %5712, %5719 ], [ %5712, %5709 ]
  %5728 = phi float [ 1.000000e+00, %5689 ], [ %5724, %5719 ], [ %5713, %5709 ]
  %5729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5729, 0
  %5731 = fmul fast float %5730, %5677
  %5732 = fmul fast float %5730, %5678
  %5733 = fadd fast float %5677, %5676
  %5734 = select i1 %196, float %5733, float %5676
  %5735 = fmul float %5734, %5730
  %5736 = select i1 %196, float 0.000000e+00, float %5731
  %5737 = select i1 %196, float 0.000000e+00, float %5732
  %5738 = fmul fast float %5726, %5682
  %5739 = fmul fast float %5727, %5683
  %5740 = fmul fast float %5728, %5684
  %5741 = fadd fast float %5735, %5738
  %5742 = fadd fast float %5736, %5739
  %5743 = fadd fast float %5737, %5740
  %5744 = select i1 %196, float %5727, float %5742
  %5745 = select i1 %196, float %5728, float %5743
  %5746 = call float @dx.op.binary.f32(i32 36, float %5741, float 3.225500e+04)  ; FMin(a,b)
  %5747 = call float @dx.op.binary.f32(i32 36, float %5744, float 3.225500e+04)  ; FMin(a,b)
  %5748 = call float @dx.op.binary.f32(i32 36, float %5745, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5746)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5747)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5748)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

