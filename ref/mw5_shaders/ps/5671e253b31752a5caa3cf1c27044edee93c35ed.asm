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
; shader hash: 22291f4911c82203472082d1ad294199
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
  %313 = add i32 %44, 268
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
  %433 = add i32 %44, 280
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
  %456 = add i32 %44, 340
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
  %637 = add i32 %44, 276
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
  %654 = add i32 %44, 292
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
  %738 = add i32 %44, 304
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
  br i1 %809, label %1744, label %810

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
  %1021 = add i32 %44, 332
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
  %1073 = add i32 %44, 320
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
  br i1 %1090, label %1744, label %1091

; <label>:1091                                    ; preds = %1088
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 16
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1294, label %1096

; <label>:1096                                    ; preds = %1091
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = add i32 %44, 284
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
  %1122 = add i32 %44, 344
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
  %1303 = add i32 %44, 276
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
  %1320 = add i32 %44, 296
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
  %1404 = add i32 %44, 308
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
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 1024
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1474, label %1444

; <label>:1444                                    ; preds = %1436
  %1445 = add i32 %44, 136
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = fmul fast float %1449, 0x3F70101020000000
  %1451 = lshr i32 %1447, 8
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101020000000
  %1455 = lshr i32 %1447, 16
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1457, 0x3F70101020000000
  %1459 = fmul fast float %1450, %1450
  %1460 = fmul fast float %1454, %1454
  %1461 = fmul fast float %1458, %1458
  %1462 = add i32 %44, 356
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = fmul fast float %1459, %1468
  %1472 = fmul fast float %1460, %1469
  %1473 = fmul fast float %1461, %1470
  br label %1474

; <label>:1474                                    ; preds = %1444, %1436
  %1475 = phi float [ %1471, %1444 ], [ 0.000000e+00, %1436 ]
  %1476 = phi float [ %1472, %1444 ], [ 0.000000e+00, %1436 ]
  %1477 = phi float [ %1473, %1444 ], [ 0.000000e+00, %1436 ]
  %1478 = fcmp fast ogt float %1475, 0.000000e+00
  %1479 = fcmp fast ogt float %1476, 0.000000e+00
  %1480 = fcmp fast ogt float %1477, 0.000000e+00
  %1481 = call float @dx.op.unary.f32(i32 23, float %1475)  ; Log(value)
  %1482 = call float @dx.op.unary.f32(i32 23, float %1476)  ; Log(value)
  %1483 = call float @dx.op.unary.f32(i32 23, float %1477)  ; Log(value)
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = lshr i32 %1485, 7
  %1487 = and i32 %1486, 32752
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = fmul fast float %1481, 0xBFE62E4300000000
  %1490 = fmul fast float %1489, %1488
  %1491 = fmul fast float %1482, 0xBFE62E4300000000
  %1492 = fmul fast float %1491, %1488
  %1493 = fmul fast float %1483, 0xBFE62E4300000000
  %1494 = fmul fast float %1493, %1488
  %1495 = select i1 %1478, float %1490, float 1.270000e+02
  %1496 = select i1 %1479, float %1492, float 1.270000e+02
  %1497 = select i1 %1480, float %1494, float 1.270000e+02
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 10240
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1522, label %1502

; <label>:1502                                    ; preds = %1474
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 2048
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1522, label %1507

; <label>:1507                                    ; preds = %1502
  %1508 = add i32 %44, 368
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = add i32 %1510, 0
  %1512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1512, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 3
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = shl i32 %1516, 4
  %1518 = and i32 %1517, 32752
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = fmul fast float %1519, %1514
  %1521 = call float @dx.op.binary.f32(i32 35, float %1520, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1522

; <label>:1522                                    ; preds = %1507, %1502, %1474
  %1523 = phi float [ %1521, %1507 ], [ 0x3F70101020000000, %1502 ], [ 0x3F70101020000000, %1474 ]
  %1524 = add i32 %44, 96
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = lshr i32 %1526, 8
  %1530 = and i32 %1529, 255
  %1531 = uitofp i32 %1530 to float
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1309, float %1310, float %1311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = fmul fast float %1531, %1532
  %1534 = fadd fast float %1533, %1528
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  br i1 %801, label %1537, label %1572

; <label>:1537                                    ; preds = %1522
  %1538 = fmul fast float %1523, 2.000000e+00
  %1539 = fcmp fast olt float %1495, 1.270000e+02
  %1540 = fcmp fast olt float %1496, 1.270000e+02
  %1541 = fcmp fast olt float %1497, 1.270000e+02
  %1542 = fmul fast float %1495, 0xBFF7154760000000
  %1543 = fmul fast float %1542, %1538
  %1544 = fmul fast float %1496, 0xBFF7154760000000
  %1545 = fmul fast float %1544, %1538
  %1546 = fmul fast float %1497, 0xBFF7154760000000
  %1547 = fmul fast float %1546, %1538
  %1548 = call float @dx.op.unary.f32(i32 21, float %1543)  ; Exp(value)
  %1549 = call float @dx.op.unary.f32(i32 21, float %1545)  ; Exp(value)
  %1550 = call float @dx.op.unary.f32(i32 21, float %1547)  ; Exp(value)
  %1551 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1552 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1553 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1554 = fadd fast float %1551, -1.000000e+00
  %1555 = select i1 %1539, float %1554, float -1.000000e+00
  %1556 = fadd fast float %1552, -1.000000e+00
  %1557 = select i1 %1540, float %1556, float -1.000000e+00
  %1558 = fadd fast float %1553, -1.000000e+00
  %1559 = select i1 %1541, float %1558, float -1.000000e+00
  %1560 = fmul fast float %1555, %1089
  %1561 = fmul fast float %1557, %1089
  %1562 = fmul fast float %1559, %1089
  %1563 = fadd fast float %1560, 1.000000e+00
  %1564 = fadd fast float %1561, 1.000000e+00
  %1565 = fadd fast float %1562, 1.000000e+00
  %1566 = fmul fast float %1563, %790
  %1567 = fmul fast float %1564, %791
  %1568 = fmul fast float %1565, %792
  %1569 = fmul fast float %1563, %793
  %1570 = fmul fast float %1564, %794
  %1571 = fmul fast float %1565, %795
  br label %1572

; <label>:1572                                    ; preds = %1537, %1522
  %1573 = phi float [ %1566, %1537 ], [ %790, %1522 ]
  %1574 = phi float [ %1567, %1537 ], [ %791, %1522 ]
  %1575 = phi float [ %1568, %1537 ], [ %792, %1522 ]
  %1576 = phi float [ %1569, %1537 ], [ %793, %1522 ]
  %1577 = phi float [ %1570, %1537 ], [ %794, %1522 ]
  %1578 = phi float [ %1571, %1537 ], [ %795, %1522 ]
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 3
  %1582 = icmp eq i32 %1581, 3
  br i1 %1582, label %1661, label %1583

; <label>:1583                                    ; preds = %1572
  %1584 = and i32 %1580, 16
  %1585 = icmp ne i32 %1584, 0
  %1586 = select i1 %1585, float %1089, float 0.000000e+00
  %1587 = icmp eq i32 %1581, 0
  br i1 %1587, label %1588, label %1616

; <label>:1588                                    ; preds = %1583
  %1589 = and i32 %1580, 64
  %1590 = icmp ne i32 %1589, 0
  %1591 = select i1 %1590, float %1089, float 0.000000e+00
  %1592 = fsub fast float %1309, %1573
  %1593 = fsub fast float %1310, %1574
  %1594 = fsub fast float %1311, %1575
  %1595 = fmul fast float %1586, %1592
  %1596 = fmul fast float %1586, %1593
  %1597 = fmul fast float %1586, %1594
  %1598 = fadd fast float %1595, %1573
  %1599 = fadd fast float %1596, %1574
  %1600 = fadd fast float %1597, %1575
  %1601 = fsub fast float %1295, %796
  %1602 = fmul fast float %1586, %1601
  %1603 = fadd fast float %1602, %796
  %1604 = fsub fast float %1437, %1576
  %1605 = fsub fast float %1438, %1577
  %1606 = fsub fast float %1439, %1578
  %1607 = fmul fast float %1591, %1604
  %1608 = fmul fast float %1591, %1605
  %1609 = fmul fast float %1591, %1606
  %1610 = fadd fast float %1607, %1576
  %1611 = fadd fast float %1608, %1577
  %1612 = fadd fast float %1609, %1578
  %1613 = fsub fast float %1536, %800
  %1614 = fmul fast float %1586, %1613
  %1615 = fadd fast float %1614, %800
  br label %1661

; <label>:1616                                    ; preds = %1583
  %1617 = icmp eq i32 %1581, 1
  br i1 %1617, label %1618, label %1631

; <label>:1618                                    ; preds = %1616
  %1619 = fadd fast float %1309, -1.000000e+00
  %1620 = fadd fast float %1310, -1.000000e+00
  %1621 = fadd fast float %1311, -1.000000e+00
  %1622 = fmul fast float %1586, %1619
  %1623 = fmul fast float %1586, %1620
  %1624 = fmul fast float %1586, %1621
  %1625 = fadd fast float %1622, 1.000000e+00
  %1626 = fadd fast float %1623, 1.000000e+00
  %1627 = fadd fast float %1624, 1.000000e+00
  %1628 = fmul fast float %1625, %1573
  %1629 = fmul fast float %1626, %1574
  %1630 = fmul fast float %1627, %1575
  br label %1661

; <label>:1631                                    ; preds = %1616
  %1632 = icmp eq i32 %1581, 2
  br i1 %1632, label %1633, label %1661

; <label>:1633                                    ; preds = %1631
  %1634 = call float @dx.op.unary.f32(i32 24, float %1309)  ; Sqrt(value)
  %1635 = call float @dx.op.unary.f32(i32 24, float %1310)  ; Sqrt(value)
  %1636 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  %1637 = fadd fast float %1634, -5.000000e-01
  %1638 = fadd fast float %1635, -5.000000e-01
  %1639 = fadd fast float %1636, -5.000000e-01
  %1640 = fmul fast float %1637, %1586
  %1641 = fmul fast float %1638, %1586
  %1642 = fmul fast float %1639, %1586
  %1643 = fadd fast float %1640, 5.000000e-01
  %1644 = fadd fast float %1641, 5.000000e-01
  %1645 = fadd fast float %1642, 5.000000e-01
  %1646 = fmul fast float %1643, 2.000000e+00
  %1647 = fsub fast float 1.000000e+00, %1646
  %1648 = fmul fast float %1647, %1573
  %1649 = fadd fast float %1648, %1646
  %1650 = fmul fast float %1649, %1573
  %1651 = fmul fast float %1644, 2.000000e+00
  %1652 = fsub fast float 1.000000e+00, %1651
  %1653 = fmul fast float %1652, %1574
  %1654 = fadd fast float %1653, %1651
  %1655 = fmul fast float %1654, %1574
  %1656 = fmul fast float %1645, 2.000000e+00
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1657, %1575
  %1659 = fadd fast float %1658, %1656
  %1660 = fmul fast float %1659, %1575
  br label %1661

; <label>:1661                                    ; preds = %1633, %1631, %1618, %1588, %1572
  %1662 = phi float [ %1573, %1572 ], [ %1650, %1633 ], [ %1573, %1631 ], [ %1628, %1618 ], [ %1598, %1588 ]
  %1663 = phi float [ %1574, %1572 ], [ %1655, %1633 ], [ %1574, %1631 ], [ %1629, %1618 ], [ %1599, %1588 ]
  %1664 = phi float [ %1575, %1572 ], [ %1660, %1633 ], [ %1575, %1631 ], [ %1630, %1618 ], [ %1600, %1588 ]
  %1665 = phi float [ %1576, %1572 ], [ %1576, %1633 ], [ %1576, %1631 ], [ %1576, %1618 ], [ %1610, %1588 ]
  %1666 = phi float [ %1577, %1572 ], [ %1577, %1633 ], [ %1577, %1631 ], [ %1577, %1618 ], [ %1611, %1588 ]
  %1667 = phi float [ %1578, %1572 ], [ %1578, %1633 ], [ %1578, %1631 ], [ %1578, %1618 ], [ %1612, %1588 ]
  %1668 = phi float [ %796, %1572 ], [ %796, %1633 ], [ %796, %1631 ], [ %796, %1618 ], [ %1603, %1588 ]
  %1669 = phi float [ %800, %1572 ], [ %800, %1633 ], [ %800, %1631 ], [ %800, %1618 ], [ %1615, %1588 ]
  %1670 = and i32 %1580, 12
  %1671 = icmp eq i32 %1670, 12
  br i1 %1671, label %1744, label %1672

; <label>:1672                                    ; preds = %1661
  %1673 = and i32 %1580, 2097184
  %1674 = icmp eq i32 %1673, 2097184
  %1675 = select i1 %1674, float %1089, float 0.000000e+00
  %1676 = and i32 %1580, 4194336
  %1677 = icmp eq i32 %1676, 4194336
  %1678 = select i1 %1677, float %1089, float 0.000000e+00
  %1679 = and i32 %1580, 8388640
  %1680 = icmp eq i32 %1679, 8388640
  %1681 = select i1 %1680, float %1089, float 0.000000e+00
  %1682 = icmp eq i32 %1670, 0
  br i1 %1682, label %1683, label %1696

; <label>:1683                                    ; preds = %1672
  %1684 = fsub fast float %1390, %788
  %1685 = fsub fast float %1391, %789
  %1686 = fmul fast float %1675, %1684
  %1687 = fmul fast float %1675, %1685
  %1688 = fadd fast float %1686, %788
  %1689 = fadd fast float %1687, %789
  %1690 = fsub fast float %1392, %799
  %1691 = fmul fast float %1678, %1690
  %1692 = fadd fast float %1691, %799
  %1693 = fsub fast float %1389, %798
  %1694 = fmul fast float %1681, %1693
  %1695 = fadd fast float %1694, %798
  br label %1744

; <label>:1696                                    ; preds = %1672
  %1697 = icmp eq i32 %1670, 4
  br i1 %1697, label %1698, label %1730

; <label>:1698                                    ; preds = %1696
  %1699 = fmul fast float %1675, %1390
  %1700 = fmul fast float %1675, %1391
  %1701 = fadd fast float %1699, %788
  %1702 = fadd fast float %1700, %789
  %1703 = call float @dx.op.binary.f32(i32 36, float %799, float %1392)  ; FMin(a,b)
  %1704 = fsub fast float %1703, %799
  %1705 = fmul fast float %1704, %1678
  %1706 = fadd fast float %1705, %799
  %1707 = fadd fast float %1389, %798
  %1708 = fmul fast float %1707, 0x3FF337FAE0000000
  %1709 = fmul fast float %798, %798
  %1710 = fmul fast float %1389, %1389
  %1711 = fadd fast float %1710, %1709
  %1712 = fmul fast float %1711, 0x3FE5152B00000000
  %1713 = fmul fast float %798, 0xBFCC1F85E0000000
  %1714 = fmul fast float %1713, %1389
  %1715 = fadd fast float %1714, 0xBFE1363700000000
  %1716 = fadd fast float %1715, %1708
  %1717 = fsub fast float %1716, %1712
  %1718 = fmul fast float %1707, 0x3FBA6F0D00000000
  %1719 = fmul fast float %1711, 0x3FD0432880000000
  %1720 = fmul fast float %798, 0xBFEF110800000000
  %1721 = fmul fast float %1720, %1389
  %1722 = fadd fast float %1721, 1.000000e+00
  %1723 = fsub fast float %1722, %1718
  %1724 = fadd fast float %1723, %1719
  %1725 = fdiv fast float %1717, %1724
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1727 = fsub fast float %1726, %798
  %1728 = fmul fast float %1727, %1681
  %1729 = fadd fast float %1728, %798
  br label %1744

; <label>:1730                                    ; preds = %1696
  %1731 = icmp eq i32 %1670, 8
  br i1 %1731, label %1732, label %1744

; <label>:1732                                    ; preds = %1730
  %1733 = fmul fast float %1675, %1390
  %1734 = fmul fast float %1675, %1391
  %1735 = fadd fast float %1733, %788
  %1736 = fadd fast float %1734, %789
  %1737 = call float @dx.op.binary.f32(i32 36, float %799, float %1392)  ; FMin(a,b)
  %1738 = fsub fast float %1737, %799
  %1739 = fmul fast float %1738, %1678
  %1740 = fadd fast float %1739, %799
  %1741 = fsub fast float %1389, %798
  %1742 = fmul fast float %1681, %1741
  %1743 = fadd fast float %1742, %798
  br label %1744

; <label>:1744                                    ; preds = %1732, %1730, %1698, %1683, %1661, %1088, %787
  %1745 = phi float [ %788, %1661 ], [ %788, %1088 ], [ %788, %787 ], [ %1688, %1683 ], [ %1701, %1698 ], [ %788, %1730 ], [ %1735, %1732 ]
  %1746 = phi float [ %789, %1661 ], [ %789, %1088 ], [ %789, %787 ], [ %1689, %1683 ], [ %1702, %1698 ], [ %789, %1730 ], [ %1736, %1732 ]
  %1747 = phi float [ %1662, %1661 ], [ %790, %1088 ], [ %790, %787 ], [ %1662, %1683 ], [ %1662, %1698 ], [ %1662, %1730 ], [ %1662, %1732 ]
  %1748 = phi float [ %1663, %1661 ], [ %791, %1088 ], [ %791, %787 ], [ %1663, %1683 ], [ %1663, %1698 ], [ %1663, %1730 ], [ %1663, %1732 ]
  %1749 = phi float [ %1664, %1661 ], [ %792, %1088 ], [ %792, %787 ], [ %1664, %1683 ], [ %1664, %1698 ], [ %1664, %1730 ], [ %1664, %1732 ]
  %1750 = phi float [ %1665, %1661 ], [ %793, %1088 ], [ %793, %787 ], [ %1665, %1683 ], [ %1665, %1698 ], [ %1665, %1730 ], [ %1665, %1732 ]
  %1751 = phi float [ %1666, %1661 ], [ %794, %1088 ], [ %794, %787 ], [ %1666, %1683 ], [ %1666, %1698 ], [ %1666, %1730 ], [ %1666, %1732 ]
  %1752 = phi float [ %1667, %1661 ], [ %795, %1088 ], [ %795, %787 ], [ %1667, %1683 ], [ %1667, %1698 ], [ %1667, %1730 ], [ %1667, %1732 ]
  %1753 = phi float [ %1668, %1661 ], [ %796, %1088 ], [ %796, %787 ], [ %1668, %1683 ], [ %1668, %1698 ], [ %1668, %1730 ], [ %1668, %1732 ]
  %1754 = phi float [ %798, %1661 ], [ %798, %1088 ], [ %798, %787 ], [ %1695, %1683 ], [ %1729, %1698 ], [ %798, %1730 ], [ %1743, %1732 ]
  %1755 = phi float [ %799, %1661 ], [ %799, %1088 ], [ %799, %787 ], [ %1692, %1683 ], [ %1706, %1698 ], [ %799, %1730 ], [ %1740, %1732 ]
  %1756 = phi float [ %1669, %1661 ], [ %800, %1088 ], [ %800, %787 ], [ %1669, %1683 ], [ %1669, %1698 ], [ %1669, %1730 ], [ %1669, %1732 ]
  %1757 = icmp ult i32 %318, 3
  %1758 = add i32 %44, 56
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = add i32 %44, 60
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = or i32 %1763, %1760
  %1765 = icmp eq i32 %1764, 0
  br i1 %1765, label %2700, label %1766

; <label>:1766                                    ; preds = %1744
  %1767 = add i32 %44, 252
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = lshr i32 %1769, 16
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = fmul fast float %1771, 0x3F50624DE0000000
  %1773 = add i32 %44, 104
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = lshr i32 %1775, 16
  %1777 = and i32 %1776, 255
  %1778 = lshr i32 %1775, 24
  %1779 = add i32 %44, 260
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = and i32 %1781, 65535
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = lshr i32 %1781, 16
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = add i32 %44, 64
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = lshr i32 %1788, 22
  %1790 = shl nuw nsw i32 %1789, 5
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = shl i32 %1788, 4
  %1793 = and i32 %1792, 32752
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = lshr i32 %1788, 7
  %1796 = and i32 %1795, 32752
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1800 = fmul fast float %1799, 1.000000e+03
  %1801 = fmul fast float %311, %1800
  %1802 = call float @dx.op.unary.f32(i32 22, float %1801)  ; Frc(value)
  %1803 = fadd fast float %1802, %301
  %1804 = fmul fast float %312, %1800
  %1805 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1806 = fadd fast float %1805, %303
  %1807 = fmul fast float %1772, %1800
  %1808 = call float @dx.op.unary.f32(i32 22, float %1807)  ; Frc(value)
  %1809 = fmul fast float %1808, 0x401921FB60000000
  %1810 = fadd fast float %1809, %1791
  %1811 = call float @dx.op.unary.f32(i32 13, float %1810)  ; Sin(value)
  %1812 = call float @dx.op.unary.f32(i32 12, float %1810)  ; Cos(value)
  %1813 = fsub fast float -0.000000e+00, %1811
  %1814 = fadd fast float %63, -5.000000e-01
  %1815 = fadd fast float %64, -5.000000e-01
  %1816 = fmul fast float %1783, %1814
  %1817 = fmul fast float %1785, %1815
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fadd fast float %1817, 5.000000e-01
  %1820 = fmul fast float %1794, %1818
  %1821 = fmul fast float %1797, %1819
  %1822 = fmul fast float %1812, %1820
  %1823 = call float @dx.op.tertiary.f32(i32 46, float %1813, float %1821, float %1822)  ; FMad(a,b,c)
  %1824 = fmul fast float %1811, %1820
  %1825 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1821, float %1824)  ; FMad(a,b,c)
  %1826 = fadd fast float %1803, %1823
  %1827 = fadd fast float %1806, %1825
  %1828 = icmp ugt i32 %1777, 1
  %1829 = icmp ugt i32 %1775, 33554431
  %1830 = or i1 %1829, %1828
  br i1 %1830, label %1831, label %1856

; <label>:1831                                    ; preds = %1766
  %1832 = add i32 %44, 212
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = lshr i32 %1834, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fmul fast float %1799, %1836
  %1838 = call float @dx.op.unary.f32(i32 22, float %1837)  ; Frc(value)
  %1839 = mul nuw nsw i32 %1777, %1778
  %1840 = uitofp i32 %1839 to float
  %1841 = fmul fast float %1838, %1840
  %1842 = call float @dx.op.unary.f32(i32 27, float %1841)  ; Round_ni(value)
  %1843 = fptoui float %1842 to i32
  %1844 = urem i32 %1843, %1777
  %1845 = udiv i32 %1843, %1778
  %1846 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1847 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1848 = uitofp i32 %1844 to float
  %1849 = uitofp i32 %1845 to float
  %1850 = fadd fast float %1846, %1848
  %1851 = fadd fast float %1847, %1849
  %1852 = uitofp i32 %1777 to float
  %1853 = uitofp i32 %1778 to float
  %1854 = fdiv fast float %1850, %1852
  %1855 = fdiv fast float %1851, %1853
  br label %1856

; <label>:1856                                    ; preds = %1831, %1766
  %1857 = phi float [ %1854, %1831 ], [ %1826, %1766 ]
  %1858 = phi float [ %1855, %1831 ], [ %1827, %1766 ]
  %1859 = and i32 %1760, 16777216
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1970, label %1861

; <label>:1861                                    ; preds = %1856
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.CBufRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1866 = fadd fast float %1863, %125
  %1867 = fadd fast float %1864, %126
  %1868 = fadd fast float %1865, %127
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 0
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = icmp eq i32 %43, 65535
  br i1 %1872, label %1967, label %1873

; <label>:1873                                    ; preds = %1861
  %1874 = lshr i32 %43, 1
  %1875 = shl i32 %1874, 2
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = and i32 %43, 1
  %1879 = icmp ne i32 %1878, 0
  %1880 = lshr i32 %1877, 16
  %1881 = and i32 %1877, 65535
  %1882 = select i1 %1879, i32 %1880, i32 %1881
  %1883 = icmp eq i32 %1882, 65535
  br i1 %1883, label %1963, label %1884

; <label>:1884                                    ; preds = %1873
  %1885 = mul nuw nsw i32 %1882, 40
  %1886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = add nuw nsw i32 %1885, 12
  %1891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.f32 %1891, 2
  %1895 = add nuw nsw i32 %1885, 24
  %1896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.ResRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.ResRet.f32 %1896, 2
  %1900 = add nuw nsw i32 %1885, 36
  %1901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = fsub fast float %1866, %1887
  %1904 = fsub fast float %1867, %1888
  %1905 = fsub fast float %1868, %1889
  %1906 = fmul fast float %1902, %1903
  %1907 = fmul fast float %1902, %1904
  %1908 = fmul fast float %1902, %1905
  %1909 = call float @dx.op.unary.f32(i32 27, float %1906)  ; Round_ni(value)
  %1910 = call float @dx.op.unary.f32(i32 27, float %1907)  ; Round_ni(value)
  %1911 = call float @dx.op.unary.f32(i32 27, float %1908)  ; Round_ni(value)
  %1912 = fadd fast float %1909, 5.000000e-01
  %1913 = fadd fast float %1910, 5.000000e-01
  %1914 = fadd fast float %1911, 5.000000e-01
  %1915 = fmul fast float %1912, %1892
  %1916 = fmul fast float %1913, %1893
  %1917 = fmul fast float %1914, %1894
  %1918 = shl i32 %43, 2
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = add i32 %1920, 0
  %1922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1923 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1924 = call float @dx.op.unary.f32(i32 22, float %1916)  ; Frc(value)
  %1925 = call float @dx.op.unary.f32(i32 22, float %1917)  ; Frc(value)
  %1926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1922, %dx.types.Handle %40, float %1923, float %1924, float %1925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1927 = extractvalue %dx.types.ResRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.ResRet.f32 %1926, 1
  %1929 = extractvalue %dx.types.ResRet.f32 %1926, 2
  %1930 = fmul fast float %1927, 1.023000e+03
  %1931 = fmul fast float %1928, 1.023000e+03
  %1932 = fmul fast float %1929, 1.023000e+03
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1931, 5.000000e-01
  %1935 = fadd fast float %1932, 5.000000e-01
  %1936 = call float @dx.op.unary.f32(i32 27, float %1933)  ; Round_ni(value)
  %1937 = call float @dx.op.unary.f32(i32 27, float %1934)  ; Round_ni(value)
  %1938 = call float @dx.op.unary.f32(i32 27, float %1935)  ; Round_ni(value)
  %1939 = fsub fast float %1906, %1909
  %1940 = fsub fast float %1907, %1910
  %1941 = fsub fast float %1908, %1911
  %1942 = fmul fast float %1939, 7.500000e-01
  %1943 = fmul fast float %1940, 7.500000e-01
  %1944 = fmul fast float %1941, 7.500000e-01
  %1945 = fadd fast float %1909, 1.250000e-01
  %1946 = fadd fast float %1945, %1942
  %1947 = fadd fast float %1946, %1936
  %1948 = fadd fast float %1910, 1.250000e-01
  %1949 = fadd fast float %1948, %1943
  %1950 = fadd fast float %1949, %1937
  %1951 = fadd fast float %1911, 1.250000e-01
  %1952 = fadd fast float %1951, %1944
  %1953 = fadd fast float %1952, %1938
  %1954 = fmul fast float %1947, %1897
  %1955 = fmul fast float %1950, %1898
  %1956 = fmul fast float %1953, %1899
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = add i32 %1958, 0
  %1960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1960, %dx.types.Handle %38, float %1954, float %1955, float %1956, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  br label %1963

; <label>:1963                                    ; preds = %1884, %1873
  %1964 = phi float [ %1962, %1884 ], [ -1.000000e+00, %1873 ]
  %1965 = fadd fast float %1964, %1871
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  br label %1967

; <label>:1967                                    ; preds = %1963, %1861
  %1968 = phi float [ %1966, %1963 ], [ %1871, %1861 ]
  %1969 = fmul fast float %1968, %70
  br label %1970

; <label>:1970                                    ; preds = %1967, %1856
  %1971 = phi float [ %1969, %1967 ], [ %70, %1856 ]
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = and i32 %1973, 256
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %2022, label %1976

; <label>:1976                                    ; preds = %1970
  %1977 = add i32 %44, 336
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = add i32 %1979, 0
  %1981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1981, %dx.types.Handle %75, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = add i32 %44, 116
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = shl i32 %1986, 4
  %1988 = and i32 %1987, 32752
  %1989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1988)  ; LegacyF16ToF32(value)
  %1990 = lshr i32 %1986, 7
  %1991 = and i32 %1990, 32752
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = fsub fast float 1.000000e+00, %1971
  %1994 = call float @dx.op.binary.f32(i32 35, float %1993, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1995 = bitcast float %1971 to i32
  %1996 = sitofp i32 %1995 to float
  %1997 = fadd fast float %1996, 0xC1CFBF8940000000
  %1998 = fmul fast float %1992, %1997
  %1999 = fadd fast float %1998, 0x41CFBF8940000000
  %2000 = fptosi float %1999 to i32
  %2001 = bitcast i32 %2000 to float
  %2002 = bitcast float %1994 to i32
  %2003 = sitofp i32 %2002 to float
  %2004 = fadd fast float %2003, 0xC1CFBF8940000000
  %2005 = fmul fast float %2004, %1992
  %2006 = fadd fast float %2005, 0x41CFBF8940000000
  %2007 = fptosi float %2006 to i32
  %2008 = bitcast i32 %2007 to float
  %2009 = fmul fast float %2001, %1989
  %2010 = fmul fast float %2008, %1989
  %2011 = fsub fast float %1994, %2009
  %2012 = fadd fast float %2010, %1994
  %2013 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2014 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2015 = fsub fast float %1983, %2013
  %2016 = fsub fast float %2014, %2013
  %2017 = bitcast float %2016 to i32
  %2018 = sub nsw i32 2129859010, %2017
  %2019 = bitcast i32 %2018 to float
  %2020 = fmul fast float %2019, %2015
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  br label %2022

; <label>:2022                                    ; preds = %1976, %1970
  %2023 = phi float [ %2021, %1976 ], [ %1971, %1970 ]
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 128
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2044, label %2028

; <label>:2028                                    ; preds = %2022
  %2029 = add i32 %44, 324
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = add i32 %2031, 0
  %2033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2033, %dx.types.Handle %75, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 0
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 524288
  %2039 = icmp ne i32 %2038, 0
  %2040 = fcmp fast ogt float %2035, 0x3FE0101020000000
  %2041 = select i1 %2040, float 1.000000e+00, float 0.000000e+00
  %2042 = select i1 %2039, float %2041, float %2035
  %2043 = fmul fast float %2042, %2023
  br label %2044

; <label>:2044                                    ; preds = %2028, %2022
  %2045 = phi float [ %2043, %2028 ], [ %2023, %2022 ]
  %2046 = fcmp fast ult float %2045, 0x3F70101020000000
  br i1 %2046, label %2700, label %2047

; <label>:2047                                    ; preds = %2044
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 16
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2250, label %2052

; <label>:2052                                    ; preds = %2047
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %44, 288
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %2057, 0
  %2059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2060 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2059, %dx.types.Handle %74, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.ResRet.f32 %2060, 1
  %2063 = extractvalue %dx.types.ResRet.f32 %2060, 2
  %2064 = extractvalue %dx.types.ResRet.f32 %2060, 3
  %2065 = and i32 %2054, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = lshr i32 %2054, 8
  %2068 = and i32 %2067, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2064, %2066
  %2071 = fadd fast float %2070, %2069
  %2072 = fmul fast float %2071, 0x3F70101000000000
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 512
  %2076 = icmp eq i32 %2075, 0
  br i1 %2076, label %2085, label %2077

; <label>:2077                                    ; preds = %2052
  %2078 = add i32 %44, 348
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = add i32 %2080, 0
  %2082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2082, %dx.types.Handle %75, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  br label %2085

; <label>:2085                                    ; preds = %2077, %2052
  %2086 = phi float [ %2084, %2077 ], [ 1.000000e+00, %2052 ]
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 33554432
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2197, label %2091

; <label>:2091                                    ; preds = %2085
  %2092 = add i32 %44, 208
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = and i32 %2094, 65535
  %2096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2095)  ; LegacyF16ToF32(value)
  %2097 = lshr i32 %2094, 16
  %2098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2097)  ; LegacyF16ToF32(value)
  %2099 = add i32 %44, 212
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = and i32 %2101, 65535
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = lshr i32 %2105, 24
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = and i32 %2105, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = lshr i32 %2105, 8
  %2113 = and i32 %2112, 255
  %2114 = uitofp i32 %2113 to float
  %2115 = fmul fast float %2114, 0x3F70101020000000
  %2116 = lshr i32 %2105, 16
  %2117 = and i32 %2116, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = add i32 %44, 204
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2120, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = lshr i32 %2122, 24
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = and i32 %2122, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = lshr i32 %2122, 8
  %2130 = and i32 %2129, 255
  %2131 = uitofp i32 %2130 to float
  %2132 = fmul fast float %2131, 0x3F70101020000000
  %2133 = lshr i32 %2122, 16
  %2134 = and i32 %2133, 255
  %2135 = uitofp i32 %2134 to float
  %2136 = fmul fast float %2135, 0x3F70101020000000
  %2137 = bitcast float %2061 to i32
  %2138 = ashr i32 %2137, 1
  %2139 = sub nsw i32 1597463174, %2138
  %2140 = bitcast i32 %2139 to float
  %2141 = fmul fast float %2061, 5.000000e-01
  %2142 = fmul fast float %2140, %2140
  %2143 = fmul fast float %2142, %2141
  %2144 = fsub fast float 1.500000e+00, %2143
  %2145 = fmul fast float %2140, %2061
  %2146 = fmul fast float %2145, %2144
  %2147 = bitcast float %2062 to i32
  %2148 = ashr i32 %2147, 1
  %2149 = sub nsw i32 1597463174, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2062, 5.000000e-01
  %2152 = fmul fast float %2150, %2150
  %2153 = fmul fast float %2152, %2151
  %2154 = fsub fast float 1.500000e+00, %2153
  %2155 = fmul fast float %2150, %2062
  %2156 = fmul fast float %2155, %2154
  %2157 = bitcast float %2063 to i32
  %2158 = ashr i32 %2157, 1
  %2159 = sub nsw i32 1597463174, %2158
  %2160 = bitcast i32 %2159 to float
  %2161 = fmul fast float %2063, 5.000000e-01
  %2162 = fmul fast float %2160, %2160
  %2163 = fmul fast float %2162, %2161
  %2164 = fsub fast float 1.500000e+00, %2163
  %2165 = fmul fast float %2160, %2063
  %2166 = fmul fast float %2165, %2164
  %2167 = fsub fast float %2146, %2128
  %2168 = fsub fast float %2156, %2132
  %2169 = fsub fast float %2166, %2136
  %2170 = fmul fast float %2167, %2096
  %2171 = fmul fast float %2168, %2098
  %2172 = fmul fast float %2169, %2103
  %2173 = fadd fast float %2170, %2111
  %2174 = fadd fast float %2171, %2115
  %2175 = fadd fast float %2172, %2119
  %2176 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2177 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2178 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2179 = fmul fast float %2176, %2176
  %2180 = fmul fast float %2177, %2177
  %2181 = fmul fast float %2178, %2178
  %2182 = fsub fast float %2179, %2061
  %2183 = fsub fast float %2180, %2062
  %2184 = fsub fast float %2181, %2063
  %2185 = fmul fast float %2182, %2086
  %2186 = fmul fast float %2183, %2086
  %2187 = fmul fast float %2184, %2086
  %2188 = fadd fast float %2185, %2061
  %2189 = fadd fast float %2186, %2062
  %2190 = fadd fast float %2187, %2063
  %2191 = fadd fast float %2108, %2072
  %2192 = fsub fast float %2191, %2125
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fsub fast float %2193, %2072
  %2195 = fmul fast float %2194, %2086
  %2196 = fadd fast float %2195, %2072
  br label %2250

; <label>:2197                                    ; preds = %2085
  %2198 = and i32 %2088, 134217728
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2234, label %2200

; <label>:2200                                    ; preds = %2197
  %2201 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2202 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %2203 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %2204 = fadd fast float %2201, -5.000000e-01
  %2205 = fadd fast float %2202, -5.000000e-01
  %2206 = fadd fast float %2203, -5.000000e-01
  %2207 = fmul fast float %2204, %2086
  %2208 = fmul fast float %2205, %2086
  %2209 = fmul fast float %2206, %2086
  %2210 = fadd fast float %2207, 5.000000e-01
  %2211 = fadd fast float %2208, 5.000000e-01
  %2212 = fadd fast float %2209, 5.000000e-01
  %2213 = call float @dx.op.unary.f32(i32 24, float %2061)  ; Sqrt(value)
  %2214 = call float @dx.op.unary.f32(i32 24, float %2062)  ; Sqrt(value)
  %2215 = call float @dx.op.unary.f32(i32 24, float %2063)  ; Sqrt(value)
  %2216 = fmul fast float %2210, 2.000000e+00
  %2217 = fsub fast float 1.000000e+00, %2216
  %2218 = fmul fast float %2217, %2213
  %2219 = fadd fast float %2218, %2216
  %2220 = fmul fast float %2219, %2213
  %2221 = fmul fast float %2211, 2.000000e+00
  %2222 = fsub fast float 1.000000e+00, %2221
  %2223 = fmul fast float %2222, %2214
  %2224 = fadd fast float %2223, %2221
  %2225 = fmul fast float %2224, %2214
  %2226 = fmul fast float %2212, 2.000000e+00
  %2227 = fsub fast float 1.000000e+00, %2226
  %2228 = fmul fast float %2227, %2215
  %2229 = fadd fast float %2228, %2226
  %2230 = fmul fast float %2229, %2215
  %2231 = fmul fast float %2220, %2220
  %2232 = fmul fast float %2225, %2225
  %2233 = fmul fast float %2230, %2230
  br label %2250

; <label>:2234                                    ; preds = %2197
  %2235 = fmul fast float %288, %288
  %2236 = fmul fast float %292, %292
  %2237 = fmul fast float %296, %296
  %2238 = fadd fast float %2235, -1.000000e+00
  %2239 = fadd fast float %2236, -1.000000e+00
  %2240 = fadd fast float %2237, -1.000000e+00
  %2241 = fmul fast float %2086, %2238
  %2242 = fmul fast float %2086, %2239
  %2243 = fmul fast float %2086, %2240
  %2244 = fadd fast float %2241, 1.000000e+00
  %2245 = fadd fast float %2242, 1.000000e+00
  %2246 = fadd fast float %2243, 1.000000e+00
  %2247 = fmul fast float %2244, %2061
  %2248 = fmul fast float %2245, %2062
  %2249 = fmul fast float %2246, %2063
  br label %2250

; <label>:2250                                    ; preds = %2234, %2200, %2091, %2047
  %2251 = phi float [ %2196, %2091 ], [ %2072, %2200 ], [ %2072, %2234 ], [ 0x3FA23C0BE0000000, %2047 ]
  %2252 = phi float [ %2188, %2091 ], [ %2231, %2200 ], [ %2247, %2234 ], [ 1.000000e+00, %2047 ]
  %2253 = phi float [ %2189, %2091 ], [ %2232, %2200 ], [ %2248, %2234 ], [ 1.000000e+00, %2047 ]
  %2254 = phi float [ %2190, %2091 ], [ %2233, %2200 ], [ %2249, %2234 ], [ 1.000000e+00, %2047 ]
  %2255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.i32 %2255, 1
  %2257 = and i32 %2256, 1
  %2258 = icmp ne i32 %2257, 0
  %2259 = add i32 %44, 276
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 32
  %2263 = icmp ne i32 %2262, 0
  %2264 = and i1 %2258, %2263
  %2265 = select i1 %2264, float 1.000000e+00, float %2252
  %2266 = select i1 %2264, float 0x3FD3333340000000, float %2253
  %2267 = select i1 %2264, float 0x3FD3333340000000, float %2254
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 32
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2344, label %2272

; <label>:2272                                    ; preds = %2250
  %2273 = add i32 %44, 108
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = add i32 %44, 300
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = add i32 %2278, 0
  %2280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2280, %dx.types.Handle %74, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = extractvalue %dx.types.ResRet.f32 %2281, 3
  %2286 = and i32 %2275, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = lshr i32 %2275, 8
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = lshr i32 %2275, 16
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101000000000
  %2295 = fmul fast float %2282, %2287
  %2296 = fadd fast float %2295, %2290
  %2297 = fmul fast float %2296, 0x3F70101000000000
  %2298 = fadd fast float %2283, -5.000000e-01
  %2299 = fadd fast float %2285, -5.000000e-01
  %2300 = fmul fast float %2298, %2294
  %2301 = fmul fast float %2299, %2294
  %2302 = fadd fast float %2300, 5.000000e-01
  %2303 = fadd fast float %2301, 5.000000e-01
  %2304 = fmul fast float %2302, 2.000000e+00
  %2305 = fadd fast float %2304, -1.000000e+00
  %2306 = fmul fast float %2303, 2.000000e+00
  %2307 = fadd fast float %2306, -1.000000e+00
  %2308 = fadd fast float %2305, %2307
  %2309 = fmul fast float %2308, 5.000000e-01
  %2310 = fsub fast float %2305, %2307
  %2311 = fmul fast float %2310, 5.000000e-01
  %2312 = call float @dx.op.unary.f32(i32 6, float %2309)  ; FAbs(value)
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = call float @dx.op.unary.f32(i32 6, float %2311)  ; FAbs(value)
  %2315 = fsub fast float %2313, %2314
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2309, float %2311, float %2315, float %2309, float %2311, float %2315)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = call float @dx.op.unary.f32(i32 25, float %2316)  ; Rsqrt(value)
  %2318 = fmul fast float %2309, %2317
  %2319 = fmul fast float %2311, %2317
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 67108864
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2340, label %2324

; <label>:2324                                    ; preds = %2272
  %2325 = add i32 %44, 248
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 65535
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 65535
  %2333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2332)  ; LegacyF16ToF32(value)
  %2334 = lshr i32 %2327, 16
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = fsub fast float %2297, %2335
  %2337 = fmul fast float %2336, %2329
  %2338 = fadd fast float %2337, %2333
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  br label %2340

; <label>:2340                                    ; preds = %2324, %2272
  %2341 = phi float [ %2339, %2324 ], [ %2297, %2272 ]
  %2342 = call float @dx.op.dot2.f32(i32 54, float %2318, float %2319, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %2343 = call float @dx.op.dot2.f32(i32 54, float %2318, float %2319, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %2344

; <label>:2344                                    ; preds = %2340, %2250
  %2345 = phi float [ %2341, %2340 ], [ 0x3FD6666660000000, %2250 ]
  %2346 = phi float [ %2342, %2340 ], [ 0.000000e+00, %2250 ]
  %2347 = phi float [ %2343, %2340 ], [ 0.000000e+00, %2250 ]
  %2348 = phi float [ %2284, %2340 ], [ 1.000000e+00, %2250 ]
  %2349 = add i32 %44, 160
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = lshr i32 %2351, 22
  %2353 = shl nuw nsw i32 %2352, 5
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = and i32 %2356, 64
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2392, label %2359

; <label>:2359                                    ; preds = %2344
  %2360 = add i32 %44, 312
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = add i32 %2362, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 131072
  %2368 = icmp eq i32 %2367, 0
  %2369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2364, %dx.types.Handle %74, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.ResRet.f32 %2369, 2
  %2373 = fmul fast float %2370, %276
  %2374 = fmul fast float %2371, %279
  %2375 = fmul fast float %2372, %282
  br i1 %2368, label %2382, label %2376

; <label>:2376                                    ; preds = %2359
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2379 = fmul fast float %2378, %2373
  %2380 = fmul fast float %2378, %2374
  %2381 = fmul fast float %2378, %2375
  br label %2382

; <label>:2382                                    ; preds = %2376, %2359
  %2383 = phi float [ %2379, %2376 ], [ %2373, %2359 ]
  %2384 = phi float [ %2380, %2376 ], [ %2374, %2359 ]
  %2385 = phi float [ %2381, %2376 ], [ %2375, %2359 ]
  %2386 = fmul fast float %2383, %2354
  %2387 = select i1 %196, float %2386, float %2383
  %2388 = call float @dx.op.dot3.f32(i32 55, float %2387, float %2384, float %2385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2389 = select i1 %196, float 0.000000e+00, float %2383
  %2390 = select i1 %196, float %2388, float %2384
  %2391 = select i1 %196, float 0.000000e+00, float %2385
  br label %2392

; <label>:2392                                    ; preds = %2382, %2344
  %2393 = phi float [ %2389, %2382 ], [ 0.000000e+00, %2344 ]
  %2394 = phi float [ %2390, %2382 ], [ 0.000000e+00, %2344 ]
  %2395 = phi float [ %2391, %2382 ], [ 0.000000e+00, %2344 ]
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = and i32 %2397, 1024
  %2399 = icmp eq i32 %2398, 0
  br i1 %2399, label %2430, label %2400

; <label>:2400                                    ; preds = %2392
  %2401 = add i32 %44, 152
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 255
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2405, 0x3F70101020000000
  %2407 = lshr i32 %2403, 8
  %2408 = and i32 %2407, 255
  %2409 = uitofp i32 %2408 to float
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = lshr i32 %2403, 16
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101020000000
  %2415 = fmul fast float %2406, %2406
  %2416 = fmul fast float %2410, %2410
  %2417 = fmul fast float %2414, %2414
  %2418 = add i32 %44, 360
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = add i32 %2420, 0
  %2422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2422, %dx.types.Handle %75, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2424 = extractvalue %dx.types.ResRet.f32 %2423, 0
  %2425 = extractvalue %dx.types.ResRet.f32 %2423, 1
  %2426 = extractvalue %dx.types.ResRet.f32 %2423, 2
  %2427 = fmul fast float %2415, %2424
  %2428 = fmul fast float %2416, %2425
  %2429 = fmul fast float %2417, %2426
  br label %2430

; <label>:2430                                    ; preds = %2400, %2392
  %2431 = phi float [ %2427, %2400 ], [ 0.000000e+00, %2392 ]
  %2432 = phi float [ %2428, %2400 ], [ 0.000000e+00, %2392 ]
  %2433 = phi float [ %2429, %2400 ], [ 0.000000e+00, %2392 ]
  %2434 = fcmp fast ogt float %2431, 0.000000e+00
  %2435 = fcmp fast ogt float %2432, 0.000000e+00
  %2436 = fcmp fast ogt float %2433, 0.000000e+00
  %2437 = call float @dx.op.unary.f32(i32 23, float %2431)  ; Log(value)
  %2438 = call float @dx.op.unary.f32(i32 23, float %2432)  ; Log(value)
  %2439 = call float @dx.op.unary.f32(i32 23, float %2433)  ; Log(value)
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = lshr i32 %2441, 7
  %2443 = and i32 %2442, 32752
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = fmul fast float %2437, 0xBFE62E4300000000
  %2446 = fmul fast float %2445, %2444
  %2447 = fmul fast float %2438, 0xBFE62E4300000000
  %2448 = fmul fast float %2447, %2444
  %2449 = fmul fast float %2439, 0xBFE62E4300000000
  %2450 = fmul fast float %2449, %2444
  %2451 = select i1 %2434, float %2446, float 1.270000e+02
  %2452 = select i1 %2435, float %2448, float 1.270000e+02
  %2453 = select i1 %2436, float %2450, float 1.270000e+02
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 10240
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2478, label %2458

; <label>:2458                                    ; preds = %2430
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 2048
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2478, label %2463

; <label>:2463                                    ; preds = %2458
  %2464 = add i32 %44, 372
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = add i32 %2466, 0
  %2468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2468, %dx.types.Handle %75, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2470 = extractvalue %dx.types.ResRet.f32 %2469, 3
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = shl i32 %2472, 4
  %2474 = and i32 %2473, 32752
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = fmul fast float %2475, %2470
  %2477 = call float @dx.op.binary.f32(i32 35, float %2476, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2478

; <label>:2478                                    ; preds = %2463, %2458, %2430
  %2479 = phi float [ %2477, %2463 ], [ 0x3F70101020000000, %2458 ], [ 0x3F70101020000000, %2430 ]
  %2480 = add i32 %44, 112
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 255
  %2484 = uitofp i32 %2483 to float
  %2485 = lshr i32 %2482, 8
  %2486 = and i32 %2485, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2265, float %2266, float %2267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = fmul fast float %2487, %2488
  %2490 = fadd fast float %2489, %2484
  %2491 = fmul fast float %2490, 0x3F70101020000000
  %2492 = call float @dx.op.unary.f32(i32 7, float %2491)  ; Saturate(value)
  br i1 %1757, label %2493, label %2528

; <label>:2493                                    ; preds = %2478
  %2494 = fmul fast float %2479, 2.000000e+00
  %2495 = fcmp fast olt float %2451, 1.270000e+02
  %2496 = fcmp fast olt float %2452, 1.270000e+02
  %2497 = fcmp fast olt float %2453, 1.270000e+02
  %2498 = fmul fast float %2451, 0xBFF7154760000000
  %2499 = fmul fast float %2498, %2494
  %2500 = fmul fast float %2452, 0xBFF7154760000000
  %2501 = fmul fast float %2500, %2494
  %2502 = fmul fast float %2453, 0xBFF7154760000000
  %2503 = fmul fast float %2502, %2494
  %2504 = call float @dx.op.unary.f32(i32 21, float %2499)  ; Exp(value)
  %2505 = call float @dx.op.unary.f32(i32 21, float %2501)  ; Exp(value)
  %2506 = call float @dx.op.unary.f32(i32 21, float %2503)  ; Exp(value)
  %2507 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2508 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2509 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2510 = fadd fast float %2507, -1.000000e+00
  %2511 = select i1 %2495, float %2510, float -1.000000e+00
  %2512 = fadd fast float %2508, -1.000000e+00
  %2513 = select i1 %2496, float %2512, float -1.000000e+00
  %2514 = fadd fast float %2509, -1.000000e+00
  %2515 = select i1 %2497, float %2514, float -1.000000e+00
  %2516 = fmul fast float %2511, %2045
  %2517 = fmul fast float %2513, %2045
  %2518 = fmul fast float %2515, %2045
  %2519 = fadd fast float %2516, 1.000000e+00
  %2520 = fadd fast float %2517, 1.000000e+00
  %2521 = fadd fast float %2518, 1.000000e+00
  %2522 = fmul fast float %2519, %1747
  %2523 = fmul fast float %2520, %1748
  %2524 = fmul fast float %2521, %1749
  %2525 = fmul fast float %2519, %1750
  %2526 = fmul fast float %2520, %1751
  %2527 = fmul fast float %2521, %1752
  br label %2528

; <label>:2528                                    ; preds = %2493, %2478
  %2529 = phi float [ %2522, %2493 ], [ %1747, %2478 ]
  %2530 = phi float [ %2523, %2493 ], [ %1748, %2478 ]
  %2531 = phi float [ %2524, %2493 ], [ %1749, %2478 ]
  %2532 = phi float [ %2525, %2493 ], [ %1750, %2478 ]
  %2533 = phi float [ %2526, %2493 ], [ %1751, %2478 ]
  %2534 = phi float [ %2527, %2493 ], [ %1752, %2478 ]
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 3
  %2538 = icmp eq i32 %2537, 3
  br i1 %2538, label %2617, label %2539

; <label>:2539                                    ; preds = %2528
  %2540 = and i32 %2536, 16
  %2541 = icmp ne i32 %2540, 0
  %2542 = select i1 %2541, float %2045, float 0.000000e+00
  %2543 = icmp eq i32 %2537, 0
  br i1 %2543, label %2544, label %2572

; <label>:2544                                    ; preds = %2539
  %2545 = and i32 %2536, 64
  %2546 = icmp ne i32 %2545, 0
  %2547 = select i1 %2546, float %2045, float 0.000000e+00
  %2548 = fsub fast float %2265, %2529
  %2549 = fsub fast float %2266, %2530
  %2550 = fsub fast float %2267, %2531
  %2551 = fmul fast float %2542, %2548
  %2552 = fmul fast float %2542, %2549
  %2553 = fmul fast float %2542, %2550
  %2554 = fadd fast float %2551, %2529
  %2555 = fadd fast float %2552, %2530
  %2556 = fadd fast float %2553, %2531
  %2557 = fsub fast float %2251, %1753
  %2558 = fmul fast float %2542, %2557
  %2559 = fadd fast float %2558, %1753
  %2560 = fsub fast float %2393, %2532
  %2561 = fsub fast float %2394, %2533
  %2562 = fsub fast float %2395, %2534
  %2563 = fmul fast float %2547, %2560
  %2564 = fmul fast float %2547, %2561
  %2565 = fmul fast float %2547, %2562
  %2566 = fadd fast float %2563, %2532
  %2567 = fadd fast float %2564, %2533
  %2568 = fadd fast float %2565, %2534
  %2569 = fsub fast float %2492, %1756
  %2570 = fmul fast float %2542, %2569
  %2571 = fadd fast float %2570, %1756
  br label %2617

; <label>:2572                                    ; preds = %2539
  %2573 = icmp eq i32 %2537, 1
  br i1 %2573, label %2574, label %2587

; <label>:2574                                    ; preds = %2572
  %2575 = fadd fast float %2265, -1.000000e+00
  %2576 = fadd fast float %2266, -1.000000e+00
  %2577 = fadd fast float %2267, -1.000000e+00
  %2578 = fmul fast float %2542, %2575
  %2579 = fmul fast float %2542, %2576
  %2580 = fmul fast float %2542, %2577
  %2581 = fadd fast float %2578, 1.000000e+00
  %2582 = fadd fast float %2579, 1.000000e+00
  %2583 = fadd fast float %2580, 1.000000e+00
  %2584 = fmul fast float %2581, %2529
  %2585 = fmul fast float %2582, %2530
  %2586 = fmul fast float %2583, %2531
  br label %2617

; <label>:2587                                    ; preds = %2572
  %2588 = icmp eq i32 %2537, 2
  br i1 %2588, label %2589, label %2617

; <label>:2589                                    ; preds = %2587
  %2590 = call float @dx.op.unary.f32(i32 24, float %2265)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2266)  ; Sqrt(value)
  %2592 = call float @dx.op.unary.f32(i32 24, float %2267)  ; Sqrt(value)
  %2593 = fadd fast float %2590, -5.000000e-01
  %2594 = fadd fast float %2591, -5.000000e-01
  %2595 = fadd fast float %2592, -5.000000e-01
  %2596 = fmul fast float %2593, %2542
  %2597 = fmul fast float %2594, %2542
  %2598 = fmul fast float %2595, %2542
  %2599 = fadd fast float %2596, 5.000000e-01
  %2600 = fadd fast float %2597, 5.000000e-01
  %2601 = fadd fast float %2598, 5.000000e-01
  %2602 = fmul fast float %2599, 2.000000e+00
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2603, %2529
  %2605 = fadd fast float %2604, %2602
  %2606 = fmul fast float %2605, %2529
  %2607 = fmul fast float %2600, 2.000000e+00
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = fmul fast float %2608, %2530
  %2610 = fadd fast float %2609, %2607
  %2611 = fmul fast float %2610, %2530
  %2612 = fmul fast float %2601, 2.000000e+00
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2613, %2531
  %2615 = fadd fast float %2614, %2612
  %2616 = fmul fast float %2615, %2531
  br label %2617

; <label>:2617                                    ; preds = %2589, %2587, %2574, %2544, %2528
  %2618 = phi float [ %2529, %2528 ], [ %2606, %2589 ], [ %2529, %2587 ], [ %2584, %2574 ], [ %2554, %2544 ]
  %2619 = phi float [ %2530, %2528 ], [ %2611, %2589 ], [ %2530, %2587 ], [ %2585, %2574 ], [ %2555, %2544 ]
  %2620 = phi float [ %2531, %2528 ], [ %2616, %2589 ], [ %2531, %2587 ], [ %2586, %2574 ], [ %2556, %2544 ]
  %2621 = phi float [ %2532, %2528 ], [ %2532, %2589 ], [ %2532, %2587 ], [ %2532, %2574 ], [ %2566, %2544 ]
  %2622 = phi float [ %2533, %2528 ], [ %2533, %2589 ], [ %2533, %2587 ], [ %2533, %2574 ], [ %2567, %2544 ]
  %2623 = phi float [ %2534, %2528 ], [ %2534, %2589 ], [ %2534, %2587 ], [ %2534, %2574 ], [ %2568, %2544 ]
  %2624 = phi float [ %1753, %2528 ], [ %1753, %2589 ], [ %1753, %2587 ], [ %1753, %2574 ], [ %2559, %2544 ]
  %2625 = phi float [ %1756, %2528 ], [ %1756, %2589 ], [ %1756, %2587 ], [ %1756, %2574 ], [ %2571, %2544 ]
  %2626 = and i32 %2536, 12
  %2627 = icmp eq i32 %2626, 12
  br i1 %2627, label %2700, label %2628

; <label>:2628                                    ; preds = %2617
  %2629 = and i32 %2536, 2097184
  %2630 = icmp eq i32 %2629, 2097184
  %2631 = select i1 %2630, float %2045, float 0.000000e+00
  %2632 = and i32 %2536, 4194336
  %2633 = icmp eq i32 %2632, 4194336
  %2634 = select i1 %2633, float %2045, float 0.000000e+00
  %2635 = and i32 %2536, 8388640
  %2636 = icmp eq i32 %2635, 8388640
  %2637 = select i1 %2636, float %2045, float 0.000000e+00
  %2638 = icmp eq i32 %2626, 0
  br i1 %2638, label %2639, label %2652

; <label>:2639                                    ; preds = %2628
  %2640 = fsub fast float %2346, %1745
  %2641 = fsub fast float %2347, %1746
  %2642 = fmul fast float %2631, %2640
  %2643 = fmul fast float %2631, %2641
  %2644 = fadd fast float %2642, %1745
  %2645 = fadd fast float %2643, %1746
  %2646 = fsub fast float %2348, %1755
  %2647 = fmul fast float %2634, %2646
  %2648 = fadd fast float %2647, %1755
  %2649 = fsub fast float %2345, %1754
  %2650 = fmul fast float %2637, %2649
  %2651 = fadd fast float %2650, %1754
  br label %2700

; <label>:2652                                    ; preds = %2628
  %2653 = icmp eq i32 %2626, 4
  br i1 %2653, label %2654, label %2686

; <label>:2654                                    ; preds = %2652
  %2655 = fmul fast float %2631, %2346
  %2656 = fmul fast float %2631, %2347
  %2657 = fadd fast float %2655, %1745
  %2658 = fadd fast float %2656, %1746
  %2659 = call float @dx.op.binary.f32(i32 36, float %1755, float %2348)  ; FMin(a,b)
  %2660 = fsub fast float %2659, %1755
  %2661 = fmul fast float %2660, %2634
  %2662 = fadd fast float %2661, %1755
  %2663 = fadd fast float %2345, %1754
  %2664 = fmul fast float %2663, 0x3FF337FAE0000000
  %2665 = fmul fast float %1754, %1754
  %2666 = fmul fast float %2345, %2345
  %2667 = fadd fast float %2666, %2665
  %2668 = fmul fast float %2667, 0x3FE5152B00000000
  %2669 = fmul fast float %1754, 0xBFCC1F85E0000000
  %2670 = fmul fast float %2669, %2345
  %2671 = fadd fast float %2670, 0xBFE1363700000000
  %2672 = fadd fast float %2671, %2664
  %2673 = fsub fast float %2672, %2668
  %2674 = fmul fast float %2663, 0x3FBA6F0D00000000
  %2675 = fmul fast float %2667, 0x3FD0432880000000
  %2676 = fmul fast float %1754, 0xBFEF110800000000
  %2677 = fmul fast float %2676, %2345
  %2678 = fadd fast float %2677, 1.000000e+00
  %2679 = fsub fast float %2678, %2674
  %2680 = fadd fast float %2679, %2675
  %2681 = fdiv fast float %2673, %2680
  %2682 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2683 = fsub fast float %2682, %1754
  %2684 = fmul fast float %2683, %2637
  %2685 = fadd fast float %2684, %1754
  br label %2700

; <label>:2686                                    ; preds = %2652
  %2687 = icmp eq i32 %2626, 8
  br i1 %2687, label %2688, label %2700

; <label>:2688                                    ; preds = %2686
  %2689 = fmul fast float %2631, %2346
  %2690 = fmul fast float %2631, %2347
  %2691 = fadd fast float %2689, %1745
  %2692 = fadd fast float %2690, %1746
  %2693 = call float @dx.op.binary.f32(i32 36, float %1755, float %2348)  ; FMin(a,b)
  %2694 = fsub fast float %2693, %1755
  %2695 = fmul fast float %2694, %2634
  %2696 = fadd fast float %2695, %1755
  %2697 = fsub fast float %2345, %1754
  %2698 = fmul fast float %2637, %2697
  %2699 = fadd fast float %2698, %1754
  br label %2700

; <label>:2700                                    ; preds = %2688, %2686, %2654, %2639, %2617, %2044, %1744
  %2701 = phi float [ %1745, %2617 ], [ %1745, %2044 ], [ %1745, %1744 ], [ %2644, %2639 ], [ %2657, %2654 ], [ %1745, %2686 ], [ %2691, %2688 ]
  %2702 = phi float [ %1746, %2617 ], [ %1746, %2044 ], [ %1746, %1744 ], [ %2645, %2639 ], [ %2658, %2654 ], [ %1746, %2686 ], [ %2692, %2688 ]
  %2703 = phi float [ %2618, %2617 ], [ %1747, %2044 ], [ %1747, %1744 ], [ %2618, %2639 ], [ %2618, %2654 ], [ %2618, %2686 ], [ %2618, %2688 ]
  %2704 = phi float [ %2619, %2617 ], [ %1748, %2044 ], [ %1748, %1744 ], [ %2619, %2639 ], [ %2619, %2654 ], [ %2619, %2686 ], [ %2619, %2688 ]
  %2705 = phi float [ %2620, %2617 ], [ %1749, %2044 ], [ %1749, %1744 ], [ %2620, %2639 ], [ %2620, %2654 ], [ %2620, %2686 ], [ %2620, %2688 ]
  %2706 = phi float [ %2621, %2617 ], [ %1750, %2044 ], [ %1750, %1744 ], [ %2621, %2639 ], [ %2621, %2654 ], [ %2621, %2686 ], [ %2621, %2688 ]
  %2707 = phi float [ %2622, %2617 ], [ %1751, %2044 ], [ %1751, %1744 ], [ %2622, %2639 ], [ %2622, %2654 ], [ %2622, %2686 ], [ %2622, %2688 ]
  %2708 = phi float [ %2623, %2617 ], [ %1752, %2044 ], [ %1752, %1744 ], [ %2623, %2639 ], [ %2623, %2654 ], [ %2623, %2686 ], [ %2623, %2688 ]
  %2709 = phi float [ %2624, %2617 ], [ %1753, %2044 ], [ %1753, %1744 ], [ %2624, %2639 ], [ %2624, %2654 ], [ %2624, %2686 ], [ %2624, %2688 ]
  %2710 = phi float [ %1754, %2617 ], [ %1754, %2044 ], [ %1754, %1744 ], [ %2651, %2639 ], [ %2685, %2654 ], [ %1754, %2686 ], [ %2699, %2688 ]
  %2711 = phi float [ %1755, %2617 ], [ %1755, %2044 ], [ %1755, %1744 ], [ %2648, %2639 ], [ %2662, %2654 ], [ %1755, %2686 ], [ %2696, %2688 ]
  %2712 = phi float [ %2625, %2617 ], [ %1756, %2044 ], [ %1756, %1744 ], [ %2625, %2639 ], [ %2625, %2654 ], [ %2625, %2686 ], [ %2625, %2688 ]
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = call float @dx.op.dot2.f32(i32 54, float %2701, float %2702, float %2701, float %2702)  ; Dot2(ax,ay,bx,by)
  %2716 = fmul fast float %2715, 0x3FE3333340000000
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = call float @dx.op.dot3.f32(i32 55, float %2701, float %2702, float %2717, float %2701, float %2702, float %2717)  ; Dot3(ax,ay,az,bx,by,bz)
  %2719 = call float @dx.op.unary.f32(i32 25, float %2718)  ; Rsqrt(value)
  %2720 = fmul fast float %2719, %2701
  %2721 = fmul fast float %2719, %2702
  %2722 = fmul fast float %2717, %2719
  %2723 = fmul fast float %2722, %57
  %2724 = fmul fast float %2722, %58
  %2725 = fmul fast float %2722, %59
  %2726 = fmul fast float %2720, %53
  %2727 = fmul fast float %2720, %54
  %2728 = fmul fast float %2720, %55
  %2729 = fadd fast float %2723, %2726
  %2730 = fadd fast float %2724, %2727
  %2731 = fadd fast float %2725, %2728
  %2732 = fmul fast float %2721, %89
  %2733 = fmul fast float %2721, %90
  %2734 = fmul fast float %2721, %91
  %2735 = fadd fast float %2729, %2732
  %2736 = fadd fast float %2730, %2733
  %2737 = fadd fast float %2731, %2734
  %2738 = call float @dx.op.dot3.f32(i32 55, float %2735, float %2736, float %2737, float %2735, float %2736, float %2737)  ; Dot3(ax,ay,az,bx,by,bz)
  %2739 = call float @dx.op.unary.f32(i32 25, float %2738)  ; Rsqrt(value)
  %2740 = fmul fast float %2735, %2739
  %2741 = fmul fast float %2736, %2739
  %2742 = fmul fast float %2737, %2739
  %2743 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %2744 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %2745 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %2746 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %2747 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %2748 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %2749 = fadd fast float %2743, %125
  %2750 = fadd fast float %2744, %126
  %2751 = fadd fast float %2745, %127
  %2752 = fadd fast float %2746, %125
  %2753 = fadd fast float %2747, %126
  %2754 = fadd fast float %2748, %127
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.CBufRet.f32 %2755, 2
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 3
  %2762 = fmul fast float %2756, %78
  %2763 = fmul fast float %2762, %2760
  %2764 = fmul fast float %2757, %79
  %2765 = fmul fast float %2764, %2761
  %2766 = fptoui float %2763 to i32
  %2767 = fptoui float %2765 to i32
  %2768 = fadd fast float %2756, -1.000000e+00
  %2769 = fadd fast float %2757, -1.000000e+00
  %2770 = fptoui float %2768 to i32
  %2771 = fptoui float %2769 to i32
  %2772 = call i32 @dx.op.binary.i32(i32 40, i32 %2766, i32 %2770)  ; UMin(a,b)
  %2773 = call i32 @dx.op.binary.i32(i32 40, i32 %2767, i32 %2771)  ; UMin(a,b)
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2777 = fmul fast float %2775, %73
  %2778 = fsub fast float %2777, %2776
  %2779 = fadd fast float %2758, -1.000000e+00
  %2780 = call float @dx.op.binary.f32(i32 36, float %2778, float %2779)  ; FMin(a,b)
  %2781 = fptoui float %2780 to i32
  %2782 = fptoui float %2756 to i32
  %2783 = fptoui float %2757 to i32
  %2784 = mul i32 %2781, %2783
  %2785 = add i32 %2784, %2773
  %2786 = mul i32 %2785, %2782
  %2787 = add i32 %2786, %2772
  %2788 = shl i32 %2787, 2
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = and i32 %2790, 1023
  %2792 = lshr i32 %2790, 10
  %2793 = icmp eq i32 %2791, 0
  br i1 %2793, label %3219, label %2794

; <label>:2794                                    ; preds = %2700
  %2795 = and i32 %2790, 1023
  br label %2796

; <label>:2796                                    ; preds = %2922, %2794
  %2797 = phi float [ %2923, %2922 ], [ 0.000000e+00, %2794 ]
  %2798 = phi float [ %2924, %2922 ], [ %2714, %2794 ]
  %2799 = phi float [ %2925, %2922 ], [ %2712, %2794 ]
  %2800 = phi float [ %2926, %2922 ], [ 0.000000e+00, %2794 ]
  %2801 = phi float [ %2927, %2922 ], [ 0.000000e+00, %2794 ]
  %2802 = phi float [ %2928, %2922 ], [ %2706, %2794 ]
  %2803 = phi float [ %2929, %2922 ], [ %2707, %2794 ]
  %2804 = phi float [ %2930, %2922 ], [ %2708, %2794 ]
  %2805 = phi float [ %2931, %2922 ], [ %2740, %2794 ]
  %2806 = phi float [ %2932, %2922 ], [ %2741, %2794 ]
  %2807 = phi float [ %2933, %2922 ], [ %2742, %2794 ]
  %2808 = phi float [ %2934, %2922 ], [ %2711, %2794 ]
  %2809 = phi float [ %2935, %2922 ], [ %2710, %2794 ]
  %2810 = phi float [ %2936, %2922 ], [ 0.000000e+00, %2794 ]
  %2811 = phi float [ %2937, %2922 ], [ %2709, %2794 ]
  %2812 = phi float [ %2938, %2922 ], [ %2703, %2794 ]
  %2813 = phi float [ %2939, %2922 ], [ %2704, %2794 ]
  %2814 = phi float [ %2940, %2922 ], [ %2705, %2794 ]
  %2815 = phi i32 [ %2872, %2922 ], [ 0, %2794 ]
  %2816 = add nuw nsw i32 %2815, %2792
  %2817 = shl i32 %2816, 2
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = shl i32 %2819, 8
  %2821 = or i32 %2820, 48
  %2822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = extractvalue %dx.types.ResRet.f32 %2822, 1
  %2825 = extractvalue %dx.types.ResRet.f32 %2822, 2
  %2826 = extractvalue %dx.types.ResRet.f32 %2822, 3
  %2827 = or i32 %2820, 64
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.i32 %2828, 1
  %2831 = or i32 %2820, 80
  %2832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.f32 %2832, 2
  %2834 = extractvalue %dx.types.ResRet.f32 %2832, 3
  %2835 = or i32 %2820, 96
  %2836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.ResRet.f32 %2836, 3
  %2841 = or i32 %2820, 112
  %2842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2844 = or i32 %2820, 128
  %2845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.ResRet.f32 %2845, 2
  %2849 = extractvalue %dx.types.ResRet.f32 %2845, 3
  %2850 = or i32 %2820, 144
  %2851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.f32 %2851, 0
  %2853 = extractvalue %dx.types.ResRet.f32 %2851, 1
  %2854 = extractvalue %dx.types.ResRet.f32 %2851, 2
  %2855 = extractvalue %dx.types.ResRet.f32 %2851, 3
  %2856 = or i32 %2820, 160
  %2857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.ResRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.ResRet.f32 %2857, 2
  %2861 = extractvalue %dx.types.ResRet.f32 %2857, 3
  %2862 = or i32 %2820, 192
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = or i32 %2820, 208
  %2866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.f32 %2866, 0
  %2868 = or i32 %2820, 248
  %2869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.ResRet.f32 %2869, 1
  %2872 = add nuw nsw i32 %2815, 1
  %2873 = bitcast float %2826 to i32
  %2874 = and i32 %2873, 2560
  %2875 = icmp eq i32 %2874, 0
  %2876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.ResRet.f32 %2876, 1
  %2879 = extractvalue %dx.types.ResRet.f32 %2876, 2
  %2880 = extractvalue %dx.types.ResRet.f32 %2876, 3
  %2881 = call float @dx.op.dot4.f32(i32 56, float %2877, float %2878, float %2879, float %2880, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2882 = or i32 %2820, 16
  %2883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.ResRet.f32 %2883, 2
  %2887 = extractvalue %dx.types.ResRet.f32 %2883, 3
  %2888 = call float @dx.op.dot4.f32(i32 56, float %2884, float %2885, float %2886, float %2887, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2889 = or i32 %2820, 32
  %2890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2890, 3
  %2895 = call float @dx.op.dot4.f32(i32 56, float %2891, float %2892, float %2893, float %2894, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2896 = call float @dx.op.unary.f32(i32 27, float %2881)  ; Round_ni(value)
  %2897 = call float @dx.op.unary.f32(i32 6, float %2896)  ; FAbs(value)
  %2898 = call float @dx.op.unary.f32(i32 27, float %2888)  ; Round_ni(value)
  %2899 = call float @dx.op.unary.f32(i32 6, float %2898)  ; FAbs(value)
  %2900 = call float @dx.op.unary.f32(i32 6, float %2895)  ; FAbs(value)
  %2901 = call float @dx.op.unary.f32(i32 27, float %2900)  ; Round_ni(value)
  %2902 = fadd fast float %2899, %2897
  %2903 = fadd fast float %2902, %2901
  %2904 = fcmp fast oeq float %2903, 0.000000e+00
  %2905 = call float @dx.op.dot4.f32(i32 56, float %2877, float %2878, float %2879, float %2880, float %2749, float %2750, float %2751, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2906 = call float @dx.op.dot4.f32(i32 56, float %2884, float %2885, float %2886, float %2887, float %2749, float %2750, float %2751, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2907 = call float @dx.op.dot4.f32(i32 56, float %2877, float %2878, float %2879, float %2880, float %2752, float %2753, float %2754, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2908 = call float @dx.op.dot4.f32(i32 56, float %2884, float %2885, float %2886, float %2887, float %2752, float %2753, float %2754, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2909 = fsub fast float %2905, %2881
  %2910 = fsub fast float %2907, %2881
  %2911 = fsub fast float %2906, %2888
  %2912 = fsub fast float %2908, %2888
  %2913 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 2
  %2916 = fadd fast float %2915, %2913
  %2917 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2919 = fcmp fast ogt float %2917, %2918
  %2920 = and i1 %2904, %2919
  %2921 = and i1 %2875, %2920
  br i1 %2921, label %2942, label %2922

; <label>:2922                                    ; preds = %3205, %3023, %2942, %2796
  %2923 = phi float [ %2797, %2942 ], [ %3026, %3023 ], [ %3026, %3205 ], [ %2797, %2796 ]
  %2924 = phi float [ %2798, %2942 ], [ %2798, %3023 ], [ %3180, %3205 ], [ %2798, %2796 ]
  %2925 = phi float [ %2799, %2942 ], [ %2799, %3023 ], [ %3178, %3205 ], [ %2799, %2796 ]
  %2926 = phi float [ %2800, %2942 ], [ %2800, %3023 ], [ %3150, %3205 ], [ %2800, %2796 ]
  %2927 = phi float [ %2801, %2942 ], [ %2801, %3023 ], [ %3148, %3205 ], [ %2801, %2796 ]
  %2928 = phi float [ %2802, %2942 ], [ %2802, %3023 ], [ %3215, %3205 ], [ %2802, %2796 ]
  %2929 = phi float [ %2803, %2942 ], [ %2803, %3023 ], [ %3216, %3205 ], [ %2803, %2796 ]
  %2930 = phi float [ %2804, %2942 ], [ %2804, %3023 ], [ %3217, %3205 ], [ %2804, %2796 ]
  %2931 = phi float [ %2805, %2942 ], [ %2805, %3023 ], [ %3129, %3205 ], [ %2805, %2796 ]
  %2932 = phi float [ %2806, %2942 ], [ %2806, %3023 ], [ %3130, %3205 ], [ %2806, %2796 ]
  %2933 = phi float [ %2807, %2942 ], [ %2807, %3023 ], [ %3131, %3205 ], [ %2807, %2796 ]
  %2934 = phi float [ %2808, %2942 ], [ %2808, %3023 ], [ %3158, %3205 ], [ %2808, %2796 ]
  %2935 = phi float [ %2809, %2942 ], [ %2809, %3023 ], [ %3155, %3205 ], [ %2809, %2796 ]
  %2936 = phi float [ %2810, %2942 ], [ %2810, %3023 ], [ %3152, %3205 ], [ %2810, %2796 ]
  %2937 = phi float [ %2811, %2942 ], [ %2811, %3023 ], [ %3146, %3205 ], [ %2811, %2796 ]
  %2938 = phi float [ %2812, %2942 ], [ %2812, %3023 ], [ %3141, %3205 ], [ %2812, %2796 ]
  %2939 = phi float [ %2813, %2942 ], [ %2813, %3023 ], [ %3142, %3205 ], [ %2813, %2796 ]
  %2940 = phi float [ %2814, %2942 ], [ %2814, %3023 ], [ %3143, %3205 ], [ %2814, %2796 ]
  %2941 = icmp eq i32 %2872, %2795
  br i1 %2941, label %3218, label %2796

; <label>:2942                                    ; preds = %2796
  %2943 = extractvalue %dx.types.ResRet.f32 %2842, 3
  %2944 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2946 = extractvalue %dx.types.ResRet.f32 %2832, 1
  %2947 = extractvalue %dx.types.ResRet.f32 %2832, 0
  %2948 = extractvalue %dx.types.ResRet.i32 %2828, 3
  %2949 = extractvalue %dx.types.ResRet.i32 %2828, 2
  %2950 = add i32 %2948, 0
  %2951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2950, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2951, %dx.types.Handle %2952, float %2881, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float %2909, float %2911, float undef, float %2910, float %2912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  %2955 = fmul fast float %2954, %2947
  %2956 = fadd fast float %2955, %2946
  %2957 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2958 = fmul fast float %2881, %2837
  %2959 = call float @dx.op.tertiary.f32(i32 46, float %2838, float %2888, float %2958)  ; FMad(a,b,c)
  %2960 = fadd fast float %2959, %2945
  %2961 = fmul fast float %2881, %2839
  %2962 = call float @dx.op.tertiary.f32(i32 46, float %2840, float %2888, float %2961)  ; FMad(a,b,c)
  %2963 = fadd fast float %2962, %2944
  %2964 = fmul fast float %2909, %2837
  %2965 = call float @dx.op.tertiary.f32(i32 46, float %2838, float %2911, float %2964)  ; FMad(a,b,c)
  %2966 = fmul fast float %2909, %2839
  %2967 = call float @dx.op.tertiary.f32(i32 46, float %2840, float %2911, float %2966)  ; FMad(a,b,c)
  %2968 = fmul fast float %2910, %2837
  %2969 = call float @dx.op.tertiary.f32(i32 46, float %2838, float %2912, float %2968)  ; FMad(a,b,c)
  %2970 = fmul fast float %2910, %2839
  %2971 = call float @dx.op.tertiary.f32(i32 46, float %2840, float %2912, float %2970)  ; FMad(a,b,c)
  %2972 = add i32 %2949, 0
  %2973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2972, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2973, %dx.types.Handle %2952, float %2960, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float %2965, float %2967, float undef, float %2969, float %2971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2975 = extractvalue %dx.types.ResRet.f32 %2974, 0
  %2976 = and i32 %2873, 1024
  %2977 = icmp ne i32 %2976, 0
  %2978 = fcmp fast ogt float %2975, 0x3FE0101020000000
  %2979 = uitofp i1 %2978 to float
  %2980 = select i1 %2977, float %2979, float %2975
  %2981 = and i32 %2873, 8192
  %2982 = icmp ne i32 %2981, 0
  %2983 = select i1 %2982, float %2943, float 1.000000e+00
  %2984 = fmul fast float %2881, 2.000000e+00
  %2985 = fadd fast float %2984, -1.000000e+00
  %2986 = call float @dx.op.unary.f32(i32 6, float %2985)  ; FAbs(value)
  %2987 = fmul fast float %2986, %2870
  %2988 = fsub fast float %2987, %2870
  %2989 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  %2990 = fmul fast float %2888, 2.000000e+00
  %2991 = fadd fast float %2990, -1.000000e+00
  %2992 = call float @dx.op.unary.f32(i32 6, float %2991)  ; FAbs(value)
  %2993 = fmul fast float %2992, %2871
  %2994 = fsub fast float %2993, %2871
  %2995 = call float @dx.op.unary.f32(i32 7, float %2994)  ; Saturate(value)
  %2996 = fmul fast float %2900, %2833
  %2997 = fsub fast float %2996, %2833
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = fmul fast float %2957, %2983
  %3000 = fmul fast float %2999, %2954
  %3001 = fmul fast float %3000, %2989
  %3002 = fmul fast float %3001, %2980
  %3003 = fmul fast float %3002, %2995
  %3004 = fmul fast float %3003, %2998
  %3005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.f32 %3005, 1
  %3007 = extractvalue %dx.types.CBufRet.f32 %3005, 0
  %3008 = fsub fast float %2917, %3007
  %3009 = fmul fast float %3008, %3006
  %3010 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  %3011 = fmul fast float %3004, %2834
  %3012 = fadd fast float %3004, %2834
  %3013 = fmul fast float %3012, %2843
  %3014 = fsub fast float %3013, %2843
  %3015 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3016 = and i32 %2873, 128
  %3017 = icmp ne i32 %3016, 0
  %3018 = select i1 %3017, float %3015, float %3011
  %3019 = fmul fast float %3018, %3010
  %3020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3021 = extractvalue %dx.types.CBufRet.f32 %3020, 0
  %3022 = fcmp fast ugt float %3019, %3021
  br i1 %3022, label %3023, label %2922

; <label>:3023                                    ; preds = %2942
  %3024 = select i1 %2982, float %3019, float 0.000000e+00
  %3025 = fadd fast float %3024, %2797
  %3026 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  br i1 %2982, label %2922, label %3027

; <label>:3027                                    ; preds = %3023
  %3028 = and i32 %2873, 4
  %3029 = and i32 %2873, 8
  %3030 = add i32 %2829, 0
  %3031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3030, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3033 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3031, %dx.types.Handle %3032, float %2960, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float %2965, float %2967, float undef, float %2969, float %2971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.ResRet.f32 %3033, 1
  %3036 = extractvalue %dx.types.ResRet.f32 %3033, 2
  %3037 = extractvalue %dx.types.ResRet.f32 %3033, 3
  %3038 = bitcast float %2855 to i32
  %3039 = and i32 %3038, 255
  %3040 = uitofp i32 %3039 to float
  %3041 = lshr i32 %3038, 8
  %3042 = and i32 %3041, 255
  %3043 = uitofp i32 %3042 to float
  %3044 = fmul fast float %3037, %3040
  %3045 = fadd fast float %3044, %3043
  %3046 = fmul fast float %3045, 0x3F70101000000000
  %3047 = add i32 %2830, 0
  %3048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3047, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3049 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3048, %dx.types.Handle %3032, float %2960, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float %2965, float %2967, float undef, float %2969, float %2971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3053 = extractvalue %dx.types.ResRet.f32 %3049, 3
  %3054 = bitcast float %2849 to i32
  %3055 = and i32 %3054, 255
  %3056 = uitofp i32 %3055 to float
  %3057 = lshr i32 %3054, 8
  %3058 = and i32 %3057, 255
  %3059 = uitofp i32 %3058 to float
  %3060 = lshr i32 %3054, 16
  %3061 = and i32 %3060, 255
  %3062 = uitofp i32 %3061 to float
  %3063 = fmul fast float %3062, 0x3F70101000000000
  %3064 = fmul fast float %3050, %3056
  %3065 = fadd fast float %3064, %3059
  %3066 = fmul fast float %3065, 0x3F70101000000000
  %3067 = fadd fast float %3051, -5.000000e-01
  %3068 = fadd fast float %3053, -5.000000e-01
  %3069 = fmul fast float %3067, %3063
  %3070 = fmul fast float %3068, %3063
  %3071 = fadd fast float %3069, 5.000000e-01
  %3072 = fadd fast float %3070, 5.000000e-01
  %3073 = fmul fast float %3034, %2858
  %3074 = fmul fast float %3035, %2859
  %3075 = fmul fast float %3036, %2860
  %3076 = fmul fast float %3071, 2.000000e+00
  %3077 = fadd fast float %3076, -1.000000e+00
  %3078 = fmul fast float %3072, 2.000000e+00
  %3079 = fadd fast float %3078, -1.000000e+00
  %3080 = fadd fast float %3077, %3079
  %3081 = fmul fast float %3080, 5.000000e-01
  %3082 = fsub fast float %3077, %3079
  %3083 = fmul fast float %3082, 5.000000e-01
  %3084 = call float @dx.op.unary.f32(i32 6, float %3081)  ; FAbs(value)
  %3085 = fsub fast float 1.000000e+00, %3084
  %3086 = call float @dx.op.unary.f32(i32 6, float %3083)  ; FAbs(value)
  %3087 = fsub fast float %3085, %3086
  %3088 = call float @dx.op.dot3.f32(i32 55, float %3081, float %3083, float %3087, float %3081, float %3083, float %3087)  ; Dot3(ax,ay,az,bx,by,bz)
  %3089 = call float @dx.op.unary.f32(i32 25, float %3088)  ; Rsqrt(value)
  %3090 = fmul fast float %3081, %3089
  %3091 = fmul fast float %3083, %3089
  %3092 = fmul fast float %3089, %3087
  %3093 = fmul fast float %3092, %2823
  %3094 = fmul fast float %3092, %2824
  %3095 = fmul fast float %3092, %2825
  %3096 = fmul fast float %3090, %2846
  %3097 = fmul fast float %3090, %2847
  %3098 = fmul fast float %3090, %2848
  %3099 = fadd fast float %3096, %3093
  %3100 = fadd fast float %3097, %3094
  %3101 = fadd fast float %3098, %3095
  %3102 = fmul fast float %3091, %2852
  %3103 = fmul fast float %3091, %2853
  %3104 = fmul fast float %3091, %2854
  %3105 = fadd fast float %3099, %3102
  %3106 = fadd fast float %3100, %3103
  %3107 = fadd fast float %3101, %3104
  %3108 = call float @dx.op.dot3.f32(i32 55, float %3105, float %3106, float %3107, float %3105, float %3106, float %3107)  ; Dot3(ax,ay,az,bx,by,bz)
  %3109 = call float @dx.op.unary.f32(i32 25, float %3108)  ; Rsqrt(value)
  %3110 = fmul fast float %3105, %3109
  %3111 = fmul fast float %3106, %3109
  %3112 = fmul fast float %3107, %3109
  %3113 = icmp ne i32 %3029, 0
  %3114 = select i1 %3113, float 1.000000e+00, float 0.000000e+00
  %3115 = fmul fast float %3019, %3114
  %3116 = and i32 %2873, 1
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3118, label %3122

; <label>:3118                                    ; preds = %3027
  %3119 = fsub fast float %3110, %2805
  %3120 = fsub fast float %3111, %2806
  %3121 = fsub fast float %3112, %2807
  br label %3122

; <label>:3122                                    ; preds = %3118, %3027
  %3123 = phi float [ %3119, %3118 ], [ %3110, %3027 ]
  %3124 = phi float [ %3120, %3118 ], [ %3111, %3027 ]
  %3125 = phi float [ %3121, %3118 ], [ %3112, %3027 ]
  %3126 = fmul float %3125, %3115
  %3127 = fmul float %3124, %3115
  %3128 = fmul float %3123, %3115
  %3129 = fadd fast float %3128, %2805
  %3130 = fadd fast float %3127, %2806
  %3131 = fadd fast float %3126, %2807
  %3132 = icmp ne i32 %3028, 0
  %3133 = select i1 %3132, float 1.000000e+00, float 0.000000e+00
  %3134 = fmul fast float %3019, %3133
  %3135 = fsub fast float %3073, %2812
  %3136 = fsub fast float %3074, %2813
  %3137 = fsub fast float %3075, %2814
  %3138 = fmul fast float %3135, %3134
  %3139 = fmul fast float %3136, %3134
  %3140 = fmul fast float %3137, %3134
  %3141 = fadd fast float %3138, %2812
  %3142 = fadd fast float %3139, %2813
  %3143 = fadd fast float %3140, %2814
  %3144 = fsub fast float %3046, %2811
  %3145 = fmul fast float %3144, %3134
  %3146 = fadd fast float %3145, %2811
  %3147 = fmul fast float %3134, %2801
  %3148 = fsub fast float %2801, %3147
  %3149 = fmul fast float %3134, %2800
  %3150 = fsub fast float %2800, %3149
  %3151 = fadd fast float %3019, %2810
  %3152 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3153 = fsub fast float %3066, %2809
  %3154 = fmul fast float %3153, %3115
  %3155 = fadd fast float %3154, %2809
  %3156 = fsub fast float %3052, %2808
  %3157 = fmul fast float %3156, %3115
  %3158 = fadd fast float %3157, %2808
  %3159 = call float @dx.op.dot3.f32(i32 55, float %3073, float %3074, float %3075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3163 = fmul fast float %3162, %3159
  %3164 = fadd fast float %3163, %3161
  %3165 = call float @dx.op.unary.f32(i32 7, float %3164)  ; Saturate(value)
  %3166 = bitcast float %2861 to i32
  %3167 = and i32 %3166, 65535
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = lshr i32 %3166, 16
  %3170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3169)  ; LegacyF16ToF32(value)
  %3171 = fcmp fast oge float %3168, 0.000000e+00
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = select i1 %3171, float %3168, float %3173
  %3175 = fadd fast float %3174, %3170
  %3176 = fsub fast float %3165, %2799
  %3177 = fmul fast float %3176, %3019
  %3178 = fadd fast float %3177, %2799
  %3179 = fmul fast float %3175, %3019
  %3180 = call float @dx.op.binary.f32(i32 35, float %2798, float %3179)  ; FMax(a,b)
  %3181 = and i32 %2873, 16
  %3182 = icmp eq i32 %3181, 0
  br i1 %3182, label %3205, label %3183

; <label>:3183                                    ; preds = %3122
  %3184 = bitcast float %2867 to i32
  %3185 = add i32 %2864, 0
  %3186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3185, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3187 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3186, %dx.types.Handle %3032, float %2960, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float %2965, float %2967, float undef, float %2969, float %2971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  %3189 = extractvalue %dx.types.ResRet.f32 %3187, 1
  %3190 = extractvalue %dx.types.ResRet.f32 %3187, 2
  %3191 = and i32 %3184, 65535
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = fmul fast float %3188, %2858
  %3194 = fmul fast float %3189, %2859
  %3195 = fmul fast float %3190, %2860
  %3196 = and i32 %2873, 16384
  %3197 = icmp ne i32 %3196, 0
  %3198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.f32 %3198, 0
  %3200 = select i1 %3197, float %3199, float 1.000000e+00
  %3201 = fmul fast float %3200, %3192
  %3202 = fmul fast float %3193, %3201
  %3203 = fmul fast float %3194, %3201
  %3204 = fmul fast float %3195, %3201
  br label %3205

; <label>:3205                                    ; preds = %3183, %3122
  %3206 = phi float [ %3202, %3183 ], [ 0.000000e+00, %3122 ]
  %3207 = phi float [ %3203, %3183 ], [ 0.000000e+00, %3122 ]
  %3208 = phi float [ %3204, %3183 ], [ 0.000000e+00, %3122 ]
  %3209 = fsub fast float %3206, %2802
  %3210 = fsub fast float %3207, %2803
  %3211 = fsub fast float %3208, %2804
  %3212 = fmul fast float %3209, %3019
  %3213 = fmul fast float %3210, %3019
  %3214 = fmul fast float %3211, %3019
  %3215 = fadd fast float %3212, %2802
  %3216 = fadd fast float %3213, %2803
  %3217 = fadd fast float %3214, %2804
  br label %2922

; <label>:3218                                    ; preds = %2922
  br label %3219

; <label>:3219                                    ; preds = %3218, %2700
  %3220 = phi float [ 0.000000e+00, %2700 ], [ %2923, %3218 ]
  %3221 = phi float [ %2714, %2700 ], [ %2924, %3218 ]
  %3222 = phi float [ %2712, %2700 ], [ %2925, %3218 ]
  %3223 = phi float [ 0.000000e+00, %2700 ], [ %2926, %3218 ]
  %3224 = phi float [ 0.000000e+00, %2700 ], [ %2927, %3218 ]
  %3225 = phi float [ %2706, %2700 ], [ %2928, %3218 ]
  %3226 = phi float [ %2707, %2700 ], [ %2929, %3218 ]
  %3227 = phi float [ %2708, %2700 ], [ %2930, %3218 ]
  %3228 = phi float [ %2740, %2700 ], [ %2931, %3218 ]
  %3229 = phi float [ %2741, %2700 ], [ %2932, %3218 ]
  %3230 = phi float [ %2742, %2700 ], [ %2933, %3218 ]
  %3231 = phi float [ %2711, %2700 ], [ %2934, %3218 ]
  %3232 = phi float [ %2710, %2700 ], [ %2935, %3218 ]
  %3233 = phi float [ 0.000000e+00, %2700 ], [ %2936, %3218 ]
  %3234 = phi float [ %2709, %2700 ], [ %2937, %3218 ]
  %3235 = phi float [ %2703, %2700 ], [ %2938, %3218 ]
  %3236 = phi float [ %2704, %2700 ], [ %2939, %3218 ]
  %3237 = phi float [ %2705, %2700 ], [ %2940, %3218 ]
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3228, float %3229, float %3230, float %3228, float %3229, float %3230)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = call float @dx.op.unary.f32(i32 25, float %3238)  ; Rsqrt(value)
  %3240 = fmul fast float %3239, %3228
  %3241 = fmul fast float %3239, %3229
  %3242 = fmul fast float %3239, %3230
  %3243 = fadd fast float %3233, %797
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3240, float %3241, float %3242, float %3240, float %3241, float %3242)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = call float @dx.op.unary.f32(i32 25, float %3245)  ; Rsqrt(value)
  %3247 = fmul fast float %3246, %3240
  %3248 = fmul fast float %3246, %3241
  %3249 = fmul fast float %3246, %3242
  %3250 = fadd fast float %3234, 0xBFB99999A0000000
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3252 = fmul fast float %3251, 0x3FF1C71C80000000
  %3253 = call float @dx.op.binary.f32(i32 36, float %3234, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3254 = fsub fast float 1.000000e+00, %3252
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3256 = fmul fast float %3255, %3235
  %3257 = fmul fast float %3255, %3236
  %3258 = fmul fast float %3255, %3237
  %3259 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3260 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3261 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3262 = fmul fast float %3252, %3235
  %3263 = fmul fast float %3252, %3236
  %3264 = fmul fast float %3252, %3237
  %3265 = fadd fast float %3262, %3253
  %3266 = fadd fast float %3263, %3253
  %3267 = fadd fast float %3264, %3253
  %3268 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3269 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3270 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3271 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.i32 %3272, 3
  %3274 = and i32 %3273, 8
  %3275 = icmp ne i32 %3274, 0
  %3276 = call float @dx.op.binary.f32(i32 35, float %3259, float %3235)  ; FMax(a,b)
  %3277 = call float @dx.op.binary.f32(i32 35, float %3260, float %3235)  ; FMax(a,b)
  %3278 = call float @dx.op.binary.f32(i32 35, float %3261, float %3235)  ; FMax(a,b)
  %3279 = call float @dx.op.dot3.f32(i32 55, float %3259, float %3260, float %3261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3280 = select i1 %196, float %3235, float %3259
  %3281 = select i1 %196, float %3279, float %3260
  %3282 = select i1 %196, float 1.000000e+00, float %3261
  %3283 = select i1 %3275, float %3276, float %3280
  %3284 = select i1 %3275, float %3277, float %3281
  %3285 = select i1 %3275, float %3278, float %3282
  %3286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.f32 %3286, 0
  %3288 = extractvalue %dx.types.CBufRet.f32 %3286, 1
  %3289 = extractvalue %dx.types.CBufRet.f32 %3286, 2
  %3290 = fadd fast float %3287, %125
  %3291 = fadd fast float %3288, %126
  %3292 = fadd fast float %3289, %127
  %3293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3293, 0
  %3295 = extractvalue %dx.types.CBufRet.f32 %3293, 1
  %3296 = fsub fast float %3290, %3294
  %3297 = fsub fast float %3291, %3295
  %3298 = fmul fast float %3296, %3296
  %3299 = fmul fast float %3297, %3297
  %3300 = fadd fast float %3298, %3299
  %3301 = call float @dx.op.unary.f32(i32 24, float %3300)  ; Sqrt(value)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3293, 2
  %3303 = fcmp fast olt float %3301, %3302
  br i1 %3303, label %3304, label %3371

; <label>:3304                                    ; preds = %3219
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3307, 0
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3312 = extractvalue %dx.types.CBufRet.f32 %3307, 1
  %3313 = extractvalue %dx.types.CBufRet.f32 %3309, 1
  %3314 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3315 = extractvalue %dx.types.CBufRet.f32 %3307, 3
  %3316 = extractvalue %dx.types.CBufRet.f32 %3309, 3
  %3317 = fadd fast float %3314, %3290
  %3318 = fadd fast float %3315, %3291
  %3319 = fadd fast float %3316, %3292
  %3320 = fmul fast float %3317, %3306
  %3321 = call float @dx.op.tertiary.f32(i32 46, float %3318, float %3308, float %3320)  ; FMad(a,b,c)
  %3322 = call float @dx.op.tertiary.f32(i32 46, float %3319, float %3310, float %3321)  ; FMad(a,b,c)
  %3323 = fmul fast float %3317, %3311
  %3324 = call float @dx.op.tertiary.f32(i32 46, float %3318, float %3312, float %3323)  ; FMad(a,b,c)
  %3325 = call float @dx.op.tertiary.f32(i32 46, float %3319, float %3313, float %3324)  ; FMad(a,b,c)
  %3326 = fsub fast float %3322, %3314
  %3327 = fsub fast float %3325, %3315
  %3328 = fsub fast float %3326, %3294
  %3329 = fadd fast float %3328, %3302
  %3330 = fsub fast float %3327, %3295
  %3331 = fadd fast float %3330, %3302
  %3332 = extractvalue %dx.types.CBufRet.f32 %3293, 3
  %3333 = fmul fast float %3329, %3332
  %3334 = fmul fast float %3331, %3332
  %3335 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3336 = call float @dx.op.unary.f32(i32 7, float %3334)  ; Saturate(value)
  %3337 = fsub fast float 1.000000e+00, %3335
  %3338 = fsub fast float 1.000000e+00, %3336
  %3339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = fcmp fast ugt float %3340, 0.000000e+00
  br i1 %3341, label %3342, label %3645

; <label>:3342                                    ; preds = %3304
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 2
  %3345 = fmul fast float %3344, %3340
  %3346 = extractvalue %dx.types.CBufRet.f32 %3343, 3
  %3347 = fadd fast float %3346, %3345
  %3348 = extractvalue %dx.types.CBufRet.f32 %3309, 2
  %3349 = fadd fast float %3347, %3316
  %3350 = fmul fast float %3322, %3310
  %3351 = call float @dx.op.tertiary.f32(i32 46, float %3325, float %3313, float %3350)  ; FMad(a,b,c)
  %3352 = call float @dx.op.tertiary.f32(i32 46, float %3349, float %3348, float %3351)  ; FMad(a,b,c)
  %3353 = fsub fast float %3352, %3316
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3356 = fsub fast float %3353, %3355
  %3357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = extractvalue %dx.types.ResRet.f32 %3357, 1
  %3360 = extractvalue %dx.types.ResRet.f32 %3357, 2
  %3361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = fadd fast float %3362, %3358
  %3366 = fmul fast float %3365, 0x3F847AE140000000
  %3367 = fadd fast float %3363, %3359
  %3368 = fmul fast float %3367, 0x3F847AE140000000
  %3369 = fadd fast float %3364, %3360
  %3370 = fmul fast float %3369, 0x3F847AE140000000
  br label %3645

; <label>:3371                                    ; preds = %3219
  %3372 = and i32 %172, 1
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3645, label %3374

; <label>:3374                                    ; preds = %3371
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 0
  %3377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.f32 %3377, 0
  %3379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3380 = extractvalue %dx.types.CBufRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.CBufRet.f32 %3375, 1
  %3382 = extractvalue %dx.types.CBufRet.f32 %3377, 1
  %3383 = extractvalue %dx.types.CBufRet.f32 %3379, 1
  %3384 = extractvalue %dx.types.CBufRet.f32 %3375, 3
  %3385 = extractvalue %dx.types.CBufRet.f32 %3377, 3
  %3386 = extractvalue %dx.types.CBufRet.f32 %3379, 3
  %3387 = fadd fast float %3384, %3290
  %3388 = fadd fast float %3385, %3291
  %3389 = fadd fast float %3386, %3292
  %3390 = fmul fast float %3387, %3376
  %3391 = call float @dx.op.tertiary.f32(i32 46, float %3388, float %3378, float %3390)  ; FMad(a,b,c)
  %3392 = call float @dx.op.tertiary.f32(i32 46, float %3389, float %3380, float %3391)  ; FMad(a,b,c)
  %3393 = fmul fast float %3387, %3381
  %3394 = call float @dx.op.tertiary.f32(i32 46, float %3388, float %3382, float %3393)  ; FMad(a,b,c)
  %3395 = call float @dx.op.tertiary.f32(i32 46, float %3389, float %3383, float %3394)  ; FMad(a,b,c)
  %3396 = fsub fast float %3392, %3384
  %3397 = fsub fast float %3395, %3385
  %3398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3399 = extractvalue %dx.types.CBufRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.CBufRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.CBufRet.f32 %3398, 2
  %3402 = extractvalue %dx.types.CBufRet.f32 %3398, 3
  %3403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3404 = extractvalue %dx.types.CBufRet.f32 %3403, 3
  %3405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.i32 %3405, 0
  %3407 = extractvalue %dx.types.CBufRet.i32 %3405, 1
  %3408 = udiv i32 %3407, %3406
  %3409 = fsub fast float %3396, %3399
  %3410 = fsub fast float %3397, %3400
  %3411 = call float @dx.op.binary.f32(i32 35, float %3409, float 0.000000e+00)  ; FMax(a,b)
  %3412 = call float @dx.op.binary.f32(i32 35, float %3410, float 0.000000e+00)  ; FMax(a,b)
  %3413 = call float @dx.op.binary.f32(i32 36, float %3411, float %3401)  ; FMin(a,b)
  %3414 = call float @dx.op.binary.f32(i32 36, float %3412, float %3402)  ; FMin(a,b)
  %3415 = add i32 %3406, -1
  %3416 = add i32 %3408, -1
  %3417 = fmul fast float %3413, %3404
  %3418 = fmul fast float %3414, %3404
  %3419 = fptoui float %3417 to i32
  %3420 = fptoui float %3418 to i32
  %3421 = call i32 @dx.op.binary.i32(i32 40, i32 %3419, i32 %3415)  ; UMin(a,b)
  %3422 = call i32 @dx.op.binary.i32(i32 40, i32 %3420, i32 %3416)  ; UMin(a,b)
  %3423 = mul i32 %3422, %3406
  %3424 = add i32 %3423, %3421
  %3425 = shl i32 %3424, 2
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = icmp eq i32 %3427, -1
  br i1 %3428, label %3645, label %3429

; <label>:3429                                    ; preds = %3374
  %3430 = mul i32 %3427, 148
  %3431 = add i32 %3430, 4
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = add i32 %3430, 8
  %3435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = add i32 %3430, 36
  %3438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = add i32 %3430, 60
  %3441 = add i32 %3430, 92
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = add i32 %3430, 116
  %3445 = fsub fast float %3396, %3433
  %3446 = fsub fast float %3397, %3436
  %3447 = fmul fast float %3404, %3445
  %3448 = fmul fast float %3404, %3446
  %3449 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3450 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  %3451 = fsub fast float 1.000000e+00, %3450
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 2
  %3454 = call float @dx.op.unary.f32(i32 83, float %3449)  ; DerivCoarseX(value)
  %3455 = call float @dx.op.unary.f32(i32 83, float %3451)  ; DerivCoarseX(value)
  %3456 = call float @dx.op.unary.f32(i32 84, float %3449)  ; DerivCoarseY(value)
  %3457 = call float @dx.op.unary.f32(i32 84, float %3451)  ; DerivCoarseY(value)
  %3458 = fmul fast float %3454, %3453
  %3459 = fmul fast float %3455, %3453
  %3460 = fmul fast float %3456, %3453
  %3461 = fmul fast float %3457, %3453
  %3462 = call float @dx.op.dot2.f32(i32 54, float %3460, float %3461, float %3460, float %3461)  ; Dot2(ax,ay,bx,by)
  %3463 = call float @dx.op.dot2.f32(i32 54, float %3458, float %3459, float %3458, float %3459)  ; Dot2(ax,ay,bx,by)
  %3464 = call float @dx.op.binary.f32(i32 35, float %3463, float %3462)  ; FMax(a,b)
  %3465 = call float @dx.op.unary.f32(i32 23, float %3464)  ; Log(value)
  %3466 = fmul fast float %3465, 5.000000e-01
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 1
  %3469 = fadd fast float %3468, %3466
  %3470 = call float @dx.op.binary.f32(i32 35, float %3469, float 0.000000e+00)  ; FMax(a,b)
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 3
  %3473 = fadd fast float %3472, %3470
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 3
  %3476 = fadd fast float %3473, %3475
  %3477 = add i32 %3443, 0
  %3478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3477, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3479 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3478, i32 0)  ; GetDimensions(handle,mipLevel)
  %3480 = extractvalue %dx.types.Dimensions %3479, 0
  %3481 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3480)  ; FirstbitLo(value)
  %3482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.i32 %3482, 1
  %3484 = sub nsw i32 %3483, %3481
  %3485 = sitofp i32 %3484 to float
  %3486 = fsub fast float %3476, %3485
  %3487 = call float @dx.op.binary.f32(i32 35, float %3486, float 0.000000e+00)  ; FMax(a,b)
  %3488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3478, %dx.types.Handle %37, float %3449, float %3451, float %3439, float undef, i32 0, i32 0, i32 undef, float %3487)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = fcmp ule float %3489, 0x3FE0101020000000
  %3491 = extractvalue %dx.types.CBufRet.i32 %3482, 0
  %3492 = and i32 %3491, 128
  %3493 = icmp ne i32 %3492, 0
  %3494 = and i1 %3490, %3493
  br i1 %3494, label %3645, label %3495

; <label>:3495                                    ; preds = %3429
  %3496 = add i32 %3430, 20
  %3497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.f32 %3497, 0
  %3499 = add i32 %3430, 24
  %3500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = add i32 %3430, 40
  %3503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = add i32 %3430, 96
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3510 = fmul fast float %3509, %3449
  %3511 = fmul fast float %3509, %3451
  %3512 = extractvalue %dx.types.CBufRet.f32 %3508, 3
  %3513 = fadd fast float %3510, %3512
  %3514 = fadd fast float %3511, %3512
  %3515 = add i32 %3507, 0
  %3516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3515, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3517 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3516, i32 0)  ; GetDimensions(handle,mipLevel)
  %3518 = extractvalue %dx.types.Dimensions %3517, 0
  %3519 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3518)  ; FirstbitLo(value)
  %3520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.i32 %3520, 1
  %3522 = sub nsw i32 %3521, %3519
  %3523 = sitofp i32 %3522 to float
  %3524 = fsub fast float %3473, %3523
  %3525 = call float @dx.op.binary.f32(i32 35, float %3524, float 0.000000e+00)  ; FMax(a,b)
  %3526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3516, %dx.types.Handle %37, float %3513, float %3514, float %3504, float undef, i32 0, i32 0, i32 undef, float %3525)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = fmul fast float %3527, %3498
  %3529 = fadd fast float %3528, %3501
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 3
  %3538 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3539 = fadd fast float %3535, %3396
  %3540 = fadd fast float %3537, %3397
  %3541 = fadd fast float %3529, %3538
  %3542 = fmul fast float %3539, %3531
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3532, float %3542)  ; FMad(a,b,c)
  %3544 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3533, float %3543)  ; FMad(a,b,c)
  %3545 = fsub fast float %3544, %3538
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 2
  %3548 = fsub fast float %3545, %3547
  %3549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.i32 %3549, 0
  %3551 = call i32 @dx.op.binary.i32(i32 40, i32 %3427, i32 %3550)  ; UMin(a,b)
  %3552 = mul i32 %3551, 36
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = add i32 %3552, 4
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %3558 = fmul fast float %3557, %3449
  %3559 = fmul fast float %3557, %3451
  %3560 = extractvalue %dx.types.CBufRet.f32 %3556, 1
  %3561 = fadd fast float %3558, %3560
  %3562 = fadd fast float %3559, %3560
  %3563 = icmp eq i32 %3554, 0
  br i1 %3563, label %3632, label %3564

; <label>:3564                                    ; preds = %3495
  br label %3565

; <label>:3565                                    ; preds = %3622, %3564
  %3566 = phi float [ %3623, %3622 ], [ 0.000000e+00, %3564 ]
  %3567 = phi float [ %3624, %3622 ], [ 0.000000e+00, %3564 ]
  %3568 = phi float [ %3625, %3622 ], [ 0.000000e+00, %3564 ]
  %3569 = phi float [ %3626, %3622 ], [ 0.000000e+00, %3564 ]
  %3570 = phi float [ %3627, %3622 ], [ 0.000000e+00, %3564 ]
  %3571 = phi float [ %3628, %3622 ], [ 0.000000e+00, %3564 ]
  %3572 = phi i32 [ %3629, %3622 ], [ 0, %3564 ]
  %3573 = shl i32 %3572, 2
  %3574 = add i32 %3440, %3573
  %3575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = add i32 %3444, %3573
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = add i32 %3579, 0
  %3581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3580, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3582 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3581, i32 0)  ; GetDimensions(handle,mipLevel)
  %3583 = extractvalue %dx.types.Dimensions %3582, 0
  %3584 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3583)  ; FirstbitLo(value)
  %3585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.i32 %3585, 1
  %3587 = sub nsw i32 %3586, %3584
  %3588 = sitofp i32 %3587 to float
  %3589 = fsub fast float %3473, %3588
  %3590 = call float @dx.op.binary.f32(i32 35, float %3589, float 0.000000e+00)  ; FMax(a,b)
  %3591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3581, %dx.types.Handle %37, float %3561, float %3562, float %3576, float undef, i32 0, i32 0, i32 undef, float %3590)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = fcmp fast ogt float %3592, 0.000000e+00
  br i1 %3593, label %3594, label %3622

; <label>:3594                                    ; preds = %3565
  %3595 = add i32 %3555, %3573
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = and i32 %3597, 32767
  %3599 = mul nuw nsw i32 %3598, 928
  %3600 = add nuw nsw i32 %3599, 48
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = add nuw nsw i32 %3599, 60
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = fmul fast float %3602, %3592
  %3611 = fmul fast float %3603, %3592
  %3612 = fmul fast float %3604, %3592
  %3613 = fadd fast float %3610, %3566
  %3614 = fadd fast float %3611, %3567
  %3615 = fadd fast float %3612, %3568
  %3616 = fmul fast float %3607, %3592
  %3617 = fmul fast float %3608, %3592
  %3618 = fmul fast float %3609, %3592
  %3619 = fadd fast float %3616, %3569
  %3620 = fadd fast float %3617, %3570
  %3621 = fadd fast float %3618, %3571
  br label %3622

; <label>:3622                                    ; preds = %3594, %3565
  %3623 = phi float [ %3613, %3594 ], [ %3566, %3565 ]
  %3624 = phi float [ %3614, %3594 ], [ %3567, %3565 ]
  %3625 = phi float [ %3615, %3594 ], [ %3568, %3565 ]
  %3626 = phi float [ %3619, %3594 ], [ %3569, %3565 ]
  %3627 = phi float [ %3620, %3594 ], [ %3570, %3565 ]
  %3628 = phi float [ %3621, %3594 ], [ %3571, %3565 ]
  %3629 = add nuw i32 %3572, 1
  %3630 = icmp eq i32 %3629, %3554
  br i1 %3630, label %3631, label %3565

; <label>:3631                                    ; preds = %3622
  br label %3632

; <label>:3632                                    ; preds = %3631, %3495
  %3633 = phi float [ 0.000000e+00, %3495 ], [ %3623, %3631 ]
  %3634 = phi float [ 0.000000e+00, %3495 ], [ %3624, %3631 ]
  %3635 = phi float [ 0.000000e+00, %3495 ], [ %3625, %3631 ]
  %3636 = phi float [ 0.000000e+00, %3495 ], [ %3626, %3631 ]
  %3637 = phi float [ 0.000000e+00, %3495 ], [ %3627, %3631 ]
  %3638 = phi float [ 0.000000e+00, %3495 ], [ %3628, %3631 ]
  %3639 = fadd fast float %3636, %3633
  %3640 = fmul fast float %3639, 0x3F847AE140000000
  %3641 = fadd fast float %3637, %3634
  %3642 = fmul fast float %3641, 0x3F847AE140000000
  %3643 = fadd fast float %3638, %3635
  %3644 = fmul fast float %3643, 0x3F847AE140000000
  br label %3645

; <label>:3645                                    ; preds = %3632, %3429, %3374, %3371, %3342, %3304
  %3646 = phi float [ %3356, %3342 ], [ -1.310720e+05, %3304 ], [ %3548, %3632 ], [ -1.310720e+05, %3374 ], [ -1.310720e+05, %3429 ], [ -1.310720e+05, %3371 ]
  %3647 = phi float [ %3366, %3342 ], [ 0.000000e+00, %3304 ], [ %3640, %3632 ], [ 0.000000e+00, %3374 ], [ 0.000000e+00, %3429 ], [ 0.000000e+00, %3371 ]
  %3648 = phi float [ %3368, %3342 ], [ 0.000000e+00, %3304 ], [ %3642, %3632 ], [ 0.000000e+00, %3374 ], [ 0.000000e+00, %3429 ], [ 0.000000e+00, %3371 ]
  %3649 = phi float [ %3370, %3342 ], [ 0.000000e+00, %3304 ], [ %3644, %3632 ], [ 0.000000e+00, %3374 ], [ 0.000000e+00, %3429 ], [ 0.000000e+00, %3371 ]
  %3650 = phi i1 [ true, %3342 ], [ false, %3304 ], [ true, %3632 ], [ false, %3374 ], [ false, %3429 ], [ false, %3371 ]
  %3651 = and i32 %172, 3
  %3652 = icmp eq i32 %3651, 1
  %3653 = select i1 %3652, float 1.000000e+00, float 0.000000e+00
  %3654 = fsub fast float %3646, %127
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = select i1 %3650, float %3655, float 1.000000e+00
  %3657 = fmul fast float %3656, %3653
  %3658 = icmp eq i32 %3651, 3
  %3659 = select i1 %3658, float 1.000000e+00, float %3657
  %3660 = call float @dx.op.binary.f32(i32 35, float %3220, float %3659)  ; FMax(a,b)
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3662 = fcmp fast une float %3661, 0.000000e+00
  %3663 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3664 = call float @dx.op.unary.f32(i32 25, float %3663)  ; Rsqrt(value)
  br i1 %3662, label %3672, label %3665

; <label>:3665                                    ; preds = %3645
  %3666 = fmul fast float %3664, %125
  %3667 = fmul fast float %3664, %126
  %3668 = fmul fast float %3664, %127
  %3669 = fsub fast float -0.000000e+00, %3666
  %3670 = fsub fast float -0.000000e+00, %3667
  %3671 = fsub fast float -0.000000e+00, %3668
  br label %3840

; <label>:3672                                    ; preds = %3645
  %3673 = fmul fast float %125, %3664
  %3674 = fsub fast float -0.000000e+00, %3673
  %3675 = fmul fast float %126, %3664
  %3676 = fsub fast float -0.000000e+00, %3675
  %3677 = fmul fast float %127, %3664
  %3678 = fsub fast float -0.000000e+00, %3677
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3674, float %3676, float %3678, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = fmul fast float %3661, 2.500000e+00
  %3681 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3682 = fmul fast float %3661, 0x4013FFFFE0000000
  %3683 = fadd fast float %3682, 0xBFFFFFFFE0000000
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = fmul fast float %3661, 0x4004000020000000
  %3686 = fadd fast float %3685, 0xBFF8000040000000
  %3687 = call float @dx.op.unary.f32(i32 7, float %3686)  ; Saturate(value)
  %3688 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3689 = fmul fast float %3250, 1.000000e+01
  %3690 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3691 = fmul fast float %3690, 2.000000e+00
  %3692 = fsub fast float 3.000000e+00, %3691
  %3693 = fmul fast float %3690, %3690
  %3694 = fmul fast float %3693, %3692
  %3695 = fsub fast float 1.000000e+00, %3694
  %3696 = fsub fast float 0x3FE3333340000000, %3271
  %3697 = fmul fast float %3696, 0x400AAAAAA0000000
  %3698 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3699 = fmul fast float %3695, %3698
  %3700 = fmul fast float %3283, 0x3FEA2B8620000000
  %3701 = fmul fast float %3284, 0x3FEA2B8620000000
  %3702 = fmul fast float %3285, 0x3FEA2B8620000000
  %3703 = fadd fast float %3700, 0x3FC81DFBA0000000
  %3704 = fmul fast float %3703, %3283
  %3705 = fadd fast float %3704, 0x3F910E6020000000
  %3706 = fadd fast float %3701, 0x3FC81DFBA0000000
  %3707 = fmul fast float %3706, %3284
  %3708 = fadd fast float %3707, 0x3F910E6020000000
  %3709 = fadd fast float %3702, 0x3FC81DFBA0000000
  %3710 = fmul fast float %3709, %3285
  %3711 = fadd fast float %3710, 0x3F910E6020000000
  %3712 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3713 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3714 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3715 = fsub fast float %3712, %3283
  %3716 = fsub fast float %3713, %3284
  %3717 = fsub fast float %3714, %3285
  %3718 = fmul fast float %3715, %3688
  %3719 = fmul fast float %3718, %3699
  %3720 = fmul fast float %3716, %3688
  %3721 = fmul fast float %3720, %3699
  %3722 = fmul fast float %3717, %3688
  %3723 = fmul fast float %3722, %3699
  %3724 = fadd fast float %3719, %3283
  %3725 = fadd fast float %3721, %3284
  %3726 = fadd fast float %3723, %3285
  %3727 = fmul fast float %3231, %3231
  %3728 = fmul fast float %3727, %3727
  %3729 = fadd fast float %3684, 1.000000e+00
  %3730 = fsub fast float %3729, %3699
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3734 = fsub fast float 1.000000e+00, %3728
  %3735 = call float @dx.op.binary.f32(i32 36, float %3731, float %3734)  ; FMin(a,b)
  %3736 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3737 = call float @dx.op.binary.f32(i32 35, float %3735, float %3736)  ; FMax(a,b)
  %3738 = fadd fast float %3733, 0xBFE4CCCCC0000000
  %3739 = fmul fast float %3738, 0x4006DB6DA0000000
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fmul fast float %3740, 2.000000e+00
  %3742 = fsub fast float 3.000000e+00, %3741
  %3743 = bitcast float %3268 to i32
  %3744 = ashr i32 %3743, 1
  %3745 = add nsw i32 %3744, 532487669
  %3746 = bitcast i32 %3745 to float
  %3747 = fsub fast float 1.000000e+00, %3746
  %3748 = bitcast float %3747 to i32
  %3749 = sub nsw i32 2129859010, %3748
  %3750 = bitcast i32 %3749 to float
  %3751 = fmul fast float %3750, 2.000000e+00
  %3752 = bitcast float %3269 to i32
  %3753 = ashr i32 %3752, 1
  %3754 = add nsw i32 %3753, 532487669
  %3755 = bitcast i32 %3754 to float
  %3756 = fsub fast float 1.000000e+00, %3755
  %3757 = bitcast float %3756 to i32
  %3758 = sub nsw i32 2129859010, %3757
  %3759 = bitcast i32 %3758 to float
  %3760 = fmul fast float %3759, 2.000000e+00
  %3761 = bitcast float %3270 to i32
  %3762 = ashr i32 %3761, 1
  %3763 = add nsw i32 %3762, 532487669
  %3764 = bitcast i32 %3763 to float
  %3765 = fsub fast float 1.000000e+00, %3764
  %3766 = bitcast float %3765 to i32
  %3767 = sub nsw i32 2129859010, %3766
  %3768 = bitcast i32 %3767 to float
  %3769 = fmul fast float %3768, 2.000000e+00
  %3770 = fsub fast float 0x4002A9FBE0000000, %3751
  %3771 = fadd fast float %3751, 0x3FD54FDF00000000
  %3772 = bitcast float %3771 to i32
  %3773 = sub nsw i32 2129859010, %3772
  %3774 = bitcast i32 %3773 to float
  %3775 = fmul fast float %3774, %3770
  %3776 = fmul fast float %3775, %3775
  %3777 = fsub fast float 0x4002A9FBE0000000, %3760
  %3778 = fadd fast float %3760, 0x3FD54FDF00000000
  %3779 = bitcast float %3778 to i32
  %3780 = sub nsw i32 2129859010, %3779
  %3781 = bitcast i32 %3780 to float
  %3782 = fmul fast float %3781, %3777
  %3783 = fmul fast float %3782, %3782
  %3784 = fsub fast float 0x4002A9FBE0000000, %3769
  %3785 = fadd fast float %3769, 0x3FD54FDF00000000
  %3786 = bitcast float %3785 to i32
  %3787 = sub nsw i32 2129859010, %3786
  %3788 = bitcast i32 %3787 to float
  %3789 = fmul fast float %3788, %3784
  %3790 = fmul fast float %3789, %3789
  %3791 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3776)  ; FMax(a,b)
  %3792 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3783)  ; FMax(a,b)
  %3793 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3790)  ; FMax(a,b)
  %3794 = fsub fast float 1.000000e+00, %3679
  %3795 = fadd fast float %3794, %3695
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = fsub fast float 1.000000e+00, %3659
  %3798 = fmul fast float %3737, %3797
  %3799 = fmul fast float %3740, %3740
  %3800 = fmul fast float %3799, %3798
  %3801 = fmul fast float %3800, %3742
  %3802 = fmul fast float %3797, 0xBFE99999A0000000
  %3803 = fmul fast float %3802, %3688
  %3804 = fmul fast float %3803, %3699
  %3805 = fadd fast float %3804, 1.000000e+00
  %3806 = fadd fast float %3271, -1.000000e+00
  %3807 = fmul fast float %3805, %3806
  %3808 = fadd fast float %3807, 1.000000e+00
  %3809 = fsub fast float %3791, %3268
  %3810 = fsub fast float %3792, %3269
  %3811 = fsub fast float %3793, %3270
  %3812 = fmul fast float %3801, %3809
  %3813 = fmul fast float %3801, %3810
  %3814 = fmul fast float %3801, %3811
  %3815 = fadd fast float %3812, %3268
  %3816 = fadd fast float %3813, %3269
  %3817 = fadd fast float %3814, %3270
  %3818 = fsub fast float %57, %3247
  %3819 = fsub fast float %58, %3248
  %3820 = fsub fast float %59, %3249
  %3821 = fmul fast float %3801, %3818
  %3822 = fmul fast float %3801, %3819
  %3823 = fmul fast float %3801, %3820
  %3824 = fadd fast float %3821, %3247
  %3825 = fadd fast float %3822, %3248
  %3826 = fadd fast float %3823, %3249
  %3827 = fmul fast float %3801, %3796
  %3828 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3829 = fsub fast float 1.000000e+00, %3828
  %3830 = fmul fast float %3827, %3829
  %3831 = fadd fast float %3830, %3828
  %3832 = fsub fast float 1.000000e+00, %3231
  %3833 = fmul fast float %3801, %3832
  %3834 = fadd fast float %3833, %3231
  %3835 = call float @dx.op.dot3.f32(i32 55, float %3824, float %3825, float %3826, float %3824, float %3825, float %3826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3836 = call float @dx.op.unary.f32(i32 25, float %3835)  ; Rsqrt(value)
  %3837 = fmul fast float %3824, %3836
  %3838 = fmul fast float %3825, %3836
  %3839 = fmul fast float %3826, %3836
  br label %3840

; <label>:3840                                    ; preds = %3672, %3665
  %3841 = phi float [ %3671, %3665 ], [ %3678, %3672 ]
  %3842 = phi float [ %3670, %3665 ], [ %3676, %3672 ]
  %3843 = phi float [ %3669, %3665 ], [ %3674, %3672 ]
  %3844 = phi float [ %3668, %3665 ], [ %3677, %3672 ]
  %3845 = phi float [ %3667, %3665 ], [ %3675, %3672 ]
  %3846 = phi float [ %3666, %3665 ], [ %3673, %3672 ]
  %3847 = phi float [ %3268, %3665 ], [ %3815, %3672 ]
  %3848 = phi float [ %3269, %3665 ], [ %3816, %3672 ]
  %3849 = phi float [ %3270, %3665 ], [ %3817, %3672 ]
  %3850 = phi float [ %3283, %3665 ], [ %3724, %3672 ]
  %3851 = phi float [ %3284, %3665 ], [ %3725, %3672 ]
  %3852 = phi float [ %3285, %3665 ], [ %3726, %3672 ]
  %3853 = phi float [ %3247, %3665 ], [ %3837, %3672 ]
  %3854 = phi float [ %3248, %3665 ], [ %3838, %3672 ]
  %3855 = phi float [ %3249, %3665 ], [ %3839, %3672 ]
  %3856 = phi float [ %3271, %3665 ], [ %3831, %3672 ]
  %3857 = phi float [ %3231, %3665 ], [ %3834, %3672 ]
  %3858 = select i1 %196, float 0.000000e+00, float %3849
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %3843, float %3842, float %3841)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3861 = call float @dx.op.dot3.f32(i32 55, float %3846, float %3845, float %3844, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3862 = fmul fast float %3861, 2.000000e+00
  %3863 = fmul fast float %3862, %3853
  %3864 = fmul fast float %3862, %3854
  %3865 = fmul fast float %3862, %3855
  %3866 = fsub fast float %3846, %3863
  %3867 = fsub fast float %3845, %3864
  %3868 = fsub fast float %3844, %3865
  %3869 = call float @dx.op.binary.f32(i32 36, float %3857, float 1.000000e+00)  ; FMin(a,b)
  %3870 = fsub fast float 1.000000e+00, %3857
  %3871 = bitcast float %3870 to i32
  %3872 = sub nsw i32 2129859010, %3871
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3876 = fadd fast float %3874, %125
  %3877 = fadd fast float %3875, %126
  %3878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.i32 %3878, 0
  %3880 = icmp eq i32 %3879, 1
  br i1 %3880, label %3881, label %3916

; <label>:3881                                    ; preds = %3840
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.CBufRet.f32 %3882, 1
  %3885 = fsub fast float %3876, %3883
  %3886 = fsub fast float %3877, %3884
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3890 = fmul fast float %3885, %3888
  %3891 = fmul fast float %3886, %3889
  %3892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3890, float %3891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = fcmp fast ogt float %3893, 0.000000e+00
  %3895 = extractvalue %dx.types.CBufRet.i32 %3878, 3
  %3896 = icmp ne i32 %3895, 0
  %3897 = and i1 %3894, %3896
  br i1 %3897, label %3898, label %3916, !dx.controlflow.hints !85

; <label>:3898                                    ; preds = %3881
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.CBufRet.f32 %3899, 1
  %3902 = fsub fast float %3876, %3900
  %3903 = fsub fast float %3877, %3901
  %3904 = fmul fast float %3902, %3902
  %3905 = fmul fast float %3903, %3903
  %3906 = fadd fast float %3904, %3905
  %3907 = uitofp i32 %3895 to float
  %3908 = fmul fast float %3907, %3907
  %3909 = fcmp fast ogt float %3906, %3908
  br i1 %3909, label %3916, label %3910

; <label>:3910                                    ; preds = %3898
  %3911 = call float @dx.op.unary.f32(i32 24, float %3906)  ; Sqrt(value)
  %3912 = fsub fast float %3907, %3911
  %3913 = fmul fast float %3912, 0x3F75555560000000
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = call float @dx.op.binary.f32(i32 36, float %3914, float %3893)  ; FMin(a,b)
  br label %3916

; <label>:3916                                    ; preds = %3910, %3898, %3881, %3840
  %3917 = phi float [ 1.000000e+00, %3840 ], [ %3915, %3910 ], [ %3893, %3881 ], [ 0.000000e+00, %3898 ]
  %3918 = fcmp fast ogt float %3917, 0.000000e+00
  br i1 %3918, label %3919, label %4017, !dx.controlflow.hints !86

; <label>:3919                                    ; preds = %3916
  %3920 = fadd fast float %156, 5.000000e-01
  %3921 = call float @dx.op.unary.f32(i32 27, float %3920)  ; Round_ni(value)
  %3922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %154, float %155, float %3921, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.ResRet.f32 %3922, 2
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 3
  %3928 = fmul fast float %3927, %3923
  %3929 = fmul fast float %3927, %3924
  %3930 = fmul fast float %3927, %3925
  %3931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %154, float %155, float %3921, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3932 = extractvalue %dx.types.ResRet.f32 %3931, 0
  %3933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %154, float %155, float %3921, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = fmul fast float %3934, 2.000000e+00
  %3937 = fmul fast float %3935, 2.000000e+00
  %3938 = fadd fast float %3936, -1.000000e+00
  %3939 = fadd fast float %3937, -1.000000e+00
  %3940 = fadd fast float %3938, %3939
  %3941 = fmul fast float %3940, 5.000000e-01
  %3942 = fsub fast float %3938, %3939
  %3943 = fmul fast float %3942, 5.000000e-01
  %3944 = call float @dx.op.unary.f32(i32 6, float %3941)  ; FAbs(value)
  %3945 = fsub fast float 1.000000e+00, %3944
  %3946 = call float @dx.op.unary.f32(i32 6, float %3943)  ; FAbs(value)
  %3947 = fsub fast float %3945, %3946
  %3948 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3947)  ; FMax(a,b)
  %3949 = call float @dx.op.dot3.f32(i32 55, float %3941, float %3943, float %3948, float %3941, float %3943, float %3948)  ; Dot3(ax,ay,az,bx,by,bz)
  %3950 = bitcast float %3949 to i32
  %3951 = ashr i32 %3950, 1
  %3952 = sub nsw i32 1597250115, %3951
  %3953 = bitcast i32 %3952 to float
  %3954 = fmul fast float %3953, %3941
  %3955 = fmul fast float %3953, %3943
  %3956 = fmul fast float %3953, %3948
  %3957 = fsub fast float 1.000000e+00, %3932
  %3958 = fdiv fast float %3957, %3956
  %3959 = fmul fast float %3956, %57
  %3960 = fmul fast float %3956, %58
  %3961 = fmul fast float %3956, %59
  %3962 = fmul fast float %3954, %53
  %3963 = fmul fast float %3954, %54
  %3964 = fmul fast float %3954, %55
  %3965 = fadd fast float %3959, %3962
  %3966 = fadd fast float %3960, %3963
  %3967 = fadd fast float %3961, %3964
  %3968 = fmul fast float %3955, %89
  %3969 = fmul fast float %3955, %90
  %3970 = fmul fast float %3955, %91
  %3971 = fadd fast float %3965, %3968
  %3972 = fadd fast float %3966, %3969
  %3973 = fadd fast float %3967, %3970
  %3974 = call float @dx.op.dot3.f32(i32 55, float %3971, float %3972, float %3973, float %3971, float %3972, float %3973)  ; Dot3(ax,ay,az,bx,by,bz)
  %3975 = call float @dx.op.unary.f32(i32 25, float %3974)  ; Rsqrt(value)
  %3976 = fmul fast float %3971, %3975
  %3977 = fmul fast float %3972, %3975
  %3978 = fmul fast float %3973, %3975
  %3979 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fmul fast float %3980, 5.000000e-01
  %3982 = fadd fast float %3981, 5.000000e-01
  %3983 = fmul fast float %3982, %3932
  %3984 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %3976, float %3977, float %3978)  ; Dot3(ax,ay,az,bx,by,bz)
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = fmul fast float %3985, %3958
  %3987 = fadd fast float %3983, %3986
  %3988 = fsub fast float 5.000000e-01, %3981
  %3989 = fmul fast float %3988, %3850
  %3990 = fmul fast float %3988, %3851
  %3991 = fmul fast float %3988, %3852
  %3992 = fadd fast float %3987, %3989
  %3993 = fmul fast float %3992, %3928
  %3994 = fadd fast float %3987, %3990
  %3995 = fmul fast float %3994, %3929
  %3996 = fadd fast float %3987, %3991
  %3997 = fmul fast float %3996, %3930
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = fmul fast float %3999, 5.000000e-01
  %4001 = fadd fast float %4000, 5.000000e-01
  %4002 = fmul fast float %4001, %3932
  %4003 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3976, float %3977, float %3978)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4005 = fmul fast float %4004, %3958
  %4006 = fadd fast float %4002, %4005
  %4007 = fsub fast float 5.000000e-01, %4000
  %4008 = fmul fast float %4007, %3850
  %4009 = fmul fast float %4007, %3851
  %4010 = fmul fast float %4007, %3852
  %4011 = fadd fast float %4006, %4008
  %4012 = fmul fast float %4011, %3928
  %4013 = fadd fast float %4006, %4009
  %4014 = fmul fast float %4013, %3929
  %4015 = fadd fast float %4006, %4010
  %4016 = fmul fast float %4015, %3930
  br label %4017

; <label>:4017                                    ; preds = %3919, %3916
  %4018 = phi float [ %4012, %3919 ], [ 0.000000e+00, %3916 ]
  %4019 = phi float [ %4014, %3919 ], [ 0.000000e+00, %3916 ]
  %4020 = phi float [ %4016, %3919 ], [ 0.000000e+00, %3916 ]
  %4021 = phi float [ %3993, %3919 ], [ 0.000000e+00, %3916 ]
  %4022 = phi float [ %3995, %3919 ], [ 0.000000e+00, %3916 ]
  %4023 = phi float [ %3997, %3919 ], [ 0.000000e+00, %3916 ]
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = fcmp fast ogt float %4025, 0.000000e+00
  %4027 = and i1 %3918, %4026
  br i1 %4027, label %4028, label %4232, !dx.controlflow.hints !87

; <label>:4028                                    ; preds = %4017
  %4029 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %4030 = fadd fast float %4029, %127
  %4031 = fmul fast float %3853, 3.200000e+01
  %4032 = fmul fast float %3854, 3.200000e+01
  %4033 = fadd fast float %3876, %4031
  %4034 = fadd fast float %3877, %4032
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4038 = fsub fast float %4033, %4036
  %4039 = fsub fast float %4034, %4037
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4043 = fmul fast float %4038, %4041
  %4044 = fmul fast float %4039, %4042
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.CBufRet.f32 %4045, 1
  %4048 = fsub fast float %3876, %4046
  %4049 = fsub fast float %3877, %4047
  %4050 = fmul fast float %4048, %4048
  %4051 = fmul fast float %4049, %4049
  %4052 = fadd fast float %4050, %4051
  %4053 = call float @dx.op.unary.f32(i32 24, float %4052)  ; Sqrt(value)
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = fsub fast float %4053, %4055
  %4058 = fdiv fast float %4057, %4056
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %4059, 2.000000e+00
  %4061 = fsub fast float 3.000000e+00, %4060
  %4062 = fmul fast float %4059, %4059
  %4063 = fmul fast float %4062, %4061
  %4064 = fcmp fast oge float %4043, 0.000000e+00
  %4065 = fcmp fast ole float %4043, 1.000000e+00
  %4066 = and i1 %4065, %4064
  %4067 = fcmp fast oge float %4044, 0.000000e+00
  %4068 = and i1 %4067, %4066
  %4069 = fcmp fast ole float %4044, 1.000000e+00
  %4070 = and i1 %4069, %4068
  %4071 = fcmp fast ogt float %4063, 0.000000e+00
  %4072 = and i1 %4071, %4070
  br i1 %4072, label %4073, label %4196, !dx.controlflow.hints !88

; <label>:4073                                    ; preds = %4028
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4077 = fmul fast float %4075, %4043
  %4078 = fmul fast float %4076, %4044
  %4079 = call float @dx.op.unary.f32(i32 27, float %4077)  ; Round_ni(value)
  %4080 = call float @dx.op.unary.f32(i32 27, float %4078)  ; Round_ni(value)
  %4081 = fptosi float %4079 to i32
  %4082 = fptosi float %4080 to i32
  %4083 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4081, i32 %4082, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = lshr i32 %4084, 16
  %4086 = icmp eq i32 %4085, 65535
  br i1 %4086, label %4196, label %4087

; <label>:4087                                    ; preds = %4073
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = fmul fast float %4089, %4043
  %4091 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4092 = fadd fast float %4090, %4091
  %4093 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4094 = fmul fast float %4093, %4044
  %4095 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4096 = fadd fast float %4094, %4095
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4092, float %4096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.ResRet.f32 %4097, 1
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4103 = fsub fast float %4101, %4102
  %4104 = fmul fast float %4103, %4098
  %4105 = fadd fast float %4104, %4102
  %4106 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4107 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4108 = fsub fast float %4106, %4107
  %4109 = fmul fast float %4108, %4099
  %4110 = fadd fast float %4109, %4107
  %4111 = fsub fast float %4030, %4105
  %4112 = fsub fast float %4110, %4105
  %4113 = fdiv fast float %4111, %4112
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4116 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4117 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4118 = fmul fast float %4116, %4043
  %4119 = fmul fast float %4117, %4044
  %4120 = fmul fast float %4118, 1.250000e-01
  %4121 = fmul fast float %4119, 1.250000e-01
  %4122 = call float @dx.op.unary.f32(i32 27, float %4120)  ; Round_ni(value)
  %4123 = call float @dx.op.unary.f32(i32 27, float %4121)  ; Round_ni(value)
  %4124 = fmul fast float %4122, 8.000000e+00
  %4125 = fmul fast float %4123, 8.000000e+00
  %4126 = fsub fast float %4118, %4124
  %4127 = fsub fast float %4119, %4125
  %4128 = fadd fast float %4126, 5.000000e-01
  %4129 = fadd fast float %4127, 5.000000e-01
  %4130 = and i32 %4085, 255
  %4131 = lshr i32 %4084, 24
  %4132 = mul nuw nsw i32 %4130, 9
  %4133 = uitofp i32 %4132 to float
  %4134 = mul nuw nsw i32 %4131, 9
  %4135 = uitofp i32 %4134 to float
  %4136 = fadd fast float %4128, %4133
  %4137 = fadd fast float %4129, %4135
  %4138 = fdiv fast float %4136, %4025
  %4139 = fdiv fast float %4137, %4115
  %4140 = fmul fast float %4114, 4.375000e-01
  %4141 = fadd fast float %4140, 3.125000e-02
  %4142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4138, float %4139, float %4141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4146 = fadd fast float %4140, 5.312500e-01
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4138, float %4139, float %4146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = fmul fast float %4148, 2.000000e+00
  %4152 = fmul fast float %4149, 2.000000e+00
  %4153 = fmul fast float %4150, 2.000000e+00
  %4154 = fadd fast float %4151, -1.000000e+00
  %4155 = fadd fast float %4152, -1.000000e+00
  %4156 = fadd fast float %4153, -1.000000e+00
  %4157 = fmul fast float %4154, %4154
  %4158 = fmul fast float %4155, %4155
  %4159 = fadd fast float %4157, %4158
  %4160 = fmul fast float %4156, %4156
  %4161 = fadd fast float %4159, %4160
  %4162 = call float @dx.op.unary.f32(i32 24, float %4161)  ; Sqrt(value)
  %4163 = fcmp fast ogt float %4162, 0.000000e+00
  br i1 %4163, label %4164, label %4168

; <label>:4164                                    ; preds = %4087
  %4165 = fdiv fast float %4154, %4162
  %4166 = fdiv fast float %4155, %4162
  %4167 = fdiv fast float %4156, %4162
  br label %4168

; <label>:4168                                    ; preds = %4164, %4087
  %4169 = phi float [ %4165, %4164 ], [ 0.000000e+00, %4087 ]
  %4170 = phi float [ %4166, %4164 ], [ 0.000000e+00, %4087 ]
  %4171 = phi float [ %4167, %4164 ], [ 0.000000e+00, %4087 ]
  %4172 = call float @dx.op.dot3.f32(i32 55, float %4169, float %4170, float %4171, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4173 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4172)  ; FMax(a,b)
  %4174 = fmul fast float %4173, 0x400C5BF8A0000000
  %4175 = fmul fast float %4143, %4063
  %4176 = fmul fast float %4175, %4174
  %4177 = fmul fast float %4144, %4063
  %4178 = fmul fast float %4177, %4174
  %4179 = fmul fast float %4145, %4063
  %4180 = fmul fast float %4179, %4174
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4183 = fmul fast float %4176, %4182
  %4184 = fmul fast float %4178, %4182
  %4185 = fmul fast float %4180, %4182
  %4186 = fcmp fast ogt float %4030, %4110
  br i1 %4186, label %4187, label %4196

; <label>:4187                                    ; preds = %4168
  %4188 = fmul fast float %4112, 0x3FC24924A0000000
  %4189 = fsub fast float %4030, %4110
  %4190 = fdiv fast float %4189, %4188
  %4191 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4192 = fsub fast float 1.000000e+00, %4191
  %4193 = fmul fast float %4192, %4183
  %4194 = fmul fast float %4192, %4184
  %4195 = fmul fast float %4192, %4185
  br label %4196

; <label>:4196                                    ; preds = %4187, %4168, %4073, %4028
  %4197 = phi float [ %4195, %4187 ], [ %4185, %4168 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4028 ]
  %4198 = phi float [ %4194, %4187 ], [ %4184, %4168 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4028 ]
  %4199 = phi float [ %4193, %4187 ], [ %4183, %4168 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4028 ]
  %4200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4199)  ; FMax(a,b)
  %4201 = fmul fast float %4200, 0x3FD20DD760000000
  %4202 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = fmul fast float %4202, 0x3FDF454380000000
  %4204 = fmul fast float %4202, %4202
  %4205 = fmul fast float %4204, 0x3FEE471020000000
  %4206 = fadd fast float %4205, 0xBFD42F6020000000
  %4207 = call float @dx.op.dot3.f32(i32 55, float %4200, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4203, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4198)  ; FMax(a,b)
  %4209 = fmul fast float %4208, 0x3FD20DD760000000
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4208, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4203, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4197)  ; FMax(a,b)
  %4212 = fmul fast float %4211, 0x3FD20DD760000000
  %4213 = call float @dx.op.dot3.f32(i32 55, float %4211, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4203, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4214 = call float @dx.op.binary.f32(i32 35, float %4201, float 0.000000e+00)  ; FMax(a,b)
  %4215 = call float @dx.op.binary.f32(i32 35, float %4209, float 0.000000e+00)  ; FMax(a,b)
  %4216 = call float @dx.op.binary.f32(i32 35, float %4212, float 0.000000e+00)  ; FMax(a,b)
  %4217 = call float @dx.op.binary.f32(i32 35, float %4207, float 0.000000e+00)  ; FMax(a,b)
  %4218 = call float @dx.op.binary.f32(i32 35, float %4210, float 0.000000e+00)  ; FMax(a,b)
  %4219 = call float @dx.op.binary.f32(i32 35, float %4213, float 0.000000e+00)  ; FMax(a,b)
  %4220 = fmul fast float %4214, %3917
  %4221 = fmul fast float %4215, %3917
  %4222 = fmul fast float %4216, %3917
  %4223 = fadd fast float %4220, %4021
  %4224 = fadd fast float %4221, %4022
  %4225 = fadd fast float %4222, %4023
  %4226 = fmul fast float %4217, %3917
  %4227 = fmul fast float %4218, %3917
  %4228 = fmul fast float %4219, %3917
  %4229 = fadd fast float %4226, %4018
  %4230 = fadd fast float %4227, %4019
  %4231 = fadd fast float %4228, %4020
  br label %4232

; <label>:4232                                    ; preds = %4196, %4017
  %4233 = phi float [ %4229, %4196 ], [ %4018, %4017 ]
  %4234 = phi float [ %4230, %4196 ], [ %4019, %4017 ]
  %4235 = phi float [ %4231, %4196 ], [ %4020, %4017 ]
  %4236 = phi float [ %4223, %4196 ], [ %4021, %4017 ]
  %4237 = phi float [ %4224, %4196 ], [ %4022, %4017 ]
  %4238 = phi float [ %4225, %4196 ], [ %4023, %4017 ]
  %4239 = fcmp fast olt float %3917, 1.000000e+00
  br i1 %4239, label %4240, label %5058, !dx.controlflow.hints !89

; <label>:4240                                    ; preds = %4232
  %4241 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %4242 = fadd fast float %4241, %127
  %4243 = fmul fast float %3853, 3.200000e+01
  %4244 = fmul fast float %3854, 3.200000e+01
  %4245 = fadd fast float %3876, %4243
  %4246 = fadd fast float %3877, %4244
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.CBufRet.f32 %4247, 1
  %4250 = fsub fast float %4245, %4248
  %4251 = fsub fast float %4246, %4249
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 0
  %4254 = extractvalue %dx.types.CBufRet.f32 %4252, 1
  %4255 = fmul fast float %4250, %4253
  %4256 = fmul fast float %4251, %4254
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 0
  %4259 = fmul fast float %4255, %4258
  %4260 = extractvalue %dx.types.CBufRet.f32 %4257, 1
  %4261 = fadd fast float %4259, %4260
  %4262 = extractvalue %dx.types.CBufRet.f32 %4257, 2
  %4263 = fmul fast float %4262, %4256
  %4264 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4265 = fadd fast float %4263, %4264
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4261, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4271 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4272 = fsub fast float %4270, %4271
  %4273 = fmul fast float %4272, %4267
  %4274 = fadd fast float %4273, %4271
  %4275 = extractvalue %dx.types.CBufRet.f32 %4269, 3
  %4276 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4277 = fsub fast float %4275, %4276
  %4278 = fmul fast float %4277, %4268
  %4279 = fadd fast float %4278, %4276
  %4280 = fsub fast float %4242, %4274
  %4281 = fsub fast float %4279, %4274
  %4282 = fdiv fast float %4280, %4281
  %4283 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = fmul fast float %4285, %4283
  %4287 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4288 = fadd fast float %4286, %4287
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4261, float %4265, float %4288, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.ResRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.ResRet.f32 %4289, 2
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.CBufRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.CBufRet.f32 %4293, 2
  %4297 = fmul fast float %4294, %4290
  %4298 = fmul fast float %4295, %4291
  %4299 = fmul fast float %4296, %4292
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4300, 2
  %4304 = fadd fast float %4297, %4301
  %4305 = fadd fast float %4298, %4302
  %4306 = fadd fast float %4299, %4303
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = fmul fast float %4308, %4255
  %4310 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4311 = fadd fast float %4309, %4310
  %4312 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4313 = fmul fast float %4312, %4256
  %4314 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4315 = fadd fast float %4313, %4314
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4318 = extractvalue %dx.types.CBufRet.f32 %4316, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4316, 2
  %4320 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4321, 2
  %4325 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4311, float %4315, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.ResRet.f32 %4326, 1
  %4329 = extractvalue %dx.types.ResRet.f32 %4326, 2
  %4330 = extractvalue %dx.types.ResRet.f32 %4326, 3
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4311, float %4315, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.ResRet.f32 %4331, 1
  %4334 = extractvalue %dx.types.ResRet.f32 %4331, 2
  %4335 = extractvalue %dx.types.ResRet.f32 %4331, 3
  %4336 = fmul fast float %4327, %4304
  %4337 = fmul fast float %4332, %4304
  %4338 = fmul fast float %4334, %4304
  %4339 = fmul fast float %4330, %4304
  %4340 = fadd fast float %4336, %4317
  %4341 = fadd fast float %4337, %4318
  %4342 = fadd fast float %4338, %4319
  %4343 = fadd fast float %4339, %4320
  %4344 = fmul fast float %4328, %4304
  %4345 = fmul fast float %4333, %4304
  %4346 = fadd fast float %4344, %4322
  %4347 = fadd fast float %4345, %4323
  %4348 = fmul fast float %4329, %4304
  %4349 = fmul fast float %4335, %4304
  %4350 = fadd fast float %4348, %4324
  %4351 = fadd fast float %4349, %4325
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4311, float %4315, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4356 = extractvalue %dx.types.ResRet.f32 %4352, 3
  %4357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4311, float %4315, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.ResRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.ResRet.f32 %4357, 2
  %4361 = extractvalue %dx.types.ResRet.f32 %4357, 3
  %4362 = fmul fast float %4353, %4305
  %4363 = fmul fast float %4358, %4305
  %4364 = fmul fast float %4360, %4305
  %4365 = fmul fast float %4356, %4305
  %4366 = fadd fast float %4340, %4362
  %4367 = fadd fast float %4341, %4363
  %4368 = fadd fast float %4342, %4364
  %4369 = fadd fast float %4343, %4365
  %4370 = fmul fast float %4354, %4305
  %4371 = fmul fast float %4359, %4305
  %4372 = fadd fast float %4346, %4370
  %4373 = fadd fast float %4347, %4371
  %4374 = fmul fast float %4355, %4305
  %4375 = fmul fast float %4361, %4305
  %4376 = fadd fast float %4350, %4374
  %4377 = fadd fast float %4351, %4375
  %4378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4311, float %4315, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.ResRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.ResRet.f32 %4378, 2
  %4382 = extractvalue %dx.types.ResRet.f32 %4378, 3
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4311, float %4315, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = extractvalue %dx.types.ResRet.f32 %4383, 3
  %4388 = fmul fast float %4379, %4306
  %4389 = fmul fast float %4384, %4306
  %4390 = fmul fast float %4386, %4306
  %4391 = fmul fast float %4382, %4306
  %4392 = fadd fast float %4366, %4388
  %4393 = fadd fast float %4367, %4389
  %4394 = fadd fast float %4368, %4390
  %4395 = fadd fast float %4369, %4391
  %4396 = fmul fast float %4380, %4306
  %4397 = fmul fast float %4385, %4306
  %4398 = fadd fast float %4372, %4396
  %4399 = fadd fast float %4373, %4397
  %4400 = fmul fast float %4381, %4306
  %4401 = fmul fast float %4387, %4306
  %4402 = fadd fast float %4376, %4400
  %4403 = fadd fast float %4377, %4401
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4406 = fsub fast float %3876, %4405
  %4407 = fsub fast float %4248, %3876
  %4408 = call float @dx.op.binary.f32(i32 35, float %4407, float %4406)  ; FMax(a,b)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4404, 1
  %4410 = fsub fast float %3877, %4409
  %4411 = fsub fast float %4249, %3877
  %4412 = call float @dx.op.binary.f32(i32 35, float %4411, float %4410)  ; FMax(a,b)
  %4413 = call float @dx.op.binary.f32(i32 35, float %4408, float %4412)  ; FMax(a,b)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4252, 3
  %4415 = fmul fast float %4414, %4413
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.CBufRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4421 = extractvalue %dx.types.CBufRet.f32 %4417, 3
  %4422 = fsub fast float %4418, %4392
  %4423 = fsub fast float %4419, %4393
  %4424 = fsub fast float %4420, %4394
  %4425 = fsub fast float %4421, %4395
  %4426 = fmul fast float %4422, %4416
  %4427 = fmul fast float %4423, %4416
  %4428 = fmul fast float %4424, %4416
  %4429 = fmul fast float %4425, %4416
  %4430 = fadd fast float %4426, %4392
  %4431 = fadd fast float %4427, %4393
  %4432 = fadd fast float %4428, %4394
  %4433 = fadd fast float %4429, %4395
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.CBufRet.f32 %4434, 1
  %4437 = fsub fast float %4435, %4398
  %4438 = fsub fast float %4436, %4399
  %4439 = fmul fast float %4437, %4416
  %4440 = fmul fast float %4438, %4416
  %4441 = fadd fast float %4439, %4398
  %4442 = fadd fast float %4440, %4399
  %4443 = extractvalue %dx.types.CBufRet.f32 %4434, 2
  %4444 = extractvalue %dx.types.CBufRet.f32 %4434, 3
  %4445 = fsub fast float %4443, %4402
  %4446 = fsub fast float %4444, %4403
  %4447 = fmul fast float %4445, %4416
  %4448 = fmul fast float %4446, %4416
  %4449 = fadd fast float %4447, %4402
  %4450 = fadd fast float %4448, %4403
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 0
  %4453 = fmul fast float %4452, %4430
  %4454 = fmul fast float %4452, %4431
  %4455 = fmul fast float %4452, %4432
  %4456 = fmul fast float %4452, %4433
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = fmul fast float %4458, %4441
  %4460 = fmul fast float %4458, %4442
  %4461 = fadd fast float %4459, %4453
  %4462 = fadd fast float %4460, %4455
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4465 = fmul fast float %4464, %4449
  %4466 = fmul fast float %4464, %4450
  %4467 = fadd fast float %4461, %4465
  %4468 = fadd fast float %4462, %4466
  %4469 = extractvalue %dx.types.CBufRet.f32 %4451, 1
  %4470 = fmul fast float %4469, %4430
  %4471 = fmul fast float %4469, %4431
  %4472 = fmul fast float %4469, %4432
  %4473 = fmul fast float %4469, %4433
  %4474 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4475 = fmul fast float %4474, %4441
  %4476 = fmul fast float %4474, %4442
  %4477 = fadd fast float %4475, %4470
  %4478 = fadd fast float %4476, %4472
  %4479 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4480 = fmul fast float %4479, %4449
  %4481 = fmul fast float %4479, %4450
  %4482 = fadd fast float %4477, %4480
  %4483 = fadd fast float %4478, %4481
  %4484 = extractvalue %dx.types.CBufRet.f32 %4451, 2
  %4485 = fmul fast float %4484, %4430
  %4486 = fmul fast float %4484, %4431
  %4487 = fmul fast float %4484, %4432
  %4488 = fmul fast float %4484, %4433
  %4489 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4490 = fmul fast float %4489, %4441
  %4491 = fmul fast float %4489, %4442
  %4492 = fadd fast float %4490, %4485
  %4493 = fadd fast float %4491, %4487
  %4494 = extractvalue %dx.types.CBufRet.f32 %4463, 2
  %4495 = fmul fast float %4494, %4449
  %4496 = fmul fast float %4494, %4450
  %4497 = fadd fast float %4492, %4495
  %4498 = fadd fast float %4493, %4496
  %4499 = fmul fast float %4486, %4486
  %4500 = fmul fast float %4498, %4498
  %4501 = fmul fast float %4488, %4488
  %4502 = fadd fast float %4501, %4499
  %4503 = fadd fast float %4502, %4500
  %4504 = call float @dx.op.unary.f32(i32 24, float %4503)  ; Sqrt(value)
  %4505 = fcmp fast ugt float %4504, 0.000000e+00
  br i1 %4505, label %4506, label %4521

; <label>:4506                                    ; preds = %4240
  %4507 = fsub fast float -0.000000e+00, %4488
  %4508 = fdiv fast float %4507, %4504
  %4509 = fsub fast float -0.000000e+00, %4486
  %4510 = fdiv fast float %4509, %4504
  %4511 = fdiv fast float %4498, %4504
  %4512 = fmul fast float %4497, 0x3FE279A760000000
  %4513 = fmul fast float %4510, %4486
  %4514 = fmul fast float %4511, %4498
  %4515 = fmul fast float %4508, %4488
  %4516 = fadd fast float %4513, %4515
  %4517 = fsub fast float %4516, %4514
  %4518 = call float @dx.op.unary.f32(i32 6, float %4517)  ; FAbs(value)
  %4519 = fadd fast float %4518, 0x3DDB7CDFE0000000
  %4520 = fdiv fast float %4512, %4519
  br label %4521

; <label>:4521                                    ; preds = %4506, %4240
  %4522 = phi float [ %4520, %4506 ], [ 1.000000e+00, %4240 ]
  %4523 = fmul fast float %4471, %4471
  %4524 = fmul fast float %4483, %4483
  %4525 = fmul fast float %4473, %4473
  %4526 = fadd fast float %4525, %4523
  %4527 = fadd fast float %4526, %4524
  %4528 = call float @dx.op.unary.f32(i32 24, float %4527)  ; Sqrt(value)
  %4529 = fcmp fast ugt float %4528, 0.000000e+00
  br i1 %4529, label %4530, label %4545

; <label>:4530                                    ; preds = %4521
  %4531 = fsub fast float -0.000000e+00, %4473
  %4532 = fdiv fast float %4531, %4528
  %4533 = fsub fast float -0.000000e+00, %4471
  %4534 = fdiv fast float %4533, %4528
  %4535 = fdiv fast float %4483, %4528
  %4536 = fmul fast float %4482, 0x3FE279A760000000
  %4537 = fmul fast float %4534, %4471
  %4538 = fmul fast float %4535, %4483
  %4539 = fmul fast float %4532, %4473
  %4540 = fadd fast float %4537, %4539
  %4541 = fsub fast float %4540, %4538
  %4542 = call float @dx.op.unary.f32(i32 6, float %4541)  ; FAbs(value)
  %4543 = fadd fast float %4542, 0x3DDB7CDFE0000000
  %4544 = fdiv fast float %4536, %4543
  br label %4545

; <label>:4545                                    ; preds = %4530, %4521
  %4546 = phi float [ %4544, %4530 ], [ 1.000000e+00, %4521 ]
  %4547 = call float @dx.op.binary.f32(i32 36, float %4546, float %4522)  ; FMin(a,b)
  %4548 = fmul fast float %4454, %4454
  %4549 = fmul fast float %4468, %4468
  %4550 = fmul fast float %4456, %4456
  %4551 = fadd fast float %4550, %4548
  %4552 = fadd fast float %4551, %4549
  %4553 = call float @dx.op.unary.f32(i32 24, float %4552)  ; Sqrt(value)
  %4554 = fcmp fast ugt float %4553, 0.000000e+00
  br i1 %4554, label %4555, label %4570

; <label>:4555                                    ; preds = %4545
  %4556 = fsub fast float -0.000000e+00, %4456
  %4557 = fdiv fast float %4556, %4553
  %4558 = fsub fast float -0.000000e+00, %4454
  %4559 = fdiv fast float %4558, %4553
  %4560 = fdiv fast float %4468, %4553
  %4561 = fmul fast float %4467, 0x3FE279A760000000
  %4562 = fmul fast float %4559, %4454
  %4563 = fmul fast float %4560, %4468
  %4564 = fmul fast float %4557, %4456
  %4565 = fadd fast float %4562, %4564
  %4566 = fsub fast float %4565, %4563
  %4567 = call float @dx.op.unary.f32(i32 6, float %4566)  ; FAbs(value)
  %4568 = fadd fast float %4567, 0x3DDB7CDFE0000000
  %4569 = fdiv fast float %4561, %4568
  br label %4570

; <label>:4570                                    ; preds = %4555, %4545
  %4571 = phi float [ %4569, %4555 ], [ 1.000000e+00, %4545 ]
  %4572 = call float @dx.op.binary.f32(i32 36, float %4571, float %4547)  ; FMin(a,b)
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fcmp fast olt float %4573, 1.000000e+00
  br i1 %4574, label %4575, label %4585

; <label>:4575                                    ; preds = %4570
  %4576 = fmul fast float %4573, %4454
  %4577 = fmul fast float %4573, %4468
  %4578 = fmul fast float %4573, %4456
  %4579 = fmul fast float %4573, %4471
  %4580 = fmul fast float %4573, %4483
  %4581 = fmul fast float %4573, %4473
  %4582 = fmul fast float %4573, %4486
  %4583 = fmul fast float %4573, %4498
  %4584 = fmul fast float %4573, %4488
  br label %4585

; <label>:4585                                    ; preds = %4575, %4570
  %4586 = phi float [ %4582, %4575 ], [ %4486, %4570 ]
  %4587 = phi float [ %4583, %4575 ], [ %4498, %4570 ]
  %4588 = phi float [ %4584, %4575 ], [ %4488, %4570 ]
  %4589 = phi float [ %4579, %4575 ], [ %4471, %4570 ]
  %4590 = phi float [ %4580, %4575 ], [ %4483, %4570 ]
  %4591 = phi float [ %4581, %4575 ], [ %4473, %4570 ]
  %4592 = phi float [ %4576, %4575 ], [ %4454, %4570 ]
  %4593 = phi float [ %4577, %4575 ], [ %4468, %4570 ]
  %4594 = phi float [ %4578, %4575 ], [ %4456, %4570 ]
  %4595 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4467)  ; FMax(a,b)
  %4596 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4482)  ; FMax(a,b)
  %4597 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4497)  ; FMax(a,b)
  %4598 = fcmp fast oge float %4255, 0.000000e+00
  %4599 = and i1 %4598, %4026
  %4600 = fcmp fast ole float %4255, 1.000000e+00
  %4601 = and i1 %4600, %4599
  %4602 = fcmp fast oge float %4256, 0.000000e+00
  %4603 = and i1 %4602, %4601
  %4604 = fcmp fast ole float %4256, 1.000000e+00
  %4605 = and i1 %4604, %4603
  br i1 %4605, label %4606, label %4751, !dx.controlflow.hints !90

; <label>:4606                                    ; preds = %4585
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 2
  %4609 = extractvalue %dx.types.CBufRet.f32 %4607, 3
  %4610 = fmul fast float %4608, %4255
  %4611 = fmul fast float %4609, %4256
  %4612 = call float @dx.op.unary.f32(i32 27, float %4610)  ; Round_ni(value)
  %4613 = call float @dx.op.unary.f32(i32 27, float %4611)  ; Round_ni(value)
  %4614 = fptosi float %4612 to i32
  %4615 = fptosi float %4613 to i32
  %4616 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4614, i32 %4615, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4617 = extractvalue %dx.types.ResRet.i32 %4616, 0
  %4618 = and i32 %4617, 65535
  %4619 = lshr i32 %4617, 16
  %4620 = icmp eq i32 %4618, 65535
  br i1 %4620, label %4657, label %4621

; <label>:4621                                    ; preds = %4606
  %4622 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4607, 0
  %4624 = extractvalue %dx.types.CBufRet.f32 %4607, 1
  %4625 = fmul fast float %4623, %4255
  %4626 = fmul fast float %4624, %4256
  %4627 = fmul fast float %4625, 1.250000e-01
  %4628 = fmul fast float %4626, 1.250000e-01
  %4629 = call float @dx.op.unary.f32(i32 27, float %4627)  ; Round_ni(value)
  %4630 = call float @dx.op.unary.f32(i32 27, float %4628)  ; Round_ni(value)
  %4631 = fmul fast float %4629, 8.000000e+00
  %4632 = fmul fast float %4630, 8.000000e+00
  %4633 = and i32 %4617, 255
  %4634 = lshr i32 %4617, 8
  %4635 = and i32 %4634, 255
  %4636 = mul nuw nsw i32 %4633, 9
  %4637 = uitofp i32 %4636 to float
  %4638 = mul nuw nsw i32 %4635, 9
  %4639 = uitofp i32 %4638 to float
  %4640 = fadd fast float %4637, 5.000000e-01
  %4641 = fadd fast float %4640, %4625
  %4642 = fsub fast float %4641, %4631
  %4643 = fadd fast float %4639, 5.000000e-01
  %4644 = fadd fast float %4643, %4626
  %4645 = fsub fast float %4644, %4632
  %4646 = fdiv fast float %4642, %4025
  %4647 = fdiv fast float %4645, %4622
  %4648 = fmul fast float %4283, 4.375000e-01
  %4649 = fadd fast float %4648, 3.125000e-02
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4646, float %4647, float %4649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.ResRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.ResRet.f32 %4650, 2
  %4654 = fadd fast float %4651, %4595
  %4655 = fadd fast float %4652, %4596
  %4656 = fadd fast float %4653, %4597
  br label %4657

; <label>:4657                                    ; preds = %4621, %4606
  %4658 = phi float [ %4656, %4621 ], [ %4597, %4606 ]
  %4659 = phi float [ %4655, %4621 ], [ %4596, %4606 ]
  %4660 = phi float [ %4654, %4621 ], [ %4595, %4606 ]
  %4661 = icmp eq i32 %4619, 65535
  br i1 %4661, label %4751, label %4662

; <label>:4662                                    ; preds = %4657
  %4663 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4664 = extractvalue %dx.types.CBufRet.f32 %4607, 0
  %4665 = extractvalue %dx.types.CBufRet.f32 %4607, 1
  %4666 = fmul fast float %4664, %4255
  %4667 = fmul fast float %4665, %4256
  %4668 = fmul fast float %4666, 1.250000e-01
  %4669 = fmul fast float %4667, 1.250000e-01
  %4670 = call float @dx.op.unary.f32(i32 27, float %4668)  ; Round_ni(value)
  %4671 = call float @dx.op.unary.f32(i32 27, float %4669)  ; Round_ni(value)
  %4672 = fmul fast float %4670, 8.000000e+00
  %4673 = fmul fast float %4671, 8.000000e+00
  %4674 = fsub fast float %4666, %4672
  %4675 = fsub fast float %4667, %4673
  %4676 = fadd fast float %4674, 5.000000e-01
  %4677 = fadd fast float %4675, 5.000000e-01
  %4678 = and i32 %4619, 255
  %4679 = lshr i32 %4617, 24
  %4680 = mul nuw nsw i32 %4678, 9
  %4681 = uitofp i32 %4680 to float
  %4682 = mul nuw nsw i32 %4679, 9
  %4683 = uitofp i32 %4682 to float
  %4684 = fadd fast float %4676, %4681
  %4685 = fadd fast float %4677, %4683
  %4686 = fdiv fast float %4684, %4025
  %4687 = fdiv fast float %4685, %4663
  %4688 = fmul fast float %4283, 4.375000e-01
  %4689 = fadd fast float %4688, 3.125000e-02
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4686, float %4687, float %4689, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4694 = fadd fast float %4688, 5.312500e-01
  %4695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4686, float %4687, float %4694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.ResRet.f32 %4695, 1
  %4698 = extractvalue %dx.types.ResRet.f32 %4695, 2
  %4699 = fmul fast float %4696, 2.000000e+00
  %4700 = fmul fast float %4697, 2.000000e+00
  %4701 = fmul fast float %4698, 2.000000e+00
  %4702 = fadd fast float %4699, -1.000000e+00
  %4703 = fadd fast float %4700, -1.000000e+00
  %4704 = fadd fast float %4701, -1.000000e+00
  %4705 = fmul fast float %4702, %4702
  %4706 = fmul fast float %4703, %4703
  %4707 = fadd fast float %4705, %4706
  %4708 = fmul fast float %4704, %4704
  %4709 = fadd fast float %4707, %4708
  %4710 = call float @dx.op.unary.f32(i32 24, float %4709)  ; Sqrt(value)
  %4711 = fcmp fast ogt float %4710, 0.000000e+00
  br i1 %4711, label %4712, label %4716

; <label>:4712                                    ; preds = %4662
  %4713 = fdiv fast float %4702, %4710
  %4714 = fdiv fast float %4703, %4710
  %4715 = fdiv fast float %4704, %4710
  br label %4716

; <label>:4716                                    ; preds = %4712, %4662
  %4717 = phi float [ %4713, %4712 ], [ 0.000000e+00, %4662 ]
  %4718 = phi float [ %4714, %4712 ], [ 0.000000e+00, %4662 ]
  %4719 = phi float [ %4715, %4712 ], [ 0.000000e+00, %4662 ]
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4723 = fsub fast float %3876, %4721
  %4724 = fsub fast float %3877, %4722
  %4725 = fmul fast float %4723, %4723
  %4726 = fmul fast float %4724, %4724
  %4727 = fadd fast float %4725, %4726
  %4728 = call float @dx.op.unary.f32(i32 24, float %4727)  ; Sqrt(value)
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4731 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4732 = fsub fast float %4728, %4730
  %4733 = fdiv fast float %4732, %4731
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fmul fast float %4734, 2.000000e+00
  %4736 = fsub fast float 3.000000e+00, %4735
  %4737 = fmul fast float %4734, %4734
  %4738 = fmul fast float %4737, %4736
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4739)  ; FMax(a,b)
  %4741 = fmul fast float %4740, 0x400C5BF8A0000000
  %4742 = fmul fast float %4738, %4691
  %4743 = fmul fast float %4742, %4741
  %4744 = fadd fast float %4743, %4660
  %4745 = fmul fast float %4738, %4692
  %4746 = fmul fast float %4745, %4741
  %4747 = fadd fast float %4746, %4659
  %4748 = fmul fast float %4738, %4693
  %4749 = fmul fast float %4748, %4741
  %4750 = fadd fast float %4749, %4658
  br label %4751

; <label>:4751                                    ; preds = %4716, %4657, %4585
  %4752 = phi float [ %4750, %4716 ], [ %4658, %4657 ], [ %4597, %4585 ]
  %4753 = phi float [ %4747, %4716 ], [ %4659, %4657 ], [ %4596, %4585 ]
  %4754 = phi float [ %4744, %4716 ], [ %4660, %4657 ], [ %4595, %4585 ]
  %4755 = fcmp fast ogt float %4242, %4279
  %4756 = and i1 %4598, %4755
  %4757 = and i1 %4600, %4756
  %4758 = and i1 %4602, %4757
  %4759 = and i1 %4604, %4758
  br i1 %4759, label %4760, label %4817, !dx.controlflow.hints !91

; <label>:4760                                    ; preds = %4751
  %4761 = fmul fast float %4281, 0x3FC24924A0000000
  %4762 = fsub fast float %4242, %4279
  %4763 = fdiv fast float %4762, %4761
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.CBufRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4771 = fsub fast float %4766, %4754
  %4772 = fsub fast float %4768, %4592
  %4773 = fsub fast float %4769, %4593
  %4774 = fsub fast float %4770, %4594
  %4775 = fmul fast float %4771, %4764
  %4776 = fmul fast float %4772, %4764
  %4777 = fmul fast float %4773, %4764
  %4778 = fmul fast float %4774, %4764
  %4779 = fadd fast float %4775, %4754
  %4780 = fadd fast float %4776, %4592
  %4781 = fadd fast float %4777, %4593
  %4782 = fadd fast float %4778, %4594
  %4783 = extractvalue %dx.types.CBufRet.f32 %4765, 1
  %4784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.f32 %4784, 0
  %4786 = extractvalue %dx.types.CBufRet.f32 %4784, 1
  %4787 = extractvalue %dx.types.CBufRet.f32 %4784, 2
  %4788 = fsub fast float %4783, %4753
  %4789 = fsub fast float %4785, %4589
  %4790 = fsub fast float %4786, %4590
  %4791 = fsub fast float %4787, %4591
  %4792 = fmul fast float %4788, %4764
  %4793 = fmul fast float %4789, %4764
  %4794 = fmul fast float %4790, %4764
  %4795 = fmul fast float %4791, %4764
  %4796 = fadd fast float %4792, %4753
  %4797 = fadd fast float %4793, %4589
  %4798 = fadd fast float %4794, %4590
  %4799 = fadd fast float %4795, %4591
  %4800 = extractvalue %dx.types.CBufRet.f32 %4765, 2
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.CBufRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.CBufRet.f32 %4801, 2
  %4805 = fsub fast float %4800, %4752
  %4806 = fsub fast float %4802, %4586
  %4807 = fsub fast float %4803, %4587
  %4808 = fsub fast float %4804, %4588
  %4809 = fmul fast float %4805, %4764
  %4810 = fmul fast float %4806, %4764
  %4811 = fmul fast float %4807, %4764
  %4812 = fmul fast float %4808, %4764
  %4813 = fadd fast float %4809, %4752
  %4814 = fadd fast float %4810, %4586
  %4815 = fadd fast float %4811, %4587
  %4816 = fadd fast float %4812, %4588
  br label %4817

; <label>:4817                                    ; preds = %4760, %4751
  %4818 = phi float [ %4813, %4760 ], [ %4752, %4751 ]
  %4819 = phi float [ %4814, %4760 ], [ %4586, %4751 ]
  %4820 = phi float [ %4815, %4760 ], [ %4587, %4751 ]
  %4821 = phi float [ %4816, %4760 ], [ %4588, %4751 ]
  %4822 = phi float [ %4796, %4760 ], [ %4753, %4751 ]
  %4823 = phi float [ %4797, %4760 ], [ %4589, %4751 ]
  %4824 = phi float [ %4798, %4760 ], [ %4590, %4751 ]
  %4825 = phi float [ %4799, %4760 ], [ %4591, %4751 ]
  %4826 = phi float [ %4779, %4760 ], [ %4754, %4751 ]
  %4827 = phi float [ %4780, %4760 ], [ %4592, %4751 ]
  %4828 = phi float [ %4781, %4760 ], [ %4593, %4751 ]
  %4829 = phi float [ %4782, %4760 ], [ %4594, %4751 ]
  %4830 = extractvalue %dx.types.CBufRet.f32 %4404, 3
  %4831 = fmul fast float %4830, %4826
  %4832 = fmul fast float %4830, %4822
  %4833 = fmul fast float %4830, %4818
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 3
  %4836 = fmul fast float %4831, %4835
  %4837 = fmul fast float %4832, %4835
  %4838 = fmul fast float %4833, %4835
  %4839 = fmul fast float %4827, 1.500000e+00
  %4840 = fmul fast float %4839, %4830
  %4841 = fmul fast float %4840, %4835
  %4842 = fmul fast float %4828, 1.500000e+00
  %4843 = fmul fast float %4842, %4830
  %4844 = fmul fast float %4843, %4835
  %4845 = fmul fast float %4829, 1.500000e+00
  %4846 = fmul fast float %4845, %4830
  %4847 = fmul fast float %4846, %4835
  %4848 = fmul fast float %4823, 1.500000e+00
  %4849 = fmul fast float %4848, %4830
  %4850 = fmul fast float %4849, %4835
  %4851 = fmul fast float %4824, 1.500000e+00
  %4852 = fmul fast float %4851, %4830
  %4853 = fmul fast float %4852, %4835
  %4854 = fmul fast float %4825, 1.500000e+00
  %4855 = fmul fast float %4854, %4830
  %4856 = fmul fast float %4855, %4835
  %4857 = fmul fast float %4819, 1.500000e+00
  %4858 = fmul fast float %4857, %4830
  %4859 = fmul fast float %4858, %4835
  %4860 = fmul fast float %4820, 1.500000e+00
  %4861 = fmul fast float %4860, %4830
  %4862 = fmul fast float %4861, %4835
  %4863 = fmul fast float %4821, 1.500000e+00
  %4864 = fmul fast float %4863, %4830
  %4865 = fmul fast float %4864, %4835
  %4866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4836)  ; FMax(a,b)
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4844, float %4847, float %4841, float %4844, float %4847)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = fcmp fast oeq float %4867, 0.000000e+00
  %4869 = fcmp fast oeq float %4866, 0.000000e+00
  %4870 = or i1 %4869, %4868
  br i1 %4870, label %4900, label %4871

; <label>:4871                                    ; preds = %4817
  %4872 = fsub fast float -0.000000e+00, %4847
  %4873 = fsub fast float -0.000000e+00, %4841
  %4874 = call float @dx.op.unary.f32(i32 24, float %4867)  ; Sqrt(value)
  %4875 = fdiv fast float %4874, %4866
  %4876 = fcmp fast ogt float %4875, 0x3FFB6F8900000000
  %4877 = select i1 %4876, float 0x3FFB6F8900000000, float %4875
  %4878 = fmul fast float %4877, 0x3FE8A23460000000
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = call float @dx.op.binary.f32(i32 35, float %4877, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4881 = fmul fast float %4879, %4866
  %4882 = fmul fast float %4880, 0x3FF279A740000000
  %4883 = fadd fast float %4882, -1.000000e+00
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4844, float %4872, float %4873, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = call float @dx.op.unary.f32(i32 25, float %4884)  ; Rsqrt(value)
  %4886 = fmul fast float %4885, %4872
  %4887 = fmul fast float %4885, %4873
  %4888 = fmul fast float %4885, %4844
  %4889 = fmul fast float %4883, %4883
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = fmul fast float %4880, 0x40005F8BE0000000
  %4892 = fsub fast float 0x400C5BF8A0000000, %4891
  %4893 = fdiv fast float %4881, %4892
  %4894 = fmul fast float %4893, 0x3FEE31C3C0000000
  %4895 = fmul fast float %4894, %4890
  %4896 = fmul fast float %4880, 0x3FDACB7480000000
  %4897 = fadd fast float %4896, 0xBFD7347680000000
  %4898 = fmul fast float %4897, %4893
  %4899 = fmul fast float %4898, %4890
  br label %4900

; <label>:4900                                    ; preds = %4871, %4817
  %4901 = phi float [ %4886, %4871 ], [ 0.000000e+00, %4817 ]
  %4902 = phi float [ %4887, %4871 ], [ 0.000000e+00, %4817 ]
  %4903 = phi float [ %4888, %4871 ], [ 0.000000e+00, %4817 ]
  %4904 = phi float [ %4895, %4871 ], [ 0.000000e+00, %4817 ]
  %4905 = phi float [ %4899, %4871 ], [ 0.000000e+00, %4817 ]
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = fmul fast float %4906, %4906
  %4908 = fmul fast float %4907, 0x3FEE471020000000
  %4909 = fadd fast float %4908, 0xBFD42F6020000000
  %4910 = fmul fast float %4866, 0x3FD20DD760000000
  %4911 = fmul fast float %4909, %4905
  %4912 = fmul fast float %4904, 0x3FDF454380000000
  %4913 = fmul fast float %4912, %4906
  %4914 = fadd fast float %4913, %4910
  %4915 = fadd fast float %4914, %4911
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = fmul fast float %4916, 0x3FDF454380000000
  %4918 = fmul fast float %4916, %4916
  %4919 = fmul fast float %4918, 0x3FEE471020000000
  %4920 = fadd fast float %4919, 0xBFD42F6020000000
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4866, float %4904, float %4905, float 0x3FD20DD760000000, float %4917, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4837)  ; FMax(a,b)
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4850, float %4853, float %4856, float %4850, float %4853, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = fcmp fast oeq float %4923, 0.000000e+00
  %4925 = fcmp fast oeq float %4922, 0.000000e+00
  %4926 = or i1 %4925, %4924
  br i1 %4926, label %4956, label %4927

; <label>:4927                                    ; preds = %4900
  %4928 = fsub fast float -0.000000e+00, %4856
  %4929 = fsub fast float -0.000000e+00, %4850
  %4930 = call float @dx.op.unary.f32(i32 24, float %4923)  ; Sqrt(value)
  %4931 = fdiv fast float %4930, %4922
  %4932 = fcmp fast ogt float %4931, 0x3FFB6F8900000000
  %4933 = select i1 %4932, float 0x3FFB6F8900000000, float %4931
  %4934 = fmul fast float %4933, 0x3FE8A23460000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = call float @dx.op.binary.f32(i32 35, float %4933, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4937 = fmul fast float %4935, %4922
  %4938 = fmul fast float %4936, 0x3FF279A740000000
  %4939 = fadd fast float %4938, -1.000000e+00
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4929, float %4853, float %4928, float %4929, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 25, float %4940)  ; Rsqrt(value)
  %4942 = fmul fast float %4941, %4928
  %4943 = fmul fast float %4941, %4929
  %4944 = fmul fast float %4941, %4853
  %4945 = fmul fast float %4939, %4939
  %4946 = fsub fast float 1.000000e+00, %4945
  %4947 = fmul fast float %4936, 0x40005F8BE0000000
  %4948 = fsub fast float 0x400C5BF8A0000000, %4947
  %4949 = fdiv fast float %4937, %4948
  %4950 = fmul fast float %4949, 0x3FEE31C3C0000000
  %4951 = fmul fast float %4950, %4946
  %4952 = fmul fast float %4936, 0x3FDACB7480000000
  %4953 = fadd fast float %4952, 0xBFD7347680000000
  %4954 = fmul fast float %4953, %4949
  %4955 = fmul fast float %4954, %4946
  br label %4956

; <label>:4956                                    ; preds = %4927, %4900
  %4957 = phi float [ %4942, %4927 ], [ 0.000000e+00, %4900 ]
  %4958 = phi float [ %4943, %4927 ], [ 0.000000e+00, %4900 ]
  %4959 = phi float [ %4944, %4927 ], [ 0.000000e+00, %4900 ]
  %4960 = phi float [ %4951, %4927 ], [ 0.000000e+00, %4900 ]
  %4961 = phi float [ %4955, %4927 ], [ 0.000000e+00, %4900 ]
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = fmul fast float %4962, %4962
  %4964 = fmul fast float %4963, 0x3FEE471020000000
  %4965 = fadd fast float %4964, 0xBFD42F6020000000
  %4966 = fmul fast float %4922, 0x3FD20DD760000000
  %4967 = fmul fast float %4965, %4961
  %4968 = fmul fast float %4960, 0x3FDF454380000000
  %4969 = fmul fast float %4968, %4962
  %4970 = fadd fast float %4969, %4966
  %4971 = fadd fast float %4970, %4967
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = fmul fast float %4972, 0x3FDF454380000000
  %4974 = fmul fast float %4972, %4972
  %4975 = fmul fast float %4974, 0x3FEE471020000000
  %4976 = fadd fast float %4975, 0xBFD42F6020000000
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4960, float %4961, float 0x3FD20DD760000000, float %4973, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4838)  ; FMax(a,b)
  %4979 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4862, float %4865, float %4859, float %4862, float %4865)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = fcmp fast oeq float %4979, 0.000000e+00
  %4981 = fcmp fast oeq float %4978, 0.000000e+00
  %4982 = or i1 %4981, %4980
  br i1 %4982, label %5012, label %4983

; <label>:4983                                    ; preds = %4956
  %4984 = fsub fast float -0.000000e+00, %4865
  %4985 = fsub fast float -0.000000e+00, %4859
  %4986 = call float @dx.op.unary.f32(i32 24, float %4979)  ; Sqrt(value)
  %4987 = fdiv fast float %4986, %4978
  %4988 = fcmp fast ogt float %4987, 0x3FFB6F8900000000
  %4989 = select i1 %4988, float 0x3FFB6F8900000000, float %4987
  %4990 = fmul fast float %4989, 0x3FE8A23460000000
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4989, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4993 = fmul fast float %4991, %4978
  %4994 = fmul fast float %4992, 0x3FF279A740000000
  %4995 = fadd fast float %4994, -1.000000e+00
  %4996 = call float @dx.op.dot3.f32(i32 55, float %4984, float %4985, float %4862, float %4984, float %4985, float %4862)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = call float @dx.op.unary.f32(i32 25, float %4996)  ; Rsqrt(value)
  %4998 = fmul fast float %4997, %4984
  %4999 = fmul fast float %4997, %4985
  %5000 = fmul fast float %4997, %4862
  %5001 = fmul fast float %4995, %4995
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = fmul fast float %4992, 0x40005F8BE0000000
  %5004 = fsub fast float 0x400C5BF8A0000000, %5003
  %5005 = fdiv fast float %4993, %5004
  %5006 = fmul fast float %5005, 0x3FEE31C3C0000000
  %5007 = fmul fast float %5006, %5002
  %5008 = fmul fast float %4992, 0x3FDACB7480000000
  %5009 = fadd fast float %5008, 0xBFD7347680000000
  %5010 = fmul fast float %5009, %5005
  %5011 = fmul fast float %5010, %5002
  br label %5012

; <label>:5012                                    ; preds = %4983, %4956
  %5013 = phi float [ %4998, %4983 ], [ 0.000000e+00, %4956 ]
  %5014 = phi float [ %4999, %4983 ], [ 0.000000e+00, %4956 ]
  %5015 = phi float [ %5000, %4983 ], [ 0.000000e+00, %4956 ]
  %5016 = phi float [ %5007, %4983 ], [ 0.000000e+00, %4956 ]
  %5017 = phi float [ %5011, %4983 ], [ 0.000000e+00, %4956 ]
  %5018 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = fmul fast float %5018, %5018
  %5020 = fmul fast float %5019, 0x3FEE471020000000
  %5021 = fadd fast float %5020, 0xBFD42F6020000000
  %5022 = fmul fast float %4978, 0x3FD20DD760000000
  %5023 = fmul fast float %5021, %5017
  %5024 = fmul fast float %5016, 0x3FDF454380000000
  %5025 = fmul fast float %5024, %5018
  %5026 = fadd fast float %5025, %5022
  %5027 = fadd fast float %5026, %5023
  %5028 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = fmul fast float %5028, 0x3FDF454380000000
  %5030 = fmul fast float %5028, %5028
  %5031 = fmul fast float %5030, 0x3FEE471020000000
  %5032 = fadd fast float %5031, 0xBFD42F6020000000
  %5033 = call float @dx.op.dot3.f32(i32 55, float %4978, float %5016, float %5017, float 0x3FD20DD760000000, float %5029, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.binary.f32(i32 35, float %4915, float 0.000000e+00)  ; FMax(a,b)
  %5035 = call float @dx.op.binary.f32(i32 35, float %4971, float 0.000000e+00)  ; FMax(a,b)
  %5036 = call float @dx.op.binary.f32(i32 35, float %5027, float 0.000000e+00)  ; FMax(a,b)
  %5037 = call float @dx.op.binary.f32(i32 35, float %4921, float 0.000000e+00)  ; FMax(a,b)
  %5038 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %5039 = call float @dx.op.binary.f32(i32 35, float %5033, float 0.000000e+00)  ; FMax(a,b)
  %5040 = fsub fast float %4236, %5034
  %5041 = fsub fast float %4237, %5035
  %5042 = fsub fast float %4238, %5036
  %5043 = fmul fast float %5040, %3917
  %5044 = fmul fast float %5041, %3917
  %5045 = fmul fast float %5042, %3917
  %5046 = fadd fast float %5043, %5034
  %5047 = fadd fast float %5044, %5035
  %5048 = fadd fast float %5045, %5036
  %5049 = fsub fast float %4233, %5037
  %5050 = fsub fast float %4234, %5038
  %5051 = fsub fast float %4235, %5039
  %5052 = fmul fast float %5049, %3917
  %5053 = fmul fast float %5050, %3917
  %5054 = fmul fast float %5051, %3917
  %5055 = fadd fast float %5052, %5037
  %5056 = fadd fast float %5053, %5038
  %5057 = fadd fast float %5054, %5039
  br label %5058

; <label>:5058                                    ; preds = %5012, %4232
  %5059 = phi float [ %5055, %5012 ], [ %4233, %4232 ]
  %5060 = phi float [ %5056, %5012 ], [ %4234, %4232 ]
  %5061 = phi float [ %5057, %5012 ], [ %4235, %4232 ]
  %5062 = phi float [ %5046, %5012 ], [ %4236, %4232 ]
  %5063 = phi float [ %5047, %5012 ], [ %4237, %4232 ]
  %5064 = phi float [ %5048, %5012 ], [ %4238, %4232 ]
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 0
  %5067 = call float @dx.op.binary.f32(i32 36, float %3850, float %5066)  ; FMin(a,b)
  %5068 = fsub fast float 1.000000e+00, %3869
  %5069 = fmul fast float %5067, %5068
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = bitcast i32 %5072 to float
  %5074 = call float @dx.op.binary.f32(i32 36, float %3851, float %5066)  ; FMin(a,b)
  %5075 = fmul fast float %5074, %5068
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = bitcast float %5076 to i32
  %5078 = sub nsw i32 2129859010, %5077
  %5079 = bitcast i32 %5078 to float
  %5080 = call float @dx.op.binary.f32(i32 36, float %3852, float %5066)  ; FMin(a,b)
  %5081 = fmul fast float %5080, %5068
  %5082 = fsub fast float 1.000000e+00, %5081
  %5083 = bitcast float %5082 to i32
  %5084 = sub nsw i32 2129859010, %5083
  %5085 = bitcast i32 %5084 to float
  %5086 = fmul fast float %5062, %3869
  %5087 = fmul fast float %5086, %5073
  %5088 = fmul fast float %5063, %3869
  %5089 = fmul fast float %5088, %5079
  %5090 = fmul fast float %5064, %3869
  %5091 = fmul fast float %5090, %5085
  %5092 = call float @dx.op.binary.f32(i32 36, float %3847, float %5066)  ; FMin(a,b)
  %5093 = fmul fast float %5092, %5068
  %5094 = fsub fast float 1.000000e+00, %5093
  %5095 = bitcast float %5094 to i32
  %5096 = sub nsw i32 2129859010, %5095
  %5097 = bitcast i32 %5096 to float
  %5098 = call float @dx.op.binary.f32(i32 36, float %3848, float %5066)  ; FMin(a,b)
  %5099 = fmul fast float %5098, %5068
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = bitcast float %5100 to i32
  %5102 = sub nsw i32 2129859010, %5101
  %5103 = bitcast i32 %5102 to float
  %5104 = call float @dx.op.binary.f32(i32 36, float %3858, float %5066)  ; FMin(a,b)
  %5105 = fmul fast float %5104, %5068
  %5106 = fsub fast float 1.000000e+00, %5105
  %5107 = bitcast float %5106 to i32
  %5108 = sub nsw i32 2129859010, %5107
  %5109 = bitcast i32 %5108 to float
  %5110 = fmul fast float %5059, %3869
  %5111 = fmul fast float %5110, %5097
  %5112 = fmul fast float %5060, %3869
  %5113 = fmul fast float %5112, %5103
  %5114 = fmul fast float %5061, %3869
  %5115 = fmul fast float %5114, %5109
  %5116 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5089, float %5091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = select i1 %196, float 0.000000e+00, float %5087
  %5118 = select i1 %196, float %5116, float %5089
  %5119 = select i1 %196, float 0.000000e+00, float %5091
  %5120 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5113, float %5115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5121 = select i1 %196, float 0.000000e+00, float %5111
  %5122 = select i1 %196, float %5120, float %5113
  %5123 = select i1 %196, float 0.000000e+00, float %5115
  %5124 = fmul fast float %3860, 9.843750e-01
  %5125 = fmul fast float %3856, 9.843750e-01
  %5126 = fadd fast float %5124, 7.812500e-03
  %5127 = fadd fast float %5125, 7.812500e-03
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5126, float %5127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 2
  %5130 = extractvalue %dx.types.ResRet.f32 %5128, 3
  %5131 = fmul fast float %5129, %3847
  %5132 = fmul fast float %5129, %3848
  %5133 = fmul fast float %5129, %3858
  %5134 = fadd fast float %5131, %5130
  %5135 = fadd fast float %5132, %5130
  %5136 = fadd fast float %5133, %5130
  %5137 = fcmp fast ogt float %3224, 0.000000e+00
  br i1 %5137, label %5138, label %5164

; <label>:5138                                    ; preds = %5058
  %5139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3224, float %3860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5140 = extractvalue %dx.types.ResRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.ResRet.f32 %5139, 1
  %5142 = extractvalue %dx.types.ResRet.f32 %5139, 2
  %5143 = fadd fast float %5140, -5.000000e-01
  %5144 = fadd fast float %5141, -5.000000e-01
  %5145 = fadd fast float %5142, -5.000000e-01
  %5146 = fsub fast float 1.000000e+00, %3847
  %5147 = fsub fast float 1.000000e+00, %3848
  %5148 = fsub fast float 1.000000e+00, %3858
  %5149 = fmul fast float %3847, 4.000000e+00
  %5150 = fmul fast float %5149, %5146
  %5151 = fmul fast float %5150, %5143
  %5152 = fmul fast float %3848, 4.000000e+00
  %5153 = fmul fast float %5152, %5147
  %5154 = fmul fast float %5153, %5144
  %5155 = fmul fast float %3858, 4.000000e+00
  %5156 = fmul fast float %5155, %5148
  %5157 = fmul fast float %5156, %5145
  %5158 = fadd fast float %5151, %5134
  %5159 = fadd fast float %5154, %5135
  %5160 = fadd fast float %5157, %5136
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  br label %5164

; <label>:5164                                    ; preds = %5138, %5058
  %5165 = phi float [ %5161, %5138 ], [ %5134, %5058 ]
  %5166 = phi float [ %5162, %5138 ], [ %5135, %5058 ]
  %5167 = phi float [ %5163, %5138 ], [ %5136, %5058 ]
  %5168 = call float @dx.op.binary.f32(i32 35, float %5166, float %5167)  ; FMax(a,b)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5165, float %5168)  ; FMax(a,b)
  %5170 = fsub fast float 1.000000e+00, %5169
  %5171 = fmul fast float %5170, %5117
  %5172 = fmul fast float %5170, %5118
  %5173 = fmul fast float %5170, %5119
  %5174 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = fcmp fast ogt float %5174, 0x3E7FF19E20000000
  %5176 = fdiv fast float 1.000000e+00, %5174
  %5177 = select i1 %5175, float %5176, float 0.000000e+00
  %5178 = fmul fast float %5177, %3850
  %5179 = fmul fast float %5177, %3851
  %5180 = fmul fast float %5177, %3852
  %5181 = fadd fast float %5178, -1.000000e+00
  %5182 = fadd fast float %5179, -1.000000e+00
  %5183 = fadd fast float %5180, -1.000000e+00
  %5184 = fmul fast float %5181, 5.000000e-01
  %5185 = fmul fast float %5182, 5.000000e-01
  %5186 = fmul fast float %5183, 5.000000e-01
  %5187 = fadd fast float %5184, 1.000000e+00
  %5188 = fadd fast float %5185, 1.000000e+00
  %5189 = fadd fast float %5186, 1.000000e+00
  %5190 = fmul fast float %5165, %5121
  %5191 = fmul fast float %5166, %5122
  %5192 = fmul fast float %5167, %5123
  %5193 = fsub fast float 1.000000e+00, %3860
  %5194 = bitcast float %5193 to i32
  %5195 = sitofp i32 %5194 to float
  %5196 = fmul fast float %5195, 5.000000e+00
  %5197 = fadd fast float %5196, 0xC1EFBF8940000000
  %5198 = fptosi float %5197 to i32
  %5199 = bitcast i32 %5198 to float
  %5200 = fmul fast float %5199, %3223
  %5201 = fmul fast float %5117, %5200
  %5202 = fmul fast float %5201, %5170
  %5203 = fmul fast float %5202, %5187
  %5204 = fmul fast float %5118, %5200
  %5205 = fmul fast float %5204, %5170
  %5206 = fmul fast float %5205, %5188
  %5207 = fmul fast float %5119, %5200
  %5208 = fmul fast float %5207, %5170
  %5209 = fmul fast float %5208, %5189
  %5210 = fmul fast float %5171, %3244
  %5211 = fmul fast float %5172, %3244
  %5212 = fmul fast float %5173, %3244
  %5213 = fadd fast float %5190, %3225
  %5214 = fadd fast float %5213, %5203
  %5215 = fmul fast float %5214, %3244
  %5216 = fadd fast float %5191, %3226
  %5217 = fadd fast float %5216, %5206
  %5218 = fmul fast float %5217, %3244
  %5219 = fadd fast float %5192, %3227
  %5220 = fadd fast float %5219, %5209
  %5221 = fmul fast float %5220, %3244
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5224 = fcmp fast oeq float %5223, 0.000000e+00
  br i1 %5224, label %5453, label %5225

; <label>:5225                                    ; preds = %5164
  %5226 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5227 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5228 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5236 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5231, float %5232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = select i1 %196, float %5234, float %5230
  %5238 = select i1 %196, float %5236, float %5231
  %5239 = select i1 %196, float %5235, float %5232
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5242 = fcmp fast une float %5241, 0.000000e+00
  br i1 %5242, label %5243, label %5260

; <label>:5243                                    ; preds = %5225
  %5244 = fptoui float %78 to i32
  %5245 = fptoui float %79 to i32
  %5246 = lshr i32 %5244, 4
  %5247 = lshr i32 %5245, 4
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = fptoui float %5249 to i32
  %5251 = add i32 %5250, 15
  %5252 = lshr i32 %5251, 4
  %5253 = mul i32 %5252, %5247
  %5254 = add i32 %5253, %5246
  %5255 = shl i32 %5254, 3
  %5256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.i32 %5256, 0
  %5258 = and i32 %5257, -268435456
  %5259 = icmp eq i32 %5258, -1342177280
  br i1 %5259, label %5270, label %5260

; <label>:5260                                    ; preds = %5243, %5225
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5264 = fmul fast float %5262, %78
  %5265 = fmul fast float %5263, %79
  %5266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5264, float %5265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.ResRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.ResRet.f32 %5266, 2
  br label %5270

; <label>:5270                                    ; preds = %5260, %5243
  %5271 = phi float [ %5267, %5260 ], [ 0.000000e+00, %5243 ]
  %5272 = phi float [ %5268, %5260 ], [ 0.000000e+00, %5243 ]
  %5273 = phi float [ %5269, %5260 ], [ 0.000000e+00, %5243 ]
  %5274 = call float @dx.op.binary.f32(i32 36, float %5272, float %5273)  ; FMin(a,b)
  %5275 = call float @dx.op.binary.f32(i32 36, float %5271, float %5274)  ; FMin(a,b)
  %5276 = fcmp fast ogt float %5275, 0.000000e+00
  br i1 %5276, label %5277, label %5453, !dx.controlflow.hints !92

; <label>:5277                                    ; preds = %5270
  %5278 = fmul fast float %5271, %5237
  %5279 = fmul fast float %5272, %5238
  %5280 = fmul fast float %5273, %5239
  %5281 = fsub fast float %5226, %3846
  %5282 = fsub fast float %5227, %3845
  %5283 = fsub fast float %5228, %3844
  %5284 = call float @dx.op.dot3.f32(i32 55, float %5281, float %5282, float %5283, float %5281, float %5282, float %5283)  ; Dot3(ax,ay,az,bx,by,bz)
  %5285 = call float @dx.op.unary.f32(i32 25, float %5284)  ; Rsqrt(value)
  %5286 = fmul fast float %5285, %5281
  %5287 = fmul fast float %5285, %5282
  %5288 = fmul fast float %5285, %5283
  %5289 = call float @dx.op.dot3.f32(i32 55, float %5226, float %5227, float %5228, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5290 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3842, float %3841, float %5286, float %5287, float %5288)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5292 = bitcast i32 %3872 to float
  %5293 = fmul fast float %5291, %5291
  %5294 = fmul fast float %5293, %5292
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fmul fast float %5295, %5291
  %5297 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %5286, float %5287, float %5288)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = fmul fast float %5297, %5297
  %5299 = call float @dx.op.unary.f32(i32 6, float %5289)  ; FAbs(value)
  %5300 = fsub fast float 1.000000e+00, %3856
  %5301 = call float @dx.op.binary.f32(i32 35, float %5300, float 0x3F847AE140000000)  ; FMax(a,b)
  %5302 = fmul fast float %5301, %5301
  %5303 = fmul fast float %5302, %5302
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = fmul fast float %3860, %3860
  %5306 = fmul fast float %5305, %5304
  %5307 = fadd fast float %5306, %5303
  %5308 = bitcast float %5307 to i32
  %5309 = ashr i32 %5308, 1
  %5310 = add nsw i32 %5309, 532487669
  %5311 = bitcast i32 %5310 to float
  %5312 = fadd fast float %5311, %3860
  %5313 = fmul fast float %5303, %5298
  %5314 = fsub fast float 1.000000e+00, %5298
  %5315 = fadd fast float %5314, %5313
  %5316 = fmul fast float %5299, %5299
  %5317 = fmul fast float %5316, %5304
  %5318 = fadd fast float %5317, %5303
  %5319 = bitcast float %5318 to i32
  %5320 = ashr i32 %5319, 1
  %5321 = add nsw i32 %5320, 532487669
  %5322 = bitcast i32 %5321 to float
  %5323 = fadd fast float %5322, %5299
  %5324 = fmul fast float %5315, %5315
  %5325 = fmul fast float %5324, %5312
  %5326 = fmul fast float %5325, %5323
  %5327 = fdiv fast float 0x3FF0A00000000000, %5326
  %5328 = fmul fast float %5327, %5303
  %5329 = call float @dx.op.unary.f32(i32 6, float %5290)  ; FAbs(value)
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = bitcast float %5330 to i32
  %5332 = sitofp i32 %5331 to float
  %5333 = fmul fast float %5332, 5.000000e+00
  %5334 = fadd fast float %5333, 0xC1EFBF8940000000
  %5335 = fptosi float %5334 to i32
  %5336 = bitcast i32 %5335 to float
  %5337 = fsub fast float 1.000000e+00, %3847
  %5338 = fsub fast float 1.000000e+00, %3848
  %5339 = fsub fast float 1.000000e+00, %3858
  %5340 = fmul fast float %5336, %5337
  %5341 = fmul fast float %5336, %5338
  %5342 = fmul fast float %5336, %5339
  %5343 = fadd fast float %5340, %3847
  %5344 = fadd fast float %5341, %3848
  %5345 = fadd fast float %5342, %3858
  br i1 %5137, label %5346, label %5369

; <label>:5346                                    ; preds = %5277
  %5347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3224, float %5329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.ResRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.ResRet.f32 %5347, 2
  %5351 = fadd fast float %5348, -5.000000e-01
  %5352 = fadd fast float %5349, -5.000000e-01
  %5353 = fadd fast float %5350, -5.000000e-01
  %5354 = fmul fast float %3847, 4.000000e+00
  %5355 = fmul fast float %5354, %5337
  %5356 = fmul fast float %5355, %5351
  %5357 = fmul fast float %3848, 4.000000e+00
  %5358 = fmul fast float %5357, %5338
  %5359 = fmul fast float %5358, %5352
  %5360 = fmul fast float %3858, 4.000000e+00
  %5361 = fmul fast float %5360, %5339
  %5362 = fmul fast float %5361, %5353
  %5363 = fadd fast float %5356, %5343
  %5364 = fadd fast float %5359, %5344
  %5365 = fadd fast float %5362, %5345
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  br label %5369

; <label>:5369                                    ; preds = %5346, %5277
  %5370 = phi float [ %5366, %5346 ], [ %5343, %5277 ]
  %5371 = phi float [ %5367, %5346 ], [ %5344, %5277 ]
  %5372 = phi float [ %5368, %5346 ], [ %5345, %5277 ]
  %5373 = fmul fast float %5289, 9.843750e-01
  %5374 = fadd fast float %5373, 7.812500e-03
  %5375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5374, float %5127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 2
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 3
  %5378 = fmul fast float %5376, %3847
  %5379 = fmul fast float %5376, %3848
  %5380 = fmul fast float %5376, %3858
  %5381 = fadd fast float %5378, %5377
  %5382 = fadd fast float %5379, %5377
  %5383 = fadd fast float %5380, %5377
  br i1 %5137, label %5384, label %5407

; <label>:5384                                    ; preds = %5369
  %5385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3224, float %5289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = fadd fast float %5386, -5.000000e-01
  %5390 = fadd fast float %5387, -5.000000e-01
  %5391 = fadd fast float %5388, -5.000000e-01
  %5392 = fmul fast float %3847, 4.000000e+00
  %5393 = fmul fast float %5392, %5337
  %5394 = fmul fast float %5393, %5389
  %5395 = fmul fast float %3848, 4.000000e+00
  %5396 = fmul fast float %5395, %5338
  %5397 = fmul fast float %5396, %5390
  %5398 = fmul fast float %3858, 4.000000e+00
  %5399 = fmul fast float %5398, %5339
  %5400 = fmul fast float %5399, %5391
  %5401 = fadd fast float %5394, %5381
  %5402 = fadd fast float %5397, %5382
  %5403 = fadd fast float %5400, %5383
  %5404 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5405 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5406 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  br label %5407

; <label>:5407                                    ; preds = %5384, %5369
  %5408 = phi float [ %5404, %5384 ], [ %5381, %5369 ]
  %5409 = phi float [ %5405, %5384 ], [ %5382, %5369 ]
  %5410 = phi float [ %5406, %5384 ], [ %5383, %5369 ]
  %5411 = call float @dx.op.binary.f32(i32 35, float %5409, float %5410)  ; FMax(a,b)
  %5412 = call float @dx.op.binary.f32(i32 35, float %5408, float %5411)  ; FMax(a,b)
  %5413 = fsub fast float 1.000000e+00, %5412
  %5414 = fmul fast float %5370, %5328
  %5415 = fmul fast float %5371, %5328
  %5416 = fmul fast float %5372, %5328
  %5417 = fsub fast float 1.000000e+00, %5290
  %5418 = bitcast float %5417 to i32
  %5419 = sitofp i32 %5418 to float
  %5420 = fmul fast float %5419, 5.000000e+00
  %5421 = fadd fast float %5420, 0xC1EFBF8940000000
  %5422 = fptosi float %5421 to i32
  %5423 = bitcast i32 %5422 to float
  %5424 = fmul fast float %5423, %3223
  %5425 = fmul fast float %5413, %5424
  %5426 = fmul fast float %5425, %5187
  %5427 = fmul fast float %5425, %5188
  %5428 = fmul fast float %5425, %5189
  %5429 = fadd fast float %5426, %5414
  %5430 = fadd fast float %5427, %5415
  %5431 = fadd fast float %5428, %5416
  %5432 = fmul fast float %5296, %5278
  %5433 = fmul fast float %5432, %5413
  %5434 = fmul fast float %5296, %5279
  %5435 = fmul fast float %5434, %5413
  %5436 = fmul fast float %5296, %5280
  %5437 = fmul fast float %5436, %5413
  %5438 = fmul fast float %5432, %5429
  %5439 = fmul fast float %5434, %5430
  %5440 = fmul fast float %5436, %5431
  %5441 = fadd fast float %5433, %5171
  %5442 = fmul fast float %5441, %3244
  %5443 = fadd fast float %5435, %5172
  %5444 = fmul fast float %5443, %3244
  %5445 = fadd fast float %5437, %5173
  %5446 = fmul fast float %5445, %3244
  %5447 = fadd fast float %5438, %5214
  %5448 = fmul fast float %5447, %3244
  %5449 = fadd fast float %5439, %5217
  %5450 = fmul fast float %5449, %3244
  %5451 = fadd fast float %5440, %5220
  %5452 = fmul fast float %5451, %3244
  br label %5453

; <label>:5453                                    ; preds = %5407, %5270, %5164
  %5454 = phi float [ %5215, %5164 ], [ %5215, %5270 ], [ %5448, %5407 ]
  %5455 = phi float [ %5218, %5164 ], [ %5218, %5270 ], [ %5450, %5407 ]
  %5456 = phi float [ %5221, %5164 ], [ %5221, %5270 ], [ %5452, %5407 ]
  %5457 = phi float [ %5210, %5164 ], [ %5210, %5270 ], [ %5442, %5407 ]
  %5458 = phi float [ %5211, %5164 ], [ %5211, %5270 ], [ %5444, %5407 ]
  %5459 = phi float [ %5212, %5164 ], [ %5212, %5270 ], [ %5446, %5407 ]
  %5460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.i32 %5460, 0
  %5462 = icmp eq i32 %5461, 0
  br i1 %5462, label %5898, label %5463

; <label>:5463                                    ; preds = %5453
  %5464 = fptoui float %78 to i32
  %5465 = fptoui float %79 to i32
  %5466 = lshr i32 %5464, 4
  %5467 = lshr i32 %5465, 4
  %5468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.i32 %5468, 0
  %5470 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5467, i32 %5469, i32 %5466)  ; UMad(a,b,c)
  %5471 = add nsw i32 %5461, -1
  %5472 = call i32 @dx.op.binary.i32(i32 37, i32 %5471, i32 0)  ; IMax(a,b)
  %5473 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5474 = fptoui float %5473 to i32
  %5475 = lshr i32 %5474, 5
  %5476 = call i32 @dx.op.binary.i32(i32 40, i32 %5475, i32 8191)  ; UMin(a,b)
  %5477 = shl i32 %5476, 2
  %5478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5477, i32 undef)  ; BufferLoad(srv,index,wot)
  %5479 = extractvalue %dx.types.ResRet.i32 %5478, 0
  %5480 = lshr i32 %5479, 16
  %5481 = and i32 %5479, 65535
  %5482 = lshr i32 %5479, 21
  %5483 = lshr i32 %5481, 5
  %5484 = call i32 @dx.op.binary.i32(i32 40, i32 %5483, i32 %5472)  ; UMin(a,b)
  %5485 = icmp ugt i32 %5482, %5484
  br i1 %5485, label %5898, label %5486

; <label>:5486                                    ; preds = %5463
  br label %5487

; <label>:5487                                    ; preds = %5888, %5486
  %5488 = phi i32 [ %5895, %5888 ], [ %5482, %5486 ]
  %5489 = phi float [ %5889, %5888 ], [ %5454, %5486 ]
  %5490 = phi float [ %5890, %5888 ], [ %5455, %5486 ]
  %5491 = phi float [ %5891, %5888 ], [ %5456, %5486 ]
  %5492 = phi float [ %5892, %5888 ], [ %5457, %5486 ]
  %5493 = phi float [ %5893, %5888 ], [ %5458, %5486 ]
  %5494 = phi float [ %5894, %5888 ], [ %5459, %5486 ]
  %5495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.i32 %5495, 0
  %5497 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5470, i32 %5496, i32 %5488)  ; UMad(a,b,c)
  %5498 = shl i32 %5497, 2
  %5499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5498, i32 undef)  ; BufferLoad(srv,index,wot)
  %5500 = extractvalue %dx.types.ResRet.i32 %5499, 0
  %5501 = shl i32 %5488, 5
  %5502 = sub nsw i32 %5480, %5501
  %5503 = call i32 @dx.op.binary.i32(i32 37, i32 %5502, i32 0)  ; IMax(a,b)
  %5504 = call i32 @dx.op.binary.i32(i32 38, i32 %5503, i32 31)  ; IMin(a,b)
  %5505 = sub nsw i32 1, %5480
  %5506 = add nsw i32 %5505, %5481
  %5507 = call i32 @dx.op.binary.i32(i32 37, i32 %5506, i32 0)  ; IMax(a,b)
  %5508 = call i32 @dx.op.binary.i32(i32 38, i32 %5507, i32 32)  ; IMin(a,b)
  %5509 = and i32 %5508, 31
  %5510 = shl i32 -1, %5509
  %5511 = xor i32 %5510, -1
  %5512 = and i32 %5504, 31
  %5513 = shl i32 %5511, %5512
  %5514 = icmp eq i32 %5508, 32
  %5515 = select i1 %5514, i32 -1, i32 %5513
  %5516 = and i32 %5515, %5500
  %5517 = icmp eq i32 %5516, 0
  br i1 %5517, label %5888, label %5518

; <label>:5518                                    ; preds = %5487
  br label %5519

; <label>:5519                                    ; preds = %5599, %5518
  %5520 = phi i32 [ %5531, %5599 ], [ %5516, %5518 ]
  %5521 = phi float [ %5600, %5599 ], [ %5489, %5518 ]
  %5522 = phi float [ %5601, %5599 ], [ %5490, %5518 ]
  %5523 = phi float [ %5602, %5599 ], [ %5491, %5518 ]
  %5524 = phi float [ %5603, %5599 ], [ %5492, %5518 ]
  %5525 = phi float [ %5604, %5599 ], [ %5493, %5518 ]
  %5526 = phi float [ %5605, %5599 ], [ %5494, %5518 ]
  %5527 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5520)  ; FirstbitLo(value)
  %5528 = add i32 %5527, %5501
  %5529 = and i32 %5527, 31
  %5530 = shl i32 1, %5529
  %5531 = xor i32 %5530, %5520
  %5532 = mul i32 %5528, 112
  %5533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5532, i32 undef)  ; BufferLoad(srv,index,wot)
  %5534 = extractvalue %dx.types.ResRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.ResRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.ResRet.f32 %5533, 2
  %5537 = or i32 %5532, 12
  %5538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5537, i32 undef)  ; BufferLoad(srv,index,wot)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = add i32 %5532, 44
  %5541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5540, i32 undef)  ; BufferLoad(srv,index,wot)
  %5542 = extractvalue %dx.types.ResRet.f32 %5541, 0
  %5543 = add i32 %5532, 48
  %5544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5543, i32 undef)  ; BufferLoad(srv,index,wot)
  %5545 = extractvalue %dx.types.ResRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.ResRet.f32 %5544, 1
  %5547 = extractvalue %dx.types.ResRet.f32 %5544, 2
  %5548 = add i32 %5532, 80
  %5549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5548, i32 undef)  ; BufferLoad(srv,index,wot)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 1
  %5551 = extractvalue %dx.types.ResRet.f32 %5549, 2
  %5552 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = select i1 %196, float %5550, float %5534
  %5554 = select i1 %196, float %5552, float %5535
  %5555 = select i1 %196, float %5551, float %5536
  %5556 = fsub fast float %5545, %125
  %5557 = fsub fast float %5546, %126
  %5558 = fsub fast float %5547, %127
  %5559 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5556, float %5557, float %5558)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = call float @dx.op.unary.f32(i32 24, float %5559)  ; Sqrt(value)
  %5561 = fdiv fast float 1.000000e+00, %5560
  %5562 = fmul fast float %5561, %5556
  %5563 = fmul fast float %5561, %5557
  %5564 = fmul fast float %5561, %5558
  %5565 = fadd fast float %5560, %5539
  %5566 = fdiv fast float 1.000000e+00, %5565
  %5567 = fmul float %5542, %5566
  %5568 = fmul float %5567, %5567
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = and i32 %5530, %5516
  %5571 = icmp eq i32 %5570, 0
  br i1 %5571, label %5594, label %5572, !dx.controlflow.hints !93

; <label>:5572                                    ; preds = %5519
  %5573 = lshr i32 %5464, 5
  %5574 = lshr i32 %5465, 5
  %5575 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5573, i32 %5574, i32 %5528, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5576 = extractvalue %dx.types.ResRet.i32 %5575, 0
  %5577 = and i32 %5576, 3
  %5578 = icmp eq i32 %5577, 0
  %5579 = select i1 %5578, float 1.000000e+00, float 0.000000e+00
  %5580 = icmp eq i32 %5577, 3
  br i1 %5580, label %5581, label %5594

; <label>:5581                                    ; preds = %5572
  %5582 = lshr i32 %5576, 10
  %5583 = and i32 %5582, 8160
  %5584 = and i32 %5465, 31
  %5585 = or i32 %5583, %5584
  %5586 = lshr i32 %5576, 1
  %5587 = and i32 %5586, 16352
  %5588 = and i32 %5464, 31
  %5589 = or i32 %5587, %5588
  %5590 = lshr i32 %5576, 23
  %5591 = and i32 %5590, 255
  %5592 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5589, i32 %5585, i32 %5591, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5593 = extractvalue %dx.types.ResRet.f32 %5592, 0
  br label %5594

; <label>:5594                                    ; preds = %5581, %5572, %5519
  %5595 = phi float [ %5593, %5581 ], [ %5579, %5572 ], [ 0.000000e+00, %5519 ]
  %5596 = call float @dx.op.binary.f32(i32 36, float %5595, float %5595)  ; FMin(a,b)
  %5597 = call float @dx.op.binary.f32(i32 36, float %5595, float %5596)  ; FMin(a,b)
  %5598 = fcmp fast ogt float %5597, 0.000000e+00
  br i1 %5598, label %5607, label %5599, !dx.controlflow.hints !94

; <label>:5599                                    ; preds = %5844, %5594
  %5600 = phi float [ %5521, %5594 ], [ %5884, %5844 ]
  %5601 = phi float [ %5522, %5594 ], [ %5885, %5844 ]
  %5602 = phi float [ %5523, %5594 ], [ %5886, %5844 ]
  %5603 = phi float [ %5524, %5594 ], [ %5878, %5844 ]
  %5604 = phi float [ %5525, %5594 ], [ %5879, %5844 ]
  %5605 = phi float [ %5526, %5594 ], [ %5880, %5844 ]
  %5606 = icmp eq i32 %5520, %5530
  br i1 %5606, label %5887, label %5519

; <label>:5607                                    ; preds = %5594
  %5608 = fmul fast float %5595, %5553
  %5609 = fmul fast float %5595, %5554
  %5610 = fmul fast float %5595, %5555
  %5611 = fsub fast float %5547, %3646
  %5612 = fcmp fast ogt float %5611, 0.000000e+00
  %5613 = fsub fast float %127, %3646
  %5614 = fcmp fast ogt float %5613, 0.000000e+00
  %5615 = xor i1 %5614, %5612
  %5616 = fsub fast float %3646, %5547
  %5617 = fmul fast float %5616, 2.000000e+00
  %5618 = fadd fast float %5617, %5547
  %5619 = select i1 %5615, float %5547, float %5618
  %5620 = fsub fast float %5619, %127
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5620, float %5556, float %5557, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = call float @dx.op.unary.f32(i32 25, float %5621)  ; Rsqrt(value)
  %5623 = fmul fast float %5622, %5556
  %5624 = fmul fast float %5622, %5557
  %5625 = fmul fast float %5622, %5620
  %5626 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5623, float %5624, float %5625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = fdiv fast float 1.000000e+00, %5627
  %5629 = fmul fast float %5628, %5626
  %5630 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5613, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = fcmp fast ogt float %5630, 0.000000e+00
  %5632 = fcmp fast olt float %5630, 0.000000e+00
  %5633 = zext i1 %5631 to i32
  %5634 = zext i1 %5632 to i32
  %5635 = sub nsw i32 %5633, %5634
  %5636 = sitofp i32 %5635 to float
  %5637 = fsub fast float %5619, %3646
  %5638 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5637, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5639 = fcmp fast ogt float %5638, 0.000000e+00
  %5640 = fcmp fast olt float %5638, 0.000000e+00
  %5641 = zext i1 %5639 to i32
  %5642 = zext i1 %5640 to i32
  %5643 = sub nsw i32 %5641, %5642
  %5644 = sitofp i32 %5643 to float
  %5645 = fcmp fast une float %5636, %5644
  br i1 %5645, label %5646, label %5656

; <label>:5646                                    ; preds = %5607
  %5647 = fmul fast float %5629, %5625
  %5648 = fmul fast float %5629, %5624
  %5649 = fmul fast float %5629, %5623
  %5650 = fmul fast float %5649, %5649
  %5651 = fmul fast float %5648, %5648
  %5652 = fadd fast float %5650, %5651
  %5653 = fmul fast float %5647, %5647
  %5654 = fadd fast float %5652, %5653
  %5655 = call float @dx.op.unary.f32(i32 24, float %5654)  ; Sqrt(value)
  br label %5668

; <label>:5656                                    ; preds = %5607
  %5657 = icmp slt i32 %5635, 0
  br i1 %5657, label %5658, label %5668

; <label>:5658                                    ; preds = %5656
  %5659 = fsub fast float %125, %5545
  %5660 = fsub fast float %126, %5546
  %5661 = fsub fast float %127, %5619
  %5662 = fmul fast float %5659, %5659
  %5663 = fmul fast float %5660, %5660
  %5664 = fadd fast float %5662, %5663
  %5665 = fmul fast float %5661, %5661
  %5666 = fadd fast float %5664, %5665
  %5667 = call float @dx.op.unary.f32(i32 24, float %5666)  ; Sqrt(value)
  br label %5668

; <label>:5668                                    ; preds = %5658, %5656, %5646
  %5669 = phi float [ %5655, %5646 ], [ %5667, %5658 ], [ 0.000000e+00, %5656 ]
  %5670 = and i1 %5614, %5612
  %5671 = fsub fast float -0.000000e+00, %5669
  %5672 = select i1 %5670, float -0.000000e+00, float %5671
  %5673 = fmul fast float %3647, 0x3FF7154760000000
  %5674 = fmul fast float %5673, %5672
  %5675 = fmul fast float %3648, 0x3FF7154760000000
  %5676 = fmul fast float %5675, %5672
  %5677 = fmul fast float %3649, 0x3FF7154760000000
  %5678 = fmul fast float %5677, %5672
  %5679 = call float @dx.op.unary.f32(i32 21, float %5674)  ; Exp(value)
  %5680 = call float @dx.op.unary.f32(i32 21, float %5676)  ; Exp(value)
  %5681 = call float @dx.op.unary.f32(i32 21, float %5678)  ; Exp(value)
  %5682 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5683 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5684 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5685 = fmul fast float %5608, %5682
  %5686 = fmul fast float %5609, %5683
  %5687 = fmul fast float %5610, %5684
  %5688 = fsub fast float %5562, %3846
  %5689 = fsub fast float %5563, %3845
  %5690 = fsub fast float %5564, %3844
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5688, float %5689, float %5690, float %5688, float %5689, float %5690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = call float @dx.op.unary.f32(i32 25, float %5691)  ; Rsqrt(value)
  %5693 = fmul fast float %5692, %5688
  %5694 = fmul fast float %5692, %5689
  %5695 = fmul fast float %5692, %5690
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5563, float %5564, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3842, float %3841, float %5693, float %5694, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5699 = fmul fast float %5698, %5569
  %5700 = bitcast i32 %3872 to float
  %5701 = fmul fast float %5698, %5698
  %5702 = fmul fast float %5701, %5700
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = fmul fast float %5699, %5703
  %5705 = bitcast float %5559 to i32
  %5706 = ashr i32 %5705, 1
  %5707 = sub nsw i32 1597463007, %5706
  %5708 = bitcast i32 %5707 to float
  %5709 = fmul fast float %5708, %5556
  %5710 = fmul fast float %5708, %5557
  %5711 = fmul fast float %5708, %5558
  %5712 = fsub fast float %5709, %3846
  %5713 = fsub fast float %5710, %3845
  %5714 = fsub fast float %5711, %3844
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %5712, float %5713, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = call float @dx.op.unary.f32(i32 25, float %5715)  ; Rsqrt(value)
  %5717 = fmul fast float %5712, %5716
  %5718 = fmul fast float %5713, %5716
  %5719 = fmul fast float %5714, %5716
  %5720 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %5717, float %5718, float %5719)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = fmul fast float %5720, %5720
  %5722 = call float @dx.op.unary.f32(i32 6, float %5696)  ; FAbs(value)
  %5723 = fsub fast float 1.000000e+00, %3856
  %5724 = call float @dx.op.binary.f32(i32 35, float %5723, float 0x3F847AE140000000)  ; FMax(a,b)
  %5725 = fmul fast float %5724, %5724
  %5726 = fmul fast float %5725, %5725
  %5727 = fsub fast float 1.000000e+00, %5726
  %5728 = fmul fast float %3860, %3860
  %5729 = fmul fast float %5728, %5727
  %5730 = fadd fast float %5729, %5726
  %5731 = bitcast float %5730 to i32
  %5732 = ashr i32 %5731, 1
  %5733 = add nsw i32 %5732, 532487669
  %5734 = bitcast i32 %5733 to float
  %5735 = fadd fast float %5734, %3860
  %5736 = fmul fast float %5726, %5721
  %5737 = fsub fast float 1.000000e+00, %5721
  %5738 = fadd fast float %5737, %5736
  %5739 = fmul fast float %5722, %5722
  %5740 = fmul fast float %5739, %5727
  %5741 = fadd fast float %5740, %5726
  %5742 = bitcast float %5741 to i32
  %5743 = ashr i32 %5742, 1
  %5744 = add nsw i32 %5743, 532487669
  %5745 = bitcast i32 %5744 to float
  %5746 = fadd fast float %5745, %5722
  %5747 = fmul fast float %5738, %5738
  %5748 = fmul fast float %5747, %5735
  %5749 = fmul fast float %5748, %5746
  %5750 = fdiv fast float 1.000000e+00, %5749
  %5751 = bitcast float %5726 to i32
  %5752 = sitofp i32 %5751 to float
  %5753 = fmul fast float %5752, 0x3FE7F73180000000
  %5754 = fadd fast float %5753, 0x41AFE27C40000000
  %5755 = fptosi float %5754 to i32
  %5756 = bitcast i32 %5755 to float
  %5757 = fmul fast float %5542, 0x3FD80E9D60000000
  %5758 = fmul fast float %5757, %5708
  %5759 = fadd fast float %5756, %5758
  %5760 = bitcast float %5759 to i32
  %5761 = sub nsw i32 2129859010, %5760
  %5762 = bitcast i32 %5761 to float
  %5763 = fmul fast float %5726, %5750
  %5764 = fmul fast float %5763, %5756
  %5765 = fmul fast float %5764, %5762
  %5766 = call float @dx.op.unary.f32(i32 6, float %5697)  ; FAbs(value)
  %5767 = fsub fast float 1.000000e+00, %5766
  %5768 = bitcast float %5767 to i32
  %5769 = sitofp i32 %5768 to float
  %5770 = fmul fast float %5769, 5.000000e+00
  %5771 = fadd fast float %5770, 0xC1EFBF8940000000
  %5772 = fptosi float %5771 to i32
  %5773 = bitcast i32 %5772 to float
  %5774 = fsub fast float 1.000000e+00, %3847
  %5775 = fsub fast float 1.000000e+00, %3848
  %5776 = fsub fast float 1.000000e+00, %3858
  %5777 = fmul fast float %5773, %5774
  %5778 = fmul fast float %5773, %5775
  %5779 = fmul fast float %5773, %5776
  %5780 = fadd fast float %5777, %3847
  %5781 = fadd fast float %5778, %3848
  %5782 = fadd fast float %5779, %3858
  br i1 %5137, label %5783, label %5806

; <label>:5783                                    ; preds = %5668
  %5784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3224, float %5766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5785 = extractvalue %dx.types.ResRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.ResRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.ResRet.f32 %5784, 2
  %5788 = fadd fast float %5785, -5.000000e-01
  %5789 = fadd fast float %5786, -5.000000e-01
  %5790 = fadd fast float %5787, -5.000000e-01
  %5791 = fmul fast float %3847, 4.000000e+00
  %5792 = fmul fast float %5791, %5774
  %5793 = fmul fast float %5792, %5788
  %5794 = fmul fast float %3848, 4.000000e+00
  %5795 = fmul fast float %5794, %5775
  %5796 = fmul fast float %5795, %5789
  %5797 = fmul fast float %3858, 4.000000e+00
  %5798 = fmul fast float %5797, %5776
  %5799 = fmul fast float %5798, %5790
  %5800 = fadd fast float %5793, %5780
  %5801 = fadd fast float %5796, %5781
  %5802 = fadd fast float %5799, %5782
  %5803 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5804 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5805 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  br label %5806

; <label>:5806                                    ; preds = %5783, %5668
  %5807 = phi float [ %5803, %5783 ], [ %5780, %5668 ]
  %5808 = phi float [ %5804, %5783 ], [ %5781, %5668 ]
  %5809 = phi float [ %5805, %5783 ], [ %5782, %5668 ]
  %5810 = fmul fast float %5696, 9.843750e-01
  %5811 = fadd fast float %5810, 7.812500e-03
  %5812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5811, float %5127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 2
  %5814 = extractvalue %dx.types.ResRet.f32 %5812, 3
  %5815 = fmul fast float %5813, %3847
  %5816 = fmul fast float %5813, %3848
  %5817 = fmul fast float %5813, %3858
  %5818 = fadd fast float %5815, %5814
  %5819 = fadd fast float %5816, %5814
  %5820 = fadd fast float %5817, %5814
  br i1 %5137, label %5821, label %5844

; <label>:5821                                    ; preds = %5806
  %5822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3224, float %5696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5823 = extractvalue %dx.types.ResRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.ResRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.ResRet.f32 %5822, 2
  %5826 = fadd fast float %5823, -5.000000e-01
  %5827 = fadd fast float %5824, -5.000000e-01
  %5828 = fadd fast float %5825, -5.000000e-01
  %5829 = fmul fast float %3847, 4.000000e+00
  %5830 = fmul fast float %5829, %5774
  %5831 = fmul fast float %5830, %5826
  %5832 = fmul fast float %3848, 4.000000e+00
  %5833 = fmul fast float %5832, %5775
  %5834 = fmul fast float %5833, %5827
  %5835 = fmul fast float %3858, 4.000000e+00
  %5836 = fmul fast float %5835, %5776
  %5837 = fmul fast float %5836, %5828
  %5838 = fadd fast float %5831, %5818
  %5839 = fadd fast float %5834, %5819
  %5840 = fadd fast float %5837, %5820
  %5841 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5842 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5843 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  br label %5844

; <label>:5844                                    ; preds = %5821, %5806
  %5845 = phi float [ %5841, %5821 ], [ %5818, %5806 ]
  %5846 = phi float [ %5842, %5821 ], [ %5819, %5806 ]
  %5847 = phi float [ %5843, %5821 ], [ %5820, %5806 ]
  %5848 = call float @dx.op.binary.f32(i32 35, float %5846, float %5847)  ; FMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 35, float %5845, float %5848)  ; FMax(a,b)
  %5850 = fsub fast float 1.000000e+00, %5849
  %5851 = fmul fast float %5807, %5765
  %5852 = fmul fast float %5808, %5765
  %5853 = fmul fast float %5809, %5765
  %5854 = fsub fast float 1.000000e+00, %5697
  %5855 = bitcast float %5854 to i32
  %5856 = sitofp i32 %5855 to float
  %5857 = fmul fast float %5856, 5.000000e+00
  %5858 = fadd fast float %5857, 0xC1EFBF8940000000
  %5859 = fptosi float %5858 to i32
  %5860 = bitcast i32 %5859 to float
  %5861 = fmul fast float %5860, %3223
  %5862 = fmul fast float %5850, %5861
  %5863 = fmul fast float %5862, %5187
  %5864 = fmul fast float %5862, %5188
  %5865 = fmul fast float %5862, %5189
  %5866 = fadd fast float %5863, %5851
  %5867 = fadd fast float %5864, %5852
  %5868 = fadd fast float %5865, %5853
  %5869 = fmul fast float %5685, %3244
  %5870 = fmul fast float %5869, %5704
  %5871 = fmul fast float %5870, %5850
  %5872 = fmul fast float %5686, %3244
  %5873 = fmul fast float %5872, %5704
  %5874 = fmul fast float %5873, %5850
  %5875 = fmul fast float %5687, %3244
  %5876 = fmul fast float %5875, %5704
  %5877 = fmul fast float %5876, %5850
  %5878 = fadd fast float %5871, %5524
  %5879 = fadd fast float %5874, %5525
  %5880 = fadd fast float %5877, %5526
  %5881 = fmul fast float %5870, %5866
  %5882 = fmul fast float %5873, %5867
  %5883 = fmul fast float %5876, %5868
  %5884 = fadd fast float %5881, %5521
  %5885 = fadd fast float %5882, %5522
  %5886 = fadd fast float %5883, %5523
  br label %5599

; <label>:5887                                    ; preds = %5599
  br label %5888

; <label>:5888                                    ; preds = %5887, %5487
  %5889 = phi float [ %5489, %5487 ], [ %5600, %5887 ]
  %5890 = phi float [ %5490, %5487 ], [ %5601, %5887 ]
  %5891 = phi float [ %5491, %5487 ], [ %5602, %5887 ]
  %5892 = phi float [ %5492, %5487 ], [ %5603, %5887 ]
  %5893 = phi float [ %5493, %5487 ], [ %5604, %5887 ]
  %5894 = phi float [ %5494, %5487 ], [ %5605, %5887 ]
  %5895 = add i32 %5488, 1
  %5896 = icmp ugt i32 %5895, %5484
  br i1 %5896, label %5897, label %5487

; <label>:5897                                    ; preds = %5888
  br label %5898

; <label>:5898                                    ; preds = %5897, %5463, %5453
  %5899 = phi float [ %5454, %5453 ], [ %5454, %5463 ], [ %5889, %5897 ]
  %5900 = phi float [ %5455, %5453 ], [ %5455, %5463 ], [ %5890, %5897 ]
  %5901 = phi float [ %5456, %5453 ], [ %5456, %5463 ], [ %5891, %5897 ]
  %5902 = phi float [ %5457, %5453 ], [ %5457, %5463 ], [ %5892, %5897 ]
  %5903 = phi float [ %5458, %5453 ], [ %5458, %5463 ], [ %5893, %5897 ]
  %5904 = phi float [ %5459, %5453 ], [ %5459, %5463 ], [ %5894, %5897 ]
  %5905 = call float @dx.op.unary.f32(i32 24, float %3850)  ; Sqrt(value)
  %5906 = call float @dx.op.unary.f32(i32 24, float %3851)  ; Sqrt(value)
  %5907 = call float @dx.op.unary.f32(i32 24, float %3852)  ; Sqrt(value)
  %5908 = fmul fast float %5905, %5902
  %5909 = fmul fast float %5906, %5903
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  br i1 %196, label %5912, label %5932

; <label>:5912                                    ; preds = %5898
  %5913 = fadd fast float %5904, %3221
  %5914 = fmul fast float %5913, %3222
  %5915 = fsub fast float 1.000000e+00, %3222
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 3
  %5919 = fmul fast float %5918, %5916
  %5920 = fadd fast float %5919, %5914
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = fmul fast float %5922, %5193
  %5924 = fsub fast float %5920, %5923
  %5925 = fadd fast float %5909, %5908
  %5926 = fmul fast float %5911, %5925
  %5927 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5928 = fsub fast float %5924, %5927
  %5929 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5930 = fmul fast float %5928, %5929
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  br label %5948

; <label>:5932                                    ; preds = %5898
  %5933 = fmul fast float %5907, %5904
  %5934 = fmul fast float %5911, %5908
  %5935 = fmul fast float %5911, %5909
  %5936 = fmul fast float %5933, %5911
  %5937 = add i32 %44, 276
  %5938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5937, i32 undef)  ; BufferLoad(srv,index,wot)
  %5939 = extractvalue %dx.types.ResRet.i32 %5938, 0
  %5940 = and i32 %5939, 32
  %5941 = icmp eq i32 %5940, 0
  br i1 %5941, label %5948, label %5942

; <label>:5942                                    ; preds = %5932
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = fmul fast float %5944, 0x3FE99999A0000000
  %5946 = fadd fast float %5944, %5934
  %5947 = fadd fast float %5945, %5936
  br label %5948

; <label>:5948                                    ; preds = %5942, %5932, %5912
  %5949 = phi float [ %5926, %5912 ], [ %5946, %5942 ], [ %5934, %5932 ]
  %5950 = phi float [ %5931, %5912 ], [ %5935, %5942 ], [ %5935, %5932 ]
  %5951 = phi float [ 1.000000e+00, %5912 ], [ %5947, %5942 ], [ %5936, %5932 ]
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %5954 = fmul fast float %5953, %5900
  %5955 = fmul fast float %5953, %5901
  %5956 = fadd fast float %5900, %5899
  %5957 = select i1 %196, float %5956, float %5899
  %5958 = fmul float %5957, %5953
  %5959 = select i1 %196, float 0.000000e+00, float %5954
  %5960 = select i1 %196, float 0.000000e+00, float %5955
  %5961 = fmul fast float %5949, %5905
  %5962 = fmul fast float %5950, %5906
  %5963 = fmul fast float %5951, %5907
  %5964 = fadd fast float %5958, %5961
  %5965 = fadd fast float %5959, %5962
  %5966 = fadd fast float %5960, %5963
  %5967 = select i1 %196, float %5950, float %5965
  %5968 = select i1 %196, float %5951, float %5966
  %5969 = call float @dx.op.binary.f32(i32 36, float %5964, float 3.225500e+04)  ; FMin(a,b)
  %5970 = call float @dx.op.binary.f32(i32 36, float %5967, float 3.225500e+04)  ; FMin(a,b)
  %5971 = call float @dx.op.binary.f32(i32 36, float %5968, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5969)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

