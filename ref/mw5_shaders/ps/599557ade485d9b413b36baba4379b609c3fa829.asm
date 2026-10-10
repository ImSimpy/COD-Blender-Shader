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
; shader hash: b1b68d503f032bd49e599d98eb7cfd0c
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
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %264 = add i32 %44, 188
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
  %407 = add i32 %44, 260
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
  %588 = add i32 %44, 196
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
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1073 = add i32 %44, 264
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
  %1254 = add i32 %44, 196
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
  %1597 = add i32 %44, 200
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = extractvalue %dx.types.ResRet.i32 %1598, 1
  %1601 = bitcast i32 %1599 to float
  %1602 = bitcast i32 %1600 to float
  %1603 = fcmp fast oge float %1601, 0.000000e+00
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = select i1 %1603, float %1601, float %1605
  %1607 = add i32 %44, 256
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = add i32 %1609, 0
  %1611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1611, %dx.types.Handle %68, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = fmul fast float %1613, %1602
  %1615 = fadd fast float %1614, %1606
  %1616 = call float @dx.op.dot2.f32(i32 54, float %1585, float %1586, float %1585, float %1586)  ; Dot2(ax,ay,bx,by)
  %1617 = fmul fast float %1616, 0x3FE3333340000000
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1586, float %1618, float %1585, float %1586, float %1618)  ; Dot3(ax,ay,az,bx,by,bz)
  %1620 = call float @dx.op.unary.f32(i32 25, float %1619)  ; Rsqrt(value)
  %1621 = fmul fast float %1620, %1585
  %1622 = fmul fast float %1620, %1586
  %1623 = fmul fast float %1618, %1620
  %1624 = fmul fast float %1623, %53
  %1625 = fmul fast float %1623, %54
  %1626 = fmul fast float %1623, %55
  %1627 = fmul fast float %1621, %49
  %1628 = fmul fast float %1621, %50
  %1629 = fmul fast float %1621, %51
  %1630 = fadd fast float %1624, %1627
  %1631 = fadd fast float %1625, %1628
  %1632 = fadd fast float %1626, %1629
  %1633 = fmul fast float %1622, %82
  %1634 = fmul fast float %1622, %83
  %1635 = fmul fast float %1622, %84
  %1636 = fadd fast float %1630, %1633
  %1637 = fadd fast float %1631, %1634
  %1638 = fadd fast float %1632, %1635
  %1639 = call float @dx.op.dot3.f32(i32 55, float %1636, float %1637, float %1638, float %1636, float %1637, float %1638)  ; Dot3(ax,ay,az,bx,by,bz)
  %1640 = call float @dx.op.unary.f32(i32 25, float %1639)  ; Rsqrt(value)
  %1641 = fmul fast float %1636, %1640
  %1642 = fmul fast float %1637, %1640
  %1643 = fmul fast float %1638, %1640
  %1644 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1645 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1646 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %1647 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1648 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1649 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %1650 = fadd fast float %1644, %118
  %1651 = fadd fast float %1645, %119
  %1652 = fadd fast float %1646, %120
  %1653 = fadd fast float %1647, %118
  %1654 = fadd fast float %1648, %119
  %1655 = fadd fast float %1649, %120
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.CBufRet.f32 %1656, 2
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1662 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1663 = fmul fast float %1657, %71
  %1664 = fmul fast float %1663, %1661
  %1665 = fmul fast float %1658, %72
  %1666 = fmul fast float %1665, %1662
  %1667 = fptoui float %1664 to i32
  %1668 = fptoui float %1666 to i32
  %1669 = fadd fast float %1657, -1.000000e+00
  %1670 = fadd fast float %1658, -1.000000e+00
  %1671 = fptoui float %1669 to i32
  %1672 = fptoui float %1670 to i32
  %1673 = call i32 @dx.op.binary.i32(i32 40, i32 %1667, i32 %1671)  ; UMin(a,b)
  %1674 = call i32 @dx.op.binary.i32(i32 40, i32 %1668, i32 %1672)  ; UMin(a,b)
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 2
  %1677 = extractvalue %dx.types.CBufRet.f32 %1675, 3
  %1678 = fmul fast float %1676, %66
  %1679 = fsub fast float %1678, %1677
  %1680 = fadd fast float %1659, -1.000000e+00
  %1681 = call float @dx.op.binary.f32(i32 36, float %1679, float %1680)  ; FMin(a,b)
  %1682 = fptoui float %1681 to i32
  %1683 = fptoui float %1657 to i32
  %1684 = fptoui float %1658 to i32
  %1685 = mul i32 %1682, %1684
  %1686 = add i32 %1685, %1674
  %1687 = mul i32 %1686, %1683
  %1688 = add i32 %1687, %1673
  %1689 = shl i32 %1688, 2
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = and i32 %1691, 1023
  %1693 = lshr i32 %1691, 10
  %1694 = icmp eq i32 %1692, 0
  br i1 %1694, label %2120, label %1695

; <label>:1695                                    ; preds = %1584
  %1696 = and i32 %1691, 1023
  br label %1697

; <label>:1697                                    ; preds = %1823, %1695
  %1698 = phi float [ %1824, %1823 ], [ 0.000000e+00, %1695 ]
  %1699 = phi float [ %1825, %1823 ], [ %1615, %1695 ]
  %1700 = phi float [ %1826, %1823 ], [ %1596, %1695 ]
  %1701 = phi float [ %1827, %1823 ], [ 0.000000e+00, %1695 ]
  %1702 = phi float [ %1828, %1823 ], [ 0.000000e+00, %1695 ]
  %1703 = phi float [ %1829, %1823 ], [ %1590, %1695 ]
  %1704 = phi float [ %1830, %1823 ], [ %1591, %1695 ]
  %1705 = phi float [ %1831, %1823 ], [ %1592, %1695 ]
  %1706 = phi float [ %1832, %1823 ], [ %1641, %1695 ]
  %1707 = phi float [ %1833, %1823 ], [ %1642, %1695 ]
  %1708 = phi float [ %1834, %1823 ], [ %1643, %1695 ]
  %1709 = phi float [ %1835, %1823 ], [ %1595, %1695 ]
  %1710 = phi float [ %1836, %1823 ], [ %1594, %1695 ]
  %1711 = phi float [ %1837, %1823 ], [ 0.000000e+00, %1695 ]
  %1712 = phi float [ %1838, %1823 ], [ %1593, %1695 ]
  %1713 = phi float [ %1839, %1823 ], [ %1587, %1695 ]
  %1714 = phi float [ %1840, %1823 ], [ %1588, %1695 ]
  %1715 = phi float [ %1841, %1823 ], [ %1589, %1695 ]
  %1716 = phi i32 [ %1773, %1823 ], [ 0, %1695 ]
  %1717 = add nuw nsw i32 %1716, %1693
  %1718 = shl i32 %1717, 2
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = shl i32 %1720, 8
  %1722 = or i32 %1721, 48
  %1723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = extractvalue %dx.types.ResRet.f32 %1723, 3
  %1728 = or i32 %1721, 64
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.i32 %1729, 1
  %1732 = or i32 %1721, 80
  %1733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 2
  %1735 = extractvalue %dx.types.ResRet.f32 %1733, 3
  %1736 = or i32 %1721, 96
  %1737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.ResRet.f32 %1737, 1
  %1740 = extractvalue %dx.types.ResRet.f32 %1737, 2
  %1741 = extractvalue %dx.types.ResRet.f32 %1737, 3
  %1742 = or i32 %1721, 112
  %1743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 2
  %1745 = or i32 %1721, 128
  %1746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = extractvalue %dx.types.ResRet.f32 %1746, 3
  %1751 = or i32 %1721, 144
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.ResRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.ResRet.f32 %1752, 2
  %1756 = extractvalue %dx.types.ResRet.f32 %1752, 3
  %1757 = or i32 %1721, 160
  %1758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.ResRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.ResRet.f32 %1758, 2
  %1762 = extractvalue %dx.types.ResRet.f32 %1758, 3
  %1763 = or i32 %1721, 192
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = or i32 %1721, 208
  %1767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = or i32 %1721, 248
  %1770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = add nuw nsw i32 %1716, 1
  %1774 = bitcast float %1727 to i32
  %1775 = and i32 %1774, 2560
  %1776 = icmp eq i32 %1775, 0
  %1777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.ResRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.ResRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.ResRet.f32 %1777, 3
  %1782 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1783 = or i32 %1721, 16
  %1784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.f32 %1784, 0
  %1786 = extractvalue %dx.types.ResRet.f32 %1784, 1
  %1787 = extractvalue %dx.types.ResRet.f32 %1784, 2
  %1788 = extractvalue %dx.types.ResRet.f32 %1784, 3
  %1789 = call float @dx.op.dot4.f32(i32 56, float %1785, float %1786, float %1787, float %1788, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1790 = or i32 %1721, 32
  %1791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.ResRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.ResRet.f32 %1791, 2
  %1795 = extractvalue %dx.types.ResRet.f32 %1791, 3
  %1796 = call float @dx.op.dot4.f32(i32 56, float %1792, float %1793, float %1794, float %1795, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1797 = call float @dx.op.unary.f32(i32 27, float %1782)  ; Round_ni(value)
  %1798 = call float @dx.op.unary.f32(i32 6, float %1797)  ; FAbs(value)
  %1799 = call float @dx.op.unary.f32(i32 27, float %1789)  ; Round_ni(value)
  %1800 = call float @dx.op.unary.f32(i32 6, float %1799)  ; FAbs(value)
  %1801 = call float @dx.op.unary.f32(i32 6, float %1796)  ; FAbs(value)
  %1802 = call float @dx.op.unary.f32(i32 27, float %1801)  ; Round_ni(value)
  %1803 = fadd fast float %1800, %1798
  %1804 = fadd fast float %1803, %1802
  %1805 = fcmp fast oeq float %1804, 0.000000e+00
  %1806 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %1650, float %1651, float %1652, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1807 = call float @dx.op.dot4.f32(i32 56, float %1785, float %1786, float %1787, float %1788, float %1650, float %1651, float %1652, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1808 = call float @dx.op.dot4.f32(i32 56, float %1778, float %1779, float %1780, float %1781, float %1653, float %1654, float %1655, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1809 = call float @dx.op.dot4.f32(i32 56, float %1785, float %1786, float %1787, float %1788, float %1653, float %1654, float %1655, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1810 = fsub fast float %1806, %1782
  %1811 = fsub fast float %1808, %1782
  %1812 = fsub fast float %1807, %1789
  %1813 = fsub fast float %1809, %1789
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1724, float %1725, float %1726, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1817 = fadd fast float %1816, %1814
  %1818 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1820 = fcmp fast ogt float %1818, %1819
  %1821 = and i1 %1805, %1820
  %1822 = and i1 %1776, %1821
  br i1 %1822, label %1843, label %1823

; <label>:1823                                    ; preds = %2106, %1924, %1843, %1697
  %1824 = phi float [ %1698, %1843 ], [ %1927, %1924 ], [ %1927, %2106 ], [ %1698, %1697 ]
  %1825 = phi float [ %1699, %1843 ], [ %1699, %1924 ], [ %2081, %2106 ], [ %1699, %1697 ]
  %1826 = phi float [ %1700, %1843 ], [ %1700, %1924 ], [ %2079, %2106 ], [ %1700, %1697 ]
  %1827 = phi float [ %1701, %1843 ], [ %1701, %1924 ], [ %2051, %2106 ], [ %1701, %1697 ]
  %1828 = phi float [ %1702, %1843 ], [ %1702, %1924 ], [ %2049, %2106 ], [ %1702, %1697 ]
  %1829 = phi float [ %1703, %1843 ], [ %1703, %1924 ], [ %2116, %2106 ], [ %1703, %1697 ]
  %1830 = phi float [ %1704, %1843 ], [ %1704, %1924 ], [ %2117, %2106 ], [ %1704, %1697 ]
  %1831 = phi float [ %1705, %1843 ], [ %1705, %1924 ], [ %2118, %2106 ], [ %1705, %1697 ]
  %1832 = phi float [ %1706, %1843 ], [ %1706, %1924 ], [ %2030, %2106 ], [ %1706, %1697 ]
  %1833 = phi float [ %1707, %1843 ], [ %1707, %1924 ], [ %2031, %2106 ], [ %1707, %1697 ]
  %1834 = phi float [ %1708, %1843 ], [ %1708, %1924 ], [ %2032, %2106 ], [ %1708, %1697 ]
  %1835 = phi float [ %1709, %1843 ], [ %1709, %1924 ], [ %2059, %2106 ], [ %1709, %1697 ]
  %1836 = phi float [ %1710, %1843 ], [ %1710, %1924 ], [ %2056, %2106 ], [ %1710, %1697 ]
  %1837 = phi float [ %1711, %1843 ], [ %1711, %1924 ], [ %2053, %2106 ], [ %1711, %1697 ]
  %1838 = phi float [ %1712, %1843 ], [ %1712, %1924 ], [ %2047, %2106 ], [ %1712, %1697 ]
  %1839 = phi float [ %1713, %1843 ], [ %1713, %1924 ], [ %2042, %2106 ], [ %1713, %1697 ]
  %1840 = phi float [ %1714, %1843 ], [ %1714, %1924 ], [ %2043, %2106 ], [ %1714, %1697 ]
  %1841 = phi float [ %1715, %1843 ], [ %1715, %1924 ], [ %2044, %2106 ], [ %1715, %1697 ]
  %1842 = icmp eq i32 %1773, %1696
  br i1 %1842, label %2119, label %1697

; <label>:1843                                    ; preds = %1697
  %1844 = extractvalue %dx.types.ResRet.f32 %1743, 3
  %1845 = extractvalue %dx.types.ResRet.f32 %1743, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1847 = extractvalue %dx.types.ResRet.f32 %1733, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1849 = extractvalue %dx.types.ResRet.i32 %1729, 3
  %1850 = extractvalue %dx.types.ResRet.i32 %1729, 2
  %1851 = add i32 %1849, 0
  %1852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1851, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1852, %dx.types.Handle %1853, float %1782, float %1789, float undef, float undef, i32 0, i32 0, i32 undef, float %1810, float %1812, float undef, float %1811, float %1813, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = fmul fast float %1855, %1848
  %1857 = fadd fast float %1856, %1847
  %1858 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1859 = fmul fast float %1782, %1738
  %1860 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1789, float %1859)  ; FMad(a,b,c)
  %1861 = fadd fast float %1860, %1846
  %1862 = fmul fast float %1782, %1740
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1741, float %1789, float %1862)  ; FMad(a,b,c)
  %1864 = fadd fast float %1863, %1845
  %1865 = fmul fast float %1810, %1738
  %1866 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1812, float %1865)  ; FMad(a,b,c)
  %1867 = fmul fast float %1810, %1740
  %1868 = call float @dx.op.tertiary.f32(i32 46, float %1741, float %1812, float %1867)  ; FMad(a,b,c)
  %1869 = fmul fast float %1811, %1738
  %1870 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1813, float %1869)  ; FMad(a,b,c)
  %1871 = fmul fast float %1811, %1740
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1741, float %1813, float %1871)  ; FMad(a,b,c)
  %1873 = add i32 %1850, 0
  %1874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1873, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1875 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1874, %dx.types.Handle %1853, float %1861, float %1864, float undef, float undef, i32 0, i32 0, i32 undef, float %1866, float %1868, float undef, float %1870, float %1872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = and i32 %1774, 1024
  %1878 = icmp ne i32 %1877, 0
  %1879 = fcmp fast ogt float %1876, 0x3FE0101020000000
  %1880 = uitofp i1 %1879 to float
  %1881 = select i1 %1878, float %1880, float %1876
  %1882 = and i32 %1774, 8192
  %1883 = icmp ne i32 %1882, 0
  %1884 = select i1 %1883, float %1844, float 1.000000e+00
  %1885 = fmul fast float %1782, 2.000000e+00
  %1886 = fadd fast float %1885, -1.000000e+00
  %1887 = call float @dx.op.unary.f32(i32 6, float %1886)  ; FAbs(value)
  %1888 = fmul fast float %1887, %1771
  %1889 = fsub fast float %1888, %1771
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = fmul fast float %1789, 2.000000e+00
  %1892 = fadd fast float %1891, -1.000000e+00
  %1893 = call float @dx.op.unary.f32(i32 6, float %1892)  ; FAbs(value)
  %1894 = fmul fast float %1893, %1772
  %1895 = fsub fast float %1894, %1772
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = fmul fast float %1801, %1734
  %1898 = fsub fast float %1897, %1734
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1900 = fmul fast float %1858, %1884
  %1901 = fmul fast float %1900, %1855
  %1902 = fmul fast float %1901, %1890
  %1903 = fmul fast float %1902, %1881
  %1904 = fmul fast float %1903, %1896
  %1905 = fmul fast float %1904, %1899
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1908 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1909 = fsub fast float %1818, %1908
  %1910 = fmul fast float %1909, %1907
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1912 = fmul fast float %1905, %1735
  %1913 = fadd fast float %1905, %1735
  %1914 = fmul fast float %1913, %1744
  %1915 = fsub fast float %1914, %1744
  %1916 = call float @dx.op.unary.f32(i32 7, float %1915)  ; Saturate(value)
  %1917 = and i32 %1774, 128
  %1918 = icmp ne i32 %1917, 0
  %1919 = select i1 %1918, float %1916, float %1912
  %1920 = fmul fast float %1919, %1911
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fcmp fast ugt float %1920, %1922
  br i1 %1923, label %1924, label %1823

; <label>:1924                                    ; preds = %1843
  %1925 = select i1 %1883, float %1920, float 0.000000e+00
  %1926 = fadd fast float %1925, %1698
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  br i1 %1883, label %1823, label %1928

; <label>:1928                                    ; preds = %1924
  %1929 = and i32 %1774, 4
  %1930 = and i32 %1774, 8
  %1931 = add i32 %1730, 0
  %1932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1932, %dx.types.Handle %1933, float %1861, float %1864, float undef, float undef, i32 0, i32 0, i32 undef, float %1866, float %1868, float undef, float %1870, float %1872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = extractvalue %dx.types.ResRet.f32 %1934, 3
  %1939 = bitcast float %1756 to i32
  %1940 = and i32 %1939, 255
  %1941 = uitofp i32 %1940 to float
  %1942 = lshr i32 %1939, 8
  %1943 = and i32 %1942, 255
  %1944 = uitofp i32 %1943 to float
  %1945 = fmul fast float %1938, %1941
  %1946 = fadd fast float %1945, %1944
  %1947 = fmul fast float %1946, 0x3F70101000000000
  %1948 = add i32 %1731, 0
  %1949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1948, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1949, %dx.types.Handle %1933, float %1861, float %1864, float undef, float undef, i32 0, i32 0, i32 undef, float %1866, float %1868, float undef, float %1870, float %1872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  %1952 = extractvalue %dx.types.ResRet.f32 %1950, 1
  %1953 = extractvalue %dx.types.ResRet.f32 %1950, 2
  %1954 = extractvalue %dx.types.ResRet.f32 %1950, 3
  %1955 = bitcast float %1750 to i32
  %1956 = and i32 %1955, 255
  %1957 = uitofp i32 %1956 to float
  %1958 = lshr i32 %1955, 8
  %1959 = and i32 %1958, 255
  %1960 = uitofp i32 %1959 to float
  %1961 = lshr i32 %1955, 16
  %1962 = and i32 %1961, 255
  %1963 = uitofp i32 %1962 to float
  %1964 = fmul fast float %1963, 0x3F70101000000000
  %1965 = fmul fast float %1951, %1957
  %1966 = fadd fast float %1965, %1960
  %1967 = fmul fast float %1966, 0x3F70101000000000
  %1968 = fadd fast float %1952, -5.000000e-01
  %1969 = fadd fast float %1954, -5.000000e-01
  %1970 = fmul fast float %1968, %1964
  %1971 = fmul fast float %1969, %1964
  %1972 = fadd fast float %1970, 5.000000e-01
  %1973 = fadd fast float %1971, 5.000000e-01
  %1974 = fmul fast float %1935, %1759
  %1975 = fmul fast float %1936, %1760
  %1976 = fmul fast float %1937, %1761
  %1977 = fmul fast float %1972, 2.000000e+00
  %1978 = fadd fast float %1977, -1.000000e+00
  %1979 = fmul fast float %1973, 2.000000e+00
  %1980 = fadd fast float %1979, -1.000000e+00
  %1981 = fadd fast float %1978, %1980
  %1982 = fmul fast float %1981, 5.000000e-01
  %1983 = fsub fast float %1978, %1980
  %1984 = fmul fast float %1983, 5.000000e-01
  %1985 = call float @dx.op.unary.f32(i32 6, float %1982)  ; FAbs(value)
  %1986 = fsub fast float 1.000000e+00, %1985
  %1987 = call float @dx.op.unary.f32(i32 6, float %1984)  ; FAbs(value)
  %1988 = fsub fast float %1986, %1987
  %1989 = call float @dx.op.dot3.f32(i32 55, float %1982, float %1984, float %1988, float %1982, float %1984, float %1988)  ; Dot3(ax,ay,az,bx,by,bz)
  %1990 = call float @dx.op.unary.f32(i32 25, float %1989)  ; Rsqrt(value)
  %1991 = fmul fast float %1982, %1990
  %1992 = fmul fast float %1984, %1990
  %1993 = fmul fast float %1990, %1988
  %1994 = fmul fast float %1993, %1724
  %1995 = fmul fast float %1993, %1725
  %1996 = fmul fast float %1993, %1726
  %1997 = fmul fast float %1991, %1747
  %1998 = fmul fast float %1991, %1748
  %1999 = fmul fast float %1991, %1749
  %2000 = fadd fast float %1997, %1994
  %2001 = fadd fast float %1998, %1995
  %2002 = fadd fast float %1999, %1996
  %2003 = fmul fast float %1992, %1753
  %2004 = fmul fast float %1992, %1754
  %2005 = fmul fast float %1992, %1755
  %2006 = fadd fast float %2000, %2003
  %2007 = fadd fast float %2001, %2004
  %2008 = fadd fast float %2002, %2005
  %2009 = call float @dx.op.dot3.f32(i32 55, float %2006, float %2007, float %2008, float %2006, float %2007, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = call float @dx.op.unary.f32(i32 25, float %2009)  ; Rsqrt(value)
  %2011 = fmul fast float %2006, %2010
  %2012 = fmul fast float %2007, %2010
  %2013 = fmul fast float %2008, %2010
  %2014 = icmp ne i32 %1930, 0
  %2015 = select i1 %2014, float 1.000000e+00, float 0.000000e+00
  %2016 = fmul fast float %1920, %2015
  %2017 = and i32 %1774, 1
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2019, label %2023

; <label>:2019                                    ; preds = %1928
  %2020 = fsub fast float %2011, %1706
  %2021 = fsub fast float %2012, %1707
  %2022 = fsub fast float %2013, %1708
  br label %2023

; <label>:2023                                    ; preds = %2019, %1928
  %2024 = phi float [ %2020, %2019 ], [ %2011, %1928 ]
  %2025 = phi float [ %2021, %2019 ], [ %2012, %1928 ]
  %2026 = phi float [ %2022, %2019 ], [ %2013, %1928 ]
  %2027 = fmul float %2026, %2016
  %2028 = fmul float %2025, %2016
  %2029 = fmul float %2024, %2016
  %2030 = fadd fast float %2029, %1706
  %2031 = fadd fast float %2028, %1707
  %2032 = fadd fast float %2027, %1708
  %2033 = icmp ne i32 %1929, 0
  %2034 = select i1 %2033, float 1.000000e+00, float 0.000000e+00
  %2035 = fmul fast float %1920, %2034
  %2036 = fsub fast float %1974, %1713
  %2037 = fsub fast float %1975, %1714
  %2038 = fsub fast float %1976, %1715
  %2039 = fmul fast float %2036, %2035
  %2040 = fmul fast float %2037, %2035
  %2041 = fmul fast float %2038, %2035
  %2042 = fadd fast float %2039, %1713
  %2043 = fadd fast float %2040, %1714
  %2044 = fadd fast float %2041, %1715
  %2045 = fsub fast float %1947, %1712
  %2046 = fmul fast float %2045, %2035
  %2047 = fadd fast float %2046, %1712
  %2048 = fmul fast float %2035, %1702
  %2049 = fsub fast float %1702, %2048
  %2050 = fmul fast float %2035, %1701
  %2051 = fsub fast float %1701, %2050
  %2052 = fadd fast float %1920, %1711
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fsub fast float %1967, %1710
  %2055 = fmul fast float %2054, %2016
  %2056 = fadd fast float %2055, %1710
  %2057 = fsub fast float %1953, %1709
  %2058 = fmul fast float %2057, %2016
  %2059 = fadd fast float %2058, %1709
  %2060 = call float @dx.op.dot3.f32(i32 55, float %1974, float %1975, float %1976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.CBufRet.f32 %2061, 1
  %2064 = fmul fast float %2063, %2060
  %2065 = fadd fast float %2064, %2062
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2067 = bitcast float %1762 to i32
  %2068 = and i32 %2067, 65535
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = lshr i32 %2067, 16
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = fcmp fast oge float %2069, 0.000000e+00
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 0
  %2075 = select i1 %2072, float %2069, float %2074
  %2076 = fadd fast float %2075, %2071
  %2077 = fsub fast float %2066, %1700
  %2078 = fmul fast float %2077, %1920
  %2079 = fadd fast float %2078, %1700
  %2080 = fmul fast float %2076, %1920
  %2081 = call float @dx.op.binary.f32(i32 35, float %1699, float %2080)  ; FMax(a,b)
  %2082 = and i32 %1774, 16
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2106, label %2084

; <label>:2084                                    ; preds = %2023
  %2085 = bitcast float %1768 to i32
  %2086 = add i32 %1765, 0
  %2087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2088 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2087, %dx.types.Handle %1933, float %1861, float %1864, float undef, float undef, i32 0, i32 0, i32 undef, float %1866, float %1868, float undef, float %1870, float %1872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2089 = extractvalue %dx.types.ResRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.ResRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.ResRet.f32 %2088, 2
  %2092 = and i32 %2085, 65535
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = fmul fast float %2089, %1759
  %2095 = fmul fast float %2090, %1760
  %2096 = fmul fast float %2091, %1761
  %2097 = and i32 %1774, 16384
  %2098 = icmp ne i32 %2097, 0
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2101 = select i1 %2098, float %2100, float 1.000000e+00
  %2102 = fmul fast float %2101, %2093
  %2103 = fmul fast float %2094, %2102
  %2104 = fmul fast float %2095, %2102
  %2105 = fmul fast float %2096, %2102
  br label %2106

; <label>:2106                                    ; preds = %2084, %2023
  %2107 = phi float [ %2103, %2084 ], [ 0.000000e+00, %2023 ]
  %2108 = phi float [ %2104, %2084 ], [ 0.000000e+00, %2023 ]
  %2109 = phi float [ %2105, %2084 ], [ 0.000000e+00, %2023 ]
  %2110 = fsub fast float %2107, %1703
  %2111 = fsub fast float %2108, %1704
  %2112 = fsub fast float %2109, %1705
  %2113 = fmul fast float %2110, %1920
  %2114 = fmul fast float %2111, %1920
  %2115 = fmul fast float %2112, %1920
  %2116 = fadd fast float %2113, %1703
  %2117 = fadd fast float %2114, %1704
  %2118 = fadd fast float %2115, %1705
  br label %1823

; <label>:2119                                    ; preds = %1823
  br label %2120

; <label>:2120                                    ; preds = %2119, %1584
  %2121 = phi float [ 0.000000e+00, %1584 ], [ %1824, %2119 ]
  %2122 = phi float [ %1615, %1584 ], [ %1825, %2119 ]
  %2123 = phi float [ %1596, %1584 ], [ %1826, %2119 ]
  %2124 = phi float [ 0.000000e+00, %1584 ], [ %1827, %2119 ]
  %2125 = phi float [ 0.000000e+00, %1584 ], [ %1828, %2119 ]
  %2126 = phi float [ %1590, %1584 ], [ %1829, %2119 ]
  %2127 = phi float [ %1591, %1584 ], [ %1830, %2119 ]
  %2128 = phi float [ %1592, %1584 ], [ %1831, %2119 ]
  %2129 = phi float [ %1641, %1584 ], [ %1832, %2119 ]
  %2130 = phi float [ %1642, %1584 ], [ %1833, %2119 ]
  %2131 = phi float [ %1643, %1584 ], [ %1834, %2119 ]
  %2132 = phi float [ %1595, %1584 ], [ %1835, %2119 ]
  %2133 = phi float [ %1594, %1584 ], [ %1836, %2119 ]
  %2134 = phi float [ 0.000000e+00, %1584 ], [ %1837, %2119 ]
  %2135 = phi float [ %1593, %1584 ], [ %1838, %2119 ]
  %2136 = phi float [ %1587, %1584 ], [ %1839, %2119 ]
  %2137 = phi float [ %1588, %1584 ], [ %1840, %2119 ]
  %2138 = phi float [ %1589, %1584 ], [ %1841, %2119 ]
  %2139 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float %2129, float %2130, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %2140 = call float @dx.op.unary.f32(i32 25, float %2139)  ; Rsqrt(value)
  %2141 = fmul fast float %2140, %2129
  %2142 = fmul fast float %2140, %2130
  %2143 = fmul fast float %2140, %2131
  %2144 = fadd fast float %2134, %748
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = call float @dx.op.dot3.f32(i32 55, float %2141, float %2142, float %2143, float %2141, float %2142, float %2143)  ; Dot3(ax,ay,az,bx,by,bz)
  %2147 = call float @dx.op.unary.f32(i32 25, float %2146)  ; Rsqrt(value)
  %2148 = fmul fast float %2147, %2141
  %2149 = fmul fast float %2147, %2142
  %2150 = fmul fast float %2147, %2143
  %2151 = fadd fast float %2135, 0xBFB99999A0000000
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = fmul fast float %2152, 0x3FF1C71C80000000
  %2154 = call float @dx.op.binary.f32(i32 36, float %2135, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2155 = fsub fast float 1.000000e+00, %2153
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = fmul fast float %2156, %2136
  %2158 = fmul fast float %2156, %2137
  %2159 = fmul fast float %2156, %2138
  %2160 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2161 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2162 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2163 = fmul fast float %2153, %2136
  %2164 = fmul fast float %2153, %2137
  %2165 = fmul fast float %2153, %2138
  %2166 = fadd fast float %2163, %2154
  %2167 = fadd fast float %2164, %2154
  %2168 = fadd fast float %2165, %2154
  %2169 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2170 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2171 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2172 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.i32 %2173, 3
  %2175 = and i32 %2174, 8
  %2176 = icmp ne i32 %2175, 0
  %2177 = call float @dx.op.binary.f32(i32 35, float %2160, float %2136)  ; FMax(a,b)
  %2178 = call float @dx.op.binary.f32(i32 35, float %2161, float %2136)  ; FMax(a,b)
  %2179 = call float @dx.op.binary.f32(i32 35, float %2162, float %2136)  ; FMax(a,b)
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2161, float %2162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = select i1 %189, float %2136, float %2160
  %2182 = select i1 %189, float %2180, float %2161
  %2183 = select i1 %189, float 1.000000e+00, float %2162
  %2184 = select i1 %2176, float %2177, float %2181
  %2185 = select i1 %2176, float %2178, float %2182
  %2186 = select i1 %2176, float %2179, float %2183
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2191 = fadd fast float %2188, %118
  %2192 = fadd fast float %2189, %119
  %2193 = fadd fast float %2190, %120
  %2194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2195 = extractvalue %dx.types.CBufRet.f32 %2194, 0
  %2196 = extractvalue %dx.types.CBufRet.f32 %2194, 1
  %2197 = fsub fast float %2191, %2195
  %2198 = fsub fast float %2192, %2196
  %2199 = fmul fast float %2197, %2197
  %2200 = fmul fast float %2198, %2198
  %2201 = fadd fast float %2199, %2200
  %2202 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2194, 2
  %2204 = fcmp fast olt float %2202, %2203
  br i1 %2204, label %2205, label %2272

; <label>:2205                                    ; preds = %2120
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2208, 1
  %2214 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2215 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2216 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2217 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2218 = fadd fast float %2215, %2191
  %2219 = fadd fast float %2216, %2192
  %2220 = fadd fast float %2217, %2193
  %2221 = fmul fast float %2218, %2207
  %2222 = call float @dx.op.tertiary.f32(i32 46, float %2219, float %2209, float %2221)  ; FMad(a,b,c)
  %2223 = call float @dx.op.tertiary.f32(i32 46, float %2220, float %2211, float %2222)  ; FMad(a,b,c)
  %2224 = fmul fast float %2218, %2212
  %2225 = call float @dx.op.tertiary.f32(i32 46, float %2219, float %2213, float %2224)  ; FMad(a,b,c)
  %2226 = call float @dx.op.tertiary.f32(i32 46, float %2220, float %2214, float %2225)  ; FMad(a,b,c)
  %2227 = fsub fast float %2223, %2215
  %2228 = fsub fast float %2226, %2216
  %2229 = fsub fast float %2227, %2195
  %2230 = fadd fast float %2229, %2203
  %2231 = fsub fast float %2228, %2196
  %2232 = fadd fast float %2231, %2203
  %2233 = extractvalue %dx.types.CBufRet.f32 %2194, 3
  %2234 = fmul fast float %2230, %2233
  %2235 = fmul fast float %2232, %2233
  %2236 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2237 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2238 = fsub fast float 1.000000e+00, %2236
  %2239 = fsub fast float 1.000000e+00, %2237
  %2240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = fcmp fast ugt float %2241, 0.000000e+00
  br i1 %2242, label %2243, label %2546

; <label>:2243                                    ; preds = %2205
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 2
  %2246 = fmul fast float %2245, %2241
  %2247 = extractvalue %dx.types.CBufRet.f32 %2244, 3
  %2248 = fadd fast float %2247, %2246
  %2249 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2250 = fadd fast float %2248, %2217
  %2251 = fmul fast float %2223, %2211
  %2252 = call float @dx.op.tertiary.f32(i32 46, float %2226, float %2214, float %2251)  ; FMad(a,b,c)
  %2253 = call float @dx.op.tertiary.f32(i32 46, float %2250, float %2249, float %2252)  ; FMad(a,b,c)
  %2254 = fsub fast float %2253, %2217
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2257 = fsub fast float %2254, %2256
  %2258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.ResRet.f32 %2258, 2
  %2262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2263 = extractvalue %dx.types.ResRet.f32 %2262, 0
  %2264 = extractvalue %dx.types.ResRet.f32 %2262, 1
  %2265 = extractvalue %dx.types.ResRet.f32 %2262, 2
  %2266 = fadd fast float %2263, %2259
  %2267 = fmul fast float %2266, 0x3F847AE140000000
  %2268 = fadd fast float %2264, %2260
  %2269 = fmul fast float %2268, 0x3F847AE140000000
  %2270 = fadd fast float %2265, %2261
  %2271 = fmul fast float %2270, 0x3F847AE140000000
  br label %2546

; <label>:2272                                    ; preds = %2120
  %2273 = and i32 %165, 1
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2546, label %2275

; <label>:2275                                    ; preds = %2272
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = extractvalue %dx.types.CBufRet.f32 %2280, 0
  %2282 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2283 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2284 = extractvalue %dx.types.CBufRet.f32 %2280, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2276, 3
  %2286 = extractvalue %dx.types.CBufRet.f32 %2278, 3
  %2287 = extractvalue %dx.types.CBufRet.f32 %2280, 3
  %2288 = fadd fast float %2285, %2191
  %2289 = fadd fast float %2286, %2192
  %2290 = fadd fast float %2287, %2193
  %2291 = fmul fast float %2288, %2277
  %2292 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2279, float %2291)  ; FMad(a,b,c)
  %2293 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2281, float %2292)  ; FMad(a,b,c)
  %2294 = fmul fast float %2288, %2282
  %2295 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2283, float %2294)  ; FMad(a,b,c)
  %2296 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2284, float %2295)  ; FMad(a,b,c)
  %2297 = fsub fast float %2293, %2285
  %2298 = fsub fast float %2296, %2286
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2303 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 3
  %2306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.i32 %2306, 0
  %2308 = extractvalue %dx.types.CBufRet.i32 %2306, 1
  %2309 = udiv i32 %2308, %2307
  %2310 = fsub fast float %2297, %2300
  %2311 = fsub fast float %2298, %2301
  %2312 = call float @dx.op.binary.f32(i32 35, float %2310, float 0.000000e+00)  ; FMax(a,b)
  %2313 = call float @dx.op.binary.f32(i32 35, float %2311, float 0.000000e+00)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 36, float %2312, float %2302)  ; FMin(a,b)
  %2315 = call float @dx.op.binary.f32(i32 36, float %2313, float %2303)  ; FMin(a,b)
  %2316 = add i32 %2307, -1
  %2317 = add i32 %2309, -1
  %2318 = fmul fast float %2314, %2305
  %2319 = fmul fast float %2315, %2305
  %2320 = fptoui float %2318 to i32
  %2321 = fptoui float %2319 to i32
  %2322 = call i32 @dx.op.binary.i32(i32 40, i32 %2320, i32 %2316)  ; UMin(a,b)
  %2323 = call i32 @dx.op.binary.i32(i32 40, i32 %2321, i32 %2317)  ; UMin(a,b)
  %2324 = mul i32 %2323, %2307
  %2325 = add i32 %2324, %2322
  %2326 = shl i32 %2325, 2
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = icmp eq i32 %2328, -1
  br i1 %2329, label %2546, label %2330

; <label>:2330                                    ; preds = %2275
  %2331 = mul i32 %2328, 148
  %2332 = add i32 %2331, 4
  %2333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.f32 %2333, 0
  %2335 = add i32 %2331, 8
  %2336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = add i32 %2331, 36
  %2339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = add i32 %2331, 60
  %2342 = add i32 %2331, 92
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %2331, 116
  %2346 = fsub fast float %2297, %2334
  %2347 = fsub fast float %2298, %2337
  %2348 = fmul fast float %2305, %2346
  %2349 = fmul fast float %2305, %2347
  %2350 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2351 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2355 = call float @dx.op.unary.f32(i32 83, float %2350)  ; DerivCoarseX(value)
  %2356 = call float @dx.op.unary.f32(i32 83, float %2352)  ; DerivCoarseX(value)
  %2357 = call float @dx.op.unary.f32(i32 84, float %2350)  ; DerivCoarseY(value)
  %2358 = call float @dx.op.unary.f32(i32 84, float %2352)  ; DerivCoarseY(value)
  %2359 = fmul fast float %2355, %2354
  %2360 = fmul fast float %2356, %2354
  %2361 = fmul fast float %2357, %2354
  %2362 = fmul fast float %2358, %2354
  %2363 = call float @dx.op.dot2.f32(i32 54, float %2361, float %2362, float %2361, float %2362)  ; Dot2(ax,ay,bx,by)
  %2364 = call float @dx.op.dot2.f32(i32 54, float %2359, float %2360, float %2359, float %2360)  ; Dot2(ax,ay,bx,by)
  %2365 = call float @dx.op.binary.f32(i32 35, float %2364, float %2363)  ; FMax(a,b)
  %2366 = call float @dx.op.unary.f32(i32 23, float %2365)  ; Log(value)
  %2367 = fmul fast float %2366, 5.000000e-01
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2370 = fadd fast float %2369, %2367
  %2371 = call float @dx.op.binary.f32(i32 35, float %2370, float 0.000000e+00)  ; FMax(a,b)
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 3
  %2374 = fadd fast float %2373, %2371
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 3
  %2377 = fadd fast float %2374, %2376
  %2378 = add i32 %2344, 0
  %2379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2378, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2380 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2379, i32 0)  ; GetDimensions(handle,mipLevel)
  %2381 = extractvalue %dx.types.Dimensions %2380, 0
  %2382 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2381)  ; FirstbitLo(value)
  %2383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2384 = extractvalue %dx.types.CBufRet.i32 %2383, 1
  %2385 = sub nsw i32 %2384, %2382
  %2386 = sitofp i32 %2385 to float
  %2387 = fsub fast float %2377, %2386
  %2388 = call float @dx.op.binary.f32(i32 35, float %2387, float 0.000000e+00)  ; FMax(a,b)
  %2389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2379, %dx.types.Handle %37, float %2350, float %2352, float %2340, float undef, i32 0, i32 0, i32 undef, float %2388)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = fcmp ule float %2390, 0x3FE0101020000000
  %2392 = extractvalue %dx.types.CBufRet.i32 %2383, 0
  %2393 = and i32 %2392, 128
  %2394 = icmp ne i32 %2393, 0
  %2395 = and i1 %2391, %2394
  br i1 %2395, label %2546, label %2396

; <label>:2396                                    ; preds = %2330
  %2397 = add i32 %2331, 20
  %2398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = add i32 %2331, 24
  %2401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.f32 %2401, 0
  %2403 = add i32 %2331, 40
  %2404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = add i32 %2331, 96
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.f32 %2409, 2
  %2411 = fmul fast float %2410, %2350
  %2412 = fmul fast float %2410, %2352
  %2413 = extractvalue %dx.types.CBufRet.f32 %2409, 3
  %2414 = fadd fast float %2411, %2413
  %2415 = fadd fast float %2412, %2413
  %2416 = add i32 %2408, 0
  %2417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2416, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2418 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2417, i32 0)  ; GetDimensions(handle,mipLevel)
  %2419 = extractvalue %dx.types.Dimensions %2418, 0
  %2420 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2419)  ; FirstbitLo(value)
  %2421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.i32 %2421, 1
  %2423 = sub nsw i32 %2422, %2420
  %2424 = sitofp i32 %2423 to float
  %2425 = fsub fast float %2374, %2424
  %2426 = call float @dx.op.binary.f32(i32 35, float %2425, float 0.000000e+00)  ; FMax(a,b)
  %2427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2417, %dx.types.Handle %37, float %2414, float %2415, float %2405, float undef, i32 0, i32 0, i32 undef, float %2426)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = fmul fast float %2428, %2399
  %2430 = fadd fast float %2429, %2402
  %2431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2432 = extractvalue %dx.types.CBufRet.f32 %2431, 0
  %2433 = extractvalue %dx.types.CBufRet.f32 %2431, 1
  %2434 = extractvalue %dx.types.CBufRet.f32 %2431, 2
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 3
  %2437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2438 = extractvalue %dx.types.CBufRet.f32 %2437, 3
  %2439 = extractvalue %dx.types.CBufRet.f32 %2431, 3
  %2440 = fadd fast float %2436, %2297
  %2441 = fadd fast float %2438, %2298
  %2442 = fadd fast float %2430, %2439
  %2443 = fmul fast float %2440, %2432
  %2444 = call float @dx.op.tertiary.f32(i32 46, float %2441, float %2433, float %2443)  ; FMad(a,b,c)
  %2445 = call float @dx.op.tertiary.f32(i32 46, float %2442, float %2434, float %2444)  ; FMad(a,b,c)
  %2446 = fsub fast float %2445, %2439
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 2
  %2449 = fsub fast float %2446, %2448
  %2450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.i32 %2450, 0
  %2452 = call i32 @dx.op.binary.i32(i32 40, i32 %2328, i32 %2451)  ; UMin(a,b)
  %2453 = mul i32 %2452, 36
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = add i32 %2453, 4
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 0
  %2459 = fmul fast float %2458, %2350
  %2460 = fmul fast float %2458, %2352
  %2461 = extractvalue %dx.types.CBufRet.f32 %2457, 1
  %2462 = fadd fast float %2459, %2461
  %2463 = fadd fast float %2460, %2461
  %2464 = icmp eq i32 %2455, 0
  br i1 %2464, label %2533, label %2465

; <label>:2465                                    ; preds = %2396
  br label %2466

; <label>:2466                                    ; preds = %2523, %2465
  %2467 = phi float [ %2524, %2523 ], [ 0.000000e+00, %2465 ]
  %2468 = phi float [ %2525, %2523 ], [ 0.000000e+00, %2465 ]
  %2469 = phi float [ %2526, %2523 ], [ 0.000000e+00, %2465 ]
  %2470 = phi float [ %2527, %2523 ], [ 0.000000e+00, %2465 ]
  %2471 = phi float [ %2528, %2523 ], [ 0.000000e+00, %2465 ]
  %2472 = phi float [ %2529, %2523 ], [ 0.000000e+00, %2465 ]
  %2473 = phi i32 [ %2530, %2523 ], [ 0, %2465 ]
  %2474 = shl i32 %2473, 2
  %2475 = add i32 %2341, %2474
  %2476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2478 = add i32 %2345, %2474
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = add i32 %2480, 0
  %2482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2481, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2483 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2482, i32 0)  ; GetDimensions(handle,mipLevel)
  %2484 = extractvalue %dx.types.Dimensions %2483, 0
  %2485 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2484)  ; FirstbitLo(value)
  %2486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.i32 %2486, 1
  %2488 = sub nsw i32 %2487, %2485
  %2489 = sitofp i32 %2488 to float
  %2490 = fsub fast float %2374, %2489
  %2491 = call float @dx.op.binary.f32(i32 35, float %2490, float 0.000000e+00)  ; FMax(a,b)
  %2492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2482, %dx.types.Handle %37, float %2462, float %2463, float %2477, float undef, i32 0, i32 0, i32 undef, float %2491)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = fcmp fast ogt float %2493, 0.000000e+00
  br i1 %2494, label %2495, label %2523

; <label>:2495                                    ; preds = %2466
  %2496 = add i32 %2456, %2474
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2496, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 32767
  %2500 = mul nuw nsw i32 %2499, 928
  %2501 = add nuw nsw i32 %2500, 48
  %2502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = add nuw nsw i32 %2500, 60
  %2507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = fmul fast float %2503, %2493
  %2512 = fmul fast float %2504, %2493
  %2513 = fmul fast float %2505, %2493
  %2514 = fadd fast float %2511, %2467
  %2515 = fadd fast float %2512, %2468
  %2516 = fadd fast float %2513, %2469
  %2517 = fmul fast float %2508, %2493
  %2518 = fmul fast float %2509, %2493
  %2519 = fmul fast float %2510, %2493
  %2520 = fadd fast float %2517, %2470
  %2521 = fadd fast float %2518, %2471
  %2522 = fadd fast float %2519, %2472
  br label %2523

; <label>:2523                                    ; preds = %2495, %2466
  %2524 = phi float [ %2514, %2495 ], [ %2467, %2466 ]
  %2525 = phi float [ %2515, %2495 ], [ %2468, %2466 ]
  %2526 = phi float [ %2516, %2495 ], [ %2469, %2466 ]
  %2527 = phi float [ %2520, %2495 ], [ %2470, %2466 ]
  %2528 = phi float [ %2521, %2495 ], [ %2471, %2466 ]
  %2529 = phi float [ %2522, %2495 ], [ %2472, %2466 ]
  %2530 = add nuw i32 %2473, 1
  %2531 = icmp eq i32 %2530, %2455
  br i1 %2531, label %2532, label %2466

; <label>:2532                                    ; preds = %2523
  br label %2533

; <label>:2533                                    ; preds = %2532, %2396
  %2534 = phi float [ 0.000000e+00, %2396 ], [ %2524, %2532 ]
  %2535 = phi float [ 0.000000e+00, %2396 ], [ %2525, %2532 ]
  %2536 = phi float [ 0.000000e+00, %2396 ], [ %2526, %2532 ]
  %2537 = phi float [ 0.000000e+00, %2396 ], [ %2527, %2532 ]
  %2538 = phi float [ 0.000000e+00, %2396 ], [ %2528, %2532 ]
  %2539 = phi float [ 0.000000e+00, %2396 ], [ %2529, %2532 ]
  %2540 = fadd fast float %2537, %2534
  %2541 = fmul fast float %2540, 0x3F847AE140000000
  %2542 = fadd fast float %2538, %2535
  %2543 = fmul fast float %2542, 0x3F847AE140000000
  %2544 = fadd fast float %2539, %2536
  %2545 = fmul fast float %2544, 0x3F847AE140000000
  br label %2546

; <label>:2546                                    ; preds = %2533, %2330, %2275, %2272, %2243, %2205
  %2547 = phi float [ %2257, %2243 ], [ -1.310720e+05, %2205 ], [ %2449, %2533 ], [ -1.310720e+05, %2275 ], [ -1.310720e+05, %2330 ], [ -1.310720e+05, %2272 ]
  %2548 = phi float [ %2267, %2243 ], [ 0.000000e+00, %2205 ], [ %2541, %2533 ], [ 0.000000e+00, %2275 ], [ 0.000000e+00, %2330 ], [ 0.000000e+00, %2272 ]
  %2549 = phi float [ %2269, %2243 ], [ 0.000000e+00, %2205 ], [ %2543, %2533 ], [ 0.000000e+00, %2275 ], [ 0.000000e+00, %2330 ], [ 0.000000e+00, %2272 ]
  %2550 = phi float [ %2271, %2243 ], [ 0.000000e+00, %2205 ], [ %2545, %2533 ], [ 0.000000e+00, %2275 ], [ 0.000000e+00, %2330 ], [ 0.000000e+00, %2272 ]
  %2551 = phi i1 [ true, %2243 ], [ false, %2205 ], [ true, %2533 ], [ false, %2275 ], [ false, %2330 ], [ false, %2272 ]
  %2552 = and i32 %165, 3
  %2553 = icmp eq i32 %2552, 1
  %2554 = select i1 %2553, float 1.000000e+00, float 0.000000e+00
  %2555 = fsub fast float %2547, %120
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  %2557 = select i1 %2551, float %2556, float 1.000000e+00
  %2558 = fmul fast float %2557, %2554
  %2559 = icmp eq i32 %2552, 3
  %2560 = select i1 %2559, float 1.000000e+00, float %2558
  %2561 = call float @dx.op.binary.f32(i32 35, float %2121, float %2560)  ; FMax(a,b)
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fcmp fast une float %2562, 0.000000e+00
  %2564 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2565 = call float @dx.op.unary.f32(i32 25, float %2564)  ; Rsqrt(value)
  br i1 %2563, label %2573, label %2566

; <label>:2566                                    ; preds = %2546
  %2567 = fmul fast float %2565, %118
  %2568 = fmul fast float %2565, %119
  %2569 = fmul fast float %2565, %120
  %2570 = fsub fast float -0.000000e+00, %2567
  %2571 = fsub fast float -0.000000e+00, %2568
  %2572 = fsub fast float -0.000000e+00, %2569
  br label %2741

; <label>:2573                                    ; preds = %2546
  %2574 = fmul fast float %118, %2565
  %2575 = fsub fast float -0.000000e+00, %2574
  %2576 = fmul fast float %119, %2565
  %2577 = fsub fast float -0.000000e+00, %2576
  %2578 = fmul fast float %120, %2565
  %2579 = fsub fast float -0.000000e+00, %2578
  %2580 = call float @dx.op.dot3.f32(i32 55, float %2575, float %2577, float %2579, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2581 = fmul fast float %2562, 2.500000e+00
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2583 = fmul fast float %2562, 0x4013FFFFE0000000
  %2584 = fadd fast float %2583, 0xBFFFFFFFE0000000
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2586 = fmul fast float %2562, 0x4004000020000000
  %2587 = fadd fast float %2586, 0xBFF8000040000000
  %2588 = call float @dx.op.unary.f32(i32 7, float %2587)  ; Saturate(value)
  %2589 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2590 = fmul fast float %2151, 1.000000e+01
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = fmul fast float %2591, 2.000000e+00
  %2593 = fsub fast float 3.000000e+00, %2592
  %2594 = fmul fast float %2591, %2591
  %2595 = fmul fast float %2594, %2593
  %2596 = fsub fast float 1.000000e+00, %2595
  %2597 = fsub fast float 0x3FE3333340000000, %2172
  %2598 = fmul fast float %2597, 0x400AAAAAA0000000
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2600 = fmul fast float %2596, %2599
  %2601 = fmul fast float %2184, 0x3FEA2B8620000000
  %2602 = fmul fast float %2185, 0x3FEA2B8620000000
  %2603 = fmul fast float %2186, 0x3FEA2B8620000000
  %2604 = fadd fast float %2601, 0x3FC81DFBA0000000
  %2605 = fmul fast float %2604, %2184
  %2606 = fadd fast float %2605, 0x3F910E6020000000
  %2607 = fadd fast float %2602, 0x3FC81DFBA0000000
  %2608 = fmul fast float %2607, %2185
  %2609 = fadd fast float %2608, 0x3F910E6020000000
  %2610 = fadd fast float %2603, 0x3FC81DFBA0000000
  %2611 = fmul fast float %2610, %2186
  %2612 = fadd fast float %2611, 0x3F910E6020000000
  %2613 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2614 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  %2615 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2616 = fsub fast float %2613, %2184
  %2617 = fsub fast float %2614, %2185
  %2618 = fsub fast float %2615, %2186
  %2619 = fmul fast float %2616, %2589
  %2620 = fmul fast float %2619, %2600
  %2621 = fmul fast float %2617, %2589
  %2622 = fmul fast float %2621, %2600
  %2623 = fmul fast float %2618, %2589
  %2624 = fmul fast float %2623, %2600
  %2625 = fadd fast float %2620, %2184
  %2626 = fadd fast float %2622, %2185
  %2627 = fadd fast float %2624, %2186
  %2628 = fmul fast float %2132, %2132
  %2629 = fmul fast float %2628, %2628
  %2630 = fadd fast float %2585, 1.000000e+00
  %2631 = fsub fast float %2630, %2600
  %2632 = call float @dx.op.unary.f32(i32 7, float %2631)  ; Saturate(value)
  %2633 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2634 = call float @dx.op.unary.f32(i32 7, float %2633)  ; Saturate(value)
  %2635 = fsub fast float 1.000000e+00, %2629
  %2636 = call float @dx.op.binary.f32(i32 36, float %2632, float %2635)  ; FMin(a,b)
  %2637 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2638 = call float @dx.op.binary.f32(i32 35, float %2636, float %2637)  ; FMax(a,b)
  %2639 = fadd fast float %2634, 0xBFE4CCCCC0000000
  %2640 = fmul fast float %2639, 0x4006DB6DA0000000
  %2641 = call float @dx.op.unary.f32(i32 7, float %2640)  ; Saturate(value)
  %2642 = fmul fast float %2641, 2.000000e+00
  %2643 = fsub fast float 3.000000e+00, %2642
  %2644 = bitcast float %2169 to i32
  %2645 = ashr i32 %2644, 1
  %2646 = add nsw i32 %2645, 532487669
  %2647 = bitcast i32 %2646 to float
  %2648 = fsub fast float 1.000000e+00, %2647
  %2649 = bitcast float %2648 to i32
  %2650 = sub nsw i32 2129859010, %2649
  %2651 = bitcast i32 %2650 to float
  %2652 = fmul fast float %2651, 2.000000e+00
  %2653 = bitcast float %2170 to i32
  %2654 = ashr i32 %2653, 1
  %2655 = add nsw i32 %2654, 532487669
  %2656 = bitcast i32 %2655 to float
  %2657 = fsub fast float 1.000000e+00, %2656
  %2658 = bitcast float %2657 to i32
  %2659 = sub nsw i32 2129859010, %2658
  %2660 = bitcast i32 %2659 to float
  %2661 = fmul fast float %2660, 2.000000e+00
  %2662 = bitcast float %2171 to i32
  %2663 = ashr i32 %2662, 1
  %2664 = add nsw i32 %2663, 532487669
  %2665 = bitcast i32 %2664 to float
  %2666 = fsub fast float 1.000000e+00, %2665
  %2667 = bitcast float %2666 to i32
  %2668 = sub nsw i32 2129859010, %2667
  %2669 = bitcast i32 %2668 to float
  %2670 = fmul fast float %2669, 2.000000e+00
  %2671 = fsub fast float 0x4002A9FBE0000000, %2652
  %2672 = fadd fast float %2652, 0x3FD54FDF00000000
  %2673 = bitcast float %2672 to i32
  %2674 = sub nsw i32 2129859010, %2673
  %2675 = bitcast i32 %2674 to float
  %2676 = fmul fast float %2675, %2671
  %2677 = fmul fast float %2676, %2676
  %2678 = fsub fast float 0x4002A9FBE0000000, %2661
  %2679 = fadd fast float %2661, 0x3FD54FDF00000000
  %2680 = bitcast float %2679 to i32
  %2681 = sub nsw i32 2129859010, %2680
  %2682 = bitcast i32 %2681 to float
  %2683 = fmul fast float %2682, %2678
  %2684 = fmul fast float %2683, %2683
  %2685 = fsub fast float 0x4002A9FBE0000000, %2670
  %2686 = fadd fast float %2670, 0x3FD54FDF00000000
  %2687 = bitcast float %2686 to i32
  %2688 = sub nsw i32 2129859010, %2687
  %2689 = bitcast i32 %2688 to float
  %2690 = fmul fast float %2689, %2685
  %2691 = fmul fast float %2690, %2690
  %2692 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2677)  ; FMax(a,b)
  %2693 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2684)  ; FMax(a,b)
  %2694 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2691)  ; FMax(a,b)
  %2695 = fsub fast float 1.000000e+00, %2580
  %2696 = fadd fast float %2695, %2596
  %2697 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2698 = fsub fast float 1.000000e+00, %2560
  %2699 = fmul fast float %2638, %2698
  %2700 = fmul fast float %2641, %2641
  %2701 = fmul fast float %2700, %2699
  %2702 = fmul fast float %2701, %2643
  %2703 = fmul fast float %2698, 0xBFE99999A0000000
  %2704 = fmul fast float %2703, %2589
  %2705 = fmul fast float %2704, %2600
  %2706 = fadd fast float %2705, 1.000000e+00
  %2707 = fadd fast float %2172, -1.000000e+00
  %2708 = fmul fast float %2706, %2707
  %2709 = fadd fast float %2708, 1.000000e+00
  %2710 = fsub fast float %2692, %2169
  %2711 = fsub fast float %2693, %2170
  %2712 = fsub fast float %2694, %2171
  %2713 = fmul fast float %2702, %2710
  %2714 = fmul fast float %2702, %2711
  %2715 = fmul fast float %2702, %2712
  %2716 = fadd fast float %2713, %2169
  %2717 = fadd fast float %2714, %2170
  %2718 = fadd fast float %2715, %2171
  %2719 = fsub fast float %53, %2148
  %2720 = fsub fast float %54, %2149
  %2721 = fsub fast float %55, %2150
  %2722 = fmul fast float %2702, %2719
  %2723 = fmul fast float %2702, %2720
  %2724 = fmul fast float %2702, %2721
  %2725 = fadd fast float %2722, %2148
  %2726 = fadd fast float %2723, %2149
  %2727 = fadd fast float %2724, %2150
  %2728 = fmul fast float %2702, %2697
  %2729 = call float @dx.op.unary.f32(i32 7, float %2709)  ; Saturate(value)
  %2730 = fsub fast float 1.000000e+00, %2729
  %2731 = fmul fast float %2728, %2730
  %2732 = fadd fast float %2731, %2729
  %2733 = fsub fast float 1.000000e+00, %2132
  %2734 = fmul fast float %2702, %2733
  %2735 = fadd fast float %2734, %2132
  %2736 = call float @dx.op.dot3.f32(i32 55, float %2725, float %2726, float %2727, float %2725, float %2726, float %2727)  ; Dot3(ax,ay,az,bx,by,bz)
  %2737 = call float @dx.op.unary.f32(i32 25, float %2736)  ; Rsqrt(value)
  %2738 = fmul fast float %2725, %2737
  %2739 = fmul fast float %2726, %2737
  %2740 = fmul fast float %2727, %2737
  br label %2741

; <label>:2741                                    ; preds = %2573, %2566
  %2742 = phi float [ %2572, %2566 ], [ %2579, %2573 ]
  %2743 = phi float [ %2571, %2566 ], [ %2577, %2573 ]
  %2744 = phi float [ %2570, %2566 ], [ %2575, %2573 ]
  %2745 = phi float [ %2569, %2566 ], [ %2578, %2573 ]
  %2746 = phi float [ %2568, %2566 ], [ %2576, %2573 ]
  %2747 = phi float [ %2567, %2566 ], [ %2574, %2573 ]
  %2748 = phi float [ %2169, %2566 ], [ %2716, %2573 ]
  %2749 = phi float [ %2170, %2566 ], [ %2717, %2573 ]
  %2750 = phi float [ %2171, %2566 ], [ %2718, %2573 ]
  %2751 = phi float [ %2184, %2566 ], [ %2625, %2573 ]
  %2752 = phi float [ %2185, %2566 ], [ %2626, %2573 ]
  %2753 = phi float [ %2186, %2566 ], [ %2627, %2573 ]
  %2754 = phi float [ %2148, %2566 ], [ %2738, %2573 ]
  %2755 = phi float [ %2149, %2566 ], [ %2739, %2573 ]
  %2756 = phi float [ %2150, %2566 ], [ %2740, %2573 ]
  %2757 = phi float [ %2172, %2566 ], [ %2732, %2573 ]
  %2758 = phi float [ %2132, %2566 ], [ %2735, %2573 ]
  %2759 = select i1 %189, float 0.000000e+00, float %2750
  %2760 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %2744, float %2743, float %2742)  ; Dot3(ax,ay,az,bx,by,bz)
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2746, float %2745, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %2763 = fmul fast float %2762, 2.000000e+00
  %2764 = fmul fast float %2763, %2754
  %2765 = fmul fast float %2763, %2755
  %2766 = fmul fast float %2763, %2756
  %2767 = fsub fast float %2747, %2764
  %2768 = fsub fast float %2746, %2765
  %2769 = fsub fast float %2745, %2766
  %2770 = call float @dx.op.binary.f32(i32 36, float %2758, float 1.000000e+00)  ; FMin(a,b)
  %2771 = fsub fast float 1.000000e+00, %2758
  %2772 = bitcast float %2771 to i32
  %2773 = sub nsw i32 2129859010, %2772
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2777 = fadd fast float %2775, %118
  %2778 = fadd fast float %2776, %119
  %2779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.i32 %2779, 0
  %2781 = icmp eq i32 %2780, 1
  br i1 %2781, label %2782, label %2817

; <label>:2782                                    ; preds = %2741
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2786 = fsub fast float %2777, %2784
  %2787 = fsub fast float %2778, %2785
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.CBufRet.f32 %2788, 1
  %2791 = fmul fast float %2786, %2789
  %2792 = fmul fast float %2787, %2790
  %2793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2791, float %2792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = fcmp fast ogt float %2794, 0.000000e+00
  %2796 = extractvalue %dx.types.CBufRet.i32 %2779, 3
  %2797 = icmp ne i32 %2796, 0
  %2798 = and i1 %2795, %2797
  br i1 %2798, label %2799, label %2817, !dx.controlflow.hints !81

; <label>:2799                                    ; preds = %2782
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.CBufRet.f32 %2800, 1
  %2803 = fsub fast float %2777, %2801
  %2804 = fsub fast float %2778, %2802
  %2805 = fmul fast float %2803, %2803
  %2806 = fmul fast float %2804, %2804
  %2807 = fadd fast float %2805, %2806
  %2808 = uitofp i32 %2796 to float
  %2809 = fmul fast float %2808, %2808
  %2810 = fcmp fast ogt float %2807, %2809
  br i1 %2810, label %2817, label %2811

; <label>:2811                                    ; preds = %2799
  %2812 = call float @dx.op.unary.f32(i32 24, float %2807)  ; Sqrt(value)
  %2813 = fsub fast float %2808, %2812
  %2814 = fmul fast float %2813, 0x3F75555560000000
  %2815 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2816 = call float @dx.op.binary.f32(i32 36, float %2815, float %2794)  ; FMin(a,b)
  br label %2817

; <label>:2817                                    ; preds = %2811, %2799, %2782, %2741
  %2818 = phi float [ 1.000000e+00, %2741 ], [ %2816, %2811 ], [ %2794, %2782 ], [ 0.000000e+00, %2799 ]
  %2819 = fcmp fast ogt float %2818, 0.000000e+00
  br i1 %2819, label %2820, label %2918, !dx.controlflow.hints !82

; <label>:2820                                    ; preds = %2817
  %2821 = fadd fast float %149, 5.000000e-01
  %2822 = call float @dx.op.unary.f32(i32 27, float %2821)  ; Round_ni(value)
  %2823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %147, float %148, float %2822, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.ResRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.ResRet.f32 %2823, 2
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 3
  %2829 = fmul fast float %2828, %2824
  %2830 = fmul fast float %2828, %2825
  %2831 = fmul fast float %2828, %2826
  %2832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %147, float %148, float %2822, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2833 = extractvalue %dx.types.ResRet.f32 %2832, 0
  %2834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %147, float %148, float %2822, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2835 = extractvalue %dx.types.ResRet.f32 %2834, 0
  %2836 = extractvalue %dx.types.ResRet.f32 %2834, 1
  %2837 = fmul fast float %2835, 2.000000e+00
  %2838 = fmul fast float %2836, 2.000000e+00
  %2839 = fadd fast float %2837, -1.000000e+00
  %2840 = fadd fast float %2838, -1.000000e+00
  %2841 = fadd fast float %2839, %2840
  %2842 = fmul fast float %2841, 5.000000e-01
  %2843 = fsub fast float %2839, %2840
  %2844 = fmul fast float %2843, 5.000000e-01
  %2845 = call float @dx.op.unary.f32(i32 6, float %2842)  ; FAbs(value)
  %2846 = fsub fast float 1.000000e+00, %2845
  %2847 = call float @dx.op.unary.f32(i32 6, float %2844)  ; FAbs(value)
  %2848 = fsub fast float %2846, %2847
  %2849 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2848)  ; FMax(a,b)
  %2850 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2844, float %2849, float %2842, float %2844, float %2849)  ; Dot3(ax,ay,az,bx,by,bz)
  %2851 = bitcast float %2850 to i32
  %2852 = ashr i32 %2851, 1
  %2853 = sub nsw i32 1597250115, %2852
  %2854 = bitcast i32 %2853 to float
  %2855 = fmul fast float %2854, %2842
  %2856 = fmul fast float %2854, %2844
  %2857 = fmul fast float %2854, %2849
  %2858 = fsub fast float 1.000000e+00, %2833
  %2859 = fdiv fast float %2858, %2857
  %2860 = fmul fast float %2857, %53
  %2861 = fmul fast float %2857, %54
  %2862 = fmul fast float %2857, %55
  %2863 = fmul fast float %2855, %49
  %2864 = fmul fast float %2855, %50
  %2865 = fmul fast float %2855, %51
  %2866 = fadd fast float %2860, %2863
  %2867 = fadd fast float %2861, %2864
  %2868 = fadd fast float %2862, %2865
  %2869 = fmul fast float %2856, %82
  %2870 = fmul fast float %2856, %83
  %2871 = fmul fast float %2856, %84
  %2872 = fadd fast float %2866, %2869
  %2873 = fadd fast float %2867, %2870
  %2874 = fadd fast float %2868, %2871
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2873, float %2874, float %2872, float %2873, float %2874)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = call float @dx.op.unary.f32(i32 25, float %2875)  ; Rsqrt(value)
  %2877 = fmul fast float %2872, %2876
  %2878 = fmul fast float %2873, %2876
  %2879 = fmul fast float %2874, %2876
  %2880 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2882 = fmul fast float %2881, 5.000000e-01
  %2883 = fadd fast float %2882, 5.000000e-01
  %2884 = fmul fast float %2883, %2833
  %2885 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %2877, float %2878, float %2879)  ; Dot3(ax,ay,az,bx,by,bz)
  %2886 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2887 = fmul fast float %2886, %2859
  %2888 = fadd fast float %2884, %2887
  %2889 = fsub fast float 5.000000e-01, %2882
  %2890 = fmul fast float %2889, %2751
  %2891 = fmul fast float %2889, %2752
  %2892 = fmul fast float %2889, %2753
  %2893 = fadd fast float %2888, %2890
  %2894 = fmul fast float %2893, %2829
  %2895 = fadd fast float %2888, %2891
  %2896 = fmul fast float %2895, %2830
  %2897 = fadd fast float %2888, %2892
  %2898 = fmul fast float %2897, %2831
  %2899 = call float @dx.op.dot3.f32(i32 55, float %2767, float %2768, float %2769, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2901 = fmul fast float %2900, 5.000000e-01
  %2902 = fadd fast float %2901, 5.000000e-01
  %2903 = fmul fast float %2902, %2833
  %2904 = call float @dx.op.dot3.f32(i32 55, float %2767, float %2768, float %2769, float %2877, float %2878, float %2879)  ; Dot3(ax,ay,az,bx,by,bz)
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = fmul fast float %2905, %2859
  %2907 = fadd fast float %2903, %2906
  %2908 = fsub fast float 5.000000e-01, %2901
  %2909 = fmul fast float %2908, %2751
  %2910 = fmul fast float %2908, %2752
  %2911 = fmul fast float %2908, %2753
  %2912 = fadd fast float %2907, %2909
  %2913 = fmul fast float %2912, %2829
  %2914 = fadd fast float %2907, %2910
  %2915 = fmul fast float %2914, %2830
  %2916 = fadd fast float %2907, %2911
  %2917 = fmul fast float %2916, %2831
  br label %2918

; <label>:2918                                    ; preds = %2820, %2817
  %2919 = phi float [ %2913, %2820 ], [ 0.000000e+00, %2817 ]
  %2920 = phi float [ %2915, %2820 ], [ 0.000000e+00, %2817 ]
  %2921 = phi float [ %2917, %2820 ], [ 0.000000e+00, %2817 ]
  %2922 = phi float [ %2894, %2820 ], [ 0.000000e+00, %2817 ]
  %2923 = phi float [ %2896, %2820 ], [ 0.000000e+00, %2817 ]
  %2924 = phi float [ %2898, %2820 ], [ 0.000000e+00, %2817 ]
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2927 = fcmp fast ogt float %2926, 0.000000e+00
  %2928 = and i1 %2819, %2927
  br i1 %2928, label %2929, label %3133, !dx.controlflow.hints !83

; <label>:2929                                    ; preds = %2918
  %2930 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2931 = fadd fast float %2930, %120
  %2932 = fmul fast float %2754, 3.200000e+01
  %2933 = fmul fast float %2755, 3.200000e+01
  %2934 = fadd fast float %2777, %2932
  %2935 = fadd fast float %2778, %2933
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %2939 = fsub fast float %2934, %2937
  %2940 = fsub fast float %2935, %2938
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.CBufRet.f32 %2941, 1
  %2944 = fmul fast float %2939, %2942
  %2945 = fmul fast float %2940, %2943
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.CBufRet.f32 %2946, 1
  %2949 = fsub fast float %2777, %2947
  %2950 = fsub fast float %2778, %2948
  %2951 = fmul fast float %2949, %2949
  %2952 = fmul fast float %2950, %2950
  %2953 = fadd fast float %2951, %2952
  %2954 = call float @dx.op.unary.f32(i32 24, float %2953)  ; Sqrt(value)
  %2955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.CBufRet.f32 %2955, 1
  %2958 = fsub fast float %2954, %2956
  %2959 = fdiv fast float %2958, %2957
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = fmul fast float %2960, 2.000000e+00
  %2962 = fsub fast float 3.000000e+00, %2961
  %2963 = fmul fast float %2960, %2960
  %2964 = fmul fast float %2963, %2962
  %2965 = fcmp fast oge float %2944, 0.000000e+00
  %2966 = fcmp fast ole float %2944, 1.000000e+00
  %2967 = and i1 %2966, %2965
  %2968 = fcmp fast oge float %2945, 0.000000e+00
  %2969 = and i1 %2968, %2967
  %2970 = fcmp fast ole float %2945, 1.000000e+00
  %2971 = and i1 %2970, %2969
  %2972 = fcmp fast ogt float %2964, 0.000000e+00
  %2973 = and i1 %2972, %2971
  br i1 %2973, label %2974, label %3097, !dx.controlflow.hints !84

; <label>:2974                                    ; preds = %2929
  %2975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.f32 %2975, 2
  %2977 = extractvalue %dx.types.CBufRet.f32 %2975, 3
  %2978 = fmul fast float %2976, %2944
  %2979 = fmul fast float %2977, %2945
  %2980 = call float @dx.op.unary.f32(i32 27, float %2978)  ; Round_ni(value)
  %2981 = call float @dx.op.unary.f32(i32 27, float %2979)  ; Round_ni(value)
  %2982 = fptosi float %2980 to i32
  %2983 = fptosi float %2981 to i32
  %2984 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2982, i32 %2983, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = lshr i32 %2985, 16
  %2987 = icmp eq i32 %2986, 65535
  br i1 %2987, label %3097, label %2988

; <label>:2988                                    ; preds = %2974
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 0
  %2991 = fmul fast float %2990, %2944
  %2992 = extractvalue %dx.types.CBufRet.f32 %2989, 1
  %2993 = fadd fast float %2991, %2992
  %2994 = extractvalue %dx.types.CBufRet.f32 %2989, 2
  %2995 = fmul fast float %2994, %2945
  %2996 = extractvalue %dx.types.CBufRet.f32 %2989, 3
  %2997 = fadd fast float %2995, %2996
  %2998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %2993, float %2997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3002 = extractvalue %dx.types.CBufRet.f32 %3001, 1
  %3003 = extractvalue %dx.types.CBufRet.f32 %3001, 0
  %3004 = fsub fast float %3002, %3003
  %3005 = fmul fast float %3004, %2999
  %3006 = fadd fast float %3005, %3003
  %3007 = extractvalue %dx.types.CBufRet.f32 %3001, 3
  %3008 = extractvalue %dx.types.CBufRet.f32 %3001, 2
  %3009 = fsub fast float %3007, %3008
  %3010 = fmul fast float %3009, %3000
  %3011 = fadd fast float %3010, %3008
  %3012 = fsub fast float %2931, %3006
  %3013 = fsub fast float %3011, %3006
  %3014 = fdiv fast float %3012, %3013
  %3015 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3016 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %3017 = extractvalue %dx.types.CBufRet.f32 %2975, 0
  %3018 = extractvalue %dx.types.CBufRet.f32 %2975, 1
  %3019 = fmul fast float %3017, %2944
  %3020 = fmul fast float %3018, %2945
  %3021 = fmul fast float %3019, 1.250000e-01
  %3022 = fmul fast float %3020, 1.250000e-01
  %3023 = call float @dx.op.unary.f32(i32 27, float %3021)  ; Round_ni(value)
  %3024 = call float @dx.op.unary.f32(i32 27, float %3022)  ; Round_ni(value)
  %3025 = fmul fast float %3023, 8.000000e+00
  %3026 = fmul fast float %3024, 8.000000e+00
  %3027 = fsub fast float %3019, %3025
  %3028 = fsub fast float %3020, %3026
  %3029 = fadd fast float %3027, 5.000000e-01
  %3030 = fadd fast float %3028, 5.000000e-01
  %3031 = and i32 %2986, 255
  %3032 = lshr i32 %2985, 24
  %3033 = mul nuw nsw i32 %3031, 9
  %3034 = uitofp i32 %3033 to float
  %3035 = mul nuw nsw i32 %3032, 9
  %3036 = uitofp i32 %3035 to float
  %3037 = fadd fast float %3029, %3034
  %3038 = fadd fast float %3030, %3036
  %3039 = fdiv fast float %3037, %2926
  %3040 = fdiv fast float %3038, %3016
  %3041 = fmul fast float %3015, 4.375000e-01
  %3042 = fadd fast float %3041, 3.125000e-02
  %3043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3039, float %3040, float %3042, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.ResRet.f32 %3043, 1
  %3046 = extractvalue %dx.types.ResRet.f32 %3043, 2
  %3047 = fadd fast float %3041, 5.312500e-01
  %3048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3039, float %3040, float %3047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = fmul fast float %3049, 2.000000e+00
  %3053 = fmul fast float %3050, 2.000000e+00
  %3054 = fmul fast float %3051, 2.000000e+00
  %3055 = fadd fast float %3052, -1.000000e+00
  %3056 = fadd fast float %3053, -1.000000e+00
  %3057 = fadd fast float %3054, -1.000000e+00
  %3058 = fmul fast float %3055, %3055
  %3059 = fmul fast float %3056, %3056
  %3060 = fadd fast float %3058, %3059
  %3061 = fmul fast float %3057, %3057
  %3062 = fadd fast float %3060, %3061
  %3063 = call float @dx.op.unary.f32(i32 24, float %3062)  ; Sqrt(value)
  %3064 = fcmp fast ogt float %3063, 0.000000e+00
  br i1 %3064, label %3065, label %3069

; <label>:3065                                    ; preds = %2988
  %3066 = fdiv fast float %3055, %3063
  %3067 = fdiv fast float %3056, %3063
  %3068 = fdiv fast float %3057, %3063
  br label %3069

; <label>:3069                                    ; preds = %3065, %2988
  %3070 = phi float [ %3066, %3065 ], [ 0.000000e+00, %2988 ]
  %3071 = phi float [ %3067, %3065 ], [ 0.000000e+00, %2988 ]
  %3072 = phi float [ %3068, %3065 ], [ 0.000000e+00, %2988 ]
  %3073 = call float @dx.op.dot3.f32(i32 55, float %3070, float %3071, float %3072, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3073)  ; FMax(a,b)
  %3075 = fmul fast float %3074, 0x400C5BF8A0000000
  %3076 = fmul fast float %3044, %2964
  %3077 = fmul fast float %3076, %3075
  %3078 = fmul fast float %3045, %2964
  %3079 = fmul fast float %3078, %3075
  %3080 = fmul fast float %3046, %2964
  %3081 = fmul fast float %3080, %3075
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 3
  %3084 = fmul fast float %3077, %3083
  %3085 = fmul fast float %3079, %3083
  %3086 = fmul fast float %3081, %3083
  %3087 = fcmp fast ogt float %2931, %3011
  br i1 %3087, label %3088, label %3097

; <label>:3088                                    ; preds = %3069
  %3089 = fmul fast float %3013, 0x3FC24924A0000000
  %3090 = fsub fast float %2931, %3011
  %3091 = fdiv fast float %3090, %3089
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3093 = fsub fast float 1.000000e+00, %3092
  %3094 = fmul fast float %3093, %3084
  %3095 = fmul fast float %3093, %3085
  %3096 = fmul fast float %3093, %3086
  br label %3097

; <label>:3097                                    ; preds = %3088, %3069, %2974, %2929
  %3098 = phi float [ %3096, %3088 ], [ %3086, %3069 ], [ 0.000000e+00, %2974 ], [ 0.000000e+00, %2929 ]
  %3099 = phi float [ %3095, %3088 ], [ %3085, %3069 ], [ 0.000000e+00, %2974 ], [ 0.000000e+00, %2929 ]
  %3100 = phi float [ %3094, %3088 ], [ %3084, %3069 ], [ 0.000000e+00, %2974 ], [ 0.000000e+00, %2929 ]
  %3101 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3100)  ; FMax(a,b)
  %3102 = fmul fast float %3101, 0x3FD20DD760000000
  %3103 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2767, float %2768, float %2769)  ; Dot3(ax,ay,az,bx,by,bz)
  %3104 = fmul fast float %3103, 0x3FDF454380000000
  %3105 = fmul fast float %3103, %3103
  %3106 = fmul fast float %3105, 0x3FEE471020000000
  %3107 = fadd fast float %3106, 0xBFD42F6020000000
  %3108 = call float @dx.op.dot3.f32(i32 55, float %3101, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3104, float %3107)  ; Dot3(ax,ay,az,bx,by,bz)
  %3109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3099)  ; FMax(a,b)
  %3110 = fmul fast float %3109, 0x3FD20DD760000000
  %3111 = call float @dx.op.dot3.f32(i32 55, float %3109, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3104, float %3107)  ; Dot3(ax,ay,az,bx,by,bz)
  %3112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3098)  ; FMax(a,b)
  %3113 = fmul fast float %3112, 0x3FD20DD760000000
  %3114 = call float @dx.op.dot3.f32(i32 55, float %3112, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3104, float %3107)  ; Dot3(ax,ay,az,bx,by,bz)
  %3115 = call float @dx.op.binary.f32(i32 35, float %3102, float 0.000000e+00)  ; FMax(a,b)
  %3116 = call float @dx.op.binary.f32(i32 35, float %3110, float 0.000000e+00)  ; FMax(a,b)
  %3117 = call float @dx.op.binary.f32(i32 35, float %3113, float 0.000000e+00)  ; FMax(a,b)
  %3118 = call float @dx.op.binary.f32(i32 35, float %3108, float 0.000000e+00)  ; FMax(a,b)
  %3119 = call float @dx.op.binary.f32(i32 35, float %3111, float 0.000000e+00)  ; FMax(a,b)
  %3120 = call float @dx.op.binary.f32(i32 35, float %3114, float 0.000000e+00)  ; FMax(a,b)
  %3121 = fmul fast float %3115, %2818
  %3122 = fmul fast float %3116, %2818
  %3123 = fmul fast float %3117, %2818
  %3124 = fadd fast float %3121, %2922
  %3125 = fadd fast float %3122, %2923
  %3126 = fadd fast float %3123, %2924
  %3127 = fmul fast float %3118, %2818
  %3128 = fmul fast float %3119, %2818
  %3129 = fmul fast float %3120, %2818
  %3130 = fadd fast float %3127, %2919
  %3131 = fadd fast float %3128, %2920
  %3132 = fadd fast float %3129, %2921
  br label %3133

; <label>:3133                                    ; preds = %3097, %2918
  %3134 = phi float [ %3130, %3097 ], [ %2919, %2918 ]
  %3135 = phi float [ %3131, %3097 ], [ %2920, %2918 ]
  %3136 = phi float [ %3132, %3097 ], [ %2921, %2918 ]
  %3137 = phi float [ %3124, %3097 ], [ %2922, %2918 ]
  %3138 = phi float [ %3125, %3097 ], [ %2923, %2918 ]
  %3139 = phi float [ %3126, %3097 ], [ %2924, %2918 ]
  %3140 = fcmp fast olt float %2818, 1.000000e+00
  br i1 %3140, label %3141, label %3959, !dx.controlflow.hints !85

; <label>:3141                                    ; preds = %3133
  %3142 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %3143 = fadd fast float %3142, %120
  %3144 = fmul fast float %2754, 3.200000e+01
  %3145 = fmul fast float %2755, 3.200000e+01
  %3146 = fadd fast float %2777, %3144
  %3147 = fadd fast float %2778, %3145
  %3148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3149 = extractvalue %dx.types.CBufRet.f32 %3148, 0
  %3150 = extractvalue %dx.types.CBufRet.f32 %3148, 1
  %3151 = fsub fast float %3146, %3149
  %3152 = fsub fast float %3147, %3150
  %3153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3153, 0
  %3155 = extractvalue %dx.types.CBufRet.f32 %3153, 1
  %3156 = fmul fast float %3151, %3154
  %3157 = fmul fast float %3152, %3155
  %3158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3159 = extractvalue %dx.types.CBufRet.f32 %3158, 0
  %3160 = fmul fast float %3156, %3159
  %3161 = extractvalue %dx.types.CBufRet.f32 %3158, 1
  %3162 = fadd fast float %3160, %3161
  %3163 = extractvalue %dx.types.CBufRet.f32 %3158, 2
  %3164 = fmul fast float %3163, %3157
  %3165 = extractvalue %dx.types.CBufRet.f32 %3158, 3
  %3166 = fadd fast float %3164, %3165
  %3167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3162, float %3166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.ResRet.f32 %3167, 1
  %3170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.f32 %3170, 1
  %3172 = extractvalue %dx.types.CBufRet.f32 %3170, 0
  %3173 = fsub fast float %3171, %3172
  %3174 = fmul fast float %3173, %3168
  %3175 = fadd fast float %3174, %3172
  %3176 = extractvalue %dx.types.CBufRet.f32 %3170, 3
  %3177 = extractvalue %dx.types.CBufRet.f32 %3170, 2
  %3178 = fsub fast float %3176, %3177
  %3179 = fmul fast float %3178, %3169
  %3180 = fadd fast float %3179, %3177
  %3181 = fsub fast float %3143, %3175
  %3182 = fsub fast float %3180, %3175
  %3183 = fdiv fast float %3181, %3182
  %3184 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3186 = extractvalue %dx.types.CBufRet.f32 %3185, 0
  %3187 = fmul fast float %3186, %3184
  %3188 = extractvalue %dx.types.CBufRet.f32 %3185, 1
  %3189 = fadd fast float %3187, %3188
  %3190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3162, float %3166, float %3189, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.ResRet.f32 %3190, 1
  %3193 = extractvalue %dx.types.ResRet.f32 %3190, 2
  %3194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3195 = extractvalue %dx.types.CBufRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.CBufRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.CBufRet.f32 %3194, 2
  %3198 = fmul fast float %3195, %3191
  %3199 = fmul fast float %3196, %3192
  %3200 = fmul fast float %3197, %3193
  %3201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.f32 %3201, 0
  %3203 = extractvalue %dx.types.CBufRet.f32 %3201, 1
  %3204 = extractvalue %dx.types.CBufRet.f32 %3201, 2
  %3205 = fadd fast float %3198, %3202
  %3206 = fadd fast float %3199, %3203
  %3207 = fadd fast float %3200, %3204
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = fmul fast float %3209, %3156
  %3211 = extractvalue %dx.types.CBufRet.f32 %3208, 1
  %3212 = fadd fast float %3210, %3211
  %3213 = extractvalue %dx.types.CBufRet.f32 %3208, 2
  %3214 = fmul fast float %3213, %3157
  %3215 = extractvalue %dx.types.CBufRet.f32 %3208, 3
  %3216 = fadd fast float %3214, %3215
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.CBufRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.CBufRet.f32 %3217, 2
  %3221 = extractvalue %dx.types.CBufRet.f32 %3217, 3
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3225 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3226 = extractvalue %dx.types.CBufRet.f32 %3222, 3
  %3227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3212, float %3216, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3228 = extractvalue %dx.types.ResRet.f32 %3227, 0
  %3229 = extractvalue %dx.types.ResRet.f32 %3227, 1
  %3230 = extractvalue %dx.types.ResRet.f32 %3227, 2
  %3231 = extractvalue %dx.types.ResRet.f32 %3227, 3
  %3232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3212, float %3216, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = extractvalue %dx.types.ResRet.f32 %3232, 1
  %3235 = extractvalue %dx.types.ResRet.f32 %3232, 2
  %3236 = extractvalue %dx.types.ResRet.f32 %3232, 3
  %3237 = fmul fast float %3228, %3205
  %3238 = fmul fast float %3233, %3205
  %3239 = fmul fast float %3235, %3205
  %3240 = fmul fast float %3231, %3205
  %3241 = fadd fast float %3237, %3218
  %3242 = fadd fast float %3238, %3219
  %3243 = fadd fast float %3239, %3220
  %3244 = fadd fast float %3240, %3221
  %3245 = fmul fast float %3229, %3205
  %3246 = fmul fast float %3234, %3205
  %3247 = fadd fast float %3245, %3223
  %3248 = fadd fast float %3246, %3224
  %3249 = fmul fast float %3230, %3205
  %3250 = fmul fast float %3236, %3205
  %3251 = fadd fast float %3249, %3225
  %3252 = fadd fast float %3250, %3226
  %3253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3212, float %3216, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3254 = extractvalue %dx.types.ResRet.f32 %3253, 0
  %3255 = extractvalue %dx.types.ResRet.f32 %3253, 1
  %3256 = extractvalue %dx.types.ResRet.f32 %3253, 2
  %3257 = extractvalue %dx.types.ResRet.f32 %3253, 3
  %3258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3212, float %3216, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.ResRet.f32 %3258, 2
  %3262 = extractvalue %dx.types.ResRet.f32 %3258, 3
  %3263 = fmul fast float %3254, %3206
  %3264 = fmul fast float %3259, %3206
  %3265 = fmul fast float %3261, %3206
  %3266 = fmul fast float %3257, %3206
  %3267 = fadd fast float %3241, %3263
  %3268 = fadd fast float %3242, %3264
  %3269 = fadd fast float %3243, %3265
  %3270 = fadd fast float %3244, %3266
  %3271 = fmul fast float %3255, %3206
  %3272 = fmul fast float %3260, %3206
  %3273 = fadd fast float %3247, %3271
  %3274 = fadd fast float %3248, %3272
  %3275 = fmul fast float %3256, %3206
  %3276 = fmul fast float %3262, %3206
  %3277 = fadd fast float %3251, %3275
  %3278 = fadd fast float %3252, %3276
  %3279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3212, float %3216, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3283 = extractvalue %dx.types.ResRet.f32 %3279, 3
  %3284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3212, float %3216, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.ResRet.f32 %3284, 2
  %3288 = extractvalue %dx.types.ResRet.f32 %3284, 3
  %3289 = fmul fast float %3280, %3207
  %3290 = fmul fast float %3285, %3207
  %3291 = fmul fast float %3287, %3207
  %3292 = fmul fast float %3283, %3207
  %3293 = fadd fast float %3267, %3289
  %3294 = fadd fast float %3268, %3290
  %3295 = fadd fast float %3269, %3291
  %3296 = fadd fast float %3270, %3292
  %3297 = fmul fast float %3281, %3207
  %3298 = fmul fast float %3286, %3207
  %3299 = fadd fast float %3273, %3297
  %3300 = fadd fast float %3274, %3298
  %3301 = fmul fast float %3282, %3207
  %3302 = fmul fast float %3288, %3207
  %3303 = fadd fast float %3277, %3301
  %3304 = fadd fast float %3278, %3302
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = fsub fast float %2777, %3306
  %3308 = fsub fast float %3149, %2777
  %3309 = call float @dx.op.binary.f32(i32 35, float %3308, float %3307)  ; FMax(a,b)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3311 = fsub fast float %2778, %3310
  %3312 = fsub fast float %3150, %2778
  %3313 = call float @dx.op.binary.f32(i32 35, float %3312, float %3311)  ; FMax(a,b)
  %3314 = call float @dx.op.binary.f32(i32 35, float %3309, float %3313)  ; FMax(a,b)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3153, 3
  %3316 = fmul fast float %3315, %3314
  %3317 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  %3318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.CBufRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.CBufRet.f32 %3318, 2
  %3322 = extractvalue %dx.types.CBufRet.f32 %3318, 3
  %3323 = fsub fast float %3319, %3293
  %3324 = fsub fast float %3320, %3294
  %3325 = fsub fast float %3321, %3295
  %3326 = fsub fast float %3322, %3296
  %3327 = fmul fast float %3323, %3317
  %3328 = fmul fast float %3324, %3317
  %3329 = fmul fast float %3325, %3317
  %3330 = fmul fast float %3326, %3317
  %3331 = fadd fast float %3327, %3293
  %3332 = fadd fast float %3328, %3294
  %3333 = fadd fast float %3329, %3295
  %3334 = fadd fast float %3330, %3296
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3338 = fsub fast float %3336, %3299
  %3339 = fsub fast float %3337, %3300
  %3340 = fmul fast float %3338, %3317
  %3341 = fmul fast float %3339, %3317
  %3342 = fadd fast float %3340, %3299
  %3343 = fadd fast float %3341, %3300
  %3344 = extractvalue %dx.types.CBufRet.f32 %3335, 2
  %3345 = extractvalue %dx.types.CBufRet.f32 %3335, 3
  %3346 = fsub fast float %3344, %3303
  %3347 = fsub fast float %3345, %3304
  %3348 = fmul fast float %3346, %3317
  %3349 = fmul fast float %3347, %3317
  %3350 = fadd fast float %3348, %3303
  %3351 = fadd fast float %3349, %3304
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 0
  %3354 = fmul fast float %3353, %3331
  %3355 = fmul fast float %3353, %3332
  %3356 = fmul fast float %3353, %3333
  %3357 = fmul fast float %3353, %3334
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = fmul fast float %3359, %3342
  %3361 = fmul fast float %3359, %3343
  %3362 = fadd fast float %3360, %3354
  %3363 = fadd fast float %3361, %3356
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3366 = fmul fast float %3365, %3350
  %3367 = fmul fast float %3365, %3351
  %3368 = fadd fast float %3362, %3366
  %3369 = fadd fast float %3363, %3367
  %3370 = extractvalue %dx.types.CBufRet.f32 %3352, 1
  %3371 = fmul fast float %3370, %3331
  %3372 = fmul fast float %3370, %3332
  %3373 = fmul fast float %3370, %3333
  %3374 = fmul fast float %3370, %3334
  %3375 = extractvalue %dx.types.CBufRet.f32 %3358, 1
  %3376 = fmul fast float %3375, %3342
  %3377 = fmul fast float %3375, %3343
  %3378 = fadd fast float %3376, %3371
  %3379 = fadd fast float %3377, %3373
  %3380 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3381 = fmul fast float %3380, %3350
  %3382 = fmul fast float %3380, %3351
  %3383 = fadd fast float %3378, %3381
  %3384 = fadd fast float %3379, %3382
  %3385 = extractvalue %dx.types.CBufRet.f32 %3352, 2
  %3386 = fmul fast float %3385, %3331
  %3387 = fmul fast float %3385, %3332
  %3388 = fmul fast float %3385, %3333
  %3389 = fmul fast float %3385, %3334
  %3390 = extractvalue %dx.types.CBufRet.f32 %3358, 2
  %3391 = fmul fast float %3390, %3342
  %3392 = fmul fast float %3390, %3343
  %3393 = fadd fast float %3391, %3386
  %3394 = fadd fast float %3392, %3388
  %3395 = extractvalue %dx.types.CBufRet.f32 %3364, 2
  %3396 = fmul fast float %3395, %3350
  %3397 = fmul fast float %3395, %3351
  %3398 = fadd fast float %3393, %3396
  %3399 = fadd fast float %3394, %3397
  %3400 = fmul fast float %3387, %3387
  %3401 = fmul fast float %3399, %3399
  %3402 = fmul fast float %3389, %3389
  %3403 = fadd fast float %3402, %3400
  %3404 = fadd fast float %3403, %3401
  %3405 = call float @dx.op.unary.f32(i32 24, float %3404)  ; Sqrt(value)
  %3406 = fcmp fast ugt float %3405, 0.000000e+00
  br i1 %3406, label %3407, label %3422

; <label>:3407                                    ; preds = %3141
  %3408 = fsub fast float -0.000000e+00, %3389
  %3409 = fdiv fast float %3408, %3405
  %3410 = fsub fast float -0.000000e+00, %3387
  %3411 = fdiv fast float %3410, %3405
  %3412 = fdiv fast float %3399, %3405
  %3413 = fmul fast float %3398, 0x3FE279A760000000
  %3414 = fmul fast float %3411, %3387
  %3415 = fmul fast float %3412, %3399
  %3416 = fmul fast float %3409, %3389
  %3417 = fadd fast float %3414, %3416
  %3418 = fsub fast float %3417, %3415
  %3419 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3420 = fadd fast float %3419, 0x3DDB7CDFE0000000
  %3421 = fdiv fast float %3413, %3420
  br label %3422

; <label>:3422                                    ; preds = %3407, %3141
  %3423 = phi float [ %3421, %3407 ], [ 1.000000e+00, %3141 ]
  %3424 = fmul fast float %3372, %3372
  %3425 = fmul fast float %3384, %3384
  %3426 = fmul fast float %3374, %3374
  %3427 = fadd fast float %3426, %3424
  %3428 = fadd fast float %3427, %3425
  %3429 = call float @dx.op.unary.f32(i32 24, float %3428)  ; Sqrt(value)
  %3430 = fcmp fast ugt float %3429, 0.000000e+00
  br i1 %3430, label %3431, label %3446

; <label>:3431                                    ; preds = %3422
  %3432 = fsub fast float -0.000000e+00, %3374
  %3433 = fdiv fast float %3432, %3429
  %3434 = fsub fast float -0.000000e+00, %3372
  %3435 = fdiv fast float %3434, %3429
  %3436 = fdiv fast float %3384, %3429
  %3437 = fmul fast float %3383, 0x3FE279A760000000
  %3438 = fmul fast float %3435, %3372
  %3439 = fmul fast float %3436, %3384
  %3440 = fmul fast float %3433, %3374
  %3441 = fadd fast float %3438, %3440
  %3442 = fsub fast float %3441, %3439
  %3443 = call float @dx.op.unary.f32(i32 6, float %3442)  ; FAbs(value)
  %3444 = fadd fast float %3443, 0x3DDB7CDFE0000000
  %3445 = fdiv fast float %3437, %3444
  br label %3446

; <label>:3446                                    ; preds = %3431, %3422
  %3447 = phi float [ %3445, %3431 ], [ 1.000000e+00, %3422 ]
  %3448 = call float @dx.op.binary.f32(i32 36, float %3447, float %3423)  ; FMin(a,b)
  %3449 = fmul fast float %3355, %3355
  %3450 = fmul fast float %3369, %3369
  %3451 = fmul fast float %3357, %3357
  %3452 = fadd fast float %3451, %3449
  %3453 = fadd fast float %3452, %3450
  %3454 = call float @dx.op.unary.f32(i32 24, float %3453)  ; Sqrt(value)
  %3455 = fcmp fast ugt float %3454, 0.000000e+00
  br i1 %3455, label %3456, label %3471

; <label>:3456                                    ; preds = %3446
  %3457 = fsub fast float -0.000000e+00, %3357
  %3458 = fdiv fast float %3457, %3454
  %3459 = fsub fast float -0.000000e+00, %3355
  %3460 = fdiv fast float %3459, %3454
  %3461 = fdiv fast float %3369, %3454
  %3462 = fmul fast float %3368, 0x3FE279A760000000
  %3463 = fmul fast float %3460, %3355
  %3464 = fmul fast float %3461, %3369
  %3465 = fmul fast float %3458, %3357
  %3466 = fadd fast float %3463, %3465
  %3467 = fsub fast float %3466, %3464
  %3468 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3469 = fadd fast float %3468, 0x3DDB7CDFE0000000
  %3470 = fdiv fast float %3462, %3469
  br label %3471

; <label>:3471                                    ; preds = %3456, %3446
  %3472 = phi float [ %3470, %3456 ], [ 1.000000e+00, %3446 ]
  %3473 = call float @dx.op.binary.f32(i32 36, float %3472, float %3448)  ; FMin(a,b)
  %3474 = call float @dx.op.unary.f32(i32 7, float %3473)  ; Saturate(value)
  %3475 = fcmp fast olt float %3474, 1.000000e+00
  br i1 %3475, label %3476, label %3486

; <label>:3476                                    ; preds = %3471
  %3477 = fmul fast float %3474, %3355
  %3478 = fmul fast float %3474, %3369
  %3479 = fmul fast float %3474, %3357
  %3480 = fmul fast float %3474, %3372
  %3481 = fmul fast float %3474, %3384
  %3482 = fmul fast float %3474, %3374
  %3483 = fmul fast float %3474, %3387
  %3484 = fmul fast float %3474, %3399
  %3485 = fmul fast float %3474, %3389
  br label %3486

; <label>:3486                                    ; preds = %3476, %3471
  %3487 = phi float [ %3483, %3476 ], [ %3387, %3471 ]
  %3488 = phi float [ %3484, %3476 ], [ %3399, %3471 ]
  %3489 = phi float [ %3485, %3476 ], [ %3389, %3471 ]
  %3490 = phi float [ %3480, %3476 ], [ %3372, %3471 ]
  %3491 = phi float [ %3481, %3476 ], [ %3384, %3471 ]
  %3492 = phi float [ %3482, %3476 ], [ %3374, %3471 ]
  %3493 = phi float [ %3477, %3476 ], [ %3355, %3471 ]
  %3494 = phi float [ %3478, %3476 ], [ %3369, %3471 ]
  %3495 = phi float [ %3479, %3476 ], [ %3357, %3471 ]
  %3496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3368)  ; FMax(a,b)
  %3497 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3383)  ; FMax(a,b)
  %3498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3398)  ; FMax(a,b)
  %3499 = fcmp fast oge float %3156, 0.000000e+00
  %3500 = and i1 %3499, %2927
  %3501 = fcmp fast ole float %3156, 1.000000e+00
  %3502 = and i1 %3501, %3500
  %3503 = fcmp fast oge float %3157, 0.000000e+00
  %3504 = and i1 %3503, %3502
  %3505 = fcmp fast ole float %3157, 1.000000e+00
  %3506 = and i1 %3505, %3504
  br i1 %3506, label %3507, label %3652, !dx.controlflow.hints !86

; <label>:3507                                    ; preds = %3486
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 3
  %3511 = fmul fast float %3509, %3156
  %3512 = fmul fast float %3510, %3157
  %3513 = call float @dx.op.unary.f32(i32 27, float %3511)  ; Round_ni(value)
  %3514 = call float @dx.op.unary.f32(i32 27, float %3512)  ; Round_ni(value)
  %3515 = fptosi float %3513 to i32
  %3516 = fptosi float %3514 to i32
  %3517 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3515, i32 %3516, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3518 = extractvalue %dx.types.ResRet.i32 %3517, 0
  %3519 = and i32 %3518, 65535
  %3520 = lshr i32 %3518, 16
  %3521 = icmp eq i32 %3519, 65535
  br i1 %3521, label %3558, label %3522

; <label>:3522                                    ; preds = %3507
  %3523 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3525 = extractvalue %dx.types.CBufRet.f32 %3508, 1
  %3526 = fmul fast float %3524, %3156
  %3527 = fmul fast float %3525, %3157
  %3528 = fmul fast float %3526, 1.250000e-01
  %3529 = fmul fast float %3527, 1.250000e-01
  %3530 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3531 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3532 = fmul fast float %3530, 8.000000e+00
  %3533 = fmul fast float %3531, 8.000000e+00
  %3534 = and i32 %3518, 255
  %3535 = lshr i32 %3518, 8
  %3536 = and i32 %3535, 255
  %3537 = mul nuw nsw i32 %3534, 9
  %3538 = uitofp i32 %3537 to float
  %3539 = mul nuw nsw i32 %3536, 9
  %3540 = uitofp i32 %3539 to float
  %3541 = fadd fast float %3538, 5.000000e-01
  %3542 = fadd fast float %3541, %3526
  %3543 = fsub fast float %3542, %3532
  %3544 = fadd fast float %3540, 5.000000e-01
  %3545 = fadd fast float %3544, %3527
  %3546 = fsub fast float %3545, %3533
  %3547 = fdiv fast float %3543, %2926
  %3548 = fdiv fast float %3546, %3523
  %3549 = fmul fast float %3184, 4.375000e-01
  %3550 = fadd fast float %3549, 3.125000e-02
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3547, float %3548, float %3550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = extractvalue %dx.types.ResRet.f32 %3551, 1
  %3554 = extractvalue %dx.types.ResRet.f32 %3551, 2
  %3555 = fadd fast float %3552, %3496
  %3556 = fadd fast float %3553, %3497
  %3557 = fadd fast float %3554, %3498
  br label %3558

; <label>:3558                                    ; preds = %3522, %3507
  %3559 = phi float [ %3557, %3522 ], [ %3498, %3507 ]
  %3560 = phi float [ %3556, %3522 ], [ %3497, %3507 ]
  %3561 = phi float [ %3555, %3522 ], [ %3496, %3507 ]
  %3562 = icmp eq i32 %3520, 65535
  br i1 %3562, label %3652, label %3563

; <label>:3563                                    ; preds = %3558
  %3564 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %3565 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3566 = extractvalue %dx.types.CBufRet.f32 %3508, 1
  %3567 = fmul fast float %3565, %3156
  %3568 = fmul fast float %3566, %3157
  %3569 = fmul fast float %3567, 1.250000e-01
  %3570 = fmul fast float %3568, 1.250000e-01
  %3571 = call float @dx.op.unary.f32(i32 27, float %3569)  ; Round_ni(value)
  %3572 = call float @dx.op.unary.f32(i32 27, float %3570)  ; Round_ni(value)
  %3573 = fmul fast float %3571, 8.000000e+00
  %3574 = fmul fast float %3572, 8.000000e+00
  %3575 = fsub fast float %3567, %3573
  %3576 = fsub fast float %3568, %3574
  %3577 = fadd fast float %3575, 5.000000e-01
  %3578 = fadd fast float %3576, 5.000000e-01
  %3579 = and i32 %3520, 255
  %3580 = lshr i32 %3518, 24
  %3581 = mul nuw nsw i32 %3579, 9
  %3582 = uitofp i32 %3581 to float
  %3583 = mul nuw nsw i32 %3580, 9
  %3584 = uitofp i32 %3583 to float
  %3585 = fadd fast float %3577, %3582
  %3586 = fadd fast float %3578, %3584
  %3587 = fdiv fast float %3585, %2926
  %3588 = fdiv fast float %3586, %3564
  %3589 = fmul fast float %3184, 4.375000e-01
  %3590 = fadd fast float %3589, 3.125000e-02
  %3591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3587, float %3588, float %3590, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = fadd fast float %3589, 5.312500e-01
  %3596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3587, float %3588, float %3595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = fmul fast float %3597, 2.000000e+00
  %3601 = fmul fast float %3598, 2.000000e+00
  %3602 = fmul fast float %3599, 2.000000e+00
  %3603 = fadd fast float %3600, -1.000000e+00
  %3604 = fadd fast float %3601, -1.000000e+00
  %3605 = fadd fast float %3602, -1.000000e+00
  %3606 = fmul fast float %3603, %3603
  %3607 = fmul fast float %3604, %3604
  %3608 = fadd fast float %3606, %3607
  %3609 = fmul fast float %3605, %3605
  %3610 = fadd fast float %3608, %3609
  %3611 = call float @dx.op.unary.f32(i32 24, float %3610)  ; Sqrt(value)
  %3612 = fcmp fast ogt float %3611, 0.000000e+00
  br i1 %3612, label %3613, label %3617

; <label>:3613                                    ; preds = %3563
  %3614 = fdiv fast float %3603, %3611
  %3615 = fdiv fast float %3604, %3611
  %3616 = fdiv fast float %3605, %3611
  br label %3617

; <label>:3617                                    ; preds = %3613, %3563
  %3618 = phi float [ %3614, %3613 ], [ 0.000000e+00, %3563 ]
  %3619 = phi float [ %3615, %3613 ], [ 0.000000e+00, %3563 ]
  %3620 = phi float [ %3616, %3613 ], [ 0.000000e+00, %3563 ]
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3624 = fsub fast float %2777, %3622
  %3625 = fsub fast float %2778, %3623
  %3626 = fmul fast float %3624, %3624
  %3627 = fmul fast float %3625, %3625
  %3628 = fadd fast float %3626, %3627
  %3629 = call float @dx.op.unary.f32(i32 24, float %3628)  ; Sqrt(value)
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.CBufRet.f32 %3630, 1
  %3633 = fsub fast float %3629, %3631
  %3634 = fdiv fast float %3633, %3632
  %3635 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  %3636 = fmul fast float %3635, 2.000000e+00
  %3637 = fsub fast float 3.000000e+00, %3636
  %3638 = fmul fast float %3635, %3635
  %3639 = fmul fast float %3638, %3637
  %3640 = call float @dx.op.dot3.f32(i32 55, float %3618, float %3619, float %3620, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3640)  ; FMax(a,b)
  %3642 = fmul fast float %3641, 0x400C5BF8A0000000
  %3643 = fmul fast float %3639, %3592
  %3644 = fmul fast float %3643, %3642
  %3645 = fadd fast float %3644, %3561
  %3646 = fmul fast float %3639, %3593
  %3647 = fmul fast float %3646, %3642
  %3648 = fadd fast float %3647, %3560
  %3649 = fmul fast float %3639, %3594
  %3650 = fmul fast float %3649, %3642
  %3651 = fadd fast float %3650, %3559
  br label %3652

; <label>:3652                                    ; preds = %3617, %3558, %3486
  %3653 = phi float [ %3651, %3617 ], [ %3559, %3558 ], [ %3498, %3486 ]
  %3654 = phi float [ %3648, %3617 ], [ %3560, %3558 ], [ %3497, %3486 ]
  %3655 = phi float [ %3645, %3617 ], [ %3561, %3558 ], [ %3496, %3486 ]
  %3656 = fcmp fast ogt float %3143, %3180
  %3657 = and i1 %3499, %3656
  %3658 = and i1 %3501, %3657
  %3659 = and i1 %3503, %3658
  %3660 = and i1 %3505, %3659
  br i1 %3660, label %3661, label %3718, !dx.controlflow.hints !87

; <label>:3661                                    ; preds = %3652
  %3662 = fmul fast float %3182, 0x3FC24924A0000000
  %3663 = fsub fast float %3143, %3180
  %3664 = fdiv fast float %3663, %3662
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 0
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3672 = fsub fast float %3667, %3655
  %3673 = fsub fast float %3669, %3493
  %3674 = fsub fast float %3670, %3494
  %3675 = fsub fast float %3671, %3495
  %3676 = fmul fast float %3672, %3665
  %3677 = fmul fast float %3673, %3665
  %3678 = fmul fast float %3674, %3665
  %3679 = fmul fast float %3675, %3665
  %3680 = fadd fast float %3676, %3655
  %3681 = fadd fast float %3677, %3493
  %3682 = fadd fast float %3678, %3494
  %3683 = fadd fast float %3679, %3495
  %3684 = extractvalue %dx.types.CBufRet.f32 %3666, 1
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.CBufRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.CBufRet.f32 %3685, 2
  %3689 = fsub fast float %3684, %3654
  %3690 = fsub fast float %3686, %3490
  %3691 = fsub fast float %3687, %3491
  %3692 = fsub fast float %3688, %3492
  %3693 = fmul fast float %3689, %3665
  %3694 = fmul fast float %3690, %3665
  %3695 = fmul fast float %3691, %3665
  %3696 = fmul fast float %3692, %3665
  %3697 = fadd fast float %3693, %3654
  %3698 = fadd fast float %3694, %3490
  %3699 = fadd fast float %3695, %3491
  %3700 = fadd fast float %3696, %3492
  %3701 = extractvalue %dx.types.CBufRet.f32 %3666, 2
  %3702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.CBufRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.CBufRet.f32 %3702, 2
  %3706 = fsub fast float %3701, %3653
  %3707 = fsub fast float %3703, %3487
  %3708 = fsub fast float %3704, %3488
  %3709 = fsub fast float %3705, %3489
  %3710 = fmul fast float %3706, %3665
  %3711 = fmul fast float %3707, %3665
  %3712 = fmul fast float %3708, %3665
  %3713 = fmul fast float %3709, %3665
  %3714 = fadd fast float %3710, %3653
  %3715 = fadd fast float %3711, %3487
  %3716 = fadd fast float %3712, %3488
  %3717 = fadd fast float %3713, %3489
  br label %3718

; <label>:3718                                    ; preds = %3661, %3652
  %3719 = phi float [ %3714, %3661 ], [ %3653, %3652 ]
  %3720 = phi float [ %3715, %3661 ], [ %3487, %3652 ]
  %3721 = phi float [ %3716, %3661 ], [ %3488, %3652 ]
  %3722 = phi float [ %3717, %3661 ], [ %3489, %3652 ]
  %3723 = phi float [ %3697, %3661 ], [ %3654, %3652 ]
  %3724 = phi float [ %3698, %3661 ], [ %3490, %3652 ]
  %3725 = phi float [ %3699, %3661 ], [ %3491, %3652 ]
  %3726 = phi float [ %3700, %3661 ], [ %3492, %3652 ]
  %3727 = phi float [ %3680, %3661 ], [ %3655, %3652 ]
  %3728 = phi float [ %3681, %3661 ], [ %3493, %3652 ]
  %3729 = phi float [ %3682, %3661 ], [ %3494, %3652 ]
  %3730 = phi float [ %3683, %3661 ], [ %3495, %3652 ]
  %3731 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3732 = fmul fast float %3731, %3727
  %3733 = fmul fast float %3731, %3723
  %3734 = fmul fast float %3731, %3719
  %3735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3735, 3
  %3737 = fmul fast float %3732, %3736
  %3738 = fmul fast float %3733, %3736
  %3739 = fmul fast float %3734, %3736
  %3740 = fmul fast float %3728, 1.500000e+00
  %3741 = fmul fast float %3740, %3731
  %3742 = fmul fast float %3741, %3736
  %3743 = fmul fast float %3729, 1.500000e+00
  %3744 = fmul fast float %3743, %3731
  %3745 = fmul fast float %3744, %3736
  %3746 = fmul fast float %3730, 1.500000e+00
  %3747 = fmul fast float %3746, %3731
  %3748 = fmul fast float %3747, %3736
  %3749 = fmul fast float %3724, 1.500000e+00
  %3750 = fmul fast float %3749, %3731
  %3751 = fmul fast float %3750, %3736
  %3752 = fmul fast float %3725, 1.500000e+00
  %3753 = fmul fast float %3752, %3731
  %3754 = fmul fast float %3753, %3736
  %3755 = fmul fast float %3726, 1.500000e+00
  %3756 = fmul fast float %3755, %3731
  %3757 = fmul fast float %3756, %3736
  %3758 = fmul fast float %3720, 1.500000e+00
  %3759 = fmul fast float %3758, %3731
  %3760 = fmul fast float %3759, %3736
  %3761 = fmul fast float %3721, 1.500000e+00
  %3762 = fmul fast float %3761, %3731
  %3763 = fmul fast float %3762, %3736
  %3764 = fmul fast float %3722, 1.500000e+00
  %3765 = fmul fast float %3764, %3731
  %3766 = fmul fast float %3765, %3736
  %3767 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3737)  ; FMax(a,b)
  %3768 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3745, float %3748, float %3742, float %3745, float %3748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3769 = fcmp fast oeq float %3768, 0.000000e+00
  %3770 = fcmp fast oeq float %3767, 0.000000e+00
  %3771 = or i1 %3770, %3769
  br i1 %3771, label %3801, label %3772

; <label>:3772                                    ; preds = %3718
  %3773 = fsub fast float -0.000000e+00, %3748
  %3774 = fsub fast float -0.000000e+00, %3742
  %3775 = call float @dx.op.unary.f32(i32 24, float %3768)  ; Sqrt(value)
  %3776 = fdiv fast float %3775, %3767
  %3777 = fcmp fast ogt float %3776, 0x3FFB6F8900000000
  %3778 = select i1 %3777, float 0x3FFB6F8900000000, float %3776
  %3779 = fmul fast float %3778, 0x3FE8A23460000000
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = call float @dx.op.binary.f32(i32 35, float %3778, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3782 = fmul fast float %3780, %3767
  %3783 = fmul fast float %3781, 0x3FF279A740000000
  %3784 = fadd fast float %3783, -1.000000e+00
  %3785 = call float @dx.op.dot3.f32(i32 55, float %3773, float %3774, float %3745, float %3773, float %3774, float %3745)  ; Dot3(ax,ay,az,bx,by,bz)
  %3786 = call float @dx.op.unary.f32(i32 25, float %3785)  ; Rsqrt(value)
  %3787 = fmul fast float %3786, %3773
  %3788 = fmul fast float %3786, %3774
  %3789 = fmul fast float %3786, %3745
  %3790 = fmul fast float %3784, %3784
  %3791 = fsub fast float 1.000000e+00, %3790
  %3792 = fmul fast float %3781, 0x40005F8BE0000000
  %3793 = fsub fast float 0x400C5BF8A0000000, %3792
  %3794 = fdiv fast float %3782, %3793
  %3795 = fmul fast float %3794, 0x3FEE31C3C0000000
  %3796 = fmul fast float %3795, %3791
  %3797 = fmul fast float %3781, 0x3FDACB7480000000
  %3798 = fadd fast float %3797, 0xBFD7347680000000
  %3799 = fmul fast float %3798, %3794
  %3800 = fmul fast float %3799, %3791
  br label %3801

; <label>:3801                                    ; preds = %3772, %3718
  %3802 = phi float [ %3787, %3772 ], [ 0.000000e+00, %3718 ]
  %3803 = phi float [ %3788, %3772 ], [ 0.000000e+00, %3718 ]
  %3804 = phi float [ %3789, %3772 ], [ 0.000000e+00, %3718 ]
  %3805 = phi float [ %3796, %3772 ], [ 0.000000e+00, %3718 ]
  %3806 = phi float [ %3800, %3772 ], [ 0.000000e+00, %3718 ]
  %3807 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3808 = fmul fast float %3807, %3807
  %3809 = fmul fast float %3808, 0x3FEE471020000000
  %3810 = fadd fast float %3809, 0xBFD42F6020000000
  %3811 = fmul fast float %3767, 0x3FD20DD760000000
  %3812 = fmul fast float %3810, %3806
  %3813 = fmul fast float %3805, 0x3FDF454380000000
  %3814 = fmul fast float %3813, %3807
  %3815 = fadd fast float %3814, %3811
  %3816 = fadd fast float %3815, %3812
  %3817 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %2767, float %2768, float %2769)  ; Dot3(ax,ay,az,bx,by,bz)
  %3818 = fmul fast float %3817, 0x3FDF454380000000
  %3819 = fmul fast float %3817, %3817
  %3820 = fmul fast float %3819, 0x3FEE471020000000
  %3821 = fadd fast float %3820, 0xBFD42F6020000000
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3767, float %3805, float %3806, float 0x3FD20DD760000000, float %3818, float %3821)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3738)  ; FMax(a,b)
  %3824 = call float @dx.op.dot3.f32(i32 55, float %3751, float %3754, float %3757, float %3751, float %3754, float %3757)  ; Dot3(ax,ay,az,bx,by,bz)
  %3825 = fcmp fast oeq float %3824, 0.000000e+00
  %3826 = fcmp fast oeq float %3823, 0.000000e+00
  %3827 = or i1 %3826, %3825
  br i1 %3827, label %3857, label %3828

; <label>:3828                                    ; preds = %3801
  %3829 = fsub fast float -0.000000e+00, %3757
  %3830 = fsub fast float -0.000000e+00, %3751
  %3831 = call float @dx.op.unary.f32(i32 24, float %3824)  ; Sqrt(value)
  %3832 = fdiv fast float %3831, %3823
  %3833 = fcmp fast ogt float %3832, 0x3FFB6F8900000000
  %3834 = select i1 %3833, float 0x3FFB6F8900000000, float %3832
  %3835 = fmul fast float %3834, 0x3FE8A23460000000
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = call float @dx.op.binary.f32(i32 35, float %3834, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3838 = fmul fast float %3836, %3823
  %3839 = fmul fast float %3837, 0x3FF279A740000000
  %3840 = fadd fast float %3839, -1.000000e+00
  %3841 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3754, float %3829, float %3830, float %3754)  ; Dot3(ax,ay,az,bx,by,bz)
  %3842 = call float @dx.op.unary.f32(i32 25, float %3841)  ; Rsqrt(value)
  %3843 = fmul fast float %3842, %3829
  %3844 = fmul fast float %3842, %3830
  %3845 = fmul fast float %3842, %3754
  %3846 = fmul fast float %3840, %3840
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3837, 0x40005F8BE0000000
  %3849 = fsub fast float 0x400C5BF8A0000000, %3848
  %3850 = fdiv fast float %3838, %3849
  %3851 = fmul fast float %3850, 0x3FEE31C3C0000000
  %3852 = fmul fast float %3851, %3847
  %3853 = fmul fast float %3837, 0x3FDACB7480000000
  %3854 = fadd fast float %3853, 0xBFD7347680000000
  %3855 = fmul fast float %3854, %3850
  %3856 = fmul fast float %3855, %3847
  br label %3857

; <label>:3857                                    ; preds = %3828, %3801
  %3858 = phi float [ %3843, %3828 ], [ 0.000000e+00, %3801 ]
  %3859 = phi float [ %3844, %3828 ], [ 0.000000e+00, %3801 ]
  %3860 = phi float [ %3845, %3828 ], [ 0.000000e+00, %3801 ]
  %3861 = phi float [ %3852, %3828 ], [ 0.000000e+00, %3801 ]
  %3862 = phi float [ %3856, %3828 ], [ 0.000000e+00, %3801 ]
  %3863 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = fmul fast float %3863, %3863
  %3865 = fmul fast float %3864, 0x3FEE471020000000
  %3866 = fadd fast float %3865, 0xBFD42F6020000000
  %3867 = fmul fast float %3823, 0x3FD20DD760000000
  %3868 = fmul fast float %3866, %3862
  %3869 = fmul fast float %3861, 0x3FDF454380000000
  %3870 = fmul fast float %3869, %3863
  %3871 = fadd fast float %3870, %3867
  %3872 = fadd fast float %3871, %3868
  %3873 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float %2767, float %2768, float %2769)  ; Dot3(ax,ay,az,bx,by,bz)
  %3874 = fmul fast float %3873, 0x3FDF454380000000
  %3875 = fmul fast float %3873, %3873
  %3876 = fmul fast float %3875, 0x3FEE471020000000
  %3877 = fadd fast float %3876, 0xBFD42F6020000000
  %3878 = call float @dx.op.dot3.f32(i32 55, float %3823, float %3861, float %3862, float 0x3FD20DD760000000, float %3874, float %3877)  ; Dot3(ax,ay,az,bx,by,bz)
  %3879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3739)  ; FMax(a,b)
  %3880 = call float @dx.op.dot3.f32(i32 55, float %3760, float %3763, float %3766, float %3760, float %3763, float %3766)  ; Dot3(ax,ay,az,bx,by,bz)
  %3881 = fcmp fast oeq float %3880, 0.000000e+00
  %3882 = fcmp fast oeq float %3879, 0.000000e+00
  %3883 = or i1 %3882, %3881
  br i1 %3883, label %3913, label %3884

; <label>:3884                                    ; preds = %3857
  %3885 = fsub fast float -0.000000e+00, %3766
  %3886 = fsub fast float -0.000000e+00, %3760
  %3887 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %3888 = fdiv fast float %3887, %3879
  %3889 = fcmp fast ogt float %3888, 0x3FFB6F8900000000
  %3890 = select i1 %3889, float 0x3FFB6F8900000000, float %3888
  %3891 = fmul fast float %3890, 0x3FE8A23460000000
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = call float @dx.op.binary.f32(i32 35, float %3890, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3894 = fmul fast float %3892, %3879
  %3895 = fmul fast float %3893, 0x3FF279A740000000
  %3896 = fadd fast float %3895, -1.000000e+00
  %3897 = call float @dx.op.dot3.f32(i32 55, float %3885, float %3886, float %3763, float %3885, float %3886, float %3763)  ; Dot3(ax,ay,az,bx,by,bz)
  %3898 = call float @dx.op.unary.f32(i32 25, float %3897)  ; Rsqrt(value)
  %3899 = fmul fast float %3898, %3885
  %3900 = fmul fast float %3898, %3886
  %3901 = fmul fast float %3898, %3763
  %3902 = fmul fast float %3896, %3896
  %3903 = fsub fast float 1.000000e+00, %3902
  %3904 = fmul fast float %3893, 0x40005F8BE0000000
  %3905 = fsub fast float 0x400C5BF8A0000000, %3904
  %3906 = fdiv fast float %3894, %3905
  %3907 = fmul fast float %3906, 0x3FEE31C3C0000000
  %3908 = fmul fast float %3907, %3903
  %3909 = fmul fast float %3893, 0x3FDACB7480000000
  %3910 = fadd fast float %3909, 0xBFD7347680000000
  %3911 = fmul fast float %3910, %3906
  %3912 = fmul fast float %3911, %3903
  br label %3913

; <label>:3913                                    ; preds = %3884, %3857
  %3914 = phi float [ %3899, %3884 ], [ 0.000000e+00, %3857 ]
  %3915 = phi float [ %3900, %3884 ], [ 0.000000e+00, %3857 ]
  %3916 = phi float [ %3901, %3884 ], [ 0.000000e+00, %3857 ]
  %3917 = phi float [ %3908, %3884 ], [ 0.000000e+00, %3857 ]
  %3918 = phi float [ %3912, %3884 ], [ 0.000000e+00, %3857 ]
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3914, float %3915, float %3916, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = fmul fast float %3919, %3919
  %3921 = fmul fast float %3920, 0x3FEE471020000000
  %3922 = fadd fast float %3921, 0xBFD42F6020000000
  %3923 = fmul fast float %3879, 0x3FD20DD760000000
  %3924 = fmul fast float %3922, %3918
  %3925 = fmul fast float %3917, 0x3FDF454380000000
  %3926 = fmul fast float %3925, %3919
  %3927 = fadd fast float %3926, %3923
  %3928 = fadd fast float %3927, %3924
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3914, float %3915, float %3916, float %2767, float %2768, float %2769)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = fmul fast float %3929, 0x3FDF454380000000
  %3931 = fmul fast float %3929, %3929
  %3932 = fmul fast float %3931, 0x3FEE471020000000
  %3933 = fadd fast float %3932, 0xBFD42F6020000000
  %3934 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3917, float %3918, float 0x3FD20DD760000000, float %3930, float %3933)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = call float @dx.op.binary.f32(i32 35, float %3816, float 0.000000e+00)  ; FMax(a,b)
  %3936 = call float @dx.op.binary.f32(i32 35, float %3872, float 0.000000e+00)  ; FMax(a,b)
  %3937 = call float @dx.op.binary.f32(i32 35, float %3928, float 0.000000e+00)  ; FMax(a,b)
  %3938 = call float @dx.op.binary.f32(i32 35, float %3822, float 0.000000e+00)  ; FMax(a,b)
  %3939 = call float @dx.op.binary.f32(i32 35, float %3878, float 0.000000e+00)  ; FMax(a,b)
  %3940 = call float @dx.op.binary.f32(i32 35, float %3934, float 0.000000e+00)  ; FMax(a,b)
  %3941 = fsub fast float %3137, %3935
  %3942 = fsub fast float %3138, %3936
  %3943 = fsub fast float %3139, %3937
  %3944 = fmul fast float %3941, %2818
  %3945 = fmul fast float %3942, %2818
  %3946 = fmul fast float %3943, %2818
  %3947 = fadd fast float %3944, %3935
  %3948 = fadd fast float %3945, %3936
  %3949 = fadd fast float %3946, %3937
  %3950 = fsub fast float %3134, %3938
  %3951 = fsub fast float %3135, %3939
  %3952 = fsub fast float %3136, %3940
  %3953 = fmul fast float %3950, %2818
  %3954 = fmul fast float %3951, %2818
  %3955 = fmul fast float %3952, %2818
  %3956 = fadd fast float %3953, %3938
  %3957 = fadd fast float %3954, %3939
  %3958 = fadd fast float %3955, %3940
  br label %3959

; <label>:3959                                    ; preds = %3913, %3133
  %3960 = phi float [ %3956, %3913 ], [ %3134, %3133 ]
  %3961 = phi float [ %3957, %3913 ], [ %3135, %3133 ]
  %3962 = phi float [ %3958, %3913 ], [ %3136, %3133 ]
  %3963 = phi float [ %3947, %3913 ], [ %3137, %3133 ]
  %3964 = phi float [ %3948, %3913 ], [ %3138, %3133 ]
  %3965 = phi float [ %3949, %3913 ], [ %3139, %3133 ]
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 0
  %3968 = call float @dx.op.binary.f32(i32 36, float %2751, float %3967)  ; FMin(a,b)
  %3969 = fsub fast float 1.000000e+00, %2770
  %3970 = fmul fast float %3968, %3969
  %3971 = fsub fast float 1.000000e+00, %3970
  %3972 = bitcast float %3971 to i32
  %3973 = sub nsw i32 2129859010, %3972
  %3974 = bitcast i32 %3973 to float
  %3975 = call float @dx.op.binary.f32(i32 36, float %2752, float %3967)  ; FMin(a,b)
  %3976 = fmul fast float %3975, %3969
  %3977 = fsub fast float 1.000000e+00, %3976
  %3978 = bitcast float %3977 to i32
  %3979 = sub nsw i32 2129859010, %3978
  %3980 = bitcast i32 %3979 to float
  %3981 = call float @dx.op.binary.f32(i32 36, float %2753, float %3967)  ; FMin(a,b)
  %3982 = fmul fast float %3981, %3969
  %3983 = fsub fast float 1.000000e+00, %3982
  %3984 = bitcast float %3983 to i32
  %3985 = sub nsw i32 2129859010, %3984
  %3986 = bitcast i32 %3985 to float
  %3987 = fmul fast float %3963, %2770
  %3988 = fmul fast float %3987, %3974
  %3989 = fmul fast float %3964, %2770
  %3990 = fmul fast float %3989, %3980
  %3991 = fmul fast float %3965, %2770
  %3992 = fmul fast float %3991, %3986
  %3993 = call float @dx.op.binary.f32(i32 36, float %2748, float %3967)  ; FMin(a,b)
  %3994 = fmul fast float %3993, %3969
  %3995 = fsub fast float 1.000000e+00, %3994
  %3996 = bitcast float %3995 to i32
  %3997 = sub nsw i32 2129859010, %3996
  %3998 = bitcast i32 %3997 to float
  %3999 = call float @dx.op.binary.f32(i32 36, float %2749, float %3967)  ; FMin(a,b)
  %4000 = fmul fast float %3999, %3969
  %4001 = fsub fast float 1.000000e+00, %4000
  %4002 = bitcast float %4001 to i32
  %4003 = sub nsw i32 2129859010, %4002
  %4004 = bitcast i32 %4003 to float
  %4005 = call float @dx.op.binary.f32(i32 36, float %2759, float %3967)  ; FMin(a,b)
  %4006 = fmul fast float %4005, %3969
  %4007 = fsub fast float 1.000000e+00, %4006
  %4008 = bitcast float %4007 to i32
  %4009 = sub nsw i32 2129859010, %4008
  %4010 = bitcast i32 %4009 to float
  %4011 = fmul fast float %3960, %2770
  %4012 = fmul fast float %4011, %3998
  %4013 = fmul fast float %3961, %2770
  %4014 = fmul fast float %4013, %4004
  %4015 = fmul fast float %3962, %2770
  %4016 = fmul fast float %4015, %4010
  %4017 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3990, float %3992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = select i1 %189, float 0.000000e+00, float %3988
  %4019 = select i1 %189, float %4017, float %3990
  %4020 = select i1 %189, float 0.000000e+00, float %3992
  %4021 = call float @dx.op.dot3.f32(i32 55, float %4012, float %4014, float %4016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = select i1 %189, float 0.000000e+00, float %4012
  %4023 = select i1 %189, float %4021, float %4014
  %4024 = select i1 %189, float 0.000000e+00, float %4016
  %4025 = fmul fast float %2761, 9.843750e-01
  %4026 = fmul fast float %2757, 9.843750e-01
  %4027 = fadd fast float %4025, 7.812500e-03
  %4028 = fadd fast float %4026, 7.812500e-03
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4027, float %4028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4032 = fmul fast float %4030, %2748
  %4033 = fmul fast float %4030, %2749
  %4034 = fmul fast float %4030, %2759
  %4035 = fadd fast float %4032, %4031
  %4036 = fadd fast float %4033, %4031
  %4037 = fadd fast float %4034, %4031
  %4038 = fcmp fast ogt float %2125, 0.000000e+00
  br i1 %4038, label %4039, label %4065

; <label>:4039                                    ; preds = %3959
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2125, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4044 = fadd fast float %4041, -5.000000e-01
  %4045 = fadd fast float %4042, -5.000000e-01
  %4046 = fadd fast float %4043, -5.000000e-01
  %4047 = fsub fast float 1.000000e+00, %2748
  %4048 = fsub fast float 1.000000e+00, %2749
  %4049 = fsub fast float 1.000000e+00, %2759
  %4050 = fmul fast float %2748, 4.000000e+00
  %4051 = fmul fast float %4050, %4047
  %4052 = fmul fast float %4051, %4044
  %4053 = fmul fast float %2749, 4.000000e+00
  %4054 = fmul fast float %4053, %4048
  %4055 = fmul fast float %4054, %4045
  %4056 = fmul fast float %2759, 4.000000e+00
  %4057 = fmul fast float %4056, %4049
  %4058 = fmul fast float %4057, %4046
  %4059 = fadd fast float %4052, %4035
  %4060 = fadd fast float %4055, %4036
  %4061 = fadd fast float %4058, %4037
  %4062 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4063 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4064 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  br label %4065

; <label>:4065                                    ; preds = %4039, %3959
  %4066 = phi float [ %4062, %4039 ], [ %4035, %3959 ]
  %4067 = phi float [ %4063, %4039 ], [ %4036, %3959 ]
  %4068 = phi float [ %4064, %4039 ], [ %4037, %3959 ]
  %4069 = call float @dx.op.binary.f32(i32 35, float %4067, float %4068)  ; FMax(a,b)
  %4070 = call float @dx.op.binary.f32(i32 35, float %4066, float %4069)  ; FMax(a,b)
  %4071 = fsub fast float 1.000000e+00, %4070
  %4072 = fmul fast float %4071, %4018
  %4073 = fmul fast float %4071, %4019
  %4074 = fmul fast float %4071, %4020
  %4075 = call float @dx.op.dot3.f32(i32 55, float %2751, float %2752, float %2753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = fcmp fast ogt float %4075, 0x3E7FF19E20000000
  %4077 = fdiv fast float 1.000000e+00, %4075
  %4078 = select i1 %4076, float %4077, float 0.000000e+00
  %4079 = fmul fast float %4078, %2751
  %4080 = fmul fast float %4078, %2752
  %4081 = fmul fast float %4078, %2753
  %4082 = fadd fast float %4079, -1.000000e+00
  %4083 = fadd fast float %4080, -1.000000e+00
  %4084 = fadd fast float %4081, -1.000000e+00
  %4085 = fmul fast float %4082, 5.000000e-01
  %4086 = fmul fast float %4083, 5.000000e-01
  %4087 = fmul fast float %4084, 5.000000e-01
  %4088 = fadd fast float %4085, 1.000000e+00
  %4089 = fadd fast float %4086, 1.000000e+00
  %4090 = fadd fast float %4087, 1.000000e+00
  %4091 = fmul fast float %4066, %4022
  %4092 = fmul fast float %4067, %4023
  %4093 = fmul fast float %4068, %4024
  %4094 = fsub fast float 1.000000e+00, %2761
  %4095 = bitcast float %4094 to i32
  %4096 = sitofp i32 %4095 to float
  %4097 = fmul fast float %4096, 5.000000e+00
  %4098 = fadd fast float %4097, 0xC1EFBF8940000000
  %4099 = fptosi float %4098 to i32
  %4100 = bitcast i32 %4099 to float
  %4101 = fmul fast float %4100, %2124
  %4102 = fmul fast float %4018, %4101
  %4103 = fmul fast float %4102, %4071
  %4104 = fmul fast float %4103, %4088
  %4105 = fmul fast float %4019, %4101
  %4106 = fmul fast float %4105, %4071
  %4107 = fmul fast float %4106, %4089
  %4108 = fmul fast float %4020, %4101
  %4109 = fmul fast float %4108, %4071
  %4110 = fmul fast float %4109, %4090
  %4111 = fmul fast float %4072, %2145
  %4112 = fmul fast float %4073, %2145
  %4113 = fmul fast float %4074, %2145
  %4114 = fadd fast float %4091, %2126
  %4115 = fadd fast float %4114, %4104
  %4116 = fmul fast float %4115, %2145
  %4117 = fadd fast float %4092, %2127
  %4118 = fadd fast float %4117, %4107
  %4119 = fmul fast float %4118, %2145
  %4120 = fadd fast float %4093, %2128
  %4121 = fadd fast float %4120, %4110
  %4122 = fmul fast float %4121, %2145
  %4123 = bitcast i32 %2773 to float
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4126 = fcmp fast oeq float %4125, 0.000000e+00
  br i1 %4126, label %4354, label %4127

; <label>:4127                                    ; preds = %4065
  %4128 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4129 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4130 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4138 = call float @dx.op.dot3.f32(i32 55, float %4132, float %4133, float %4134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4139 = select i1 %189, float %4136, float %4132
  %4140 = select i1 %189, float %4138, float %4133
  %4141 = select i1 %189, float %4137, float %4134
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4144 = fcmp fast une float %4143, 0.000000e+00
  br i1 %4144, label %4145, label %4162

; <label>:4145                                    ; preds = %4127
  %4146 = fptoui float %71 to i32
  %4147 = fptoui float %72 to i32
  %4148 = lshr i32 %4146, 4
  %4149 = lshr i32 %4147, 4
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = fptoui float %4151 to i32
  %4153 = add i32 %4152, 15
  %4154 = lshr i32 %4153, 4
  %4155 = mul i32 %4154, %4149
  %4156 = add i32 %4155, %4148
  %4157 = shl i32 %4156, 3
  %4158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.i32 %4158, 0
  %4160 = and i32 %4159, -268435456
  %4161 = icmp eq i32 %4160, -1342177280
  br i1 %4161, label %4172, label %4162

; <label>:4162                                    ; preds = %4145, %4127
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4166 = fmul fast float %4164, %71
  %4167 = fmul fast float %4165, %72
  %4168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4166, float %4167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.ResRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.ResRet.f32 %4168, 2
  br label %4172

; <label>:4172                                    ; preds = %4162, %4145
  %4173 = phi float [ %4169, %4162 ], [ 0.000000e+00, %4145 ]
  %4174 = phi float [ %4170, %4162 ], [ 0.000000e+00, %4145 ]
  %4175 = phi float [ %4171, %4162 ], [ 0.000000e+00, %4145 ]
  %4176 = call float @dx.op.binary.f32(i32 36, float %4174, float %4175)  ; FMin(a,b)
  %4177 = call float @dx.op.binary.f32(i32 36, float %4173, float %4176)  ; FMin(a,b)
  %4178 = fcmp fast ogt float %4177, 0.000000e+00
  br i1 %4178, label %4179, label %4354, !dx.controlflow.hints !88

; <label>:4179                                    ; preds = %4172
  %4180 = fmul fast float %4173, %4139
  %4181 = fmul fast float %4174, %4140
  %4182 = fmul fast float %4175, %4141
  %4183 = fsub fast float %4128, %2747
  %4184 = fsub fast float %4129, %2746
  %4185 = fsub fast float %4130, %2745
  %4186 = call float @dx.op.dot3.f32(i32 55, float %4183, float %4184, float %4185, float %4183, float %4184, float %4185)  ; Dot3(ax,ay,az,bx,by,bz)
  %4187 = call float @dx.op.unary.f32(i32 25, float %4186)  ; Rsqrt(value)
  %4188 = fmul fast float %4187, %4183
  %4189 = fmul fast float %4187, %4184
  %4190 = fmul fast float %4187, %4185
  %4191 = call float @dx.op.dot3.f32(i32 55, float %4128, float %4129, float %4130, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4192 = call float @dx.op.dot3.f32(i32 55, float %2744, float %2743, float %2742, float %4188, float %4189, float %4190)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4194 = fmul fast float %4193, %4193
  %4195 = fmul fast float %4194, %4123
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = fmul fast float %4196, %4193
  %4198 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %4188, float %4189, float %4190)  ; Dot3(ax,ay,az,bx,by,bz)
  %4199 = fmul fast float %4198, %4198
  %4200 = call float @dx.op.unary.f32(i32 6, float %4191)  ; FAbs(value)
  %4201 = fsub fast float 1.000000e+00, %2757
  %4202 = call float @dx.op.binary.f32(i32 35, float %4201, float 0x3F847AE140000000)  ; FMax(a,b)
  %4203 = fmul fast float %4202, %4202
  %4204 = fmul fast float %4203, %4203
  %4205 = fsub fast float 1.000000e+00, %4204
  %4206 = fmul fast float %2761, %2761
  %4207 = fmul fast float %4206, %4205
  %4208 = fadd fast float %4207, %4204
  %4209 = bitcast float %4208 to i32
  %4210 = ashr i32 %4209, 1
  %4211 = add nsw i32 %4210, 532487669
  %4212 = bitcast i32 %4211 to float
  %4213 = fadd fast float %4212, %2761
  %4214 = fmul fast float %4204, %4199
  %4215 = fsub fast float 1.000000e+00, %4199
  %4216 = fadd fast float %4215, %4214
  %4217 = fmul fast float %4200, %4200
  %4218 = fmul fast float %4217, %4205
  %4219 = fadd fast float %4218, %4204
  %4220 = bitcast float %4219 to i32
  %4221 = ashr i32 %4220, 1
  %4222 = add nsw i32 %4221, 532487669
  %4223 = bitcast i32 %4222 to float
  %4224 = fadd fast float %4223, %4200
  %4225 = fmul fast float %4216, %4216
  %4226 = fmul fast float %4225, %4213
  %4227 = fmul fast float %4226, %4224
  %4228 = fdiv fast float 0x3FF0A00000000000, %4227
  %4229 = fmul fast float %4228, %4204
  %4230 = call float @dx.op.unary.f32(i32 6, float %4192)  ; FAbs(value)
  %4231 = fsub fast float 1.000000e+00, %4230
  %4232 = bitcast float %4231 to i32
  %4233 = sitofp i32 %4232 to float
  %4234 = fmul fast float %4233, 5.000000e+00
  %4235 = fadd fast float %4234, 0xC1EFBF8940000000
  %4236 = fptosi float %4235 to i32
  %4237 = bitcast i32 %4236 to float
  %4238 = fsub fast float 1.000000e+00, %2748
  %4239 = fsub fast float 1.000000e+00, %2749
  %4240 = fsub fast float 1.000000e+00, %2759
  %4241 = fmul fast float %4237, %4238
  %4242 = fmul fast float %4237, %4239
  %4243 = fmul fast float %4237, %4240
  %4244 = fadd fast float %4241, %2748
  %4245 = fadd fast float %4242, %2749
  %4246 = fadd fast float %4243, %2759
  br i1 %4038, label %4247, label %4270

; <label>:4247                                    ; preds = %4179
  %4248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2125, float %4230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4252 = fadd fast float %4249, -5.000000e-01
  %4253 = fadd fast float %4250, -5.000000e-01
  %4254 = fadd fast float %4251, -5.000000e-01
  %4255 = fmul fast float %2748, 4.000000e+00
  %4256 = fmul fast float %4255, %4238
  %4257 = fmul fast float %4256, %4252
  %4258 = fmul fast float %2749, 4.000000e+00
  %4259 = fmul fast float %4258, %4239
  %4260 = fmul fast float %4259, %4253
  %4261 = fmul fast float %2759, 4.000000e+00
  %4262 = fmul fast float %4261, %4240
  %4263 = fmul fast float %4262, %4254
  %4264 = fadd fast float %4257, %4244
  %4265 = fadd fast float %4260, %4245
  %4266 = fadd fast float %4263, %4246
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  br label %4270

; <label>:4270                                    ; preds = %4247, %4179
  %4271 = phi float [ %4267, %4247 ], [ %4244, %4179 ]
  %4272 = phi float [ %4268, %4247 ], [ %4245, %4179 ]
  %4273 = phi float [ %4269, %4247 ], [ %4246, %4179 ]
  %4274 = fmul fast float %4191, 9.843750e-01
  %4275 = fadd fast float %4274, 7.812500e-03
  %4276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4275, float %4028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 2
  %4278 = extractvalue %dx.types.ResRet.f32 %4276, 3
  %4279 = fmul fast float %4277, %2748
  %4280 = fmul fast float %4277, %2749
  %4281 = fmul fast float %4277, %2759
  %4282 = fadd fast float %4279, %4278
  %4283 = fadd fast float %4280, %4278
  %4284 = fadd fast float %4281, %4278
  br i1 %4038, label %4285, label %4308

; <label>:4285                                    ; preds = %4270
  %4286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2125, float %4191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.ResRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.ResRet.f32 %4286, 2
  %4290 = fadd fast float %4287, -5.000000e-01
  %4291 = fadd fast float %4288, -5.000000e-01
  %4292 = fadd fast float %4289, -5.000000e-01
  %4293 = fmul fast float %2748, 4.000000e+00
  %4294 = fmul fast float %4293, %4238
  %4295 = fmul fast float %4294, %4290
  %4296 = fmul fast float %2749, 4.000000e+00
  %4297 = fmul fast float %4296, %4239
  %4298 = fmul fast float %4297, %4291
  %4299 = fmul fast float %2759, 4.000000e+00
  %4300 = fmul fast float %4299, %4240
  %4301 = fmul fast float %4300, %4292
  %4302 = fadd fast float %4295, %4282
  %4303 = fadd fast float %4298, %4283
  %4304 = fadd fast float %4301, %4284
  %4305 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4306 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4307 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  br label %4308

; <label>:4308                                    ; preds = %4285, %4270
  %4309 = phi float [ %4305, %4285 ], [ %4282, %4270 ]
  %4310 = phi float [ %4306, %4285 ], [ %4283, %4270 ]
  %4311 = phi float [ %4307, %4285 ], [ %4284, %4270 ]
  %4312 = call float @dx.op.binary.f32(i32 35, float %4310, float %4311)  ; FMax(a,b)
  %4313 = call float @dx.op.binary.f32(i32 35, float %4309, float %4312)  ; FMax(a,b)
  %4314 = fsub fast float 1.000000e+00, %4313
  %4315 = fmul fast float %4271, %4229
  %4316 = fmul fast float %4272, %4229
  %4317 = fmul fast float %4273, %4229
  %4318 = fsub fast float 1.000000e+00, %4192
  %4319 = bitcast float %4318 to i32
  %4320 = sitofp i32 %4319 to float
  %4321 = fmul fast float %4320, 5.000000e+00
  %4322 = fadd fast float %4321, 0xC1EFBF8940000000
  %4323 = fptosi float %4322 to i32
  %4324 = bitcast i32 %4323 to float
  %4325 = fmul fast float %4324, %2124
  %4326 = fmul fast float %4314, %4325
  %4327 = fmul fast float %4326, %4088
  %4328 = fmul fast float %4326, %4089
  %4329 = fmul fast float %4326, %4090
  %4330 = fadd fast float %4327, %4315
  %4331 = fadd fast float %4328, %4316
  %4332 = fadd fast float %4329, %4317
  %4333 = fmul fast float %4197, %4180
  %4334 = fmul fast float %4333, %4314
  %4335 = fmul fast float %4197, %4181
  %4336 = fmul fast float %4335, %4314
  %4337 = fmul fast float %4197, %4182
  %4338 = fmul fast float %4337, %4314
  %4339 = fmul fast float %4333, %4330
  %4340 = fmul fast float %4335, %4331
  %4341 = fmul fast float %4337, %4332
  %4342 = fadd fast float %4334, %4072
  %4343 = fmul fast float %4342, %2145
  %4344 = fadd fast float %4336, %4073
  %4345 = fmul fast float %4344, %2145
  %4346 = fadd fast float %4338, %4074
  %4347 = fmul fast float %4346, %2145
  %4348 = fadd fast float %4339, %4115
  %4349 = fmul fast float %4348, %2145
  %4350 = fadd fast float %4340, %4118
  %4351 = fmul fast float %4350, %2145
  %4352 = fadd fast float %4341, %4121
  %4353 = fmul fast float %4352, %2145
  br label %4354

; <label>:4354                                    ; preds = %4308, %4172, %4065
  %4355 = phi float [ %4116, %4065 ], [ %4116, %4172 ], [ %4349, %4308 ]
  %4356 = phi float [ %4119, %4065 ], [ %4119, %4172 ], [ %4351, %4308 ]
  %4357 = phi float [ %4122, %4065 ], [ %4122, %4172 ], [ %4353, %4308 ]
  %4358 = phi float [ %4111, %4065 ], [ %4111, %4172 ], [ %4343, %4308 ]
  %4359 = phi float [ %4112, %4065 ], [ %4112, %4172 ], [ %4345, %4308 ]
  %4360 = phi float [ %4113, %4065 ], [ %4113, %4172 ], [ %4347, %4308 ]
  %4361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.i32 %4361, 0
  %4363 = icmp eq i32 %4362, 0
  br i1 %4363, label %4798, label %4364

; <label>:4364                                    ; preds = %4354
  %4365 = fptoui float %71 to i32
  %4366 = fptoui float %72 to i32
  %4367 = lshr i32 %4365, 4
  %4368 = lshr i32 %4366, 4
  %4369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.i32 %4369, 0
  %4371 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4368, i32 %4370, i32 %4367)  ; UMad(a,b,c)
  %4372 = add nsw i32 %4362, -1
  %4373 = call i32 @dx.op.binary.i32(i32 37, i32 %4372, i32 0)  ; IMax(a,b)
  %4374 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4375 = fptoui float %4374 to i32
  %4376 = lshr i32 %4375, 5
  %4377 = call i32 @dx.op.binary.i32(i32 40, i32 %4376, i32 8191)  ; UMin(a,b)
  %4378 = shl i32 %4377, 2
  %4379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4378, i32 undef)  ; BufferLoad(srv,index,wot)
  %4380 = extractvalue %dx.types.ResRet.i32 %4379, 0
  %4381 = lshr i32 %4380, 16
  %4382 = and i32 %4380, 65535
  %4383 = lshr i32 %4380, 21
  %4384 = lshr i32 %4382, 5
  %4385 = call i32 @dx.op.binary.i32(i32 40, i32 %4384, i32 %4373)  ; UMin(a,b)
  %4386 = icmp ugt i32 %4383, %4385
  br i1 %4386, label %4798, label %4387

; <label>:4387                                    ; preds = %4364
  br label %4388

; <label>:4388                                    ; preds = %4788, %4387
  %4389 = phi i32 [ %4795, %4788 ], [ %4383, %4387 ]
  %4390 = phi float [ %4789, %4788 ], [ %4355, %4387 ]
  %4391 = phi float [ %4790, %4788 ], [ %4356, %4387 ]
  %4392 = phi float [ %4791, %4788 ], [ %4357, %4387 ]
  %4393 = phi float [ %4792, %4788 ], [ %4358, %4387 ]
  %4394 = phi float [ %4793, %4788 ], [ %4359, %4387 ]
  %4395 = phi float [ %4794, %4788 ], [ %4360, %4387 ]
  %4396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.i32 %4396, 0
  %4398 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4371, i32 %4397, i32 %4389)  ; UMad(a,b,c)
  %4399 = shl i32 %4398, 2
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = shl i32 %4389, 5
  %4403 = sub nsw i32 %4381, %4402
  %4404 = call i32 @dx.op.binary.i32(i32 37, i32 %4403, i32 0)  ; IMax(a,b)
  %4405 = call i32 @dx.op.binary.i32(i32 38, i32 %4404, i32 31)  ; IMin(a,b)
  %4406 = sub nsw i32 1, %4381
  %4407 = add nsw i32 %4406, %4382
  %4408 = call i32 @dx.op.binary.i32(i32 37, i32 %4407, i32 0)  ; IMax(a,b)
  %4409 = call i32 @dx.op.binary.i32(i32 38, i32 %4408, i32 32)  ; IMin(a,b)
  %4410 = and i32 %4409, 31
  %4411 = shl i32 -1, %4410
  %4412 = xor i32 %4411, -1
  %4413 = and i32 %4405, 31
  %4414 = shl i32 %4412, %4413
  %4415 = icmp eq i32 %4409, 32
  %4416 = select i1 %4415, i32 -1, i32 %4414
  %4417 = and i32 %4416, %4401
  %4418 = icmp eq i32 %4417, 0
  br i1 %4418, label %4788, label %4419

; <label>:4419                                    ; preds = %4388
  br label %4420

; <label>:4420                                    ; preds = %4500, %4419
  %4421 = phi i32 [ %4432, %4500 ], [ %4417, %4419 ]
  %4422 = phi float [ %4501, %4500 ], [ %4390, %4419 ]
  %4423 = phi float [ %4502, %4500 ], [ %4391, %4419 ]
  %4424 = phi float [ %4503, %4500 ], [ %4392, %4419 ]
  %4425 = phi float [ %4504, %4500 ], [ %4393, %4419 ]
  %4426 = phi float [ %4505, %4500 ], [ %4394, %4419 ]
  %4427 = phi float [ %4506, %4500 ], [ %4395, %4419 ]
  %4428 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4421)  ; FirstbitLo(value)
  %4429 = add i32 %4428, %4402
  %4430 = and i32 %4428, 31
  %4431 = shl i32 1, %4430
  %4432 = xor i32 %4431, %4421
  %4433 = mul i32 %4429, 112
  %4434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.ResRet.f32 %4434, 1
  %4437 = extractvalue %dx.types.ResRet.f32 %4434, 2
  %4438 = or i32 %4433, 12
  %4439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = add i32 %4433, 44
  %4442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = add i32 %4433, 48
  %4445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = extractvalue %dx.types.ResRet.f32 %4445, 1
  %4448 = extractvalue %dx.types.ResRet.f32 %4445, 2
  %4449 = add i32 %4433, 80
  %4450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 1
  %4452 = extractvalue %dx.types.ResRet.f32 %4450, 2
  %4453 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4436, float %4437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4454 = select i1 %189, float %4451, float %4435
  %4455 = select i1 %189, float %4453, float %4436
  %4456 = select i1 %189, float %4452, float %4437
  %4457 = fsub fast float %4446, %118
  %4458 = fsub fast float %4447, %119
  %4459 = fsub fast float %4448, %120
  %4460 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4458, float %4459, float %4457, float %4458, float %4459)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = call float @dx.op.unary.f32(i32 24, float %4460)  ; Sqrt(value)
  %4462 = fdiv fast float 1.000000e+00, %4461
  %4463 = fmul fast float %4462, %4457
  %4464 = fmul fast float %4462, %4458
  %4465 = fmul fast float %4462, %4459
  %4466 = fadd fast float %4461, %4440
  %4467 = fdiv fast float 1.000000e+00, %4466
  %4468 = fmul float %4443, %4467
  %4469 = fmul float %4468, %4468
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = and i32 %4431, %4417
  %4472 = icmp eq i32 %4471, 0
  br i1 %4472, label %4495, label %4473, !dx.controlflow.hints !89

; <label>:4473                                    ; preds = %4420
  %4474 = lshr i32 %4365, 5
  %4475 = lshr i32 %4366, 5
  %4476 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4474, i32 %4475, i32 %4429, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4477 = extractvalue %dx.types.ResRet.i32 %4476, 0
  %4478 = and i32 %4477, 3
  %4479 = icmp eq i32 %4478, 0
  %4480 = select i1 %4479, float 1.000000e+00, float 0.000000e+00
  %4481 = icmp eq i32 %4478, 3
  br i1 %4481, label %4482, label %4495

; <label>:4482                                    ; preds = %4473
  %4483 = lshr i32 %4477, 10
  %4484 = and i32 %4483, 8160
  %4485 = and i32 %4366, 31
  %4486 = or i32 %4484, %4485
  %4487 = lshr i32 %4477, 1
  %4488 = and i32 %4487, 16352
  %4489 = and i32 %4365, 31
  %4490 = or i32 %4488, %4489
  %4491 = lshr i32 %4477, 23
  %4492 = and i32 %4491, 255
  %4493 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4490, i32 %4486, i32 %4492, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4494 = extractvalue %dx.types.ResRet.f32 %4493, 0
  br label %4495

; <label>:4495                                    ; preds = %4482, %4473, %4420
  %4496 = phi float [ %4494, %4482 ], [ %4480, %4473 ], [ 0.000000e+00, %4420 ]
  %4497 = call float @dx.op.binary.f32(i32 36, float %4496, float %4496)  ; FMin(a,b)
  %4498 = call float @dx.op.binary.f32(i32 36, float %4496, float %4497)  ; FMin(a,b)
  %4499 = fcmp fast ogt float %4498, 0.000000e+00
  br i1 %4499, label %4508, label %4500, !dx.controlflow.hints !90

; <label>:4500                                    ; preds = %4744, %4495
  %4501 = phi float [ %4422, %4495 ], [ %4784, %4744 ]
  %4502 = phi float [ %4423, %4495 ], [ %4785, %4744 ]
  %4503 = phi float [ %4424, %4495 ], [ %4786, %4744 ]
  %4504 = phi float [ %4425, %4495 ], [ %4778, %4744 ]
  %4505 = phi float [ %4426, %4495 ], [ %4779, %4744 ]
  %4506 = phi float [ %4427, %4495 ], [ %4780, %4744 ]
  %4507 = icmp eq i32 %4421, %4431
  br i1 %4507, label %4787, label %4420

; <label>:4508                                    ; preds = %4495
  %4509 = fmul fast float %4496, %4454
  %4510 = fmul fast float %4496, %4455
  %4511 = fmul fast float %4496, %4456
  %4512 = fsub fast float %4448, %2547
  %4513 = fcmp fast ogt float %4512, 0.000000e+00
  %4514 = fsub fast float %120, %2547
  %4515 = fcmp fast ogt float %4514, 0.000000e+00
  %4516 = xor i1 %4515, %4513
  %4517 = fsub fast float %2547, %4448
  %4518 = fmul fast float %4517, 2.000000e+00
  %4519 = fadd fast float %4518, %4448
  %4520 = select i1 %4516, float %4448, float %4519
  %4521 = fsub fast float %4520, %120
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4458, float %4521, float %4457, float %4458, float %4521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = call float @dx.op.unary.f32(i32 25, float %4522)  ; Rsqrt(value)
  %4524 = fmul fast float %4523, %4457
  %4525 = fmul fast float %4523, %4458
  %4526 = fmul fast float %4523, %4521
  %4527 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2555)  ; Dot3(ax,ay,az,bx,by,bz)
  %4528 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4524, float %4525, float %4526)  ; Dot3(ax,ay,az,bx,by,bz)
  %4529 = fdiv fast float 1.000000e+00, %4528
  %4530 = fmul fast float %4529, %4527
  %4531 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4514, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4532 = fcmp fast ogt float %4531, 0.000000e+00
  %4533 = fcmp fast olt float %4531, 0.000000e+00
  %4534 = zext i1 %4532 to i32
  %4535 = zext i1 %4533 to i32
  %4536 = sub nsw i32 %4534, %4535
  %4537 = sitofp i32 %4536 to float
  %4538 = fsub fast float %4520, %2547
  %4539 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4458, float %4538, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = fcmp fast ogt float %4539, 0.000000e+00
  %4541 = fcmp fast olt float %4539, 0.000000e+00
  %4542 = zext i1 %4540 to i32
  %4543 = zext i1 %4541 to i32
  %4544 = sub nsw i32 %4542, %4543
  %4545 = sitofp i32 %4544 to float
  %4546 = fcmp fast une float %4537, %4545
  br i1 %4546, label %4547, label %4557

; <label>:4547                                    ; preds = %4508
  %4548 = fmul fast float %4530, %4526
  %4549 = fmul fast float %4530, %4525
  %4550 = fmul fast float %4530, %4524
  %4551 = fmul fast float %4550, %4550
  %4552 = fmul fast float %4549, %4549
  %4553 = fadd fast float %4551, %4552
  %4554 = fmul fast float %4548, %4548
  %4555 = fadd fast float %4553, %4554
  %4556 = call float @dx.op.unary.f32(i32 24, float %4555)  ; Sqrt(value)
  br label %4569

; <label>:4557                                    ; preds = %4508
  %4558 = icmp slt i32 %4536, 0
  br i1 %4558, label %4559, label %4569

; <label>:4559                                    ; preds = %4557
  %4560 = fsub fast float %118, %4446
  %4561 = fsub fast float %119, %4447
  %4562 = fsub fast float %120, %4520
  %4563 = fmul fast float %4560, %4560
  %4564 = fmul fast float %4561, %4561
  %4565 = fadd fast float %4563, %4564
  %4566 = fmul fast float %4562, %4562
  %4567 = fadd fast float %4565, %4566
  %4568 = call float @dx.op.unary.f32(i32 24, float %4567)  ; Sqrt(value)
  br label %4569

; <label>:4569                                    ; preds = %4559, %4557, %4547
  %4570 = phi float [ %4556, %4547 ], [ %4568, %4559 ], [ 0.000000e+00, %4557 ]
  %4571 = and i1 %4515, %4513
  %4572 = fsub fast float -0.000000e+00, %4570
  %4573 = select i1 %4571, float -0.000000e+00, float %4572
  %4574 = fmul fast float %2548, 0x3FF7154760000000
  %4575 = fmul fast float %4574, %4573
  %4576 = fmul fast float %2549, 0x3FF7154760000000
  %4577 = fmul fast float %4576, %4573
  %4578 = fmul fast float %2550, 0x3FF7154760000000
  %4579 = fmul fast float %4578, %4573
  %4580 = call float @dx.op.unary.f32(i32 21, float %4575)  ; Exp(value)
  %4581 = call float @dx.op.unary.f32(i32 21, float %4577)  ; Exp(value)
  %4582 = call float @dx.op.unary.f32(i32 21, float %4579)  ; Exp(value)
  %4583 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4584 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4585 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4586 = fmul fast float %4509, %4583
  %4587 = fmul fast float %4510, %4584
  %4588 = fmul fast float %4511, %4585
  %4589 = fsub fast float %4463, %2747
  %4590 = fsub fast float %4464, %2746
  %4591 = fsub fast float %4465, %2745
  %4592 = call float @dx.op.dot3.f32(i32 55, float %4589, float %4590, float %4591, float %4589, float %4590, float %4591)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = call float @dx.op.unary.f32(i32 25, float %4592)  ; Rsqrt(value)
  %4594 = fmul fast float %4593, %4589
  %4595 = fmul fast float %4593, %4590
  %4596 = fmul fast float %4593, %4591
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4463, float %4464, float %4465, float %2754, float %2755, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = call float @dx.op.dot3.f32(i32 55, float %2744, float %2743, float %2742, float %4594, float %4595, float %4596)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4600 = fmul fast float %4599, %4470
  %4601 = fmul fast float %4599, %4599
  %4602 = fmul fast float %4601, %4123
  %4603 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4604 = fmul fast float %4600, %4603
  %4605 = bitcast float %4460 to i32
  %4606 = ashr i32 %4605, 1
  %4607 = sub nsw i32 1597463007, %4606
  %4608 = bitcast i32 %4607 to float
  %4609 = fmul fast float %4608, %4457
  %4610 = fmul fast float %4608, %4458
  %4611 = fmul fast float %4608, %4459
  %4612 = fsub fast float %4609, %2747
  %4613 = fsub fast float %4610, %2746
  %4614 = fsub fast float %4611, %2745
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4613, float %4614, float %4612, float %4613, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.unary.f32(i32 25, float %4615)  ; Rsqrt(value)
  %4617 = fmul fast float %4612, %4616
  %4618 = fmul fast float %4613, %4616
  %4619 = fmul fast float %4614, %4616
  %4620 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float %4617, float %4618, float %4619)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = fmul fast float %4620, %4620
  %4622 = call float @dx.op.unary.f32(i32 6, float %4597)  ; FAbs(value)
  %4623 = fsub fast float 1.000000e+00, %2757
  %4624 = call float @dx.op.binary.f32(i32 35, float %4623, float 0x3F847AE140000000)  ; FMax(a,b)
  %4625 = fmul fast float %4624, %4624
  %4626 = fmul fast float %4625, %4625
  %4627 = fsub fast float 1.000000e+00, %4626
  %4628 = fmul fast float %2761, %2761
  %4629 = fmul fast float %4628, %4627
  %4630 = fadd fast float %4629, %4626
  %4631 = bitcast float %4630 to i32
  %4632 = ashr i32 %4631, 1
  %4633 = add nsw i32 %4632, 532487669
  %4634 = bitcast i32 %4633 to float
  %4635 = fadd fast float %4634, %2761
  %4636 = fmul fast float %4626, %4621
  %4637 = fsub fast float 1.000000e+00, %4621
  %4638 = fadd fast float %4637, %4636
  %4639 = fmul fast float %4622, %4622
  %4640 = fmul fast float %4639, %4627
  %4641 = fadd fast float %4640, %4626
  %4642 = bitcast float %4641 to i32
  %4643 = ashr i32 %4642, 1
  %4644 = add nsw i32 %4643, 532487669
  %4645 = bitcast i32 %4644 to float
  %4646 = fadd fast float %4645, %4622
  %4647 = fmul fast float %4638, %4638
  %4648 = fmul fast float %4647, %4635
  %4649 = fmul fast float %4648, %4646
  %4650 = fdiv fast float 1.000000e+00, %4649
  %4651 = bitcast float %4626 to i32
  %4652 = sitofp i32 %4651 to float
  %4653 = fmul fast float %4652, 0x3FE7F73180000000
  %4654 = fadd fast float %4653, 0x41AFE27C40000000
  %4655 = fptosi float %4654 to i32
  %4656 = bitcast i32 %4655 to float
  %4657 = fmul fast float %4443, 0x3FD80E9D60000000
  %4658 = fmul fast float %4657, %4608
  %4659 = fadd fast float %4656, %4658
  %4660 = bitcast float %4659 to i32
  %4661 = sub nsw i32 2129859010, %4660
  %4662 = bitcast i32 %4661 to float
  %4663 = fmul fast float %4626, %4650
  %4664 = fmul fast float %4663, %4656
  %4665 = fmul fast float %4664, %4662
  %4666 = call float @dx.op.unary.f32(i32 6, float %4598)  ; FAbs(value)
  %4667 = fsub fast float 1.000000e+00, %4666
  %4668 = bitcast float %4667 to i32
  %4669 = sitofp i32 %4668 to float
  %4670 = fmul fast float %4669, 5.000000e+00
  %4671 = fadd fast float %4670, 0xC1EFBF8940000000
  %4672 = fptosi float %4671 to i32
  %4673 = bitcast i32 %4672 to float
  %4674 = fsub fast float 1.000000e+00, %2748
  %4675 = fsub fast float 1.000000e+00, %2749
  %4676 = fsub fast float 1.000000e+00, %2759
  %4677 = fmul fast float %4673, %4674
  %4678 = fmul fast float %4673, %4675
  %4679 = fmul fast float %4673, %4676
  %4680 = fadd fast float %4677, %2748
  %4681 = fadd fast float %4678, %2749
  %4682 = fadd fast float %4679, %2759
  br i1 %4038, label %4683, label %4706

; <label>:4683                                    ; preds = %4569
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2125, float %4666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.ResRet.f32 %4684, 1
  %4687 = extractvalue %dx.types.ResRet.f32 %4684, 2
  %4688 = fadd fast float %4685, -5.000000e-01
  %4689 = fadd fast float %4686, -5.000000e-01
  %4690 = fadd fast float %4687, -5.000000e-01
  %4691 = fmul fast float %2748, 4.000000e+00
  %4692 = fmul fast float %4691, %4674
  %4693 = fmul fast float %4692, %4688
  %4694 = fmul fast float %2749, 4.000000e+00
  %4695 = fmul fast float %4694, %4675
  %4696 = fmul fast float %4695, %4689
  %4697 = fmul fast float %2759, 4.000000e+00
  %4698 = fmul fast float %4697, %4676
  %4699 = fmul fast float %4698, %4690
  %4700 = fadd fast float %4693, %4680
  %4701 = fadd fast float %4696, %4681
  %4702 = fadd fast float %4699, %4682
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  br label %4706

; <label>:4706                                    ; preds = %4683, %4569
  %4707 = phi float [ %4703, %4683 ], [ %4680, %4569 ]
  %4708 = phi float [ %4704, %4683 ], [ %4681, %4569 ]
  %4709 = phi float [ %4705, %4683 ], [ %4682, %4569 ]
  %4710 = fmul fast float %4597, 9.843750e-01
  %4711 = fadd fast float %4710, 7.812500e-03
  %4712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4711, float %4028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 2
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 3
  %4715 = fmul fast float %4713, %2748
  %4716 = fmul fast float %4713, %2749
  %4717 = fmul fast float %4713, %2759
  %4718 = fadd fast float %4715, %4714
  %4719 = fadd fast float %4716, %4714
  %4720 = fadd fast float %4717, %4714
  br i1 %4038, label %4721, label %4744

; <label>:4721                                    ; preds = %4706
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2125, float %4597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = extractvalue %dx.types.ResRet.f32 %4722, 1
  %4725 = extractvalue %dx.types.ResRet.f32 %4722, 2
  %4726 = fadd fast float %4723, -5.000000e-01
  %4727 = fadd fast float %4724, -5.000000e-01
  %4728 = fadd fast float %4725, -5.000000e-01
  %4729 = fmul fast float %2748, 4.000000e+00
  %4730 = fmul fast float %4729, %4674
  %4731 = fmul fast float %4730, %4726
  %4732 = fmul fast float %2749, 4.000000e+00
  %4733 = fmul fast float %4732, %4675
  %4734 = fmul fast float %4733, %4727
  %4735 = fmul fast float %2759, 4.000000e+00
  %4736 = fmul fast float %4735, %4676
  %4737 = fmul fast float %4736, %4728
  %4738 = fadd fast float %4731, %4718
  %4739 = fadd fast float %4734, %4719
  %4740 = fadd fast float %4737, %4720
  %4741 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4743 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  br label %4744

; <label>:4744                                    ; preds = %4721, %4706
  %4745 = phi float [ %4741, %4721 ], [ %4718, %4706 ]
  %4746 = phi float [ %4742, %4721 ], [ %4719, %4706 ]
  %4747 = phi float [ %4743, %4721 ], [ %4720, %4706 ]
  %4748 = call float @dx.op.binary.f32(i32 35, float %4746, float %4747)  ; FMax(a,b)
  %4749 = call float @dx.op.binary.f32(i32 35, float %4745, float %4748)  ; FMax(a,b)
  %4750 = fsub fast float 1.000000e+00, %4749
  %4751 = fmul fast float %4707, %4665
  %4752 = fmul fast float %4708, %4665
  %4753 = fmul fast float %4709, %4665
  %4754 = fsub fast float 1.000000e+00, %4598
  %4755 = bitcast float %4754 to i32
  %4756 = sitofp i32 %4755 to float
  %4757 = fmul fast float %4756, 5.000000e+00
  %4758 = fadd fast float %4757, 0xC1EFBF8940000000
  %4759 = fptosi float %4758 to i32
  %4760 = bitcast i32 %4759 to float
  %4761 = fmul fast float %4760, %2124
  %4762 = fmul fast float %4750, %4761
  %4763 = fmul fast float %4762, %4088
  %4764 = fmul fast float %4762, %4089
  %4765 = fmul fast float %4762, %4090
  %4766 = fadd fast float %4763, %4751
  %4767 = fadd fast float %4764, %4752
  %4768 = fadd fast float %4765, %4753
  %4769 = fmul fast float %4586, %2145
  %4770 = fmul fast float %4769, %4604
  %4771 = fmul fast float %4770, %4750
  %4772 = fmul fast float %4587, %2145
  %4773 = fmul fast float %4772, %4604
  %4774 = fmul fast float %4773, %4750
  %4775 = fmul fast float %4588, %2145
  %4776 = fmul fast float %4775, %4604
  %4777 = fmul fast float %4776, %4750
  %4778 = fadd fast float %4771, %4425
  %4779 = fadd fast float %4774, %4426
  %4780 = fadd fast float %4777, %4427
  %4781 = fmul fast float %4770, %4766
  %4782 = fmul fast float %4773, %4767
  %4783 = fmul fast float %4776, %4768
  %4784 = fadd fast float %4781, %4422
  %4785 = fadd fast float %4782, %4423
  %4786 = fadd fast float %4783, %4424
  br label %4500

; <label>:4787                                    ; preds = %4500
  br label %4788

; <label>:4788                                    ; preds = %4787, %4388
  %4789 = phi float [ %4390, %4388 ], [ %4501, %4787 ]
  %4790 = phi float [ %4391, %4388 ], [ %4502, %4787 ]
  %4791 = phi float [ %4392, %4388 ], [ %4503, %4787 ]
  %4792 = phi float [ %4393, %4388 ], [ %4504, %4787 ]
  %4793 = phi float [ %4394, %4388 ], [ %4505, %4787 ]
  %4794 = phi float [ %4395, %4388 ], [ %4506, %4787 ]
  %4795 = add i32 %4389, 1
  %4796 = icmp ugt i32 %4795, %4385
  br i1 %4796, label %4797, label %4388

; <label>:4797                                    ; preds = %4788
  br label %4798

; <label>:4798                                    ; preds = %4797, %4364, %4354
  %4799 = phi float [ %4355, %4354 ], [ %4355, %4364 ], [ %4789, %4797 ]
  %4800 = phi float [ %4356, %4354 ], [ %4356, %4364 ], [ %4790, %4797 ]
  %4801 = phi float [ %4357, %4354 ], [ %4357, %4364 ], [ %4791, %4797 ]
  %4802 = phi float [ %4358, %4354 ], [ %4358, %4364 ], [ %4792, %4797 ]
  %4803 = phi float [ %4359, %4354 ], [ %4359, %4364 ], [ %4793, %4797 ]
  %4804 = phi float [ %4360, %4354 ], [ %4360, %4364 ], [ %4794, %4797 ]
  %4805 = call float @dx.op.unary.f32(i32 24, float %2751)  ; Sqrt(value)
  %4806 = call float @dx.op.unary.f32(i32 24, float %2752)  ; Sqrt(value)
  %4807 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %4808 = fmul fast float %4805, %4802
  %4809 = fmul fast float %4806, %4803
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  br i1 %189, label %4812, label %4832

; <label>:4812                                    ; preds = %4798
  %4813 = fadd fast float %4804, %2122
  %4814 = fmul fast float %4813, %2123
  %4815 = fsub fast float 1.000000e+00, %2123
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 3
  %4819 = fmul fast float %4818, %4816
  %4820 = fadd fast float %4819, %4814
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = fmul fast float %4822, %4094
  %4824 = fsub fast float %4820, %4823
  %4825 = fadd fast float %4809, %4808
  %4826 = fmul fast float %4811, %4825
  %4827 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4828 = fsub fast float %4824, %4827
  %4829 = extractvalue %dx.types.CBufRet.f32 %4817, 2
  %4830 = fmul fast float %4828, %4829
  %4831 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  br label %4848

; <label>:4832                                    ; preds = %4798
  %4833 = fmul fast float %4807, %4804
  %4834 = fmul fast float %4811, %4808
  %4835 = fmul fast float %4811, %4809
  %4836 = fmul fast float %4833, %4811
  %4837 = add i32 %44, 196
  %4838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4837, i32 undef)  ; BufferLoad(srv,index,wot)
  %4839 = extractvalue %dx.types.ResRet.i32 %4838, 0
  %4840 = and i32 %4839, 32
  %4841 = icmp eq i32 %4840, 0
  br i1 %4841, label %4848, label %4842

; <label>:4842                                    ; preds = %4832
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %4845 = fmul fast float %4844, 0x3FE99999A0000000
  %4846 = fadd fast float %4844, %4834
  %4847 = fadd fast float %4845, %4836
  br label %4848

; <label>:4848                                    ; preds = %4842, %4832, %4812
  %4849 = phi float [ %4826, %4812 ], [ %4846, %4842 ], [ %4834, %4832 ]
  %4850 = phi float [ %4831, %4812 ], [ %4835, %4842 ], [ %4835, %4832 ]
  %4851 = phi float [ 1.000000e+00, %4812 ], [ %4847, %4842 ], [ %4836, %4832 ]
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = fmul fast float %4853, %4800
  %4855 = fmul fast float %4853, %4801
  %4856 = fadd fast float %4800, %4799
  %4857 = select i1 %189, float %4856, float %4799
  %4858 = fmul float %4857, %4853
  %4859 = select i1 %189, float 0.000000e+00, float %4854
  %4860 = select i1 %189, float 0.000000e+00, float %4855
  %4861 = fmul fast float %4849, %4805
  %4862 = fmul fast float %4850, %4806
  %4863 = fmul fast float %4851, %4807
  %4864 = fadd fast float %4858, %4861
  %4865 = fadd fast float %4859, %4862
  %4866 = fadd fast float %4860, %4863
  %4867 = select i1 %189, float %4850, float %4865
  %4868 = select i1 %189, float %4851, float %4866
  %4869 = call float @dx.op.binary.f32(i32 36, float %4864, float 3.225500e+04)  ; FMin(a,b)
  %4870 = call float @dx.op.binary.f32(i32 36, float %4867, float 3.225500e+04)  ; FMin(a,b)
  %4871 = call float @dx.op.binary.f32(i32 36, float %4868, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4869)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4870)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4871)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

